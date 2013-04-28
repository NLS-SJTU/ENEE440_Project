REM  obfs_makeSTM32F4_P24IO_Blinky.bat wmh 2013-03-16 : compile STM32F4DISCOVERY/P24v04 7-segment display and switch demo 
REM !!source for display and switch drivers of aIOtest.obj (STM32F4_P24v04IO_04.asm object) is _not_ included. 

REM fix path as necessary
set path=.\;C:\yagarto\bin;

REM deleting
del /s *.o
del /s *.elf
del /s *.hex
del /s *.AXF
del /s *.dep
del /s *.map
del /s *.i
del /s *.s
del /s *.lst

REM compiling basic in asm
REM assemble with '-g' omitted where we want to hide things in the AXF
arm-none-eabi-as -g -mcpu=cortex-m4 -o aStartup.o .\sources\basic\SimpleStartSTM32F4_01.asm
REM compiling basic in c
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps .\sources\basic\system_stm32f4xx.c -o system_stm32f4xx.o

REM compiling drivers in asm
arm-none-eabi-as -g -mcpu=cortex-m4 -I .\sources\basic .\sources\basic\GPIO.asm -o aGPIO.o

arm-none-eabi-as -g -mcpu=cortex-m4 .\sources\drivers\ST_LED.asm -o aST_LED.o
arm-none-eabi-as -g -mcpu=cortex-m4 .\sources\drivers\ST_BTN.asm -o aST_BTN.o
arm-none-eabi-as -g -mcpu=cortex-m4 -I .\sources\drivers ^
.\sources\drivers\ST_P24_SWITCH.asm -o aST_P24_SWITCH.o
arm-none-eabi-as -g -mcpu=cortex-m4 -I .\sources\drivers ^
.\sources\drivers\ST_P24_DISPLAY.asm -o aST_P24_DISPLAY.o
arm-none-eabi-as -g -mcpu=cortex-m4 -I .\sources\drivers ^
.\sources\drivers\ST_P24_LED.asm -o aST_P24_LED.o
::arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
::.\sources\basic\TIM.c -o aTIM.o
arm-none-eabi-as -g -mcpu=cortex-m4 .\sources\basic\TIM.asm -o aTIM.o


REM compiling drivers in c
arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps .\sources\drivers\ST_LED.c -o cST_LED.o



REM compiling main C
arm-none-eabi-gcc -I./ -std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps .\sources\ProjectMain.c -o cMain.o

REM linking
arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,.\objs\Blinky.map -Wl,-T ^
.\linkers\linkBlinkySTM32F4_01.ld ^
-o Blinky.elf ^
aStartup.o system_stm32f4xx.o aST_LED.o aTIM.o cST_LED.o aST_BTN.o ^
aST_P24_SWITCH.o aST_P24_DISPLAY.o aGPIO.o aST_P24_LED.o cMain.o ^
-lgcc

REM hex file
arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex

REM AXF file
copy Blinky.elf Blinky.AXF
pause

REM list file
arm-none-eabi-objdump -S Blinky.axf >Blinky.lst
pause


-c --cpu Cortex-M4.fp -g -O3 --apcs=interwork --split_sections -I..\inc -I..\..\..\Libraries\CMSIS\ST\STM32F4xx\Include -I..\..\..\Libraries\CMSIS\Include -I..\..\..\Utilities\Third_Party\fat_fs\inc -I..\..\..\Libraries\STM32F4xx_StdPeriph_Driver\inc -I..\..\..\Libraries\STM32_USB_HOST_Library\Core\inc -I..\..\..\Libraries\STM32_USB_HOST_Library\Class\MSC\inc -I..\..\..\Libraries\STM32_USB_OTG_Driver\inc -I..\..\..\Utilities\STM32F4-Discovery 
-I C:\Keil\ARM\RV31\INC 
-I C:\Keil\ARM\CMSIS\Include 
-I C:\Keil\ARM\Inc\ST\STM32F4xx 
-DUSE_STDPERIPH_DRIVER -DUSE_USB_OTG_FS -DSTM32F4XX -DMEDIA_IntFLASH -o ".\MEDIA_intFLASH\*.o" --omf_browse ".\MEDIA_intFLASH\*.crf" --depend ".\MEDIA_intFLASH\*.d"