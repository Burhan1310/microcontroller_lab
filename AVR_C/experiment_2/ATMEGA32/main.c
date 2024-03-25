#include<avr/io.h> 
#include<util/delay.h>
#define F_CPU 1000000L
int main(void) 
{ 
DDRB=0xFF; 
unsigned char mynum[]="012AB"; //unsigned char mynum[]={'0','1','2','A','B}; 
unsigned char z; 
	while(1){ 
for(z=0;z<=4;z++){
	PORTB=mynum[z]; 
	_delay_ms(5000);
	} 
}
return 0;
}