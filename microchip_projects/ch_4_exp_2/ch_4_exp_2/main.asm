; Write  an AVR program to copy a block of 16 bytes of data from data memory  
;				locations starting at $130 to RAM locations starting at $60

LDI R16, 0x10      ; Load immediate value 16 into register R16 (loop counter)

LDI XL, 0X30     ; Load immediate value 0x30 into register XL (low byte of X register)
LDI XH, 0X01     ; Load immediate value 0x01 into register XH (high byte of X register)

LDI YL, 0X60     ; Load immediate value 0x60 into register YL (low byte of Y register)
LDI YH, 0X00     ; Load immediate value 0x00 into register YH (high byte of Y register)

L1:              ; Label L1 (start of loop)
    LD R20, X+   ; Load a byte from the data memory location pointed to by the X						register into register R20, and then increment the X pointer
    ST Y+, R20   ; Store the value of register R20 into the RAM location pointed to by					the Y register, and then increment the Y pointer
    DEC R16 				; Decrement the loop counter (register R16)
    BRNE L1      ; Branch to label L1 if the result of the decrement operation is not					zero (loop until R16 becomes zero)

