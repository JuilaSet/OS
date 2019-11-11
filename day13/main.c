#include "vsosstd.h"
#include "fifo.h"
#include "font_lib.c"
#include "interrupt_lib.c"

#define MOUSE_LAYER 0

struct MOUSE_DEC mdec = {};
struct CURSOR_INFO cur_pos = {20, 20};
struct BOOTINFO bootInfo = { (memaddr8_t)0xa0000, 320, 200 };
struct TXTCursor txtCursor = {
		20, 20, 
		8, 16, 
		20, 20,	// 初始位置
		10,
		COL8_FFFFFF
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
	struct MEM_MAN memman;

	// 分配32位内存
	memman_init(&memman);
	memman_free(&memman, (memaddr32_t)0x00100000, 0xd05f0000);

	// 显示
	// 获取显示属性
	memaddr8_t vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	// 系统背景
	fillAll(vram, COL8_848484);

	// 初始化图层管理器
	struct SheetManager sheetman;
	initSheetManager(&sheetman);

	// 插入鼠标图层
	struct Position* pos_0 = (struct Position*)malloc(&memman, sizeof(struct Position));
	pos_0->x = 0;
	pos_0->y = 0;
	struct Size* size_0 = (struct Size*)malloc(&memman, sizeof(struct Size));
	size_0->width = 320;
	size_0->height = 200;
	memaddr8_t vram_0 = memman_alloc_4k(&memman, 1);
	struct Sheet* mouseSheet = insertSheet(&sheetman, pos_0, size_0, MOUSE_LAYER, vram_0);

	// 中断相关
	// 允许开启中断
    io_sti();
	enable_mouse();

	// 初始化队列
	fifo8_init(&KEY_FIFO8, key_buf, KEY_BUF_SIZE);
	fifo8_init(&MOUSE_FIFO8, mouse_buf, MOUSE_BUF_SIZE);

	init_keyboard();

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
			if(data_key == 0x1C){				// 回车

				Println(&bootInfo, &txtCursor);

				// 打印
				clear(&bootInfo, COL8_848484);
				initCursor(&txtCursor);
				showMemoryInfo(descArray->memDesc + count++, &bootInfo, &txtCursor);
				if (count >= descArray->size) count = 0;

				// 查看总共可用的内存
				Printf("Total: ", &bootInfo, &txtCursor);
				Printf(intToHexStr(memman_total(&memman)), &bootInfo, &txtCursor);
				Println(&bootInfo, &txtCursor);

				// 测试分层
				PrintRGB(&sheetman.sheetList[0].vram, xsize, cur_pos.x, cur_pos.y, imgHook);
				memcpy_8(&sheetman.sheetList[0].vram, vram, 0xffff);
				// drawSheetList(&sheetman, (memaddr8_t)vram);

			}else if(ch == '\t'){
				PrintTab(&bootInfo, &txtCursor, 1);
			}else if(ch != '\0'){
				PrintChar(ch, &bootInfo, &txtCursor);
			}
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
