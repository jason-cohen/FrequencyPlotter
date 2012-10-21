
#ifndef _ADC_MEASURE_H
#define _ADC_MEASURE_H

#define DEBUG 1
#define NUMBER_OF_SAMPLES 100

#if DEBUG
typedef struct adcArray {
	unsigned adcMeasurements[NUMBER_OF_SAMPLES]; //ADC values from [0,2^10]
	float measure[NUMBER_OF_SAMPLES]; //Computer voltages in Volts from ADC
	float pkToPk; //Computed peak-peak voltage in Volts of signal
}

#else

#endif




#endif