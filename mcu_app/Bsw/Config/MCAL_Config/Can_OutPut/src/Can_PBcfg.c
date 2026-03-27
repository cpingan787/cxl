/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_PBcfg.c                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2021 Renesas Electronics Corporation. All rights reserved.    */
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
/*              Devices:        R7F701583                                     */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*============================================================================*/
/* Version    Last modified   Description                                     */
/*============================================================================*/
/* V1.0.0:    16-Mar-2021   : Initial Version                                 */


/*******************************************************************************
**                      Generation Tool Version                               **
*******************************************************************************/
/*                                                                            */
/* TOOL VERSION:  CanF1x.dll version: 1.0.3, MCALConfGen.exe version: 1.0.4   */
/*                                                                            */

/*******************************************************************************
**                      Input File                                            **
*******************************************************************************/
/*
 * INPUT FILE:    E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Can_Can_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Mcu_Mcu0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\can\R422_CAN_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Can.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\EcuM\xml\EcuM_can.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Os\xml\Os_Can.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_EcuM_EcuM_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\common_family\generator\Sample_Application_F1x.trxml
 * GENERATED ON:  20 Mar 2026 - 04:11:27
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* CAN Post Build configuration header */
#include "Can.h"
#include "Can_PBTypes.h"
#include "Can_LTTypes.h"
#include "Can_RegStruct.h"

/*******************************************************************************
**                      QAC Warning                                           **
*******************************************************************************/

/* 1. QAC Warning:                                                            */
/* Message       : (2:0315) [I] Implicit conversion from a pointer to object  */
/*                 type to a pointer to void.                                 */
/* Rule          : No MISRA-C:2004 Rules applicable to message 0315           */
/* Justification : The actual array can't be decided statically, type casting */
/*                 from void* is necessary to hide internal types from the    */
/*                 header files which are exposed to user.                    */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:0315)-1 and                           */
/*                 END Msg(2:0315)-1 tags in the code.                        */
/******************************************************************************/

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3684) Array declared with unknown size.                 */
/* Rule          : MISRA-C:2004 Rule-8.12                                     */
/* Justification : Arrays used are verified in the file which are only        */
/*                 declarations and size is configuration dependent.          */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:3684)-1 and                           */
/*                 END Msg(4:3684)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3447) Is being declared with external linkage but this  */
/*                 declaration is not in a header file.                       */
/* Rule          : MISRA-C:2004 Rule-8.8                                      */
/* Justification : Since number or names of symbols in this file              */
/*                 is according to a configuration,                           */
/*                 this can't be declared in a header file statically.        */
/* Verification  : This symbol refers to an auto-generated file only.         */
/*                 It is verified by the evaluation of the Generation Tool.   */
/* Reference     : Look for START Msg(4:3447)-2 and                           */
/*                 END Msg(4:3447)-2 tags in the code.                        */
/******************************************************************************/

/* 3. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include        */
/*                 memmap is following AUTOSAR rule.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(4:5087)-3 and                           */
/*                 END Msg(4:5087)-3 tags in the code.                        */
/******************************************************************************/

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* Autosar Release Version Information */
#define CAN_PBCFG_C_AR_RELEASE_MAJOR_VERSION            4
#define CAN_PBCFG_C_AR_RELEASE_MINOR_VERSION            2
#define CAN_PBCFG_C_AR_RELEASE_REVISION_VERSION         2

/* File Version Information */
#define CAN_PBCFG_C_SW_MAJOR_VERSION                    1U
#define CAN_PBCFG_C_SW_MINOR_VERSION                    0U


/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_PBTYPES_AR_RELEASE_MAJOR_VERSION != \
     CAN_PBCFG_C_AR_RELEASE_MAJOR_VERSION)
 #error "Can_PBcfg.c : Mismatch in Release Major Version"
#endif

#if (CAN_PBTYPES_AR_RELEASE_MINOR_VERSION != \
     CAN_PBCFG_C_AR_RELEASE_MINOR_VERSION)
 #error "Can_PBcfg.c : Mismatch in Release Minor Version"
#endif

#if (CAN_PBTYPES_AR_RELEASE_REVISION_VERSION != \
     CAN_PBCFG_C_AR_RELEASE_REVISION_VERSION)
 #error "Can_PBcfg.c : Mismatch in Release Revision Version"
#endif

#if (CAN_PBTYPES_SW_MAJOR_VERSION != CAN_PBCFG_C_SW_MAJOR_VERSION)
 #error "Can_PBcfg.c : Mismatch in Software Major Version"
#endif

#if (CAN_PBTYPES_SW_MINOR_VERSION != CAN_PBCFG_C_SW_MINOR_VERSION)
 #error "Can_PBcfg.c : Mismatch in Software Minor Version"
#endif



/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_CONFIG_DATA_8
#include "Can_MemMap.h"

#define CAN_RSCAN_STOP_SEC_CONFIG_DATA_8
#include "Can_MemMap.h"


#define CAN_RSCAN_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Can_MemMap.h"

