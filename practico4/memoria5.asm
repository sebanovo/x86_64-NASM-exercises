segment .data
;aqui se declaran variables inicializadas
  v1 db 0FH
  v2 dw 15
  v3 dd 0b0000_0000_0000_0000_0000_0000_0000_1111
  v4 dq -0.5
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