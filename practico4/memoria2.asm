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
ret