; WINDOWS API
;programme fenetre windows en 64 bits
global Main
extern ExitProcess,MessageBoxA,GetLastError,wsprintfA     ; fonction API windows
MB_OK equ 000h
MB_OKCANCEL equ 001h
MB_ICONERROR equ 010h
MB_ICONINFORMATION  equ 040h
;==============================================
;données initialisées
;==============================================
section .data
szTitre:  db 'Win64', 0
szTitreErreur:  db 'Win64', 0
szMsg:    db 'Hola mundo', 0
szMsg1    db "Appel ok",0
szMsgErreur db "Error  N° %d",0
;==============================================
; données non initialisées
;==============================================
section .bss
szZoneRep   resb 80
section .text
Main:
   sub rsp, 28h  
   mov rcx, 0       ; handle  fenêtre
   lea rdx,[szMsg]    ; adresse du message
   lea r8,[szTitre]   ; adresse du titre de la fenêtre
   mov r9, MB_OK|MB_ICONINFORMATION       ;  type du message : OK
   call MessageBoxA
   call appel
   mov  rcx,rax     ; code retour avec le code retour de MessageBoxA
   call ExitProcess  ; fonction de fin du programme
;=================================================================
; verification lors de l'appel
;=================================================================
appel:
   sub rsp,8h
   sub rsp,20h
   mov rcx, 0       ; handle  fenêtre
   mov rdx,szMsg1   ; adresse du message
   mov r8,szTitre   ; adresse du titre de la fenêtre
   mov r9, -1       ;  forçage d'une erreur
   call MessageBoxA
   cmp rax,0
   jne .fin
   call afferreur
.fin:
    add rsp,28h
    ret
;=================================================================
; affichage du message d'erreur
;=================================================================
afferreur:
   sub rsp,8h
   sub rsp,20h
   call GetLastError   ;récupèration du code erreur dans le registre rax
   mov rcx,szZoneRep   ; zone de retour du formatage
   mov rdx,szMsgErreur ; libellé du message
   mov r8,rax       ; code erreur
   call wsprintfA   ; on devrait tester aussi le code retour
   mov rcx, 0       ; handle  fenêtre
   mov rdx,szZoneRep   ; adresse du message
   mov r8,szTitreErreur   ; adresse du titre de la fenêtre
   mov r9, MB_OKCANCEL|MB_ICONERROR       ;  type du message : Erreur
   call MessageBoxA
.fin:
   add rsp,28h
   ret