/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_LTTypes.h                                               */
/* Version      = V1.0.2                                                      */
/* Date         = 20-Dec-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of AUTOSAR CAN Pre-Compile time parameters.                      */
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
/*                                                                            */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:  31-May-2019  : Initial version
 * V1.0.1:  03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *          03-Jun-2021  : Added QAC Warning messages.
 * V1.0.2:  20-Dec-2021  : To support P1M-E, added pDNFAReg to
 *                         Can_ControllerPCConfigType.
 */
/******************************************************************************/

#ifndef CAN_LTTYPES_H
#define CAN_LTTYPES_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Can.h"
/* Can Types header file for published structures*/
#include "Can_GeneralTypes.h"
/* Included for definition of the macros used in Can_PCTypes.h*/
#include "Can_RegStruct.h"
#if (CAN_WAKEUP_SUPPORT == STD_ON)
#include "EcuM_Cbk.h"
#endif

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_PCTYPES_AR_RELEASE_MAJOR_VERSION  CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_PCTYPES_AR_RELEASE_MINOR_VERSION  CAN_AR_RELEASE_MINOR_VERSION
#define CAN_PCTYPES_AR_RELEASE_REVISION_VERSION CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_PCTYPES_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_PCTYPES_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/
/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3684) Array declared with unknown size.                 */
/* Rule          : MISRA-C:2004 Rule 8.12                                     */
/* Justification : Arrays used are verified in the file which are only        */
/*                 declarations and size is configuration dependent.          */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3684)-1 and                           */
/*                 END Msg(2:3684)-1 tags in the code.                        */
/******************************************************************************/

/*******************************************************************************
**                                QAC Warning                                 **
*******************************************************************************/

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
**                      Global Symbols                                        **
*******************************************************************************/
/* Flag not set */
#define CAN_FALSE                           (boolean)0x00
/* Flag set */
#define CAN_TRUE                            (boolean)0x01
/*General macros to be used in the programming*/
#define CAN_ZERO                            (uint8)0
#define CAN_ONE                             (uint8)1
#define CAN_TWO                             (uint8)2
/* The value indicates invalid index */
#define CAN_INVALID_INDEX                   (uint32)0xFFFFFFFFUL
/* Interupt mode or polling mode */
#define CAN_INT_DISABLED                    0x00U
#define CAN_CHECK_INT_TX                    0x01U
#define CAN_CHECK_INT_RX                    0x02U
#define CAN_CHECK_INT_BUSOFF                0x04U
#define CAN_CHECK_INT_WAKEUP                0x08U
/* Macro for controller with no wake up source enabled */
#define CAN_NOWAKEUP                         (uint8)0xFF
/* Bit number of byte */
#define CAN_BYTE_BITS                       8U
/* Default value CAN */
#define CAN_DEFAULT_ONE                       (uint32)0x00000001UL

/* Start address of database  */
#define CAN_DBTOC_VALUE \
        (((uint32)CAN_VENDOR_ID_VALUE << 22) | \
        ((uint32)CAN_MODULE_ID_VALUE << 14) | \
        ((uint32)CAN_SW_MAJOR_VERSION_VALUE << 8) | \
        ((uint32)CAN_SW_MINOR_VERSION_VALUE << 3))

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/* Haredware Macro */
typedef enum ETag_Can_MacroType
{
  /* This module is RSCAN */
  CAN_MACRO_RSCAN,
  /* This module is RACANFD */
  CAN_MACRO_RSCANFD
} Can_MacroType;

/* Substate during mode transition */
typedef enum ETag_Can_SubStatusType
{
  /* No Pending transitions in mode */
  CAN_NO_PENDING_TRANSITION,

  /* Tentative state for the exlusive control b/w HW trigger and SW trigger */
  CAN_TENTATIVE_TRANSITION,

  /* Pending start mode to wait CHANNEL_RESET after busoff */
  CAN_PENDING_START_WAIT_RESET,
  /* Pending start mode to wait for CHANNEL_COMMUNICATION */
  CAN_PENDING_START_WAIT_COM,

  /* Pending stop mode to wait for CHANEL_HALT before enter CHANNEL_RESET */
  CAN_PENDING_STOP_WAIT_HALT,
  /* Pending reset mode to wait for CHANNEL_RESET */
  CAN_PENDING_STOP_WAIT_RESET,

  /* Pending sleep mode to wait for CAHNNEL_STOP */
  CAN_PENDING_SLEEP_WAIT_STOP,
  /* Pending sleep mode to wait for GLOBAL_RESET when this is last Channel */
  CAN_PENDING_SLEEP_WAIT_GLOBALRESET,
  /* Pending sleep mode to wait for GLOBAL_STOP when this is last Channel */
  CAN_PENDING_SLEEP_WAIT_GLOBALSTOP,

  /* Wake-up ie requested by ISR but not started yet */
  CAN_PENDING_WAKEUP_REQUESTED,
  /* Pending wakeup to wait for previous Global state transition */
  CAN_PENDING_WAKEUP_WAIT_GLOBALCHANGE,
  /* Pending wakeup to wait for GLOBAL_RESET after wakeup from deep sleep */
  CAN_PENDING_WAKEUP_WAIT_GLOBALRESET,
  /* Pending wakeup to wait for GLOBAL_OPERATION after wakeup from deep sleep */
  CAN_PENDING_WAKEUP_WAIT_GLOBALOP,
  /* Pending wakeup to wait for CHANNEL_RESET */
  CAN_PENDING_WAKEUP_WAIT_RESET
} Can_SubStatusType;

