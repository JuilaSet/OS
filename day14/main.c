#include "vsosstd.h"
#include "fifo.h"
#include "font_lib.c"
#include "interrupt_lib.c"
#include "Timer.h"

#define MOUSE_LAYER 0

struct MOUSE_DEC mdec = {};

struct BOOTINFO bootInfo = { (memaddr8_t)0xa0000, 320, 200 };
struct BOOTINFO txtInfo_1 = { (memaddr8_t)0x0, 320, 200 };	// 文本图层

struct TXTCursor txtCursor = {
		20, 20, 
		8, 16, 
		20, 20,	// 初始位置
		10,
		COL8_FFFFFF
};

struct TXTCursor mouseinfoCursor = {
		20, 20, 
		8, 16, 
		20, 20,	// 初始位置
		10,
		COL8_FFFF00
};

void eraseMouse(char* vram, int xsize, Position* pos) {
	boxfill8(vram, xsize, COL8_TP, 
		pos->x, 
		pos->y, 
		pos->x + 9, 
		pos->y + 9);
}

void computeMousePosition(struct MOUSE_DEC* mdec, Position* cur_pos, int xsize, int ysize) {
	cur_pos->x = (cur_pos->x + mdec->pos.x);
	cur_pos->y = (cur_pos->y + mdec->pos.y);
	
    if (cur_pos->x < 0) {
       cur_pos->x = 0;
    }

    if (cur_pos->y < 0) {
       cur_pos->y = 0;
    }

    if (cur_pos->x > xsize) {
       cur_pos->x = xsize;
    }
    if (cur_pos->y > ysize) {
       cur_pos->y = ysize;
    }
}

/*
 * 中断程序
 */ 

// 未知中断
void intHandlerFromC_Spurious(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	// 告诉端口我接收了数据，你可以去继续监听了
	io_out8(PIC_OCW2, 0x21);
	io_in8(PORT_KEYDAT);

	Printf("sp", &bootInfo, &txtCursor);
}

// 键盘中断
void intHandlerFromC_keyBoard(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	io_out8(PIC_OCW2, 0x21);
	unsigned char data = io_in8(PORT_KEYDAT);	// 获取中断数据

	// 保存到队列中
	fifo8_w(&KEY_FIFO8, data);
}

// 时钟中断
void intHandlerFromC_timer(char *esp) {
	TIMERCTL *timerctl = getTimerController();

	io_out8(PIC_OCW2, 0x60);
	timerctl->count++;
	int i;
	for (i = 0; i < MAX_TIMER; i++) {
		if (timerctl->timer[i].flags == TIMER_FLAGS_USING) {
			// 把数组中时钟对象的时间片减1
			timerctl->timer[i].timeout--;
			if (timerctl->timer[i].timeout == 0) {
				// 某个时钟的时间片已经消耗完毕, 往对应时钟的数据队列里写入一个数据
				timerctl->timer[i].flags = TIMER_FLAGS_ALLOC;
				fifo8_w(timerctl->timer[i].fifo, timerctl->timer[i].data);
			}
		}
	}
	return;
}

// 鼠标中断
void intHandlerFromC_mouse(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

    io_out8(SUBPIC_OCW2, 0x20);
    io_out8(PIC_OCW2, 0x20);
	unsigned char data = io_in8(PORT_KEYDAT);	// 获取中断数据

	// 保存到队列中
	fifo8_w(&MOUSE_FIFO8, data);
}

