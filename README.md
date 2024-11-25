# Ejercicios - Assembler NASM

Repositorios de ejercicio de ensamblador

## Requisitos

- **Compilador C**: GCC para compilar y enlazar `(te recomiendo este compilador)` `->` [gcc](https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/8.1.0/threads-posix/seh/).
- **NASM**: Ensamblador para procesadores x86/x86_64 [nasm](https://www.nasm.us/pub/nasm/releasebuilds/2.16.03/win64/).

```bash
nasm -f win64 -o file.o file.asm -l file.lst
```

```shell
# c compiler
gcc -o prueba prueba.o 

# linker
ld internet.o -o internet -lkernel32 -lmsvcrt 
```

## Segmentos de la memoria

- **.data**  -> 403010
- **.rdata** -> 404000
- **.bss**   -> 407030
- **.text**  -> 401550
