; use mul (unsigned number)
extern printf
section .data
    n1 dd -2147483648 
	n2 dd  2147483647
    ; d = ld = 4 bytes (unsigned number of 32 bits) 
    ; lld = 8 bytes (unsigned number of 64 bits) 
	fmt db "%ld x %ld = %lld", 0
section .bss
section .text
	global main:
main: 
    xor rax, rax
    xor rdx, rdx
    xor r8, r8 
    xor r9,r9 
    xor r10, r10
    xor r11,r11

	mov eax, [n1]
	imul dword [n2]

	limpiar:
	sub rsp, 32 
 	mov rcx, fmt

    mov r9, rdx 
 	mov edx, [n1]
 	mov r8d, [n2]

    shl r9, 32
    or r9,  rax
	call printf
	add rsp, 32 
	ret 