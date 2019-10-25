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


#include "font_lib.c"
#include "interrupt_lib.c"


int pointerX = 20, pointerY = 20;
void CMain(){

	pict_init();
	keybuf_init();

	// ÏÔÊ¾
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	// ÏµÍ³±³¾°
	fillAll(vram, COL8_848484);

	PrintRGB(vram, xsize, 20, 20, cursor);

	for(;;) {
		io_hlt();	

		if(keybuf_isEmpty()){
			io_stihlt();
		} else {
			unsigned char data = keybuf_r8();
			io_sti();
			
			char* pStr = charToHexStr(data);
			Print(vram, xsize, pointerX, pointerY, width, height, COL8_FFFFFF, pStr);

			pointerX += 16;
			if(pointerX >= xsize - 20){
				pointerX = 20;
				pointerY += 16;
			}
		}
	}
}
