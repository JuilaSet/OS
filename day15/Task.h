// Task.h

#ifndef TASK_H_INC
#define TASK_H_INC

#include "Timer.h"

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

// TR 选择符, 用于指定下一个要切换的进程
int MT_TR = 0;

// 初始化时间片
void mt_init();

// 专门用于时钟中断的时钟
TIMER* mt_timer = 0;

// 切换进程
void mt_taskswitch();

// 跳转
void farjmp(int, int);

/*
 * 汇编代码 
 */

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

// 初始化时间片 []][
void mt_init() {
	mt_timer = timer_alloc();

	timer_settime(mt_timer, 10);
	MT_TR = 7 << 3;	// 从任务A开始
	return;
}

// 切换到mt指向的进程
void mt_taskswitch() {
	// 把MT_TR在 7 << 3 和 9 << 3 之间切换, 然后通过调用 farjmp 跳转到对应的任务门
	if (MT_TR == 7 << 3) {
		MT_TR = 9 << 3;
	}
	else {
		MT_TR = 7 << 3;
	}

	timer_settime(mt_timer, 10);

	// 通过Far JMP切换到MT_TR指向的进程位置, 从头开始执行
	farjmp(0, MT_TR);
	return;
}

// 

#endif