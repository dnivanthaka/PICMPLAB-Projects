#include <xc.h>
//#include <stdio.h>
//#include <stdlib.h>
#include <stdint.h>
//#include <math.h>


#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

//bit data_read = 0, tmp;
//uint8_t data[5];

void init()
{
	// RB1 = 1 and RB2 = 0, RB7 = 1
	//TRISB = 0x81;
	//TRISE = 0x00;
	// Setting RE0 as high impedence
	//TRISA = 0x01;
	// Disabling A2D convertor
	ADCON1 = 0x06;

	//Setting PORTC as Outputs
	TRISC = 0x00;
	PORTC = 0x00;

	//Setting CCP1CON as PWM

	CCP1CONbits.CCP1M0 = 0;
	CCP1CONbits.CCP1M1 = 0;
	CCP1CONbits.CCP1M2 = 1;
	CCP1CONbits.CCP1M3 = 1;

	//Setting CCP2CON as PWM

	CCP2CONbits.CCP2M0 = 0;
	CCP2CONbits.CCP2M1 = 0;
	CCP2CONbits.CCP2M2 = 1;
	CCP2CONbits.CCP2M3 = 1;

	//Setting PWM Period, setting 126 as highest, 127 means full speed
	PR2 = 126;
	//Setting PWM Duty Cycle
	// Postscalar 1:1
	T2CON = 0x00;
	//Setting prescalar to 16, PWM at 2500Hz
	T2CONbits.T2CKPS0 = 1;
	T2CONbits.T2CKPS1 = 1;

	// Setting speed as off
	CCPR1L = 0x00;
	// Turning on TMR2
	T2CONbits.TMR2ON = 1;

	// Setting PORTB pin 1 as input
	//TRISB = 0x02;
	//PORTB = 0x00;

	__delay_ms(10);

	//OPTION_REGbits.T0CS = 0;
	//OPTION_REGbits.T0SE = 0;
	//OPTION_REGbits.PSA  = 0;

	//1:2 Ratio
	//OPTION_REGbits.PS0  = 0;
	//OPTION_REGbits.PS1  = 0;
	//OPTION_REGbits.PS2  = 1;


	//INTCONbits.GIE = 1;
}

void interrupt tc_int()
{
	if( TMR0IE && TMR0IF ){
		TMR0IF = 0;
		TMR0 = 0;

		//TX_poll('Y');
		return;
	}
}

uint8_t debounce_lo( uint8_t prt )
{
	uint8_t count = 0;

	if( !prt ){
		while( !prt && count < 10 ){
			__delay_ms(1);
			count++;
		}
		if( count == 10 )
			return 1;
	}
	return 0;
}

void set_speed(uint8_t sp)
{
	if( sp == 1 ){
		CCPR1L = 32;
	}else if( sp == 2 ){
		CCPR1L = 64;
	}else if( sp == 3 ){
		CCPR1L = 96;
	}else if( sp == 4 ){
		CCPR1L = 127;
	}
}

int main()
{
	//char *text = "Counting: ";
	uint8_t button_pressed = 0;

	init();
	
	//tea5767_tune(87.8);
	//tea5767_search();
	//tea5767_search();
	//tea5767_search();
	//tea5767_search();
	
	//tea5767_search();
	//tea5767_tune(98.9);
	//tea5767_search_up();
	//tea5767_search();
	//TRISE = 0x01;
	//TRISA = 0x01;
	//ADCON1 = 0x06;
	//RE0 = 1;
	//itoa(buff, 1234, 10);

	//__delay_ms(1000);
	//dht11_read();

	//TRISA = 0x01;
	//while( !RA0 );
	//PORTCbits.RC6 = 1;
	//CCPR1L = 64;

	while( 1 ){
	
		//__delay_ms(1000);
		//dht11_read();
		
		//data_read = 0;
		//TMR0 = 0;
		//__delay_us(200);
		//PORTAbits.RA0 = 0;
		//itoa(buff, TMR0, 10);
		//TX_printline(&buff);
		//__delay_ms(1000);
		
		//hd44780_newline();
		//hd44780_write( 0b00100001 );
		//hd44780_char( 0b10100101 );
		//hd44780_write( 223 );
		set_speed(1);
		__delay_ms(2000);
		set_speed(2);
		__delay_ms(2000);
		set_speed(3);
		__delay_ms(2000);
		set_speed(4);
		__delay_ms(2000);

		if( !button_pressed && debounce_lo( RB1 ) ){
			RB2 = 0x01;

			//tea5767_search();
			button_pressed = 1;
			//f = (float)tea5767_tuned_freq() / 10;
			//hd44780_printdecimal( f, 0 );
			//print_freq();
			//print_signal_level();
		}else{
			RB2 = 0x00;
			if(!debounce_lo( RB1 ))
				button_pressed = 0;
		}
		
		//__delay_ms(100);
	}
	
	return 0;
}