/* This file is part of X2C. http://www.mechatronic-simulation.org/                                                   */

/* Model: X2C_UNIMC_SHIELD                                                                                            */
/* Date:  2018-02-25 15:45                                                                                            */

/* X2C-Version: 1116                                                                                                  */

#include "FlashTable.h"
#include "RamTable.h"
#include "X2C.h"

/*                                                       Inports                                                      */
/*--------------------------------------------------------------------------------------------------------------------*/
TInports Inports;

/*                                                      Outports                                                      */
/*--------------------------------------------------------------------------------------------------------------------*/
TOutports Outports;

/**********************************************************************************************************************/
/**                                              Global Variables Block                                              **/
/**********************************************************************************************************************/
CONSTANT_FIP16                TAmplitude;
SIN3GEN_FIP16                 TSin3Gen;
SCOPE_MAIN                    TScope;

/* Block function table                                                                                               */
#define END_BLOCKFUNCTIONS { (uint16)0, (void (*)(void*))0, (void (*)(void*))0, \
    (uint8 (*)(void*, uint8[]))0, (uint8 (*)(void*, uint8[], uint8))0, (void* (*)(void*, uint16))0 }

const tBlockFunctions blockFunctionTable[] = {
    FUNCTIONS,
    END_BLOCKFUNCTIONS
};

/* Parameter identifier table                                                                                         */
#define END_PARAMETERTABLE { (uint16)0, (void*)0 }

const tParameterTable parameterIdTable[] = {
    PARAMETER_TABLE,
    END_PARAMETERTABLE
};

/**********************************************************************************************************************/
/**                                                  Initialization                                                  **/
/**********************************************************************************************************************/
void X2C_Init()
{
    /******************************************************************************************************************/
    /**                                          Initialize Block Parameters                                         **/
    /******************************************************************************************************************/

    /* Block Amplitude                                                                                                */
    /* Value = 0.2                                                                                                    */
    TAmplitude.K = 6554;

    /* Block Sin3Gen                                                                                                  */
    /* fmax = 100.0                                                                                                   */
    /* Offset = 0.0                                                                                                   */
    /* ts_fact = 1.0                                                                                                  */
    TSin3Gen.delta_phi = 655;
    TSin3Gen.offset = 0;
    TSin3Gen.phi = 0;


    /******************************************************************************************************************/
    /**                                               Link Block Inputs                                              **/
    /******************************************************************************************************************/

    /* Block Amplitude                                                                                                */

    /* Block Sin3Gen                                                                                                  */
    TSin3Gen.A                       = &TAmplitude.Out;
    TSin3Gen.f                       = &(Inports.Pot);

    /******************************************************************************************************************/
    /**                                                 Link Outports                                                **/
    /******************************************************************************************************************/
    Outports.pPhase1                  = &TSin3Gen.u;
    Outports.pPhase2                  = &TSin3Gen.v;
    Outports.pPhase3                  = &TSin3Gen.w;
    Outports.pLED                     = &TSin3Gen.w;

    /******************************************************************************************************************/
    /**                                           Run Block Init Functions                                           **/
    /******************************************************************************************************************/
    Constant_FiP16_Init(&TAmplitude);
    Sin3Gen_FiP16_Init(&TSin3Gen);
    Scope_Main_Init(&TScope);
}

/**********************************************************************************************************************/
/**                                            Run Block Update Functions                                            **/
/**********************************************************************************************************************/
void X2C_Update(void)
{
    X2C_Update_1();

}

/* X2C_Update for blocks with 1*Ts                                                                                    */
void X2C_Update_1(void)
{
    Sin3Gen_FiP16_Update(&TSin3Gen);
    Scope_Main_Update(&TScope);
}

