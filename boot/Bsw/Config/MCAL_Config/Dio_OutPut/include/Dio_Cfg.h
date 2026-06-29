/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Dio_Cfg.h                                                   */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2018 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains pre-compile time parameters.                            */
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
 * V1.0.0:  02-Sep-2015  : Initial Version
 * V2.0.0   25-Oct-2016  : As part of ARDAABC-882 and ARDAABC-626 Jira Ticket,
 *                         the following changes are made:
 *                        1) Removed AR 3.2.2 related functionality and
 *                           added AR 4.2.2 where applicable.
 * V2.0.1   24-Jan-2017  : As part of ARDAABC-882 Jira Ticket,
 *                         the following changes are made:
 *                        1) Updated header comment based on acceptance finding
 * V2.0.2   31-May-2018  : As part of ARDAABD-2990 Jira ticket, the following
 *                         changes are made.
 *                         a.Removed generation of Dio_InitRamMirror.
 *                         b.Copyright information updated.
 */
/******************************************************************************/

/*******************************************************************************
**                   Generation Tool Version                                  **
*******************************************************************************/
/*
 * TOOL VERSION:  2.2.6
 */

/*******************************************************************************
**                          Input File                                        **
*******************************************************************************/
/*
 * INPUT FILE:    E:\PuHua_Tbox\Tools\ASR_RH850F1K_MCAL_Ver42.08.00\Config\Config\ECUC\test_Dio_Dio0_ecuc.arxml
 *                E:\PuHua_Tbox\Tools\ASR_RH850F1K_MCAL_Ver42.08.00\Config\modules\dio\R422_DIO_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\Tools\ASR_RH850F1K_MCAL_Ver42.08.00\Config\stubs\4.2.2\Dem\xml\Dem_Dio.arxml
 * GENERATED ON:  14 Jan 2026 - 18:15:52
 */


#ifndef DIO_CFG_H
#define DIO_CFG_H
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define DIO_CFG_AR_RELEASE_MAJOR_VERSION  4U
#define DIO_CFG_AR_RELEASE_MINOR_VERSION  2U
#define DIO_CFG_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define DIO_CFG_SW_MAJOR_VERSION   2U
#define DIO_CFG_SW_MINOR_VERSION   0U


/*******************************************************************************
**                       Common Published Information                         **
*******************************************************************************/

#define DIO_AR_RELEASE_MAJOR_VERSION_VALUE  4U
#define DIO_AR_RELEASE_MINOR_VERSION_VALUE  2U
#define DIO_AR_RELEASE_REVISION_VERSION_VALUE  2U

#define DIO_SW_MAJOR_VERSION_VALUE  2U
#define DIO_SW_MINOR_VERSION_VALUE  0U
#define DIO_SW_PATCH_VERSION_VALUE  7U

#define DIO_VENDOR_ID_VALUE  59U
#define DIO_MODULE_ID_VALUE  120U

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/* Instance ID of the DIO Driver */
#define DIO_INSTANCE_ID_VALUE               0U

/* Pre-compile option for Version information */
#define DIO_AR_VERSION                      DIO_AR_HIGHER_VERSION

/* Implements DIO066 */
/* Implements DIO142_Conf */ 
/* Implements DIO124 */ 
/* Pre-compile option for Development Error Detect */
#define DIO_DEV_ERROR_DETECT                STD_OFF

/* Implements DIO143_Conf */
/* Pre-compile option for Version Info API */
#define DIO_VERSION_INFO_API                STD_ON

/* Implements DIO153_Conf */
/* Pre-compile option for presence of Dio_FlipChannel API */
#define DIO_FLIP_CHANNEL_API                STD_ON

/* Pre-compile option for presence ofDio_MaskedWritePort API */
#define DIO_MASKED_WRITE_PORT_API           STD_ON

/* Pre-compile option for presence ofDioReadChannelOutPutValue API */
#define DIO_READ_CHANNEL_OUTPUT_VALUE_API   STD_ON

/* Pre-compile option for
        presence ofDioReadChannelGroupOutPutValue API */
