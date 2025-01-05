
; Stepper Motor control program for 8086
name "stepper"
jmp start

datcw db 00000110b, 00000100b, 00000011b, 00000010b
datccw db 00000011b, 00000001b, 00000110b, 00000010b

start:
    mov bx, offset datcw
    mov si, 0
    mov cx, 0

next_step:
    in al, 7
    test al, 10000000b
    jz next_step

    mov al, [bx][si]
    out 7, al

    inc si
    cmp si, 4
    jb next_step
    mov si, 0

    inc cx
    cmp cx, 20h
    jb next_step

    mov cx, 0
    add bx, 4
    cmp bx, offset datccw
    jbe next_step

    mov bx, offset datcw
    jmp next_step
