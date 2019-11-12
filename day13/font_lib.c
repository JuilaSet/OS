
// 
// Front_lib.c 文件
// 

// 图像文件
#include "images.c"
#include "string.h"
#include "memory.h"

// 绘图函数
extern char FONT_LIST[16];
extern char IMAGE_FONT_LIST[16];
extern char ALPHA_FONT_LIST[16];
extern char NUMBER_FONT_LIST[16];


// 空格
extern char vsFont_EMPTY[16];
extern char vsFont_Debug[16];
extern char vsFont_ASK[16];
extern char vsFont__[16];
extern char vsFont_colon[16];

extern int FONT_SIZE;
extern int* PTR_OFFSET;

#define COL8_000000  0
#define COL8_FF0000  1
#define COL8_00FF00  2
#define COL8_FFFF00  3
#define COL8_0000FF  4
#define COL8_FF00FF  5
#define COL8_00FFFF  6
#define COL8_FFFFFF  7
#define COL8_C6C6C6  8
#define COL8_840000  9
#define COL8_008400  10
#define COL8_848400  11
#define COL8_000084  12
#define COL8_840084  13
#define COL8_008484  14
#define COL8_848484  15
#define COL8_TP		 0xFF

// 工具对象
typedef struct {
	int x, y;
} Position;

typedef struct {
	int width, height;
} Size;

/*
 * 初始化调色板
 */

#define LINE 16

// 调色板
unsigned char pict[] = {
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

	// 保存eflags
	eflags = io_load_eflags();

	// 关闭中断功能, 防止被干扰
	io_cli();

	io_out8(0x03c8, which);

	for(int i = start; i < end; ++i){
		io_out8(0x03c9, rgb[0] / 4);
		io_out8(0x03c9, rgb[1] / 4);
		io_out8(0x03c9, rgb[2] / 4);
		rgb += 3;
	}

	// 打开中断功能(恢复eflags)
	io_store_eflags(eflags);

	return;
}

void pict_init(){
	// 写入调色板
	set_pict(0, LINE, pict, 0);
	return;
}

/*
 * 绘制函数
 */

// 绘制方块
void boxfill8(char* vram, int xsize, char c, int x0, int y0, int x1, int y1) {
	int  x, y;
	for (y = y0; y <= y1; y++)
		for (x = x0; x <= x1; x++) {
			vram[y * xsize + x] = c;
		}
}

// 得到距离'a'的地址
char* getAddrOffsetAlpha(char ch){
	char* addr = (ch - 'a') * 16 + ALPHA_FONT_LIST;
	return addr;
}

// 得到数字地址
char* getAddrOffsetNumber(char ch){
	char* addr = (ch - '0') * 16 + NUMBER_FONT_LIST;
	return addr;
}

// 显示字体(vram: 图形缓存, xsize: 宽度, c: 字体颜色, font: 文字)
void showFont8(char *vram, int xsize, int x, int y, char c, char* font){
	char d;
	for(int i = 0; i < 16; ++i){
		d = font[i];
		// 前四位
		if ((d & 0x80) != 0) {vram[(y+i)*xsize + x + 0] = c;}
		if ((d & 0x40) != 0) {vram[(y+i)*xsize + x + 1] = c;}
		if ((d & 0x20) != 0) {vram[(y+i)*xsize + x + 2] = c;}
		if ((d & 0x10) != 0) {vram[(y+i)*xsize + x + 3] = c;}

		// 后四位
		if ((d & 0x08) != 0) {vram[(y+i)*xsize + x + 4] = c;}
		if ((d & 0x04) != 0) {vram[(y+i)*xsize + x + 5] = c;}
		if ((d & 0x02) != 0) {vram[(y+i)*xsize + x + 6] = c;}
		if ((d & 0x01) != 0) {vram[(y+i)*xsize + x + 7] = c;}
	}
}

