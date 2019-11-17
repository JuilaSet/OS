init8259A:
	mov  al, 011h	; 边沿触发模式
	out  02h, al
	call io_delay

	out 0A0h, al
	call io_delay

; IRQ1~7中断信号由INT20~27接收 {
	mov  al, 020h
	out  021h, al
	call io_delay

	mov  al, 028h
	out  0A1h, al
	call io_delay
; }

	mov  al, 004h
	out  021h, al
	call io_delay

	mov  al, 002h
	out  0A1h, al
	call io_delay

	mov  al, 002h
	out  021h, al
	call io_delay

	out  0A1h, al
	call io_delay

	mov  al, 11111000b	; 允许接收键盘中断 + 时钟中断
	out  021h, al
	call io_delay

	mov  al, 11101111b	; 允许鼠标中断
	out  0A1h, al
	call io_delay

	ret

io_delay:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret
