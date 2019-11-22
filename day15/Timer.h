#ifndef TIMER_H_INCLUDE
#define TIMER_H_INCLUDE

#define PIT_CTRL   0x0043
#define PIT_CNT0   0x0040

#define MAX_TIMER  100
#define TIMER_FLAGS_ALLOC 0x1
#define TIMER_FLAGS_USING 0x2

void init_pit(void);

// 时钟对象
typedef struct {
	unsigned int timeout, flags;
	struct FIFO8 *fifo;
	unsigned char data;
} TIMER;

// 时钟管理器
typedef struct {
    unsigned int count;
    TIMER timer[MAX_TIMER];
} TIMERCTL;

// 全局时钟管理器
static TIMERCTL* timerctl = 0;

TIMERCTL* getTimerController();

// 设定时间片
// void settimer(unsigned int timeout, struct FIFO8 *fifo, unsigned char data);

// 分配一个TIMER对象: 从时钟控制器的TIMER数组中找到一个还没有被使用的对象, 将它的状态从free转换为alloc
TIMER* timer_alloc(void);

// 释放一个TIMER对象
void timer_free(TIMER *timer);

// 初始化一个TIMER对象
void timer_init(TIMER *timer, struct FIFO8 *fifo, unsigned char data) ;

// 设定时间片
void timer_settime(TIMER *timer, unsigned int timeout);

/*
 * 实现
 */

// 时钟中断的初始化
void init_pit(void) {
	io_out8(PIT_CTRL, 0x34);
	io_out8(PIT_CNT0, 0x9c);
	io_out8(PIT_CNT0, 0x2e);

	timerctl = (TIMERCTL*)malloc_8(sizeof(TIMERCTL));
	timerctl->count = 0;
}

// void settimer(unsigned int timeout, struct FIFO8 *fifo, unsigned char data) {
// 	int eflags = io_load_eflags();
// 	// 暂时停止接收中断信号
// 	io_cli();
// 	// 设定时间片
// 	timerctl->timeout = timeout;
// 	// 设定信号队列, 内核在主循环中将监控这个队列
// 	timerctl->fifo = fifo;
// 	timerctl->data = data;
// 	// 恢复接收中断信号
// 	io_store_eflags(eflags);
// }

TIMERCTL* getTimerController() {
	if(timerctl == 0){
		timerctl = (TIMERCTL*)malloc_8(sizeof(TIMERCTL));
	}
	return timerctl;
}

TIMER* timer_alloc(void) {
	int i;
	for (i = 0; i < MAX_TIMER; i++) {
		if (timerctl->timer[i].flags == 0) {
			timerctl->timer[i].flags = TIMER_FLAGS_ALLOC;
			return &timerctl->timer[i];
		}
	}

	return 0;
}

void timer_free(TIMER *timer) {
    timer->flags = 0;
    return;
}

void timer_init(TIMER *timer, struct FIFO8 *fifo, unsigned char data) {
    timer->fifo = fifo;
    timer->data = data;
    return;
}

void timer_settime(TIMER *timer, unsigned int timeout) {
    timer->timeout = timeout;
    timer->flags = TIMER_FLAGS_USING;
    return;
}
#endif