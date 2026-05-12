/*===========================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Wdg_59_DriverB_Hardware.h                                   */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2018  Renesas Electronics Corporation                    */
/*============================================================================*/
/* Purpose:                                                                   */
/* This file shall contain the declaration of structure pointer for accessing */
/* the hardware registers belongs the WDG module                              */
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
 * V2.0.0:  26-Oct-2016  : ASR 4.2.2 Release - Jira Ticket #ARDAABD-493
 * V2.0.1:  14-Dec-2016  : Driver C removed
 * V2.0.2:  17-Jan-2017  : E_DISABLE_REJECTED/E_MODE_FAILED_REPORTING
 * V2.0.3:  17-Jun-2017  : Updated copyright information.
 * V2.0.4:  16-Nov-2017  : 1. According to ARDAABD-2466:Iocommon_Types.h added
 *                            instead of Iocommon.h
 *                         2. As part of ARDAABD-2734:
 *                            MEMMAP_FILE macro is replaced as WDG_MEMMAP_FILE
 * V2.0.5:  12-Apr-2018  : Following changes are made:
 *                         1. As part of merging activity, #ARDAABD-3474
 *                         Replaced the WDG_59_DriverB_GpIMR_BaseAddr
 *                         macro with WDG_59_DriverB_GpICR_BaseAddr.
 *                         Ref:ARDAABD-2158.
*/
/*******************************************************************************
**                   Generation Tool Version                                  **
*******************************************************************************/
/*
 * TOOL VERSION:  2.0.6
 */
/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
/*
 * INPUT FILE:    D:\WorkSpace\test\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Mcu_Mcu0_ecuc.arxml
 *                D:\WorkSpace\test\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Wdg_Wdg_DriverB_ecuc.arxml
 *                D:\WorkSpace\test\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\modules\wdg\R422_WDG_F1x_BSWMDT.arxml
 *                D:\WorkSpace\test\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701583_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Wdg.arxml
 * GENERATED ON:   2 Feb 2026 - 18:28:04
 */

#ifndef WDG_59_DRIVERB_HARDWARE_H
#define WDG_59_DRIVERB_HARDWARE_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Iocommon_Types.h"
/* Inclusion for the tool generated macros */
#include "Wdg_59_DriverB_Cfg.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define WDG_59_DRIVERB_HARDWARE_H_AR_RELEASE_MAJOR_VERSION  4U
#define WDG_59_DRIVERB_HARDWARE_H_AR_RELEASE_MINOR_VERSION  2U
#define WDG_59_DRIVERB_HARDWARE_H_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define WDG_59_DRIVERB_WDG_HARDWARE_H_SW_MAJOR_VERSION  1U
#define WDG_59_DRIVERB_WDG_HARDWARE_H_SW_MINOR_VERSION  0U


/*******************************************************************************
**                      Common Published Information                          **
*******************************************************************************/
#define WDG_59_DRIVERB_AR_RELEASE_MAJOR_VERSION_VALUE      4U
#define WDG_59_DRIVERB_AR_RELEASE_MINOR_VERSION_VALUE      2U
#define WDG_59_DRIVERB_AR_RELEASE_REVISION_VERSION_VALUE   2U

#define WDG_59_DRIVERB_SW_MAJOR_VERSION_VALUE              1U
#define WDG_59_DRIVERB_SW_MINOR_VERSION_VALUE              0U
#define WDG_59_DRIVERB_SW_PATCH_VERSION_VALUE              9U

#define WDG_59_DRIVERB_VENDOR_ID_VALUE                     59U
#define WDG_59_DRIVERB_MODULE_ID_VALUE                     102U


/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

#define  WDG_59_DRIVERB_INDEX_ID                           1U



/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
#define WDG_59_DRIVERB_START_SEC_CONFIG_DATA_UNSPECIFIED
#include WDG_MEMMAP_FILE

extern volatile WDTAReg* const WDG_59_DriverB_GpWDTAReg_BaseAddr;

extern  volatile unsigned long* const WDG_59_DriverB_GpICR_BaseAddr;

#define WDG_59_DRIVERB_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include WDG_MEMMAP_FILE

#endif /* #ifndef WDG_59_DRIVERB_HARDWARE_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
