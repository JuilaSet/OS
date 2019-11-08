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

// 获取BIOS填充的数据缓冲区地址
char* GET_MEMDESC_ADDR(void);

// 获取BIOS填充次数
int GET_MEMOTY_BLOCK_COUNT(void);

