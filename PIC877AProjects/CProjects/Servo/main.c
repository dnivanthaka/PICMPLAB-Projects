#include <xc.h>
//#include <stdio.h>
//#include <stdlib.h>
#include <stdint.h>
//#include <math.h>


#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

//bit data_read = 0, tmp;
//uint8_t data[5];

bit update_state = 0;
bit update_duty = 0;

int ticks = 0;

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

	TRISB = 0x00;
	TRISBbits.TRISB1 = 1;
	PORTB = 0x00;

	//Setting CCP1CON as PWM

	//CCP1CONbits.CCP1M0 = 0;
	//CCP1CONbits.CCP1M1 = 0;
	//CCP1CONbits.CCP1M2 = 1;
	//CCP1CONbits.CCP1M3 = 1;

	//Setting CCP2CON as PWM

	//CCP2CONbits.CCP2M0 = 0;
	//CCP2CONbits.CCP2M1 = 0;
	//CCP2CONbits.CCP2M2 = 1;
	//CCP2CONbits.CCP2M3 = 1;

	//Setting PWM Period, setting 255 as highest
	//PR2 = 0xFF;
	//Setting PWM Duty Cycle
	// Postscalar 1:1
	//T2CON = 0x00;
	//Setting prescalar to 1, PWM at ~20KHz
	//T2CONbits.T2CKPS0 = 0;
	//T2CONbits.T2CKPS1 = 0;

	// Setting speed as off
	//CCPR1L = 0x00;
	// Turning on TMR2
	//T2CONbits.TMR2ON = 1;

	// Setting PORTB pin 1 as input
	//TRISB = 0x02;
	//PORTB = 0x00;

	//__delay_ms(10);

	OPTION_REGbits.T0CS = 0;
	OPTION_REGbits.T0SE = 0;
	OPTION_REGbits.PSA  = 0;

	//1:2 Ratio TMR0
	OPTION_REGbits.PS0  = 0;
	OPTION_REGbits.PS1  = 0;
	OPTION_REGbits.PS2  = 0;

	INTCONbits.TMR0IE = 1;
	//INTCONbits.GIE = 1;


	//Want to have an interrupt every 20ms
	//With a 1:2 TMR0 increments every 400ns
	//Page 12 of http://www.gooligum.com.au/tutorials/midrange/PIC_Mid_A_6.pdf
	//States that writing to TMR0 takes 2 cycles, ie total 4 instruction cycles, 800ns
	//TMR0 overflows at 800 * 256 = 204800ns = 204us
	//with a variable set to count upto 100 we can get 204 * 100 = 20400us = ~20ms
}

void interrupt isr()
{
	if( TMR0IE && TMR0IF ){
		TMR0IF = 0;
		TMR0 = 0;
		update_duty = 1;

		++ticks;

		//update_state = 1;

		if( ticks == 100 ){
			update_state = 1;
			ticks = 0;
		}

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

void delay_microsec( int us )
{
	int i;

	for(i=0;i<us;i++){
		__delay_us(1);
	}
}

void set_speed(uint8_t sp)
{
	
}

int main()
{
	//char *text = "Counting: ";
	uint8_t button_pressed = 0;

	//int angles[] = {500, 1000, 1500, 2000};
	int delay = 1000;
	uint8_t step_angle = 10; // 10Steps approx 1 Deg
	int increment = 1;
	int i = 0;

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
	RC2 = 0;
	RB2 = 0;

	// Enabling interrupts
	ei();

	TMR0 = 0;

	while( 1 ){
	
		//__delay_ms(1000);
		//dht11_read();
		
		if( !button_pressed && debounce_lo( RB1 ) ){
		//if( !button_pressed && RB1 ){
			RB2 = 0x01;

			//tea5767_search();
			button_pressed = 1;
			//f = (float)tea5767_tuned_freq() / 10;
			//hd44780_printdecimal( f, 0 );
			//print_freq();
			//print_signal_level();
			i++;
			if( i > 3 ){
				i = 0;
			}
		}else{
			RB2 = 0x00;
			if(!debounce_lo( RB1 ))
			//if(!RB1)
				button_pressed = 0;
		}
		
		//__delay_ms(18);

		//i = 2;

		if( update_state ){
			//RB2 = 1;
			//di();
			
			RC2 = 1;
			// 1.5ms, We are centering
			//__delay_us(2000);
			//__delay_us(delay);
			//delay_microsec( 2000 );
			//delay_microsec( delay );
			//for(i=0;i<5;i++){
				//__delay_us(100);
			//}
			if(i == 0){
				__delay_us(500);
			}else if( i == 1 ){
				__delay_us(1000);
			}else if( i == 2 ){
				__delay_us(1500);
			}else if( i == 3 ){
				__delay_us(2000);
			}
			RC2 = 0;

			//delay = delay + (increment * step_angle);

			/*
			if( delay > 2000 ){
				delay = 1999;
				increment = -1;
			}else if( delay < 900 ){  
				delay = 901;
				increment = 1;
			}*/
			//if( delay > 2000 ){
				//delay = 1000;
			//}

			update_state = 0;

		}else{
			//RB2 = 0;
		}
	}
	
	return 0;
}