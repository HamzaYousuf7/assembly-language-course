.model small
.stack 100h
.data

.code
main proc
;for A-Z
mov cx,26
mov dx,65

printLoop:
	mov ah,02
	int 21h
	
	inc dx
loop printLoop

;line feed
mov dl,0ah
mov ah,2
int 21h

; for z to a
mov cx,26
mov dx,122
printLoop2:
	mov ah,2
	int 21h
	
	dec dx
	
loop printLoop2	
mov ah,4ch
int 21h
	
main endp
end main
