;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%					
;nasm -f win64 -o defv.o defv.asm -l defv.lst					
;x86_64-w64-mingw32-gcc.exe -o defv.exe defv.o					
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%					
;-----------------------------------------					
;0000000000401550    direccion donde se alojan los programas ensamblador en el x64dbg	
segment .data					
	var0 DB "123"					
	var1 DW "01234"					
	var2 DD "0123"					
	var3 DD "ABCDE"   ; IZD - DER        CADENA  					
	var4 DQ "012345678"					
	var5 DQ "abcdefghi"					
segment .bss					
segment .text 					
	global main 					
main:					
	XOR RAX,RAX					
	XOR RBX,RBX					
	XOR RCX,RCX					
	XOR EDX,EDX					
	XOR R8,R8					
	XOR R9,R9					
	XOR R10,R10					
	XOR R11,R11					
	XOR R12,R12					
	XOR R13,R13					
	XOR R14,R14					
	XOR R15,R15					
	ret					
