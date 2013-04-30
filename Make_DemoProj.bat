@echo off
mode con cols=999 lines=99
set path=.\;C:\yagarto\bin;

REM deleting
del /s *.o
del /s *.elf
del /s *.hex
del /s *.AXF
del /s *.dep
del /s *.map
del /s *.i
::del /s *.s
del /s *.lst
::@echo on
echo compiling start-up code
arm-none-eabi-as -g -mcpu=cortex-m4 -o a_Startup.o .\sources\basic\SimpleStartSTM32F4_01.asm

echo compiling main.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_DemoCodes\src\main.c -o c_Main.o
echo compiling audio_sample.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_DemoCodes\src\audio_sample.c -o c_audio_sample.o
echo compiling stm32f4xx_it.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_DemoCodes\src\stm32f4xx_it.c -o c_stm32f4xx_it.o
echo compiling system_stm32f4xx.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_DemoCodes\src\system_stm32f4xx.c -o c_system_stm32f4xx.o
echo compiling waveplayer.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_DemoCodes\src\waveplayer.c -o c_waveplayer.o
echo compiling stm32f4_discovery.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Utilities\STM32F4-Discovery\stm32f4_discovery.c -o c_stm32f4_discovery.o
echo compiling stm32f4_discovery_lis302dl.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Utilities\STM32F4-Discovery\stm32f4_discovery_lis302dl.c -o c_stm32f4_discovery_lis302dl.o
echo compiling stm32f4_discovery_audio_codec.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.c -o c_stm32f4_discovery_audio_codec.o
echo compiling stm32f4xx_syscfg.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_syscfg.c -o c_stm32f4xx_syscfg.o
echo compiling misc.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\misc.c -o c_misc.o
echo compiling stm32f4xx_adc.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.c -o c_stm32f4xx_adc.o
echo compiling stm32f4xx_dac.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.c -o c_stm32f4xx_dac.o
echo compiling stm32f4xx_dma.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.c -o c_stm32f4xx_dma.o
echo compiling stm32f4xx_exti.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_exti.c -o c_stm32f4xx_exti.o
echo compiling stm32f4xx_flash.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_flash.c -o c_stm32f4xx_flash.o
echo compiling stm32f4xx_gpio.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.c -o c_stm32f4xx_gpio.o
echo compiling stm32f4xx_i2c.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_i2c.c -o c_stm32f4xx_i2c.o
echo compiling stm32f4xx_rcc.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.c -o c_stm32f4xx_rcc.o
echo compiling stm32f4xx_spi.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.c -o c_stm32f4xx_spi.o
echo compiling stm32f4xx_tim.c
arm-none-eabi-gcc ^
-I .\sources\ST_DemoCodes\inc ^
-I .\sources\ST_Libraries\CMSIS\ST\STM32F4xx\Include ^
-I .\sources\ST_Libraries\CMSIS\Include ^
-I .\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\inc ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Core/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_HOST_Library/Class/MSC/inc/ ^
-I .\sources\ST_Libraries/STM32_USB_OTG_Driver/inc/ ^
-I .\sources\ST_Utilities\STM32F4-Discovery ^
-I .\sources\ST_Utilities\Third_Party\fat_fs\inc ^
-D__MICROLIB ^
-DUSE_STDPERIPH_DRIVER ^
-DUSE_USB_OTG_FS ^
-DSTM32F4XX ^
-DMEDIA_IntFLASH ^
-std=c99 -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps ^
.\sources\ST_Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_tim.c -o c_stm32f4xx_tim.o
::linkBlinkySTM32F4_01
::440linker
echo linking...
arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,.\objs\Blinky.map ^
-Wl,-T .\linkers\linkBlinkySTM32F4_01.ld ^
-o Blinky.elf ^
a_Startup.o ^
c_audio_sample.o ^
c_Main.o ^
c_stm32f4xx_it.o ^
c_system_stm32f4xx.o ^
c_waveplayer.o ^
c_stm32f4_discovery.o ^
c_stm32f4_discovery_lis302dl.o ^
c_stm32f4_discovery_audio_codec.o ^
c_stm32f4xx_syscfg.o ^
c_misc.o ^
c_stm32f4xx_adc.o ^
c_stm32f4xx_dac.o ^
c_stm32f4xx_dma.o ^
c_stm32f4xx_exti.o ^
c_stm32f4xx_flash.o ^
c_stm32f4xx_gpio.o ^
c_stm32f4xx_i2c.o ^
c_stm32f4xx_rcc.o ^
c_stm32f4xx_spi.o ^
c_stm32f4xx_tim.o ^
-lgcc

echo generate hex file
arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex

echo generate AXF file
copy Blinky.elf Blinky.AXF
pause

echo generate list file
arm-none-eabi-objdump -S Blinky.axf >Blinky.lst
pause