void CMain(){

	pict_init();

	// 查看可用内存
	// 获取描述符容器
	struct AddrRangeDescArray* descArray = getAddrRangeDescArray();

	// 分配32位堆区内存
	if(-1 == memman_free(HEAP_BASE_ADDR, 0xd05f0000)){
		Printf("Free failed!", &bootInfo, &txtCursor);
	}

	// 显示
	// 获取显示属性
	memaddr8_t vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	Position* pos_zero = (Position*)malloc_8(sizeof(Position));
	pos_zero->x = 0;
	pos_zero->y = 0;

	Size* size_all = (Size*)malloc_8(sizeof(Size));
	size_all->width = bootInfo.screenX;
	size_all->height = bootInfo.screenY;

	Size* size_0 = (Size*)malloc_8(sizeof(Size));
	size_0->width = 9;
	size_0->height = 9;

	Size* size_short = (Size*)malloc_8(sizeof(Size));
	size_short->width = 160;
	size_short->height = 80;

	Size* size_squar = (Size*)malloc_8(sizeof(Size));
	size_squar->width = 80;
	size_squar->height = 80;
	
	// 鼠标位置
	Position* cur_pos = (Position*)malloc_8(sizeof(Position));
	cur_pos->x = 50;
	cur_pos->y = 50;

	// 图层
	const int mouseSheet = 0x1;
	const int txtSheet = 0x2;
	const int mousePosSheet = 0x3;
	const int bgSheet = 0x4;

	// 插入鼠标图层
	memaddr8_t vram_0 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_0, COL8_848400, 0xffff);
	PrintRGB(vram_0, xsize, 0, 0, cursor);
	insertSheet(mouseSheet, cur_pos, size_0, 0xffff, MOUSE_LAYER, vram_0, VALID_FLAG);

	// 插入文本图层
	memaddr8_t vram_1 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_1, COL8_TP, 0xffff);
	txtInfo_1.vgaRam = vram_1;
	insertSheet(txtSheet, pos_zero, size_all, 0xffff, 1, vram_1, VALID_FLAG);

	// 插入鼠标位置信息图层
	memaddr8_t vram_2 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_2, COL8_TP, 0xffff);
	insertSheet(mousePosSheet, pos_zero, size_short, 0xffff, 2, vram_2, VALID_FLAG);

	// 插入背景图层
	memaddr8_t vram_255 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_255, COL8_848484, 0xffff);
	insertSheet(bgSheet, pos_zero, size_all, 0xffff, 255, vram_255, VALID_FLAG);

	// 中断相关
	// 允许开启中断
    io_sti();
	enable_mouse();

	// 初始化队列
	fifo8_init(&KEY_FIFO8, key_buf, KEY_BUF_SIZE);
	fifo8_init(&MOUSE_FIFO8, mouse_buf, MOUSE_BUF_SIZE);

	init_keyboard();

	// 时钟中断
	init_pit();
	TIMER *timer1, *timer2, *timer3;
	
	fifo8_init(&timerfifo1, timerbuf1, 8);
	timer1 = timer_alloc();
	timer_init(timer1, &timerfifo1, 1);
	timer_settime(timer1, 500);

	fifo8_init(&timerfifo2, timerbuf2, 8);
	timer2 = timer_alloc();
	timer_init(timer2, &timerfifo2, 1);
	timer_settime(timer2, 300);

	fifo8_init(&timerfifo3, timerbuf3, 8);
	timer3 = timer_alloc();
	timer_init(timer3, &timerfifo3, 1);
	timer_settime(timer3, 50);

	TIMERCTL *timerctl = getTimerController();

	// 绘制图层
	drawSheetList(&bootInfo);

	// 第几个描述符
	int count = 0;
	Window* window = createWindow(&bootInfo, cur_pos, size_short, VALID_FLAG);
	for(int redraw;;redraw = 1) {	// redraw : 重绘
		io_cli();
		int key_empty = fifo8_isEmpty(&KEY_FIFO8);
		int mouse_empty = fifo8_isEmpty(&MOUSE_FIFO8);

		// 时钟中断
		int t1info = fifo8_isEmpty(&timerfifo1), t2info = fifo8_isEmpty(&timerfifo2), t3info = fifo8_isEmpty(&timerfifo3);
		int timer_empty = t1info && t2info && t3info;
				
		// 显示字符串: 当前还拥有的时间片数目
		Sheet* mst = getSheet(mousePosSheet);
		Sheet* ms = getSheet(mouseSheet);

		initCursor(&mouseinfoCursor);
		SheetClear(mst, &bootInfo, COL8_TP);
		SheetPrintf(intToHexStr(timer1->timeout), mst, &bootInfo, &mouseinfoCursor);
		SheetPrintln(mst, &bootInfo, &mouseinfoCursor);
		SheetPrintf(intToHexStr(timer2->timeout), mst, &bootInfo, &mouseinfoCursor);
		SheetPrintln(mst, &bootInfo, &mouseinfoCursor);
		SheetPrintf(intToHexStr(timer3->timeout), mst, &bootInfo, &mouseinfoCursor);
		SheetPrintln(mst, &bootInfo, &mouseinfoCursor);

		if(key_empty && mouse_empty && timer_empty){
			// 查看一下中断是否发生
			io_stihlt();
		}else if(!key_empty){
			// 处理键盘
			io_sti();

			unsigned char data_key = fifo8_r(&KEY_FIFO8);
			char ch = getKeyMakeChar(data_key);
			if(data_key == 0x1C){
				// 回车
				showMsg(window, &bootInfo, "Hello", COL8_848400);
				redraw = 1;
			}else if(ch == '\t'){
				PrintTab(&bootInfo, &txtCursor, 1);
			}else if(ch != '\0'){
				PrintChar(ch, &txtInfo_1, &txtCursor);
			}else if(data_key == 0x01){
				// ESC 键位
				Sheet* ts = getSheet(txtSheet);
				SheetClear(ts, &bootInfo, COL8_TP);
				initCursor(&txtCursor);
				redraw = 1;
			}
		}else if(!mouse_empty){
			// 处理鼠标
			io_sti();
			
			unsigned char data_mouse = fifo8_r(&MOUSE_FIFO8);
			if (mouse_decode(&mdec, data_mouse) != 0) {
				computeMousePosition(&mdec, cur_pos, xsize, ysize);
				redraw = 1;
			}
		}else if(!timer_empty){
			// 只要有一个时间片超时, 就进入这里
			if(!t1info){
				io_sti();
				unsigned char timer1 = fifo8_r(&timerfifo1);
				SheetPrintf("t1info", mst, &bootInfo, &mouseinfoCursor);
				redraw = 1;
			}
			if(!t2info){
				io_sti();
				unsigned char timer2 = fifo8_r(&timerfifo2);
				SheetPrintf("t2info", mst, &bootInfo, &mouseinfoCursor);
				redraw = 1;
			}
			if(!t3info){
				// 闪烁效果
				io_sti();
				unsigned char data = fifo8_r(&timerfifo3);
				if(data != 0){
					timer_init(timer3, &timerfifo3, 0x0);
					showMsg(window, &bootInfo, "A3", COL8_848400);
				}else{
					timer_init(timer3, &timerfifo3, 0x1);
					clearMsg(window, &bootInfo, COL8_FFFFFF);
				}
				timer_settime(timer3, 50);
				redraw = 1;
			}
		}

		// 重新绘制
		if(redraw)drawSheetList(&bootInfo);
		redraw = 0;
	}
}
