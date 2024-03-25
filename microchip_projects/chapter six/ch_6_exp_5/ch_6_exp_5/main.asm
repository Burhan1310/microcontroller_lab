;5.	Door alarm switch is connected to PB3 when door is open PB3 receives 0. At this condition turn on the buzzer connected to PC5 by sending High to Low signal. Write an AVR program for above condition.

CBI DDRB, 3         ; Clear bit 3 of the DDRB register to configure PB3 (pin 3 of PORTB)						as an input

SBI DDRC, 5         ; Set bit 5 of the DDRC register to configure PC5 (pin 5 of PORTC)							as an output

HERE:               ; Label HERE, indicating the start of a loop
    SBIC PINB, 3    ; Skip next instruction if pin 3 of PORTB is clear (0)
    RJMP HERE       ; If pin 3 of PORTB is clear, jump back to HERE (continue looping)

    SBI PORTC, 5    ; Set bit 5 of the PORTC register to drive PC5 (pin 5 of PORTC) high						(1)
    CBI PORTC, 5    ; Clear bit 5 of the PORTC register to drive PC5 (pin 5 of PORTC)						low (0)

    RJMP HERE       ; Unconditional relative jump back to HERE (continue looping)

