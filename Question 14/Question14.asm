.model small
.stack 100h
.data
var1 db "Hello$"
var2 db "World$"
var3 db "lol$"
.code
start:

mov ax,@data
mov ds,ax

mov cx,3

printLoop:
 ; out put string 
	lea dx,var1
	mov ah,09h
	int 21h
	
	;line feed 
	mov dl,0ah
	mov ah,2
	int 21h
	
	 ;out put string 2
	lea dx,var2
	mov ah,09h
	int 21h
	
	;line feed 
	mov dl,0ah
	mov ah,2
	
	;line feed 
	mov dl,0ah
	mov ah,2
	int 21h
	
	 ;out put string 2
	lea dx,var3
	mov ah,09h
	int 21h
	
	;line feed 
	mov dl,0ah
	mov ah,2
	
	

loop printLoop


mov ah,4ch
int 21h


end start
