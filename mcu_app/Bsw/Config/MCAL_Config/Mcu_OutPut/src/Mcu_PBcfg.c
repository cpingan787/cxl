/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Mcu_PBcfg.c                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of AUTOSAR MCU post build parameters.                            */
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
/*              Devices:        F1x                                           */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*                                                                             *
* V1.0.0:  01-Sep-2015 : Initial Version                                       *
* V1.0.1:  08-Jan-2016 : The following changes are done,                       *
*                        1. The structure name of clock monitoring             *
*                        register base address is changed to ClkMntrReg.       *
*                        (Ref: JIRA #ARDAAGA-42)                               *
*                        2. CKSC register setting array                        *
*                        Mcu_GstCkscSetting[] is updated with the value        *
*                        configured for the newly added parameter              *
*                        McuPpllSrcClock. Also 'usCkscSourceSelRegNum'         *
*                        has been renamed to 'ucCkscSourceSelRegNum' in        *
*                        array 'Mcu_GstCkscSetting[]'.                         *
*                        (Ref: JIRA #ARDAAGA-42)                               *
* V1.1.0:  28-Dec-2016 : Mcu_GaaClockOffset elements set to uint8 type         *
*                        (Ref: JIRA ARDAABD-831)                               *
* V1.2.0:  31-Jan-2017 : Memmap switch added.(Ref: JIRA ARDAABD-989).          *
* V1.3.0:  29-Aug-2017 : Added QAC/MISRA warnings justification.               *
*                        Corrected QAC/MISRA Warning.                          *
*                        (Ref: JIRA ARDAABD-2083)                              *
* V1.3.1:  20-Sep-2017 : Iocommon split                                        *
*                        (Ref: JIRA ARDAABD-2160)                              *
* V1.3.2:  29-Dec-2017 : The following changes are done:                       *
*                        1. Mapped variable under memory section               *
*                           MCU_<START/STOP>_SEC_DBTOC_DATA_UNSPECIFIED to     *
*                           MCU_<START/STOP>_SEC_CONFIG_DATA_UNSPECIFIED.      *
*                        2. Renamed MCU_<START/STOP>_SEC_BURAM_VAR_NOINIT_     *
*                           UNSPECIFIED to MCU_<START/STOP>_SEC_BURAM_VAR_NO_  *
*                           INIT_32.                                           *
*                        3. Added new memory section MCU_<START/STOP>_CONFIG_  *
*                           DATA_8 for Mcu_GaaClockOffset.                     *
*                           (Ref: JIRA ARDAABD-908).                           *
* V1.3.3:  21-Jun-2018 : The following changes are done:                       *
*                        1. As part of ARDAABD-3179, ucINTCWEND is added       *
*                           to Mcu_GstConfiguration ,contains INTCWEND ISR     *
*                           Enable / disable info.                             *
*                        2. As part of ARDAABD-3695, moved threshold value     *
*                           generation of CLMA0/1/2/3 to Mcu_GstClockSetting   *
* V1.3.4:  11-Sep-2020 : The following changes is done:                        *
*                        1. As part of ARDAABD-1553,                           *
*                           Removed ulRetentionRamAddr and                     *
*                           ulCyclicRunModeBaseAddress in Mcu_GstConfiguration.*
*                           Removed ulPowerDownWakeupType2  variable           *
*                           in Mcu_GstModeSetting.                             *
* V1.3.5:  27-Oct-2021 : 1. As part of ARDAABD-6708, the following changes are *
*                           made:                                              *
*                        a) Corrected the generation of array                  *
*                           'Mcu_GstCkscSetting[]', 'blPllActCheck',           *
*                           'ucNoOfAwoCkscReg', 'ucNoOfIsoCkscReg',            *
*                           'ucNoOfPllIsoCkscReg', 'ucNoOfPllAwoCkscReg'       *
*                           and 'ucCkscPllIndexOffset'.                        *
*                        b) Copyright information is updated.                  *
*                        2. As part of ARDAABD-6355, added the support of      *
*                           F1KM-S2 devices R7F701760, R7F701762 and R7F701764.*
*                                                                             */
/******************************************************************************/

