# MPLAB IDE generated this makefile for use with GNU make.
# Project: master.mcp
# Date: Mon Aug 18 23:56:49 2014

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

master.cof : MAIN.o
	$(CC) /p16F690 "MAIN.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"master.cof" /M"master.map" /W

MAIN.o : MAIN.ASM ../../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/p16F690.inc
	$(AS) /q /p16F690 "MAIN.ASM" /l"MAIN.lst" /e"MAIN.err" /o"MAIN.o" /d__DEBUG=1

clean : 
	$(CC) "MAIN.o" "MAIN.err" "MAIN.lst" "master.cof" "master.hex"

