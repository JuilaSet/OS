#ifndef TIMER_H_INCLUDE
#define TIMER_H_INCLUDE

#define PIT_CTRL   0x0043
#define PIT_CNT0   0x0040
void init_pit(void);

// 时钟管理器
typedef struct {
	unsigned int count;
	unsigned int timeout;
	struct FIFO8* fifo;
	unsigned char data;
} TIMERCTL;

// 全局时钟管理器
static TIMERCTL timerctl;

TIMERCTL* getTimerController();

// 设定时间片
void settimer(unsigned int timeout, struct FIFO8 *fifo, unsigned char data);

/*
 * 实现
 */

// 时钟中断的初始化
void init_pit(void) {
	io_out8(PIT_CTRL, 0x34);
	io_out8(PIT_CNT0, 0x9c);
	io_out8(PIT_CNT0, 0x2e);

	timerctl.count = 0;
	timerctl.timeout = 0;
}

void settimer(unsigned int timeout, struct FIFO8 *fifo, unsigned char data) {
	int eflags = io_load_eflags();
	// 暂时停止接收中断信号
	io_cli();
	// 设定时间片
	timerctl.timeout = timeout;
	// 设定信号队列, 内核在主循环中将监控这个队列
	timerctl.fifo = fifo;
	timerctl.data = data;
	// 恢复接收中断信号
	io_store_eflags(eflags);
}

TIMERCTL* getTimerController() {
	return &timerctl;
}
#endif