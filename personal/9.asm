; use pow
global main
extern printf, pow 

section .data
    n1 dq 10.0
    n2 dq 10.0
	fmt db "pow(%f,%f) = %f", 10,0

section .bss
    result resq 1
section .text

main:
   sub rsp , 8 
   movsd xmm0, [n1] ; movsd 64 bits (double) - movss 32 bits (float)
   movsd xmm1, [n2] 
   call pow
   add rsp , 8
   movq [result], xmm0 

   sub rsp, 0x20 
   mov rcx, fmt
   mov rdx, [n1]
   mov r8, [n2]
   mov r9, [result]
   call printf
   add rsp, 0x20 
ret