/*******************************************************************************
**                   Generation Tool Version                                  **
*******************************************************************************/
/*
 * TOOL VERSION:  1.2.5
 */

/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
/*
 * INPUT FILE:    1
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Mcu_Mcu0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\mcu\R422_MCU_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Mcu.arxml
 * GENERATED ON:  10 Feb 2026 - 10:23:31
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Iocommon_Defines.h"
#include "Mcu_PBTypes.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define MCU_PBCFG_C_AR_RELEASE_MAJOR_VERSION  4U
#define MCU_PBCFG_C_AR_RELEASE_MINOR_VERSION  2U
#define MCU_PBCFG_C_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define MCU_PBCFG_C_SW_MAJOR_VERSION  1U
#define MCU_PBCFG_C_SW_MINOR_VERSION  2U


/******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:3408) Has external linkage and is being defined without */
/*                 any previous declaration.                                  */
/* Rule          : MISRA-C:2004 Rule 8.8                                      */
/* Justification : This sub structure is accessed as a member in main         */
/*                 structure and hence declaration is not required.           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:3408)-1 and                           */
/*                 END Msg(4:3408)-1 tags in the code.                        */
/******************************************************************************/
/* 3. MISRA C RULE VIOLATION:                                                 */
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
/* 4. QAC Warning:                                                            */
/* Message       : (2:3211) The global identifier 'x' is defined here but is  */
/*                 not used in this translation unit.                         */
/* Justification : Implementation requirement as specified by AUTOSAR SW to   */
/*                 generate global variables and array for MCU driver.        */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning START Msg(2:3211)-4 and               */
/*                 END Msg(2:3211)-4 tags in the code.                        */
/******************************************************************************/
/* 5. QAC Warning:                                                            */
/* Message       : (2:0315) Implicit conversion from a pointer to object type */
/*                 to a pointer to void.                                      */
/* Rule          : No MISRA-C:2004 Rule                                       */
/* Justification : No implicit cast , only special AUTOSAR construction       */
/*                 P2CONST/P2VAR                                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0315)-5 and                           */
/*                 END Msg(2:0315)-5 tags in the code.                        */
/******************************************************************************/
/* 6. QAC Warning:                                                            */
/* Message       : (2:2022) A tentative definition is being used. Is it       */
/*                 appropriate to include an explicit initializer ?           */
/* Rule          : No MISRA-C:2004 Rule                                       */
/* Justification : Global Variable is not initialized because is kept in      */
/*                 No init area. Will be initialized at runtime with user     */
/*                 configuration values                                       */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning START Msg(2:2022)-6 and               */
/*                 END Msg(2:2022)-6 tags in the code.                        */
/******************************************************************************/
/* 7. QAC Warning:                                                            */
/* Message       : (2:3892) The result of this cast is implicitly converted to*/
/*                 another type.                                              */
/* Rule          : NA                                                         */
/* Justification : Type of defined value is extended to uint16 from uint8     */
/*                 No risk involved                                           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning: START Msg(2:3892)-7 and              */
/*                 END Msg(2:3892)-7 tags in the code.                        */
/******************************************************************************/
/* 8. QAC Warning:                                                            */
/* Message       : (2:3132) Hard coded 'magic' number, 'x', used to define    */
/*                 the size of an array.                                      */
/* Rule          : NA                                                         */
/* Justification : Number is filled by generator , with the  calculated number*/
/*                 of clock configurations                                    */
/*                 No risk involved                                           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning: START Msg(2:3132)-8 and              */
/*                 END Msg(2:3132)-8 tags in the code.                        */
/******************************************************************************/
/* 9. QAC Warning:                                                            */
/* Message       : (2:3674) Array size defined implicitly by the number of    */
/*                 initializers.                                              */
/* Rule          : NA                                                         */
/* Justification : Array exported by generator not possible to calculate      */
/*                 number of elements                                         */
/*                 No risk involved                                           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning: START Msg(2:3674)-9 and              */
/*                 END Msg(2:3674)-9 tags in the code.                        */
/******************************************************************************/
/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
/* Specification Major Version Check */
#if (MCU_PBTYPES_AR_RELEASE_MAJOR_VERSION != \
MCU_PBCFG_C_AR_RELEASE_MAJOR_VERSION)
#error "Mcu_PBcfg.c : Mismatch in Release Major Version"
  #endif

  #if (MCU_PBTYPES_AR_RELEASE_MINOR_VERSION != \
