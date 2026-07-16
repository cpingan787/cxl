/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Dio_Lcfg.c                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2017-2021 Renesas Electronics Corporation                     */
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
 * V1.0.0:  10-Jul-2017  : Initial Version
 * V1.0.1   18-Apr-2018  : Following changes are made:
 *                         1. As part of Merging activity,ARDAABD-3484
 *                            a. QAC warning justifiaction
 *                            added for Msg(2:0862).
 * V1.0.2   09-Apr-2021  : As part of ARDAABD-5042, the following changes are
 *                         made:
 *                         a) Removed 'ASIL_B' from the memory section macros
 *                            'DIO_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED' and
 *                            'DIO_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED'.
 *                         b) Copyright information has been updated.
 */
/******************************************************************************/

/*******************************************************************************
**                   Generation Tool Version                                  **
*******************************************************************************/
/*
 * TOOL VERSION:  2.2.6
 */

/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
/*
 * INPUT FILE:    D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Dio_Dio0_ecuc.arxml
 *                D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\modules\dio\R422_DIO_F1x_BSWMDT.arxml
 *                D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Dio.arxml
 * GENERATED ON:  29 Jun 2026 - 16:10:22
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Dio.h"
#include "Dio_LTTypes.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define DIO_LCFG_C_AR_RELEASE_MAJOR_VERSION  4U
#define DIO_LCFG_C_AR_RELEASE_MINOR_VERSION  2U
#define DIO_LCFG_C_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define DIO_LCFG_C_SW_MAJOR_VERSION   2U
#define DIO_LCFG_C_SW_MINOR_VERSION   0U


/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/

#if (DIO_LTTYPES_AR_RELEASE_MAJOR_VERSION != \
         DIO_LCFG_C_AR_RELEASE_MAJOR_VERSION)
  #error "Dio_Lcfg.c : Mismatch in Release Major Version"
#endif

#if (DIO_LTTYPES_AR_RELEASE_MINOR_VERSION != \
         DIO_LCFG_C_AR_RELEASE_MINOR_VERSION)
  #error "Dio_Lcfg.c : Mismatch in Release Minor Version"
#endif

#if (DIO_LTTYPES_AR_RELEASE_REVISION_VERSION != \
         DIO_LCFG_C_AR_RELEASE_REVISION_VERSION)
  #error "Dio_Lcfg.c : Mismatch in Release Revision Version"
#endif

#if (DIO_LTTYPES_SW_MAJOR_VERSION != DIO_LCFG_C_SW_MAJOR_VERSION)
  #error "Dio_Lcfg.c : Mismatch in Software Major Version"
#endif

#if (DIO_LTTYPES_SW_MINOR_VERSION != DIO_LCFG_C_SW_MINOR_VERSION)
  #error "Dio_Lcfg.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
 **                        QAC Warning                                        **
 ******************************************************************************/
/* 1.  QAC Warning:                                                           */
/* Message       : (2:0832) Macro substitution in #include preprocessing      */
/*                 directive.                                                 */
/* Rule          : No MISRA-C:2004 Rule                                       */
/* Justification : Required to optimize MemMap inclusion because of ASR403    */
/*                 and ASR422 support.                                        */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for QAC Warning START Msg(2:0832)-1 and               */
/*                 END Msg(2:0832)-1 tags in the code.                        */
/******************************************************************************/
/* 2. QAC WARNING:                                                            */
/* Message       : (2:0862) This #include MemMap.h directive is               */
/*                  redundant                                                 */
/* Justification : Inclusion of the Det.h and MemMap.h file                   */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0862)-2 and                           */
/*                 END Msg(2:0862)-2 tags in the code.                        */
/******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/


#define DIO_START_SEC_CONFIG_DATA_UNSPECIFIED
/* QAC Warning: START Msg(2:0832)-1 */
#include DIO_MEMMAP_FILE
/* END Msg(2:0832)-1 */

/* Structure of DIO Port Group Configuration */
CONST (Dio_PortGroup, DIO_CONST)
                              Dio_GstPortGroup[DIO_PORT_GROUP_ARRAY_SIZE] =
{
  /* Index: 0 - PortGroup0_Bits0_14 */
  {
    /* ucPortGroupIndex */
    0x01U,

    /* ulModeMask */
    0xFFFF8000UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 1 - PortGroup8_Bits0_12 */
  {
    /* ucPortGroupIndex */
    0x03U,

    /* ulModeMask */
    0xFFFFE000UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 2 - PortGroup9_Bits0_6 */
  {
    /* ucPortGroupIndex */
    0x02U,

    /* ulModeMask */
    0xFFFFFF80UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 3 - PortGroup10_Bits0_15 */
  {
    /* ucPortGroupIndex */
    0x00U,

    /* ulModeMask */
    0xFFFF0000UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 4 - PortGroup11_Bits0_7 */
  {
    /* ucPortGroupIndex */
    0x04U,

    /* ulModeMask */
    0xFFFFFF00UL,

    /* ucPortType */
    0x02U
  }
};


/* Data Structure of DIO Port Channel Configuration */
CONST(Dio_PortChannel, DIO_CONST)
                               Dio_GstPortChannel[DIO_CHANNEL_ARRAY_SIZE] =
{
  /* Index: 0 - DIO_Channel_CanRx_DET_INT_Pin0_1 */
  {
    /* usMask */
    0x0002U,

    /* ucPortIndex */
    0x00U
  },

  /* Index: 1 - DIO_Channel_RTC_INT_Pin0_6 */
  {
    /* usMask */
    0x0040U,

    /* ucPortIndex */
    0x00U
  },

  /* Index: 2 - DIO_Channel_KL30_DOWN_DET_INT_Pin0_9 */
  {
    /* usMask */
    0x0200U,

    /* ucPortIndex */
    0x00U
  },

  /* Index: 3 - DIO_Channel_LTE_WAKEUP_MCU_Pin8_2 */
  {
    /* usMask */
    0x0004U,

    /* ucPortIndex */
    0x01U
  },

  /* Index: 4 - DIO_Channel_CAN_STB_Pin8_6 */
  {
    /* usMask */
    0x0040U,

    /* ucPortIndex */
    0x01U
  },

  /* Index: 5 - DIO_Channel_ECALL_BUTTON_DET_Pin9_1 */
  {
    /* usMask */
    0x0002U,

    /* ucPortIndex */
    0x02U
  }
};



/* Data Structure of DIO Port Channel Group Configuration */
/* CONST(Dio_ChannelGroupType, DIO_CONST)
                    Dio_GstChannelGroupData[DIO_CHANNEL_GROUP_ARRAY_SIZE]; */

#define DIO_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/* QAC Warning: START Msg(2:0832)-1 */
/* QAC Warning: START Msg((2:0862))-2 */
#include DIO_MEMMAP_FILE
/* END Msg(2:0832)-1 */
/* END Msg(2:0862)-2 */

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

/*******************************************************************************
**                          End of File                                       **
*******************************************************************************/
