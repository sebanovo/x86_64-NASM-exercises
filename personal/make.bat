@echo off
 
nasm.exe -fwin64 main.asm -o Obj/main.o
gpp.exe -s -m64 Obj/main.o -o hello.exe C:\Windows\System32\kernel32.dll

pause