; use pow
global main
extern printf, pow 

; db byte (8 bits = 1byte)
; dw word (16 bits =2byte)
; dd double word (32 bits = 4 bytes)
; dq double quat (64 bits = 8 bytes)

; procesadores de 1 byte
; procesadores de 2 byte
; procesadores de 4 byte
; procesadores de 8 byte
section .data
    n1 dq 10.0
    n2 dq 10.0
	fmt db "pow(%f,%f) = %f", 10,0

section .bss
    result resq 1
section .text

; ; c++
; int main() {
;     std::cout << pow(10,10) << '\n'; 
;     return 0;
; }

; ; c
; int main() {
;     int n1 = 10;
;     inti n2 = 10;
;     printf("pow(%f,%f) = %f", n1, n2, pow(n1,n2);
;     return 0;
; }

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