segment .data
segment .bss
segment .text 
   global _main 
_main:
   jmp limpiar
   inicio:
      mov eax,-0xFF
      mov ebx,-0x128
      neg eax
      neg ebx
      jmp fin
      limpiar:
         sub eax,eax
   	  sub ebx,ebx
   	  sub ecx,ecx
   	  sub edx,edx
      jmp inicio
      fin:
   ret