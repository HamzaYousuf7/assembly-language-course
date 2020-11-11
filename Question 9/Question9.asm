model small
.stack 100h
.code

Main proc

mov ah, 1
int 21h
mov bl, al

mov ah, 1
int 21h

xchg al, bl

mov ah,02
mov dl,al
int 21h

mov ah,02
mov dl,bl
int 21h

Mov ah, 4ch
Int 21h

Main endp
End main
