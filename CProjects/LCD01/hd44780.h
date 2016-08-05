#ifndef __HD44780__
#define __HD44780__

#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 4000000 // 4MHz Clock

#define lcd_data      PORTB
#define lcd_data_tris TRISB
#define lcd_en        RB4
#define lcd_rs        RB5
#define lcd_rw        RB6
#define lcd_busy      RB3

bit rs_flag = 0;


void hd44780_pulse(void);
void hd44780_init(void);
void hd44780_clear(void);
void hd44780_write( unsigned char );
void hd44780_busy(void);
void hd44780_printstr( char *, unsigned char );
void hd44780_printchr( char, unsigned char );
void hd44780_printint( int, unsigned char );
void hd44780_newline(void);
void hd44780_printdecimal( int, int, unsigned char );
void hd44780_block_erase( unsigned char, unsigned char );

#endif