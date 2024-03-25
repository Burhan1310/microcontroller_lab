#include<avr/io.h>

int main(void)
{
	DDRA=0xFF;
	PORTA=0x55;
	while(1)
	{
		PORTA=PORTA^0xFF;
	}
	return 0;
}
