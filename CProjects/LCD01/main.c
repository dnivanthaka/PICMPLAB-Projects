#include <xc.h>
#include <stdio.h>
#include "hd44780.h"

#pragma config BOREN = ON, CPD = OFF, FOSC = XT, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

bit debounce_read( unsigned char pin )
{
	char count = 0;

	while( pin == 1 && count < 10 ){
		__delay_ms(1);
		count++;
	}


	return (count == 10) ? 1 : 0;
}

void init()
{
	// Turning off comparators
	CMCON = 0x07;
	//TRISA = 1 << RA0;
	TRISA = 0b00000001;

	hd44780_init();
}

int main(void)
{
	char *text = "Counting: ";
	char *text2 = "Text \nDisplay2";
	char *text3 = "H";
	int i;
	char buff[25];
	// Delay routines
	// _delay(n), __delay_us(n), __delay_ms(n)
	// uint8_t

	//TRISB = 0x00;
	// Turning off comparators
	//CMCON = 0x07;
	//TRISA = 1<<RA0;
	//TRISA = (1<<2);
	//PORTA = 0x00;
	init();
	//hd44780_init();
	hd44780_printstr( text, 1 );
	hd44780_printstr( text3, 7 );
	hd44780_clear();
	hd44780_printchr( 'H', 7 );
	hd44780_printint( -2500, 5 );
	hd44780_clear();
	//hd44780_printstr( text, 0 );
	sprintf(buff, "Counter :%d", 1);
	hd44780_printstr( &buff, 0 );
	//hd44780_println( text2, 0 );
	//hd44780_char( 'I' );
	//hd44780_char( 't' );
	//hd44780_char( ' ' );
	//hd44780_char( 'W' );
	//hd44780_char( 'o' );
	//hd44780_char( 'r' );
	//hd44780_char( 'k' );
	//hd44780_char( 's' );
	//hd44780_char( '!' );
	//hd44780_char( '!' );
	//hd44780_char( '!' );
	//lcd_rs = 1;
	//hd44780_write( 0b01001000 );
	//lcd_rs = 0;
	
	//while(1){
		//PORTB = 0b00000001;
		//delay();
		//PORTB = 0b00000000;
		//delay();
		//delay();
	//}
	//hd44780_newline();
	while(1){
		for(i=0;i<5000;i++){
	
			//hd44780_printint( i, 0x40 );
			//PORTAbits.RA0 = 1;
			//PORTAbits.RA0
			hd44780_printdecimal( i,  debounce_read( PORTAbits.RA0 ), 0x40 );
			__delay_ms(100);

			//RA1 = 0x01;
			//__delay_ms(100);
			//RA1 = 0x00;
			//__delay_ms(900);
			if( debounce_read( PORTAbits.RA0 ) == 1 ){
				RA1 = 0x01;
			}else{
				RA1 = 0x00;
			}
			//RA1 = 0x01;
		}

		hd44780_block_erase( 0x40, 6 );
	}

	return 0;
}