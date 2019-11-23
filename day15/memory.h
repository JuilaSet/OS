/*
 * Memory.h
 */
#ifndef MEMORY_INCLUDE
#define MEMORY_INCLUDE

typedef unsigned int* memaddr32_t;
typedef unsigned char* memaddr8_t;

memaddr8_t get_addr_gdt(void);
memaddr8_t get_code32_addr(void);

// 内存管理函数
void memset_8(memaddr8_t dest, unsigned char val, int n){
	while(n--) *dest++ = val;
}

void memcpy_8(memaddr8_t src, memaddr8_t dest, int n){
	if (src == dest) return;
	while(n--) *dest++ = *src++;
}

// 如果非0, 就复制
void memcmb(memaddr8_t src, memaddr8_t dest, int n){
	if (src == dest) return;
	while(n--) {
		if(*src != 0) *dest = *src;
		dest++;
		src++;
	}
}

// 内存描述符
struct AddrRangeDesc {
	memaddr8_t baseAddrLow;
	memaddr8_t baseAddrHigh;
	unsigned int lengthLow;
	unsigned int lengthHigh;
	unsigned int type;
};

// 描述符容器
struct AddrRangeDescArray {
	int size;
	struct AddrRangeDesc* memDesc;
};

// 获取BIOS填充的数据缓冲区地址
struct AddrRangeDesc* GET_MEMDESC_ADDR(void);

// 获取BIOS填充次数
int GET_MEMOTY_BLOCK_COUNT(void);

// 获取描述符数组
struct AddrRangeDescArray* getAddrRangeDescArray(){
	static struct AddrRangeDescArray addrArray;
	addrArray.size = GET_MEMOTY_BLOCK_COUNT();
	addrArray.memDesc = GET_MEMDESC_ADDR();
	return &addrArray;
}

/*
 * 内存管理算法
 */

#define MEMMAN_MAXLEN 1024

// 存放可用内存信息
typedef struct {
	memaddr8_t addr;
	unsigned int size;
} FREE_MEM_INFO;

// 内存管理器
typedef struct {
	int freeMemBackIndex;	// 总共有多少个info有效
	// 丢弃信息
	int lostsize;			// 不能插入时丢弃, +丢弃的size
	int losts;				// 不能插入时丢弃, +1
	// 内存info
	int maxlen;				// = MEMMAN_MAXLEN
	FREE_MEM_INFO *meminfos;
} MEM_MAN;

// 全局内存管理对象	- 在堆区
MEM_MAN memman = {0, 0, 0, MEMMAN_MAXLEN, (FREE_MEM_INFO*)0x00100000};

// 堆区基地址
memaddr8_t HEAP_BASE_ADDR = (memaddr8_t)0x00100000 + MEMMAN_MAXLEN * sizeof(FREE_MEM_INFO);

// 可用的内存总容量
unsigned int memman_total(){
	unsigned int i, t = 0;
	for(i = 0; i < memman.freeMemBackIndex; ++i){
		t += memman.meminfos[i].size;
	}
	return t;
}

// 用来从内存管理器对象中获取可用内存
memaddr8_t memman_alloc(unsigned int size){
	unsigned int i;
	memaddr8_t a;
	for(i = 0; i < memman.maxlen; ++i){
		if(memman.meminfos[i].size >= size){	// 还可分配
			a = memman.meminfos[i].addr;
			memman.meminfos[i].addr += size;	// 更改起始位置
			memman.meminfos[i].size -= size;	// 当前内存块总量减少
			if(memman.meminfos[i].size == 0){	// 如果为0, 代表这块内存刚好被分配干净
				// 从队列中剔除
				unsigned int j;
				for (j = i; j < memman.freeMemBackIndex; j++) {
					memman.meminfos[j] = memman.meminfos[j + 1];
				}
				memman.meminfos[j + i].addr = 0;
				memman.meminfos[j + i].size = 0;
				memman.freeMemBackIndex--;
			}
			return a;
		}
	}
}

// 用于释放不再需要的内存片(addr: 要释放的内存地址, size: 长度)
int memman_free(memaddr8_t addr, unsigned int size){
    int i, j;
    for (i = 0; i < memman.freeMemBackIndex; i++) {
        if (memman.meminfos[i].addr > addr) {
            break;
        }
    }

    if (i > 0) {
        if (memman.meminfos[i-1].addr + memman.meminfos[i-1].size == addr) {
           memman.meminfos[i-1].size += size;
           if (i < memman.freeMemBackIndex) {
               if (addr + size == memman.meminfos[i].addr) {
                   memman.meminfos[i-1].size += memman.meminfos[i].size;
                   memman.freeMemBackIndex--;
               }
           }

           return 0;
        }
    }

    if (i < memman.freeMemBackIndex) {
        if (addr + size == memman.meminfos[i].addr) {
           memman.meminfos[i].addr = addr;
           memman.meminfos[i].size += size;
           return 0;
        }
    }

	// 插入中间位置
    if (memman.freeMemBackIndex < MEMMAN_MAXLEN) {
        for (j = memman.freeMemBackIndex; j > i; j--) {
            memman.meminfos[j] = memman.meminfos[j-1];
        }

        memman.freeMemBackIndex++;
        if (memman.maxlen < memman.freeMemBackIndex) {
            memman.maxlen = memman.freeMemBackIndex;
        }

		// 初始化info
        memman.meminfos[i].addr = addr;
        memman.meminfos[i].size = size;
        return 0;
    }

    memman.losts++;
    memman.lostsize += size;
    return -1;
}

/*
 * 封装
 */

// 分配4k内存
memaddr8_t malloc_4k(int size) {
	memaddr8_t a;
	size = (size + 0xfff) & 0xfffff000;	// 0x1000 = 4k, 取高位 = 4k * size
	return memman_alloc(size);
}

// 分配n个字节的内存, []][实现内存整理
memaddr8_t malloc_8(int size){
	return (memaddr8_t)memman_alloc(size);
}

// 释放内存, 失败返回-1
int free_8(memaddr8_t addr, int size){
	memset_8(addr, 0, size);
	return memman_free(addr, size);
}

#endif
