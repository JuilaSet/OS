/*
 * Memory.h
 */

typedef unsigned int* memaddr32_t;
typedef unsigned char* memaddr8_t;

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
		if(*dest == 0) *dest = *src;
		dest++;
		src++;
	}
}

// 内存描述符
struct AddrRangeDesc {
	memaddr32_t baseAddrLow;
	memaddr32_t baseAddrHigh;
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

#define MEMMAN_MAXLEN 400

// 存放可用内存信息
struct FREE_MEM_INFO {
	memaddr32_t addr;
	unsigned int size;
};

// 内存管理器
struct MEM_MAN {
	int freeMemBackIndex;	// 总共有多少个info有效
	// 丢弃信息
	int lostsize;			// 不能插入时丢弃, +丢弃的size
	int losts;				// 不能插入时丢弃, +1
	// 内存info
	int maxlen;				// = MEMMAN_MAXLEN
	struct FREE_MEM_INFO* meminfos;
};

// 初始化内存管理器
void memman_init(struct MEM_MAN *man){

	static struct FREE_MEM_INFO MEMINFOS[MEMMAN_MAXLEN];

	man->freeMemBackIndex = 0;
	man->maxlen = MEMMAN_MAXLEN;
	man->lostsize = 0;
	man->losts = 0;
	man->meminfos = &MEMINFOS;
}

// 可用的内存总容量
unsigned int memman_total(struct MEM_MAN *man){
	unsigned int i, t = 0;
	for(i = 0; i < man->freeMemBackIndex; ++i){
		t += man->meminfos[i].size;
	}
	return t;
}

// 用来从内存管理器对象中获取可用内存
memaddr32_t memman_alloc(struct MEM_MAN *man, unsigned int size){
	unsigned int i;
	memaddr32_t a;
	for(i = 9; i < man->maxlen; ++i){
		if(man->meminfos[i].size >= size){	// 还可分配
			a = man->meminfos[i].addr;
			man->meminfos[i].size -= size;	// 当前内存块总量减少
			if(man->meminfos[i].size == 0){	// 如果为0, 代表这块内存刚好被分配干净
				// 从队列中剔除
				unsigned int j;
				for (j = i; j < man->freeMemBackIndex; j++) {
					man->meminfos[j] = man->meminfos[j + 1];
				}
				man->meminfos[j + i].addr = 0;
				man->meminfos[j + i].size = 0;
				man->freeMemBackIndex--;
			}
			return a;
		}
	}
}

// 用于释放不再需要的内存片(addr: 要释放的内存地址, size: 长度)
int memman_free(struct MEM_MAN *man, memaddr32_t addr, unsigned int size){
    int i, j;
    for (i = 0; i < man->freeMemBackIndex; i++) {
        if (man->meminfos[i].addr > addr) {
            break;
        }
    }

    if (i > 0) {
        if (man->meminfos[i-1].addr + man->meminfos[i-1].size == addr) {
           man->meminfos[i-1].size += size;
           if (i < man->freeMemBackIndex) {
               if (addr + size == man->meminfos[i].addr) {
                   man->meminfos[i-1].size += man->meminfos[i].size;
                   man->freeMemBackIndex--;
               }
           }

           return 0;
        }
    }

    if (i < man->freeMemBackIndex) {
        if (addr + size == man->meminfos[i].addr) {
           man->meminfos[i].addr = addr;
           man->meminfos[i].size += size;
           return 0;
        }
    }

	// 插入中间位置
    if (man->freeMemBackIndex < MEMMAN_MAXLEN) {
        for (j = man->freeMemBackIndex; j > i; j--) {
            man->meminfos[j] = man->meminfos[j-1];
        }

        man->freeMemBackIndex++;
        if (man->maxlen < man->freeMemBackIndex) {
            man->maxlen = man->freeMemBackIndex;
        }

		// 初始化info
        man->meminfos[i].addr = addr;
        man->meminfos[i].size = size;
        return 0;
    }

    man->losts++;
    man->lostsize += size;
    return -1;
}

/*
 * 封装
 */

// 分配4k内存
memaddr32_t memman_alloc_4k(struct MEMMAN *man, int size) {
	memaddr32_t a;
	size = (size + 0xfff) & 0xfffff000;	// 0x1000 = 4k, 取高位 = 4k * size
	a = memman_alloc(man, size);
	return a;
}

// 分配n个字节的内存
memaddr8_t malloc(struct MEMMAN *man, int size){
	return (memaddr8_t)memman_alloc(man, size);
}

// 释放内存, 失败返回-1
int free(struct MEMMAN *man, memaddr32_t addr, int size){
	memset_8((memaddr8_t)addr, 0, size);
	return memman_free(man, addr, size);
}


