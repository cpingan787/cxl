/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = SchM_Wdg_59_DRIVERA.c                                       */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2016-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This application file contains the Schm WDG Stub functions.                */
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
 * V1.0.0:  01-Aug-2016  : Initial Version
 * V1.0.1:  26-Oct-2016  : Changed according to ARDAABD-851
 * V1.0.2:  14-Dec-2016  : Changed according to ARDAABD-851
 * V1.0.3:  13-Apr-2021  : As part of ARDAABD-5021, the following changes are
 *                         made:
 *                         a) Updated the function name format from
 *                         'SchM_<Enter/Exit>_Wdg_59_DriverA_<Exclusive_Area>'
 *                         to
 *                         'SchM_<Enter/Exit>_Wdg_59_DRIVERA_<Exclusive_Area>'.
 *                         b) Updated copyright information.
 * V1.0.4:  06-Aug-2021  : As part of ARDAABD-6921, the following changes are
 *                         made:
 *                         a) Renamed the SchM file from
 *                            'SchM_Wdg_59_DriverA.c' to
 *                            'SchM_Wdg_59_DRIVERA.c'.
 *                         b) Updated SchM header file include name from
 *                            'SchM_Wdg_59_DriverA.h' to
 *                            'SchM_Wdg_59_DRIVERA.h'.
 * V1.0.5:  02-Oct-2025  : As part of ARDAABD-10545, the following changes are
 *                         made: 
 *                         a) Renamed the SchM file
 *                         from 'SchM_Wdg_59_DRIVERA.h' to
 *                         'SchM_Wdg_59_DriverA.h'.
 *                         b) Updated the function name format from
 *                         'SchM_<Enter/Exit>_Wdg_59_DRIVERA_<Exclusive_Area>'
 *                         to
 *                         'SchM_<Enter/Exit>_Wdg_59_DriverA_<Exclusive_Area>'.
 */
/******************************************************************************/

/*******************************************************************************
**                     Include Section                                        **
*******************************************************************************/
#include "SchM_Wdg_59_DriverA.h"

/*******************************************************************************
**        SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION()   **
*******************************************************************************/
void SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION()    **
*******************************************************************************/
void SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_MODE_SWITCH_PROTECTION(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**        SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION()         **
*******************************************************************************/
void SchM_Enter_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION(void)
{
  SuspendAllInterrupts();
}

/*******************************************************************************
**        SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION()          **
*******************************************************************************/
void SchM_Exit_Wdg_59_DriverA_WDG_59_DRIVERA_TRIGG_PROTECTION(void)
{
  ResumeAllInterrupts();
}

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
