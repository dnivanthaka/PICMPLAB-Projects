# MPLAB IDE generated this makefile for use with GNU make.
# Project: pwm.mcp
# Date: Mon Jul 07 21:32:59 2014

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

pwm.cof : MAIN.o DELAYS.o USART.o
	$(CC) /p16F877A "MAIN.o" "DELAYS.o" "USART.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"pwm.cof" /M"pwm.map" /W

MAIN.o : MAIN.ASM ../../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/p16f877a.inc
	$(AS) /q /p16F877A "MAIN.ASM" /l"MAIN.lst" /e"MAIN.err" /o"MAIN.o" /d__DEBUG=1

DELAYS.o : DELAYS.ASM
	$(AS) /q /p16F877A "DELAYS.ASM" /l"DELAYS.lst" /e"DELAYS.err" /o"DELAYS.o" /d__DEBUG=1

USART.o : USART.ASM ../../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/p16f877a.inc
	$(AS) /q /p16F877A "USART.ASM" /l"USART.lst" /e"USART.err" /o"USART.o" /d__DEBUG=1

clean : 
	$(CC) "MAIN.o" "MAIN.err" "MAIN.lst" "DELAYS.o" "DELAYS.err" "DELAYS.lst" "USART.o" "USART.err" "USART.lst" "pwm.cof" "pwm.hex"

