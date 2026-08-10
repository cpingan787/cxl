/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Adc_PBcfg.c                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains post-build time parameters.                             */
/* AUTOMATICALLY GENERATED FILE - DO NOT EDIT                                 */
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
 * V1.0.0:  03-Sep-2015  : Initial Version
 * V1.0.1:  12-Jan-2016  : The following changes are made:
 *                           1. As a part of JIRA ticket ARDAAGA-72,
 *                              Added Adc_GstPwmDiagDoubleResultData in the
 *                              template.
 *                           2. Include section is updated.
 *                           3. MISRA justifications are added.
 * V2.0.0   05-Aug-2016  : The following changes are made:
 *                         1. As a part of JIRA ticket ARDAABC-788,
 *                            added FUSA implementation.
 * V2.0.1   01-Nov-2016  : The following changes are made:
 *                         1. As a part of JIRA ticket ARDAABC-788,
 *                            FUSA Error Notification function pointer replaced
 *                            with a macro.
 * V2.0.2   20-Nov-2016  : The following changes are made:
 *                         1. As a part of JIRA ticket ARDAABC-929,
 *                            TYPEDEFS are used instead of AUTOMATIC
 * V2.1.0   25-Nov-2016  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABC-940
 *                            Updated memory sections usage.
 * V2.1.1   06-Dec-2016  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABC-913
 *                            Added <ADC_> prefix to remained macro
 *                            definitions.
 * V2.1.2   08-Dec-2016  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABC-586
 *                            QAC justification has been added.
 * V2.2.0   15-Jul-2017  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABD-1725
 *                            Structure for Mux delay support is generated.
 * V2.2.1   27-Sep-2017     : Following changes are made:
 *                            1. As part of ARDAABD-2387,
 *                             a. Array names are corrected based on the data
 *                                type names as per requirement MCAL052.
 *                             b. Variable names are corrected based on the data
 *                                type names as per requirement MCAL052.
 *                            2. As part of ARDAABD-2448,
 *                             a. Adc_GstPwmDiagResultData,
 *                                Adc_GaaResultGroupRamData,
 *                                Adc_GstPwmDiagDoubleResultData are declared in
 *                                DMA specific memory sections.
 *                            3. As part of ARDAABD-2468,
 *                               Inclusion for Iocommon_Defines.h is added
 * V2.2.2   25-May-2018  : Following changes are made:
 *                         1.As part of merging activity  #ARDAABD-3452,
 *                           a.Structure elements pImrIntpAddress,
 *                             pDmaImrIntCntlReg, usImrMask,usDmaImrMask,
 *                             usImrErrMask, pImrErrIntAddress are removed
 *                             and added pIcrIntpAddress.Ref: ARDAABD-2158
 *                           b.MISRA violation justifications are added
 *                           c.Arrays Adc_GaaHwUnitIndex, Adc_GaaSgUnitIndex
 *                             Adc_GaaHwUnit, Adc_GaaSGUnit are mapped to
 *                             memory section CONFIG_DATA_8,
 *                             Adc_GaaChannelToGroup is mapped to
 *                             memory section CONFIG_DATA_16 and
 *                             Adc_GaaHWGroupTrigg , Adc_GaaLimitCheckRange
 *                             are mapped to memory section CONFIG_DATA_32.
 *                             Ref:ARDAABD-908
 *                           d.Copyright updated.
 *                         2.As part of ARDAABD-3813,
 *                           Adc_GstConfiguration structure is updated to add
 *                           the element ucThresholdOffset.
 *                         3.As part of ARDAABD-3112, modified the declaration
 *                           of Adc_GpQueueFullNotificationPointer.
 * V2.2.3   02-Apr-2021  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABD-4903
 *                            Added pPwmChannelTriggerStatus in structure
 *                            Adc_GstConfiguration.
 * V2.2.4   17-Jun-2021  : The following changes are made:
 *                         1. As part of JIRA ticket ARDAABD-5035:
 *                           Removed 'ASIL_B' from the memory section macros
 *                           as follow:
 *                            DC_START_SEC_VAR_DMA_NO_INIT_ASIL_B_32
 *                            ADC_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_32
 *                            ADC_START_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED
 *                            ADC_STOP_SEC_VAR_NO_INIT_ASIL_B_UNSPECIFIED
 *                            ADC_START_SEC_VAR_DMA_NO_INIT_ASIL_B_16
 *                            ADC_STOP_SEC_VAR_DMA_NO_INIT_ASIL_B_16
 *                            ADC_START_SEC_VAR_DMA_DB_NO_INIT_ASIL_B_32
 *                            ADC_STOP_SEC_VAR_DMA_DB_NO_INIT_ASIL_B_32
 *                            ADC_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
 *                            ADC_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED
 *                            ADC_START_SEC_CONFIG_DATA_ASIL_B_8
 *                            ADC_STOP_SEC_CONFIG_DATA_ASIL_B_8
 *                            ADC_START_SEC_CONFIG_DATA_ASIL_B_16
 *                            ADC_STOP_SEC_CONFIG_DATA_ASIL_B_16
 *                            ADC_START_SEC_CONFIG_DATA_ASIL_B_32
 *                            ADC_STOP_SEC_CONFIG_DATA_ASIL_B_32
 * V2.2.5   29-Jul-2021  : As part of ARDAABD-6582, updated the generation
 *                         of elements in the array 'Adc_GaaChannelToGroup'.
 * V2.2.6   12-Oct-2021  : 1. As part of ARDAABD-5422, the following changes are
 *                            made:
 *                            a) Added the array 'Adc_GaaBufferToChannel' for
 *                               F1K devices.
 *                            b) Added definition of 'Adc_GaaResultDataStatus'
 *                               and 'Adc_GaaResultDataBuffer' for F1K devices.
 *                            c) Added the elements 'pBufferToChannel'
 *                               'pPwmDiagResultBuffer', 'pPwmDiagStatusBuffer'
 *                               and 'ucMaxDiagChannels' for F1K devices in the
 *                               structure 'Adc_GstConfiguration'.
 *                            d) Added the element 'ucChannelBufferIndex' for
 *                               F1K devices in the structure
 *                               'Adc_GstPwmDiagGroupConfig'.
 *                            e) Added tags and justification for Msg(2:3674).
 *                         2. As part of ARDAABD-6654, the following changes are
 *                            made:
 *                            a) Added definition of 'Adc_GaaGroupSetting'.
 *                            b) Added the element 'pGroupSetting' in the
 *                               structure 'Adc_GstConfiguration'.
 *                            c) Added tags and justification for Msg(2:2022).
 * V2.2.7   28-Oct-2021  : As part of review based on ARDAABD-5035, the
 *                         following changes are made:
 *                         a) Added justification for Msg(2:0832) and
 *                            Msg(4:5087) in the File banner.
 *                         b) Added START and END tags for Msg(2:0832) and
 *                            Msg(4:5087) in areas of 'ADC_MEMMAP_FILE'
 *                            inclusions.
 * V2.2.8   16-Nov-2021  : As part of review based on ARDAABD-6582, updated the
 *                         generation of elements in the array
 *                         'Adc_GaaChannelToGroup'.
 */
