%include "pm.inc"

org	0x8000

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


[SECTION  .s16]
[BITS  16]
LABEL_BEGIN:
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

	; set stack for C language
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4
	add	eax, LABEL_STACK
	mov	word [LABEL_DESC_STACK + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_STACK + 4], al
	mov	byte [LABEL_DESC_STACK + 7], ah

	xor	eax, eax
	mov	ax, ds
	shl	eax, 4
	add	eax,  LABEL_GDT
	mov	dword  [GdtPtr + 2], eax

	lgdt	[GdtPtr]

	cli	;关中断

	in	al,  92h
	or	al,  00000010b
	out	92h, al

	mov	eax, cr0
	or	eax , 1
	mov	cr0, eax

	jmp	dword  SelectorCode32: 0

[SECTION .s32]
[BITS  32]
LABEL_SEG_CODE32:
; initialize stack for c code

	mov	ax, SelectorStack
	mov	ss, ax
	mov	esp, TopOfStack

	mov	ax, SelectorVram
	mov	ds,  ax

; C语言入口
	jmp	CMain
	%include	"write_vga.asm"	; 导入c语言


; 导入汇编对应的函数
	%include	"lib.asm"


; 导入字体文件
PTR_OFFSET: dd 10H
FONT_LIST: 
vsFont_A:
db 0, 24, 24, 24, 24, 36, 36, 36
db 36, 126, 66, 66, 66, 66, 231, 0
vsFont_Mat:
db 0, 16, 16, 32, 64, 130, 129, 129
db 66, 36, 24, 36, 36, 24, 0, 0
vsFont_Af:
db 0, 8, 8, 16, 16, 32, 80, 68
db 34, 20, 8, 16, 16, 32, 32, 0
vsFont_Ji:
db 0, 24, 36, 24, 0, 24, 24, 8
db 4, 4, 8, 8, 16, 16, 32, 0
vsFont_Ii:
db 0, 24, 36, 24, 0, 48, 48, 16
db 16, 16, 16, 8, 8, 8, 4, 0
vsFont_END:
db 0, 0, 0, 0, 0, 0, 0, 0
db 0, 0, 0, 0, 0, 0, 0, 0
FONT_SIZE: dd 6


SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
ALIGN 32
[BITS 32]
LABEL_STACK:
	times 512  db 0
	TopOfStack  equ  $ - LABEL_STACK
