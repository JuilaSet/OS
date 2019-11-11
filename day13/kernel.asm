%include "pm.inc"

[org 0x8000]

jmp	LABEL_BEGIN

[SECTION .gdt]
;				段基址		段界限			属性
LABEL_GDT:   	    Descriptor	0,		0,			0  
LABEL_DESC_CODE32:  Descriptor	0,		SegCode32Len - 1,	DA_C | DA_32 | DA_LIMIT_4K
LABEL_DESC_VIDEO:   Descriptor	0B8000h,	0ffffh,			DA_DRW
LABEL_DESC_VRAM:    Descriptor	0,		0ffffffffh,		DA_DRW | DA_LIMIT_4K

; 把整个4G内存当做一段可读可写的内存
LABEL_DESC_STACK:   Descriptor	0,		TopOfStack,		DA_DRWA | DA_32 | DA_LIMIT_4K

; 图像与字体表只读
LABEL_DESC_FONT:    Descriptor	0,		SystemFontLength - 1,	DA_DRW | DA_LIMIT_4K

GdtLen     equ    $ - LABEL_GDT
GdtPtr     dw     GdtLen - 1
           dd     0

SelectorCode32    equ   LABEL_DESC_CODE32 -  LABEL_GDT
SelectorVideo     equ   LABEL_DESC_VIDEO  -  LABEL_GDT
SelectorStack     equ   LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram      equ   LABEL_DESC_VRAM   -  LABEL_GDT
SelectorFont      equ   LABEL_DESC_FONT   -  LABEL_GDT

; 中断向量表 SpuriousHandler KeyBoardHandler MouseHandler
[SECTION .igt]
LABEL_IDT:
%rep  9 
	Gate	SelectorCode32, SpuriousHandler, 0, DA_386IGate
%endrep

; 9
.09H:
	Gate	SelectorCode32, KeyBoardHandler, 0, DA_386IGate

%rep  34
	Gate	SelectorCode32, SpuriousHandler, 0, DA_386IGate
%endrep

; 44
.2CH:
	Gate	SelectorCode32, MouseHandler, 0, DA_386IGate

%rep  241
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

	; 检测可用内存
ComputeMemory:
	mov   ebx, 0
	mov   di, MemChkBuf

.loop:
	mov   eax, 0E820h
	mov   ecx, 20
	mov   edx, 0534D4150h
	int   15h
	jc    near LABEL_MEM_CHK_FAIL
	add   di, 20   
	inc   dword [dwMCRNumber]
	cmp   ebx, 0
	jne   .loop
	jmp   LABEL_MEM_CHK_OK
LABEL_MEM_CHK_FAIL:
	mov    dword [dwMCRNumber], 0

LABEL_MEM_CHK_OK: 

	; 调色板显示模式显示
	mov	al, 0x13
	mov	ah, 0
	int	0x10

	; 32位保护模式代码
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4
	add	eax, LABEL_SEG_CODE32
	mov	word [LABEL_DESC_CODE32 + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_CODE32 + 4], al
	mov	byte [LABEL_DESC_CODE32 + 7], ah

	; font字体表
	xor   eax, eax
	mov   ax,  cs
	shl   eax, 4
	add   eax, LABEL_SYSTEM_FONT
	mov   word [LABEL_DESC_FONT + 2], ax
	shr   eax, 16
	mov   byte [LABEL_DESC_FONT + 4], al
	mov   byte [LABEL_DESC_FONT + 7], ah

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

	; 初始化8259A硬件
	call	init8259A

	; 加载中断描述符表
	xor	eax, eax
	mov	ax,  ds
	shl	eax, 4
	add	eax, LABEL_IDT
	mov	dword [IdtPtr + 2], eax		; (ds * 16 + LABEL_IDT)
	lidt	[IdtPtr]			; : 88af

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

; 内存信息
MemChkBuf:		times 256 db 0
dwMCRNumber:		dd 0

; 中断处理程序
_SpuriousHandler:
	SpuriousHandler equ _SpuriousHandler - $$
	call intHandlerFromC_Spurious
	iretd

;  键盘中断处理程序
_KeyBoardHandler:
	KeyBoardHandler	equ _KeyBoardHandler - $$	; 计算到LABEL_SEG_CODE32的偏移
	push es
	push ds
	pushad
	mov  eax, esp
	push eax

	call		intHandlerFromC_keyBoard	; 中断处理程序
	
	pop  eax
	mov  esp, eax
	popad
	pop  ds
	pop  es
	iretd						; 中断返回

; 鼠标中断处理程序
_MouseHandler:
	MouseHandler equ _MouseHandler - $$
	push es
	push ds
	pushad
	mov  eax, esp
	push eax
	
	call		intHandlerFromC_mouse

	pop  eax
	mov  esp, eax
	popad
	pop  ds
	pop  es
	iretd

; 头文件
; 内存信息
	%include	"memory.asm"

; 导入汇编对应的函数
	%include	"lib.asm"

; 导入字体文件
LABEL_SYSTEM_FONT:
	%include	"font.asm"
SystemFontLength equ $ - LABEL_SYSTEM_FONT


SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
ALIGN 32
[BITS 32]
LABEL_STACK:
	times 512  db 0
	TopOfStack  equ  $ - LABEL_STACK

