/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Gpt.c                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2013-2018 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains the Schm GPT Stub functions.                */
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
 * V1.0.0:  12-Mar-2013  : Initial Version
 *
 * V1.0.1:  13-Aug-2014  : As per CR 593, function definitions
 *                         for critical section enter and exit functions are
 *                         added
 *
 * V1.0.2:  01-Jun-2015  : For mantis #26209 following changes are done:
 *                         1. Exclusive area names are updated as follow:
 *                            1.1. TIMERREG_PROTECTION is changed to
 *                                 GPT_TIMERREG_PROTECTION.
 *                            1.2. TIMERINT_PROTECTION is changed to
 *                                 GPT_TIMERINT_PROTECTION.
 *
 * V3.0.0:  13-Feb-2017  : Following changes are made:
 *                         1. As part of ARDAABC-978,critical section names
 *                            updated
 *
 * V3.0.1:  19-Jul-2018  : As part of ARDAABD-3881, copyright information is
 *                         updated.
 */
/******************************************************************************/

/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "SchM_Gpt.h"
#include "Os.h"

/*******************************************************************************
**        SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION()                                **
*******************************************************************************/
void SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION()                                 **
*******************************************************************************/
void SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**        SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION()                                **
*******************************************************************************/
void SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION()                                 **
*******************************************************************************/
void SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/