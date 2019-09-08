org  0x7c00;

jmp	entry
db	0x90
DB	"OSKERNEL"
DW	512
DB	1
DW	1
DB	2
DW	224
DW	2880
DB	0xf0
DW	9
DW	18
DW	2
DD	0
DD	2880
DB	0,0,0x29
DD	0xFFFFFFFF
DB	"MYFIRSTOS  "
DB	"FAT12   "
RESB	18

entry:
    mov		ax, 0
    mov		ss, ax
    mov		ds, ax
    mov		es, ax
    mov		si, msg

; 读取字符串
    mov		CH, 1        ;柱面号 1
    mov		DH, 0        ;磁头号 0
    mov		CL, 2        ;扇区号 2

    mov		BX, msg       ;ES:BX 存储读取到的数据

    mov		AH, 0x02      ;AH = 02 表示要做的是读盘操作
    mov		AL,  1        ;AL 表示要练习读取几个扇区
    mov		DL, 0         ;驱动器编号，一般我们只有一个软盘驱动器，所以写死   
		              ;为0
    INT		0x13          ;调用BIOS中断实现磁盘读取功能

    jc		error

putloop:
    mov		al, [si]
    add		si, 1
    cmp		al, 0
    je		fin
    mov		ah, 0x0e
    mov		bx, 15
    int		0x10
    jmp		putloop

fin:
    HLT		
    jmp		fin

error:
    mov		si, errmsg   ;出现错误打印error
    jmp		putloop

msg:
    RESB	64

errmsg:
    DB		"error"