/* Global array for ControllerConfigType structure */
/* MISRA Violation: START Msg(2:3684)-1 */
/* MISRA Violation: START Msg(2:3447)-2 */
extern CONST(Can_ControllerPCConfigType, CAN_RSCAN_CONFIG_DATA) Can_GaaControllerPCConfig0[];
/* END Msg(2:3447)-2 */
/* END Msg(2:3684)-1 */

/* Table to acquire index of config table from physical controller number */
/* MISRA Violation: START Msg(2:3684)-1 */
/* MISRA Violation: START Msg(2:3447)-2 */
extern CONST(uint8, CAN_RSCAN_CONFIG_DATA) Can_GaaPhysicalControllerToIndex0[];
/* END Msg(2:3447)-2 */
/* END Msg(2:3684)-1 */

#define CAN_RSCAN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-3 */
#include "Can_MemMap.h"
/* END Msg(4:5087)-3 */


#define CAN_RSCAN_START_SEC_DBTOC_DATA_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-3 */
#include "Can_MemMap.h"
/* END Msg(4:5087)-3 */

/* Array for Baudrate Configuration */
static CONST(Can_ControllerBaudrateConfigType, CAN_RSCAN_CONFIG_DATA)            
   Can_GaaBaudrateConfig00[] =
{
  /* Index: 0 - CanControllerBaudrateConfig */
  {
    /* ucBaudrateConfigID */
    0x00U,
    /* usBaudrateConfig */
    0x01F4U,
    /* ulCFG */
    CAN_RSCAN_NSJW(8) | CAN_RSCAN_NTSEG1(23) | CAN_RSCAN_NTSEG2(8) | CAN_RSCAN_NBRP(0),
    /* ulDCFG */
    CAN_RSCAN_SJW(2) | CAN_RSCAN_TSEG1(5) | CAN_RSCAN_TSEG2(2) | CAN_RSCAN_BRP(0),
    /* ulFDCFG */
    CAN_RSCAN_TDCE | CAN_RSCAN_TDCO(0),
    /* blBRS */
    CAN_TRUE,
    /* blFdConfigured */
    CAN_TRUE
  }
};

/* Array for Controller Configuration (Post-build time) */
static CONST(Can_ControllerPBConfigType, CAN_RSCAN_CONFIG_DATA)                  
   Can_GaaControllerPBConfig0[] =
{
  /* Index: 0 - CanController */
  {
    /* ucMainFunctionWIndex */
    0U,
    /* usNoOfBaudrate */
    0x0001U,
    /* pBaudrateConfig */
    &Can_GaaBaudrateConfig00[0]
  }
};

/* Array for Hardware Object Handle */
static CONST(Can_HohConfigType, CAN_RSCAN_CONFIG_DATA) Can_GaaHohConfig0[] =
{
  /* Index: 0 - CanHardwareObject_Rx0 -> RxFIFO[0] */
  {
    /* enHoh */
    CAN_HOH_HRH,
    /* ucMainFunctionRIndex */
    0U,
    /* ucController */
    0x00U,
    /* ucTMDLC */
    0x00U,
    /* usHohId */
    0x0000U,
    /* enBufferType */
    CAN_BUFFERTYPE_RXFIFO,
    /* ucBufferIndex */
    0x00U,
    /* ucPaddingValue */
    0x00U,
    /* ulXXCCRegValue */
    CAN_RSCAN_RFIM | CAN_RSCAN_RFIE | CAN_RSCAN_RFDC_48 | CAN_RSCAN_RFPLS_64
  },
  /* Index: 1 - CanHardwareObject_Rx1 -> RxFIFO[1] */
  {
    /* enHoh */
    CAN_HOH_HRH,
    /* ucMainFunctionRIndex */
    0U,
    /* ucController */
    0x00U,
    /* ucTMDLC */
    0x00U,
    /* usHohId */
    0x0001U,
    /* enBufferType */
    CAN_BUFFERTYPE_RXFIFO,
    /* ucBufferIndex */
    0x01U,
    /* ucPaddingValue */
    0x00U,
    /* ulXXCCRegValue */
    CAN_RSCAN_RFIM | CAN_RSCAN_RFIE | CAN_RSCAN_RFDC_48 | CAN_RSCAN_RFPLS_64
  },
  /* Index: 2 - CanHardwareObject_Tx0 -> TxRxFIFO(Tx)[3] linked to TxBuffer[16] */
  {
    /* enHoh */
    CAN_HOH_HTH,
    /* ucMainFunctionRIndex */
    0U,
    /* ucController */
    0x00U,
    /* ucTMDLC */
    0x40U,
    /* usHohId */
    0x0002U,
    /* enBufferType */
    CAN_BUFFERTYPE_TXRXFIFO,
    /* ucBufferIndex */
    0x03U,
    /* ucPaddingValue */
    0x00U,
    /* ulXXCCRegValue */
    CAN_RSCAN_CFITT(0) | CAN_RSCAN_CFTML(0) | CAN_RSCAN_CFM_TX | CAN_RSCAN_CFIM | CAN_RSCAN_CFTXIE | CAN_RSCAN_CFDC_16 | CAN_RSCAN_CFPLS_64
  },
  /* Index: 3 - CanHardwareObject_Tx1 -> TxRxFIFO(Tx)[4] linked to TxBuffer[17] */
  {
    /* enHoh */
    CAN_HOH_HTH,
    /* ucMainFunctionRIndex */
    0U,
    /* ucController */
    0x00U,
    /* ucTMDLC */
    0x40U,
    /* usHohId */
    0x0003U,
    /* enBufferType */
    CAN_BUFFERTYPE_TXRXFIFO,
    /* ucBufferIndex */
    0x04U,
    /* ucPaddingValue */
    0x00U,
    /* ulXXCCRegValue */
    CAN_RSCAN_CFITT(0) | CAN_RSCAN_CFTML(1) | CAN_RSCAN_CFM_TX | CAN_RSCAN_CFIM | CAN_RSCAN_CFTXIE | CAN_RSCAN_CFDC_16 | CAN_RSCAN_CFPLS_64
  }
};

