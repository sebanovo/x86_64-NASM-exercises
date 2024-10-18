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
	global _main 					
_main:
	jmp salto2
	salto2:
	SUB  RAX,RAX
	SUB  RBX,RBX
	SUB  RCX,RCX
	SUB  RDX,RDX
	XOR  R8,R8
	XOR  R9,R9
	XOR  R10,R10
	XOR  R11,R11
	XOR  R12,R12
	XOR  R13,R13
	XOR  R14,R14
	XOR  R15,R15

	mov eax,var4
	mov cl,[eax+1]
	mov ch,[eax+5]
	xor cl,ch
	and ch,cl
	not ecx
	neg cx
	mov rdx,var2
	mov rdx,[edx+1]
	jmp salto1
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx
	salto1:
	mov dx,[var3]
	ret
