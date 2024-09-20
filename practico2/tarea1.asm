segment .data
	d1  db  21  ; decimal
	d2  db  0x15  ;hexadecimal
	d3  db  15h   ;hexadecmial
	d4  db  00010101b   ; binario
	;-------un byte CS (con signo)----------
	d5  db  -21 ; decimal
	d6  db  -0x15 ; hexadecimal
	d7  db  -15h ; hexadeciaml
	d8  db  -0b00010101 ; binario
segment .bss
segment .text
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
	ret