MCU_PBCFG_C_AR_RELEASE_MINOR_VERSION)
#error "Mcu_PBcfg.c : Mismatch in Release Minor Version"
  #endif

  #if (MCU_PBTYPES_AR_RELEASE_REVISION_VERSION != \
MCU_PBCFG_C_AR_RELEASE_REVISION_VERSION)
#error "Mcu_PBcfg.c : Mismatch in Release Revision Version"
  #endif

  #if (MCU_PBTYPES_SW_MAJOR_VERSION != MCU_PBCFG_C_SW_MAJOR_VERSION)
    #error "Mcu_PBcfg.c : Mismatch in Software Major Version"
  #endif

  #if (MCU_PBTYPES_SW_MINOR_VERSION != MCU_PBCFG_C_SW_MINOR_VERSION)
    #error "Mcu_PBcfg.c : Mismatch in Software Minor Version"
  #endif

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

#define MCU_START_SEC_BURAM_VAR_NO_INIT_32
#include "Mcu_MemMap.h"
/* QAC Warning: START Msg(2:2022)-6 */
/* Global RAM array for back up of Port group registers */
VAR(uint32, MCU_CONFIG_DATA) Mcu_GaaRamPortGroup[1];
/* END Msg(2:2022)-6 */
#define MCU_STOP_SEC_BURAM_VAR_NO_INIT_32
#include "Mcu_MemMap.h"

#define MCU_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Mcu_MemMap.h"

/* Structure for MCU Init configuration */
/* MISRA Violation: START Msg(4:3408)-1 */
/* QAC Warning: START Msg(2:3211)-4 */
/* QAC Warning: START Msg(2:0315)-5 */
CONST(Mcu_ConfigType, MCU_VAR) Mcu_GstConfiguration[1] =
{
  /* Index: 0 - McuModuleConfiguration0 */
  {
    /* ulStartOfDbToc */
    0x0ED94110UL,

    /* ulMainClockStabCount */
    0x000020C4UL,

    /* ulLVIindicationReg */
    0x00000000UL,

    /* pClockDomainOffset */
    &Mcu_GaaClockOffset[0],

    /* ucClockSettingOffset */
    0x00U,

    /* ucModeSettingOffset */
    0x00U,

    /* ucSequencerSettingOffset */
    0x00U,

    /* pPortGroupSetting */
    &Mcu_GaaPortGroup[0],

    /* ucPortGroupSettingOffset */
    0x00U,

    /* pPortRamArea */
    &Mcu_GaaRamPortGroup[0],

    /* ucPortRamAreaOffset */
    0x00U,

    /* ucNumOfPortGroup */
    0x01U,

    /* ucINTCWEND */
    0x01U
  }
};


/* END Msg(2:0315)-5 */
/* END Msg(2:3211)-4 */
/* END Msg(4:3408)-1 */
#define MCU_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Mcu_MemMap.h"

