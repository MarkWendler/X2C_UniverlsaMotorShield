/**
 * @file
 * @brief Hardware config for X2C Universal Motor shield
 * - MCC can not setup all pripherals as needed
 * - This file are contains some hardware config tweaks top of MCC 
 * - Clock adjusted to 70Mhz
 * - A/D Sample and hold channels enable
 * - PWM 
 * @test
 * MPLABX 4.10 XC16 v1.26
 * MCLV-2
 * Hurst Brushless
 * dsPIC33EP256MC506
 * XC1065
 *
 * @author  Christiph Baumgartner
 * @author  Mark Wendler
 * @see     Christoph.Baumgartner@microchip.com
 * @see     https://www.sim2tronic.com/
 *
 * @date 20-12-2016
 */
#include "hardwaretweaks.h"

void hardwareTweaks(void){
    /*
     * Change CPU frequency to 70Mhz
     */
    
    // 7.37MHz + 23*0.00375*7.37MHz = 8MHz
    OSCTUNbits.TUN = 23; 
     // M = 70
    PLLFBD = 70;
    // N2 = 2 
    CLKDIVbits.PLLPOST = 0; 
    // N1 = 2
    CLKDIVbits.PLLPRE = 0; 
    // Switch to FRC with PLL 
    __builtin_write_OSCCONH(0x01);
    __builtin_write_OSCCONL(0x01);
    // Wait for Clock switch to occur 
    while (OSCCONbits.COSC != 0b001);
    // Wait for PLL to lock 
    while (OSCCONbits.LOCK != 1);
    /*END: Clock Config*/
    
    /*
     * Adjust Serial config to the new clock freq
     */
    U1BRG = BRGVAL;
    
    /*
     * PWM tweaks
     */
    // PWM frequency
    PHASE1 = LOOPINTCY;
    PHASE2 = LOOPINTCY;
    PHASE3 = LOOPINTCY;
    PTPER = 2 * LOOPINTCY + 1; 
    // Deadtime setting
    ALTDTR1 = DDEADTIME; 
    ALTDTR2 = DDEADTIME; 
    ALTDTR3 = DDEADTIME; 
    // low side turn on errata workaround, PDC cannot be initialized with 0 
    PDC1 = PWM_MIN; 
    PDC2 = PWM_MIN;
    PDC3 = PWM_MIN;
    
    /*
     *  QEI Config
     */
    // PPS for QEI New compatible with PIC32MK
    RPINR14bits.QEA1R = 38;
    RPINR14bits.QEB1R = 39;    

    QEI1CON = 0x0;
    QEI1CONbits.PIMOD = 6;
    // Limit count range between 0 and PULSES_PER_EREV 
    QEI1LECL = 0;
    QEI1LECH = 0;
    QEI1GECL = 200 - 1;
    QEI1GECH = 0;
    // Inverted index, QEA, QEB pins
    QEI1IOC = 0x70; 
    QEI1IOCbits.SWPAB = 1;
    // Enable digital filtering, this is a must!
    QEI1IOCbits.FLTREN = 1; 
    // QEI enable
    QEI1CONbits.QEIEN = 1;
    /* END: QEI Config*/
    
    /*
     * ADXC tweaks
     */
    // Samples CH0, CH1, CH2, CH3 simultaneously (when CHPS = 1x)
    AD1CON2bits.CHPS = 2;
    // Simultaneous Sampling enabled (only applicable when CHPS<1:0> = 01 or 1x) 
    AD1CON1bits.SIMSAM = 1;
    /* AD cnnections
     * -AN0 PhaseVolt2/SUM_Current CH1 (FIXED in 4 channel mode)
     * -AN2 PhaseCurrent2/PhaseVoltage3 CH3 (FIXED in 4 channel mode) 
     * -AN4 PhaseCurrent1/PhaseVoltage1 CH0
     * -AN11 DC_Bus_voltage CH0 
     * -AN1 POTmeter CH2 (FIXED in 4 channel mode)
     * Selected:
     * CH0 Phase_Current1/PhaseVoltage1
     * CH1 SUM_Current/PhaseVolt2
     * CH2 POT
     * CH3 PhaseCurrent2/PhaseVoltage3
     */
    AD1CHS123bits.CH123SB=0; // Selected option: AN0-CH1; AN1-CH2; AN2-CH3;
    AD1CHS0bits.CH0SA = 4; // AN4 --> Channel 0    
    AD1CON1bits.FORM = 3; // ADC-result format,  11 = Signed fractional (DOUT = sddd dddd dd00 0000, where s = .NOT.d<9>)
}
