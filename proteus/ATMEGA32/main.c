#include<avr/io.h>
#include <util/delay.h>
#define F_CPU 1000000UL
int main(void)
{
	unsigned char z;
	DDRB=0xff;
	for(z=0;z<=255;z++)
	{
		PORTB=z;
		_delay_ms(3000);
	}
	return 0;
}