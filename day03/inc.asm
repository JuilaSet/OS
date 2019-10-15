
	mov	ax, SelectorVideo	; 显存地址
	mov	gs, ax			; gs是一个段寄存器, 设置它指向显存
	mov	si, msg
	mov	ebx, 10			; 从第11行的第10列开始显示字符 (80 * 11 + 10)
	mov	ecx, 2			; 两个字节表示一个字符
showChar:
	mov	edi, (80*11)		; 从第11行显示字符, 每一行80个字符
	add	edi, ebx		; (80 * 11) + 10
	mov	eax, edi
	mul	ecx			; (80 * 11) + 10 * 2, mul 将eax/ax/al(32/16/8位)做乘
	mov	edi, eax

	mov	ah, 0ch			; 设置eax低16位的高8位为0c, 即设置颜色
	mov	al, [si]		; 设置si所指向的字符放入eax低16位的低8位, 即设置字符
	cmp	al, 0			; al是否为结束字符, 是: 结束输出
	je	end

	add	ebx, 1			; 指向下一个字符位置
	add	si, 1			; 字符串下一个位置
	mov	[gs:edi], ax
	jmp	showChar

end: 
	jmp	$
