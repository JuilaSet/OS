cd D:
FontAsmGenerator.exe ./ font.txt font.asm
echo fontlist: >> write_vga.asm
cat font.asm >> write_vga.asm
pause