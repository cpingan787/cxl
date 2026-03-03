/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Adc_Cbk.h                                                   */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains Prototype Declarations for ADC callback Notification    */
/* Functions.                                                                 */
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
 * V1.0.0:  03-Sep-2015  : Initial Version
 * V2.0.1:  01-Nov-2016  : The following changes are made:
 *                         1. As a part of JIRA ticket ARDAABC-788,
 *                         updated the copyright to 2016
 * V2.1.0   25-Nov-2016  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABC-940
 *                            Updated memory sections usage
 * V2.1.1   19-Jan-2017  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABC-902
 *                            Include Dem.h moved to Include Section
 * V2.1.2   16-Jun-2021  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABD-5035:
 *                           Removed 'ASIL_B' from the memory section macros
 *                           as follow:
 *                            ADC_START_SEC_CALLOUT_CODE_ASIL_B
 *                            ADC_STOP_SEC_CALLOUT_CODE_ASIL_B
 */
/******************************************************************************/

/*******************************************************************************
**                   Generation Tool Version                                  **
*******************************************************************************/
/*
 * TOOL VERSION:  2.15.6
 */

/*******************************************************************************
**                          Input File                                        **
*******************************************************************************/
/*
 * INPUT FILE:    E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Adc_Adc0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\adc\R422_ADC_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Adc.arxml
 * GENERATED ON:  27 Jan 2026 - 17:47:30
 */

#ifndef ADC_CBK_H
#define ADC_CBK_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Adc_Cfg.h"


/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define ADC_CBK_AR_RELEASE_MAJOR_VERSION  4U
#define ADC_CBK_AR_RELEASE_MINOR_VERSION  2U
#define ADC_CBK_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define ADC_CBK_SW_MAJOR_VERSION  1U
#define ADC_CBK_SW_MINOR_VERSION  1U


/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Prototypes                            **
*******************************************************************************/

  #define ADC_START_SEC_CALLOUT_CODE
#include ADC_MEMMAP_FILE

extern FUNC(void, ADC_APPL_CODE) IoHwAb_Adc_Notification_Group0 (void);
extern FUNC(void, ADC_APPL_CODE) IoHwAb_Adc_Notification_Group1 (void);
extern FUNC(void, ADC_APPL_CODE) IoHwAb_Adc_Notification_Group2 (void);



  #define ADC_STOP_SEC_CALLOUT_CODE
#include ADC_MEMMAP_FILE

#endif /* ADC_CBK_H */

/*******************************************************************************
**                          End of File                                       **
*******************************************************************************/
