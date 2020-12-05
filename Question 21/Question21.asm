.model small
.stack 100h
.data

.code
main proc

mov cx,26
mov dx,90

printLoop:
	mov ah,02
	int 21h
	
	dec dx
loop printLoop

mov ah,4ch
int 21h
	
main endp
end main
