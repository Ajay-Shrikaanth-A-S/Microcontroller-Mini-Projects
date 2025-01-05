
; LED Blinking program for 8051
ORG 0000H

START:
    SETB P1.0          ; Turn ON LED connected to P1.0
    ACALL DELAY        ; Call delay subroutine
    CLR P1.0           ; Turn OFF LED
    ACALL DELAY        ; Call delay subroutine
    SJMP START         ; Repeat loop

DELAY:
    MOV R0, #255
    MOV R1, #255
    MOV R2, #255

OUTER_LOOP:
    MOV R1, #255

MID_LOOP:
    MOV R2, #255

INNER_LOOP:
    DJNZ R2, INNER_LOOP
    DJNZ R1, MID_LOOP
    DJNZ R0, OUTER_LOOP

    RET

END
