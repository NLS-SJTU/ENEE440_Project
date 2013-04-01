//STM32F4main04.c wmh 2013-03-20 : adds P24v04 switch inputs to ST32F4
//STM32F4main03.c wmh 2013-03-18 : extending IO functions to P24v04 -- display output first
//STM32F4main02.c wmh 2013-03-16 : moving functions over to assembly
//STM32F4main01.c wmh 2013-02-02 : trying to get a barebones 'main()' to compile
/*----------------------------------------------------------------------------
 * Name:    Blinky.c
 * Purpose: LED Flasher
 * Note(s): 
 *----------------------------------------------------------------------------
 * This file is part of the uVision/ARM development tools.
 * This software may only be used under the terms of a valid, current,
 * end user licence from KEIL for a compatible version of KEIL software
 * development tools. Nothing else gives you the right to use this software.
 *
 * This software is supplied "AS IS" without warranties of any kind.
 *
 * Copyright (c) 2011 Keil - An ARM Company. All rights reserved.
 *----------------------------------------------------------------------------*/

//global variables used in CortexM4asmOps_01.asm but defined here
	int Cint;
	
//!!added stuff to get it to compile
#include <stdint.h>	//various versions of this in yagarto -- gives unint32_t and other definitions
#include ".\basic\system_stm32f4xx.h"
#include ".\basic\stm32f4xx.h"
#include ".\basic\core_cm4.h"
#include ".\drivers\ST_LED.h"
#include ".\drivers\ST_BTN.h"
#include ".\drivers\ST_P24_SWITCH.h"
 



extern uint32_t SystemCoreClock;
volatile uint32_t msTicks;                      /* counts 1ms timeTicks       */
/*----------------------------------------------------------------------------
  SysTick_Handler
 *----------------------------------------------------------------------------*/
void SysTick_Handler(void) {
  msTicks++;
}

/*----------------------------------------------------------------------------
  delays number of tick Systicks (happens every 1 ms)
 *----------------------------------------------------------------------------*/
void Delay (uint32_t dlyTicks) {                                              
  uint32_t curTicks;

//!!temporary -- replaced delay mediated by SysTick_Handler() with software delay
//  curTicks = msTicks;
//  while ((msTicks - curTicks) < dlyTicks);
  curTicks = 0x12345;
  while(curTicks-- > 0);
  return;
}


/*----------------------------------------------------------------------------
  Function that initializes Button pins
 *----------------------------------------------------------------------------*/
/* replaced with assembly  'ST_BTN_Init()' in "STM32F4_P24v04IO_02.asm"

void BTN_Init(void) {

  RCC->AHB1ENR  |= ((1UL <<  0) );              // Enable GPIOA clock         

  GPIOA->MODER    &= ~((3UL << 2*0)  );         // PA.0 is input              
  GPIOA->OSPEEDR  &= ~((3UL << 2*0)  );         // PA.0 is 50MHz Fast Speed   
  GPIOA->OSPEEDR  |=  ((2UL << 2*0)  ); 
  GPIOA->PUPDR    &= ~((3UL << 2*0)  );         // PA.0 is no Pull up         
}
/*
*/

/*----------------------------------------------------------------------------
  Function that read Button pins
 *----------------------------------------------------------------------------*/
/* replaced with assembly  'ST_BTN_Get()' in "STM32F4_P24v04IO_02.asm"

uint32_t BTN_Get(void) {

 return (GPIOA->IDR & (1UL << 0));
}
/**/

/**************** tests **********************/
//void testmacro(void);		//in STM32F4_P24v04IO_01.asm
//void asmLED_init(void);	//""
//void asmBTN_init(void);	//""

//void ST_LED_init(void); 	//initialize onboard LEDs of ST32F4DISCOVERY board
//Done in asm ^
//void ST_BTN_init(void);  	//initialize onboard switches of ST32F4DISCOVERY board
//Done in asm ^
//uint32_t ST_BTN_Get(void);	//read onboard button of ST32F4DISCOVERY board
//Done in asm ^

//void ST_P24DISPLAY_init(void);	//initialize ST32F4 pins controlling P24 display pins
//void wrCATHODE_0(void);
//void enabDIGIT_1(void);
//void DISPLAY_on(void);
//void DISPLAY_off(void);
//void printHEX(unsigned int);
//void displayEnab(unsigned int);

//void ST_P24SWITCH_init(void); //initialize ST32F4 pins controlling switches
//Done in asm ^
//int getSWITCH(int num);		 //return sampled value of switch
//Done in asm ^

unsigned int digitvals[4]= {1,2,3,4};			//global variable to hold the four digits being displayed 
/*
void display_update(void)
{
static unsigned int refreshcount=0;					//number of display refresh events
	DISPLAY_off();									//hide changover
	printHEX( digitvals[refreshcount & 0x03]);		//print contents of digitvals[]
	displayEnab((refreshcount & 0x03)+1);			//in digits positions 1-2-3-4
	DISPLAY_on();									//lights back on
	refreshcount++;									// for next time
}
*/	
	
/*----------------------------------------------------------------------------
  MAIN function
 *----------------------------------------------------------------------------*/
int main (void) {
  int32_t num = -1; 
  int32_t dir =  1;
 uint32_t btns = 0;
 int i;
 
  SystemCoreClock = 168000000; 	//!!found in system_stm32f4xx.c, added here instead of as global
							   //because we're trying to avoid need to have crt0.o

 
 
  SystemCoreClockUpdate();                      /* Get Core Clock Frequency   */
  if (SysTick_Config(SystemCoreClock / 1000)) { /* SysTick 1 msec interrupts  */
    while (1);                                  /* Capture error              */
  }
 
//BTN_Init();

	ST_LED_init(); 								//initialize onboard LEDs of ST32F4DISCOVERY board
	ST_BTN_init();								//initialize onboard switches of ST32F4DISCOVERY board
	ST_P24SWITCH_init(); 							//initialize ST32F4 pins controlling switches
 
//  ST_P24DISPLAY_init();							//initialize ST32F4 output pins controlling P24 display pins
//  wrCATHODE_0();								//put pattern to display '0' on P24 cathode latch
//  printHEX(1);
//  enabDIGIT_1();								//put pattern to enable digit 1 on P24 anode latch
//  displayEnab(3);
//  DISPLAY_on();									//enable output drive of P24 anode, cathode latches
 
  while(1) {                                    // Loop forever               
/*
	for(i=1;i<=12;i++) {
		if(ST_P24_GetSwitch(i)==0) { //switch i is pressed
			digitvals[0]=digitvals[1]=digitvals[2]=digitvals[3]=i;	//display 'i'
			break;													//and quit search
		}
		else {
			digitvals[0]=digitvals[1]=digitvals[2]=digitvals[3]=0;
		}
	}




		display_update();
*/	
	
     
		btns = ST_BTN_Get();                      // Read button states 
		if (btns != (1UL << 0)) { // Calculate 'num': 0,1,...,LED_NUM-1,LED_NUM-1,...,1,0,0,...  

			num += dir;
			if (num == LED_NUM) { dir = -1; num =  LED_NUM-1; } 
			else if   (num < 0) { dir =  1; num =  0;         }

			LED_On (num);
			Delay( 50);                               // Delay 50ms                 
			LED_Off(num);
			Delay(200); 
			// Delay 200ms            
		}
		else {
			LED_Out (0x0F);
			Delay(10);                                // Delay 10ms               
		}
  }
}

