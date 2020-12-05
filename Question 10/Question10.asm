.model small
.stack 100h
.data
.code

Main proc
Mov cx,10
Mov dx , 57

L1:
Mov ah, 2
Int 21h
dec dx
Loop L1

mov ah, 4ch
int 21h       

Main endp
End main
