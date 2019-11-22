io_in8:
	mov  edx, [esp + 4]
	xor  eax, eax
	in   al, dx
	ret

io_in16:
	mov  edx, [esp + 4]
	xor  eax, eax
	in   ax, dx
	ret

io_in32:
	mov edx, [esp + 4]
	in  eax, dx
	ret

io_out8:
	mov edx, [esp + 4]
	mov al, [esp + 8]
	out dx, al
	ret

io_out16:
	mov edx, [esp + 4]
	mov eax, [esp + 8]
	out dx, ax
	ret

io_out32:
	mov edx, [esp + 4]
	mov eax, [esp + 8]
	out dx, eax
	ret

; 保存eflags快照 
io_load_eflags:
	pushfd
	pop  eax
	ret

; 加载保存的eflags快照
io_store_eflags:
	mov eax, [esp + 4]
	push eax
	popfd
	ret


; 系统进入休眠状态
io_hlt:		; io_hlt() 函数
	HLT
	RET

; 允许中断发生
io_sti:		; io_sti() 函数
	STI
	RET

; 禁止中断发生
io_cli:
	CLI
	RET

; 查看一下中断是否发生
io_stihlt:	; io_stihlt() 函数
	STI
	HLT
	RET