/* Register base address information for each unit */
typedef struct STag_Can_RegisterSetType
{
  /* RS-CAN or RS-CANFD */
  Can_MacroType enMacroType;
  /* Pointer to register map that is common between RS-CAN and RS-CANFD */
  P2VAR(volatile Can_CommonRegType, TYPEDEF, REGSPACE) pCmn;
  /* Pointer to Receive Rule registers */
  P2VAR(volatile Can_RRuleRegType, TYPEDEF, REGSPACE) pRR;
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
  /* Pointer to registers that is specified to RS-CANFD */
  P2VAR(volatile Can_FDRegType, TYPEDEF, REGSPACE) pFD;
#endif
#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
  /* EIC register address for RxFIFO interruption */
  P2VAR(volatile uint16, TYPEDEF, REGSPACE) pICRxFIFO;
#endif
#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
  /* Wake-up factor registers address */
  P2VAR(volatile uint32, TYPEDEF, REGSPACE) pWUF0Reg;
  /* Wake-up factor clear registers address */
  P2VAR(volatile uint32, TYPEDEF, REGSPACE) pWUFC0Reg;
#endif
} Can_RegisterSetType;

/* CAN Controller Pre-compile Structure */
typedef struct STag_Can_ControllerPCConfigType
{
  /* Whether this Controller is used */
  boolean blActivation;
  /* Index of Can_GaaRegs which this controller allocated to */
  uint8 ucUnitIndex;
  /* Index of physical Channel which this controller allocated to */
  uint8 ucChannelOffset;
  /* Polling/Interrupt for each operation */
  uint8 ucIntEnable;
  /* Value of CmCTR, including error interrupt enable bits (bit 8-16) */
  uint32 ulCTR;
  /* Value of THLCCm except THLE bit */
  uint32 ulTHLCC;
#if (CAN_WAKEUP_SUPPORT == STD_ON)
  /* wakeup source ID to indicate upper layer */
  uint8 ucWakeupSourceId;
#endif
  /* EIC reigster address for Rx interruption */
  P2VAR(volatile uint16, TYPEDEF, REGSPACE) pICRec;
  /* EIC register address for Tx interruption */
  P2VAR(volatile uint16, TYPEDEF, REGSPACE) pICTx;
  /* EIC register address for BusError interruption */
  P2VAR(volatile uint16, TYPEDEF, REGSPACE) pICErr;
#if (CAN_WAKEUP_SUPPORT == STD_ON)
  /* EIC register address for Wakeup interruption */
  P2VAR(volatile uint16, TYPEDEF, REGSPACE) pICWakeup;
  /* DNFA register address for digital noise elimination */
  P2VAR(volatile uint16, TYPEDEF, REGSPACE) pDNFAReg;
  /* FCLA register address for setting edge detection */
  P2VAR(volatile uint8, TYPEDEF, REGSPACE) pFCLAReg;
#endif
#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
  uint32 ulWUFMask;
#endif
} Can_ControllerPCConfigType;

/* This scructure includes statuses for each Controller */
typedef struct STag_Can_ControllerStateType
{
  /* Current Controller mode */
  Can_StateTransitionType enMode;
  /* Substate during Controller is in mode transition */
  Can_SubStatusType enSubState;
  /* Whether Controller is in bus-off state of not */
  boolean blBusOff;
#if (CAN_WAKEUP_SUPPORT == STD_ON)
  /* Whether wakeup event occurred */
  boolean blWakeupEventOccurred;
  /* Whether wakeup is triggered by HW or SW */
  boolean blWakeupByHW;
#endif
  /* Index of current baudrate */
  uint32 ulBaudrateIndex;
  /* Recursive count of Can_DisableControllerInterrupts */
  uint32 ulIntCount;
} Can_ControllerStateType;

/*******************************************************************************
**                      Extern declarations for Global Data                   **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_CONFIG_DATA_UNSPECIFIED
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

extern CONST(Can_RegisterSetType, CAN_RSCAN_CONFIG_DATA)
  Can_GaaRegs[CAN_NO_OF_UNITS];

#define CAN_RSCAN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

#define CAN_RSCAN_START_SEC_CONFIG_DATA_8
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

/* Lookup tables to get a config index from a physical index, used by ISRs */

/* MISRA Violation: START Msg(2:3684)-1 */
extern CONST(uint8, CAN_RSCAN_CONFIG_DATA)
  Can_GaaPhysicalUnitToIndex[];
/* END Msg(2:3684)-1 */

#define CAN_RSCAN_STOP_SEC_CONFIG_DATA_8
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/
#endif /* CAN_LTTYPES_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
