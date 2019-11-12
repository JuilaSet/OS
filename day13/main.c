#include "vsosstd.h"
#include "fifo.h"
#include "font_lib.c"
#include "interrupt_lib.c"

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

void drawMouse(char* vram, int xsize, Position* pos) {
	PrintRGB(vram, xsize, pos->x, pos->y, cursor);
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
	
	// 鼠标位置
	Position* cur_pos = (Position*)malloc_8(sizeof(Position));
	cur_pos->x = 20;
	cur_pos->y = 20;

	// 插入鼠标图层
	memaddr8_t vram_0 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_0, COL8_TP, 0xffff);
	Sheet* mouseSheet = insertSheet(cur_pos, size_0, 0xffff, MOUSE_LAYER, vram_0);

	// 插入文本图层
	memaddr8_t vram_1 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_1, COL8_TP, 0xffff);
	txtInfo_1.vgaRam = vram_1;
	Sheet* txtSheet = insertSheet(pos_zero, size_all, 0xffff, 1, vram_1);

	// 插入鼠标位置信息图层
	memaddr8_t vram_2 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_2, COL8_TP, 0xffff);
	Sheet* mousePosSheet = insertSheet(pos_zero, size_short, 0xffff, 2, vram_2);

	// 插入背景图层
	memaddr8_t vram_255 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_255, COL8_848484, 0xffff);
	insertSheet(pos_zero, size_all, 0xffff, 255, vram_255);

	// 中断相关
	// 允许开启中断
    io_sti();
	enable_mouse();

	// 初始化队列
	fifo8_init(&KEY_FIFO8, key_buf, KEY_BUF_SIZE);
	fifo8_init(&MOUSE_FIFO8, mouse_buf, MOUSE_BUF_SIZE);

	init_keyboard();

	drawSheetList(&bootInfo);

	// 第几个描述符
	int count = 0;
	for(;;) {
		io_cli();
		int key_empty = fifo8_isEmpty(&KEY_FIFO8);
		int mouse_empty = fifo8_isEmpty(&MOUSE_FIFO8);

		if(key_empty && mouse_empty){
			// 查看一下中断是否发生
			io_stihlt();
		}else if(!key_empty){
			// 处理键盘
			io_sti();

			unsigned char data_key = fifo8_r(&KEY_FIFO8);
			char ch = getKeyMakeChar(data_key);
			if(data_key == 0x1C){
				// 回车
				// 删除文字图层
				SheetClear(txtSheet, &bootInfo, COL8_TP);
				initCursor(&txtCursor);
			}else if(ch == '\t'){
				PrintTab(&bootInfo, &txtCursor, 1);
			}else if(ch != '\0'){
				PrintChar(ch, &txtInfo_1, &txtCursor);
			}
			
			// 中断处理结束时绘制
			drawSheetList(&bootInfo);
		}else if(!mouse_empty){
			// 处理鼠标
			io_sti();

			unsigned char data_mouse = fifo8_r(&MOUSE_FIFO8);
			if (mouse_decode(&mdec, data_mouse) != 0) {
				eraseMouse(mouseSheet->vram, xsize, cur_pos);
				computeMousePosition(&mdec, cur_pos, xsize, ysize);
				drawMouse(mouseSheet->vram, xsize, cur_pos);
				
				// 鼠标移动的时候打印信息
				initCursor(&mouseinfoCursor);
				SheetClear(mousePosSheet, &bootInfo, COL8_TP);
				SheetPrintf(intToHexStr((int)mouseSheet->pos->x), mousePosSheet, &bootInfo, &mouseinfoCursor);
				SheetPrintln(mousePosSheet, &bootInfo, &mouseinfoCursor);
				SheetPrintf(intToHexStr((int)mouseSheet->pos->y), mousePosSheet, &bootInfo, &mouseinfoCursor);
				SheetPrintln(mousePosSheet, &bootInfo, &mouseinfoCursor);

				// 中断处理结束时绘制
				drawSheetList(&bootInfo);
			}
		}
	}
}
