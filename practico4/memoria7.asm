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
  XOR R8,R8
  XOR R9,R9
  XOR R10,R10
  XOR R11,R11
  XOR R12,R12
  XOR R13,R13
  XOR R14,R14
  XOR R15,R15
  MOV R8,x1
  MOV R9,x2
  MOV R10,al1
  MOV R11,ah1
  MOV R12,bl1
  MOV R13,bh1
  MOV R14,v5
  MOV R15,v6
  MOV RAX,[R8]
  MOV RBX,[R9+1]
  MOV RCX,[R10+(2*2)]
  MOV RDX,[R11+0X6]
ret