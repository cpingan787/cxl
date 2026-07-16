/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Gpt_Cbk.h                                                   */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains pre-compile time parameters.                            */
/* AUTOMATICALLY GENERATED FILE - DO NOT EDIT                                 */
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
 * V1.0.0:  17-Sep-2015 : Initial Version
 *
 * V2.0.0:  31-Oct-2016 : Updated generator to support Autosar 4.2.2 and 4.0.3
 *                        version and removed 3.2.2 Autosar version support.
 *
 * V2.1.0:  28-Oct-2016 : Updated generator to support Autosar 4.2.2 and 4.0.3
 *                        MemMap section macros
 * V2.1.1:  08-Apr-2021 : As part of ARDAABD-5043, the following changes
 *                        are made:
 *                        a) Removed the keyword 'ASIL_B' from memory section
 *                           macros for Autosar 4.2.2.
 *                        b) Copyright information has been updated.
 */
/******************************************************************************/

/*******************************************************************************
**                       Generation Tool Version                              **
*******************************************************************************/
/*
 * TOOL VERSION:    2.4.12
 */

/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
/*
 * INPUT FILE:    E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Gpt_Gpt_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Mcu_Mcu0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\gpt\R422_GPT_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Gpt.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\EcuM\xml\EcuM_Gpt.arxml
 * GENERATED ON:  27 Jan 2026 - 17:47:33
 */

#ifndef GPT_CBK_H
#define GPT_CBK_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#include "Gpt_Cfg.h"
#include "Dem.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define GPT_CBK_AR_RELEASE_MAJOR_VERSION  4U
#define GPT_CBK_AR_RELEASE_MINOR_VERSION  2U
#define GPT_CBK_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define GPT_CBK_SW_MAJOR_VERSION  1U
#define GPT_CBK_SW_MINOR_VERSION  0U


/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#define GPT_START_SEC_CALLOUT_CODE
#include "Gpt_MemMap.h"


/* Implements GPT362 */
/* Implements GPT292 */
/* Implements GPT312_Conf */
/* Implements SWS_Gpt_00362 */
/* Implements SWS_Gpt_00292 */
/* Implements ECUC_Gpt_00312 */
extern FUNC(void, GPT_APPL_CODE) Gpt_Notification_0 (void);
extern FUNC(void, GPT_APPL_CODE) Gpt_Notification_1 (void);
extern FUNC(void, GPT_APPL_CODE) Gpt_Notification_2 (void);

extern FUNC(void, GPT_APPL_CODE) Gpt_WriteVerifyErrorCallback
      ( Dem_EventIdType LddWVErrId, uint8 LucApiId);

#define GPT_STOP_SEC_CALLOUT_CODE
#include "Gpt_MemMap.h"

#endif /* GPT_CBK_H */

/*******************************************************************************
**                          End of File                                       **
*******************************************************************************/
