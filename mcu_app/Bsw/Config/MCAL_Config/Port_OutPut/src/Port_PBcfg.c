/*===========================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Port_PBcfg.c                                                */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains Base Address of Port Groups and Filters configured      */
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
 *  V1.0.0:  09-Sep-2015  : Initial Version
 *
 *  V1.0.1:  16-Sep-2015  : The value generation for JPMCSR and APSR are
 *                          corrected
 *
 *  V1.0.2:  30-Dec-2015  : The following changes are made
 *                          1. As a part of ticket ARDAAGA-138
 *                          ucNoOfPortNumRegs, ucNoOfPortAnalogRegs
 *                          ucNoOfPortInputRegs, ucNoOfPortJRegs is updated
 *                          in case of multiple configure set  for
 *                          number of port groups configured in
 *                          Port_GstConfigType structure.
 *                          2. As a part of ticket ARDAAGA-139
 *                          usInitModeJPSRRegVal, usInitModeRegJPUVal
 *                          is corrected to ulInitModeJPSRRegVal,
 *                          usInitModeJPURegVal respectively.
 *                          3. As a part of ticket ARDAAGA-141
 *                          ucPortGroupIndex is updated in
 *                          Port_GstPinChangeableDetailsList for JTAG during
 *                          PortPinModeChangeable.
 *                          and ucPortGroupIndex is updated in
 *                          Port_GstPinChangeableDetailsList for ANALOG
 *                          during PortPinDirectionChangeable.
 *                          5. As part JIRA ARDAAGA-8, Digital_Filter_Group
 *                          and Analog_Filter_Group implementation
 *                          is modified
 *                          6. As part JIRA ARDAAGA-133 new member
 *                          ucDeepStopSupp is implemented and added
 *                          for Port_GstNumRegs and Port_GstAnalogRegs
 *                          structure.
 * V2.0.0:  21-Oct-2016   : As part of ARDAABC-867 Jira ticket, the following
 *                          changes are made:
 *                          1. Generate 32-bit masks values instead of 64-bit
 *                          for PMSR, JPMSR and APMSR.
 * V2.2.0:  14-Nov-2016   : As part of ARDAABC-542 Jira ticket the following
 *                          changes are made:
 *                          1. Include MemMap header file from "Port_Cfg.h".
 *                          2. Use precompile switches to select different
 *                          memory section names in AR4.0.3 and AR4.2.2.
 * V2.2.1:  24-Nov-2016   : As part of ARDAABC-542 Jira ticket the following
 *                          changes are made:
 *                          1. Removed multiple memory sections Start/Stop
 *                          with the same section.
 * V2.2.2:  24-Jan-2017   : As part of ARDAABC-867 Jira ticket the following
 *                          changes are made:
 *                          1. Removed Port_GstAlphaRegs array.
 * V2.2.3:  07-Feb-2017   : As part of ARDAABC-867 Jira ticket the following
 *                          changes are made:
 *                          1. Removed Port_GstEDCRegs and Port_GstDNFCKSRegs
 *                             arrays.
 * V2.2.4:  29-Jun-2017   : As per the requirement EAAR_PN0034_NR_0018,
 *                          1. Copyright information is updated.
 * V2.2.5:  25-May-2018   : 1. As part of JIRA ARDAABD-2125, new member
 *                          ucDeepStopSupp is implemented and added
 *                          for Port_GstJTAGRegs structure.
 *                          2. As part of ARDAABD-1580, Comment of
 *                          the structure Port_GstFCLARegs is updated.
 * V2.2.6:  09-Apr-2021   : As part of ARDAABD-5045, the following changes are
 *                          made:
 *                          a) Removed
 *                             'PORT_START_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED'
 *                             and
 *                             'PORT_STOP_SEC_CONFIG_DATA_ASIL_B_UNSPECIFIED'.
 *                          b) Copyright information is updated.
 * V2.2.7:  12-Aug-2021   : As part of ARDAABD-6891, corrected the generation
 *                          of ucNoOfPinChangeableDetails.
 * V2.2.8:  09-Sep-2021   : As part of ARDAABD-6581, corrected the generation
 *                          of ucNoOfPortNumRegs, ucNoOfPortAnalogRegs,
 *                          ucNoOfPortInputRegs and ucNoOfPortJRegs variables.
 */
/******************************************************************************/

/*******************************************************************************
**                       Generation Tool Version                              **
*******************************************************************************/
/*
 * TOOL VERSION:  2.2.8
 */

