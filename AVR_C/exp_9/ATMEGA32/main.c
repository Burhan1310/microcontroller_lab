#include<avr/io.h>
#include<util/delay.h>
#define F_CPU 1000000L
int main(void)
{
	DDRA = 0x00;
	DDRB = 0xFF;
	unsigned char z;
	while(1)
	{
		z = PINA;
		z = z & 0x03;  //00000011
		switch (z)
		{
			case(0):
			{
				PORTB = '0';
				break;
			}
			case(1):
			{
				PORTB = '1';
				break;
			}
			case(2):
			{
				PORTB = '2';
				break;
			}
			case(3):
			{
				PORTB = '3';
				break;
			}
		}
	}
return 0;
}