/*
 * Memory.h
 */

// 内存描述符
struct AddrRangeDesc {
	unsigned int baseAddrLow;
	unsigned int baseAddrHigh;
	unsigned int lengthLow;
	unsigned int lengthHigh;
	unsigned int type;
};

// 描述符容器
struct AddrRangeDescArray
{
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