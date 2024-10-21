segment .data
	;aqui se declaran variables inicializadas
	x1 		   dd -0.004
	x2         dd +0.004
	pflotanten dd "6F1283BB"
	pflotantep dd "6F12833B"
segment .bss
	;aqui van las variables declaradas pero sin inicializar
	x3 RESD 1
	x4 RESW 1
	x5 RESB 1
	x6 RESD 1
segment .text 
	global main 					
main:
	XOR RAX,RAX
	XOR RBX,RBX
	XOR RCX,RCX
	XOR EDX,EDX
	ret