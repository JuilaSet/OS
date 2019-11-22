// Task.h

#ifndef TASK_H_INC
#define TASK_H_INC

// 描述符的属性是AR_TSS32 = 0x0089, 让CPU知道当前这个描述符是指向一个TSS32结构的
#define AR_TSS32 0x0089

// TSS32数据结构
typedef struct {
	int backlink, esp0, ss0, esp1, ss1, esp2, ss2, cr3;
	int eip, eflags, eax, ecx, edx, ebx, esp, ebp, esi, edi;
	int es, cs, ss, ds, fs, gs;
	int ldtr, iomap;
} TSS32;

// 全局描述符
typedef struct {
	short limit_low, base_low;
	char base_mid, access_right;
	char limit_high, base_high;
} SEGMENT_DESCRIPTOR;

// 填充描述符
void set_segmdesc(SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar);

// 加载TSS
void load_tr(int);

void taskswitch8(void);
void taskswitch7(void);

void taskswitch6(void);
void taskswitch9(void);

/*
 * 实现
 */

// 填充描述符
void set_segmdesc(SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar){
	if (limit > 0xfffff) {
		ar |= 0x8000;		// G位 置 为 1
		limit /= 0x1000;
	}
	sd->limit_low		= limit & 0xffff;
	sd->base_low		= base & 0xffff;
	sd->base_mid		= (base >> 16) & 0xff;
	sd->access_right	= ar & 0xff;
	sd->limit_high		= ((limit >> 16) & 0x0f) | ((ar >> 8) & 0xf0);
	sd->base_high		= (base >> 24) & 0xff;
	return;
}

// 

#endif