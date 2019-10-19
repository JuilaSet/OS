
// 
// Front_lib.c 文件
// 

// 图像文件
#include "images.c"

// 绘图函数
extern char FONT_LIST[16];
extern char IMAGE_FONT_LIST[16];
extern char ALPHA_FONT_LIST[16];
extern char NUMBER_FONT_LIST[16];

extern char vsFont_Debug[16];

extern int FONT_SIZE;
extern int* PTR_OFFSET;

/*
 * 初始化调色板
 */

void io_cli(void);
void io_hlt(void);
void io_out8(int, int);
int io_load_eflags(void);
void io_store_eflags(int);

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

void Print(char *vram, int xsize, int x, int y, int width, int height, int font, unsigned char str[]){
	for(int i = 0; str[i]; ++i){
		char c = str[i];
		if(c <= '9' && c >= '0')
			showFont8(vram, xsize, x + width * i, y, font, getAddrOffsetNumber(c));
		else if (c <= 'z' && c >= 'a' || c <= 'Z' && c >= 'A')
			showFont8(vram, xsize, x + width * i, y, font, getAddrOffsetAlpha(c));
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

void PrintRGB(char *vram, int xsize, int x, int y, char* pic){
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
void fillAll(char* vram, int font){
	for(int i=0; i < 0xffff; i++){
		vram[i] = font;
	}
}
