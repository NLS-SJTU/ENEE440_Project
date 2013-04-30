@;SimpleStartSTM32F4_01.asm wmh 2013-02-03 : adaptation of LPC1768 startup for STM32F04
@; -todo: fix stuff with !! markers
@;SimpleStartLPC1768_02.s wmh 2011-11-10 startup code for NXP LPC1768
@; adapted from http://embeddedfreak.wordpress.com/2009/08/09/cortex-m3-blinky-in-assembly
@; with additions from http://tech.munts.com/MCU/Frameworks/ARM/lpc17xx/ 
 
/* Simple startup file for Cortex-M3 */


 .syntax unified	@; to allow thumb-2 instruction set
.section .stack
.align 3
.global _stack_start
.global _stack_end
_stack_end:
.space 0x400
_stack_start:

.section .heap
.align 3
.global _heap_base
.global _heap_limit
_heap_base:
.space 0x800
_heap_limit:

 @; --- Vector table definition
 .section "isr_vector"
 .long  _stack_start                 /* Top of Stack                 */
 .long  Reset_Handler               /* Reset Handler                */
 .long  NMI_Handler                 /* NMI Handler                  */
 .long  HardFault_Handler           /* Hard Fault Handler           */
 .long  MemManage_Handler           /* MPU Fault Handler            */
 .long  BusFault_Handler            /* Bus Fault Handler            */
 .long  UsageFault_Handler          /* Usage Fault Handler          */
 .long  0                           /* Reserved                     */
 .long  0                           /* Reserved                     */
 .long  0                           /* Reserved                     */
 .long  0                           /* Reserved                     */
 .long  SVC_Handler                 /* SVCall Handler               */
 .long  DebugMon_Handler            /* Debug Monitor Handler        */
 .long  0                           /* Reserved                     */
 .long  PendSV_Handler              /* PendSV Handler               */
 .long  SysTick_Handler             /* SysTick Handler              */
