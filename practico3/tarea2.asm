;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%				
;nasm -f win64 -o defv1.o defv1.asm -l defv1.lst				
;x86_64-w64-mingw32-gcc.exe -o defv1.exe defv1.o				
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%				
;-----------------------------------------				
;0000000000401550    direccion donde se alojan los programas ensamblador en el x64dbg				
segment .data				
	var0 DW "12345"				
	var1 DB "0123"				
	var7 DB -128				
	var2 DD "01235"				
	var3 DD 012345678H    				
	var4 DQ "012345678"				
	var5 DQ 01122334455667788H				
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
