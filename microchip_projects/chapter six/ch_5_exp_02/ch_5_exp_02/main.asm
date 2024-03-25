;2.	Write an AVR program to load the PORTB register with the value 0x55 and add complement Port B 700 times

.INCLUDE "M32DEF.INC"  ; Include AVR ATmega32 definitions

.ORG 0                ; Set the origin (start address) of the program to 0

LDI R16, 0x55        ; Load immediate value 0x55 into register R16
OUT PORTB, R16       ; Output the value of R16 to PORTB

LDI R20, 10          ; Load immediate value 10 into register R20 (outer loop counter)
LOP_1:               ; Label for the outer loop
    LDI R21, 70     ; Load immediate value 70 into register R21 (inner loop counter)
LOP_2:               ; Label for the inner loop
    COM R16          ; Complement (invert) the value in register R16
    OUT PORTB, R16   ; Output the complemented value of R16 to PORTB
    DEC R21          ; Decrement the inner loop counter
    BRNE LOP_2       ; Branch to LOP_2 if the inner loop counter is not zero
    DEC R20          ; Decrement the outer loop counter
    BRNE LOP_1       ; Branch to LOP_1 if the outer loop counter is not zero
