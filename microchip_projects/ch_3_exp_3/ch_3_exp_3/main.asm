;Write  an Assembly code for Subtract  5 from 0X300 and store the result in 0x320

LDI R16, 0X05 ; 05
LDS R17, 0X300
SUB R17, R16 ; 0X300-05
STS 0X320, R17