# MPLAB IDE generated this makefile for use with GNU make.
# Project: a2dconvert.mcp
# Date: Mon Dec 23 23:38:50 2013

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

a2dconvert.cof : START.o
	$(CC) /p16F716 "START.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"a2dconvert.cof" /M"a2dconvert.map" /W

START.o : START.ASM ../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/p16F716.inc
	$(AS) /q /p16F716 "START.ASM" /l"START.lst" /e"START.err" /o"START.o" /d__DEBUG=1

clean : 
	$(CC) "START.o" "START.err" "START.lst" "a2dconvert.cof" "a2dconvert.hex"

