segment .data
segment .bss
segment .text 
   global _main 
_main:
   jmp limpiar
   inicio:
   mov eax,0x11
   mov ebx,0x22
   xor eax,ebx
   jmp fin
   limpiar:
   sub eax,0b0010_1111
	sub ebx,25
	sub ecx,-0b0000_0001
	add ecx,+0b0000_0001
   jmp inicio
   fin:
   ret