@; External Interrupts (from startup_stm32f427x.s) 
 .long	WWDG_IRQHandler             /* Window WatchDog          					*/                              
 .long	PVD_IRQHandler              /* PVD through EXTI Line detection              */          
 .long	TAMP_STAMP_IRQHandler       /* Tamper and TimeStamps through the EXTI line  */          
 .long	RTC_WKUP_IRQHandler         /* RTC Wakeup through the EXTI line             */          
 .long	FLASH_IRQHandler            /* FLASH                                        */   
 .long	RCC_IRQHandler              /* RCC                                          */   
 .long	EXTI0_IRQHandler            /* EXTI Line0                                   */          
 .long	EXTI1_IRQHandler            /* EXTI Line1                                   */          
 .long	EXTI2_IRQHandler            /* EXTI Line2                                   */          
 .long	EXTI3_IRQHandler            /* EXTI Line3                                   */          
 .long	EXTI4_IRQHandler            /* EXTI Line4                                   */          
 .long	DMA1_Stream0_IRQHandler     /* DMA1 Stream 0                                */   
 .long	DMA1_Stream1_IRQHandler     /* DMA1 Stream 1                                */   
 .long	DMA1_Stream2_IRQHandler     /* DMA1 Stream 2                                */   
 .long	DMA1_Stream3_IRQHandler     /* DMA1 Stream 3                                */   
 .long	DMA1_Stream4_IRQHandler     /* DMA1 Stream 4                                */   
 .long	DMA1_Stream5_IRQHandler     /* DMA1 Stream 5                                */   
 .long	DMA1_Stream6_IRQHandler     /* DMA1 Stream 6                                */   
 .long	ADC_IRQHandler              /* ADC1, ADC2 and ADC3s                         */   
 .long	CAN1_TX_IRQHandler          /* CAN1 TX                                      */          
 .long	CAN1_RX0_IRQHandler         /* CAN1 RX0                                     */          
 .long	CAN1_RX1_IRQHandler         /* CAN1 RX1                                     */          
 .long	CAN1_SCE_IRQHandler         /* CAN1 SCE                                     */          
 .long	EXTI9_5_IRQHandler          /* External Line[9:5]s                          */          
 .long	TIM1_BRK_TIM9_IRQHandler    /* TIM1 Break and TIM9                          */
 .long	TIM1_UP_TIM10_IRQHandler    /* TIM1 Update and TIM10                        */
 .long	TIM1_TRG_COM_TIM11_IRQHandler /* TIM1 Trigger and Commutation and TIM11       */
 .long	TIM1_CC_IRQHandler          /* TIM1 Capture Compare                         */          
 .long	TIM2_IRQHandler             /* TIM2                                         */   
 .long	TIM3_IRQHandler             /* TIM3                                         */   
 .long	TIM4_IRQHandler             /* TIM4                                         */   
 .long	I2C1_EV_IRQHandler          /* I2C1 Event                                   */          
 .long	I2C1_ER_IRQHandler          /* I2C1 Error                                   */          
 .long	I2C2_EV_IRQHandler          /* I2C2 Event                                   */          
 .long	I2C2_ER_IRQHandler          /* I2C2 Error                                   */            
 .long	SPI1_IRQHandler             /* SPI1                                         */   
 .long	SPI2_IRQHandler             /* SPI2                                         */   
 .long	USART1_IRQHandler           /* USART1                                       */   
 .long	USART2_IRQHandler           /* USART2                                       */   
 .long	USART3_IRQHandler           /* USART3                                       */   
 .long	EXTI15_10_IRQHandler        /* External Line[15:10]s                        */          
 .long	RTC_Alarm_IRQHandler        /* RTC Alarm (A and B) through EXTI Line        */          
 .long	OTG_FS_WKUP_IRQHandler      /* USB OTG FS Wakeup through EXTI line          */              
 .long	TIM8_BRK_TIM12_IRQHandler   /* TIM8 Break and TIM12                         */
 .long	TIM8_UP_TIM13_IRQHandler    /* TIM8 Update and TIM13                        */
 .long	TIM8_TRG_COM_TIM14_IRQHandler /* TIM8 Trigger and Commutation and TIM14       */
 .long	TIM8_CC_IRQHandler          /* TIM8 Capture Compare                         */          
 .long	DMA1_Stream7_IRQHandler     /* DMA1 Stream7                                 */          
 .long	FSMC_IRQHandler             /* FSMC                                         */   
 .long	SDIO_IRQHandler             /* SDIO                                         */   
 .long	TIM5_IRQHandler             /* TIM5                                         */   
 .long	SPI3_IRQHandler             /* SPI3                                         */   
 .long	UART4_IRQHandler            /* UART4                                        */   
 .long	UART5_IRQHandler            /* UART5                                        */   
 .long	TIM6_DAC_IRQHandler         /* TIM6 and DAC1&2 underrun errors              */     
 .long	TIM7_IRQHandler             /* TIM7                                         */
 .long	DMA2_Stream0_IRQHandler     /* DMA2 Stream 0                                */   
 .long	DMA2_Stream1_IRQHandler     /* DMA2 Stream 1                                */   
 .long	DMA2_Stream2_IRQHandler     /* DMA2 Stream 2                                */   
 .long	DMA2_Stream3_IRQHandler     /* DMA2 Stream 3                                */   
 .long	DMA2_Stream4_IRQHandler     /* DMA2 Stream 4                                */   
 .long	ETH_IRQHandler              /* Ethernet                                     */   
 .long	ETH_WKUP_IRQHandler         /* Ethernet Wakeup through EXTI line            */          
 .long	CAN2_TX_IRQHandler          /* CAN2 TX                                      */          
 .long	CAN2_RX0_IRQHandler         /* CAN2 RX0                                     */          
 .long	CAN2_RX1_IRQHandler         /* CAN2 RX1                                     */          
 .long	CAN2_SCE_IRQHandler         /* CAN2 SCE                                     */          
 .long	OTG_FS_IRQHandler           /* USB OTG FS                                   */   
 .long	DMA2_Stream5_IRQHandler     /* DMA2 Stream 5                                */   
 .long	DMA2_Stream6_IRQHandler     /* DMA2 Stream 6                                */   
 .long	DMA2_Stream7_IRQHandler     /* DMA2 Stream 7                                */   
 .long	USART6_IRQHandler           /* USART6                                       */    
 .long	I2C3_EV_IRQHandler          /* I2C3 event                                   */          
 .long	I2C3_ER_IRQHandler          /* I2C3 error                                   */          
 .long	OTG_HS_EP1_OUT_IRQHandler   /* USB OTG HS End Point 1 Out                   */   
 .long	OTG_HS_EP1_IN_IRQHandler    /* USB OTG HS End Point 1 In                    */   
 .long	OTG_HS_WKUP_IRQHandler      /* USB OTG HS Wakeup through EXTI               */          
 .long	OTG_HS_IRQHandler           /* USB OTG HS                                   */   
 .long	DCMI_IRQHandler             /* DCMI                                         */   
 .long	CRYP_IRQHandler             /* CRYP crypto                                  */   
 .long	HASH_RNG_IRQHandler         /* Hash and Rng                                 */
 .long	FPU_IRQHandler              /* FPU                                          */
 .long	UART7_IRQHandler            /* UART7                                        */
 .long	UART8_IRQHandler            /* UART8                                        */
 .long	SPI4_IRQHandler             /* SPI4                                         */
 .long	SPI5_IRQHandler             /* SPI5                                         */
 .long	SPI6_IRQHandler             /* SPI6                                         */
