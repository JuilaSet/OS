nasm kernel.asm -o kernel.img
nasm boot.asm -o boot.img
..\Floppy\Debug\Floppy.exe
pause