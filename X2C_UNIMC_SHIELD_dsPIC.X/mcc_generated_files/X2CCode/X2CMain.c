/* ************************************************************************** */
/** X2CMain.c

  @Company
    Microchip Technology

  @Summary
 Implementation of X2C In and Outport connections

 */
/* ************************************************************************** */
#include <xc.h>
#include "X2CMain.h"
#include "X2C.h"
#include "mcc.h"
#include "hardwaretweaks.h"



int16 pwm_max =  0.9f * LOOPINTCY;
int16 pwm_min =  0.1f * LOOPINTCY;
int16 op_a = 2800;

void UpdateInports(void) {
    
    /* encoder */
    // calculating a linear function to use whole Q15 representation
    int32 qei_calc = ((int32)POS1CNTL-(PULSE_PER_REV/(2*N_P)))*20971;
    Inports.QEI = (int16)(qei_calc >> 6); // Calculating QEI in Q9.6
    if (MC_FLT_GetValue()) Inports.MIC_FLT = UINT16_MAX;
    else Inports.MIC_FLT = 0;
    
    /*
     * CH0 Phase_Current1/PhaseVoltage1
     * CH1 SUM_Current/PhaseVolt2
     * CH2 POT
     * CH3 PhaseCurrent2/PhaseVoltage3
     */
    Inports.CURRENT_P1 = ADC1_Channel0ConversionResultGet(); //Updated in AD interrupt
    Inports.CURRENT_SUM = ADC1_Channel1ConversionResultGet(); //Updated in AD interrupt
    Inports.Pot = ADC1_Channel2ConversionResultGet(); //Updated in AD interrupt
    Inports.CURRENT_P2 = ADC1_Channel3ConversionResultGet(); //Updated in AD interrupt    

}

void UpdateOutports(void) {
 
    if(*Outports.pLED > 0x0) LED4_SetHigh();
    else LED4_SetLow();

    if(*Outports.pLED > 0x0) LED4_SetHigh();
    else LED4_SetLow();
    
    //PDC1 = 0x800;
    //PDC2 = 0x800;
    //PDC3 = 0x800;
    // Calculating in Q32.15
    int32 op_b = (int32)*Outports.pPhase1 - INT16_MAX; 
    int64 temp = op_a * op_b;
    PDC1 = (int16)((temp >> 15) + pwm_max);
   
    
    op_b = (int32)*Outports.pPhase2 - INT16_MAX;
    temp = op_a * op_b;
    PDC2 = (int16)((temp >> 15) + pwm_max);
    

    op_b = (int32)*Outports.pPhase3 - INT16_MAX;
    temp = op_a * op_b;
    PDC3 = (int16)((temp>> 15) + pwm_max);
}
/**
 * Calls the inports update function
 * Then run model calculation
 * Last read model outports and update the peripherals
 */
//Interrupt handler to call model update
ADC1_ISR_FUNCTION_HEADER(void){
    ADC1_InterruptFlagClear();
    
    
    UpdateInports();
    X2C_Update();
    UpdateOutports();
}

/* *****************************************************************************
 End of File
 */
