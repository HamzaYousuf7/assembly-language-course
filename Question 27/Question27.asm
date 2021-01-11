.model small
.stack 100h
.data
.code

start:

mov ah,01h ;taking user input

takeInput: ;
int 21h
cmp al,'H';checking
jne takeInput; if not equal go to takeInput

mov dl,al
mov ah,02h
int 21h


mov ah,4ch
int 21h

end start