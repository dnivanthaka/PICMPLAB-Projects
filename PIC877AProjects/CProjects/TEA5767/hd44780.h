#ifndef __HD44780__
#define __HD44780__

#include <xc.h>
#include <stdio.h>
#include <stdlib.h>

#define _XTAL_FREQ 20000000 // 20MHz Clock

#define lcd_data      PORTA
#define lcd_data_tris TRISA
#define lcd_en        RE0
#define lcd_rs        RE2
#define lcd_rw        RE1
#define lcd_busy      RA3

bit rs_flag = 0;


void hd44780_pulse(void);
void hd44780_init(void);
void hd44780_clear(void);
void hd44780_write( unsigned char );
void hd44780_char( unsigned char );
void hd44780_busy(void);
void hd44780_printstr( char *, unsigned char );
void hd44780_printchr( char, unsigned char );
void hd44780_printint( int, unsigned char );
void hd44780_newline(void);
void hd44780_printdecimal( int, int, unsigned char );
//void hd44780_printdecimal( float, unsigned char );
void hd44780_block_erase( unsigned char, unsigned char );

#endif