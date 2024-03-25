;4.	Write an AVR program to create a delay of 66% duty cycle on bit 3 of PORTC

.INCLUDE "M32DEF.INC"  ; Include AVR ATmega32 definitions

SBI DDRC, 3            ; Set bit 3 of the DDRC register to configure PC3 (pin 3 of PORTC) as an output

HERE:                  ; Label HERE, indicating the start of the main loop
    SBI PORTC, 3       ; Set bit 3 of PORTC high to turn on the LED
    NOP                ; No operation (delay) - introduce a small delay
    NOP                ; No operation (delay) - introduce a small delay
    CBI PORTC, 3       ; Clear bit 3 of PORTC to turn off the LED
    NOP                ; No operation (delay) - introduce a small delay
    RJMP HERE          ; Unconditional relative jump back to the beginning of the main loop labeled HERE


