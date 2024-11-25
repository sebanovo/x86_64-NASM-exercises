; main.asm

%include "math.asm"

global main 
extern printf

section .data
    fsuma  db "La suma es: %d", 10, 0
    fmult db "La multiplicacion es: %d", 10, 0
    f db "Hola", 0
    n1 dq 10
    n2 dq 20

section .text
main:
    mov  rdi, [n1]
    mov  rsi, [n2]
    call add_numbers

    sub rsp, 0x20
    mov rcx, fsuma 
    mov rdx, rax,
    call printf
    add rsp, 0x20

    mov  rdi, [n1]
    mov  rsi, [n2]
    call multiply_numbers 

    sub rsp, 0x20
    mov rcx, fmult 
    mov rdx, rax
    call printf
    add rsp, 0x20
    ret
    