/******************************************************************************/

/*******************************************************************************
**                   Generation Tool Version                                  **
*******************************************************************************/
/*
 * TOOL VERSION:  2.15.6
 */

/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
/*
 * INPUT FILE:    D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Adc_Adc0_ecuc.arxml
 *                D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\modules\adc\R422_ADC_F1x_BSWMDT.arxml
 *                D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Adc.arxml
 * GENERATED ON:   8 Jul 2026 - 14:42:38
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Adc_PBTypes.h"
#include "Adc_Cbk.h"
#include "Iocommon_Defines.h"
/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define ADC_PBCFG_C_AR_RELEASE_MAJOR_VERSION  4U
#define ADC_PBCFG_C_AR_RELEASE_MINOR_VERSION  2U
#define ADC_PBCFG_C_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define ADC_PBCFG_C_SW_MAJOR_VERSION   1U
#define ADC_PBCFG_C_SW_MINOR_VERSION   1U


/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:3635) Function identifier used as a pointer without     */
/*                  a preceding & operator                                    */
/* Rule          : MISRA-C:2004 Rule 16.9                                     */
/* Justification : Function pointer is used as pointer without a preceding &  */
/*                 operator since this function will be invoked during        */
/*                 notification                                               */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:3635)-1 and                           */
/*                 END Msg(4:3635)-1 tags in the code.                        */

