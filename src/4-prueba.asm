section .data
    v1 db 0FH
    v2 dw 15
    v3 dd 0b0000_0000_0000_0000_0000_0000_0000_1111
    v4 dq -0.5
section .bss
    c resw 1
section .text
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
    MOV R8,v1
    MOV R9,[R8]
    ret