; Write a program to send 55 and AA continuously onto portA
.INCLUDE "M32DEF.INC"   ;header file
LDI R16, 0XFF
OUT DDRA, R16
REPEAT:
LDI R16, 0X55
OUT PORTA, R16
COM R16
OUT PORTA, R16
RJMP REPEAT
