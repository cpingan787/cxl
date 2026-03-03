/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Pwm.h                                                       */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2017 Renesas Electronics Corporation                          */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file is a stub for Pwm component                                      */
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
 * V1.0.0:  02-Feb-2017 : Initial Version
 */
/******************************************************************************/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Adc.h"

/* Included for Type definitions */
#include "Std_Types.h"
/*******************************************************************************
**                      Version Information                                  **
*******************************************************************************/

#define PWM_AR_VERSION  ADC_AR_VERSION

#define PWM_AR_HIGHER_VERSION   422

#define PWM_AR_LOWER_VERSION    403

/*******************************************************************************
**                      Macro                                                 **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

 #define DEVICE_701542   701542
 #define DEVICE_701543   701543
 #define DEVICE_701546   701546
 #define DEVICE_701547   701547
 #define DEVICE_701557   701557
 #define DEVICE_701560   701560
 #define DEVICE_701561   701561
 #define DEVICE_701562   701562
 #define DEVICE_701563   701563
 #define DEVICE_701566   701566
 #define DEVICE_701567   701567
 #define DEVICE_701577   701577
 #define DEVICE_701580   701580
 #define DEVICE_701581   701581
 #define DEVICE_701582   701582
 #define DEVICE_701583   701583
 #define DEVICE_701586   701586
 #define DEVICE_701587   701587
 #define DEVICE_701597   701597
 #define DEVICE_701602   701602
 #define DEVICE_701603   701603
 #define DEVICE_701610   701610
 #define DEVICE_701611   701611
 #define DEVICE_701612   701612
 #define DEVICE_701613   701613
 #define DEVICE_701620   701620
 #define DEVICE_701621   701621
 #define DEVICE_701622   701622
 #define DEVICE_701623   701623

#define PWM_DIAG_UNIT_USED STD_ON

         /*           Diagnostic registers for 100 pin device                 */
#if((DEVICE_TEST == DEVICE_701580) || (DEVICE_TEST == DEVICE_701581) || \
    (DEVICE_TEST == DEVICE_701610) || (DEVICE_TEST == DEVICE_701611) || \
    (DEVICE_TEST == DEVICE_701620) || (DEVICE_TEST == DEVICE_701621) || \
    (DEVICE_TEST == DEVICE_701560) || (DEVICE_TEST == DEVICE_701561))
  #define PWM_TOTAL_DIAG_CHANNELS 48

         /*           Diagnostic registers for 144 pin device                 */
#elif((DEVICE_TEST == DEVICE_701542) || (DEVICE_TEST == DEVICE_701543) || \
      (DEVICE_TEST == DEVICE_701562) || (DEVICE_TEST == DEVICE_701563) || \
      (DEVICE_TEST == DEVICE_701582) || (DEVICE_TEST == DEVICE_701583) || \
      (DEVICE_TEST == DEVICE_701602) || (DEVICE_TEST == DEVICE_701603) || \
      (DEVICE_TEST == DEVICE_701612) || (DEVICE_TEST == DEVICE_701613) || \
      (DEVICE_TEST == DEVICE_701622) || (DEVICE_TEST == DEVICE_701623)) 
  #define PWM_TOTAL_DIAG_CHANNELS 64

         /*           Diagnostic registers for 176 pin device                 */
#elif((DEVICE_TEST == DEVICE_701546) || (DEVICE_TEST == DEVICE_701547) || \
      (DEVICE_TEST == DEVICE_701557) || (DEVICE_TEST == DEVICE_701566) || \
      (DEVICE_TEST == DEVICE_701567) || (DEVICE_TEST == DEVICE_701577) || \
      (DEVICE_TEST == DEVICE_701586) || (DEVICE_TEST == DEVICE_701587) || \
      (DEVICE_TEST == DEVICE_701597))
  #define PWM_TOTAL_DIAG_CHANNELS 72

#endif

extern void Pwm_SetTriggerDelay(uint8 ChannelNumber,
                                                   uint16 TriggerDelay);
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
