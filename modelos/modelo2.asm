;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;nasm -f win64 -o grupoB_110821.o grupoB_110821.asm -l grupoB_110821.lst
;x86_64-w64-mingw32-gcc.exe -o grupoB_110821.exe grupoB_110821.o
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;0000000000401550    direccion donde se alojan los programas ensamblador en el x64dbg
section .data	
	PF   DQ  -0B101.00110011001100110011011110011001100111011
	REG  DD -0.88
	CICLO  DW +0B_0000_0000_0000_1111
	A   DB   -0B_0111_1111  
	B   DB   -0B_0000_0001
	C   DW   +0XFFFF   
	D   DW   +0B0111_1111_1111_1111
section .bss	
	C1  RESD 1
	C2  RESD 1
section .text 	
	global main 	
main:	
	MOV RAX,PF
	MOV RBX,REG
	JMP limpiar
	inicio:
	XOR R8,R8
	XOR R9,R9
	XOR R10,R10
	XOR R11,R11
	XOR R12,R12
	XOR R13,R13
	XOR R14,R14
	XOR R15,R15
	DEC AL
	INC AH
	SUB AL,AH
	INC RCX
	SUB CL,AL
	XOR AX,[C]
	add AL,CL 
	MOV BX,[CICLO] 
	MOV CX,[C]
	NOT CX
	SUB BX,CX
	JMP MEDIO2
	volver:
	ADD CL,CL
	MOV DX,[C]
	ADD DX,1 
	SUB DX,5
	JMP FIN
	MEDIO2:
	MOV BX,[D] 
	DEC BX
	MOV AL,[A]
	ADD AL,[B]
	MOV AX,7FH 
	JMP MEDIO1
	MOV CL, 0B0001_0101 
	MAYOR:
	MOV   AL,[PF]
	MOV   DL,[B]  
	NEG   DL
	XOR   DL,[REG]
	SUB   AL,AH
	JMP FIN
	MEDIO1:
	MOV DL,[A]
	MOV AL,[B]
	NEG AL
	ADD AL,[B]
	JMP volver
	FIN:	
	JMP VERDAD	
	VERDAD:	
	MOV RCX,REG	
	MOV AL,[RCX-05H]	
	MOV CL,[RCX-04H]	
	MOV DL,[PF]	
	SUB AL,AH	
	MOV EAX,[C2]	
	MOV EBX,[C1]	
	ULTIMO:	
	MOV AX,CX	
	MOV CX,BX	
	NOT CL	
	MOV EDX,PF	
	CICLOF:	
	MOV AX,[PF+8]	
	DEC CL	
	JMP FIN2	
	limpiar:	
	SUB RCX,RCX	
	XOR RDX,RDX	
	MOV EAX,[RAX]	
	MOV EDX,[RBX]	
	MOV DWORD [C1],EAX	
	MOV DWORD [C2],EAX	
	MOV EBX,[C1]	
	XOR RAX,RBX	
	JMP inicio	
	FIN2:	
	MOV DWORD [C1],EAX	
	MOV DWORD [C2],EBX	
	ret 	
