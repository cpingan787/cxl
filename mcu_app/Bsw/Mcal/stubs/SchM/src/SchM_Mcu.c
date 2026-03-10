/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Mcu.c                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016 - 2017 Renesas Electronics Corporation                   */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains the SCHM MCU Stub functions.                */
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
 * V1.0.0:  20-Oct-2016  : Initial Version
 * V1.1.0:  11-Nov-2016  : #ARDAABD-852
 *                         1. SchM functions names changed with infix
 *                            information
 * V1.1.1:  16-Mar-2017  : #ARDAABD-792
 *                         1. Reverted changes from V1.1.0 as per customer
 *                            request
 */
/******************************************************************************/

/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "SchM_Mcu.h"

/*******************************************************************************
**        SchM_Enter_Mcu_PWR_MODE_PSC_PROTECTION()                            **
*******************************************************************************/
void SchM_Enter_Mcu_MCU_PWR_MODE_PSC_PROTECTION(void)
{
  DISABLE_INTERRUPT();
}

/*******************************************************************************
**        SchM_Exit_Mcu_PWR_MODE_PSC_PROTECTION()                             **
*******************************************************************************/
void SchM_Exit_Mcu_MCU_PWR_MODE_PSC_PROTECTION(void)
{
  ENABLE_INTERRUPT();
}

/*******************************************************************************
**        SchM_Enter_Mcu_REGISTER_PROTECTION()                                **
*******************************************************************************/
void SchM_Enter_Mcu_MCU_REGISTER_PROTECTION(void)
{
  DISABLE_INTERRUPT();
}

/*******************************************************************************
**        SchM_Exit_Mcu_REGISTER_PROTECTION()                                 **
*******************************************************************************/
void SchM_Exit_Mcu_MCU_REGISTER_PROTECTION(void)
{
  ENABLE_INTERRUPT();
}

/*******************************************************************************
**        SchM_Enter_Mcu_VARIABLE_PROTECTION()                                **
*******************************************************************************/
void SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION(void)
{
  DISABLE_INTERRUPT();
}

/*******************************************************************************
**        SchM_Exit_Mcu_VARIABLE_PROTECTION()                                **
*******************************************************************************/
void SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION(void)
{
  ENABLE_INTERRUPT();
}

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
