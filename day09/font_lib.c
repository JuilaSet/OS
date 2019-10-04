// 绘图函数
extern char FONT_LIST[16];
extern int FONT_SIZE;
extern int* PTR_OFFSET;

// 绘制方块
void boxfill8(char* vram, int xsize, char c, int x0, int y0, int x1, int y1) {
	int  x, y;
	for (y = y0; y <= y1; y++)
		for (x = x0; x <= x1; x++) {
			vram[y * xsize + x] = c;
		}
}

// 得到距离'a'的地址
char* getAddrOffset(char ch){
	char* addr = (ch - 'a') * 16 + FONT_LIST;
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

void Print(char *vram, int xsize, int x, int y, int width, int height, unsigned char str[]){
	for(int i = 1; str[i]; ++i){
		char c = str[i];
		showFont8(vram, xsize, x + width * i, y, COL8_FFFFFF, getAddrOffset(c));
	}
}

// 背景填充
void fillAll(char* vram, char font){
	for(int i=0; i<0xffff; i++){
		vram[i] = font;
	}
}