/*******************************************************************************
**                      Input File                                            **
*******************************************************************************/
/*
 * INPUT FILE:    E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Mcu_Mcu0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Port_Port0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\port\R422_PORT_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Port.arxml
 * GENERATED ON:   2 Apr 2026 - 19:42:59
 */

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Port.h"


/*******************************************************************************
**                       Version Information                                  **
*******************************************************************************/

/* AUTOSAR specification version information */
#define PORT_PBCFG_C_AR_RELEASE_MAJOR_VERSION  4U
#define PORT_PBCFG_C_AR_RELEASE_MINOR_VERSION  2U
#define PORT_PBCFG_C_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define PORT_PBCFG_C_SW_MAJOR_VERSION  2U
#define PORT_PBCFG_C_SW_MINOR_VERSION  4U

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/

#if (PORT_PBTYPES_AR_RELEASE_MAJOR_VERSION != \
  PORT_PBCFG_C_AR_RELEASE_MAJOR_VERSION)
  #error "Port_PBcfg.c : Mismatch in Release Major Version"
#endif

#if (PORT_PBTYPES_AR_RELEASE_MINOR_VERSION != \
  PORT_PBCFG_C_AR_RELEASE_MINOR_VERSION)
  #error "Port_PBcfg.c : Mismatch in Release Minor Version"
#endif

#if (PORT_PBTYPES_AR_RELEASE_REVISION_VERSION != \
  PORT_PBCFG_C_AR_RELEASE_REVISION_VERSION)
  #error "Port_PBcfg.c : Mismatch in Release Revision Version"
#endif

#if (PORT_PBTYPES_SW_MAJOR_VERSION != \
  PORT_PBCFG_C_SW_MAJOR_VERSION)
  #error "Port_PBcfg.c : Mismatch in Software Major Version"
#endif

#if (PORT_PBTYPES_SW_MINOR_VERSION != \
  PORT_PBCFG_C_SW_MINOR_VERSION)
  #error "Port_PBcfg.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

#define PORT_START_SEC_CONFIG_DATA_UNSPECIFIED
#include PORT_MEMMAP_FILE

/* The following structure indicates the starting point of database */
CONST(Port_ConfigType, PORT_CONST) 
                          Port_GstConfiguration[PORT_NUM_OF_CONFIGSET] =
{
  /* Index: 0 - PortConfigSet0 */
  {
    /* ulStartOfDbToc */
    0x0EDF0220UL,

    /* pPortNumRegs */
    &Port_GstNumRegs[0],

    /* pPortJRegs */
    &Port_GstJTAGRegs[0],

    /* pPortAnalogRegs */
    &Port_GstAnalogRegs[0],

    /* pPortInputRegs */
    &Port_GstInputRegs[0],

    /* pPortPinChangeableDetailsList */
    &Port_GstPinChangeableDetailsList[0],

    /* pPortDNFARegs */
    &Port_GstDNFARegs[0],

    /* pPortANFRegs */
    &Port_GstFCLARegs[0],

    /* ucNoOfPortNumRegs */
    0x09U,

    /* ucNoOfPortJRegs */
    0x01U,

    /* ucNoOfPortAnalogRegs */
    0x02U,

    /* ucNoOfPortInputRegs */
    0x01U,

    /* ucNoOfPinChangeableDetails */
    0x1CU,

    /* ucNoOfDNFARegs */
    0x01U,

    /* ucNoOfFCLARegs */
    0x06U
  }
};



/*
 * Array of structures of  port group registers.
 */
