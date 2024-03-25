; Write  an AVR program to copy value of $56 into memory locations $140  through $144
; in every location we need to store the value $56

LDI R16, 0x05   ; Load immediate value 0x05 into register R16
LDI R20, 0x56   ; Load immediate value 0x56 into register R20
LDI XH, 0x03    ; Load immediate value 0x40 into the high byte of register pair Y
LDI XL, 0x40    ; Load immediate value 0x01 into the low byte of register pair Y

K1: 
    ST X+, R20   ; Store the contents of register R20 into the memory location pointed to by Y and increment Y
    DEC R16      ; Decrement the value of register R16
    BRNE K1      ; Branch to label K1 if R16 is not zero