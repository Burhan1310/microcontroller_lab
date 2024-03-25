#include<avr/io.h>
int main(void)
{
	DDRB=0xFF;
	unsigned char num[]="012AB"; //unsigned char num[]={'0', '1', '2',....}
	unsigned char z;
	for(z=0;z<=4;z++)
	PORTB=num[z];
	while(1);
	return 0;
}

