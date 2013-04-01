REM  obfs_makeSTM32F4_P24IO_Blinky.bat wmh 2013-03-16 : compile STM32F4DISCOVERY/P24v04 7-segment display and switch demo 
REM !!source for display and switch drivers of aIOtest.obj (STM32F4_P24v04IO_04.asm object) is _not_ included. 

REM fix path as necessary
set path=.\;C:\yagarto\bin;

REM assemble with '-g' omitted where we want to hide things in the AXF
arm-none-eabi-as -g -mcpu=cortex-m4 -o aStartup.o .\sources\basic\SimpleStartSTM32F4_01.asm

REM compiling C
REM arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m0 -save-temps startup.c -o cStartup.o
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps .\sources\basic\system_stm32f4xx.c -o system_stm32f4xx.o
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps .\sources\ProjectMain.c -o cMain.o
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps .\sources\drivers\LED.c -o cLED.o

REM linking
 arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,Blinky.map -Wl,-T .\sources\linkBlinkySTM32F4_01.ld -o Blinky.elf aStartup.o aIOtest.obj system_stm32f4xx.o cLED.o cMain.o -lgcc

REM hex file
arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex

REM AXF file
copy Blinky.elf Blinky.AXF
pause

REM list file
arm-none-eabi-objdump -S  Blinky.axf >Blinky.lst
