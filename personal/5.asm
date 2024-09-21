;; RESTA (impares - pares) del # de registro
segment .data
               ;0 1 2 3 4 5 6 7 8
    registro db 2,2,3,0,4,7,3,3,3 
    ; pares  0, 6, 8  
    ; impares 1, 5, 7
    ; pares = 2 + 3 + 3 = 8
    ; impares = 2 + 7 + 3 = 12
    ; impares - pares = 12 - 8 = 4
	format db "%d", 0
segment .bss
    resultado resb 1
segment .text
	extern printf
	extern rand
	global main
main:
	sub rsp, 0x20 
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx

    ; pares
    movzx rax, byte [registro + 0]
    movzx rdx, byte [registro + 6]
    add rax, rdx
    movzx rdx, byte [registro + 8]
    add rax, rdx

    ; impares
    movzx rbx, byte [registro + 1]
    movzx rdx, byte [registro + 5]
    add rbx, rdx
    movzx rdx, byte [registro + 7]
    add rbx, rdx 

    ;impares - pares
    sub rbx, rax
    mov rcx, format
    mov rdx, rbx
    call printf

	add rsp, 0x20
	ret
