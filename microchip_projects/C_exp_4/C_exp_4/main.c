//Write an AVR C program to send value -3 to +3 to port B
#include <avr/io.h>
int main(void)
{
	DDRB=0xFF;
	signed char num[7] = {-3,-2,-1,0,1,2,3};
		signed char z;
	for (z=0;z<7;z++)
	PORTB = num[z];
	while (1);
	return 0;
}