#define DIO_READ_CHANNEL_GROUP_OUTPUT_VALUE_API STD_ON

/* Pre-compile option for presence of Channel */
#define DIO_CHANNEL_CONFIGURED              STD_ON

/* Pre-compile option for presence of Channel Group */
#define DIO_CHANNELGROUP_CONFIGURED         STD_ON

/* Pre-compile option for enable or disable version check of inter-module
   dependencies */
#define DIO_VERSION_CHECK_EXT_MODULES       STD_ON

/* Pre-compile option for critical section protection */
#define DIO_CRITICAL_SECTION_PROTECTION     STD_ON

/* Indicates the configuration for Write-Verify safety mechanism
   DIO_WV_DISABLE           0 
   DIO_WV_INIT_ONLY         1
   DIO_WV_INIT_RUNTIME      2 */
#define DIO_WRITE_VERIFY                    DIO_WV_DISABLE

/* Indicates if specific error interface orDEM is used */
#define DIO_USE_WRITE_ERROR_INTERFACE       STD_OFF

/* Specifies if RAM mirror is used
   DIO_RAM_MIRROR_DISABLE   0 
   DIO_RAM_MIRROR_ENABLE    1  */
#define DIO_RAM_MIRROR                      DIO_RAM_MIRROR_ENABLE


/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/* Total number of configured ports */
#define DIO_MAXNOOFPORT                     (Dio_PortType)7

/* Total number of configured channels */
#define DIO_MAXNOOFCHANNEL                  (Dio_ChannelType)17

/* Total number of channel groups configured per configset */
#define DIO_NO_OF_CHGRP_PER_CFGSET          (uint8)4

/* Array size for the DIO config set structure */
#define DIO_CONFIG_ARRAY_SIZE               0U

/* Array size for the port group structure */
#define DIO_PORT_GROUP_ARRAY_SIZE           7U

/* Array size for the channel structure */
#define DIO_CHANNEL_ARRAY_SIZE              18U

/* Array size for the channel group structure */
#define DIO_CHANNEL_GROUP_ARRAY_SIZE        4U

/* Configuration Set Handles */
#define DioConfig0                          (&Dio_GstConfiguration[0])

/* DIO Port Configuration Handles */
#define DioConf_DioPort_PortGroup9_Bits0_6  (Dio_PortType)0
#define DioConf_DioPort_PortGroup11_Bits0_15 (Dio_PortType)1
#define DioConf_DioPort_PortGroup8_Bits0_12 (Dio_PortType)2
#define DioConf_DioPort_PortGroup0_Bits0_14 (Dio_PortType)3
#define DioConf_DioPort_PortGroup_1_Bits0_11 (Dio_PortType)4
#define DioConf_DioPort_PortGroup18_Bits0_3 (Dio_PortType)5
#define DioConf_DioPort_PortGroup10_Bits0_15 (Dio_PortType)6

/* The Pointer to Port Group name */

/* DIO Channel Configuration Handles */
#define DioConf_DioChannel_UserConfigCh1    (Dio_ChannelType)0
#define DioConf_DioChannel_UserConfigCh2    (Dio_ChannelType)1
#define DioConf_DioChannel_UserConfigCh3    (Dio_ChannelType)2
#define DioConf_DioChannel_UserConfigCh4    (Dio_ChannelType)3
#define DioConf_DioChannel_DIO_Channel_LEVEL_SHIFT_EN_Pin11_15 (Dio_ChannelType)4
#define DioConf_DioChannel_DIO_Channel_CAN_STB_Pin8_6 (Dio_ChannelType)5
#define DioConf_DioChannel_DIO_Channel_ACC_INT_Pin8_5 (Dio_ChannelType)6
#define DioConf_DioChannel_DIO_Channel_KL30_Voltage_DET_EN_Pin0_12 (Dio_ChannelType)7
#define DioConf_DioChannel_DIO_Channel_KL30_Voltage_DET_INT_Pin0_9 (Dio_ChannelType)8
#define DioConf_DioChannel_DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6 (Dio_ChannelType)9
#define DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8 (Dio_ChannelType)10
#define DioConf_DioChannel_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7 (Dio_ChannelType)11
#define DioConf_DioChannel_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3 (Dio_ChannelType)12
#define DioConf_DioChannel_DIO_Channel_AG591_POWERKEY_EN_Pin18_1 (Dio_ChannelType)13
#define DioConf_DioChannel_DIO_Channel_AG591_RST_EN_Pin18_0 (Dio_ChannelType)14
#define DioConf_DioChannel_DIO_Channel_NAD_TO_MCU_Pin10_13 (Dio_ChannelType)15
#define DioConf_DioChannel_DIO_Channel_MCU_TO_NAD_EN_Pin10_14 (Dio_ChannelType)16
#define DioConf_DioChannel_DIO_Channel_MCU_WAKEUP_NAD_Pin12_0 (Dio_ChannelType)17

