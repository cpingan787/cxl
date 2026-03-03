/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_Lcfg.c                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2021 Renesas Electronics Corporation. All rights reserved.    */
/*============================================================================*/
/* Purpose:                                                                   */
/*                                                                            */
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
 * INPUT FILE:    E:\PuHua_Tbox\RH850gitlab\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Can_Can_ecuc.arxml
 *                E:\PuHua_Tbox\RH850gitlab\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Mcu_Mcu0_ecuc.arxml
 *                E:\PuHua_Tbox\RH850gitlab\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\can\R422_CAN_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\RH850gitlab\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Can.arxml
 *                E:\PuHua_Tbox\RH850gitlab\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\EcuM\xml\EcuM_can.arxml
 *                E:\PuHua_Tbox\RH850gitlab\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Os\xml\Os_Can.arxml
 *                E:\PuHua_Tbox\RH850gitlab\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\common_family\generator\Sample_Application_F1x.trxml
 * GENERATED ON:  17 Jan 2026 - 06:16:32
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* CAN Post Build configuration header */
#include "Can.h"
#include "Can_LTTypes.h"

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0303) Cast between a pointer to volatile object and an  */
/*                 integral type.                                             */
/* Rule          : MISRA-C:2004 Rule-3.1                                      */
/* Justification : Void pointer is used in order to typecast to different     */
/*                 channel structures later.                                  */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0303)-1 and                           */
/*                 END Msg(2:0303)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3408) Has external linkage and is being defined         */
/*                 without any previous declaration.                          */
/* Rule          : MISRA-C:2004 Rule-8.8                                      */
/* Justification : Since number or names of symbols in this file              */
/*                 is according to a configuration,                           */
/*                 this can't be declared in a header file statically.        */
/* Verification  : This symbol is referred by an auto-generated file only.    */
/*                 It is verified by the evaluation of the Generation Tool.   */
/* Reference     : Look for START Msg(2:3408)-2 and                           */
/*                 END Msg(2:3408)-2 tags in the code.                        */
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
#define CAN_LCFG_C_AR_RELEASE_MAJOR_VERSION             4
#define CAN_LCFG_C_AR_RELEASE_MINOR_VERSION             2
#define CAN_LCFG_C_AR_RELEASE_REVISION_VERSION          2

/* File Version Information */
#define CAN_LCFG_C_SW_MAJOR_VERSION                     1U
#define CAN_LCFG_C_SW_MINOR_VERSION                     0U


/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_PCTYPES_AR_RELEASE_MAJOR_VERSION != \
     CAN_LCFG_C_AR_RELEASE_MAJOR_VERSION)
 #error "Can_Lcfg.c : Mismatch in Release Major Version"
#endif

#if (CAN_PCTYPES_AR_RELEASE_MINOR_VERSION != \
     CAN_LCFG_C_AR_RELEASE_MINOR_VERSION)
 #error "Can_Lcfg.c : Mismatch in Release Minor Version"
#endif

#if (CAN_PCTYPES_AR_RELEASE_REVISION_VERSION != \
     CAN_LCFG_C_AR_RELEASE_REVISION_VERSION)
 #error "Can_Lcfg.c : Mismatch in Release Revision Version"
#endif

#if (CAN_PCTYPES_SW_MAJOR_VERSION != CAN_LCFG_C_SW_MAJOR_VERSION)
 #error "Can_Lcfg.c : Mismatch in Software Major Version"
#endif

#if (CAN_PCTYPES_SW_MINOR_VERSION != CAN_LCFG_C_SW_MINOR_VERSION)
 #error "Can_Lcfg.c : Mismatch in Software Minor Version"
#endif



/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_CONFIG_DATA_8
#include "Can_MemMap.h"

/* Table to acquire index of config table from physical controller number */
/* MISRA Violation: START Msg(2:3408)-2 */
CONST(uint8, CAN_RSCAN_CONFIG_DATA) Can_GaaPhysicalControllerToIndex0[] =
{
  /* Index: 0 - 0 */
  0x00U,
  /* Index: 1 - 1 */
  0x00U
};
/* END Msg(2:3408)-2 */

/* Table to acquire index of config table from physical unit number */
CONST(uint8, CAN_RSCAN_CONFIG_DATA) Can_GaaPhysicalUnitToIndex[] =
{
  /* Index: 0 - 0 */
  0x00U
};

