/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef HARDWARETWEAKS_H
#define	HARDWARETWEAKS_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define F_FRC           8000000         /* fast RC internal oscillator frequency after tuning */
#define F_IN            F_FRC           /* FRC as input for PLL */
#define F_OSC           F_IN*70/(2*2*2)   /* fOSC = fIN*M/(N1*N2): (PLL) oscillator frequency */
#define F_CY            F_OSC/2         /* instruction cycle frequency */

#define DEADTIMESEC     0.000001    // Dead time in seconds - 1us
#define DFCY            70000000UL		// Instruction cycle frequency (Hz)
#define DTCY            (1.0/DFCY)		// Instruction cycle period (sec)
#define DDEADTIME       (unsigned int)(DEADTIMESEC*DFCY)	// Dead time in dTcys
#define MIN_DUTY        (unsigned int)(DDEADTIME/2 + 1)        // Should be >= DDEADTIME/2 for PWM Errata workaround
#define PWMFREQUENCY    10000 //10Khz
#define LOOPINTCY       (DFCY/PWMFREQUENCY)   // Basic loop period in units of Tcy

#define BAUDRATE        115200          /* baudrate for serial interface */
#define BRGVAL          ((F_CY/BAUDRATE)/4)-1 //BRGH enabled->4 divider

#define PWM_MIN     0.1 * LOOPINTCY
#define PWM_MAX     0.9 * LOOPINTCY

#define PULSE_PER_REV 1000 // ENCODER Pulses
#define N_P     5            // Electrical Pole-Pairs

void hardwareTweaks(void);

#endif