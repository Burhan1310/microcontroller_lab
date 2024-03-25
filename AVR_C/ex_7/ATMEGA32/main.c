//Write an AVR C program to get the status of PB5 and send it to bit 7 of port C continuously.

#include<avr/io.h>
int main()
{
	DDRB = DDRB&~(1<<5);  //1=00000001,00100000(shifted),11011111(after negation)
	DDRC=DDRC|(1<<7); //1=00000001,10000000(shifted)
	while(1)
		{
			if(PINB & (1<<5))
				PORTC=PORTC|(1<<7);
			else
			{
				PORTC=PORTC&~(1<<7);
				}
		}
		return 0;
	}