// 打印可见字符
void putChar(memaddr8_t vram, int xsize, int x, int y, int font, unsigned char c){
	if(c <= '9' && c >= '0')
		showFont8(vram, xsize, x, y, font, getAddrOffsetNumber(c));
	else if (c <= 'z' && c >= 'a')
		showFont8(vram, xsize, x, y, font, getAddrOffsetAlpha(c));
	else if(c <= 'Z' && c >= 'A')
		showFont8(vram, xsize, x, y, font, getAddrOffsetAlpha(c - 'A' + 'a'));
	else if(c == ' ')
		showFont8(vram, xsize, x, y, font, vsFont_EMPTY);
	else if(c == '?')
		showFont8(vram, xsize, x, y, font, vsFont_ASK);
	else if(c == '_')
		showFont8(vram, xsize, x, y, font, vsFont__);
	else if(c == ':')
		showFont8(vram, xsize, x, y, font, vsFont_colon);
}

// 打印可见字符串
void putStr(memaddr8_t vram, int xsize, int x, int y, int width, int font, unsigned char str[], int len){
	for(int i = 0; i < len; ++i){
		putChar(vram, xsize, x + width * i, y, font, str[i]);
	}
}

// 查找对应的颜色标号
char charToPictColor(char c){
	if(c == '*')return COL8_000000;
	if(c == 'r')return COL8_FF0000;
	if(c == 'g')return COL8_00FF00;
	if(c == 'y')return COL8_FFFF00;
	if(c == 'b')return COL8_0000FF;
	if(c == 'p')return COL8_FF00FF;
	if(c == 'l')return COL8_00FFFF;
	if(c == 'w')return COL8_FFFFFF;
	if(c == '-')return COL8_C6C6C6;
	if(c == 'R')return COL8_840000;
	if(c == 'G')return COL8_008400;
	if(c == 'Y')return COL8_848400;
	if(c == 'B')return COL8_000084;
	if(c == 'P')return COL8_840084;
	if(c == 's')return COL8_008484;
	if(c == '=')return COL8_848484;
}

void PrintRGB(memaddr8_t vram, int xsize, int x, int y, char* pic){
	for(int line = 0, i = 0, index = 0;;++index){
		if(pic[index] == '\0'){
			// 结束
			if(pic[index+1]=='\0'){
				return;	// 00: 结束
			}else{
				line++;	// 0: 一行结束
				i = 0;
				continue;
			}
		}
		if(pic[index] != '.')
			vram[(y + line) * xsize + x + i] = charToPictColor(pic[index]);
		i++;
	}
}

// 背景填充
void fillAll(memaddr8_t vram, int font){
	for(int i=0; i < 0xffff; i++){
		vram[i] = font;
	}
}

/*
 * 显示结构
 */

// 显示器描述结构体
struct BOOTINFO {
    memaddr8_t vgaRam;
    short screenX, screenY;
};

/*
 * 虚拟光标
*/

struct TXTCursor {
	int pointerX, pointerY;			// dynamic
	int width, height;				// 每个字的宽度, 高度
	int initPointerX, initPointerY;	// 初始位置
	int tabSplitCount;				// tab的格子个数
	int color;						// 颜色
};

// initCursor: 初始化
void initCursor(struct TXTCursor* tcursor){
	tcursor->pointerX = tcursor->initPointerX;
	tcursor->pointerY = tcursor->initPointerY;
}

// clear: 清空背景
void clear(struct BOOTINFO* bootinfo, int font){
	for(int i=0; i < 0xffff; i++){
		bootinfo->vgaRam[i] = font;
	}
}

// 回车
void Println(struct BOOTINFO* bootinfo, struct TXTCursor* tcursor){
	tcursor->pointerX = tcursor->initPointerX;
	tcursor->pointerY += tcursor->height;
	if(tcursor->pointerY >= bootinfo->screenY){
		tcursor->pointerY = tcursor->initPointerY;
	}
}

void PrintlnMult(struct BOOTINFO* bootinfo, struct TXTCursor* tcursor, int n){
	tcursor->pointerX = tcursor->initPointerX;
	tcursor->pointerY += tcursor->height * n;
	if(tcursor->pointerY >= bootinfo->screenY){
		tcursor->pointerY = tcursor->initPointerY;
	}
}

