extern printf
global main

%include "math.asm"

section .data
    vector dq 10,9,8,7,6,5,4,3,2,1
    n1 equ ($ - vector) / 8
    fmt db "%d", 0
    msg db "Hola mundo", 0
    n equ $ - msg 
    x dq 1000
section .text
main:    
    ; push qword[x]
    ; call cube
    ; add rsp, 8
    ; mov rcx, 12 
    ; mov rdx, 20
    ; call suma 

    ; sub rsp, 0x20
    ; mov rcx, fmt
    ; mov rdx, rax
    ; call printf
    ; add rsp, 0x20
    mov rax, [x]
    ret   0