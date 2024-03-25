;3.	Write an AVR program to determine if RAM location 0x200 contains the value of 0. If so, put 0x55 into it

.INCLUDE "M32DEF.INC"   ; Include AVR ATmega32 definitions

LDS R30, 0X200          ; Load the value from memory address 0x200 into register R30

CPI R30, 0              ; Compare the value in register R30 with immediate value 0
BRNE NEXT               ; Branch to NEXT if R30 is not equal to 0

LDI R30, 0X55           ; Load immediate value 0x55 into register R30
STS 0X200, R30          ; Store the value of R30 into memory address 0x200

NEXT: RJMP NEXT         ; Unconditional relative jump to label NEXT, creating an									infinite loop
