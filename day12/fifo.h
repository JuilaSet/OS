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

// 写入
void fifo8_w(struct FIFO8 *fifo8, unsigned char data){
	fifo8->buf[fifo8->next_w] = data;
	fifo8->len++;
	fifo8->next_w = (fifo8->next_w + 1) % fifo8->cap;
}

// 读取
unsigned char fifo8_r(struct FIFO8 *fifo8){
	unsigned char data = fifo8->buf[fifo8->next_r];
	fifo8->len--;
	fifo8->next_r = (fifo8->next_r + 1) % fifo8->cap;
	return data;
}

int fifo8_isEmpty(struct FIFO8 *fifo8){
	return (fifo8->len == 0);
}

int fifo8_isFull(struct FIFO8 *fifo8){
	return (fifo8->len == fifo8->cap);
}
