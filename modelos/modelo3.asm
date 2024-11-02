;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;nasm -f win64 -o grupoC_110821.o grupoC_110821.asm -l grupoC_110821.lst
;x86_64-w64-mingw32-gcc.exe -o grupoC_110821.exe grupoC_110821.o
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;0000000000401550    direccion donde se alojan los programas ensamblador en el x64dbg	
section .data	
	X1 DD -0.79	
	X2 DQ +0.79	
	NOMBRE DD   "inf221sxz" ; USAR ESTAS MISMAS CADENAS NO MODIFICAR	
	REGISTRO DD "012045679" ; USAR ESTAS MISMAS CADENAS NO MODIFICAR	
section .bss	
	X3 RESD 1	
	X4 RESW 1	
	X5 RESB 1	
	X6 RESD 1	
section .text 	
	global main 	
main:	
	;---------------------------------------	
	JMP LIMPIAR	
	INICIO:	
	MOV RAX,X1	
	MOV RBX,X2	
	MOV RCX,NOMBRE	
	MOV RDX,REGISTRO	
	JMP SALTAR	
	SALTOX:	
	JMP SALTO2	
	SALTOX1:	
	JMP SALTO3 	
	SALTAR:	
	;---1---	
	MOV AX,[RCX-2]	
	MOV BX,[RDX-(2*4)]	
	NEG BX	
	OR AX,BX	
	MOV BX,[REGISTRO-(2*5)]	
	NEG BX	
	AND BX,[REGISTRO-(2*3)]	
	;---2---	
	JMP SALTOX	
	;---1---	
	SALTO2:	
	MOV AX,[RCX-(0AH)]	
	MOV BX,[RDX-(0BH)]	
	NEG BX	
	DEC AX	
	MOV BX,[NOMBRE-(0B0000_0110)]	
	NEG BX	
	MOV BX,[NOMBRE-(0B0000_0101)]	
	;---2---	
	JMP SALTOX4	
	;---3---	
	SALTOX4:	
	MOV AX,[RCX-(2*3)]	
	MOV BX,[RDX-(2*7)]	
	NEG BX	
	ADD AX,BX	
	MOV BX,[NOMBRE-(0000_1011B)]	
	NEG BX	
	XOR BX,[NOMBRE-(0000_1010B)]	
	JMP SALTO3	
	;---2---	
	SALTO3:	
	MOV DWORD [X3],-1	
	MOV ECX,X3	
	MOV ECX,[ECX]	
	AND ECX,EDX	
	MOV WORD [X4],0XFFFF	
	MOV DX,[X4]	
	OR EDX,[X3]	
	JMP FIN	
	LIMPIAR:	
	MOV RAX,"87654231"   ; entran de izquierda a derecha las cadenas	
	MOV RBX,"12345678"	
	MOV RCX,"11110000"	
	MOV RDX,"00001111"	
	XOR R8,R8
	XOR R9,R9
	XOR R10,R10
	XOR R11,R11
	XOR R12,R12
	XOR R13,R13
	XOR R14,R14
	XOR R15,R15
	JMP INICIO	
	JMP SALTOX	
	JMP SALTOX1	
	FIN:	
	MOV DWORD[X3],EAX	
	MOV WORD[X4],BX	
	MOV BYTE[X5],CH	
	MOV DWORD[X6],EDX	
	RET	
