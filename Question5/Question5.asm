.model small
.stack 100h
.code

main proc
mov ah,02h ;Display a character
mov cx,100 ;Number of times loop will execute
mov dl,'*' ;Character to be printed

print: ;loop starts from here
int 21h ;Loop body
Loop print ;executes the For loop

mov ah,4ch ;DOS exit
int 21h

main endp
end main