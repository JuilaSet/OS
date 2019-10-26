// "interrupt_lib.c"

/*
 * 辅助函数
 */

#define PORT_KEYSTA 0x0064
#define PORT_MOUSE 0x64

#define KEYSTA_SEND_NOTREADY 0x02
#define PORT_KEYCMD		0x0064	// 键盘电路指令
#define PORT_KEYDAT		0x0060	// 键盘数据

#define KEYCMD_WRITE_MODE	0x60
#define KBC_MODE		0x47	// 启动鼠标模式

#define KEYCMD_SENDTO_MOUSE 0xd4
#define MOUSECMD_ENABLE 0xf4

#define PIC_OCW2		0x20
#define SUBPIC_OCW2		0xA0

#define KEY_BUF_SIZE 32
#define MOUSE_BUF_SIZE 128

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
 * 缓存容器
 */

struct FIFO8 {
    unsigned char*  buf;
	int cap;		// 容量
    int len;		// 总长度
    int next_r;		// 指向下一个读取位置
    int next_w;		// 指向下一个写入位置
};

void fifo8_init(struct FIFO8* fifo8, unsigned char* buf, int cap){
	fifo8->buf = buf;
	fifo8->cap = cap;
	fifo8->len = 0;
	fifo8->next_r = 0;
	fifo8->next_w = 0;
}

void fifo8_w(struct FIFO8 *fifo8, unsigned char data){
	fifo8->buf[fifo8->next_w] = data;
	fifo8->len++;
	fifo8->next_w = (fifo8->next_w + 1) % fifo8->cap;
}

unsigned char fifo8_r(struct FIFO8 *fifo8){
	unsigned char data = fifo8->buf[fifo8->next_r];
	fifo8->len--;
	fifo8->next_r = (fifo8->next_r + 1) % fifo8->cap;
	return data;
}

int fifo8_isEmpty(struct FIFO8 *fifo8){
	return (fifo8->len == 0);
}

/*
 * 键盘缓存
 */

struct KEYBUF {
    unsigned char key_buf[KEY_BUF_SIZE];
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
	keybuf.next_w = (keybuf.next_w + 1) % KEY_BUF_SIZE;
}

// 读取
unsigned char keybuf_r8(){
	unsigned char data;
	data = keybuf.key_buf[keybuf.next_r];
	keybuf.len--;
	keybuf.next_r = (keybuf.next_r + 1) % KEY_BUF_SIZE;
	return data;
}

int keybuf_isEmpty(){
	return keybuf.len == 0;
}

/*
 * 鼠标缓存
 */

unsigned char mouse_buf[MOUSE_BUF_SIZE] = {};
struct FIFO8 MOUSE_FIFO8 = {};

/*
 * 鼠标中断
 */

/* 等待键盘控制电路准备完毕 */
void  wait_KBC_sendready() {
	for(;;) {
		// 反复从0x64端口读取数据, 并检测读到数据的第二个比特位
		// 直到该比特位为0时, 才着手发送控制信息
		if ((io_in8(PORT_KEYSTA) & KEYSTA_SEND_NOTREADY) == 0) {
			break;
		}
	}
}

void init_keyboard(void) {
	wait_KBC_sendready();	// 等待返回可写信号
	io_out8(PORT_KEYCMD, KEYCMD_WRITE_MODE);	// 命令键盘电路进入数据接收状态, 等待鼠标发送信号
	wait_KBC_sendready();	// 等待返回可写信号
	io_out8(PORT_KEYDAT, KBC_MODE);			// 要求键盘电路启动鼠标模式
}

void enable_mouse(void) {
	wait_KBC_sendready();
	io_out8(PORT_KEYCMD, KEYCMD_SENDTO_MOUSE);	// 通知8042下个字节的发向0x60的数据将发给鼠标
	wait_KBC_sendready();
	io_out8(PORT_KEYDAT, MOUSECMD_ENABLE);		// 允许鼠标发数据, MOUSECMD_ENABLE这个数据会被键盘电路发送给鼠标
	// \ 对鼠标进行激活, 鼠标一旦接收到该数据后, 立马向CPU发送中断信号
}

/*
 * 主程序
 */ 

// 未知中断
void intHandlerFromC_Spurious(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	io_out8(PIC_OCW2, 0x21);
	io_in8(PORT_KEYDAT);

	Printf("sp", vram, xsize);
}

// 键盘中断
void intHandlerFromC_keyBoard(char *esp){

	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

	io_out8(PIC_OCW2, 0x21);
	unsigned char data = io_in8(PORT_KEYDAT);	// 获取中断数据

	// 保存到队列中
	keybuf_w8(data);
}

// 鼠标中断
void intHandlerFromC_mouse(char *esp){
	char* vram = bootInfo.vgaRam;
	int xsize = bootInfo.screenX, ysize = bootInfo.screenY;

    io_out8(PIC_OCW2, 0x20);
    io_out8(SUBPIC_OCW2, 0x20);
	unsigned char data = io_in8(PORT_KEYDAT);	// 获取中断数据

	// 保存到队列中
	fifo8_w(&MOUSE_FIFO8, data);
}