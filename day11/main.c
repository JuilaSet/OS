#define  COL8_000000  0
#define  COL8_FF0000  1
#define  COL8_00FF00  2
#define  COL8_FFFF00  3
#define  COL8_0000FF  4
#define  COL8_FF00FF  5
#define  COL8_00FFFF  6
#define  COL8_FFFFFF  7
#define  COL8_C6C6C6  8
#define  COL8_840000  9
#define  COL8_008400  10
#define  COL8_848400  11
#define  COL8_000084  12
#define  COL8_840084  13
#define  COL8_008484  14
#define  COL8_848484  15

void io_cli(void);
void io_out8(int, int);
char io_in8(char);

int io_load_eflags(void);
void io_store_eflags(int);

void io_hlt(void);
void io_sti(void);
void io_stihlt(void);

#include "string.h"

#include "font_lib.c"
#include "interrupt_lib.c"


struct MOUSE_DEC mdec = {};
struct CURSOR_INFO cur_pos = {20, 20};

void eraseMouse(char* vram, int xsize, struct CURSOR_INFO* pos) {
	boxfill8(vram, xsize, COL8_848484, 
		pos->x, 
		pos->y, 
		pos->x + 15, 
		pos->y + 15);
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

	keybuf_init();
	fifo8_init(&MOUSE_FIFO8, mouse_buf, MOUSE_BUF_SIZE);

	init_keyboard();
	
	// 允许开启中断
    io_sti();
	enable_mouse();

	// 显示
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;
	
	// 系统背景
	fillAll(vram, COL8_848484);
	PrintRGB(vram, xsize, cur_pos.x, cur_pos.y, cursor);

	for(;;) {
		io_cli();
		if(keybuf_isEmpty()) {
			io_stihlt();
		} else {
			io_sti();

			char* pStr = charToHexStr(keybuf_r8());
			Printf(pStr, vram, xsize);
		}

		if(fifo8_isEmpty(&MOUSE_FIFO8)){
			io_stihlt();
		}else{
			io_sti();

			char* pStr = charToHexStr(MOUSE_FIFO8.len);
			Printf(pStr, vram, xsize);

//			unsigned char data = fifo8_r(&MOUSE_FIFO8);
		}
	}
}

// 鼠标中断
void intHandlerFromC_mouse(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

    io_out8(SUBPIC_OCW2, 0x20);
    io_out8(PIC_OCW2, 0x20);
	unsigned char data = io_in8(PORT_KEYDAT);	// 获取中断数据

	// 保存到队列中
//	fifo8_w(&MOUSE_FIFO8, data);
	if (mouse_decode(&mdec, data) != 0) {
		eraseMouse(vram, xsize, &cur_pos);
		computeMousePosition(&mdec, xsize, ysize);
		drawMouse(vram, xsize, &cur_pos);
	}
}