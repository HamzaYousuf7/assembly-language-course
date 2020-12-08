.model small
.stack 100h
.data
str1 db '----- Prime Number Checker -----$'
str2 db 'Enter Number 0-9: $'
strp db ' Is a prime Number.$'
strnp db ' Is Not a Prime Number.$'

.code
main proc

mov ax, @data
mov ds, ax

lea dx, str1  
mov ah, 9  ;print str1
int 21h         

start:
mov dl, 10
mov ah, 2  ;line feed
int 21h
lea dx, str2
mov ah, 9  ;print str1
int 21h

mov ah, 1
int 21h   ;input number

cmp al, 50
je prime
cmp al, 51
je prime
cmp al, 53
je prime
cmp al, 55
je prime
cmp al, 48
je exit

lea dx, strnp  ; run if not prime
mov ah, 9
int 21h
jmp start  ;go to start: again

prime:
lea dx, strp  ;will run if prime
mov ah, 9
int 21h
jmp start ;go to start: again

exit:  ; when 0 is pressed exit will be exuceted
mov ah, 4ch
int 21h
Main endp
End main
