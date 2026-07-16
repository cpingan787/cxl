/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Port.c                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2018 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains the Schm PORT Stub functions.               */
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
 * V1.0.0:  13-Aug-2015  : Initial version.
 *
 * V2.0.0:  13-Feb-2017  : Following changes are made:
 *                         1. As part of ARDAABC-978, critical section names
 *                            updated
 *
 * V2.0.1:  09-Oct-2017  : Following change is made:
 *                         1. As part of ARDAABD-2441,
 *                            Added SchM_Enter_Port_PORT_CHECK_HW_CONSISTENCY_
 *                            PROTECTION and SchM_Exit_Port_PORT_CHECK_HW_
 *                            CONSISTENCY_PROTECTION section.
 * V2.0.2:  26-Jul-2018  : Following change is made:
 *                         1. As part of ARDAABD-3943,
 *                            Changed section name Port_PORT_SET_PIN_MODE_PROTECTION,
 *                           PORT_SET_PIN_DIR_PROTECTION,PORT_SET_PIN_DEFAULT_DIR_PROTECTION,
 *                           PORT_SET_TO_DIO_ALT_PROTECTION,PORT_INIT_CONFIG_PROTECTION,
 *                           PORT_REFRESH_PORT_INTERNAL_PROTECTION,PORT_SET_PIN_DEFAULT_MODE_PROTECTION,
 *                           PORT_CHECK_HW_CONSISTENCY_PROTECTION to Port_PORT_REGISTER_PROTECTION
 */
/******************************************************************************/

/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "SchM_Port.h"

/*******************************************************************************
**        SchM_Enter_Port_PORT_REGISTER_PROTECTION()    **
*******************************************************************************/
void SchM_Enter_Port_PORT_REGISTER_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Port_PORT_REGISTER_PROTECTION()     **
*******************************************************************************/
void SchM_Exit_Port_PORT_REGISTER_PROTECTION(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
