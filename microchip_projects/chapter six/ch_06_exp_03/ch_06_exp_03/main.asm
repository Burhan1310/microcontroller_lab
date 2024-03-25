; Write  an bit manipulation program to turn a led connected on PB2 pin to on  and off with 
; some random delay without disturbing rest of the pins

SBI DDRB, 2    ; Set bit 2 of the DDRB register to configure PB2 as an output pin

AGAIN:         ; Define a loop labeled AGAIN
    SBI PORTB, 2    ; Set bit 2 of the PORTB register to turn on the LED (digital pin						10)
    CBI PORTB, 2    ; Clear bit 2 of the PORTB register to turn off the LED (digital pin					10)
    RJMP AGAIN      ; Unconditional relative jump back to the beginning of the loop							AGAIN
