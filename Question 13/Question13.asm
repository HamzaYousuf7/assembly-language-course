.model small
.stack 100h
.data
.code
start:

mov cx,25;65 to 90 
mov dx,65;65 For CAP A

printLoop:
	mov ah,2
	int 21h
	inc dx
loop printLoop

mov ah,4ch
int 21h


end start
