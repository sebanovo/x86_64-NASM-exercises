extern printf
section .data
	n1 db 12
	n2 db 10
	fmt db "%d", 0
section .text
	global main
main: 
	ret