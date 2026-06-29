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
 * INPUT FILE:    E:\PuHua_Tbox\Tools\ASR_RH850F1K_MCAL_Ver42.08.00\Config\Config\ECUC\test_Dio_Dio0_ecuc.arxml
 *                E:\PuHua_Tbox\Tools\ASR_RH850F1K_MCAL_Ver42.08.00\Config\modules\dio\R422_DIO_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\Tools\ASR_RH850F1K_MCAL_Ver42.08.00\Config\stubs\4.2.2\Dem\xml\Dem_Dio.arxml
 * GENERATED ON:  14 Jan 2026 - 18:15:52
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
  /* Index: 0 - PortGroup9_Bits0_6 */
  {
    /* ucPortGroupIndex */
    0x02U,

    /* ulModeMask */
    0xFFFFFF80UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 1 - PortGroup11_Bits0_15 */
  {
    /* ucPortGroupIndex */
    0x05U,

    /* ulModeMask */
    0xFFFF0000UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 2 - PortGroup8_Bits0_12 */
  {
    /* ucPortGroupIndex */
    0x03U,

    /* ulModeMask */
    0xFFFFE000UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 3 - PortGroup0_Bits0_14 */
  {
    /* ucPortGroupIndex */
    0x01U,

    /* ulModeMask */
    0xFFFF8000UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 4 - PortGroup_1_Bits0_11 */
  {
    /* ucPortGroupIndex */
    0x06U,

    /* ulModeMask */
    0xFFFFF000UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 5 - PortGroup18_Bits0_3 */
  {
    /* ucPortGroupIndex */
    0x00U,

    /* ulModeMask */
    0xFFFFFFF0UL,

    /* ucPortType */
    0x02U
  },

  /* Index: 6 - PortGroup10_Bits0_15 */
  {
    /* ucPortGroupIndex */
    0x04U,

    /* ulModeMask */
    0xFFFF0000UL,

    /* ucPortType */
    0x02U
  }
};


/* Data Structure of DIO Port Channel Configuration */
CONST(Dio_PortChannel, DIO_CONST)
                               Dio_GstPortChannel[DIO_CHANNEL_ARRAY_SIZE] =
{
  /* Index: 0 - UserConfigCh1 */
  {
    /* usMask */
    0x0001U,

    /* ucPortIndex */
    0x00U
  },

  /* Index: 1 - UserConfigCh2 */
  {
    /* usMask */
    0x0010U,

    /* ucPortIndex */
    0x00U
  },

  /* Index: 2 - UserConfigCh3 */
  {
    /* usMask */
    0x0001U,

    /* ucPortIndex */
    0x01U
  },

  /* Index: 3 - UserConfigCh4 */
  {
    /* usMask */
    0x0010U,

    /* ucPortIndex */
    0x01U
  },

  /* Index: 4 - DIO_Channel_LEVEL_SHIFT_EN_Pin11_15 */
  {
    /* usMask */
    0x8000U,

    /* ucPortIndex */
    0x01U
  },

  /* Index: 5 - DIO_Channel_CAN_STB_Pin8_6 */
  {
    /* usMask */
    0x0040U,

    /* ucPortIndex */
    0x02U
  },

  /* Index: 6 - DIO_Channel_ACC_INT_Pin8_5 */
  {
    /* usMask */
    0x0020U,

    /* ucPortIndex */
    0x02U
  },

  /* Index: 7 - DIO_Channel_KL30_Voltage_DET_EN_Pin0_12 */
  {
    /* usMask */
    0x1000U,

    /* ucPortIndex */
    0x03U
  },

  /* Index: 8 - DIO_Channel_KL30_Voltage_DET_INT_Pin0_9 */
  {
    /* usMask */
    0x0200U,

    /* ucPortIndex */
    0x03U
  },

  /* Index: 9 - DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6 */
  {
    /* usMask */
    0x0040U,

    /* ucPortIndex */
    0x04U
  },

  /* Index: 10 - DIO_Channel_IG1_INT_Pin1_8 */
  {
    /* usMask */
    0x0100U,

    /* ucPortIndex */
    0x04U
  },

  /* Index: 11 - DIO_Channel_NAD_V2X_5V0__EN_Pin1_7 */
  {
    /* usMask */
    0x0080U,

    /* ucPortIndex */
    0x04U
  },

  /* Index: 12 - DIO_Channel_NAD_V2X_3V8_EN_Pin18_3 */
  {
    /* usMask */
    0x0008U,

    /* ucPortIndex */
    0x05U
  },

  /* Index: 13 - DIO_Channel_AG591_POWERKEY_EN_Pin18_1 */
  {
    /* usMask */
    0x0002U,

    /* ucPortIndex */
    0x05U
  },

  /* Index: 14 - DIO_Channel_AG591_RST_EN_Pin18_0 */
  {
    /* usMask */
    0x0001U,

    /* ucPortIndex */
    0x05U
  },

  /* Index: 15 - DIO_Channel_NAD_TO_MCU_Pin10_13 */
  {
    /* usMask */
    0x2000U,

    /* ucPortIndex */
    0x06U
  },

  /* Index: 16 - DIO_Channel_MCU_TO_NAD_EN_Pin10_14 */
  {
    /* usMask */
    0x4000U,

    /* ucPortIndex */
    0x06U
  },
  /* Index: 17 - DIO_Channel_MCU_WAKEUP_NAD_Pin12_0 */
  {
    /* usMask */
    0x0001U,

    /* ucPortIndex */
    0x07U
  }
};



/* Data Structure of DIO Port Channel Group Configuration */
CONST(Dio_ChannelGroupType, DIO_CONST)
                    Dio_GstChannelGroupData[DIO_CHANNEL_GROUP_ARRAY_SIZE] =
{
  /* Index: 0 - UserConfigChGrp1 */
  {
    /* usMask */
    0x000FU,

    /* ucOffset */
    0x00U,

    /* ucPortIndex */
    0x00U
  },

  /* Index: 1 - UserConfigChGrp2 */
  {
    /* usMask */
    0x0006U,

    /* ucOffset */
    0x01U,

    /* ucPortIndex */
    0x00U
  },

  /* Index: 2 - UserConfigChGrp3 */
  {
    /* usMask */
    0x000FU,

    /* ucOffset */
    0x00U,

    /* ucPortIndex */
    0x01U
  },

  /* Index: 3 - UserConfigChGrp4 */
  {
    /* usMask */
    0x0006U,

    /* ucOffset */
    0x01U,

    /* ucPortIndex */
    0x01U
  }
};



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
