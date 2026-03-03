/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_MainServ.h                                              */
/* Version      = V1.0.1                                                      */
/* Date         = 03-Jun-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* C header file for Can_MainServ.c                                           */
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
 * V1.0.0:  31-May-2019  : Initial version
 * V1.0.1:  03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *          03-Jun-2021  : Added QAC Warning messages.
 */
/******************************************************************************/

#ifndef CAN_MAINSERV_H
#define CAN_MAINSERV_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Can_PBTypes.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR Release version information */
#define CAN_MAINSERV_AR_RELEASE_MAJOR_VERSION     CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_MAINSERV_AR_RELEASE_MINOR_VERSION     CAN_AR_RELEASE_MINOR_VERSION
#define CAN_MAINSERV_AR_RELEASE_REVISION_VERSION\

/* File version information */
#define CAN_MAINSERV_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_MAINSERV_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3453) A function could probably be used instead of this */
/*                 function-like macro.                                       */
/* Rule          : MISRA-C:2004 Rule 19.7                                     */
/* Justification : Function can't be used in initializing expressions of      */
/*                 const value.                                               */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:3453)-1 and                           */
/*                 END Msg(2:3453)-1 tags in the code.                        */
/******************************************************************************/

/******************************************************************************/
/**                      QAC warning                                         **/
/******************************************************************************/

/* 1. QAC Warning:                                                            */
/* Message       : (1:3132) Hard coded 'magic' number, 'n', used to define    */
/*                 the size of an array.                                      */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3132           */
/* Justification : These numbers are used to define register structures.      */
/*                 These completely depend on H/W and it is impossible to     */
/*                 define particular symbolic names.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(1:3132)-1 and                           */
/*                 END Msg(1:3132)-1 tags in the code.                        */
/******************************************************************************/

/* 2. QAC warning:                                                            */
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
/* Reference     : Look for START Msg(2:0832)-2 and                           */
/*                 END Msg(2:0832)-2 tags in the code.                        */
/******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* 4byte align */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_ALIGN_4(value)   (((uint32)(value) + 3UL) & (uint32)(~3UL))
/* END Msg(2:3453)-1 */

/* Instance indexes of MainFunctions */
#define CAN_MAINFUNCTION_INSTANCE_0   0U
#define CAN_MAINFUNCTION_INSTANCE_1   1U
#define CAN_MAINFUNCTION_INSTANCE_2   2U
#define CAN_MAINFUNCTION_INSTANCE_3   3U
#define CAN_MAINFUNCTION_INSTANCE_4   4U
#define CAN_MAINFUNCTION_INSTANCE_5   5U
#define CAN_MAINFUNCTION_INSTANCE_6   6U
#define CAN_MAINFUNCTION_INSTANCE_7   7U

/* size of the local buffer */
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
  #define CAN_LOCALBUFFER_SIZE_32 (CAN_CANFD_MAX_PAYLOAD / sizeof(uint32))
#else
  #define CAN_LOCALBUFFER_SIZE_32 (CAN_STD_MAX_PAYLOAD / sizeof(uint32))
#endif

/* Inform Can_RxProcessing of target buffers */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RXPROC_BUFFER(cntl)      (0x00000001UL << (cntl))
/* END Msg(2:3453)-1 */
#define CAN_RXPROC_BUFFER_ALL        0x0000000FUL
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RXPROC_TXRXFIFO(cntl)    (0x00000010UL << (cntl))
/* END Msg(2:3453)-1 */
#define CAN_RXPROC_TXRXFIFO_ALL      0x000000F0UL
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RXPROC_RXFIFO(unit)      (0x00000100UL << (unit))
/* END Msg(2:3453)-1 */
#define CAN_RXPROC_RXFIFO_ALL        0x00000F00UL

/* Format flags in Can_IdType to inform CanIf */
#ifdef CAN_CANTYPE_DECLARATION_UINT16
#define CAN_EXTENDED_FORMAT          (Can_IdType)0x8000U
#define CAN_FD_FRAME_FORMAT          (Can_IdType)0x4000U
#define CAN_ID_TYPE_IDMASK           (Can_IdType)0x07FFU
#else
#define CAN_EXTENDED_FORMAT          (Can_IdType)0x80000000UL
#define CAN_FD_FRAME_FORMAT          (Can_IdType)0x40000000UL
#define CAN_ID_TYPE_IDMASK           (Can_IdType)0x1FFFFFFFUL
#endif

/* Maximum payload length for standard(non-FD) CAN */
#define CAN_STD_MAX_PAYLOAD          8U

/* Maximum payload length for CAN-FD */
#define CAN_CANFD_MAX_PAYLOAD        64U

/* Maximum retry count for reading receive buffer
   This is just for guarantee to avoid infinite loop.
   Actually, since reading speed is enough fast than message arival interval,
   reading loop will finish within two times. */
#define CAN_RECBUFFER_RETRY_COUNT    10UL

/*TX/RX message lost flag*/
#define CAN_FIFO_MSG_LOST_MASK      (uint32)0x00000004UL

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_CONST_8
/* QAC Warning: START Msg(2:0832)-2 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-2 */

#if (CAN_RSCANFD_CONFIGURED == STD_ON)
/* The LUT to acquire DLC register value from payload size */
/* QAC Warning: START Msg(1:3132)-1 */
extern CONST(uint8, CAN_RSCAN_CONST) Can_GaaDLCFromPayloadTable[65];
/* END Msg(1:3132)-1 */
/* The LUT to acquire DLC register value from payload size */
/* QAC Warning: START Msg(1:3132)-1 */
extern CONST(uint8, CAN_RSCAN_CONST) Can_GaaPayloadFromDLCTable[16];
/* END Msg(1:3132)-1 */
#endif

#define CAN_RSCAN_STOP_SEC_CONST_8
/* QAC Warning: START Msg(2:0832)-2 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-2 */

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-2 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-2 */

#if (CAN_DEV_ERROR_DETECT == STD_ON)
extern FUNC(Can_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_CommonDetCheck(
  const uint8 LucSID, const uint8 LucController);
#endif

extern FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_TxConfirmationProcessing(
  const uint8 LucCtrlIndex);

extern FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxProcessing(
  const uint32 LulBufferBits, const uint32 LulMode, const uint8 LucIndex);

#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-2 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-2 */


#endif /* CAN_MAINSERV_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
