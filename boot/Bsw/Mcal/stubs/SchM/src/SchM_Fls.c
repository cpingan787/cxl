/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Fls.c                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2013-2017 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains the Schm FLS Stub functions.                */
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
 * V1.0.0:  21-Jun-2013  : Initial version.
 *
 * V1.0.1:  18-Jul-2014  : As per CR 556, following changes are made:
 *                         1. The Copyright information is updated.
 *                         2. File is updated for adding function definitions
 *                            for critical section enter and exit functions.
 *
 * V1.0.2:  15-May-2015  : As part of P1x V4.00.04 release, following changes
 *                         are made:
 *                         1. As per mantis #28186, section
 *                            DRIVERSTATE_DATA_PROTECTION is renamed to
 *                            FLS_DRIVERSTATE_DATA_PROTECTION.
 *                         2. Updated file version and copyright information.
 *
 * V1.0.3:  24-Oct-2016  : #ARDAABD-854
 *                         1. Reworked Schm_<Enter/Exit> functions for
 *                            aligning with Rte requirements
 *
 * V1.0.4:  10-Jan-2017  : #ARDAABD-854
 *                         1. Removed Schm_<Enter/Exit> function
 *                            implementations for vendor API infix not present
 *                            note*: vendor API infix always present
 *
 */
/******************************************************************************/

/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "SchM_Fls.h"

/*******************************************************************************
**        SchM_Enter                                                          **
*******************************************************************************/

void SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION(void)
{
  SuspendAllInterrupts();
}
void SchM_Enter_Fls_FLS_REGISTER_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit                                                           **
*******************************************************************************/

void SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION(void)
{
  ResumeAllInterrupts();
}
void SchM_Exit_Fls_FLS_REGISTER_PROTECTION(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
