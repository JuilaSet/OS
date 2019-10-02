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

#define LINE 16

#include "font_lib.c"

void io_hlt(void);
void io_out8(int, int);

// 调色板
unsigned char pict[3 * LINE] = {
	0x00,  0x00,  0x00,
	0xff,  0x00,  0x00,
	0x00,  0xff,  0x00,
	0xff,  0xff,  0x00,
	0x00,  0x00,  0xff,
	0xff,  0x00,  0xff,
	0x00,  0xff,  0xff,
	0xff,  0xff,  0xff,
	0xc6,  0xc6,  0xc6,
	0x84,  0x00,  0x00,
	0x00,  0x84,  0x00,
	0x84,  0x84,  0x00,
	0x00,  0x00,  0x84,
	0x84,  0x00,  0x84,
	0x00,  0x84,  0x84,
	0x84,  0x84,  0x84
};

void pict_init(){
	// 写入调色板
	set_pict(0, LINE, pict);

	return;
}

void set_pict(int start, int end, unsigned char* rgb){
	int i, eflags;

	// 保存eflags
	eflags = io_load_eflags();

	// 关闭中断功能, 防止被干扰
	io_cli();

	io_out8(0x03c8, 0);

	for(int i = start; i < end; ++i){
		io_out8(0x03c9, rgb[0]);
		io_out8(0x03c9, rgb[1]);
		io_out8(0x03c9, rgb[2]);
		rgb += 3;
	}

	// 打开中断功能(恢复eflags)
	io_load_eflags(eflags);

	return;
}

void CMain(){

	pict_init();

	int i;
	char *vram = 0xa0000;
	
	fillAll(vram, COL8_C6C6C6);

	int xsize = 320;
	showFont8(vram, xsize, 20, 20, COL8_FFFFFF, fontlist);
	
	for(;;) {
		io_hlt();
	}
}
