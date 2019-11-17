#include "vsosstd.h"
#include "fifo.h"
#include "font_lib.c"
#include "interrupt_lib.c"
#include "Timer.h"

#define MOUSE_LAYER 0

struct MOUSE_DEC mdec = {};

struct BOOTINFO bootInfo = { (memaddr8_t)0xa0000, 320, 200 };
struct BOOTINFO txtInfo_1 = { (memaddr8_t)0x0, 320, 200 };	// �ı�ͼ��

struct TXTCursor txtCursor = {
		20, 20, 
		8, 16, 
		20, 20,	// ��ʼλ��
		10,
		COL8_FFFFFF
};

struct TXTCursor mouseinfoCursor = {
		20, 20, 
		8, 16, 
		20, 20,	// ��ʼλ��
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
 * �жϳ���
 */ 

// δ֪�ж�
void intHandlerFromC_Spurious(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	// ���߶˿��ҽ��������ݣ������ȥ����������
	io_out8(PIC_OCW2, 0x21);
	io_in8(PORT_KEYDAT);

	Printf("sp", &bootInfo, &txtCursor);
}

// �����ж�
void intHandlerFromC_keyBoard(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	io_out8(PIC_OCW2, 0x21);
	unsigned char data = io_in8(PORT_KEYDAT);	// ��ȡ�ж�����

	// ���浽������
	fifo8_w(&KEY_FIFO8, data);
}

// ʱ���ж�
void intHandlerFromC_timer(char *esp) {
	// Ҫ��8259A�´μ��������ж��ź�
	io_out8(PIC_OCW2, 0x60);
	timerctl.count++;
	if (timerctl.timeout > 0) {
		// ÿ���жϷ���, ʱ��Ƭ��ֵ��һ
		timerctl.timeout--;
		// ���ʱ��Ƭ���ٵ�0, ������ʱ, ��ʱ�ӹ�����������FIFO����д��һ������
		if (timerctl.timeout == 0) {
			// �������, �����ں˳�ʱ�¼�����
			fifo8_w(timerctl.fifo, timerctl.data);	// TIME_FIFO8
		}
	}
	return;
}

// ����ж�
void intHandlerFromC_mouse(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

    io_out8(SUBPIC_OCW2, 0x20);
    io_out8(PIC_OCW2, 0x20);
	unsigned char data = io_in8(PORT_KEYDAT);	// ��ȡ�ж�����

	// ���浽������
	fifo8_w(&MOUSE_FIFO8, data);
}

void CMain(){

	pict_init();

	// �鿴�����ڴ�
	// ��ȡ����������
	struct AddrRangeDescArray* descArray = getAddrRangeDescArray();

	// ����32λ�����ڴ�
	if(-1 == memman_free(HEAP_BASE_ADDR, 0xd05f0000)){
		Printf("Free failed!", &bootInfo, &txtCursor);
	}

	// ��ʾ
	// ��ȡ��ʾ����
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
	
	// ���λ��
	Position* cur_pos = (Position*)malloc_8(sizeof(Position));
	cur_pos->x = 50;
	cur_pos->y = 50;

	// ͼ��
	const int mouseSheet = 0x1;
	const int txtSheet = 0x2;
	const int mousePosSheet = 0x3;
	const int bgSheet = 0x4;

	// �������ͼ��
	memaddr8_t vram_0 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_0, COL8_848400, 0xffff);
	PrintRGB(vram_0, xsize, 0, 0, cursor);
	insertSheet(mouseSheet, cur_pos, size_0, 0xffff, MOUSE_LAYER, vram_0, VALID_FLAG);

	// �����ı�ͼ��
	memaddr8_t vram_1 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_1, COL8_TP, 0xffff);
	txtInfo_1.vgaRam = vram_1;
	insertSheet(txtSheet, pos_zero, size_all, 0xffff, 1, vram_1, VALID_FLAG);

	// �������λ����Ϣͼ��
	memaddr8_t vram_2 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_2, COL8_TP, 0xffff);
	insertSheet(mousePosSheet, pos_zero, size_short, 0xffff, 2, vram_2, VALID_FLAG);

	// ���뱳��ͼ��
	memaddr8_t vram_255 = (memaddr8_t)malloc_8(0xffff);
	memset_8((memaddr8_t)vram_255, COL8_848484, 0xffff);
	insertSheet(bgSheet, pos_zero, size_all, 0xffff, 255, vram_255, VALID_FLAG);

	// �ж����
	// �������ж�
    io_sti();
	enable_mouse();

	// ��ʼ������
	fifo8_init(&KEY_FIFO8, key_buf, KEY_BUF_SIZE);
	fifo8_init(&MOUSE_FIFO8, mouse_buf, MOUSE_BUF_SIZE);
	fifo8_init(&TIMER_FIFO8, timer_buf, TIMER_BUF_SIZE);

	init_keyboard();
	init_pit();

	// ʱ���ж�
	settimer(500, &TIMER_FIFO8, 0x1);
	TIMERCTL *timerctl = getTimerController();

	// ����ͼ��
	drawSheetList(&bootInfo);

	// �ڼ���������
	int count = 0;
	Window* window = createWindow(&bootInfo, cur_pos, size_short, VALID_FLAG);
	for(int redraw;;redraw = 1) {	// redraw : �ػ�
		io_cli();
		int key_empty = fifo8_isEmpty(&KEY_FIFO8);
		int mouse_empty = fifo8_isEmpty(&MOUSE_FIFO8);
		int timer_empty = fifo8_isEmpty(timerctl->fifo);
				
		// ��ʾ�ַ���: ��ǰ��ӵ�е�ʱ��Ƭ��Ŀ
		Sheet* mst = getSheet(mousePosSheet);
		Sheet* ms = getSheet(mouseSheet);
		initCursor(&mouseinfoCursor);
		SheetClear(mst, &bootInfo, COL8_TP);
		SheetPrintf(intToHexStr(timerctl->timeout), mst, &bootInfo, &mouseinfoCursor);
		SheetPrintln(mst, &bootInfo, &mouseinfoCursor);

		if(key_empty && mouse_empty && timer_empty){
			// �鿴һ���ж��Ƿ���
			io_stihlt();
		}else if(!key_empty){
			// �������
			io_sti();

			unsigned char data_key = fifo8_r(&KEY_FIFO8);
			char ch = getKeyMakeChar(data_key);
			if(data_key == 0x1C){
				// �س�
				showMsg(window, &bootInfo, "Hello", COL8_848400);
				redraw = 1;
			}else if(ch == '\t'){
				PrintTab(&bootInfo, &txtCursor, 1);
			}else if(ch != '\0'){
				PrintChar(ch, &txtInfo_1, &txtCursor);
			}else if(data_key == 0x01){
				// ESC ��λ
				Sheet* ts = getSheet(txtSheet);
				SheetClear(ts, &bootInfo, COL8_TP);
				initCursor(&txtCursor);
				redraw = 1;
			}
		}else if(!mouse_empty){
			// �������
			io_sti();
			
			unsigned char data_mouse = fifo8_r(&MOUSE_FIFO8);
			if (mouse_decode(&mdec, data_mouse) != 0) {
				computeMousePosition(&mdec, cur_pos, xsize, ysize);
				redraw = 1;
			}
		}else if(!timer_empty){
			// ��ʱ�������������
			io_sti();

			SheetClear(mst, &bootInfo, COL8_TP);
			SheetPrintf("TimeFinish", mst, &bootInfo, &mouseinfoCursor);
		}

		// ���»���
		if(redraw)drawSheetList(&bootInfo);
		redraw = 0;
	}
}
