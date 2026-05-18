/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Icu_PBcfg.c                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2019  Renesas Electronics Corporation                    */
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
 * V1.0.0:  07-Sep-2015 : Initial version
 * V1.0.1:  12-Nov-2015 : As part of JIRA #ARDAAGA-125, value generated for
 *                        'ucCntlRegsIndx' for the configured channels is
 *                        corrected.
 * V1.0.2:  30-Sep-2016 : #ARDAABD-487
 *                        1. Updated copyright
 *                        2. Added MemMap switch
 * V2.0.0   05-Oct-2016 : #ARDAABD-487
 *                        1. Updated version to 2.0.0, ASR4.2.2
 * V2.0.1   11-Jul-2017 : As part of ARDAABD-1373,
 *                        added ulWUF1MaskValue in structure Icu_GstWakeUpFactor
 * V2.0.2   23-Apr-2018 : Following changes are made:
 *                        1. As part of merging activity, #ARDAABD-3476,
 *                           a. Removed generation of pImrIntrCntlAdress and
 *                              usImrMaskValue from structure
 *                              Icu_GstChannelConfig. Ref: ARDAABD-2158
 *                           b. Mapping of memory section for global or static
 *                              variables are updated as per the AUTOSAR memory
 *                              mapping requirement MEMMAP022. Ref:ARDAABD-908
 *                           c. Copyright information is updated.
 *                        2. Storage specifier for configuration data
 *                           variables is changed from AUTOMATIC to
 *                           TYPEDEF, since it is allocated in ROM.
 *                           Ref:ARDAABD-894
 * V2.0.3   12-Aug-2019 : Following changes are made:
 *                        1. 'uiConfigurePrescaler' is changed to
 *                           'blConfigurePrescaler'
 *                           Ref:ARDAABD-3442
 */
/*******************************************************************************
**                       Generation Tool Version                              **
*******************************************************************************/
/*
 * TOOL VERSION:  2.0.8
 */
/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/

/*
 * INPUT FILE:    E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Icu_Icu_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\icu\R422_ICU_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Icu.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\EcuM\xml\EcuM_Icu.arxml
 * GENERATED ON:  15 Apr 2026 - 17:32:35
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#include "Icu.h"
#include "Icu_Cbk.h"
#include "Icu_PBTypes.h"
#include "Icu_Ram.h"
#include "Iocommon_Defines.h"


/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define ICU_PBCFG_C_AR_RELEASE_MAJOR_VERSION  4U
#define ICU_PBCFG_C_AR_RELEASE_MINOR_VERSION  2U
#define ICU_PBCFG_C_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define ICU_PBCFG_C_SW_MAJOR_VERSION  1U
#define ICU_PBCFG_C_SW_MINOR_VERSION  1U


/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:0303) Cast between a pointer to volatile object and an  */
/*                 integral type.                                             */
/* Rule          : MISRA-C:2004 Rule 11.3                                     */
/* Justification : Void pointer is used inorder to typecast to different      */
/*                 channel structures later.                                  */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:0303)-1 and                           */
/*                 END Msg(4:0303)-1 tags in the code.                        */
/******************************************************************************/
/******************************************************************************/

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/

#if (ICU_PBTYPES_AR_RELEASE_MAJOR_VERSION != \
      ICU_PBCFG_C_AR_RELEASE_MAJOR_VERSION)
 #error "Icu_PBcfg.c : Mismatch in Release Major Version"
#endif

#if (ICU_PBTYPES_AR_RELEASE_MINOR_VERSION != \
      ICU_PBCFG_C_AR_RELEASE_MINOR_VERSION)
 #error "Icu_PBcfg.c : Mismatch in Release Minor Version"
#endif

#if (ICU_PBTYPES_AR_RELEASE_REVISION_VERSION != \
      ICU_PBCFG_C_AR_RELEASE_REVISION_VERSION)
 #error "Icu_PBcfg.c : Mismatch in Release Revision Version"
#endif

#if (ICU_PBTYPES_SW_MAJOR_VERSION != ICU_PBCFG_C_SW_MAJOR_VERSION)
  #error "Icu_PBcfg.c : Mismatch in Software Major Version"
