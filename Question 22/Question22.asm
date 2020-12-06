.model small
.stack 100h
.data

.code
main proc

mov cx,10
mov dx,48

printLoop:
	mov ah,02
	int 21h
	
	inc dx
loop printLoop

mov ah,4ch
int 21h
	
main endp
end main
