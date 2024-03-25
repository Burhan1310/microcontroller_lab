#include<avr/io.h>
#include<util/delay.h>
#define F_CPU 1000000UL
int main(void)
{
unsigned char z;
	DDRB=0xff;
	for(z=0;z<200;z++)
	{
		PORTB ^=0xFF;  //Toggle all bits of portB
		_delay_ms(1000);
	}
return 0;
}