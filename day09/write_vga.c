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

void io_cli(void);
void io_hlt(void);
void io_out8(int, int);
int io_load_eflags(void);
void io_store_eflags(int);

// ��ɫ��
unsigned char pict1[] = {
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
	0x84,  0x84,  0x84,
};

void set_pict(int start, int end, unsigned char* rgb, int which){
	int i, eflags;

	// ����eflags
	eflags = io_load_eflags();

	// �ر��жϹ���, ��ֹ������
	io_cli();

	io_out8(0x03c8, which);

	for(int i = start; i < end; ++i){
		io_out8(0x03c9, rgb[0] / 4);
		io_out8(0x03c9, rgb[1] / 4);
		io_out8(0x03c9, rgb[2] / 4);
		rgb += 3;
	}

	// ���жϹ���(�ָ�eflags)
	io_store_eflags(eflags);

	return;
}

void pict_init(){
	// д���ɫ��
	set_pict(0, LINE, pict1, 0);
	return;
}



void CMain(){

	pict_init();

	// ��ʾ
	struct BOOTINFO bootInfo = { (char*)0xa0000, 320, 200 };
    char* vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	int i;
	// ������
	int width = 8, height = 16;

	// ϵͳ����
	fillAll(vram, COL8_848484);

	// ��ӡ�ַ���
	for(int i = COL8_000000; i <= COL8_848484; ++i){
		Print(vram, xsize, 20 + i * 8, 20, width, height, i, "0");
	}

	showFont8(vram, xsize, 20, 50, COL8_FFFFFF, vsFont_Debug);

	for(;;) {
		io_hlt();
	}
}
