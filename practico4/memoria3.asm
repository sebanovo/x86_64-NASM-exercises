segment .data
	NOMBRE    DW  "floresguzman"; en mayuscula   apellido del alumno
	REGISTRO  DB  "201023456789";colocar registro del alumno
	ab        DD  00402000H
	aa        DD  011223344H 
	 z	      db  +127
	 a        DD  -32768
	bb        db  0000_0001b
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
	MOV R8D,[NOMBRE]
	MOV EAX,[REGISTRO]
	XOR R8D,EAX
	MOV RBX,[bb]
	NOT RBX
	NOT RBX
	ADD RBX,1
	INC (RBX)
	DEC (RBX)
	AND RBX,RBX
	OR  RBX,RBX
	ret