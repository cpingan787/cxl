/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Icu_Cbk.h                                                   */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2016 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains Prototype Declarations for ICU callback Notification    */
/* Functions.                                                                 */
/* AUTOMATICALLY GENERATED FILE - DO NOT EDIT                                 */
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
 * V1.0.0:  21-Sep-2015 : Initial version
 * V1.0.1:  30-Sep-2016 : #ARDAABD-487
 *                        1. Updated copyright
 *                        2. Added MemMap switch
 * V2.0.0:  05-Oct-2016 : #ARDAABD-487
 *                        1. Updated version to 2.0.0, ASR4.2.2
 */
/******************************************************************************/

/*******************************************************************************
**                       Generation Tool Version                              **
*******************************************************************************/
/*
 * TOOL VERSION:    2.0.8
 */
/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/

/*
 * INPUT FILE:    E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Icu_Icu_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\icu\R422_ICU_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Icu.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\EcuM\xml\EcuM_Icu.arxml
 * GENERATED ON:  19 Mar 2026 - 20:50:31
 */

#ifndef ICU_CBK_H
#define ICU_CBK_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Dem.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define ICU_CBK_AR_RELEASE_MAJOR_VERSION  4U
#define ICU_CBK_AR_RELEASE_MINOR_VERSION  2U
#define ICU_CBK_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define ICU_CBK_SW_MAJOR_VERSION  1U
#define ICU_CBK_SW_MINOR_VERSION  1U


/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/


#define ICU_START_SEC_APPL_CODE
#include "Icu_MemMap.h"

/* TRACE [R4, ICU214] */
/* TRACE [R4, ICU225_Conf] */
extern FUNC(void, ICU_APPL_CODE) Icu_Edge_Detect_KL30 (void);
/* TRACE [R4, ICU214] */
/* TRACE [R4, ICU225_Conf] */
extern FUNC(void, ICU_APPL_CODE) Icu_Edge_Detect_NAD (void);
/* TRACE [R4, ICU214] */
/* TRACE [R4, ICU225_Conf] */
extern FUNC(void, ICU_APPL_CODE) Icu_Edge_Detect_EcallBtn (void);
/* TRACE [R4, ICU214] */
/* TRACE [R4, ICU225_Conf] */
extern FUNC(void, ICU_APPL_CODE) Icu_Edge_Detect_Imu_Int1 (void);
/* TRACE [R4, ICU214] */
/* TRACE [R4, ICU225_Conf] */
extern FUNC(void, ICU_APPL_CODE) Icu_Edge_Detect_Imu_int2 (void);
/* TRACE [R4, ICU214] */
/* TRACE [R4, ICU225_Conf] */
extern FUNC(void, ICU_APPL_CODE) Icu_Edge_Detect_Rtc_Int (void);


#define ICU_STOP_SEC_APPL_CODE
#include "Icu_MemMap.h"

#endif /* ICU_CBK_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
