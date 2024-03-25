;;Write an AVR program to read PORT A and copy the received content on RAM location 0X100

.INCLUDE "M32DEF.INC"   ; Include AVR ATmega32 definitions

.EQU MYTEMP = 0X100     ; Define a symbolic name for RAM location 0x100

LDI R16, 0X00           ; Load immediate value 0x00 into register R16
OUT DDRA, R16           ; Set PORT A as input by writing 0x00 to the data direction									register	(DDRA)

LDI R16, 0XFF           ; Load immediate value 0xFF into register R16
OUT PORTA, R16          ; Activate internal pull-up resistors for PORT A by writing 0xFF							to the PORTA register

IN R16, PINA            ; Read the content of PORT A and store it in register R16

STS MYTEMP, R16         ; Store the content of register R16 into the RAM location defined by				MYTEMP (0x100)

HERE: RJMP HERE          ; Infinite loop (label HERE) to keep the program running										indefinitely
