// 绘图函数

// 绘制方块
void boxfill8(char* vram, int xsize, char c, int x0, int y0, int x1, int y1) {
	int  x, y;
	for (y = y0; y <= y1; y++)
		for (x = x0; x <= x1; x++) {
			vram[y * xsize + x] = c;
		}
}

// 字体列表
char fontlist[16] = {
	0x00, 0x18, 0x18, 0x18, 0x18, 0x24, 0x24, 0x24,		// 8 * 16像素
	0x24, 0x7e, 0x42, 0x42, 0x42, 0xe7, 0x00, 0x00
};

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

void fillAll(char* vram, char font){
	for(int i=0; i<0xffff; i++){
		vram[i] = font;
	}
}