; use mul (unsigned number)
extern printf
section .data
    n1 dd 4294967295
	n2 dd 2 
    ; lu (unsigned number of 32 bits) 
    ; llu(unsigned number of 64 bits) 
	fmt db "%u x %u = %llu", 0
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
	mul dword [n2]

	limpiar:
	sub rsp, 32 
 	mov rcx, fmt

    mov r10, rdx 
    mov r11, rax
 	mov edx, [n1]
 	mov r8d, [n2]

    shl r10, 32
    or r10,  r11; problema el valor de r10 se borra 
 	mov r9, r10
	call printf
	add rsp, 32 
	ret 