#define MCU_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "Mcu_MemMap.h"
/* QAC Warning: START Msg(2:3211)-4 */
/* QAC Warning: START Msg(2:0315)-5 */
/* Structure for MCU clock setting configuration */
CONST(Mcu_ClockSetting, MCU_VAR) Mcu_GstClockSetting[1] =
{
  /* Index: 0 - McuClockSettingConfig0 */
  {
    /* pCkscSel */
    &Mcu_GstCkscSetting[0],

    /* ucCkscSelOffset */
    0x00U,

    /* ulPLLControlValue */
    0x0000083BUL,

    /* ulMainOscStabTime */
    0x0001FFFFUL,

    /* usFoutDivReg */
    0x0001U,

    /* ucSelectedSrcClock */
    0x0DU,

    /* ucMosccRegValue */
    0x02U,

    /* ucSelectedSTPMK */
    0x01U,

    /* ucNoOfIsoCkscReg */
    0x03U,

    /* ucNoOfAwoCkscReg */
    0x04U,

    /* ucNoOfPllIsoCkscReg */
    0x07U,

    /* ucNoOfPllAwoCkscReg */
    0x00U,

    /* ucCkscPllIndexOffset */
    0x07U,

    /* ucPllSelectedSrcClock */
    0x01U,

    /* blPllActCheck */
    MCU_TRUE,

    /* usCLMA0CMPL */
    0x01BCU,

    /* usCLMA0CMPH */
    0x0280U,

    /* usCLMA1CMPL */
    0x03A9U,

    /* usCLMA1CMPH */
    0x04C3U,

    /* usCLMA2CMPL */
    0x0077U,

    /* usCLMA2CMPH */
    0x00D6U
  }
};


/* END Msg(2:0315)-5 */
/* END Msg(2:3211)-4 */
/* QAC Warning: START Msg(2:3211)-4 */
/* QAC Warning: START Msg(2:3132)-8 */
/* Structure for MCU mode setting configuration */
CONST(Mcu_ModeSetting, MCU_VAR) Mcu_GstModeSetting[1] =
{
  /* Index: 0 - McuModeSettingConf0 */
  {
    /* ulPowerDownWakeupType0 */
    0xFBFF7F9FUL,

    /* ulPowerDownWakeupTypeIso0 */
    0xFFFFFFFFUL,

    /* ucModeType */
    MCU_HALT_MODE,

    /* blModeTransitionReq */
    MCU_FALSE,

    /* blMainOscOperation */
    MCU_TRUE
  }
};


