#include <avr/io.h>
#include <util/delay.h>
#define F_CPU 1000000UL 
int main(void) {
 DDRA=0xFF; //0xFF= 11111111
 PORTA= 0x55; //PORTA= 0x55= 01010101
 while(1)
{
 PORTA=PORTA^0xFF; // PORTA= 0xAA= 10101010
 _delay_ms(1000); 
}
 return 0;
}
