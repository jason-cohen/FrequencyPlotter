// Author: Jason Cohen
// SID: 260377527
// Date: October 21, 2012
// Project: 3dB Plotter

/*
 *
 *
 *
**/

// constants
#define DEBUG 1



#if DEBUG
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "bsp.h"
#include "adcMeasure.h"

#ifndef MUX_VALUE
#define MUX_VALUE
#endif

#endif

//Global variables
const float quantStep = VBIAS / (2 ^ (ADC_BIT_WIDTH - 1));

//Convert the 10-bit array into integers to the actual voltage values
void convertADC(*adcArray measurements) {
	// Scaling factor used to compute Vin from Vadc through the voltage division
	float scale;
	//float quantStep; //Redefined as a global const varaible
	int i;
	
	//Compute the scale used for the voltage division between Vin and Vadc
	switch (MUX_VALUE) {
		case 0:
			scale = SCALE_STAGE_0; // Vin = Vadc*4
			break;
		case 1:
			scale = SCALE_STAGE_1; // Vin = Vadc*2
			break;
		case 2:
			scale = SCALE_STAGE_2; // Vin = Vadc*1.333
			break;
		case 3:
			scale = SCALE_STAGE_3; // Vin = Vadc
			break;
		default:
			break;
	}
	
	//***********Feedback goes here***************
	
	// Converting from the ADC bit measurement to the voltage measurements of Vin
	for (i = 0; i < NUMBER_OF_SAMPLES; i++) {
		measurements->measure[i] = (measurements->adcMeasurements[i] * quantStep - VBIAS) * scale;
	}
}

//Perform an FIR filtering on the voltage measurements values
void filterFIR(*adcArray measurements) {

}

// Returns the peak-peak voltage in Volts
void adcMeasure(*adcArray measurements) {
	
	
	
}

#if DEBUG
int main(int argc, char** argv) {
	int i = 0;
	
	adcArray measurements;
	
	measurements = malloc(sizeof(*measurements));
	
	for (i = 0; i < NUMBER_OF_SAMPLES; i++) {
		measurements.adcMeasurements[i] = 614; //Approx 1V DC
	}
	
	convertADC(&measurements);
	
	while (i < 10) {
		printf("%f/n", measurements.measure[i]);
		i++;
	}
	
	//filterFIR(&measurements);
	//adcMeasure(&measurements);
	
	printf("%f", measurements.pkToPk);
}
#endif