#endif

#if (ICU_PBTYPES_SW_MINOR_VERSION != ICU_PBCFG_C_SW_MINOR_VERSION)
  #error "Icu_PBcfg.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

#define ICU_START_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Icu_MemMap.h"

/* RAM Allocation of Channel data */
VAR(Icu_ChannelRamDataType, ICU_NOINIT_DATA) Icu_GstChannelRamData[5];

/* RAM Allocation of Timestamp channel data */
/* VAR(Icu_TimeStampChannelRamDataType, ICU_NOINIT_DATA) 
  Icu_GstTimestampRamData[]; */

/* RAM Allocation of Signal Measure Channel data */
VAR(Icu_SignalMeasureChannelRamDataType, ICU_NOINIT_DATA)
   Icu_GstSignalMeasureRamData[1];

/* RAM Allocation of Edge Counting Channel data */
/* VAR(Icu_EdgeCountChannelRamDataType, ICU_NOINIT_DATA) 
  Icu_GstEdgeCountRamData[]; */

#define ICU_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Icu_MemMap.h"

#define ICU_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Icu_MemMap.h"

/* Structure for each Config Set */
CONST(Icu_ConfigType, ICU_CONST) Icu_GstConfiguration[] =
{
  /* Index: 0 - IcuConfigSet */
  {
    /* ulStartOfDbToc */
    0x0EDE8108UL,

    /* pChannelConfig */
    &Icu_GstChannelConfig[0],

    /* pTimerChannelConfig */
    &Icu_GstTimerChannelConfig[0],

    /* pHWUnitConfig */
    &Icu_GstTAUUnitConfig[0],

    /* pRamAddress */
    &Icu_GstChannelRamData[0],

    /* pSignalMeasureAddress */
    &Icu_GstSignalMeasureRamData[0],

    /* pTimeStampAddress */
    NULL_PTR,

    /* pEdgeCountRamAddress */
    NULL_PTR
  }
};



/* Array of structures for Hardware Configuration */
CONST(Icu_TAUUnitConfigType, ICU_CONST) Icu_GstTAUUnitConfig[] =
{
  /* Index: 0 - TAUB0 */
  {
    /* ucTAUUserCntlRegIndx */
    0x00U,

    /* ucTAUOsCntlRegIndx */
    0x00U,

    /* usPrescaler */
    0xFA74U,

    /* ucIcuUnitType */
    ICU_HW_TAUB,

    /* usTAUSyncMaskValue */
    0x0000U,

    /* blConfigurePrescaler */
    ICU_TRUE
  }
};



