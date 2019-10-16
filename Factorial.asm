.model small

.data
n db 5

.code
mov ax, @data
mov ds, ax 
mov dl, n

back: 
    push dx
    dec dl
    jnz back
    
mov al, 01h

back1: 
    pop dx
    mul dl
    cmp dl, n
    jne back1
    
; result is in ax (al)

mov ah, 4ch
int 21h