// 打印字符串
void Printf(char* sptr, struct BOOTINFO* bootinfo, struct TXTCursor* tcursor){
	int xsize = bootinfo->screenX, ysize = bootinfo->screenY;
	char* vram = bootinfo->vgaRam;
	int len = strlen(sptr);
	putStr(vram, xsize, tcursor->pointerX, tcursor->pointerY, tcursor->width, tcursor->color, sptr, len);

	tcursor->pointerX += tcursor->width * len;
	if(tcursor->pointerX >= xsize - tcursor->initPointerX){
		Println(bootinfo, tcursor);
	}
}

// 打印字符
void PrintChar(char ch, struct BOOTINFO* bootinfo, struct TXTCursor* tcursor){
	int xsize = bootinfo->screenX, ysize = bootinfo->screenY;
	char* vram = bootinfo->vgaRam;
	putChar(vram, xsize, tcursor->pointerX, tcursor->pointerY, tcursor->color, ch);

	tcursor->pointerX += tcursor->width;
	if(tcursor->pointerX >= xsize - tcursor->initPointerX){
		Println(bootinfo, tcursor);
	}
}

// Tab键: n(将一行分为几格)
void PrintTab(struct BOOTINFO* bootinfo, struct TXTCursor* tcursor, int n){
	int xsize = bootinfo->screenX, ysize = bootinfo->screenY;
	// 得到每一个格子的大小
	short blkSize = (bootinfo->screenX / tcursor->tabSplitCount);
	// 将光标移动到下一个格子处
	tcursor->pointerX = blkSize * ((tcursor->pointerX + blkSize * n) / blkSize);
	if(tcursor->pointerX >= xsize - tcursor->initPointerX){
		Println(bootinfo, tcursor);
	}
}

// 将地址描述符的信息显示到桌面上: 
void showMemoryInfo(struct AddrRangeDesc* desc, struct BOOTINFO* bootinfo, struct TXTCursor* tcursor) {
	Printf("baseAddr_Low: ",  bootinfo, tcursor);
	PrintTab(bootinfo, tcursor, 1);
	Printf(intToHexStr((int)desc->baseAddrLow), bootinfo, tcursor);
	Println(bootinfo, tcursor);
	
	Printf("baseAddr_Hight: ", bootinfo, tcursor);
	PrintTab(bootinfo, tcursor, 1);
	Printf(intToHexStr((int)desc->baseAddrHigh), bootinfo, tcursor);
	Println(bootinfo, tcursor);
	
	Printf("length_Low: ", bootinfo, tcursor);
	PrintTab(bootinfo, tcursor, 2);
	Printf(intToHexStr((int)desc->lengthLow), bootinfo, tcursor);
	Println(bootinfo, tcursor);
	
	Printf("length_Hight: ", bootinfo, tcursor);
	PrintTab(bootinfo, tcursor, 1);
	Printf(intToHexStr((int)desc->lengthHigh), bootinfo, tcursor);
	Println(bootinfo, tcursor);
	
	Printf("type: ", bootinfo, tcursor);
	PrintTab(bootinfo, tcursor, 3);
	Printf(intToHexStr(desc->type), bootinfo, tcursor);
	Println(bootinfo, tcursor);
}

// 显示内存数据
void displayMem_8(memaddr8_t addr, int n, struct BOOTINFO* bootinfo, struct TXTCursor* tcursor){
	for(int i = 0; i < n; ++i){
		Printf(charToHexStr(*(addr + i)), bootinfo, tcursor);
		Printf(" ", bootinfo, tcursor);
	}
}

/*
 * 图层
 */
#define MAX_COVERAGE_COUNT 50
#define VRAM_LENGTH 0xffff
#define VALIED_FLAG 0x11223344

// 图层对象
typedef struct {
	Position* pos;
	Size* size;
	int layer;
	unsigned int length;
	int index;
	int valid;	// == 0x11223344 时有效
	memaddr8_t vram;
} Sheet;

