;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win64 -o 22032021.o 22032021.asm -l 22032021.lst
;x86_64-w64-mingw32-gcc.exe -o 22032021.exe 22032021.o
;%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%
segment .data
	PF   DD  -0B0.000000011100110011001100110  
	NOM  DQ  +0B0.000000011100110011001100110  
	REG  DD  "01234678"  ; NO MODIFICAR
    CICLO  DW +00000FH
 	A   DB   -07FH
    B   DB   -001H
	C   DW   +0B1111_1111_1111_1111
	D   DW   +07FFFH
segment .bss
    C1  RESD 1
	C2  RESD 1
segment .text 
	global main 					
main:
	;---------------------------------------	
	MOV RAX,PF
	MOV RBX,NOM
	JMP limpiar
	inicio:
	ADD AL,AH
	ADD BL,BH
	SUB DL,CL  
	NEG CX  
	INC CX
	SUB CL,AL 
	XOR AX,[C]
	add AX,1 
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
	;---------------------------------------
	MEDIO2:
	MOV BX,[D] 
	DEC BX
	MOV AL,[A]
	ADD AL,[B]
	MOV AX,7FH 
	JMP MEDIO1
	MOV CL, 0B0001_0101 	
	MAYOR:
	MOV   AL,[NOM]
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
	MOV AL,[ECX-0CH]
	MOV CL,[ECX-0DH]
	MOV DL,[NOM]
	SUB AL,AH
	MOV EAX,[C2]
	MOV EBX,[C1]
	ULTIMO:
	MOV AX,CX
	MOV CX,BX
	NOT CL
	MOV RDX,PF
	ADD AH,AL
	MOV CL,AH
	SUB RCX,000400000H
	ADD CL,CL
	CICLOF:
	;MOV AX,[PF+ECX]
	DEC CL
	JMP FIN2
	limpiar:
	SUB R8,R8
	SUB R9,R9
	XOR R10,R10
	XOR R11,R11
	XOR R12,R12
	XOR R13,R13
	SUB R14,R14
	SUB R15,R15
	SUB RCX,RCX
	XOR RDX,RDX
	MOV EAX,[RAX]
	MOV EDX,[RBX]
	MOV DWORD [C1],EAX
	MOV DWORD [C2],EAX
	MOV EBX,[C1]
	XOR EAX,EBX
	JMP inicio
	FIN2:
	MOV DWORD [C1],EAX
	MOV DWORD [C2],EBX
	ret 