CONST(Port_NumRegs, PORT_CONST) 
                            Port_GstNumRegs[PORT_NUM_OF_NUMERIC_PORTS] =
{
  /* Index: 0 - PortConfigSet_0_Port_Group_0 */
  {
    /* ulRegListAvailable */
    0x001FCBF3UL,

    /* ulInitModePSRRegVal */
    0x00000020UL,

    /* ulInitModePMSRRegVal */
    0x00008AD6UL,

    /* ulMaskConfigPMSRRegVal */
    0x80008AD6UL,

    /* ulInitModePMCSRRegVal */
    0x000009CFUL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xC500U,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x0050U,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x0880U,

    /* usInitModePFCRegVal */
    0x000FU,

    /* usInitModePFCAERegVal */
    0x0180U,

    /* ucPortIndex */
    0x00U,

    /* ucDeepStopSupp */
    0x00U
  },

  /* Index: 1 - PortConfigSet_0_Port_Group_1 */
  {
    /* ulRegListAvailable */
    0x001FCBD3UL,

    /* ulInitModePSRRegVal */
    0x00000000UL,

    /* ulInitModePMSRRegVal */
    0x0000F314UL,

    /* ulMaskConfigPMSRRegVal */
    0xFFCFF314UL,

    /* ulInitModePMCSRRegVal */
    0x00000130UL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFFFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x0304U,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x0010U,

    /* usInitModePFCRegVal */
    0x0100U,

    /* usInitModePFCAERegVal */
    0x0010U,

    /* ucPortIndex */
    0x01U,

    /* ucDeepStopSupp */
    0x00U
  },

  /* Index: 2 - PortConfigSet_0_Port_Group_8 */
  {
    /* ulRegListAvailable */
    0x001EC3D3UL,

    /* ulInitModePSRRegVal */
    0x00000004UL,

    /* ulInitModePMSRRegVal */
    0x0000EF3EUL,

    /* ulMaskConfigPMSRRegVal */
    0xFF3FEF3EUL,

    /* ulInitModePMCSRRegVal */
    0x000000AEUL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFFFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x023EU,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0005U,

    /* usInitModePDRegVal */
    0x0002U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x002EU,

    /* usInitModePFCRegVal */
    0x0000U,

    /* usInitModePFCAERegVal */
    0x0000U,

    /* ucPortIndex */
    0x02U,

    /* ucDeepStopSupp */
    0x00U
  },

  /* Index: 3 - PortConfigSet_0_Port_Group_9 */
  {
    /* ulRegListAvailable */
    0x001EC3D3UL,

    /* ulInitModePSRRegVal */
    0x00000000UL,

    /* ulInitModePMSRRegVal */
    0x0000FFB8UL,

    /* ulMaskConfigPMSRRegVal */
    0xFFFBFFB8UL,

    /* ulInitModePMCSRRegVal */
    0x00000004UL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFFFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x0030U,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x0000U,

    /* usInitModePFCRegVal */
    0x0004U,

    /* usInitModePFCAERegVal */
    0x0000U,

    /* ucPortIndex */
    0x03U,

    /* ucDeepStopSupp */
    0x01U
  },

  /* Index: 4 - PortConfigSet_0_Port_Group_10 */
  {
    /* ulRegListAvailable */
    0x001FCBF3UL,

    /* ulInitModePSRRegVal */
    0x00000000UL,

    /* ulInitModePMSRRegVal */
    0x00002BC2UL,

    /* ulMaskConfigPMSRRegVal */
    0xE5F32BC2UL,

    /* ulInitModePMCSRRegVal */
    0x00001A0CUL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFFFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x2040U,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x0800U,

    /* usInitModePFCRegVal */
    0x100CU,

    /* usInitModePFCAERegVal */
    0x0800U,

    /* ucPortIndex */
    0x04U,

    /* ucDeepStopSupp */
    0x01U
  },

  /* Index: 5 - PortConfigSet_0_Port_Group_11 */
  {
    /* ulRegListAvailable */
    0x001FCBF3UL,

    /* ulInitModePSRRegVal */
    0x00000000UL,

    /* ulInitModePMSRRegVal */
    0x0000ED30UL,

    /* ulMaskConfigPMSRRegVal */
    0xFFFFED30UL,

    /* ulInitModePMCSRRegVal */
    0x00000FFCUL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFFFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x0000U,

    /* usInitModePIPCRegVal */
    0x06CCU,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x00E0U,

    /* usInitModePFCRegVal */
    0x0000U,

    /* usInitModePFCAERegVal */
    0x0000U,

    /* ucPortIndex */
    0x05U,

    /* ucDeepStopSupp */
    0x01U
  },

  /* Index: 6 - PortConfigSet_0_Port_Group_12 */
  {
    /* ulRegListAvailable */
    0x001FCBD3UL,

    /* ulInitModePSRRegVal */
    0x00000000UL,

    /* ulInitModePMSRRegVal */
    0x0000FFFEUL,

    /* ulMaskConfigPMSRRegVal */
    0xFFFFFFFEUL,

    /* ulInitModePMCSRRegVal */
    0x00000000UL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFFFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x0000U,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x0000U,

    /* usInitModePFCRegVal */
    0x0000U,

    /* usInitModePFCAERegVal */
    0x0000U,

    /* ucPortIndex */
    0x06U,

    /* ucDeepStopSupp */
    0x01U
  },

  /* Index: 7 - PortConfigSet_0_Port_Group_18 */
  {
    /* ulRegListAvailable */
    0x001E8BD3UL,

    /* ulInitModePSRRegVal */
    0x00000000UL,

    /* ulInitModePMSRRegVal */
    0x0000FFF4UL,

    /* ulMaskConfigPMSRRegVal */
    0xFFFFFFF4UL,

    /* ulInitModePMCSRRegVal */
    0x00000000UL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFFFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x0000U,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x0000U,

    /* usInitModePFCRegVal */
    0x0000U,

    /* usInitModePFCAERegVal */
    0x0000U,

    /* ucPortIndex */
    0x07U,

    /* ucDeepStopSupp */
    0x01U
  },

  /* Index: 8 - PortConfigSet_0_Port_Group_20 */
  {
    /* ulRegListAvailable */
    0x001FCBD3UL,

    /* ulInitModePSRRegVal */
    0x00000000UL,

    /* ulInitModePMSRRegVal */
    0x0000FFDFUL,

    /* ulMaskConfigPMSRRegVal */
    0xFFFFFFDFUL,

    /* ulInitModePMCSRRegVal */
    0x00000000UL,

    /* ulInitModePODCRegVal */
    0x00000000UL,

    /* ulInitModePDSCRegVal */
    0x00000000UL,

    /* usInitModePISRegVal */
    0xFFEFU,

    /* usInitModePISARegVal */
    0x0000U,

    /* usInitModePIBCRegVal */
    0x0000U,

    /* usInitModePIPCRegVal */
    0x0000U,

    /* usInitModePURegVal */
    0x0000U,

    /* usInitModePDRegVal */
    0x0000U,

    /* usInitModePBDCRegVal */
    0x0000U,

    /* usInitModePFCERegVal */
    0x0000U,

    /* usInitModePFCRegVal */
    0x0000U,

    /* usInitModePFCAERegVal */
    0x0000U,

    /* ucPortIndex */
    0x08U,

    /* ucDeepStopSupp */
    0x01U
  }
};



