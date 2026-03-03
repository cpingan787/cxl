/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Pwm_Diagnostic.h                                            */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2019 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* Global variable to access PWGA channel CTDR value.                         */
/*                                                                            */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas. Any        */
/* warranty is expressly disclaimed and excluded by Renesas, either expressed */
/* or implied, including but not limited to those for non-infringement of     */
/* intellectual property, merchantability and/or fitness for the particular   */
/* purpose.                                                                   */
/*                                                                            */
/* Renesas shall not have any obligation to maintain, service or provide bug  */
/* fixes for the supplied Product(s) and/or the Application.                  */
/*                                                                            */
/* Each User is solely responsible for determining the appropriateness of     */
/* using the Product(s) and assumes all risks associated with its exercise    */
/* of rights under this Agreement, including, but not limited to the risks    */
/* and costs of program errors, compliance with applicable laws, damage to    */
/* or loss of data, programs or equipment, and unavailability or              */
/* interruption of operations.                                                */
/*                                                                            */
/* Limitation of Liability                                                    */
/*                                                                            */
/* In no event shall Renesas be liable to the User for any incidental,        */
/* consequential, indirect, or punitive damage (including but not limited     */
/* to lost profits) regardless of whether such liability is based on breach   */
/* of contract, tort, strict liability, breach of warranties, failure of      */
/* essential purpose or otherwise and even if advised of the possibility of   */
/* such damages. Renesas shall not be liable for any services or products     */
/* provided by third party vendors, developers or consultants identified or   */
/* referred to the User by Renesas in connection with the Product(s) and/or   */
/* the Application.                                                           */
/*                                                                            */
/*============================================================================*/
/* Environment:                                                               */
/*              Devices:        X1x                                           */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:  25-Jan-2016  : Initial Version
 * V2.0.0:  19-Oct-2016  : 1. JIRA #ARDAABD-917 - Update to ASR 4.2.2 and
 *                            ASR 4.0.3.
 * V2.0.1:  11-Jul-2017  : As per JIRA ticket #ARDAABD-1726, following changes
 *                         are made:
 *                         1. Macro switch 'F1KM_S4_DEVICE' and 'F1KM_S1_DEVICE'
 *                            are added.
 * V2.0.2:  13-Apr-2018  : The following changes are made:
 *                         1.As part of merging activity  #ARDAABD-3452,
 *                           a. Memory section
 *                              PWM_<START/STOP>_SEC_VAR_NOINIT_UNSPECIFIED
 *                              is modified as
 *                              PWM_<START/STOP>_SEC_VAR_NO_INIT_UNSPECIFIED.
 *                              Ref: ARDAABD-908
 *                           b. Updated copyright information.
 * V2.0.3:  23-Aug-2019  : The following changes are made:
 *                         1.As part of #ARDAABD-4344,
 *                         Changed PWM_START_SEC_VAR_NO_INIT_UNSPECIFIED to
 *                         PWM_START_SEC_VAR_NO_INIT_16.
 *                         Changed PWM_STOP_SEC_VAR_NO_INIT_UNSPECIFIED to
 *                         PWM_STOP_SEC_VAR_NO_INIT_16.
 */
/******************************************************************************/
#ifndef PWM_DIAGNOSTIC_H
#define PWM_DIAGNOSTIC_H

#include "Pwm.h"
/* AUTOSAR standard types */
#include "Std_Types.h"
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#ifndef PWM_TOTAL_DIAG_CHANNELS
 #ifdef F1KM_S4_DEVICE
   #define PWM_TOTAL_DIAG_CHANNELS     96
 #elif defined F1KM_S1_DEVICE
   #define PWM_TOTAL_DIAG_CHANNELS     48
 #else
   #define PWM_TOTAL_DIAG_CHANNELS     72
 #endif
#endif

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/*******************************************************************************
**                      Global Variables                                      **
*******************************************************************************/

#define PWM_START_SEC_VAR_NO_INIT_16
#if (PWM_AR_VERSION  == PWM_AR_HIGHER_VERSION)
/* Functionality related to R4.2 */
#include "Pwm_MemMap.h"

#elif(PWM_AR_VERSION  == PWM_AR_LOWER_VERSION)
/* Functionality related to R4.0 */
#include "MemMap.h"
#endif

#if (PWM_DIAG_UNIT_USED == STD_ON)
/* Global array to store CTDR restore value of configured PWGA channels */
extern VAR(uint16, PWM_NOINIT_DATA)
                                 Pwm_GaaChannelCTDRVal[PWM_TOTAL_DIAG_CHANNELS];
#endif

#define PWM_STOP_SEC_VAR_NO_INIT_16
#if (PWM_AR_VERSION  == PWM_AR_HIGHER_VERSION)
/* Functionality related to R4.2 */
#include "Pwm_MemMap.h"

#elif(PWM_AR_VERSION  == PWM_AR_LOWER_VERSION)
/* Functionality related to R4.0 */
#include "MemMap.h"
#endif

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif  /* PWM_DIAGNOSTIC_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
