extern bar_func;

[section .data]
arg1  dd 3
arg2  dd 4

[section .text]
global _start
global foo_print

// 程序入口点
_start: 
	// 放入第一个和第二个参数, 类型为 00 00 00 00 位, 4字节(c语言中为int)
	mov	eax, dword [arg1]
	push	eax
	
	// 使用堆栈传参
	mov	eax, dword [arg2]
	push	eax

	// 跳转函数, 将返回地址push
	add	esp, 8
	mov	ebx, 0
	mov	eax, 1

	// Unix调用中断
	int	0x80

// c z调用约定
foo_start: 
	// 恢复现场
	mov	edx, [esp + 8]	// 恢复栈顶指针
	mov	ecx, [esp + 4]	// 指向返回地址, ret指令用于控制EIP指针
	mov	ebx, 1
	mov	eax, 4
	int	0x80	
	ret
　