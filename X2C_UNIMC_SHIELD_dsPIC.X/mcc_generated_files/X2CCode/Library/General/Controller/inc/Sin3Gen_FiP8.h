/*
 * Copyright (c) 2013, Linz Center of Mechatronics GmbH (LCM) http://www.lcm.at/
 * All rights reserved.
 */
/*
 * This file is licensed according to the BSD 3-clause license as follows:
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the "Linz Center of Mechatronics GmbH" and "LCM" nor
 *       the names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL "Linz Center of Mechatronics GmbH" BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
/*
 * This file is part of X2C. http://www.mechatronic-simulation.org/
 * $LastChangedRevision: 471 $
 */
/* USERCODE-BEGIN:Description                                                                                         */
/* USERCODE-END:Description                                                                                           */
#ifndef __SIN3GEN_FIP8__
#define __SIN3GEN_FIP8__

#include "CommonFcts.h"

#if !defined(SIN3GEN_FIP8_ISLINKED)
#define SIN3GEN_FIP8_ID     ((uint16)432)

typedef struct {
        uint16       ID;
        int8         *A;
        int8         *f;
        int8         u;
        int8         v;
        int8         w;
        int8         delta_phi;
        int8         offset;
        int8         phi;
} SIN3GEN_FIP8;

#define SIN3GEN_FIP8_FUNCTIONS {SIN3GEN_FIP8_ID, \
                              (void (*)(void*))Sin3Gen_FiP8_Update, \
                              (void (*)(void*))Sin3Gen_FiP8_Init, \
                              (uint8 (*)(void*, uint8[]))Sin3Gen_FiP8_Load, \
                              (uint8 (*)(void*, uint8[], uint8))Sin3Gen_FiP8_Save, \
                              (void* (*)(void*, uint16))Sin3Gen_FiP8_GetAddress}

/**********************************************************************************************************************/
/** Public prototypes                                                                                                **/
/**********************************************************************************************************************/
void Sin3Gen_FiP8_Update(SIN3GEN_FIP8 *pTSin3Gen_FiP8);
void Sin3Gen_FiP8_Init(SIN3GEN_FIP8 *pTSin3Gen_FiP8);
uint8 Sin3Gen_FiP8_Load(const SIN3GEN_FIP8 *pTSin3Gen_FiP8, uint8 data[]);
uint8 Sin3Gen_FiP8_Save(SIN3GEN_FIP8 *pTSin3Gen_FiP8, const uint8 data[], uint8 frameLength);
void* Sin3Gen_FiP8_GetAddress(const SIN3GEN_FIP8* block, uint16 elementId);

#endif

#endif
