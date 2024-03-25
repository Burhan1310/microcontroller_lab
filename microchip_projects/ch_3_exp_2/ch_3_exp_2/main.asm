;Write  an Assembly code Add  1 to the content of RAM location 0X420

LDS R20, 0X420
INC R20
STS 0X420, R20 ; store the content of R20 into 0x420