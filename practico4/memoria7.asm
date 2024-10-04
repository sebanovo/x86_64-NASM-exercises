segment .data
;aqui se declaran variables inicializadas
x1  db "1234"
x2  dd 012345678h
al1	db	0x1B
ah1	dw	0x1101
bl1	dd	0x1155
bh1	dq	0x0011		
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