/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:3408) Has external linkage and is being defined without */
/*                 any previous declaration.                                  */
/* Rule          : MISRA-C:2004 Rule 8.8                                      */
/* Justification : This sub structure is accessed as a member in main         */
/*                 structure and hence declaration is not required.           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:3408)-2 and                           */
/*                 END Msg(4:3408)-2 tags in the code.                        */

/******************************************************************************/

/* 3. MISRA C RULE VIOLATION::                                                */
/* Message       : (4:0303) Cast between a pointer to volatile object and     */
/*                 an integral type.                                          */
/* Rule          : MISRA-C:2004 Rule 11.3                                     */
/*                 REFERENCE - ISO-6.3.4 Semantics                            */
/* Justification : Typecasting is done as per the register size, to access    */
/*                 hardware registers.                                        */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:0303)-3 and                           */
/*                 END Msg(4:0303)-3 tags in the code.                        */

/******************************************************************************/

/* 4. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:3684) Array declared with unknown size.                 */
/* Rule          : MISRA-C:2004 Rule 8.12                                     */
/* Justification : Arrays used are verified in the file which are only        */
/*                 declarations and size is configuration dependent.          */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:3684)-4 and                           */
/*                 END Msg(4:3684)-4 tags in the code.                        */

/******************************************************************************/

/* 5. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include        */
/*                 memmap is following AUTOSAR rule.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(4:5087)-5 and END Msg(4:5087)-5         */
/*                 tags in the code.                                          */
/******************************************************************************/

/*******************************************************************************
**                               QAC Warnings                                 **
*******************************************************************************/

/******************************************************************************/
/* 1. QAC Warning:                                                            */
/* Message       : (2:3674) Array size defined implicitly by the number of    */
/*                 initializers.                                              */
/* Justification : Array contains generated data. Size is given by the number */
/*                 of elements contained and is configuration dependent.      */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning START Msg(2:3674)-1 and               */
/*                 END Msg(2:3674)-1 tags in the code.                        */

/******************************************************************************/

/* 2. QAC Warning:                                                            */
/* Message       : (2:2022) A tentative definition is being used. Is it       */
/*                 appropriate to include an explicit initializer ?           */
/* Justification : The Global RAM variables are defined in this translation   */
/*                 unit. The object shall be initialized in Adc.c.            */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning START Msg(2:2022)-2 and               */
/*                 END Msg(2:2022)-2 tags in the code.                        */

/******************************************************************************/

/* 3. QAC Warning:                                                            */
/* Message       : (2:0832) Macro substitution in #include preprocessing      */
/*                 directive.                                                 */
/* Justification : Required to optimize MemMap inclusion because of ASR403    */
/*                 and ASR422 support.                                        */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning START Msg(2:0832)-3 and               */
/*                 END Msg(2:0832)-3 tags in the code.                        */

/******************************************************************************/

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (ADC_PBTYPES_AR_RELEASE_MAJOR_VERSION != \
      ADC_PBCFG_C_AR_RELEASE_MAJOR_VERSION)
 #error "Adc_PBcfg.c : Mismatch in Release Major Version"
#endif

#if (ADC_PBTYPES_AR_RELEASE_MINOR_VERSION != \
      ADC_PBCFG_C_AR_RELEASE_MINOR_VERSION)
 #error "Adc_PBcfg.c : Mismatch in Release Minor Version"
#endif

