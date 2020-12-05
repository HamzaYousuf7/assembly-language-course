.model small
.stack 100h
.data
fN db "Enter your Name:$"
fNUI db ?

LN db "Father Name:$"
LNUI db ?

rollNo db "Roll No:$"
rollNoUI db ?

uni db "Institute Name:$"
uniUI db ?

.code
start:

mov ax,@data
mov ds,ax

;fn output
lea dx,fN
mov ah,09h
int 21h

;fn input 
lea dx,fNUI
mov ah,3fh
int 21h

;now for last name 
lea dx,LN
mov ah,09h
int 21h

lea dx,LNUI
mov ah,3fh
int 21h


mov ah,4ch
int 21h

end start
