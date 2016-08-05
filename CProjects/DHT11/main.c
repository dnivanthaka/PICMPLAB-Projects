#include <xc.h>
#include <stdio.h>
//#include "hd44780.h"

#pragma config BOREN = ON, CPD = OFF, FOSC = XT, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

void init()
{
// Init devices
// Disabling the comparators
	CMCON = 0x07;

	
}

int main()
{


	return 0;
}