@; Vendor hardware-specific interrupts go here (Not implemented)
 
@; --- hardware reset routine
	.text					@; start the reset code section

	.global Reset_Handler	@; export label name to all modules 
	.thumb_func 			@; identify target type to linker
Reset_Handler:				@; @; start-from-reset code; initialize hardware and system data, launch main()
	@; copy .data section (initialized data) from flash to RAM (currently we must do this in each source file)
	@; (!!todo: figure out how we can get the compiler/asembler/linker to place constants in .rodata, etc)
copy_data:	
	ldr r1, DATA_BEG
	ldr r2, TEXT_END
	ldr r3, DATA_END
	subs r3, r3, r1			@; length of initialized data
	beq zero_bss			@; skip if none
copy_data_loop: 
	ldrb r4,[r2], #1		@; read byte from flash
	strb r4, [r1], #1  		@; store byte to RAM
	subs r3, r3, #1  		@; decrement counter
	bgt copy_data_loop		@; repeat until done

	@; zero out .bss section (uninitialized data) (currently we must do this in each source file)
	@; (!!todo: figure out how to get the linker to give us the extents of the merged .bss sections)
zero_bss: 	
	ldr r1, BSS_BEG
	ldr r3, BSS_END
	subs r3, r3, r1			@; Length of uninitialized data
	beq initPLL				@; Skip if none
	mov r2, #0				@; value to initialize .bss with
