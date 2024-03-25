#include<avr/io.h>
#include<util/delay.h>
#define F_CPU 1000000L
int main(void)
{
	DDRB = 0xFF;
	for(;;)
	{
		PORTB = 0x55;
		_delay_ms(1000);
		PORTB = 0xAA;
		_delay_ms(1000);
		}
		return 0;
	}