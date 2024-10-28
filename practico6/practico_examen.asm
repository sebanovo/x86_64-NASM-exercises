;%%%%%%%%%%%%%%%%%%%%%%%				
;assemble and link with 				
;nasm -f win64 -o 13112023.o 13112023.asm -l 13112023.lst				
;x86_64-w64-mingw32-gcc.exe -o 13112023.exe 13112023.o				
;%%%%%%%%%%%%%%%%%%%%%%%				
segment .data				
	PF   DD  -0B0.00000000111111111111111111111111  			
	NOM  DQ  +0B11111.0000000001111111111111111111 			
	REG  DQ  "01234678ABCDe"  			
	AB   DW  "12345"			
	BC   DD  "abcde"			
CICLO  DW +15				
	A   DB   -0B0111_1111			
	B   DB   -0000_0001B				
	C   DW   -0B0000_0000_0000_0001			
	D   DW   +07FFFH			
segment .bss				
	C0  RESW 1 				
	C1  RESD 1				
	C2  RESQ 1			
segment .text 				
	global main 				
main:				
	MOV R15,C2				
	MOV R14,C1			
	MOV R13,C0			
	MOV WORD [C0],R13W			
	MOV DWORD [C1],R14D				
	MOV QWORD [C2],R15 			
	JMP limpiar				
	inicio:			
	MOV AL,0B1111_1111	   			
	SUB AL,-1			
	SUB DL,AL			
	INC CX	   			
	NEG CX  				
	SUB CL,AL 				
	XOR AX,[C]				
	add AX,1 			
	MOV BX,[CICLO] 				
	MOV CX,[C]				
	NOT CX				
	SUB BX,CX				
	JMP MEDIO2			
	volver:			
	ADD DL,-0B0000_0101			
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
	MOV AL,[ECX-0B0111]				
	MOV CL,[ECX-0B0101]				
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
	SUB R9B,R8B				
	CICLOF:				
				
	DEC CL				
	JMP FIN2			
	limpiar:				
	MOV R8,"abcdefg"				
	MOV R9,"HIJKLMN"			
	MOV R10,"opqrstu"			
	MOV R11,"UVWXYZa"			
	MOV R12,"bcdefgh"			
	MOV R13,"ijklmno"			
	MOV R14,"pqrstuv"			
	MOV R15,"wxyz012"			
	SUB RCX,RCX				
	XOR RDX,RDX				
	MOV RAX,NOM				
	MOV RBX,REG		   	
	MOV EAX,[RAX]				
	MOV EDX,[RBX]			
	MOV EBX,[C1]				
	XOR EAX,EBX				
	JMP inicio			
	FIN2:			
ret 				