// 全局图层管理类
typedef struct {
	int size;
	Sheet sheetList[MAX_COVERAGE_COUNT];
} SheetManager;

// 全局图层管理对象
SheetManager sheetman = {0, {}};

// 添加图层
Sheet* insertSheet(Position* pos, Size* size, 
	unsigned int length, int layer, memaddr8_t vram){
	int i = 0;
	while(i < sheetman.size){
		Sheet* sheett = &(sheetman.sheetList[i]);
		if(sheett->valid == VALIED_FLAG && sheett->layer > layer){
			for(int j = sheetman.size; j > i; j--){
				sheetman.sheetList[j].pos = sheetman.sheetList[j - 1].pos;
				sheetman.sheetList[j].size = sheetman.sheetList[j - 1].size;
				sheetman.sheetList[j].layer = sheetman.sheetList[j - 1].layer;
				sheetman.sheetList[j].length = sheetman.sheetList[j - 1].length;
				sheetman.sheetList[j].index = sheetman.sheetList[j - 1].index;
				sheetman.sheetList[j].valid = sheetman.sheetList[j - 1].valid;
				sheetman.sheetList[j].vram = sheetman.sheetList[j - 1].vram;
			}
			break;
		}else if(sheett->valid == VALIED_FLAG && sheett->layer == layer){	// 相同覆盖
			memcmb(vram, sheett->vram, sheett->length);
			return sheett;
		}
		i++;
	}
	// 插入图层
	Sheet* sheet = &(sheetman.sheetList[i]);
	sheetman.size++;

	sheet->pos = pos;
	sheet->size = size;
	sheet->layer = layer;
	sheet->length = length;
	sheet->index = i;
	sheet->vram = vram;
	sheet->valid = VALIED_FLAG;
	return sheet;
}

// 删除图层
void removeSheet(int layer){
	int found = 0;
	for(int i = 0; i < sheetman.size; ++i){
		if(!found && sheetman.sheetList[i].layer == layer)found = 1;
		if(found){
			sheetman.sheetList[i] = sheetman.sheetList[i + 1];
		}
	}
	if(found) sheetman.sheetList[sheetman.size - 1].valid = 0;
}

// 得到图层
Sheet* getSheet(int layer){
	Sheet* sheet;
	for(int i = 0; i< sheetman.size; ++i){
		if(sheetman.sheetList[i].layer == layer)
			return &(sheetman.sheetList[i]);
	}
	return 0;
}

// 更改图层
void alterSheetLayer(Sheet* sheet, int layer, memaddr8_t vram){
	if(layer == sheet->layer)return;
	if(layer < sheet->layer){
		// <--
		for(int i = sheet->index; i > 0 && sheet[i - 1].layer < layer; i--){
			Sheet temp;
			temp = sheet[i];
			sheet[i] = sheet[i-1];
			sheet[i-1] = temp;
		}
	}else{
		// -->
		for(int i = sheet->index; i + 1 < sheetman.size - 1 && sheet[i + 1].layer > layer; i--){
			Sheet temp;
			temp = sheet[i];
			sheet[i] = sheet[i+1];
			sheet[i+1] = temp;
		}
	}
}

// 绘制图层: sheet的vram写入gs显存的vram, 从size-1开始绘制, layer大的被覆盖
void drawSheetList(struct BOOTINFO* bootinfo){
	memaddr8_t vram = bootinfo->vgaRam;
	int xsize = bootinfo->screenX;

	Sheet* sheet;
	for(int i = sheetman.size - 1; i >= 0; --i){
		sheet = &(sheetman.sheetList[i]);
		if(sheet->valid == VALIED_FLAG){
			for(int y0 = sheet->pos->y; y0 < sheet->pos->y + sheet->size->height; y0++)
				for(int x0 = sheet->pos->x; x0 < sheet->pos->x + sheet->size->width; x0++)
					if(*(sheet->vram + y0 * xsize + x0) != COL8_TP)
						*(vram + y0 * xsize + x0) = *(sheet->vram + y0 * xsize + x0);
		}
	}
}
