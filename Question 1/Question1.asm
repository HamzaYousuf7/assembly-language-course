.model small
.stack 100h
.data
.code

main proc
mov bl,50 ;50 represent 2 in ascii code
mov cl,3
add bl,cl ;adding 3 which will give us 5
mov dl,bl ; mov bl value so we can print
mov ah,2 ;printing 
int 21h
mov ah,4ch
int 21h
main endp
end main

