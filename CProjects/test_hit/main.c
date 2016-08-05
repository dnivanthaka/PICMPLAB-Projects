#include <htc.h>
#define _XTAL_FREQ 4000000
void main()
{
  TRISB=0X00;
  PORTB=0X00;
  while(1)
  { 
    PORTB=0XFF;
    _delay_ms(100);
    PORTB=0X00;
    _delay_ms(100);
  }
}