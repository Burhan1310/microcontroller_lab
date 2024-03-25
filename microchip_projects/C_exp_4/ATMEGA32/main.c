#include <avr/io.h>
#include<util/delay.h>
#define F_CPU 1000000L
int main(void)
{ 
DDRB=0xFF;
signed char mynum[7]={-3,-2,-1,0,+1,+2,+3};
unsigned char z;
while(1){
for(z=0;z<7;z++){
	PORTB=mynum[z];
	_delay_ms(1000);
	}
}
return 0;
}