zero_bss_loop: 	
	strb r2, [r1],#1		@; Store zero
	subs r3, r3, #1			@; Decrement counter
	bgt zero_bss_loop		@; Repeat until done

	@; necessary hardware stuff (todo: crib from disassembly of Keil initPLL.c)
	initPLL:	@; !!todo -- fix this!				
				@; put code here to set up PLL 
	bl SystemInit
	@; do the 'C' global variable inits 'by hand' (since the above doesn't work)
@;	bl CortexM3cOps_init @; !!todo -- fix this!	
	@; do the asm variable inits 'by hand' (since the above doesnt work)
@;	bl CortexM3asmOps_init @; !!todo -- fix this!	
	@;here with everything set up and ready to go
	
	@exit to main (wont return)
call_main:	
	mov	r0, #0				@; argc=0
	mov r1, #0				@; argv=NULL
	bl	main 				@; gone
	b .						@; trap if return

	@; pointer data for 'copy_data' and 'zero_bss' functions 
TEXT_END:	.word	__sidata	@; __text_end__
DATA_BEG:	.word	__sdata		@; __data_beg__
DATA_END:	.word	__edata		@; __data_end__
BSS_BEG:	.word	__sbss		@; __bss_beg__ 
BSS_END:	.word	__ebss		@; __bss_end__


/* This is how the lazy guy doing it: by aliasing all the
 * interrupts into single address
 */
	.thumb_func
NMI_Handler:
	.thumb_func
HardFault_Handler:
	.thumb_func
MemManage_Handler:
	.thumb_func
BusFault_Handler:
	.thumb_func
UsageFault_Handler:
	.thumb_func
SVC_Handler:
	.thumb_func
DebugMon_Handler:
	.thumb_func
PendSV_Handler:
@;	.thumb_func
@;SysTick_Handler:
	bx  r14	 /* put a breakpoint here when we're */
	/*debugging so we can trap here but then return to interrupted code */

 
.thumb_func
WWDG_IRQHandler:           
.thumb_func
PVD_IRQHandler:            
.thumb_func
TAMP_STAMP_IRQHandler:
.thumb_func     
RTC_WKUP_IRQHandler:
.thumb_func       
FLASH_IRQHandler:
.thumb_func        
RCC_IRQHandler:
.thumb_func            
EXTI0_IRQHandler:          
@;.thumb_func
@;EXTI1_IRQHandler:          
.thumb_func
EXTI2_IRQHandler:          
.thumb_func
EXTI3_IRQHandler:          
.thumb_func
EXTI4_IRQHandler:          
.thumb_func
DMA1_Stream0_IRQHandler:   
.thumb_func
DMA1_Stream1_IRQHandler:   
.thumb_func
DMA1_Stream2_IRQHandler:   
.thumb_func
DMA1_Stream3_IRQHandler:   
.thumb_func
DMA1_Stream4_IRQHandler:   
.thumb_func
DMA1_Stream5_IRQHandler:   
.thumb_func
DMA1_Stream6_IRQHandler:   
.thumb_func
ADC_IRQHandler:            
.thumb_func
CAN1_TX_IRQHandler:        
.thumb_func
CAN1_RX0_IRQHandler:       
.thumb_func
CAN1_RX1_IRQHandler:       
.thumb_func
CAN1_SCE_IRQHandler:       
.thumb_func
EXTI9_5_IRQHandler:        
.thumb_func
TIM1_BRK_TIM9_IRQHandler:  
.thumb_func
TIM1_UP_TIM10_IRQHandler:  
.thumb_func
TIM1_TRG_COM_TIM11_IRQHandler:
.thumb_func
TIM1_CC_IRQHandler:        
.thumb_func
TIM2_IRQHandler:           
.thumb_func
TIM3_IRQHandler:           
@;.thumb_func
@;TIM4_IRQHandler:           
.thumb_func
I2C1_EV_IRQHandler:        
.thumb_func
I2C1_ER_IRQHandler:        
.thumb_func
I2C2_EV_IRQHandler:        
.thumb_func
I2C2_ER_IRQHandler:        
.thumb_func
SPI1_IRQHandler:           
.thumb_func
SPI2_IRQHandler:           
.thumb_func
USART1_IRQHandler:         
.thumb_func
USART2_IRQHandler:         
.thumb_func
USART3_IRQHandler:         
.thumb_func
EXTI15_10_IRQHandler:      
.thumb_func
RTC_Alarm_IRQHandler:      
.thumb_func
OTG_FS_WKUP_IRQHandler:    
.thumb_func
TIM8_BRK_TIM12_IRQHandler: 
.thumb_func
TIM8_UP_TIM13_IRQHandler:  
.thumb_func
TIM8_TRG_COM_TIM14_IRQHandler:
.thumb_func
TIM8_CC_IRQHandler:        
.thumb_func
DMA1_Stream7_IRQHandler:   
.thumb_func
FSMC_IRQHandler:           
.thumb_func
SDIO_IRQHandler:           
.thumb_func
TIM5_IRQHandler:           
.thumb_func
SPI3_IRQHandler:           
.thumb_func
UART4_IRQHandler:          
.thumb_func
UART5_IRQHandler:          
.thumb_func
TIM6_DAC_IRQHandler:       
.thumb_func
TIM7_IRQHandler:           
.thumb_func
DMA2_Stream0_IRQHandler:   
.thumb_func
DMA2_Stream1_IRQHandler:  
.thumb_func 
DMA2_Stream2_IRQHandler:   
.thumb_func
DMA2_Stream3_IRQHandler:   
.thumb_func
DMA2_Stream4_IRQHandler:   
.thumb_func
ETH_IRQHandler:            
.thumb_func
ETH_WKUP_IRQHandler:       
.thumb_func
CAN2_TX_IRQHandler:        
.thumb_func
CAN2_RX0_IRQHandler:       
.thumb_func
CAN2_RX1_IRQHandler:       
.thumb_func
CAN2_SCE_IRQHandler:       
.thumb_func
OTG_FS_IRQHandler:         
.thumb_func
DMA2_Stream5_IRQHandler:   
.thumb_func
DMA2_Stream6_IRQHandler:   
.thumb_func
DMA2_Stream7_IRQHandler:   
.thumb_func
USART6_IRQHandler:         
.thumb_func
I2C3_EV_IRQHandler:        
.thumb_func
I2C3_ER_IRQHandler:        
.thumb_func
OTG_HS_EP1_OUT_IRQHandler: 
.thumb_func
OTG_HS_EP1_IN_IRQHandler:  
.thumb_func
OTG_HS_WKUP_IRQHandler:    
.thumb_func
OTG_HS_IRQHandler:         
.thumb_func
DCMI_IRQHandler:           
.thumb_func
CRYP_IRQHandler:           
.thumb_func
HASH_RNG_IRQHandler:       
.thumb_func
FPU_IRQHandler:            
.thumb_func
UART7_IRQHandler:          
.thumb_func
UART8_IRQHandler:          
.thumb_func
SPI4_IRQHandler:           
.thumb_func
SPI5_IRQHandler:  
.thumb_func         
SPI6_IRQHandler:
 	bx  r14
    