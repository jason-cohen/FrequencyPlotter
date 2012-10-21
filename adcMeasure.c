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

#include <stdio.h>
#include <stdlib.h>
#include "adcMeasure.h"


//Convert the 10-bit array into integers to the actual voltage values
void convertADC(*adcArray measurements) {
	
}

// Returns the peak-peak voltage in Volts
void adcMeasure(*adcArray measurements) {
	
	
	
}

#if DEBUG
int main(int argc, char** argv) {
	
	convertADC(&measurements);
	adcMeasure(&measurements);
	
	printf("%f", measurements.pkToPk);
}
#endif