/* Configuration of each ICU Channel */
CONST(Icu_ChannelConfigType, ICU_CONST) Icu_GstChannelConfig[] =
{
  /* Index: 0 - IcuChannel_0_Crash */
  {
    /* pIcuNotificationPointer */
    NULL_PTR,

    /* ucCntlRegsIndx */
    0x00U,

    /* pLevelReadPprAddress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &PGPPR0,
    /* END Msg(4:0303)-1 */

    /* pIntrCntlAdress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &ICTAUB0I8,
    /* END Msg(4:0303)-1 */

    /* ddEcuMChannelWakeupInfo */
    EcuMWakeupSource_Local,

    /* usChannelMaskValue */
    0x0300U,

    /* usPortMaskValue */
    0x0800U,

    /* ucIcuPortType */
    ICU_NORMAL_PORT,

    /* uiIcuMeasurementMode */
    (uint8)ICU_MODE_SIGNAL_MEASUREMENT,

    /* uiIcuDefaultStartEdge */
    (uint8)ICU_FALLING_EDGE,

    /* uiIcuChannelType */
    ICU_HW_TAUB,

    /* uiIcuWakeupCapability */
    ICU_TRUE,

    /* uiIcuDisableEcumWakeupNotification */
    ICU_FALSE,

    /* uiIcuSyncStartReq */
    ICU_FALSE
  },

  /* Index: 1 - ExtraDutyCycleChannel */
  {
    /* pIcuNotificationPointer */
    NULL_PTR,

    /* ucCntlRegsIndx */
    0x01U,

    /* pLevelReadPprAddress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &PGPPR0,
    /* END Msg(4:0303)-1 */

    /* pIntrCntlAdress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &ICTAUB0I9,
    /* END Msg(4:0303)-1 */

    /* ddEcuMChannelWakeupInfo */
    ICU_NOWAKEUP,

    /* usChannelMaskValue */
    0x0300U,

    /* usPortMaskValue */
    0x0800U,

    /* ucIcuPortType */
    ICU_NORMAL_PORT,

    /* uiIcuMeasurementMode */
    (uint8)ICU_MODE_SIGNAL_MEASUREMENT,

    /* uiIcuDefaultStartEdge */
    (uint8)ICU_RISING_EDGE,

    /* uiIcuChannelType */
    ICU_HW_TAUB,

    /* uiIcuWakeupCapability */
    ICU_TRUE,

    /* uiIcuDisableEcumWakeupNotification */
    ICU_FALSE,

    /* uiIcuSyncStartReq */
    ICU_FALSE
  },

  /* Index: 2 - IcuChannel_2_NAD */
  {
    /* pIcuNotificationPointer */
    &Icu_Edge_Detect_NAD,

    /* ucCntlRegsIndx */
    0x38U,

    /* pLevelReadPprAddress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &PGPPR8,
    /* END Msg(4:0303)-1 */

    /* pIntrCntlAdress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &ICP6,
    /* END Msg(4:0303)-1 */

    /* ddEcuMChannelWakeupInfo */
    EcuMWakeupSource_Local,

    /* usChannelMaskValue */
    0xFFFFU,

    /* usPortMaskValue */
    0x0004U,

    /* ucIcuPortType */
    ICU_NORMAL_PORT,

    /* uiIcuMeasurementMode */
    (uint8)ICU_MODE_SIGNAL_EDGE_DETECT,

    /* uiIcuDefaultStartEdge */
    (uint8)ICU_FALLING_EDGE,

    /* uiIcuChannelType */
    ICU_HW_EXT_INTP,

    /* uiIcuWakeupCapability */
    ICU_TRUE,

    /* uiIcuDisableEcumWakeupNotification */
    ICU_FALSE,

    /* uiIcuSyncStartReq */
    ICU_FALSE
  },

  /* Index: 3 - IcuChannel_3_EcallBtn */
  {
    /* pIcuNotificationPointer */
    &Icu_Edge_Detect_EcallBtn,

    /* ucCntlRegsIndx */
    0x44U,

    /* pLevelReadPprAddress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &PGPPR8,
    /* END Msg(4:0303)-1 */

    /* pIntrCntlAdress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &ICP9,
    /* END Msg(4:0303)-1 */

    /* ddEcuMChannelWakeupInfo */
    EcuMWakeupSource_Local,

    /* usChannelMaskValue */
    0xFFFFU,

    /* usPortMaskValue */
    0x0020U,

    /* ucIcuPortType */
    ICU_NORMAL_PORT,

    /* uiIcuMeasurementMode */
    (uint8)ICU_MODE_SIGNAL_EDGE_DETECT,

    /* uiIcuDefaultStartEdge */
    (uint8)ICU_FALLING_EDGE,

    /* uiIcuChannelType */
    ICU_HW_EXT_INTP,

    /* uiIcuWakeupCapability */
    ICU_TRUE,

    /* uiIcuDisableEcumWakeupNotification */
    ICU_FALSE,

    /* uiIcuSyncStartReq */
    ICU_FALSE
  },

  /* Index: 4 - IcuChannel_6_Rtc_int */
  {
    /* pIcuNotificationPointer */
    &Icu_Edge_Detect_Rtc_Int,

    /* ucCntlRegsIndx */
    0x28U,

    /* pLevelReadPprAddress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &PGPPR0,
    /* END Msg(4:0303)-1 */

    /* pIntrCntlAdress */
    /* MISRA Violation: START Msg(4:0303)-1 */
    (P2VAR(volatile uint16, TYPEDEF, ICU_CONFIG_DATA)) &ICP2,
    /* END Msg(4:0303)-1 */

    /* ddEcuMChannelWakeupInfo */
    EcuMWakeupSource_Time,

    /* usChannelMaskValue */
    0xFFFFU,

    /* usPortMaskValue */
    0x0040U,

    /* ucIcuPortType */
    ICU_NORMAL_PORT,

    /* uiIcuMeasurementMode */
    (uint8)ICU_MODE_SIGNAL_EDGE_DETECT,

    /* uiIcuDefaultStartEdge */
    (uint8)ICU_FALLING_EDGE,

    /* uiIcuChannelType */
    ICU_HW_EXT_INTP,

    /* uiIcuWakeupCapability */
    ICU_TRUE,

    /* uiIcuDisableEcumWakeupNotification */
    ICU_FALSE,

    /* uiIcuSyncStartReq */
    ICU_FALSE
  }
};



