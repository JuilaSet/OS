; 加载TSS
taskswitch8:
	jmp	8 << 3:0
	ret

taskswitch7:
	jmp	7 << 3:0
	ret

taskswitch6:
	jmp	6 << 3:0
	ret

taskswitch9:
	jmp	9 << 3:0
	ret

load_tr:
	LTR	[esp + 4]	; load_tr(int), 加载第几个描述符
	ret

get_addr_gdt:
	mov	eax, LABEL_GDT
	ret

get_code32_addr:
	mov	eax, LABEL_SEG_CODE32
	ret
