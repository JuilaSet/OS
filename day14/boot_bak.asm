org  0x7c00

LoadAddr	EQU 08000h
BufferAddr	EQU 7E0h

BaseOfStack     equ 07C00h

entry:
	mov	ax, 0
	mov	ss, ax
	mov	ds, ax

	mov	ax, BufferAddr
	mov	es, ax

	mov	ax, 0
	mov	ss, ax
	mov	sp, BaseOfStack
	mov	di, ax
	mov	si, ax

	mov	BX, 0	; ES:BX 数据存储缓冲区
	mov	CH, 1	; CH 用来存储柱面号
	mov	DH, 0	; DH 用来存储磁头号
	mov	CL, 1	; CL 用来存储扇区号

;每次都把扇区写入地址 07E00处

readFloppy:

	cmp	byte [load_count], 0
	je	beginLoad

	mov	bx, 0
	inc	cl
	mov	AH, 0x02	; AH = 02 表示要做的是读盘操作
	mov	AL, 1		; AL 表示要读取几个扇区
	mov	DL, 0		; 驱动器编号，一般我们只有一个软盘驱动器，所以写死为0
	INT	0x13		; 调用BIOS中断实现磁盘读取功能
	JC	fin

; 把刚写入07E00的一个扇区的内容写入从08000h开始的地址
copySector:
	push	si
	push	di
	push	cx

	mov	cx, 0200h  ; 缓冲区数据大小，也就是512字节
	mov	di, 0
	mov	si, 0
	mov	ax, word [load_section] ; es
	mov	ds, ax

copy:
	cmp	cx, 0
	je	copyend

	mov	al, byte [es:si] ; es:si 指向07E00 = 0x7E0 * 0x10 + si
	mov	byte [ds:di], al

	inc	di
	inc	si
	dec	cx
	jmp	copy

copyend:
	pop	cx
	pop	di
	pop	si

	mov	bx, ds
	add	bx, 020h
	mov	ax, 0
	mov	ds, ax
	mov	word [load_section], bx
	mov	bx, 0

	;end of copySector

	cmp	cl, 18
	jb	readFloppy

	inc	CH
	mov	cl, 0
	dec	byte [load_count]
	jmp	readFloppy

beginLoad:
	mov	ax, 0
	mov	ds, ax

stop:
	HLT
	jmp	stop
	; jmp	LoadAddr


load_count	db 10		; 连续读取几个柱面
load_section	dw 0800h	; 缓冲区

fin:
    HLT
    jmp  fin

