%include "pm.inc"

org	0x8000

jmp	LABEL_BEGIN

[SECTION .gdt]
;				段基址		段界限			属性
LABEL_GDT:   	    Descriptor	0,		0,			0		; 空描述符, CPU不使用
LABEL_DESC_CODE32:  Descriptor	0,		SegCode32Len - 1,	DA_C + DA_32

; 把整个4G内存当做一段可读可写的内存
LABEL_DESC_VRAM:    Descriptor	0,		0ffffffffh,		DA_DRW	; 长度为4G

; C语言的用户栈空间: TopOfStack = 512, 200h
LABEL_DESC_STACK:   Descriptor	0,		TopOfStack,		DA_DRWA+DA_32

GdtLen     equ    $ - LABEL_GDT
GdtPtr     dw     GdtLen - 1
           dd     0

; 段选择符
SelectorCode32    equ   LABEL_DESC_CODE32 -  LABEL_GDT
SelectorStack     equ   LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram      equ   LABEL_DESC_VRAM   -  LABEL_GDT


[SECTION  .s16]
[BITS  16]	; 制作16位模式的机械语言
LABEL_BEGIN:
	; CS: 代码段寄存器(`code`), 存放段选择符
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax
	mov	sp, 0100h

	mov	al, 0x13
	mov	ah, 0
	int	0x10

	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4
	add	eax, LABEL_SEG_CODE32
	mov	word [LABEL_DESC_CODE32 + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_CODE32 + 4], al
	mov	byte [LABEL_DESC_CODE32 + 7], ah

	; c-lang stack
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4
	add	eax, LABEL_STACK
	mov	word [LABEL_DESC_STACK + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_STACK + 4], al
	mov	byte [LABEL_DESC_STACK + 7], ah

	; 加载全局描述符表
	xor	eax, eax
	mov	ax, ds
	shl	eax, 4
	add	eax,  LABEL_GDT
	mov	dword  [GdtPtr + 2], eax

	lgdt	[GdtPtr]

	cli	; 关中断

	in	al,  92h
	or	al,  00000010b
	out	92h, al

	; CR0 =1 表示在保护模式下运行
	mov	eax, cr0
	or	eax , 1
	mov	cr0, eax

	; CS寄存器找到GDT表中对应的表项 + 段内偏移(存放于IP寄存器中)
	jmp	dword  SelectorCode32: 0

[SECTION .s32]
[BITS  32]	; 制作32位模式的机械语言
LABEL_SEG_CODE32:
; 为c代码设置空间

	mov	ax, SelectorStack
	mov	ss, ax			; ss - 存放栈地址对应的段描述符
	mov	esp, TopOfStack		; esp - 栈底指针指向栈底

	mov	ax, SelectorVram
	mov	ds,  ax			; ds指向整个线性地址, 存放c语言中的全局变量, 包含显存

C_CODE_ENTRY:
	%include	"write_vga.asm"	; 导入c语言反编译文件, 绘制图像的函数文件

io_hlt:		; io_hlt() 函数
	HLT	; 系统进入休眠状态
	RET

SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
	ALIGN 32
[BITS 32]
LABEL_STACK:
	; 512字节的栈空间
	times 512  db 0
	TopOfStack  equ  $ - LABEL_STACK