/* Array for Acceptance Filter Receive Rule Configuration */
static CONST(Can_FilterType, CAN_RSCAN_CONFIG_DATA) Can_GaaFilterConfig00[] =
{
  /* Index: 0 - CanHardwareObject_Rx0/CanHwFilter: RSCANFD01 -> RxFIFO[0] */
  {
    /* ulGAFLID */
    0x00000000UL,
    /* ulGAFLM */
    0xC0000000UL,
    /* aaGAFLP */
    {
      CAN_RSCAN_GAFLDLC_0,
      CAN_RSCAN_GAFLFDP_RXFIFO(0)
    }
  },
  /* Index: 1 - CanHardwareObject_Rx1/CanHwFilter: RSCANFD01 -> RxFIFO[1] */
  {
    /* ulGAFLID */
    0x00000000UL,
    /* ulGAFLM */
    0xC0000000UL,
    /* aaGAFLP */
    {
      CAN_RSCAN_GAFLDLC_0,
      CAN_RSCAN_GAFLFDP_RXFIFO(1)
    }
  }
};

/* Array for Can Hardware Configuration Sub Table */
static CONST(uint32, CAN_RSCAN_CONFIG_DATA) Can_GaaTMIEConfig00[] =
{
  /* Index: 0 - 0 */
  0x00000000UL,
  /* Index: 1 - 1 */
  0x00000000UL,
  /* Index: 2 - 2 */
  0x00000000UL
};

/* Array for Can Hardware Configuration Table */
static CONST(Can_HWUnitInfoType, CAN_RSCAN_CONFIG_DATA) Can_GaaHWUnitInfo0[] =
{
  /* Index: 0 - Registers for RSCAN unit 0 */
  {
    /* ucNoOfTMIEC */
    0x03U,
    /* ucNoOfGAFLCFG */
    0x02U,
    /* usNoOfFilters */
    0x0002U,
    /* ulRMNB */
    0x00000300UL,
    /* ulGCFG */
    CAN_RSCAN_ITRCP(8) |
    CAN_RSCAN_DCS |
    CAN_RSCAN_DCE,
    /* aaGAFLCFG */
    {0x00020000UL, 0x00000000UL},
    /* pTMIEC */
    &Can_GaaTMIEConfig00[0],
    /* pFilterConfig */
    &Can_GaaFilterConfig00[0],
    /* ulRxFIFOWUFMask */
    CAN_RSCAN_WUF_GLOBAL_0
  }
};

/* Global array for Config Structure */
CONST(Can_ConfigType, CAN_RSCAN_CONFIG_DATA) Can_GaaConfig[] =
{
  /* Index: 0 - CanConfigSet0 */
  {
    /* ulStartOfDbToc */
    0x0ED40100UL,
    /* pHWUnitInfo */
    /* MISRA Violation: START Msg(2:0315)-1 */
    &Can_GaaHWUnitInfo0[0],
    /* END Msg(2:0315)-1 */
    /* pControllerPCConfig */
    /* MISRA Violation: START Msg(2:0315)-1 */
    &Can_GaaControllerPCConfig0[0],
    /* END Msg(2:0315)-1 */
    /* pControllerPBConfig */
    /* MISRA Violation: START Msg(2:0315)-1 */
    &Can_GaaControllerPBConfig0[0],
    /* END Msg(2:0315)-1 */
    /* pHohConfig */
    /* MISRA Violation: START Msg(2:0315)-1 */
    &Can_GaaHohConfig0[0],
    /* END Msg(2:0315)-1 */
    /* pPhysicalControllerToIndex */
    /* MISRA Violation: START Msg(2:0315)-1 */
    &Can_GaaPhysicalControllerToIndex0[0]
    /* END Msg(2:0315)-1 */
  }
};

#define CAN_RSCAN_STOP_SEC_DBTOC_DATA_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-3 */
#include "Can_MemMap.h"
/* END Msg(4:5087)-3 */

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/

