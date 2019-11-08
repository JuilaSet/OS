#include "vsosstd.h"
#include "string.h"
#include "fifo.h"
#include "memory.h"

#include "font_lib.c"
#include "interrupt_lib.c"

struct MOUSE_DEC mdec = {};
struct CURSOR_INFO cur_pos = {20, 20};
struct BOOTINFO bootInfo = { (char*)0xa0000, 320, 200 };
struct TXTCursor txtCursor = {
		20, 20, 
		8, 16, 
		20, 20,	// 初始位置
		10
};

void eraseMouse(char* vram, int xsize, struct CURSOR_INFO* pos) {
	boxfill8(vram, xsize, COL8_848484, 
		pos->x, 
		pos->y, 
		pos->x + 9, 
		pos->y + 9);
}

void drawMouse(char* vram, int xsize, struct CURSOR_INFO* pos) {
	PrintRGB(vram, xsize, pos->x, pos->y, cursor);
}

void computeMousePosition(struct MOUSE_DEC* mdec, int xsize, int ysize) {
	cur_pos.x = (cur_pos.x + mdec->pos.x);
	cur_pos.y = (cur_pos.y + mdec->pos.y);
	
    if (cur_pos.x < 0) {
       cur_pos.x = 0;
    }

    if (cur_pos.y < 0) {
       cur_pos.y = 0;
    }

    if (cur_pos.x > xsize) {
       cur_pos.x = xsize;
    }
    if (cur_pos.y > ysize) {
       cur_pos.y = ysize;
    }

}

void CMain(){

	pict_init();
	
	// 初始化队列
	fifo8_init(&KEY_FIFO8, key_buf, KEY_BUF_SIZE);
	fifo8_init(&MOUSE_FIFO8, mouse_buf, MOUSE_BUF_SIZE);

	init_keyboard();

	// 数据缓冲区地址
	struct AddrRangeDesc* memDesc = (struct AddrRangeDesc *)GET_MEMDESC_ADDR();

	// 第几个描述符
	int count = 0;

	// 允许开启中断
    io_sti();
	enable_mouse();

	// 显示
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	// 系统背景
	fillAll(vram, COL8_848484);
	PrintRGB(vram, xsize, cur_pos.x, cur_pos.y, cursor);

	// 查看可用内存
	int memBlkCount = GET_MEMOTY_BLOCK_COUNT();
	char* pStr = intToHexStr(memBlkCount);
	Printf(pStr, strlen(pStr), &bootInfo, &txtCursor);

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

			// 打印
			// showMemoryInfo(memDesc + count, vram, count, xsize, COL8_FFFFFF);
			// count++;
			// if (count > memCnt)
			// 	count = 0;

			unsigned char data_key = fifo8_r(&KEY_FIFO8);
			char* pStr = charToHexStr(data_key);
			Printf(pStr, strlen(pStr), &bootInfo, &txtCursor);
		}else if(!mouse_empty){
			// 处理鼠标
			io_sti();

			unsigned char data_mouse = fifo8_r(&MOUSE_FIFO8);
			if (mouse_decode(&mdec, data_mouse) != 0) {
				eraseMouse(vram, xsize, &cur_pos);
				computeMousePosition(&mdec, xsize, ysize);
				drawMouse(vram, xsize, &cur_pos);
			}
		}
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

	Printf("sp", strlen("sp"), &bootInfo, &txtCursor);
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
