# MPLAB IDE generated this makefile for use with GNU make.
# Project: LCDDRV.mcp
# Date: Sat Jan 04 21:12:58 2014

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

LCDDRV.cof : MAIN.o
	$(CC) /p16F628A "MAIN.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"LCDDRV.cof" /M"LCDDRV.map" /W

MAIN.o : MAIN.ASM ../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/p16F628A.inc
	$(AS) /q /p16F628A "MAIN.ASM" /l"MAIN.lst" /e"MAIN.err" /o"MAIN.o" /d__DEBUG=1

clean : 
	$(CC) "MAIN.o" "MAIN.err" "MAIN.lst" "LCDDRV.cof" "LCDDRV.hex"