/* END Msg(2:3132)-8 */
/* END Msg(2:3211)-4 */
/* QAC Warning: START Msg(2:3892)-7 */
/* QAC Warning: START Msg(2:3132)-8 */
/* Array for CKSC register setting */
CONST(Mcu_CkscSetting, MCU_VAR)Mcu_GstCkscSetting[14] =
{
  /* Index: 0 - McuIsoCanosc0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_NOT_USED,

    /* usCkscDividerSelRegOffset */
    MCU_REG_CKSC_ICANOSCD_CTL,

    /* usCkscStpmskSelRegOffset */
    MCU_REG_CKSC_ICANOSCD_STPM,

    /* ucCkscSourceSelRegValue */
    0x00U,

    /* ucCkscDividerSelRegValue */
    0x01U,

    /* ucCkscControlval */
    0x06U
  },

  /* Index: 1 - McuIsoCsi0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_ICSIS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_NOT_USED,

    /* usCkscStpmskSelRegOffset */
    MCU_STPM_NOT_AVAILABLE,

    /* ucCkscSourceSelRegValue */
    0x03U,

    /* ucCkscDividerSelRegValue */
    0x00U,

    /* ucCkscControlval */
    0x01U
  },

  /* Index: 2 - McuIsoLrosc0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_NOT_USED,

    /* usCkscDividerSelRegOffset */
    MCU_NOT_USED,

    /* usCkscStpmskSelRegOffset */
    MCU_STPM_NOT_AVAILABLE,

    /* ucCkscSourceSelRegValue */
    0x00U,

    /* ucCkscDividerSelRegValue */
    0x00U,

    /* ucCkscControlval */
    0x00U
  },

  /* Index: 3 - McuAwoAdca00 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_AADCAS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_REG_CKSC_AADCAD_CTL,

    /* usCkscStpmskSelRegOffset */
    MCU_REG_CKSC_AADCAD_STPM,

    /* ucCkscSourceSelRegValue */
    0x01U,

    /* ucCkscDividerSelRegValue */
    0x01U,

    /* ucCkscControlval */
    0x07U
  },

  /* Index: 4 - McuAwoFout0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_AFOUTS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_NOT_USED,

    /* usCkscStpmskSelRegOffset */
    MCU_REG_CKSC_AFOUTS_STPM,

    /* ucCkscSourceSelRegValue */
    0x01U,

    /* ucCkscDividerSelRegValue */
    0x00U,

    /* ucCkscControlval */
    0x05U
  },

  /* Index: 5 - McuAwoTauj0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_ATAUJS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_REG_CKSC_ATAUJD_CTL,

    /* usCkscStpmskSelRegOffset */
    MCU_REG_CKSC_ATAUJD_STPM,

    /* ucCkscSourceSelRegValue */
    0x02U,

    /* ucCkscDividerSelRegValue */
    0x01U,

    /* ucCkscControlval */
    0x07U
  },

  /* Index: 6 - McuAwoWdta0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_NOT_USED,

    /* usCkscDividerSelRegOffset */
    MCU_REG_CKSC_AWDTAD_CTL,

    /* usCkscStpmskSelRegOffset */
    MCU_REG_CKSC_AWDTAD_STPM,

    /* ucCkscSourceSelRegValue */
    0x00U,

    /* ucCkscDividerSelRegValue */
    0x01U,

    /* ucCkscControlval */
    0x06U
  },

  /* Index: 7 - CPUCLK */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_CPUCLKS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_REG_CKSC_CPUCLKD_CTL,

    /* usCkscStpmskSelRegOffset */
    MCU_STPM_NOT_AVAILABLE,

    /* ucCkscSourceSelRegValue */
    0x03U,

    /* ucCkscDividerSelRegValue */
    0x11U,

    /* ucCkscControlval */
    0x03U
  },

  /* Index: 8 - McuIsoAdca10 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_IADCAS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_REG_CKSC_IADCAD_CTL,

    /* usCkscStpmskSelRegOffset */
    MCU_STPM_NOT_AVAILABLE,

    /* ucCkscSourceSelRegValue */
    0x03U,

    /* ucCkscDividerSelRegValue */
    0x01U,

    /* ucCkscControlval */
    0x03U
  },

  /* Index: 9 - McuIsoCan0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_ICANS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_NOT_USED,

    /* usCkscStpmskSelRegOffset */
    MCU_REG_CKSC_ICANS_STPM,

    /* ucCkscSourceSelRegValue */
    0x02U,

    /* ucCkscDividerSelRegValue */
    0x00U,

    /* ucCkscControlval */
    0x05U
  },

  /* Index: 10 - McuIsoLin0 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_ILINS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_REG_CKSC_ILIND_CTL,

    /* usCkscStpmskSelRegOffset */
    MCU_REG_CKSC_ILIND_STPM,

    /* ucCkscSourceSelRegValue */
    0x01U,

    /* ucCkscDividerSelRegValue */
    0x01U,

    /* ucCkscControlval */
    0x07U
  },

  /* Index: 11 - McuIsoPeri10 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_IPERI1S_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_NOT_USED,

    /* usCkscStpmskSelRegOffset */
    MCU_STPM_NOT_AVAILABLE,

    /* ucCkscSourceSelRegValue */
    0x01U,

    /* ucCkscDividerSelRegValue */
    0x00U,

    /* ucCkscControlval */
    0x01U
  },

  /* Index: 12 - McuIsoPeri20 */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_IPERI2S_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_NOT_USED,

    /* usCkscStpmskSelRegOffset */
    MCU_STPM_NOT_AVAILABLE,

    /* ucCkscSourceSelRegValue */
    0x01U,

    /* ucCkscDividerSelRegValue */
    0x00U,

    /* ucCkscControlval */
    0x01U
  },

  /* Index: 13 - PPLLCLK */
  {
    /* ucCkscSourceSelRegNum */
    MCU_REG_CKSC_PPLLCLKS_CTL,

    /* usCkscDividerSelRegOffset */
    MCU_NOT_USED,

    /* usCkscStpmskSelRegOffset */
    MCU_STPM_NOT_AVAILABLE,

    /* ucCkscSourceSelRegValue */
    0x03U,

    /* ucCkscDividerSelRegValue */
    0x00U,

    /* ucCkscControlval */
    0x01U
  }
};


