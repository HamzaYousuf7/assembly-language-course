.model Small

.Stack 100h
.data
MSG1 db "Alpha$"
MSG2 db "Computer Science$"
MSG3 db "Hello wolrd$"

.code

main proc
mov cx, 4h

Print:
mov ax, @data
mov ds, ax
mov ah, 09h
mov dx, offset MSG1
int 21h

mov ah, 02h
mov dl, 0dh
Int 21h
mov ah, 02h
mov dl, 0ah
Int 21h
mov ax, @data
mov ds, ax
mov ah, 09h
mov dx, offset MSG2
int 21h

mov ah, 02h
mov dl, 0dh
Int 21h
mov ah, 02h
mov dl, 0ah
Int 21h
mov ax, @data
mov ds, ax
mov ah, 09h
mov dx, offset MSG3
int 21h

mov ah, 02h
mov dl, 0dh
Int 21h
mov ah, 02h
mov dl, 0ah
Int 21h
Loop Print

mov ah, 4ch
Int 21h

main endP
end