#ifndef __ST_TIM_H
#define __ST_TIM_H
#include <stdint.h> 
extern void TIM2_Init(void);
extern void TIM2_Config(unsigned int psc, unsigned int arr);
extern void TIM2_Start(void);

#endif