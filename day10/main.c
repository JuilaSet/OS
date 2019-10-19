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

// 显示器描述结构体
struct BOOTINFO {
    char* vgaRam;
    short screenX, screenY;
};

struct BOOTINFO bootInfo = { (char*)0xa0000, 320, 200 };

// 字体间距
int width = 8, height = 16;

void CMain(){

	pict_init();

	// 显示
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	// 系统背景
	fillAll(vram, COL8_848484);

	// 打印字符串
//	Print(vram, xsize, 20, 20, width, height, COL8_FFFFFF, "0123456789");
//	Print(vram, xsize, 20, 20 + height, width, height, COL8_FFFFFF, "abcdef");
//	Print(vram, xsize, 20, 20 + height * 2, width, height, COL8_FFFFFF, "a1b2c3d4");

	PrintRGB(vram, xsize, 20, 20, cursor);

	for(;;) {
		io_hlt();
	}
}


// 中断处理程序
void intHandlerFromC(char *esp){

	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	Print(vram, xsize, 20, 20, width, height, COL8_FFFFFF, "aaaaa");

	for (;;) {
		io_hlt();
	}
}