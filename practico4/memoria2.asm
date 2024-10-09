segment .data
	PF   DD   -0.05
	NOM  DB  "valentinflores"        ; nombre en minuscula
	REG  DB  "961015268" 
    CICLO  DW +0Fh
 	A   DB   -127  
    B   DB   -1	
	C   DW   +0ffffh   
	D   DW   +7fffh 
segment .bss
;block storage start
;aqui van las variables declaradas pero sin inicializar

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
	MOV R8,[PF]
	MOV R9,[NOM]
	MOV R10,[REG]
	MOV R11,[B]
	NEG R11
	NEG R11
	NOT R11
	NOT R11
	MOV AX,[C] 
ret