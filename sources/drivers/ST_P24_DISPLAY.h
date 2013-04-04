/*----------------------------------------------------------------------------
 * Name:    ST_SEG.h
 * Purpose: low level on-board botton definitions
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
#include "..\basic\GPIO.h"
#ifndef __ST_P24_DISPLAY_H
#define __ST_P24_DISPLAY_H


extern void ST_P24_DisplayIni(void);	//initialize ST32F4 pins controlling P24 display pins
extern void ST_P24_DisplayUpdate(char* DispContants);
//extern void  wrCATHODE_0(void);
//extern void  enabDIGIT_1(void);

extern void  ST_P24_Display_On(void);
extern void  ST_P24_Display_Off(void);

//extern void  ST_P24_Display_SetChar(char);


void  ST_P24_Display_SetChar(char c)
{
	switch(c)
	{
		case '0':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '1':
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '2':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '3':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '4':
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '5':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '6':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '7':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '8':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '9':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case 'a':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case 'b':
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case 'c':
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case 'd':
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case 'e':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,0);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case 'f':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,0);
			Set_PortC_Bit(0,0);
			Set_PortA_Bit(1,0);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '.':
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,0);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case ':':
			Set_PortC_Bit(2,0);
			Set_PortA_Bit(0,0);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case '\'':
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,0);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		case 0:
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
		break;
		default:
			Set_PortC_Bit(2,1);
			Set_PortA_Bit(0,1);
			Set_PortC_Bit(3,1);
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortC_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortA_Bit(5,1);
			
			Set_PortC_Bit(5,0);
			Set_PortC_Bit(5,1);
	}
}

//extern void  ST_P24_Display_SlctSeg(unsigned int);
void  ST_P24_Display_SlctSeg(unsigned int seg)
{
	switch(seg)
	{
		case 1:
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortA_Bit(5,1);
			
			Set_PortA_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortC_Bit(3,1);
			Set_PortC_Bit(0,0);
			Set_PortC_Bit(2,1);
			
			Set_PortC_Bit(4,0);
			Set_PortC_Bit(4,1);
		break;
		case 2:
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortA_Bit(5,1);
			
			Set_PortA_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortC_Bit(3,0);
			Set_PortC_Bit(0,1);
			Set_PortC_Bit(2,1);
			
			Set_PortC_Bit(4,0);
			Set_PortC_Bit(4,1);
		break;
		case 3:
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortA_Bit(5,1);
			
			Set_PortA_Bit(0,1);
			Set_PortA_Bit(1,0);
			Set_PortC_Bit(3,1);
			Set_PortC_Bit(0,1);
			Set_PortC_Bit(2,1);
			
			Set_PortC_Bit(4,0);
			Set_PortC_Bit(4,1);
		break;
		case 4:
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortA_Bit(5,1);
			
			Set_PortA_Bit(0,0);
			Set_PortA_Bit(1,1);
			Set_PortC_Bit(3,1);
			Set_PortC_Bit(0,1);
			Set_PortC_Bit(2,1);
			
			Set_PortC_Bit(4,0);
			Set_PortC_Bit(4,1);
		break;
		case 5:
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortA_Bit(5,1);
			
			Set_PortA_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortC_Bit(3,1);
			Set_PortC_Bit(0,1);
			Set_PortC_Bit(2,0);
			
			Set_PortC_Bit(4,0);
			Set_PortC_Bit(4,1);
		break;
		default:
			Set_PortA_Bit(7,1);
			Set_PortA_Bit(4,1);
			Set_PortA_Bit(5,1);
			
			Set_PortA_Bit(0,1);
			Set_PortA_Bit(1,1);
			Set_PortC_Bit(3,1);
			Set_PortC_Bit(0,1);
			Set_PortC_Bit(2,1);
			
			Set_PortC_Bit(4,0);
			Set_PortC_Bit(4,1);
		break;
	}
}


#endif