/*
 * Array of structures of  JTAG port group registers.
 */
CONST(Port_JTAGRegs, PORT_CONST) 
                            Port_GstJTAGRegs[PORT_NUM_OF_JTAG_PORTS] =
{
  /* Index: 0 - PortConfigSet_0_Port_Group_0 */
  {
    /* ulMaskConfigJPMSRRegVal */
    0x00FF00FFUL,

    /* ulInitModeJPSRRegVal */
    0x00000000UL,

    /* ulInitModeJPMSRRegVal */
    0x0000FFFFUL,

    /* ulInitModeJPODCRegVal */
    0x00000000UL,

    /* ulInitModeJPMCSRRegVal */
    0x00000000UL,

    /* usInitModeJPIBCRegVal */
    0x0000U,

    /* ulInitModeJPDSCRegVal */
    0x0000U,

    /* usInitModeJPURegVal */
    0x0000U,

    /* usInitModeJPBDCRegVal */
    0x0000U,

    /* usInitModeJPISRegVal */
    0x00FFU,

    /* usInitModeJPFCRegVal */
    0x0000U,

    /* usInitModeJPDRegVal */
    0x0000U,

    /* usInitModeJPFCERegVal */
    0x0000U,

    /* usInitModeJPISARegVal */
    0x0000U,

    /* ucPortIndex */
    0x00U,

    /* ucDeepStopSupp */
    0x00U
  }
};



/*
 * Array of structures of  Analog port group registers.
 */
CONST(Port_AnalogRegs, PORT_CONST) 
                            Port_GstAnalogRegs[PORT_NUM_OF_ANALOG_PORTS] =
{
  /* Index: 0 - PortConfigSet_0_Port_Group_0 */
  {
    /* ulMaskConfigAPMSRRegVal */
    0xFFFFFFFFUL,

    /* ulInitModeAPMSRRegVal */
    0x0000FFFFUL,

    /* ulInitModeAPSRRegVal */
    0x00000000UL,

    /* usInitModeAPIBCRegVal */
    0x0000U,

    /* usInitModeAPBDCRegVal */
    0x0000U,

    /* ucPortIndex */
    0x00U,

    /* ucDeepStopSupp */
    0x00U
  },

  /* Index: 1 - PortConfigSet_0_Port_Group_1 */
  {
    /* ulMaskConfigAPMSRRegVal */
    0xFFFFFFFFUL,

    /* ulInitModeAPMSRRegVal */
    0x0000FFFFUL,

    /* ulInitModeAPSRRegVal */
    0x00000000UL,

    /* usInitModeAPIBCRegVal */
    0x0000U,

    /* usInitModeAPBDCRegVal */
    0x0000U,

    /* ucPortIndex */
    0x01U,

    /* ucDeepStopSupp */
    0x01U
  }
};



