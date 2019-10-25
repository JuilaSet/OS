%include "pm.inc"

[org 0x8000]

jmp	LABEL_BEGIN

[SECTION .gdt]
 ;				段基址		段界限			属性
LABEL_GDT:   	    Descriptor	0,		0,			0  
LABEL_DESC_CODE32:  Descriptor	0,		SegCode32Len - 1,	DA_C + DA_32
LABEL_DESC_VIDEO:   Descriptor	0B8000h,	0ffffh,			DA_DRW
LABEL_DESC_VRAM:    Descriptor	0,		0ffffffffh,		DA_DRW

; 把整个4G内存当做一段可读可写的内存
LABEL_DESC_STACK:   Descriptor	0,		TopOfStack,		DA_DRWA+DA_32

GdtLen     equ    $ - LABEL_GDT
GdtPtr     dw     GdtLen - 1
           dd     0

SelectorCode32    equ   LABEL_DESC_CODE32 -  LABEL_GDT
SelectorVideo     equ   LABEL_DESC_VIDEO  -  LABEL_GDT
SelectorStack     equ   LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram      equ   LABEL_DESC_VRAM   -  LABEL_GDT

LABEL_IDT:
; 定义255个中断符  
%rep  255
	Gate	SelectorCode32, SpuriousHandler, 0, DA_386IGate
%endrep

IdtLen  equ $ - LABEL_IDT
IdtPtr  dw  IdtLen - 1
        dd  0


[SECTION  .s16]
[BITS  16]
LABEL_BEGIN:
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax
	mov	sp, 0100h

	; 调色板显示模式显示
	mov	al, 0x13
	mov	ah, 0
	int	0x10

	; 初始化8259A硬件
	call	init8259A

	; 32位保护模式代码
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4
	add	eax, LABEL_SEG_CODE32
	mov	word [LABEL_DESC_CODE32 + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_CODE32 + 4], al
	mov	byte [LABEL_DESC_CODE32 + 7], ah

	; c 用户栈
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4
	add	eax, LABEL_STACK
	mov	word [LABEL_DESC_STACK + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_STACK + 4], al
	mov	byte [LABEL_DESC_STACK + 7], ah

	; 加载GDT
	xor	eax, eax
	mov	ax, ds
	shl	eax, 4
	add	eax,  LABEL_GDT
	mov	dword  [GdtPtr + 2], eax	; (ds * 16 + LABEL_IDT)
	lgdt	[GdtPtr]

	cli	;关中断

	; 加载中断描述符表
	xor	eax, eax
	mov	ax,  ds
	shl	eax, 4
	add	eax, LABEL_IDT
	mov	dword [IdtPtr + 2], eax		; (ds * 16 + LABEL_IDT)
	lidt	[IdtPtr]

	; 
	in	al,  92h
	or	al,  00000010b
	out	92h, al

	mov	eax, cr0
	or	eax , 1
	mov	cr0, eax

	jmp	dword  SelectorCode32: 0

; 初始化硬件, 注意要放在32位代码段外部
	%include	"interrupt.asm"

[SECTION .s32]
[BITS  32]
LABEL_SEG_CODE32:
; initialize stack for c code

	mov	ax, SelectorStack
	mov	ss, ax
	mov	esp, TopOfStack

	mov	ax, SelectorVram
	mov	ds,  ax

	mov  ax, SelectorVideo
	mov  gs, ax

	sti

; C语言入口
	jmp		CMain
	%include	"main.asm"		; 导入c语言

	jmp		$

; 中断处理程序
_SpuriousHandler:
	SpuriousHandler	equ _SpuriousHandler - $$	; 计算到LABEL_SEG_CODE32的偏移

	call intHandlerFromC				; 中断处理程序

	iretd						; 中断返回

; 头文件
; 导入汇编对应的函数
	%include	"lib.asm"

; 导入字体文件
	%include	"font.asm"

SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
ALIGN 32
[BITS 32]
LABEL_STACK:
	times 512  db 0
	TopOfStack  equ  $ - LABEL_STACK