#if (ADC_PBTYPES_AR_RELEASE_REVISION_VERSION != \
      ADC_PBCFG_C_AR_RELEASE_REVISION_VERSION)
 #error "Adc_PBcfg.c : Mismatch in Release Revision Version"
#endif

#if (ADC_PBTYPES_SW_MAJOR_VERSION != ADC_PBCFG_C_SW_MAJOR_VERSION)
  #error "Adc_PBcfg.c : Mismatch in Software Major Version"
#endif

#if (ADC_PBTYPES_SW_MINOR_VERSION != ADC_PBCFG_C_SW_MINOR_VERSION)
  #error "Adc_PBcfg.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
  #define ADC_START_SEC_VAR_DMA_NO_INIT_32
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */

/* Maximum number of PWM Diagnostic groups enabled at any given point of time */
/* MISRA Violation: START Msg(4:3408)-2 */
/* VAR(uint32, ADC_NOINIT_DATA) Adc_GaaPwmDiagResultData[]; */
/* END Msg(4:3408)-2 */
  #define ADC_STOP_SEC_VAR_DMA_NO_INIT_32
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

  #define ADC_START_SEC_VAR_NO_INIT_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */
/* RAM Allocation of PWM diagnostic group */
/* MISRA Violation: START Msg(4:3408)-2 */
/* VAR(Adc_PwmGroupRamData, ADC_NOINIT_DATA) Adc_GstPwmDiagGroupRamData[]; */
/* END Msg(4:3408)-2 */
/* SG Unit Queue Size */
/* VAR(Adc_GroupType, ADC_NOINIT_DATA) Adc_GaaSgUnitPriorityQueue[]; */

  #define ADC_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */
  #define ADC_START_SEC_VAR_DMA_NO_INIT_16
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */
/* RAM Allocation of result buffer for the configured group */
/* VAR(Adc_ValueGroupType, ADC_NOINIT_DATA) Adc_GaaResultGroupRamData[]; */

  #define ADC_STOP_SEC_VAR_DMA_NO_INIT_16
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */


  #define ADC_START_SEC_VAR_NO_INIT_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

/* RAM Allocation of Channel group data */
VAR(Adc_ChannelGroupRamData, ADC_NOINIT_DATA) Adc_GstGroupRamData[1];

/* RAM Allocation of Scan unit data */
/* MISRA Violation: START Msg(4:3684)-4 */
VAR(Adc_SgUnitRamData, ADC_NOINIT_DATA) Adc_GstSgUnitRamData[1];
/* END Msg(4:3684)-4 */

/* RAM Allocation of Group Runtime data */
/* MISRA Violation: START Msg(4:3684)-4 */
VAR(Adc_RunTimeData, ADC_NOINIT_DATA) Adc_GstRunTimeData[1];
/* END Msg(4:3684)-4 */

/* RAM Allocation of channels to change the threshold */
/* MISRA Violation: START Msg(4:3408)-2 */
/* VAR(uint16, ADC_NOINIT_DATA) Adc_GaaFlexibleChannelToGroup[]; */
/* END Msg(4:3408)-2 */

/* RAM Allocation to store Threshold value */
/* MISRA Violation: START Msg(4:3408)-2 */
/* VAR(uint32, ADC_NOINIT_DATA) Adc_GaaFlexibleLimitCheckRange[]; */
/* END Msg(4:3408)-2 */

/* RAM Allocation to store channel enable or disable status */
VAR(boolean, ADC_NOINIT_DATA) Adc_GaaChannelToDisableEnable[16];

/* QAC Warning: START Msg(2:2022)-2 */
/* Global array to store the flag for restart of ADC groups */
/* VAR(boolean, ADC_NOINIT_DATA) Adc_GaaGroupSetting[]; */

/* RAM Allocation to buffer the result of PWM diagnostic channels */
/* VAR(uint16, ADC_NOINIT_DATA) Adc_GaaResultDataBuffer[]; */

