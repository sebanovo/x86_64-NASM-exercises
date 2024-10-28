segment .data	
    PF   DQ   +0B0.00000001011111111100000011111100000111110	
    NOM  DQ   -0B0.00000001011111111100000011111100000111110	
CICLO  DW +0B_0000_0000_0000_1111	
    A   DD   -0B_0111_1111  	
    B   DD   -0B_0000_0001	
    C   DD   -1   	
    D   DW   +0B0111_1111_1111_1111	
segment .bss	
    C1  RESD 1	
    C2  RESD 1	
segment .text 	
    global main 	
main:	
    JMP MIXOR	
    VOLVER:	
    JO VERDAD	
    JS MEDIO1	
    JNZ MAYOR 	
    JZ FIN_OK	
    JMP FIN_OK	
    INICIO_0:	
    ADD AL,AH	
    ADD BL,BH	
    CMP DL,CL	
    JS FALSO	
    JO VERDAD	
    JNZ MEDIO1	
    INICIO1:	
    JS MEDIO2	
    JNS FALSO	
    INICIO2:	
    MOV AH,[CICLO+1]	
    FOR1:	
    CMP AL,0B0111_1111	
    JS VERDAD 	
    JNS FALSO 	
    VERDAD:	
    @REPEAT1:	
    mov AX,[C]	
    add AX,1 	
    JO @REPEAT1	
    JNZ VERDAD	
    JS Fin_IF	
    JZ ULTIMO 	
    JMP Fin_IF  	
    FALSO: 	
    MOV EAX,EBX   	
    MOV BX, [CICLO] 	
    MOV CX, [D]	
    @REPEAT2:	
    MOV DX,[D]  	
    ADD DX,1 	
    JNO @REPEAT2	
    JZ VERDAD	
    JO FINEXA	
    Fin_IF:	
    SUB DX,5	
    JO FOR1   	
    JMP FIN	
    MEDIO2:	
    MOV BX,[D] 	
    DEC BX	
    MOV AL,[A]	
    ADD AL,[B]	
    JO MENOR	
    JNO MAYOR	
    MENOR:	
    MOV AX, 7FH 	
    MOV CL, 0B0001_0101 	
    MAYOR:	
    MOV   AL,[NOM]	
    MOV   DL,[B]  	
    NEG   DL	
    XOR   DL,[NOM+0FH]	
    SUB   AL,AH	
    JMP INICIO2	
    MEDIO1:	
    MOV DL,[A]	
    MOV AL,[B]	
    NEG AL	
    ADD AL,[B]	
    JO  MENOR	
    JZ  FALSO	
    JNO VERDAD	
    JS  MAYOR	
    JMP MEDIO1	
    FIN:	
    JMP VERDAD	
    FIN_OK:	
    MOV ECX,NOM+0AH	
    MOV AL,[ECX-0BH]	
    MOV CL,[ECX-0CH]	
    MOV DL,[NOM+1]	
    SUB AL,AH	
    JO VERDAD	
    JZ INICIO1	
    JS INICIO_0	
    JNS INICIO2	
    ULTIMO:	
    MOV AX,CX	
    MOV CX,BX	
    MOV RDX,PF	
    CICLOF:	
    MOV EAX,[PF+0B011]	
    XOR CX,BX	
    JS CICLOF	
    JO MIXOR	
    JZ MEDIO1	
    MIXOR:	
    XOR rax,rax	
    SUB rbx,rbx	
    XOR rcx,rcx	
    SUB rdx,rdx	
    XOR R8,R8	
    XOR R9,R9	
    XOR R10,R10	
    XOR R11,R11	
    XOR R12,R12	
    XOR R13,R13	
    XOR R14,R14	
    XOR R15,R15	
    MOV RAX,[PF+1]	
    MOV DWORD [C1],EAX	
    MOV DWORD [C2],EAX	
    MOV RBX,[C1]	
    XOR AX,BX	 
    JO ULTIMO	
    JNZ FALSO	
    JS VERDAD	
    JMP VOLVER	
    FINEXA:	 
RET