/* Configuration of each ICU Timer Channel */
CONST(Icu_TimerChannelConfigType, ICU_CONST) Icu_GstTimerChannelConfig[] =
{
  /* Index: 0 - IcuChannel_0_Crash */
  {
    /* usChannelModeOSRegSettings */
    0x4144U,

    /* ucChannelModeUserRegSettings */
    0x00U,

    /* ucTimerUnitIndex */
    0x00U,

    /* ucRamDataIndex */
    0x00U,

    /* ucChannelProperties */
    0x06U
  },

  /* Index: 1 - ExtraDutyCycleChannel */
  {
    /* usChannelModeOSRegSettings */
    0x424CU,

    /* ucChannelModeUserRegSettings */
    0x02U,

    /* ucTimerUnitIndex */
    0x00U,

    /* ucRamDataIndex */
    0x00U,

    /* ucChannelProperties */
    0x05U
  }
};



/* Array of structures for Previous Input Configuration */
/* CONST(Icu_PreviousInputUseType, ICU_CONST) Icu_GstPreviousInputConfig[]; */

/* Array of structures for Wakeup Factor Configuration */
/* CONST(Icu_WakeupFactorType, ICU_CONST) Icu_GstWakeUpFactor[]; */

/* MISRA Violation: START Msg(4:0303)-1  */
/* Array for ICU Driver 8 bit dynamic registers */
/* Implements: EAAR_PN0034_FSR_0005 */
CONSTP2VAR(volatile uint8, TYPEDEF, ICU_CONFIG_DATA)
                        Icu_GaaReg_8bit[ICU_MAX_8BIT_REGISTERS] =
{
  /* ucTAUDBnCMURm */
  (P2VAR(volatile uint8, TYPEDEF,ICU_CONFIG_DATA))0xffe300e0UL,

  /* pCntlRegs */
  (P2VAR(volatile uint8, TYPEDEF,ICU_CONFIG_DATA))0xffc34038UL,

  (P2VAR(volatile uint8, TYPEDEF,ICU_CONFIG_DATA))0xffc34044UL,

  (P2VAR(volatile uint8, TYPEDEF,ICU_CONFIG_DATA))0xffc34028UL
};

/* END Msg(4:0303)-1 */
/* Array for ICU Driver 8 bit dynamic mirror registers */
/* Implements: EAAR_PN0034_FSR_0005 */
CONSTP2VAR(volatile uint8, TYPEDEF, ICU_CONFIG_DATA)
           Icu_GaaRegMirror_8bit[ICU_MAX_8BIT_REGISTERS] =
{
  /* ucMirrorTAUDBnCMURm */
  &(Icu_GaaTAUDBChannelRegMirror[0].ucMirrorTAUDBnCMURm),

  /* ucMirrorFCLA0CTLm */
  &(Icu_GaaFclaRegsMirror[2].ucMirrorFCLA0CTLm),

  &(Icu_GaaFclaRegsMirror[3].ucMirrorFCLA0CTLm),

  &(Icu_GaaFclaRegsMirror[4].ucMirrorFCLA0CTLm)
};

#define ICU_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Icu_MemMap.h"

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