/* RAM Allocation to buffer the read status of PWM diagnostic channels */
/* VAR(boolean, ADC_NOINIT_DATA) Adc_GaaResultDataStatus[]; */
/* END Msg(2:2022)-2 */

  #define ADC_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

  #define ADC_START_SEC_VAR_DMA_DB_NO_INIT_32
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */
/* MISRA Violation: START Msg(4:3408)-2 */
/* VAR(uint32, ADC_NOINIT_DATA) Adc_GaaPwmDiagDoubleResultData[]; */
/* END Msg(4:3408)-2 */
  #define ADC_STOP_SEC_VAR_DMA_DB_NO_INIT_32
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

  #define ADC_START_SEC_CONFIG_DATA_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

/* RAM Initialization of ADC Channel Configuration */
/* MISRA Violation: START Msg(4:3408)-2 */
CONST(Adc_ConfigType, ADC_CONST) Adc_GstConfiguration[] =
{
  /* Index: 0 - AdcConfigSet0 */
  {
    /* ulStartOfDbToc */
    0x0EDEC108UL,

    /* pHWUnitConfig */
    &Adc_GstHWUnitConfig[0],

    /* pSgUnitConfig */
    &Adc_GstSgUnitConfig[0],

    /* pGroupConfig */
    &Adc_GstGroupConfig[0],

    /* pGroupHWTrigg */
    NULL_PTR,

    /* pChannelToGroup */
    &Adc_GaaChannelToGroup[0],

    /* pHwUnitIndex */
    &Adc_GaaHwUnitIndex[0],

    /* pSgUnitIndex */
    &Adc_GaaSgUnitIndex[0],

    /* pGroupRamData */
    &Adc_GstGroupRamData[0],

    /* pSgUnitRamData */
    &Adc_GstSgUnitRamData[0],

    /* pRunTimeData */
    &Adc_GstRunTimeData[0],

    /* pChannelToDisableEnable */
    &Adc_GaaChannelToDisableEnable[0],

    /* ucMaxSwTriggGroups */
    0x01U,

    /* ucNoOfGroups */
    0x01U,

    /* ucNoOfChannels */
    0x10U
  }
};


/* END Msg(4:3408)-2 */

/* Structure for HW Unit configuration */
CONST(Adc_HwUnitConfigType, ADC_CONST) Adc_GstHWUnitConfig[] =
{
  /* Index: 0 - AdcHwUnit */
  {
    /* ucHwUnit */
    0x00U,

    /* ucSGOffset */
    0x00U,

    /* pIntpAddress */
    /* MISRA Violation: START Msg(4:0303)-3 */
    (P2VAR(volatile uint16, TYPEDEF, ADC_CONFIG_DATA))&ICADCA0I0,
    /* END Msg(4:0303)-3 */

    /* ulHwUnitSettings */
    0x00000000UL,

    /* ulHwSamplingTime */
    0x00000012UL,

    /* ucSgUnitCount */
    0x01U,

    /* ucVirChannelCount */
    0x10U
  }
};



/* Structure for SG unit configuration */
CONST(Adc_HwSgUnitType, ADC_CONST) Adc_GstSgUnitConfig[] =
{
  /* Index: 0 - AdcHwScanGroup1 */
  {
    /* ucSgRegIndex */
    0x00U,

    /* pQueue */
    NULL_PTR,

    /* pIcrIntpAddress */
    /* MISRA Violation: START Msg(4:0303)-3 */
    (P2VAR(volatile uint16, TYPEDEF, ADC_CONFIG_DATA))&ICADCA0I0,
    /* END Msg(4:0303)-3 */

    /* enFunctionalityModeType */
    ADC_INTERRUPT_MODE,

    /* ucDataRegisterIndex */
    0x00U,

    /* ucAdcSgQueueSize */
    0x00U,

    /* ucSgUnitId */
    ADC_SG1
  }
};



