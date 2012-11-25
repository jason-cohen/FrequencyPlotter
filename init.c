// Author: Dirk Dubois
// SID: 260371224
// Date: November 22, 2012
// Project: 3dB Plotter

/* A function the configures the PIC24H128JGP502 micro-controller
to operate at a frequency of ###Hz. It also configures the I/O ports for
buttons, LCD Display, MUX, ADC, and DAC and SPI interface.
If sucessful a value of 0 is returned 
Note this function configures SPI, ADC, or DAC, by calling its respective
init functions */

//Includes
#include include.h

int init()
{
	if(initDisplay() == !0)
	return 1;
	
	if(initSDCard() == !0)
	return 1;
	
	if(initADC() == !0)
	return 1;
	
	if(initDAC() == !0)
	return 1;
	
	return 0;

}