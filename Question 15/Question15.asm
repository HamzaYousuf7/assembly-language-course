.model small
.stack 100h
.data
.code
main proc

mov cx,5
mov bx,5

loop1:
	mov bx,cx ; a place holder for cx value 
	loop2: ; second loop
		mov dl,"*"
		mov ah,02h
		int 21h
	loop loop2
	
	mov cx,bx ; moving back the cx value  from temp bx
	
	mov dl,10; for line break
	mov ah,2h
	int 21h

loop loop1


mov ah,4ch
int 21h
	
main endp
end main
