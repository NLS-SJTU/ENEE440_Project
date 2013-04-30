
REM fix path as necessary
set path=.\;C:\yagarto\bin;

rmdir build /s /q
mkdir build
copy keil\* build

REM assemble with '-g' omitted where we want to hide things in the AXF
arm-none-eabi-as -g -mcpu=cortex-m4 -o ./build/startup.o ./src/SimpleStartSTM32F4_01.asm

REM compiling C
./src/main.c -o ./build/main.o
./src/audio_sample.c -o ./build/audio_sample.o
./src/stm32f4xx_it.c -o ./build/stm32f4xx_it.o
./src/system_stm32f4xx.c -o ./build/system_stm32f4xx.o
./src/waveplayer.c -o ./build/waveplayer.o
../../Utilities/STM32F4-Discovery/stm32f4_discovery.c -o ./build/stm32f4_discovery.o
../../Utilities/STM32F4-Discovery/stm32f4_discovery_lis302dl.c -o ./build/stm32f4_discovery_lis302dl.o
../../Utilities/STM32F4-Discovery/stm32f4_discovery_audio_codec.c -o ./build/stm32f4_discovery_audio_codec.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_syscfg.c -o ./build/stm32f4xx_syscfg.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/misc.c -o ./build/misc.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_adc.c -o ./build/stm32f4xx_adc.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dac.c -o ./build/stm32f4xx_dac.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dma.c -o ./build/stm32f4xx_dma.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_exti.c -o ./build/stm32f4xx_exti.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_flash.c -o ./build/stm32f4xx_flash.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_gpio.c -o ./build/stm32f4xx_gpio.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_i2c.c -o ./build/stm32f4xx_i2c.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rcc.c -o ./build/stm32f4xx_rcc.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_spi.c -o ./build/stm32f4xx_spi.o
../../Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_tim.c -o ./build/stm32f4xx_tim.o


REM linking
arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,./build/HEARm.map -Wl,-T ./build/linkHEARmSTM32F4_01.ld -o./build/HEARm.elf ./build/audio_sample.o ./build/main.o ./build/misc.o ./build/startup.o ./build/stm32f4_discovery.o ./build/stm32f4_discovery_audio_codec.o ./build/stm32f4_discovery_lis302dl.o ./build/stm32f4xx_adc.o ./build/stm32f4xx_dac.o ./build/stm32f4xx_dma.o ./build/stm32f4xx_exti.o ./build/stm32f4xx_flash.o ./build/stm32f4xx_gpio.o ./build/stm32f4xx_i2c.o ./build/stm32f4xx_it.o ./build/stm32f4xx_rcc.o ./build/stm32f4xx_spi.o ./build/stm32f4xx_syscfg.o ./build/stm32f4xx_tim.o ./build/system_stm32f4xx.o ./build/waveplayer.o -lgcc

REM hex file
arm-none-eabi-objcopy -O ihex ./build/HEARm.elf ./build/HEARm.hex

REM AXF file
copy build\HEARm.elf build\HEARm.AXF
pause

REM list file
arm-none-eabi-objdump -S  ./build/HEARm.axf >./build/HEARm.lst
