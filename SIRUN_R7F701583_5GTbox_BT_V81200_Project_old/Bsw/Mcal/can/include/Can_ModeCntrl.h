/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_ModeCntrl.h                                             */
/* Version      = V1.0.1                                                      */
/* Date         = 03-Jun-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* C header file for Can_ModeCntrl.c                                          */
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
 * V1.0.0: 31-May-2019  : Initial version
 *         01-Aug-2019  : Add argument LucApiId for internal function.
 * V1.0.1: 03-Jun-2021  : Added QAC Warning messages.
 */
/******************************************************************************/

#ifndef CAN_MODECNTRL_H
#define CAN_MODECNTRL_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Can_LTTypes.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR Release version information */
#define CAN_MODECNTRL_AR_RELEASE_MAJOR_VERSION     CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_MODECNTRL_AR_RELEASE_MINOR_VERSION     CAN_AR_RELEASE_MINOR_VERSION
#define CAN_MODECNTRL_AR_RELEASE_REVISION_VERSION\

/* File version information */
#define CAN_MODECNTRL_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_MODECNTRL_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                                QAC Warning                                 **
*******************************************************************************/

/******************************************************************************/
/* 1. QAC warning:                                                            */
/* Message       : (2:0832) Macro substitution in #include preprocessing      */
/*                 directive.                                                 */
/* Rule          : No MISRA-C:2004 Rules applicable to message 0832           */
/* Justification : The included file name is necessary to be defined as macro */
/*                 to support multiple configration of Autosar version which  */
/*                 have different requirement for Memmap file name. In        */
/*                 additional, JB0019 coding guideline do not restrict        */
/*                 this usage of macro.                                       */
/* Verification  : This is quite legitimate in C. It is necessary for macro   */
/*                 substitution and it is not having any impact.              */
/* Reference     : Look for START Msg(2:0832)-1 and                           */
/*                 END Msg(2:0832)-1 tags in the code.                        */
/******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

extern FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_StartMode(
  const uint8 LucCtrlIndex, CONST(uint8, AUTOMATIC) LucApiId);
extern FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_StopMode(
  const uint8 LucCtrlIndex, CONST(uint8, AUTOMATIC) LucApiId);
extern FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_SleepMode(
  const uint8 LucCtrlIndex, CONST(uint8, AUTOMATIC) LucApiId);
extern FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_WakeupMode(
  const uint8 LucCtrlIndex, CONST(uint8, AUTOMATIC) LucApiId);

extern FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_GlobalModeChange(
  const uint8 LucUnit, const uint32 LulMdBits,
  CONSTP2VAR(uint32, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpTimeoutDuration,
  CONST(uint8, AUTOMATIC) LucApiId);

extern FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_ChannelModeChange(
  const uint8 LucUnit, const uint8 LucCtrlIndex, const uint32 LulMdBits,
  CONSTP2VAR(uint32, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpTimeoutDuration,
  CONST(uint8, AUTOMATIC) LucApiId);

extern FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_WaitRegisterChange(
  volatile CONSTP2CONST(uint32, AUTOMATIC, REGSPACE) LpReg,
  const uint32 LulMask, const uint32 LulBits,
  CONSTP2VAR(uint32, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpTimeoutDuration);

#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

#endif /* CAN_MODECNTRL_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
