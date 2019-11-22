#include "vsosstd.h"
#include "fifo.h"
#include "font_lib.c"
#include "interrupt_lib.c"
#include "Task.h"
#include "Timer.h"

#define MOUSE_LAYER 0

struct MOUSE_DEC mdec = {};

struct BOOTINFO bootInfo = { (memaddr8_t)0xa0000, 320, 200 };
struct BOOTINFO txtInfo_1 = { (memaddr8_t)0x0, 320, 200 };	// �ı�ͼ��

struct TXTCursor txtCursor = {
		20, 70, 
		8, 16, 
		20, 70,	// ��ʼλ��
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
	TIMERCTL *timerctl = getTimerController();

	io_out8(PIC_OCW2, 0x60);
	timerctl->count++;
	int i;
	for (i = 0; i < MAX_TIMER; i++) {
		if (timerctl->timer[i].flags == TIMER_FLAGS_USING) {
			// ��������ʱ�Ӷ����ʱ��Ƭ��1
			timerctl->timer[i].timeout--;
			if (timerctl->timer[i].timeout == 0) {
				// ĳ��ʱ�ӵ�ʱ��Ƭ�Ѿ��������, ����Ӧʱ�ӵ����ݶ�����д��һ������
				timerctl->timer[i].flags = TIMER_FLAGS_ALLOC;
				fifo8_w(timerctl->timer[i].fifo, timerctl->timer[i].data);
			}
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

const int mouseSheet = 0x1;
const int txtSheet = 0x2;
const int mousePosSheet = 0x3;
const int bgSheet = 0x4;

// ����B�߼�
void task_b_main(void){
	Sheet* ts = getSheet(txtSheet);

	// ��ʼ��һ��ʱ��
	struct FIFO8 timerinfo_b;
	char timerbuf_b[8];
	TIMER *timer_b = 0;

	fifo8_init(&timerinfo_b, timerbuf_b, 8);	// ��ʼ����Ϣ����

	timer_b = timer_alloc();					// ��ӵ�ʱ�ӹ�������, �Զ�����
	timer_init(timer_b, &timerinfo_b, 123);		// ��������123

	timer_settime(timer_b, 500);				// ʱ��ƬΪ500

	int i = 0;
	for(;;) {
		io_cli();
		initCursor(&txtCursor);
		SheetClear(ts, &bootInfo, COL8_TP);
		SheetPrintf("enter task b", ts, &bootInfo, &txtCursor);
		SheetPrintln(ts, &bootInfo, &txtCursor);
		SheetPrintf(intToHexStr(timer_b->timeout), ts, &bootInfo, &txtCursor);
		drawSheetList(&bootInfo);

		if (fifo8_isEmpty(&timerinfo_b)) {
			io_sti();
		} else {
			i = fifo8_r(&timerinfo_b);
			io_sti();
			if (i == 123) {
				SheetPrintf("switch back", ts, &bootInfo, &txtCursor);
				drawSheetList(&bootInfo);
				// ���Ƚ���7, ����7��tss, ����A
				taskswitch7();
			}
		}
	}
}

void CMain(){

	pict_init();

	// �鿴�����ڴ�
	// ��ȡ����������
	struct AddrRangeDescArray* descArray = getAddrRangeDescArray();

	// ����32λ�����ڴ�
	if(-1 == memman_free(HEAP_BASE_ADDR, 0xd05f0000)){
		return;
	}

	// ��ʾ
	// ��ȡ��ʾ����
	memaddr8_t vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	Position* pos_zero = (Position*)malloc_8(sizeof(Position));
	pos_zero->x = 0;
	pos_zero->y = 0;
	
	// ���λ��
	Position* cur_pos = (Position*)malloc_8(sizeof(Position));
	cur_pos->x = 150;
	cur_pos->y = 50;

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

	// ͼ��

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

	// ��������
	Window* window = createWindow(&bootInfo, cur_pos, size_short, VALID_FLAG);

	// �ж����
	// �������ж�
    io_sti();
	enable_mouse();

	// ��ʼ������
	fifo8_init(&KEY_FIFO8, key_buf, KEY_BUF_SIZE);
	fifo8_init(&MOUSE_FIFO8, mouse_buf, MOUSE_BUF_SIZE);

	init_keyboard();

	// ʱ���ж�
	init_pit();
	TIMER *timer1, *timer2, *timer3;

	fifo8_init(&timerfifo, timerbuf, 8);

	timer1 = timer_alloc();
	timer_init(timer1, &timerfifo, 10);	// �յ�10��ʾA��Ҫ�л���B����
	timer_settime(timer1, 500);

	timer2 = timer_alloc();
	timer_init(timer2, &timerfifo, 2);
	timer_settime(timer2, 300);

	timer3 = timer_alloc();
	timer_init(timer3, &timerfifo, 1);
	timer_settime(timer3, 50);

	TIMERCTL *timerctl = getTimerController();

	// �����ʼ��
	// a, b����
	TSS32 *tss_a, *tss_b;
	tss_a = (TSS32*)malloc_8(sizeof(TSS32));
	tss_b = (TSS32*)malloc_8(sizeof(TSS32));
	SEGMENT_DESCRIPTOR *gdt = (SEGMENT_DESCRIPTOR *)get_addr_gdt();
	int addr_code32 = (int)get_code32_addr();

	// tss_a
	tss_a->ldtr = 0;
	tss_a->iomap = 0x40000000;
	// tss_b
	tss_b->ldtr = 0;
	tss_b->iomap = 0x40000000;

	// �� tss_a �ĵ�ַд��������
	set_segmdesc(gdt + 7, 103, (int) tss_a, AR_TSS32);
	set_segmdesc(gdt + 8, 103, (int) tss_a, AR_TSS32);
	
	// �� tss_b �ĵ�ַд��������
	set_segmdesc(gdt + 9, 103, (int) tss_b, AR_TSS32);
	set_segmdesc(gdt + 6, 0xffff, (int) &task_b_main, 0x409a);

	// ��������LABEL_DESC_7ͨ��ltrָ����ص�CPU��
	load_tr(7 << 3);	// ���ƿճ�3������λ

	// �л���A����(����)
	taskswitch8();	// jmp	8 << 3:0

	// ��������B��TSS
	int task_b_esp = (int)malloc_4k(64 * 1024) + 64 * 1024;
	tss_b->eip = ((int)task_b_main - addr_code32);
	tss_b->eflags = 0x00000202; 
	tss_b->eax = 0;
	tss_b->ecx = 0;
	tss_b->edx = 0;
	tss_b->ebx = 0;
	tss_b->esp = 1024;	// tss_a.esp;
	tss_b->ebp = 0;
	tss_b->esi = 0;
	tss_b->edi = 0;

	// �μĴ�����Aһ��
	tss_b->es = tss_a->es;
	tss_b->cs = tss_a->cs;	// ָ��LABEL_DESC_CODE32, ��ִ�д����
	tss_b->ss = tss_a->ss;	// ָ��LABEL_DESC_STACK, �û�ջ�ռ�
	tss_b->ds = tss_a->ds;	// ָ��LABEL_DESC_VRAM, ����4g�ڴ�
	tss_b->fs = tss_a->fs;
	tss_b->gs = tss_a->gs;

	Sheet* ts = getSheet(txtSheet);

	// ����ͼ��
	drawSheetList(&bootInfo);

	// �ڼ���������
	int count = 0;
	for(int redraw;;redraw = 1) {	// redraw : �ػ�
		io_cli();
		int key_empty = fifo8_isEmpty(&KEY_FIFO8);
		int mouse_empty = fifo8_isEmpty(&MOUSE_FIFO8);

		// ʱ���ж�
		int timer_empty = fifo8_isEmpty(&timerfifo);
				
		// ��ʾ�ַ���: ��ǰ��ӵ�е�ʱ��Ƭ��Ŀ
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
			// �鿴һ���ж��Ƿ���
			io_stihlt();
		}else if(!key_empty){
			// �������
			io_sti();

			unsigned char data_key = fifo8_r(&KEY_FIFO8);
			char ch = getKeyMakeChar(data_key);
			if(data_key == 0x1C){
				// �س�
				SheetPrintf("Hello", ts, &bootInfo, &txtCursor);
				SheetPrintln(ts, &bootInfo, &txtCursor);
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
			io_sti();
			unsigned char data = fifo8_r(&timerfifo);
			redraw = 1;
			if(data == 10){
				SheetPrintln(ts, &bootInfo, &txtCursor);
				redraw = 1;

				// �л�����B
				taskswitch9();	// 9 << 3:0
			}else if(data == 2){
				
			}else {
				if(data == 1){
					timer_init(timer3, &timerfifo, 0x0);
					showMsg(window, &bootInfo, "A3", COL8_848400);
				}else{
					// ��˸Ч��
					timer_init(timer3, &timerfifo, 0x1);
					clearMsg(window, &bootInfo, COL8_FFFFFF);
				}
				timer_settime(timer3, 50);
				redraw = 1;
			}
		}

		// ���»���
		if(redraw)drawSheetList(&bootInfo);
		redraw = 0;
	}
}
