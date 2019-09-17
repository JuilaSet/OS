nasm -o kernel.img kernel.asm
nasm -o boot.img boot.asm
..\Floppy\Debug\Floppy.exe
pause