segment .data
  ;aqui se declaran variables inicializadas
  nota1	 DD	0000000FH
  y	     db	0X98
  z	     db	-128
  a      db 1111_1111b		
  b      db 10001111b
  c      db 0000_0001b
  CAD    DB "VSTZ"
  CAD2   DB "0001"
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
  MOV R8W,[nota1]
  MOV R9B,[y]
  MOV R10D,[z]
  MOV byte [v5],R8B
  MOV WORD [v6],R8W
  MOV DWORD [v7],R10D
  MOV QWORD [v7],nota1 
  ret
