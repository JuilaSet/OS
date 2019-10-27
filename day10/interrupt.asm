init8259A:

	; 往端口20h(主片)或A0h(从片)发送ICW1: 
	mov  al, 011h	; 边沿触发模式
	out  02h, al
	call io_delay

	out 0A0h, al
	call io_delay

; IRQ1~7中断信号由INT20~27接收 {
	; 向主8259A发送ICW2:
	mov  al, 020h	; 当主8259A对应的IRQn管线向CPU发送信号时, CPU根据0x20+n这个值去查找要执行的代码, n=1,2,3...
	out  021h, al
	call io_delay

	; 向从8259A发送ICW2:
	mov  al, 028h	; CPU根据0x28+n这个值去查找要执行的代码, n=1,2,3...
	out  0A1h, al
	call io_delay
; }

	; 向主8259A发送ICW3
	mov  al, 004h
	out  021h, al	; 表示从8259A通过主IRQ2管线连接到主8259A控制器
	call io_delay

	; 向从8259A发送ICW3
	mov  al, 002h	; 表示当前从片是从IRQ2管线接入主8259A芯片的
	out  0A1h, al
	call io_delay

	mov  al, 002h	; 向主8259A发送ICW4:
	out  021h, al
	call io_delay

	;	[0]: 0=MCS 80/85,1=8086模式
	;	[1]: 0=正常EOI,1=自动EOI
	;	[2-3]: 主从缓冲模式
	;	[4]: 0=sequential模式,1=SFNM模式
	;	[5-7]: 未使用,全为0
	out  0A1h, al	; 向从8259A发送ICW4:
	call io_delay

	mov  al, 11111001b	; 允许接收键盘中断
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
	ret
