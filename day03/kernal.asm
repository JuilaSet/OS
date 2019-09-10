%include "pm.inc"

org   0x9000

jmp   LABEL_BEGIN

[SECTION .gdt]

; 描述符列表
				; (开始点)段基址 段界限(长度)		属性
LABEL_GDT:
	Descriptor		0,		 0,			0

LABEL_DESC_CODE32:
	Descriptor		0,		 SegCode32Len - 1,	DA_C + DA_32

LABEL_DESC_VIDEO:
	Descriptor		0B8000h,	 0ffffh,		DA_DRW

GdtLen		equ	$ - LABEL_GDT		; 上面三个描述符的大小 (当前地址 - 描述符的首地址)
GdtPtr		dw	GdtLen - 1		; 2个字节存放描述符的长度
		dd	0			; 存放首地址Descriptor形成的列表的首地址

SelectorCode32	equ	LABEL_DESC_CODE32 - LABEL_GDT	; 得到第2个描述符相对于开头的偏移
SelectorVideo	equ	LABEL_DESC_VIDEO  - LABEL_GDT	; 得到第3个描述符相对于开头的偏移

[SECTION  .s16]
[BITS  16]
LABEL_BEGIN:

	; 初始化
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax
	mov	sp, 0100h
	
	xor	eax, eax
	mov	ax,  cs
	shl	eax, 4		; 向左平移4位(1 byte), 相当于 * 0x10, 模拟段寄存器
	
	add	eax, LABEL_SEG_CODE32
	mov	word [LABEL_DESC_CODE32 + 2], ax
	shr	eax, 16
	mov	byte [LABEL_DESC_CODE32 + 4], al
	mov	byte [LABEL_DESC_CODE32 + 7], ah
	
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
	mov	ax, SelectorVideo	; 显存地址
	mov	gs, ax		; gs是一个段寄存器, 设置它指向显存
	mov	si, msg
	mov	ebx, 10		; 从第11行的第10列开始显示字符 (80 * 11 + 10)
	mov	ecx, 2		; 两个字节表示一个字符

showChar:
	mov	edi, (80*11)	; 从第11行显示字符, 每一行80个字符
	add	edi, ebx	; (80 * 11) + 10
	mov	eax, edi
	mul	ecx		; (80 * 11) + 10 * 2, mul 将eax/ax/al(32/16/8位)做乘
	mov	edi, eax

	mov	ah, 0ch		; 设置eax低16位的高8位为0c, 即设置颜色
	mov	al, [si]	; 设置si所指向的字符放入eax低16位的低8位, 即设置字符
	cmp	al, 0		; al是否为结束字符, 是: 结束输出
	je	end

	add	ebx, 1		; 指向下一个字符位置
	add	si, 1		; 字符串下一个位置
	mov	[gs:edi], ax	; 
	jmp	showChar
end: 
	jmp	$
	msg:
	DB	"Protect Mode", 0

SegCode32Len	equ  $ - LABEL_SEG_CODE32

