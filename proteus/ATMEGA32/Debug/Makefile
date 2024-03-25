###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = ATmega32
COMPILER = "WinAVR"
TARGET = Debug
SHELL = C:\WINDOWS\system32\cmd.exe

## Tools general options
CCFLAGS=-Wall -gdwarf-2 -fsigned-char -MD -MP -DF_CPU=1000000 -O1 -mmcu=atmega32
LDFLAGS=-mmcu=atmega32

## Processing Tools
CC=avr-gcc.exe
ASM=avr-gcc.exe
LD=avr-gcc.exe
#  D:/Classes/Sixth Semester/microcontroler lab/proteus/ATMEGA32/Debug/Debug.elf: TOOL=LD
#  Post: $(OBJ) avr-objcopy -O ihex -R .eeprom "./Debug.elf" "./Debug.hex"
#  Post: $(OBJ) avr-objcopy -j .eeprom --set-section-flags=.eeprom="alloc,load" --change-section-lma .eeprom=0 --no-change-warnings -O ihex "./Debug.elf" "./Debug.eep" || exit 0 
#     D:/Classes/Sixth Semester/microcontroler lab/proteus/ATMEGA32/Debug/main.o: TOOL=CC
#        D:/Classes/Sixth Semester/microcontroler lab/proteus/ATMEGA32/main.c

# Build tree:
all:	Debug

Debug:	Debug.elf

Debug.elf:	main.o 
	$(LD) $(LDFLAGS)  -o "./Debug.elf" "main.o"
	$(OBJ) avr-objcopy -O ihex -R .eeprom "./Debug.elf" "./Debug.hex"
	$(OBJ) avr-objcopy -j .eeprom --set-section-flags=.eeprom="alloc,load" --change-section-lma .eeprom=0 --no-change-warnings -O ihex "./Debug.elf" "./Debug.eep" || exit 0 

main.o:	../main.c 
	$(CC) $(CCFLAGS)  -o "main.o" -c "../main.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf ./main.d

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.elf
	rm -rf main.o

