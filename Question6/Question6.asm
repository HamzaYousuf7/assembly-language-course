.model small
.stack 100h
.data
.code

main proc
; ACSII Characters ranges from 0-255
mov cx,256 ; 256 times display
mov ah,02h ; set output function
mov dl,0 ; initialize from 0

next:
int 21h ;print ASCII character
inc dl ;increment DL to next ASCII character
loop next

;return to DOS
mov ah,4ch ;exit program with return code
int 21h ;DOS exit

main endp
end main