#include <avr/io.h>
#include <util/delay.h>
#define F_CPU 1000000UL 
int main(void)
{
	DDRB=0xFF;
	unsigned char num[]="012"; //unsigned char num[]={'0', '1', '2',....}
	unsigned char z;
	for(z=0;z<=4;z++)
	{
		PORTB=num[z];
		_delay_ms(2000);
		}
	
	while(1);
	return 0;
}