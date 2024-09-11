section .data
    a dw 100
    b dw 200 

section .bss
    c resw 1

section .text
    global main

main:   
    xor rax, rax

    mov al, [a]
    add al, [b]
    mov [c], rax

    ret 
