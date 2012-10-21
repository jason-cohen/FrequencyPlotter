/*Board specific header file*/
#ifndef _BSP_H
#define _BSP_H

//Port Defines

//ADC Value Defines
#define VBIAS 5
#define ADC_BIT_WIDTH 10
//Upscaling value to convert from measured voltage to actual voltage
#define SCALE_STAGE_0 4 //Multiply by (1/4) to get Vadc
#define SCALE_STAGE_1 2 //Multiply by (2/4) to get Vadc
#define SCALE_STAGE_2 1.333 //Multiply by (3/4) to get Vadc
#define SCALE_STAGE_3 1 //No scale
//Need to define NUMBER_OF_SAMPLES

#endif