/* Structure for Group configuration */
CONST(Adc_GroupConfigType, ADC_CONST) Adc_GstGroupConfig[] =
{
  /* Index: 0 - AdcGroup */
  {
    /* pGroupNotificationPointer */
    IoHwAb_Adc_Notification_Group0,

    /* ulStartVirChPtr */
    0x00000000UL,

    /* ddNumberofSamples */
    0x01U,

    /* ucHwUnitIndex */
    0x00U,

    /* ucSgUnitIndex */
    0x00U,

    /* ucChannelToGroupIndex */
    0x00U,

    /* ucGroupSettings */
    0x05U,

    /* ucChannelCount */
    0x10U
  }
};



/* Structure for ADC PWM Diagnostic Group configuration */
/* CONST(Adc_PwmDiagGroupConfigType, ADC_CONST) Adc_GstPwmDiagGroupConfig[]; */

/* Structure for PWM Diagnostic Group Trigger Source Ids */
/* CONST(Adc_PwmDiagIds, ADC_CONST) Adc_GstPwmDiagIds[]; */

/* Structure for DMA channel configuration for SGm unit */
/* CONST(Adc_DmaUnitConfig, ADC_CONST) Adc_GstDmaUnitConfig[]; */

/* Mapping of External mux delay counter value to channel Id */
/* CONST(MuxDelayVal, ADC_CONFIG_CONST) Adc_GstMuxDelayVal[]; */




  #define ADC_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */
  #define ADC_START_SEC_CONFIG_DATA_8
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

/* Hardware Index Mapping array */
CONST(uint8, ADC_CONST) Adc_GaaHwUnitIndex[] =
{
  /* HW Unit Id: 0 */
  0x00U,

  /* HW Unit Id: 1 */
  0xFFU
};



/* Scan Group Index Mapping array */
CONST(uint8, ADC_CONST) Adc_GaaSgUnitIndex[] =
{
  /* Index: 0 - SG Unit Id: 1 */
  0x00U,

  /* Index: 1 - SG Unit Id: 2 */
  0xFFU,

  /* Index: 2 - SG Unit Id: 3 */
  0xFFU,

  /* Index: 3 - 4 */
  0xFFU,

  /* Index: 4 - 5 */
  0xFFU,

  /* Index: 5 - 6 */
  0xFFU
};



/* Mapping of DMA channel Id to the HW unit */
/* CONST(uint8, ADC_CONFIG_CONST) Adc_GaaHwUnit[]; */

/* Mapping of DMA channel Id to the SGm unit */
/* CONST(uint8, ADC_CONFIG_CONST) Adc_GaaSGUnit[]; */

  #define ADC_STOP_SEC_CONFIG_DATA_8
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

  #define ADC_START_SEC_CONFIG_DATA_16
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

/* Channel list */
CONST(uint16, ADC_CONFIG_CONST) Adc_GaaChannelToGroup[] =
{
  /* Index: 0 - Group Id 0, physical channels ANI0..ANI15 */
   0x0000U,
   0x0001U,
   0x0002U,
   0x0003U,
   0x0004U,
   0x0005U,
   0x0006U,
   0x0007U,
   0x0008U,
   0x0009U,
   0x000AU,
   0x000BU,
   0x000CU,
   0x000DU,
   0x000EU,
   0x000FU
};



/* Channel to Buffer Map */
/* MISRA Violation: START Msg(2:3674)-1 */
/* CONST(uint16, ADC_CONFIG_CONST) Adc_GaaBufferToChannel[]; */
/* END Msg(2:3674)-1 */

  #define ADC_STOP_SEC_CONFIG_DATA_16
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */
  #define ADC_START_SEC_CONFIG_DATA_32
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */

/* Structure for HW trigger group configuration */
/* CONST(uint32, ADC_CONST) Adc_GaaHWGroupTrigg[]; */

/* Structure for limit check range configuration */
/* CONST(uint32, ADC_CONST) Adc_GaaLimitCheckRange[]; */

  #define ADC_STOP_SEC_CONFIG_DATA_32
/* MISRA Violation: START Msg(4:5087)-5 */
/* QAC Warning: START Msg(2:0832)-3 */
#include ADC_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* END Msg(4:5087)-5 */
/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

/*******************************************************************************
**                          End of File                                       **
*******************************************************************************/
