#include <xc.h>
#include <stdio.h>

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

void init()
{
// Init devices
// Disabling the comparators
	//CMCON = 0x07;

	
}

int main()
{
	asm("movlw 0x07");

	return 0;
}