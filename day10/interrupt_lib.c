// "interrupt_lib.c"

/*
 * 辅助函数
 */

#define PORT_KEYDAT 0x60
#define PIC_OCW2 0x20

char charToHex(char c){
	if(c >= 10){
		return 'a' + (c - 10);
	}
	return '0' + c;
}

char *charToHexStr(unsigned char c){
	static char keystr[3] = {};
	keystr[1] = charToHex(c % 16);	// 1E -> E, [00E]
	c >>= 4;						// 1
	keystr[0] = charToHex(c % 16);	// 1, [01E]
	return keystr;
}

/*
 * 中断缓存
 */
#define BUF_SIZE 32

struct KEYBUF {
    unsigned char key_buf[BUF_SIZE];
    int next_r;		// 指向下一个读取位置
    int next_w;		// 指向下一个写入位置
    int len;		// 总长度
};

// 新建队列
struct KEYBUF keybuf = {};

void keybuf_init(){
	keybuf.next_r = 0;
	keybuf.next_w = 0;
	keybuf.len = 0;
}

// 写入
void keybuf_w8(unsigned char data){
	keybuf.key_buf[keybuf.next_w] = data;
	keybuf.len++;
	keybuf.next_w = (keybuf.next_w + 1) % BUF_SIZE;
}

// 读取
unsigned char keybuf_r8(){
	unsigned char data;
	data = keybuf.key_buf[keybuf.next_r];
	keybuf.len--;
	keybuf.next_r = (keybuf.next_r + 1) % BUF_SIZE;
	return data;
}

int keybuf_isEmpty(){
	return keybuf.len == 0;
}

/*
 * 主程序
 */ 
void intHandlerFromC(char *esp){

	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	io_out8(PIC_OCW2, 0x21);		// out  021h, al

	unsigned char data = 0;
	data = io_in8(PORT_KEYDAT);		// 获取中断数据

	// 保存到队列中
	keybuf_w8(data);
}