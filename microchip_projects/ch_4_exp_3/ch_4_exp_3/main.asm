; Write  an AVR program to Data Transfer from ROM to RAM with Address 0X140  onwards

.ORG 0              ; Set the origin (start address) of the program to 0

.INCLUDE "M32DEF.INC"  ; Include AVR ATmega32 definitions

LDI ZH, HIGH(MYDATA<<1)  ; Load the high byte of the address of MYDATA shifted left by 1							bit into register ZH
LDI ZL, LOW(MYDATA<<1)   ; Load the low byte of the address of MYDATA shifted left by 1								bit into register ZL

LDI XH, 0X01         ; Load immediate value 0x01 into register XH (high byte of X								register)
LDI XL, 0X40         ; Load immediate value 0x40 into register XL (low byte of X								register)

L1:                  ; Label L1 (start of loop)
    LPM R20, Z+      ; Load a byte from program memory (FLASH) pointed to by Z register						into register R20, and then increment Z pointer
    CPI R20, 0       ; Compare the value in register R20 with immediate value 0
    BREQ HERE        ; Branch to HERE if R20 is equal to 0 (end of string)
    ST X+, R20       ; Store the value of register R20 into the RAM location pointed to						by the X register, and then increment the X pointer
    RJMP L1         ; Unconditional relative jump back to the beginning of the loop L1

HERE:                ; Label HERE (end of string)
    RJMP HERE       ; Infinite loop to keep the program running
	MYDATA: .DB "THE WORLD PEACE",0