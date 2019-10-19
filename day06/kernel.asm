%include "pm.inc"

org	0x8000

jmp	LABEL_BEGIN

[SECTION .gdt]
;				�λ�ַ		�ν���			����
LABEL_GDT:   	    Descriptor	0,		0,			0		; ��������, CPU��ʹ��
LABEL_DESC_CODE32:  Descriptor	0,		SegCode32Len - 1,	DA_C + DA_32

; ������4G�ڴ浱��һ�οɶ���д���ڴ�
LABEL_DESC_VRAM:    Descriptor	0,		0ffffffffh,		DA_DRW	; ����Ϊ4G

; C���Ե��û�ջ�ռ�: TopOfStack = 512, 200h
LABEL_DESC_STACK:   Descriptor	0,		TopOfStack,		DA_DRWA+DA_32

GdtLen     equ    $ - LABEL_GDT
GdtPtr     dw     GdtLen - 1
           dd     0

; ��ѡ���
SelectorCode32    equ   LABEL_DESC_CODE32 -  LABEL_GDT
SelectorStack     equ   LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram      equ   LABEL_DESC_VRAM   -  LABEL_GDT


[SECTION  .s16]
[BITS  16]	; ����16λģʽ�Ļ�е����
LABEL_BEGIN:
	; CS: ����μĴ���(`code`), ��Ŷ�ѡ���
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

	; ����ȫ����������
	xor	eax, eax
	mov	ax, ds
	shl	eax, 4
	add	eax,  LABEL_GDT
	mov	dword  [GdtPtr + 2], eax

	lgdt	[GdtPtr]

	cli	; ���ж�

	in	al,  92h
	or	al,  00000010b
	out	92h, al

	; CR0 =1 ��ʾ�ڱ���ģʽ������
	mov	eax, cr0
	or	eax , 1
	mov	cr0, eax

	; CS�Ĵ����ҵ�GDT���ж�Ӧ�ı��� + ����ƫ��(�����IP�Ĵ�����)
	jmp	dword  SelectorCode32: 0

[SECTION .s32]
[BITS  32]	; ����32λģʽ�Ļ�е����
LABEL_SEG_CODE32:
; Ϊc�������ÿռ�

	mov	ax, SelectorStack
	mov	ss, ax			; ss - ���ջ��ַ��Ӧ�Ķ�������
	mov	esp, TopOfStack		; esp - ջ��ָ��ָ��ջ��

	mov	ax, SelectorVram
	mov	ds,  ax			; dsָ���������Ե�ַ, ���c�����е�ȫ�ֱ���, �����Դ�

C_CODE_ENTRY:
	%include	"write_vga.asm"	; ����c���Է������ļ�, ����ͼ��ĺ����ļ�

io_hlt:		; io_hlt() ����
	HLT	; ϵͳ��������״̬
	RET

SegCode32Len   equ  $ - LABEL_SEG_CODE32

[SECTION .gs]
	ALIGN 32
[BITS 32]
LABEL_STACK:
	; 512�ֽڵ�ջ�ռ�
	times 512  db 0
	TopOfStack  equ  $ - LABEL_STACK

