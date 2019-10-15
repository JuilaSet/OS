%include "pm.inc"

org   0x8000

jmp   LABEL_BEGIN

[SECTION .gdt]

; 全局描述符表 gdt(global descript table)
				; (开始点)段基址 段界限(长度)		属性
LABEL_GDT:
	Descriptor		0,		 0,			0

LABEL_DESC_CODE32:
	Descriptor		0,		 SegCode32Len - 1,	DA_C + DA_32 ; 32 位段, 只执行代码

LABEL_DESC_VIDEO:
	Descriptor		0B8000h,	 0ffffh,		DA_DRW	; 可读写数据

; 把整个4G内存当做一段可读可写的内存
LABEL_DESC_STACK:   Descriptor	0,		TopOfStack,		DA_DRWA+DA_32

; 表地址信息
GdtLen		equ	$ - LABEL_GDT		; 上面三个描述符的大小 (当前地址 - 描述符的首地址)
GdtPtr		dw	GdtLen - 1		; 2个字节存放描述符的长度
		dd	0			; 存放首地址Descriptor形成的列表的首地址

; 描述符偏移量
SelectorCode32	equ	LABEL_DESC_CODE32 - LABEL_GDT	; 得到第2个描述符相对于开头的偏移
SelectorVideo	equ	LABEL_DESC_VIDEO  - LABEL_GDT	; 得到第3个描述符相对于开头的偏移
SelectorStack	equ	LABEL_DESC_STACK  -  LABEL_GDT

[SECTION  .s16]
[BITS  16]
LABEL_BEGIN:

	; 初始化
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax
	mov	sp, 0100h
	
	; 将用于描述地址的信息存到描述符中
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4		; 向左平移4位(1 byte), 相当于 cs * 0x10 + LABEL_GDT, 模拟段寄存器
	add	eax, LABEL_SEG_CODE32
	mov	word [LABEL_DESC_CODE32 + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_CODE32 + 4], al
	mov	byte [LABEL_DESC_CODE32 + 7], ah

	; set stack for C language
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4
	add	eax, LABEL_STACK
	mov	word [LABEL_DESC_STACK + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_STACK + 4], al
	mov	byte [LABEL_DESC_STACK + 7], ah
	
	; 把全局描述符的地址写到GdtPtr下方的`dd 0`中
	xor	eax, eax
	mov	ax, ds
	shl	eax, 4				; 向左平移4位(1 byte)
						; 相当于 cs * 0x10 + LABEL_GDT, 模拟段寄存器
	add	eax,  LABEL_GDT
	mov	dword  [GdtPtr + 2], eax	; 放入GdtPtr下方的`dd 0`中
	
	lgdt	[GdtPtr]			; bios调用, 加载描述符表(load global describe table)
	
	; 关中断, 忽略其他硬件中断(ex: 鼠标)
	cli
	
	; 按钮, 从实模式进入保护模式
	in	al,  92h			; 从92端口读取, 存放硬件信息
	or	al,  00000010b			; 第1位置1
	out	92h, al				; 写回92端口
	mov	eax, cr0
	or	eax , 1
	mov	cr0, eax
	
	jmp	dword  SelectorCode32: 0	; cpu 跳转到存放的地址处(超越16位寻址)
	
[SECTION .s32]
[BITS  32]
LABEL_SEG_CODE32:
; initialize stack for c code
	mov	ax, SelectorStack
	mov	ss, ax
	mov	esp, TopOfStack	; 由于是小端存储, esp向低处分栈, 因此将esp设置为申请的内存段的最高地址

	mov	ax, SelectorVram
	mov	ds,  ax

C_CODE_ENTRY:
	%include	"write_vga.asm"	; 导入c语言

io_hlt:		; io_hlt() 函数
	HLT	; 系统进入休眠状态
	RET

;	%include "inc.asm"		; 暂时是空文件, 准备存放C语言反汇编代码

msg:
	DB	"OS is running under protect mode", 0		; 字符串

SegCode32Len	equ  $ - LABEL_SEG_CODE32	; 这一段都是32位代码

