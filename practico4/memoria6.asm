segment .data
;aqui se declaran variables inicializadas
 nota1	DD	0000000FH
 y	    db	0X98
 z	    db	-128
 a      db  1111_1111b		
 b      db  10001111b
 c      db  0000_0001b
 CAD    DB  "VSTZ"
 CAD2   DB  "0001"
segment .bss
;aqui van las variables declaradas pero sin inicializar
  v5 RESB 1
  v6 RESW 1
  v7 RESD 1
  v8 RESQ 1
segment .text 
global main 					
main:
 XOR RAX,RAX
 XOR RBX,RBX
 XOR RCX,RCX
 XOR EDX,EDX
ret
