/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Icu.c                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016 Renesas Electronics Corporation                          */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains the Schm ICU Stub functions.                */
/*                                                                            */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas.            */
/* Any warranty is expressly disclaimed and excluded by Renesas, either       */
/* expressed or implied, including but not limited to those for               */
/* non-infringement of intellectual property, merchantability                 */
/* and/or fitness for the particular purpose                                  */
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
 * V1.0.0:  10-Oct-2016  : Initial Version
 */
/******************************************************************************/

/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "SchM_Icu.h"

/*******************************************************************************
**        SchM_Enter_Icu_CHANNEL_DATA_PROTECTION()                            **
*******************************************************************************/
void SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Icu_CHANNEL_DATA_PROTECTION()                             **
*******************************************************************************/
void SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**        SchM_Enter_Icu_TIMESTAMP_DATA_PROTECTION()                          **
*******************************************************************************/
void SchM_Enter_Icu_ICU_TIMESTAMP_DATA_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Icu_TIMESTAMP_DATA_PROTECTION()                           **
*******************************************************************************/
void SchM_Exit_Icu_ICU_TIMESTAMP_DATA_PROTECTION(void)
{
  ResumeAllInterrupts();
}
/*******************************************************************************
**        SchM_Enter_Icu_SIGNALMEASURE_DATA_PROTECTION()                      **
*******************************************************************************/
void SchM_Enter_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Icu_SIGNALMEASURE_DATA_PROTECTION()                       **
*******************************************************************************/
void SchM_Exit_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION(void)
{
  ResumeAllInterrupts();
}
/*******************************************************************************
**        SchM_Enter_Icu_EDGECOUNT_DATA_PROTECTION()                          **
*******************************************************************************/
void SchM_Enter_Icu_ICU_EDGECOUNT_DATA_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Icu_EDGECOUNT_DATA_PROTECTION()                           **
*******************************************************************************/
void SchM_Exit_Icu_ICU_EDGECOUNT_DATA_PROTECTION(void)
{
  ResumeAllInterrupts();
}
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
