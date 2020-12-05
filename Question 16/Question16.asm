.model small
.stack 100h
.data
.code
main proc

mov cx,5
mov dl,49 ; assci that is 1

loop1:
	mov ah,02h
    int 21h

    inc dl; increment two time ex 1 become 3. 3 become 5.. etc
    inc dl

loop loop1


mov ah,4ch
int 21h
	
main endp
end main
