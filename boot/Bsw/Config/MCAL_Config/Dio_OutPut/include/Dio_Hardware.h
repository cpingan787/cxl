
/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Dio_Hardware.h                                              */
/*============================================================================*/
/*                             COPYRIGHT                                      */
/*============================================================================*/
/* Copyright(c) 2015-2021 Renesas Electronics Corporation                     */
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
 *
 * V1.0.1:  10-Nov-2015  : The display of the macros DIO_NUM_OF_PORTREG and
 *                         DIO_NUM_OF_APORTREG are updated
 * V2.0.0   25-Oct-2016  : As part of ARDAABC-882 and ARDAABC-626 Jira Ticket,
 *                         the following changes are made:
 *                        1) Removed AR 3.2.2 related functionality and
 *                           added AR 4.2.2 where applicable.
 * V2.0.1   24-Jan-2017  : As part of ARDAABC-882 Jira Ticket,
 *                         the following changes are made:
 *                        1) Updated header comment based on acceptance finding
 * V2.0.2   05-Jul-2017  : As part of ARDAABD-1703 Jira Ticket,Removed common
 *                         published information.
 * V2.0.3   29-Sep-2017  : Following changes are made:
 *                         1)As part of ARDAABD-2380, array names renamed in
 *                           in section Global Data Types.
 *                         2)As part of ARDAABD-2469, added inclusion of
 *                           Iocommon_Types.h.
 * V2.0.4   09-Apr-2021  : As part of ARDAABD-5042, the following changes are
 *                         made:
 *                         a) Removed 'DIO_START_SEC_CONST_ASIL_B_32' and
 *                            'DIO_STOP_SEC_CONST_ASIL_B_32'.
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
**                          Input File                                        **
*******************************************************************************/
/*
 * INPUT FILE:    D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\Config\ECUC\test_Dio_Dio0_ecuc.arxml
 *                D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\modules\dio\R422_DIO_F1x_BSWMDT.arxml
 *                D:\WorkSpace\00_Codes\PuHua_SRTL\02_ProjectCode\SIRUN_R7F701581_MCAL_ASR422_V421400_ConfigProject\stubs\4.2.2\Dem\xml\Dem_Dio.arxml
 * GENERATED ON:  29 Jun 2026 - 16:10:22
 */

#ifndef DIO_HARDWARE_H
#define DIO_HARDWARE_H
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Iocommon_Types.h"
/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define DIO_HARDWARE_AR_RELEASE_MAJOR_VERSION  4U
#define DIO_HARDWARE_AR_RELEASE_MINOR_VERSION  2U
#define DIO_HARDWARE_AR_RELEASE_REVISION_VERSION  2U

/* File version information */
#define DIO_HW_SW_MAJOR_VERSION   2U
#define DIO_HW_SW_MINOR_VERSION   0U

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/* Number of different port groups configured */
#define DIO_NUM_OF_PORTREG                  5U


/* Precompile option for presence of JTAG port */
#define DIO_JTAG_PORT_CONFIGURED            STD_OFF


/* Precompile option for presence of Input port */
#define DIO_INPUT_PORT_CONFIGURED           STD_OFF


/* Precompile option for presence of Analog port */
#define DIO_ANALOG_PORT_CONFIGURED          STD_OFF


/* Number of Analog port groups configured */
#define DIO_NUM_OF_APORTREG                 0U



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
**                      Global Data Types                                     **
*******************************************************************************/

/* QAC Warning: START Msg(2:0832)-1 */
#define DIO_START_SEC_CONST_32
#include DIO_MEMMAP_FILE
/* END Msg(2:0832)-1 */
/*Structure of DIO Port groups registers*/
extern volatile  PortReg * const Dio_GaaPortReg_BaseAddress[DIO_NUM_OF_PORTREG];

/* Structure of DIO JTag ports registers */
/* Extern declaration for
                                                Dio_GaaJPortReg_BaseAddress */

/* Data Structure of DIO Input port register */
/* Extern declaration for
                                                Dio_GaaIPortReg_BaseAddress */

/* Data Structure of DIO Analog port register */
/* Extern declaration for
                                                Dio_GaaAPortReg_BaseAddress */

/* QAC Warning: START Msg(2:0832)-1 */
#define DIO_STOP_SEC_CONST_32
#include DIO_MEMMAP_FILE
/* END Msg(2:0832)-1 */
/*Extern Deceleration of pointer used in Driver code*/
/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
#endif /* DIO_HARDWARE_H  */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