#define CAN_RSCAN_STOP_SEC_CONFIG_DATA_8
/* MISRA Violation: START Msg(4:5087)-3 */
#include "Can_MemMap.h"
/* END Msg(4:5087)-3 */


#define CAN_RSCAN_START_SEC_CONFIG_DATA_UNSPECIFIED
/* MISRA Violation: START Msg(4:5087)-3 */
#include "Can_MemMap.h"
/* END Msg(4:5087)-3 */

/* Global array for ControllerConfigType structure */
/* MISRA Violation: START Msg(2:3408)-2 */
CONST(Can_ControllerPCConfigType, CAN_RSCAN_CONFIG_DATA)                         
   Can_GaaControllerPCConfig0[] =
{
  /* Index: 0 - CanController */
  {
    /* blActivation */
    CAN_TRUE,
    /* ucUnitIndex */
    0x00U,
    /* ucChannelOffset */
    0x01U,
    /* ucIntEnable */
    CAN_CHECK_INT_RX |
    CAN_CHECK_INT_TX |
    CAN_CHECK_INT_BUSOFF |
    CAN_CHECK_INT_WAKEUP,
    /* ulCTR */
    CAN_RSCAN_BOM_HALT_BUSOFF_ENTRY | CAN_RSCAN_BOEIE,
    /* ulTHLCC */
    CAN_RSCAN_THLDTE,
    /* pICRec */
    /* MISRA Violation: START Msg(2:0303)-1 */
    (P2VAR(volatile uint16, CAN_CONFIG_DATA, REGSPACE)) 0xFFFFB0E4UL,
    /* END Msg(2:0303)-1 */
    /* pICTx */
    /* MISRA Violation: START Msg(2:0303)-1 */
    (P2VAR(volatile uint16, CAN_CONFIG_DATA, REGSPACE)) 0xFFFFB0E6UL,
    /* END Msg(2:0303)-1 */
    /* pICErr */
    /* MISRA Violation: START Msg(2:0303)-1 */
    (P2VAR(volatile uint16, CAN_CONFIG_DATA, REGSPACE)) 0xFFFFB0E2UL,
    /* END Msg(2:0303)-1 */
    /* ulWUFMask */
    CAN_RSCAN_WUF_CHANNEL_1
  }
};
/* END Msg(2:3408)-2 */

/* Register Address Configuration */
CONST(Can_RegisterSetType, CAN_RSCAN_CONFIG_DATA) Can_GaaRegs[] =
{
  /* Index: 0 - RSCANFD0 */
  {
    /* enMacroType */
    CAN_MACRO_RSCANFD,
    /* pCmn */
    /* MISRA Violation: START Msg(2:0303)-1 */
    (P2VAR(volatile Can_CommonRegType, CAN_CONFIG_DATA, REGSPACE)) 0xFFD00000UL,
    /* END Msg(2:0303)-1 */
    /* pRR */
    /* MISRA Violation: START Msg(2:0303)-2 */
    (P2VAR(volatile Can_RRuleRegType, CAN_CONFIG_DATA, REGSPACE)) 0xFFD01000UL,
    /* END Msg(2:0303)-2 */
    /* pFD */
    /* MISRA Violation: START Msg(2:0303)-1 */
    (P2VAR(volatile Can_FDRegType, CAN_CONFIG_DATA, REGSPACE)) 0xFFD00500UL,
    /* END Msg(2:0303)-1 */
    /* pICRxFIFO */
    /* MISRA Violation: START Msg(2:0303)-1 */
    (P2VAR(volatile uint16, CAN_CONFIG_DATA, REGSPACE)) 0xFFFEEA2EUL,
    /* END Msg(2:0303)-1 */
    /* pWUF0Reg */
    /* MISRA Violation: START Msg(2:0303)-2 */
    (P2VAR(volatile uint32, CAN_CONFIG_DATA, REGSPACE)) 0xFFF88110UL,
    /* END Msg(2:0303)-2 */
    /* pWUFC0Reg */
    /* MISRA Violation: START Msg(2:0303)-2 */
    (P2VAR(volatile uint32, CAN_CONFIG_DATA, REGSPACE)) 0xFFF88118UL
    /* END Msg(2:0303)-2 */
  }
};

#define CAN_RSCAN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
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