/* Channel Mapping for DioChannelBitPosition */
#define DioConfig0_UserConfigCh1_bit        (uint8)0x00
#define DioConfig0_UserConfigCh2_bit        (uint8)0x04
#define DioConfig0_UserConfigCh3_bit        (uint8)0x00
#define DioConfig0_UserConfigCh4_bit        (uint8)0x04
#define DioConfig0_DIO_Channel_LEVEL_SHIFT_EN_Pin11_15_bit (uint8)0x0F
#define DioConfig0_DIO_Channel_CAN_STB_Pin8_6_bit (uint8)0x06
#define DioConfig0_DIO_Channel_ACC_INT_Pin8_5_bit (uint8)0x05
#define DioConfig0_DIO_Channel_KL30_Voltage_DET_EN_Pin0_12_bit (uint8)0x0C
#define DioConfig0_DIO_Channel_KL30_Voltage_DET_INT_Pin0_9_bit (uint8)0x09
#define DioConfig0_DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6_bit (uint8)0x06
#define DioConfig0_DIO_Channel_IG1_INT_Pin1_8_bit (uint8)0x08
#define DioConfig0_DIO_Channel_NAD_V2X_5V0__EN_Pin1_7_bit (uint8)0x07
#define DioConfig0_DIO_Channel_NAD_V2X_3V8_EN_Pin18_3_bit (uint8)0x03
#define DioConfig0_DIO_Channel_AG591_POWERKEY_EN_Pin18_1_bit (uint8)0x01
#define DioConfig0_DIO_Channel_AG591_RST_EN_Pin18_0_bit (uint8)0x00
#define DioConfig0_DIO_Channel_NAD_TO_MCU_Pin10_13_bit (uint8)0x0D
#define DioConfig0_DIO_Channel_MCU_TO_NAD_EN_Pin10_14_bit (uint8)0x0E

/* The Pointer to Port Channel name */

/* DIO Channel Group Configuration Handles */
#define DioConf_DioChannelGroup_UserConfigChGrp1 (&Dio_GstChannelGroupData[0])
#define DioConf_DioChannelGroup_UserConfigChGrp2 (&Dio_GstChannelGroupData[1])
#define DioConf_DioChannelGroup_UserConfigChGrp3 (&Dio_GstChannelGroupData[2])
#define DioConf_DioChannelGroup_UserConfigChGrp4 (&Dio_GstChannelGroupData[3])


/* Size of the Dio Channel Group Structure */
#define DIO_SIZE_OF_CHGRP_STRUCT 4U

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

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

/*******************************************************************************
**                      Memmap include definition macros                      **
*******************************************************************************/
/* Implements SWS_BSW_00006 */
#if(DIO_AR_VERSION == DIO_AR_HIGHER_VERSION)
/* QAC Warning: START Msg(2:0832)-1 */
#define DIO_MEMMAP_FILE "Dio_MemMap.h"

#elif(DIO_AR_VERSION == DIO_AR_LOWER_VERSION)

#define DIO_MEMMAP_FILE "MemMap.h"
/* END Msg(2:0832)-1 */
#else

#error "AR version not correct"

#endif

#endif /* DIO_CFG_H  */


/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
