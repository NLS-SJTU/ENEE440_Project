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
#ifndef __ST_SEG_H
#define __ST_SEG_H


extern void ST_P24DISPLAY_init(void);	//initialize ST32F4 pins controlling P24 display pins
extern void  wrCATHODE_0(void);
extern void  enabDIGIT_1(void);
extern void  DISPLAY_on(void);
extern void  DISPLAY_off(void);
extern void  printHEX(unsigned int);
extern void  displayEnab(unsigned int);
#endif