#include "hd44780.h"

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

void hd44780_printstr( char *dta, unsigned char loc )
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

void hd44780_printchr( char dta, unsigned char loc )
{
	// Placing cursor
	hd44780_write( 0x80 | loc );

	hd44780_char( dta );
}

void hd44780_newline()
{
	hd44780_write( 0xC0 );
}
/*
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
*/

void hd44780_printint( int dta, unsigned char loc )
{

	// Placing cursor
	//hd44780_write( 0x80 | loc );

	char buff[5];

	sprintf(buff, "%d", dta);
	//hd44780_printint( d, loc+5 );
	hd44780_printstr( &buff, loc );
	
}


void hd44780_printdecimal( int i, int d, unsigned char loc )
{
	char buff[10];
	//hd44780_printint( i, loc );
	//hd44780_char('.');

	if(d < 0){
		d = -d;
	}

	sprintf(buff, "%d.%d", i, d);
	//hd44780_printint( d, loc+5 );
	hd44780_printstr( &buff, loc );
}

void hd44780_clear()
{
	// Writing to instruction register
	hd44780_write( 0b00000001 );
}

void hd44780_block_erase( unsigned char start_loc, unsigned char length )
{
	int i;

	// Placing cursor
	for(i=0;i<length;i++){
		hd44780_write( 0x80 | (start_loc+i) );

		hd44780_char( ' ' );
	}
}

void hd44780_prgress( unsigned char success )
{

}