LOAD_ADDR  EQU  0x8000	; 宏

[org 0x7c00]
	jmp entry
	
	;; 注释
	DB	"luosirui OS"

entry:
	mov	ax, 0
	mov	ss, ax
	mov	ds, ax
	mov	es, ax
	mov	si, ax

readFloppy:
	; 加载扇区2, 柱面1, 磁头0
	mov	CH, 1		; 柱面号1
	mov	DH, 0		; 磁头号0
	mov	CL, 2		; 扇区号2

	mov	BX, LOAD_ADDR	; ES:BX 数据存储缓冲区

	mov	AH, 0x02	; AH = 02 表示要做的是读盘操作
	mov	AL, 50		; AL 表示要连续读取几个扇区
	mov	DL, 0		; 驱动器编号
	INT	0x13		; 调用BIOS中断实现磁盘读取功能

	JC	fin

	jmp	LOAD_ADDR	; 当前控制权移交到内存的 LOAD_ADDR 处

fin:
	HLT
	jmp  fin
