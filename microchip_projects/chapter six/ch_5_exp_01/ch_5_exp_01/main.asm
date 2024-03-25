;1. Write  an AVR program to Using Branch Instruction Add Number 3 ten times  (3+3+3+3+..)

.INCLUDE "M32DEF.INC"  ; Include AVR ATmega32 definitions

LDI R16, 10            ; Load immediate value 10 into register R16
LDI R20, 0             ; Load immediate value 0 into register R20
LDI R21, 3             ; Load immediate value 3 into register R21

AGAIN:
    ADD R20, R21        ; Add the value in register R21 to the value in register R20 and						store the result in R20
    DEC R16             ; Decrement the value in register R16
    BRNE AGAIN          ; Branch to label AGAIN if the result of the decrement operation						 is not zero
                        ; (i.e., repeat the loop until R16 becomes zero)

OUT PORTB, R20         ; Output the value in register R20 to PORTB
