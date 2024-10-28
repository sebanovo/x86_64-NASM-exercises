segment .data						
	NOMBRE    DD  +0B1101.001100110011001100110011						
	REGISTRO  DQ  -0B1101.001100110011001100110011						
	ab     DD  0B0000_0000_0100_0000_0010_0000_0000_0000						
	aa     DD  0B0001_0001_0010_0010_0011_0011_0100_0100 						
	z     DB  +0B0111_1111						
	a     DD  -32768 
	bb     db  0000_0001b						
segment .bss						
	DINICIO1  RESD 1						
	DFIN1     RESD 1						
	CONTADOR RESB 1						
segment .text 						
	global main 						
main:						
	MOV RAX,NOMBRE						
	MOV DWORD [DINICIO1],EAX						
	MOV EBX,REGISTRO						
	MOV DWORD [DFIN1],EBX						
	jmp limpiar						
	INICIO:						
	JZ  SALTO2					
	JNS  SALTO4					
	JS  SALTO3				
	jmp SALTO1				
	SALTO3:						
	MOV AL,[z]					
	NOT AL					
	SALTO2:					
	MOV BL,[z]					
	MOV EDX,[a]					
	NEG BL				
	NOT EDX				
	ADD DX,[bb]				
	SALTO1:					
	JO BUCLE12					
	JZ BUCLE11				
	JS SALTO4				
	JNO BUCLE11						
	SALTO4:					
	BUCLE0 JZ FIN					
	CMP CL,DH					
	JZ BUCLE11				
	JNZ BUCLE12				
	JO INICIO				
	JMP limpiar				
	BUCLE11:				
	MOV CH,[bb]				
	BUCLE: 				
	ADD EAX,[aa]			
	DEC DL			
	NOT CL			
	DEC CH			
	JNS BUCLE				
	JZ SALTO4				
	JS FIN2				
	JMP BUCLE0				
	BUCLE12:				
	MOV CL,[CONTADOR]  				
	SUB CL,DL				
	BUCLE2:				
	MOV R9,RAX						
	DEC CL     						
	JNS BUCLE2				
	CMP DH,BL				
	JZ BUCLE0				
	JNS BUCLE12				
	JO INICIO				
	JS FIN2				
	ADD DL,[bb]						
	DEC DL						
	FIN:  						
	cmp CH,CL						
	JS SALTO2						
	JZ SALTO1						
	JNZ FIN2						
	APILAR:						
	METER: 						
	MOV ECX,[DINICIO1]				
	ADD CL,DL				
	MOV RCX,[RCX]				
	MOV R10D,ECX				
	ADD DL,0B0101				
	CMP [CONTADOR],DL				
	JNZ METER				
	JS INICIO				
	JO SALTO4				
	JNS SEGUIR				
	limpiar:						
	XOR rax,rax						
	SUB rbx,rbx						
	XOR rcx,rcx						
	SUB rdx,rdx						
	XOR R8,R8						
	XOR R9,R9						
	XOR R10,R10						
	XOR R11,R11						
	XOR R12,R12						
	XOR R13,R13						
	XOR R14,R14						
	XOR R15,R15						
	MOV EBX,[DFIN1]						
	MOV BYTE [CONTADOR],BL						
	JMP APILAR						
	SEGUIR:						
	MOV EBX,[ab]						
	ADD RBX,REGISTRO						
	SUB EBX,[ab]						
	MOV CL,[EBX]						
	MOV AL,[z]						
	MOV BL,AL						
	NEG BL						
	DEC BL						
	DEC BL						
	JO SALTO1						
	JNS SALTO2						
	JZ SALTO3						
	JS BUCLE0						
	JMP INICIO  						
	FIN2:						
	MOV ECX,[DFIN1]						
	MOV EDX,[ECX+4]						
ret						
