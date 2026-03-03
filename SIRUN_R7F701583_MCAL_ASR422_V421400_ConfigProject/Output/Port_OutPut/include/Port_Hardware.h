/*===========================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Port_Hardware.h                                             */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2021 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file contains extern Declarations of configured Ports .               */
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
 * V1.0.0:  09-Sep-2015  : Initial version
 * V2.0.0:  14-Nov-2016    As part of ARDAABC-542 Jira ticket the following
 *                         changes are made:
 *                         1. Include memory map header defined in Port_Cfg.h.
 * V2.0.1:  29-Jun-2017  : As per the requirement EAAR_PN0034_NR_0018,
 *                         1. Copyright information is updated.
 * V2.0.2:  22-Sep-2017  : As part of JIRA ARDAABD-2457, Include Section is
 *                         updated for adding Iocommon_Types.h file.
 * V2.0.3:  09-Apr-2021  : As part of ARDAABD-5045, the following changes
 *                         are made:
 *                         a) Removed
 *                            'PORT_START_SEC_CONST_ASIL_B_UNSPECIFIED' and
 *                            'PORT_STOP_SEC_CONST_ASIL_B_UNSPECIFIED'.
 *                         b) Copyright information is updated.
 */
/******************************************************************************/
/*******************************************************************************
**                   Generation Tool Version                                  **
*******************************************************************************/
/*
 * TOOL VERSION:  2.2.8
 */

/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
/*
 * INPUT FILE:    E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Mcu_Mcu0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Port_Port0_ecuc.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\port\R422_PORT_F1x_BSWMDT.arxml
 *                E:\PuHua_Tbox\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Port.arxml
 * GENERATED ON:  27 Feb 2026 - 10:55:49
 */

#ifndef PORT_HARDWARE_H
#define PORT_HARDWARE_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Iocommon_Types.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR specification version information */
#define PORT_HARDWARE_H_AR_RELEASE_MAJOR_VERSION  4U
#define PORT_HARDWARE_H_AR_RELEASE_MINOR_VERSION  2U
#define PORT_HARDWARE_H_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define PORT_HARDWARE_H_SW_MAJOR_VERSION  2U
#define PORT_HARDWARE_H_SW_MINOR_VERSION  4U

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/


#define PORT_NUM_PORT_INSTANCES             0x09U

#define PORT_ANALOG_PORT_INSTANCES          0x02U


/*******************************************************************************
**                      Registers Available                                   **
*******************************************************************************/

/*******************************************************************************
**                      Global Declarations                                   **
*******************************************************************************/


#define PORT_START_SEC_CONST_UNSPECIFIED
#include PORT_MEMMAP_FILE

extern volatile  PortReg* const
                 Port_GaaPortReg_BaseAddress[PORT_NUM_PORT_INSTANCES];

extern volatile  JPortReg* const Port_GpJPortReg_BaseAddress;

extern volatile  IPortReg* const Port_GpIPortReg_BaseAddress;

extern volatile  APortReg* const
                 Port_GaaAPortReg_BaseAddress[PORT_ANALOG_PORT_INSTANCES];

/*extern volatile  DNFAReg* const
                            Port_GaaDnfaReg_BaseAddress[PORT_NUM_OF_DNFA_REG];*/
/*extern volatile  FCLAReg* const Port_GpFclaReg_BaseAddress;*/

#define PORT_STOP_SEC_CONST_UNSPECIFIED
#include PORT_MEMMAP_FILE
/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif /* PORT_HARDWARE_H  */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
