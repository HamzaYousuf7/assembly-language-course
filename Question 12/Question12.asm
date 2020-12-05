.model small
.stack 100h
.data
.code
start:

mov cx,100
mov dx,65

printLoop:
	mov ah,2
	int 21h
	
loop printLoop

mov ah,4ch
int 21h


end start
