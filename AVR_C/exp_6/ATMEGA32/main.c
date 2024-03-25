//Write an AVR C program to monitor bit PC1. If it is high, send 55h to port A; otherwise, send AA to PORT B

#include<avr/io.h> 
int main(void) 
{ 
DDRA = 0xff; 
DDRB = 0xff; 
DDRC = 0b00000000; 
PORTC = 0b00000010; 
while(1) 
 { 
if(PINC & 0b00000010) 
PORTA = 0x55; 
else 
PORTB = 0xAA; 
 } 
}