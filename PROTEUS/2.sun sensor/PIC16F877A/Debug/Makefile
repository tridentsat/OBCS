###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = PIC16F877A
COMPILER = "MPLAB XC8"
TARGET = Debug
SHELL = C:\Windows\system32\cmd.exe

## Tools general options
CCFLAGS=--pass1 --errformat="Error at file %%f line %%l column %%c: (%%n) %%s" --warnformat="Warning at file %%f line %%l column %%c: (%%n) %%s" --msgformat="Message at file %%f line %%l column %%c: (%%n) %%s" -G --chip=16F877A
LDFLAGS=--output=mcof -G --chip=16F877A

## Processing Tools
CC=xc8.exe
ASM=xc8.exe
LD=xc8.exe
LIB=xc8.exe
#  D:/trident labs/PROTEUS/2.sun sensor/PIC16F877A/Debug/Debug.cof: TOOL=LD
#     D:/trident labs/PROTEUS/2.sun sensor/PIC16F877A/Debug/main.p1: TOOL=CC
#        D:/trident labs/PROTEUS/2.sun sensor/PIC16F877A/main.c

# Build tree:
all:	Debug

Debug:	Debug.cof

Debug.cof:	main.p1 
	$(LD) $(LDFLAGS)  -O"Debug.cof" "main.p1"

main.p1:	../main.c 
	$(CC) $(CCFLAGS)  -O"main.p1" "../main.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf Debug.hxl
	rm -rf Debug.lst
	rm -rf Debug.sym
	rm -rf Debug.obj
	rm -rf Debug.sdb
	rm -rf Debug.as
	rm -rf ./startup.obj
	rm -rf ./startup.rlf
	rm -rf ./startup.as
	rm -rf ./startup.lst
	rm -rf ./funclist.
	rm -rf Debug.hex
	rm -rf main.pre
	rm -rf main.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.cof
	rm -rf main.p1

