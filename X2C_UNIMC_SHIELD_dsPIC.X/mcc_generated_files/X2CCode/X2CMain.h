/* ************************************************************************** */
/** X2CMAIN.h

  @Company
    Microchip Technology

  @Summary
    X2C Model Interface functions

 */
/* ************************************************************************** */

#ifndef _X2CMAIN_H    /* Guard against multiple inclusion */
#define _X2CMAIN_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

/** 
 * @brief Update the input values of the X2C model
 *
 *  Get the HW I/O values and pass to the X2C model
 */
void UpdateInports(void);
/** 
  @brief Get the calculated output values by the X2C model

 *  Read Button 1 (S2), Button 2 (S3) and potentiometer (AD),
 *  then hand over to X2C model
 */
void UpdateOutports(void);



#endif/* X2CMAIN */

/* *****************************************************************************
 End of File
 */
