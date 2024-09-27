# Pasos para compilar

assembler:  nasm -f win64 -o prueba.o prueba.asm -l prueba.lst
link:  gcc -o prueba prueba.o
run:  prueba
debugger: x64dbg prueba

```shell
nasm -f win64 -o prueba.o prueba.asm -l prueba.lst
```

```shell
#usando el compilador de c
gcc -o prueba prueba.o 
#gcc -o prueba prueba.o == gcc -o prueba prueba.o -lkernel32 -lmsvcrt 

o 
#usando el linker
ld internet.o -o internet -lkernel32 -lmsvcrt 

# -lkernel32: biblioteca de la api de windows 
# -lmsvcrt : biblioteca estandar de c (printf)
```

## Direcciones de inicio:

.data -> 403010
.bss  -> 407030
.text -> 401550









