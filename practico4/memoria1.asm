segment .data
	;aqui se declaran variables inicializadas
	var1	DB	233		;entero sin signo a nivel de byte
	var2	DB	+77		;entero con signo a nivel de byte
	var3	DB  -91		;entero con signo a nivel de byte (negativo)
	;----------------------------------------------------
	var4	DW	233		;entero sin signo a nivel de word
	var5	DW	+77		;entero con signo a nivel de word
	var6	DW  -91		;entero con signo a nivel de word (negativo)
	;----------------------------------------------------
	var7	DD	233		;entero sin signo a nivel de Double word
	var8	DD	+77		;entero con signo a nivel de Double word
	var9	DD  -91		;entero con signo a nivel de Double word (negativo)
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
	MOV R15,var1
	MOV R15,[R15]
	MOV R14,var2
	MOV R13B,[R14+2]
	MOV R13W,[R14+2]
	MOV R13D,[R14+2]
	MOV R13,[R14+2]
	MOV EAX,[var9]
	NOT EAX
	NOT EAX
	AND EAX,EAX
	NEG EAX
	INC (EAX)
	DEC (EAX)
	OR EAX,EAX
	ret