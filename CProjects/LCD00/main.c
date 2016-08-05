#include <xc.h>

#define _XTAL_FREQ 4000000 // 4MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = XT, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

#define lcd_data      PORTB
#define lcd_data_tris TRISB
#define lcd_en        RB4
#define lcd_rs        RB5
#define lcd_rw        RB6
#define lcd_busy      RB3

bit rs_flag = 0;

void hd44780_pulse();
void hd44780_write( unsigned char );
void hd44780_busy();
void hd44780_printstr( char *, int );
void hd44780_printchr( char, int );
void hd44780_printint( int, int );
void hd44780_newline();

void hd44780_pulse()
{
	lcd_en = 1;
	__delay_us(1);
	lcd_en = 0;
}

void hd44780_init()
{
	// Setting lcd_port as output
	lcd_data_tris = 0x00;
	lcd_data = 0x00;
	// Delay for more than 15ms 
	__delay_ms(20);
	lcd_data = 0b00000011;
	hd44780_pulse();
	__delay_ms(5);
	lcd_data = 0b00000011;
	hd44780_pulse();
	__delay_us(120);
	lcd_data = 0b00000011;
	hd44780_pulse();
	//__delay_ms(5);
	hd44780_busy();
	// Setting function 4bit
	lcd_data = 0b00000010;
	hd44780_pulse();
	//__delay_ms(5);
	hd44780_busy();
	// Data is now to be sent as 4bit

	hd44780_write( 0b00101000 );
	//hd44780_write( 0b00001111 );
	hd44780_write( 0b00001100 );
	hd44780_write( 0b00000001 );
	hd44780_write( 0b00000110 );
}

void hd44780_write( unsigned char bt )
{
	unsigned char tmp;

	tmp = bt & 0xF0;
	tmp = tmp >> 4;
	// Sending upper nibble first
	if(rs_flag == 1){
		tmp = tmp | 0x20;
	}
	lcd_data = tmp;
	//lcd_rs = 0;
	hd44780_pulse();
	// Sending low nibble
	tmp = bt & 0x0F;

	if(rs_flag == 1){
		tmp = tmp | 0x20;
	}

	lcd_data = tmp;
	//lcd_rs = 0;
	hd44780_pulse();

	// should check busy flag here
	//__delay_ms(20);
	hd44780_busy();
}

void hd44780_char( unsigned char bt )
{
	// Writing to data register, not instruction register
	lcd_rs = 1;
	rs_flag = 1;
	hd44780_write( bt );
	lcd_rs = 0;
	rs_flag = 0;
}

void hd44780_busy()
{
	lcd_rs = 0;
	rs_flag = 0;
	lcd_data_tris = 0x08;
	lcd_rw = 1;
	lcd_en = 1;

	while( lcd_busy == 1 );

	lcd_en = 0;
	lcd_rw = 0;

	lcd_data_tris = 0x00;
}

void hd44780_printstr( char *dta, int loc )
{
	// Placing cursor
	//hd44780_write( 0b10000001 );
	hd44780_write( 0x80 | loc );

	while( *dta != '\0' ){
		if( *dta != '\n' ){
			hd44780_char( *dta );
		}else{
			//hd44780_write( 0xC0 );
			hd44780_newline();
		}

		dta++;
	}
}

void hd44780_printchr( char dta, int loc )
{
	// Placing cursor
	hd44780_write( 0x80 | loc );

	hd44780_char( dta );
}

void hd44780_newline()
{
	hd44780_write( 0xC0 );
}

void hd44780_printint( int dta, int loc )
{
	char arr[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
	unsigned char u_count, h_count, t_count, o_count;

	// Placing cursor
	hd44780_write( 0x80 | loc );

	if( dta < 0 ){
		hd44780_char( '-' );
		dta = -dta;
	}

	u_count = dta / 1000;
	dta = dta % 1000;
	h_count = dta / 100;
	dta = dta % 100;
	t_count = dta / 10;
	dta = dta % 10;
	//o_count = dta / 1;

	//if(u_count > 0)
		hd44780_char( arr[u_count] );
	//if(h_count > 0)
		hd44780_char( arr[h_count] );
	//if(t_count > 0)
		hd44780_char( arr[t_count] );
	//hd44780_char( arr[o_count] );
	hd44780_char( arr[dta] );
}

void hd44780_clear()
{
	// Writing to instruction register
	hd44780_write( 0b00000001 );
}

int main(void)
{
	char *text = "Counting: ";
	char *text2 = "Text \nDisplay2";
	char *text3 = "H";
	int i;
	// Delay routines
	// _delay(n), __delay_us(n), __delay_ms(n)
	// uint8_t

	//TRISB = 0x00;
	hd44780_init();
	hd44780_printstr( text, 1 );
	hd44780_printstr( text3, 7 );
	hd44780_clear();
	hd44780_printchr( 'H', 7 );
	hd44780_printint( -2500, 5 );
	hd44780_clear();
	hd44780_printstr( text, 0 );
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
	while(1){
		for(i=0;i<5000;i++){
			hd44780_printint( i, 11 );
			__delay_ms(100);
		}
	}

	return 0;
}