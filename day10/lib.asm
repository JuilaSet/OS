io_in8:
	mov  edx, [esp + 4]
	mov  eax, 0
	in   al, dx
	ret

io_in16:
	mov  edx, [esp + 4]
	mov  eax, 0
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

; 屏蔽中断: eflags 第9位设置成0
io_cli:
	CLI
	RET

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

; 程序结束
io_hlt:		; io_hlt() 函数
	HLT	; 系统进入休眠状态
	RET