.model small
.stack 100h
.data
.code

main proc

mov ah,1 ;taking the UI
int 21h

mov cl,32
mov bl,al
add cl, bl


mov dl,cl

mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main