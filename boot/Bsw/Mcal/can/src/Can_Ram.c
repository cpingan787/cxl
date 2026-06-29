/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_Ram.c                                                   */
/* Version      = V1.0.1                                                      */
/* Date         = 03-Jun-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of initialized and uninitialized global variables and constants. */
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
 *          01-Aug-2019  : Add preprocessor CAN_RAM_MIRROR to prevent unused
 *                         mirror variable when hardware consistency is disable.
 *          25-Sep-2019  : Update QAC warning, remove QAC message (4:0857)
 *          11-Oct-2019  : Add Can_GaaHwAccessFlag to implement Mutex in
 *                         Can_Write.
 *          25-Oct-2019  : Correct section of Can_GaaHwAccessFlag to
 *                         VAR_NO_INIT_BOOLEAN.
 * V1.0.1   03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                         Add QAC message(4:5087).
 *          03-Jun-2021  : Added QAC Warning messages.
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Can.h"
#include "Can_Ram.h"
#include "Can_LTTypes.h"
#include "Can_PBTypes.h"

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_RAM_C_AR_RELEASE_MAJOR_VERSION     CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_RAM_C_AR_RELEASE_MINOR_VERSION     CAN_AR_RELEASE_MINOR_VERSION
#define CAN_RAM_C_AR_RELEASE_REVISION_VERSION  CAN_AR_RELEASE_REVISION_VERSION
/* File version information */
#define CAN_RAM_C_SW_MAJOR_VERSION    CAN_RAM_SW_MAJOR_VERSION
#define CAN_RAM_C_SW_MINOR_VERSION    CAN_RAM_SW_MINOR_VERSION

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_RAM_C_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION_VALUE)
  #error "Can_Ram.c : Mismatch in Release Major Version"
#endif
#if (CAN_RAM_C_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION_VALUE)
  #error "Can_Ram.c : Mismatch in Release Minor Version"
#endif
#if (CAN_RAM_C_AR_RELEASE_REVISION_VERSION != \
        CAN_AR_RELEASE_REVISION_VERSION_VALUE)
  #error "Can_Ram.c : Mismatch in Release Revision Version"
#endif

#if (CAN_RAM_C_SW_MAJOR_VERSION != CAN_SW_MAJOR_VERSION_VALUE)
  #error "Can_Ram.c : Mismatch in Software Major Version"
#endif
#if (CAN_RAM_C_SW_MINOR_VERSION != CAN_SW_MINOR_VERSION_VALUE)
  #error "Can_Ram.c : Mismatch in Software Minor Version"
#endif
/******************************************************************************/
/******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include memmap */
/*                 is following AUTOSAR rule.                                 */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:5087)-1 and                           */
/*                 END Msg(4:5087)-1 tags in the code.                        */
/******************************************************************************/

/******************************************************************************/
/**                      QAC warning                                         **/
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
**                      Global Data                                           **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_VAR_INIT_BOOLEAN
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

/* Global variable to store initialization status of CAN Driver */
volatile VAR(boolean, CAN_RSCAN_INIT_DATA) Can_GblInitialized = CAN_FALSE;

#define CAN_RSCAN_STOP_SEC_VAR_INIT_BOOLEAN
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-1 */
/* END Msg(2:0832)-1 */


#define CAN_RSCAN_START_SEC_VAR_NO_INIT_BOOLEAN
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-1 */
/* END Msg(2:0832)-1 */

#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
/* Flags which indicates HOH is being accessed by a Can_Write */
volatile VAR(boolean, CAN_RSCAN_NOINIT_DATA)
  Can_GaaHwAccessFlag[CAN_NO_OF_HOHS];
#endif

#if (CAN_WAKEUP_SUPPORT == STD_ON)
/* Global state transition is on-going when sleep or wakeup */
volatile VAR(boolean, CAN_RSCAN_NOINIT_DATA)
  Can_GaaGlobalStateTransition[CAN_NO_OF_UNITS];
#endif

#define CAN_RSCAN_STOP_SEC_VAR_NO_INIT_BOOLEAN
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-1 */
/* END Msg(2:0832)-1 */


#define CAN_RSCAN_START_SEC_VAR_NO_INIT_32
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-1 */
/* END Msg(2:0832)-1 */

#if (CAN_WAKEUP_SUPPORT == STD_ON)
/* Flags which indicates active (not slept) Controllers */
volatile VAR(uint32, CAN_RSCAN_NOINIT_DATA)
  Can_GaaActiveControllers[CAN_NO_OF_UNITS];
#endif

#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
/* Interrupt disable count for Global interruption */
volatile VAR(uint32, CAN_RSCAN_NOINIT_DATA)
  Can_GaaGlobalIntCount[CAN_NO_OF_UNITS];
#endif

#if (CAN_RAMTEST_API == STD_ON)
/* Global variable to store Page ID for RAM Test */
VAR(uint32, CAN_RSCAN_NOINIT_DATA) Can_GulPageID;
#endif

#define CAN_RSCAN_STOP_SEC_VAR_NO_INIT_32
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-1 */
/* END Msg(2:0832)-1 */


#define CAN_RSCAN_START_SEC_VAR_NO_INIT_UNSPECIFIED
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-1 */
/* END Msg(2:0832)-1 */

/* Global variable to store pointer to  Config structure */
P2CONST(Can_ConfigType, CAN_VAR, CAN_RSCAN_APPL_CONST)
  volatile Can_GpConfig;
P2CONST(Can_ControllerPCConfigType, CAN_VAR, CAN_RSCAN_CONFIG_DATA)
  volatile Can_GpPCController;
P2CONST(Can_ControllerPBConfigType, CAN_VAR, CAN_RSCAN_CONFIG_DATA)
  volatile Can_GpPBController;
P2CONST(Can_HohConfigType, CAN_VAR, CAN_RSCAN_CONFIG_DATA)
  volatile Can_GpHohConfig;
volatile VAR(Can_ControllerStateType, CAN_RSCAN_NOINIT_DATA)
  Can_GaaCtrlState[CAN_NO_OF_CONTROLLERS];

#if (CAN_RAM_MIRROR == STD_ON)
volatile VAR(Can_MirrorGlobalType, CAN_RSCAN_NOINIT_DATA)
  Can_GaaMirrorGlobalReg[CAN_NO_OF_UNITS];

volatile VAR(Can_MirrorChannelType, CAN_RSCAN_NOINIT_DATA)
  Can_GaaMirrorChannelReg[CAN_NO_OF_CONTROLLERS];

volatile VAR(Can_MirrorHohType, CAN_RSCAN_NOINIT_DATA)
  Can_GaaMirrorHohReg[CAN_NO_OF_HOHS];
#endif

#define CAN_RSCAN_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-1 */
/* END Msg(2:0832)-1 */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
