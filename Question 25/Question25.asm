.model small
.stack 100h
.data
pattern db "0iiiiii$"

.code
main proc

mov ax,@data
mov ds,ax

lea dx,pattern
mov cx,4
printLoop:
	mov ah,09h
	int 21h

loop printLoop

mov dl,"0"
mov ah,2
int 21h

mov ah,4ch
int 21h
	
main endp
end main
