# MPLAB IDE generated this makefile for use with GNU make.
# Project: uygulama-3.mcp
# Date: Sat Oct 06 17:22:34 2018

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

uygulama-3.cof : uygulama-3.o
	$(CC) /p16F877A "uygulama-3.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"uygulama-3.cof" /M"uygulama-3.map" /W /x

uygulama-3.o : uygulama-3.asm C:/Program\ Files\ (x86)/Microchip/MPASM\ Suite/P16F877A.INC
	$(AS) /q /p16F877A "uygulama-3.asm" /l"uygulama-3.lst" /e"uygulama-3.err" /d__DEBUG=1

clean : 
	$(CC) "uygulama-3.o" "uygulama-3.hex" "uygulama-3.err" "uygulama-3.lst" "uygulama-3.cof"

