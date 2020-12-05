.model small
.stack 100h
.data
var1 db ?
count1 dw ?
count2 dw ?
.code
Start:
mov cx,7
mov count2,1
mov dl,"*"
mov var1,dl
L1:
mov count1,cx
mov cx,count2
L2:
mov ah,2
int 21h
Loop L2
add count2,1
mov dl,10
int 21h
mov dl,var1
mov cx,count1
Loop L1
mov ah,4ch
int 21h
end Start