/*
 * Array of structures of  Input port group registers.
 */
CONST(Port_IPortRegs, PORT_CONST) Port_GstInputRegs[PORT_NUM_OF_INPUT_PORTS] =
{
  /* Index: 0 - PortConfigSet_0_Port_Group_0 */
  {
    /* usInitModeIPIBCRegVal */
    0x0000U,

    /* ucPortIndex */
    0x00U
  }
};



/*
 * Array provides information of port groups which contain run time
 * changeable port pins.
 */
CONST(Port_PinChangeableDetails, PORT_CONST) 
          Port_GstPinChangeableDetailsList[PORT_NUM_OF_PINS_MODIFIABLE] =
{
  /* Index: 0 - PortGroup0_PortPin0 */
  {
    /* ddPinId */
    0x0000U,

    /* usPinPositionMask */
    0x0001U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 1 - PortGroup0_PortPin1 */
  {
    /* ddPinId */
    0x0001U,

    /* usPinPositionMask */
    0x0002U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 2 - PortGroup0_PortPin2 */
  {
    /* ddPinId */
    0x0002U,

    /* usPinPositionMask */
    0x0004U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 3 - PortGroup0_PortPin3 */
  {
    /* ddPinId */
    0x0003U,

    /* usPinPositionMask */
    0x0008U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 4 - PortGroup0_PortPin4 */
  {
    /* ddPinId */
    0x0004U,

    /* usPinPositionMask */
    0x0010U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x60U
  },

  /* Index: 5 - PortGroup0_PortPin5 */
  {
    /* ddPinId */
    0x0005U,

    /* usPinPositionMask */
    0x0020U,

    /* usChangeableConfigVal */
    0x0020U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x60U
  },

  /* Index: 6 - PortGroup0_PortPin6 */
  {
    /* ddPinId */
    0x0006U,

    /* usPinPositionMask */
    0x0040U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 7 - PortGroup0_PortPin7 */
  {
    /* ddPinId */
    0x0007U,

    /* usPinPositionMask */
    0x0080U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 8 - PortGroup0_PortPin8 */
  {
    /* ddPinId */
    0x0008U,

    /* usPinPositionMask */
    0x0100U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 9 - PortGroup0_PortPin9 */
  {
    /* ddPinId */
    0x0009U,

    /* usPinPositionMask */
    0x0200U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x60U
  },

  /* Index: 10 - PortGroup0_PortPin10 */
  {
    /* ddPinId */
    0x000AU,

    /* usPinPositionMask */
    0x0400U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x60U
  },

  /* Index: 11 - PortGroup0_PortPin11 */
  {
    /* ddPinId */
    0x000BU,

    /* usPinPositionMask */
    0x0800U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x70U
  },

  /* Index: 12 - PortGroup0_PortPin12 */
  {
    /* ddPinId */
    0x000CU,

    /* usPinPositionMask */
    0x1000U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x60U
  },

  /* Index: 13 - PortGroup0_PortPin13 */
  {
    /* ddPinId */
    0x000DU,

    /* usPinPositionMask */
    0x2000U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x60U
  },

  /* Index: 14 - PortGroup0_PortPin14 */
  {
    /* ddPinId */
    0x000EU,

    /* usPinPositionMask */
    0x4000U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x00U,

    /* ucPortType */
    0x60U
  },

  /* Index: 15 - PortGroup1_PortPin4 */
  {
    /* ddPinId */
    0x0013U,

    /* usPinPositionMask */
    0x0010U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x01U,

    /* ucPortType */
    0x70U
  },

  /* Index: 16 - PortGroup1_PortPin5 */
  {
    /* ddPinId */
    0x0014U,

    /* usPinPositionMask */
    0x0020U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x01U,

    /* ucPortType */
    0x70U
  },

  /* Index: 17 - PortGroup8_PortPin6 */
  {
    /* ddPinId */
    0x0021U,

    /* usPinPositionMask */
    0x0040U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x02U,

    /* ucPortType */
    0x60U
  },

  /* Index: 18 - PortGroup8_PortPin7 */
  {
    /* ddPinId */
    0x0022U,

    /* usPinPositionMask */
    0x0080U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x02U,

    /* ucPortType */
    0x70U
  },

  /* Index: 19 - PortGroup8_PortPin10 */
  {
    /* ddPinId */
    0x0025U,

    /* usPinPositionMask */
    0x0400U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x02U,

    /* ucPortType */
    0x20U
  },

  /* Index: 20 - PortGroup8_PortPin11 */
  {
    /* ddPinId */
    0x0026U,

    /* usPinPositionMask */
    0x0800U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x02U,

    /* ucPortType */
    0x20U
  },

  /* Index: 21 - PortGroup9_PortPin2 */
  {
    /* ddPinId */
    0x002AU,

    /* usPinPositionMask */
    0x0004U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x03U,

    /* ucPortType */
    0x70U
  },

  /* Index: 22 - PortGroup10_PortPin2 */
  {
    /* ddPinId */
    0x0031U,

    /* usPinPositionMask */
    0x0004U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x04U,

    /* ucPortType */
    0x40U
  },

  /* Index: 23 - PortGroup10_PortPin3 */
  {
    /* ddPinId */
    0x0032U,

    /* usPinPositionMask */
    0x0008U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x04U,

    /* ucPortType */
    0x60U
  },

  /* Index: 24 - PortGroup10_PortPin9 */
  {
    /* ddPinId */
    0x0038U,

    /* usPinPositionMask */
    0x0200U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x04U,

    /* ucPortType */
    0x70U
  },

  /* Index: 25 - PortGroup10_PortPin11 */
  {
    /* ddPinId */
    0x003AU,

    /* usPinPositionMask */
    0x0800U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x04U,

    /* ucPortType */
    0x70U
  },

  /* Index: 26 - PortGroup10_PortPin12 */
  {
    /* ddPinId */
    0x003BU,

    /* usPinPositionMask */
    0x1000U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x04U,

    /* ucPortType */
    0x70U
  },

  /* Index: 27 - PortGroup10_PortPin15 */
  {
    /* ddPinId */
    0x003EU,

    /* usPinPositionMask */
    0x8000U,

    /* usChangeableConfigVal */
    0x0000U,

    /* ucPortGroupIndex */
    0x04U,

    /* ucPortType */
    0x20U
  }
};



/* Array of structures for Digital Filter registers and Delay */
CONST(Port_DNFARegs, PORT_CONST) Port_GstDNFARegs[PORT_NUM_OF_DNFA] =
{
  /* Index: 0 - PortConfigSet_1_FilterGroup_DNFATAUB0ICTL */
  {
    /* usDNFARegAddrIndex */
    0x0000U,

    /* usDNFAEN */
    0x0300U,

    /* usDELAY */
    0x0001U,

    /* ucDNFACTL */
    0x00U
  }
};



/* Array for Analog and/or Digital Filter registers */
CONST(Port_FCLARegs, PORT_CONST) Port_GstFCLARegs[PORT_NUM_OF_FCLA] =
{
  /* Index: 0 - PortConfigSet_1_FilterGroup_FCLA0CTL6_INTPH */
  {
    /* usFCLARegOffset */
    0x0058U,

    /* ucFCLACTL */
    0x01U
  },

  /* Index: 1 - PortConfigSet_1_FilterGroup_FCLA0CTL1_INTPL */
  {
    /* usFCLARegOffset */
    0x0024U,

    /* ucFCLACTL */
    0x02U
  },

  /* Index: 2 - PortConfigSet_1_FilterGroup_FCLA0CTL2_INTPL */
  {
    /* usFCLARegOffset */
    0x0028U,

    /* ucFCLACTL */
    0x02U
  },

  /* Index: 3 - PortConfigSet_1_FilterGroup_FCLA0CTL5_INTPL */
  {
    /* usFCLARegOffset */
    0x0034U,

    /* ucFCLACTL */
    0x02U
  },

  /* Index: 4 - PortConfigSet_1_FilterGroup_FCLA0CTL6_INTPL */
  {
    /* usFCLARegOffset */
    0x0038U,

    /* ucFCLACTL */
    0x01U
  },

  /* Index: 5 - PortConfigSet_1_FilterGroup_FCLA0CTL7_INTPL */
  {
    /* usFCLARegOffset */
    0x003CU,

    /* ucFCLACTL */
    0x02U
  }
};



#define PORT_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include PORT_MEMMAP_FILE

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
