.ORG 0
.INCLUDE"M32DEF.INC"
CBI DDRB,3
SBI PORTC,5

L1:
CBI PINB,3
NOP
SBI PORTC,5
CBI PORTC,5
NOP
4RJMP L1