/* END Msg(2:3132)-8 */
/* END Msg(2:3892)-7 */
/* MISRA Violation: START Msg(4:0303)-3 */
/* Array of Port Group Configuration */
CONST(Mcu_PortGroupAddress, MCU_VAR) Mcu_GaaPortGroup[1] =
{
  /* Index: 0 - McuPortGroupConf0 */
  {
    /* pPortAddress */
    (volatile uint32 *) &PORTREG9PSR
  }
};



/* END Msg(4:0303)-3 */
/* QAC Warning: START Msg(2:3211)-4 */
/* QAC Warning: START Msg(2:0315)-5 */
/* Array of Sequencer Setting */
CONST(Mcu_SequencerSetting, MCU_VAR) Mcu_GstSequencerSetting[1] =
{
  /* Index: 0 - McuLowPowerSequencer0 */
  {
    /* pDigitalInputModeSetting */
    &Mcu_GstDigitalInputModeSetting[0],

    /* pTAUJ0ChRegs */
    /* MISRA Violation: START Msg(4:0303)-3 */
    (P2VAR(volatile TAUJChReg, TYPEDEF, MCU_CONFIG_DATA)) &TAUJ0CH0REG,
    /* END Msg(4:0303)-3 */

    /* ulSequencerCtlReg */
    0x00000001UL,

    /* ulTauj0TimerCntVal */
    0x00000000UL,

    /* usExternalSensorStabTime */
    0x0000U,

    /* usPrescaler */
    0xFFFFU,

    /* ucBaudrate */
    0xFFU,

    /* ucChannelMask */
    0x01U
  }
};


/* END Msg(2:0315)-5 */
/* END Msg(2:3211)-4 */
/* Array of Digital Input Mode setting */
CONST(Mcu_DigitalInputSetting, MCU_VAR) Mcu_GstDigitalInputModeSetting[1] =
{
  /* Index: 0 - 1 */
  {
    /* ulDigitalPinSelreg0 */
    0x00000001UL,

    /* ulDigitalPinDataSetReg0 */
    0x00000000UL
  }
};




#define MCU_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "Mcu_MemMap.h"

#define MCU_START_SEC_CONFIG_DATA_8
#include "Mcu_MemMap.h"
/* QAC Warning: START Msg(2:3674)-9 */
/* Array of clock Configuration */
CONST(uint8, MCU_VAR) Mcu_GaaClockOffset[] =
{
  /* Index: 0 -  */
  MCU_REG_CKSC_ATAUJS_CTL,
  MCU_REG_CKSC_ARTCAS_CTL,
  MCU_REG_CKSC_AADCAS_CTL,
  MCU_REG_CKSC_AFOUTS_CTL,
  MCU_REG_CKSC_CPUCLKS_CTL,
  MCU_REG_CKSC_PPLLCLKS_CTL,
  MCU_REG_CKSC_IPERI1S_CTL,
  MCU_REG_CKSC_IPERI2S_CTL,
  MCU_REG_CKSC_ILINS_CTL,
  MCU_REG_CKSC_IADCAS_CTL,
  MCU_REG_CKSC_ICANS_CTL,
  MCU_REG_CKSC_ICSIS_CTL,
  MCU_REG_CKSC_ICANOSCD_CTL,
  MCU_REG_CKSC_IIICS_CTL,
  0xFFU,
  0x00U
};



/* END Msg(2:3674)-9 */
#define MCU_STOP_SEC_CONFIG_DATA_8
#include "Mcu_MemMap.h"

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

/*******************************************************************************
**                          End of File                                       **
*******************************************************************************/
