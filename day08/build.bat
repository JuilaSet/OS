nasm -o kernel.img kernel.asm
nasm -o boot.img boot.asm

cd D:
FontAsmGenerator.exe ./ font.txt font.asm

cd D:
Floppy.exe ./

pause
