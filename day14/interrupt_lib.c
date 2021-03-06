// "interrupt_lib.c"
#ifndef INTERRUPT_LIB_INCLUDE
#define INTERRUPT_LIB_INCLUDE

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

#define KEY_BUF_SIZE 128
#define MOUSE_BUF_SIZE 256
#define TIMER_BUF_SIZE 256

/*
 * 分离缓存
 */

unsigned char mouse_buf[MOUSE_BUF_SIZE] = {};
unsigned char key_buf[KEY_BUF_SIZE] = {};

// 时钟中断
static struct FIFO8 timerfifo;
static char timerbuf[8];

struct FIFO8 MOUSE_FIFO8 = {};
struct FIFO8 KEY_FIFO8 = {};

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

// 鼠标信号
struct CURSOR_INFO {
	int x, y;	// x: 水平移动, y: 上下移动
};

struct MOUSE_DEC {
	unsigned char buf[3];	// 来存储鼠标发送的三个数据
	unsigned char phase;	// 当前接收到第几个数据
	struct CURSOR_INFO pos;
	int btn;
};

// 解析鼠标信号
int mouse_decode(struct MOUSE_DEC *mdec, unsigned char dat) {
	// 初始
	if (mdec->phase == 0) {
		if (dat == 0xfa) {
			mdec->phase = 1;	// 进入1阶段
		}
		return 0;
	}

	// 1 字节
	if (mdec->phase == 1) {
		if ((dat & 0xc8) == 0x08) {
			mdec->buf[0] = dat;
			mdec->phase = 2;	// 进入2阶段
		}
		return 0;
	}

	// 2 字节
	if (mdec->phase == 2) {
		mdec->buf[1] = dat;
		mdec->phase = 3;		// 进入3阶段
		return 0;
	}

	// 3 字节
	if (mdec->phase == 3) {
		mdec->buf[2] = dat;
		mdec->phase = 1;		// 进入1阶段

		// 记录按键
		mdec->btn = mdec->buf[0] & 0x07;	// 通过&取出前三位
		mdec->pos.x = mdec->buf[1];
		mdec->pos.y = mdec->buf[2];

		if ((mdec->buf[0] & 0x10) != 0) {
			mdec->pos.x |= 0xffffff00;
		}
		if ((mdec->buf[0] & 0x20) != 0) {
			mdec->pos.y |= 0xffffff00;
		}
		mdec->pos.y = -mdec->pos.y;
		return 1;
	}

	return -1;
}

/*
 * 键盘输入实现
 */


char getKeyMakeChar(unsigned char code){
	// chars: 0x0f - 0x35
	static char keyintToChar[] = {
		// 0x0f, 0x10, ... , 0x19, 0x1a, 0x1b, 0x1c
		'\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\\',
		// 0x1e, 0x1f, ... , 'l' - 0x26, 0x27, 0x28, 0x29, 
		'\0', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', '\n', 
		// 0x2A, 0x2b, 0x2c, ... 'm' -- 0x32, 0x33, 0x34, 0x35
		'\0', '\0', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/'
	};

	// numbers: 0x02 - 0x0e
	static char keyintToNumChar[] = {
		// 0x02, ... , 0 -- 0x0b, 0x0c, 0x0d, 0x0e
		'1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b',
	};

	if(code >= 0x0f && code <= 0x35)
		return keyintToChar[code - 0x0f];
	else if(code >= 0x02 && code <= 0x0e)
		return keyintToNumChar[code - 0x02];
	return '\0';
}

char getKeyBreakChar(unsigned char code){
	static char keyintToChar[] = {
		'\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\\',
		'\0', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', '\n', 
		'\0', '\0', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/'
	};
	static char keyintToNumChar[] = {
		'1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b',
	};

	if(code >= 0x8f && code <= 0xb5)
		return keyintToChar[code - 0x8f];
	else if(code >= 0x82 && code <= 0x8e)
		return keyintToNumChar[code - 0x82];
	return '\0';
}

#endif