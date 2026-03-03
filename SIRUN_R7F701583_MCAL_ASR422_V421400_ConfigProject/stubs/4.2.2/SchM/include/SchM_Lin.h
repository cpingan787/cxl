/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Lin.h                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2013-2017 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file is a stub for SchM Component                                     */
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
 * V1.0.0:  26-Mar-2013  : Initial Version
 *
 * V1.0.1:  07-Aug-2013  : As per CR 225, Copyright and Device name are updated
 *                         as part of merge activity.
 *
 * V1.0.2:  28-Feb-2014  : As per CR 437, following changes are made:
 *                         1. Macros 'SchM_Enter_Lin_REGISTER_PROTECTION' and
 *                            'SchM_Exit_Lin_REGISTER_PROTECTION' are added.
 *                         2. Copyright information is updated.
 *
 * V1.0.3:  08-Aug-2014  : As per CR 586, following changes are made:
 *                         1. Exclusive Area is updated as function.
 *                         2. Std_Types.h file included.
 *
 * V1.0.4:  04-June-2015 : As part of Mantis #26199, following changes are made:
 *                         1. SchM_Enter_Lin_REGISTER_PROTECTION and
 *                            SchM_Enter_Lin_RAM_DATA_PROTECTION are changed
 *                            to SchM_Enter_Lin_LIN_REGISTER_PROTECTION and
 *                            SchM_Enter_Lin_LIN_RAM_DATA_PROTECTION.
 *                         2. Copyright information is updated.
 * V2.0.0:  13-Feb-2017 :  Updated definition of SchM_Enter and SchM_Exit as
 *                         requested by ARDAABC-978

 */
/******************************************************************************/
#ifndef SCHM_LIN_H
#define SCHM_LIN_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"
/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

/*******************************************************************************
**                      Exclusive Area                                        **
*******************************************************************************/
/*
 * This type define the exclusive areas along with scheduler services are used
 * to provide data integrity for shared resources
 */

extern void SchM_Enter_Lin_LIN_RAM_DATA_PROTECTION(void);
extern void SchM_Exit_Lin_LIN_RAM_DATA_PROTECTION(void);

extern void SchM_Enter_Lin_LIN_REGISTER_PROTECTION(void);
extern void SchM_Exit_Lin_LIN_REGISTER_PROTECTION(void);

#endif /* SCHM_LIN_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
