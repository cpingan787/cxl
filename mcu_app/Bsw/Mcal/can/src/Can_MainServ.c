/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_MainServ.c                                              */
/* Version      = V1.0.5                                                      */
/* Date         = 06-Apr-2023                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2023 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of Main Service Routines Functionality.                          */
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
 *         01-Aug-2019  : Use macro CAN_WRITE_REG_ONLY for register write only
 *         25-Sep-2019  : Update MISRA C Rule Violations, remove QAC message
 *                        (4:2983), (4:2991), (4:2995),
 *                        (4:0857).
 *         08-Oct-2019  : As per ARDAABD-4655, correct the dlc value for CAN
 *                        format frame in Can_RxIndicationCommonPart().
 *                        Remove QAC warning (2:3206).
 * V1.0.1: 20-Aug-2020  : As per ARDAACH-223:Add pre-condition check 
 *                        (CAN_WAKEUP_POLLING == STD_ON) and
 *                        (CAN_BUSOFF_POLLING == STD_ON) in
 *                        Can_MainFunction_Wakeup and Can_MainFunction_BusOff.
 *         08-Sep-2020  : As per ARDAACH-225: Add one more break condition 
 *                        in the while loop for Can_TxConfirmationProcessing(),
 *                        Can_RxIndicationRxFIFO(), Can_RxIndicationTxRxFIFO().
 *         18-Sep-2020  : As per ARDAACH-232, add condition check controller
 *                        state is STARTED in Can_RxProcessing().
 *         21-Sep-2020  : Fixed QAC warning messages.
 *         24-Sep-2020  : Add QAC justification and comments.
 * V1.0.2: 16-Mar-2021  : As per ARDAABD-2992, Update Global Variable Used and
 *                        register used of all functions at function's banner.
 *                        As per ARDAABD-2517: Update Function Invoked of    
 *                        functions at function's banner.  
 *         03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                        Remove QAC message (4:0310), (2:2016).
 *                        Add QAC message (2:0857), (4:5087),(1:1503),
 *                        (1:1505), (2:3218), (2:3673).
 *         03-Jun-2021  : Added QAC Warning messages.
 * V1.0.3: 26-Nov-2021  : Add report DEM error
 *                        CAN_E_RECEIVE_DATA_LOST when buffer overflow occurs in
 *                        Can_RxIndicationRxFIFO, Can_RxIndicationTxRxFIFO,
 *                        Can_RxIndicationRxBuffer
 *         14-Dec-2021  : Add comment QAC message.
 * V1.0.4: 20-Dec-2021  : To support P1M-E, implement register DNFA in
 *                        Can_MainFunction_Wakeup.
 * V1.0.5: 06-Apr-2023  : As per ARDAABD-9547: 
 *                        Update Can_TxConfirmationProcessing function to clear
 *                        interupt history of 
 *                        Can_GaaRegs[LucUnit].pCmn->aaTHLSTS[LucCh]
 *                        As per ARDAABD-9544: 
 *                        Remove decision which checking Tx interrupt flag 
 *                        is not clear for TxRxFIFO and TxQueue
 *                        Remove variable LulTXRXFIFOCleared, LblTXQCleared
 *                        related to the interrupt's status flag
 *                        As per ARDAABD-9516: Update Can_RxProcessing to 
 *                        remove the following conditions from conditional 
 *                        branch proccessing Whether the controller mode 
 *                        is CAN_T_START or not
 *                        Whether the controller is a bus off or not
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* CAN module header file */
#include "Can.h"
#include "Can_PBTypes.h"
#include "Can_RegWrite.h"
/* Included for RAM variable declarations */
/* MISRA Violation: START Msg(2:0857)-5 */
#include "Can_Ram.h"
/* END Msg(2:0857)-5 */
#if (CAN_DEV_ERROR_DETECT == STD_ON)
 /* Included for the declaration of Det_ReportError() */
 #include "Det.h"
#endif
/* including DEM header file */
#include "Dem.h"
/* CAN Interface call-back Header File */
#include "CanIf_Cbk.h"
/* CAN Main Processing Header File */
/* MISRA Violation: START Msg(2:0857)-5 */
#include "Can_MainServ.h"
/* END Msg(2:0857)-5 */
/* CAN Mode Control Service Header File */
/* MISRA Violation: START Msg(2:0857)-5 */
#include "Can_ModeCntrl.h"
/* END Msg(2:0857)-5 */
#include "Can_Irq.h"
/* Needed for GetCounterValue */
#include "Os.h"
/* Needed for RH850_Sv\MODE_ICR_AND */
#include "rh850_Types.h"

#if (CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
/* Included for the declaration of the critical section protection functions  */
#include "SchM_Can.h"
#endif
/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_MAINSERV_C_AR_RELEASE_MAJOR_VERSION\
                                          CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_MAINSERV_C_AR_RELEASE_MINOR_VERSION\
                                          CAN_AR_RELEASE_MINOR_VERSION
#define CAN_MAINSERV_C_AR_RELEASE_REVISION_VERSION\
                                      CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_MAINSERV_C_SW_MAJOR_VERSION    CAN_MAINSERV_SW_MAJOR_VERSION
#define CAN_MAINSERV_C_SW_MINOR_VERSION    CAN_MAINSERV_SW_MINOR_VERSION

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_MAINSERV_C_AR_RELEASE_MAJOR_VERSION != \
        CAN_AR_RELEASE_MAJOR_VERSION_VALUE)
  #error "Can_MainServ.c : Mismatch in Release Major Version"
#endif
#if (CAN_MAINSERV_C_AR_RELEASE_MINOR_VERSION != \
        CAN_AR_RELEASE_MINOR_VERSION_VALUE)
  #error "Can_MainServ.c : Mismatch in Release Minor Version"
#endif
#if (CAN_MAINSERV_C_AR_RELEASE_REVISION_VERSION != \
        CAN_AR_RELEASE_REVISION_VERSION_VALUE)
  #error "Can_MainServ.c : Mismatch in Release Revision Version"
#endif

#if (CAN_MAINSERV_C_SW_MAJOR_VERSION != CAN_SW_MAJOR_VERSION_VALUE)
  #error "Can_MainServ.c : Mismatch in Software Major Version"
#endif
#if (CAN_MAINSERV_C_SW_MINOR_VERSION != CAN_SW_MINOR_VERSION_VALUE)
  #error "Can_MainServ.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0491) Array subscripting applied to an object of        */
/*                 pointer type.                                              */
/* Rule          : MISRA-C:2004 Rule-17.4                                     */
/* Justification : This is necessary to support configuration.                */
/*                 The actuall array can't be decided statically.             */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0491)-1 and                           */
/*                 END Msg(2:0491)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:2984) This operation is redundant. The value of the     */
/*                 result is always '1'.                                      */
/* Rule          : MISRA-C:2004 Rule 21.1                                     */
/* Justification : If user configures controller offset ID is more than 1,    */
/*                 this warning will  not occur.                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:2984)-2 and                           */
/*                 END Msg(4:2984)-2 tags in the code.                        */
/******************************************************************************/

/* 3. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:2986) This operation is redundant. The value of the     */
/*                 result is always that of the right-hand operand.           */
/* Rule          : MISRA-C:2012 Rule 2.2                                      */
/* Justification : The operation is correct. This occurs acording to          */
/*                 a pre-compile switch.                                      */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for MISRA Violation: START Msg(4:2986)-3 and          */
/*                 END Msg(4:2986)-3 tags in the code.                        */
/******************************************************************************/

/* 4. MISRA C RULE VIOLATION:                                                 */
/* Message       : (6:2877) This loop will never be executed more than once.  */
/* Rule          : MISRA-C:2004 Rule-21.1                                     */
/* Justification : It is depend on configuration, the maximum of loop count   */
/*                 shall be more than one with different configurations.      */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(6:2877)-4 and                           */
/*                 END Msg(6:2877)-4 tags in the code.                        */
/******************************************************************************/

/* 5. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0857) [L] Number of macro definitions exceeds 1024 -    */
/*                  program does not conform strictly to ISO:C90.             */
/* Rule          : MISRA-C:2004 Rule-1.1                                      */
/* Justification : This is accepted as of macros are used for better          */
/*                 readability of code and/or to support configuration        */
/*                 flexibility                                                */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0857)-5  and                          */
/*                 END Msg(2:0857)-5  tags in the code.                       */
/******************************************************************************/

/* 6. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include        */
/*                 memmap is following AUTOSAR rule.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(4:5087)-6 and                           */
/*                 END Msg(4:5087)-6 tags in the code.                        */
/******************************************************************************/

/* 7. MISRA C RULE VIOLATION:                                                 */
/* Message       : (1:1503) The function '%1s' is defined but is not used     */
/*                  within this project.                                      */
/* Rule          : MISRA-C:2004 Rule-14.1                                     */
/* Justification : This is accepted, due to the module's API is exported      */
/*                 for user's usage.                                          */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(1:1503)-7  and                          */
/*                 END Msg(1:1503)-7  tags in the code.                       */
/******************************************************************************/

/* 8. MISRA C RULE VIOLATION:                                                 */
/* Message       : (1:1505) The function '%1s' is only referenced in the      */
/*                 translation unit where it is defined.                      */
/* Rule          : MISRA-C:2004 Rule-8.10                                     */
/* Justification : This is accepted, due to following coding rule, internal   */
/*                 function can be defined in other C source files.           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(1:1505)-8  and                          */
/*                 END Msg(1:1505)-8  tags in the code.                       */
/******************************************************************************/

/* 9. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3218) File scope static, 'symbol', is only accessed in  */
/*                 one function.                                              */
/* Rule          : MISRA-C:2004 Rule-8.7                                      */
/* Justification : To control the memory location by memmap.h, static symbols */
/*                 must be declared in the global scope.                      */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3218)-9 and                           */
/*                 END Msg(2:3218)-9 tags in the code.                        */
/******************************************************************************/

/* 10. MISRA C RULE VIOLATION:                                                */
/* Message       : (2:3673) The object addressed by the pointer               */
/*                 parameter '%s' is not modified and so the pointer          */
/*                 could be of type 'pointer to const'.                       */
/* Rule          : MISRA-C:2004 Rule-16.7                                     */
/* Justification : Pointer variable is used to modify the value at the address*/
/*                 so the pointer cannot be declared as 'pointer to const'    */
/*                 type.                                                      */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3673)-10 and                          */
/*                 END Msg(2:3673)-10 tags in the code.                       */
/******************************************************************************/
/******************************************************************************/
/**                      QAC warning                                         **/
/******************************************************************************/

/* 1. QAC Warning:                                                            */
/* Message       : (3:3416) Logical operation performed on expression with    */
/*                 possible side effects.                                     */
/* Justification : Logical operation accesses volatile object which is a      */
/*                 register access and timeout counter. All register addresses*/
/*                 and timeout counter are generated with volatile qualifier. */
/*                 There is no impact on the functionality                    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(3:3416)-1 and END Msg(3:3416)-1         */
/*                 tags in the code.                                          */
/******************************************************************************/

/* 2. QAC Warning:                                                            */
/* Message       : (3:3206) The parameter is not used in this function.       */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3206           */
/* Justification : This is done as per implementation requirement             */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(3:3206)-2 and                           */
/*                 END Msg(3:3206)-2 tags in the code.                        */
/******************************************************************************/

/* 3. QAC warning:                                                            */
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
/* Reference     : Look for START Msg(2:0832)-3 and                           */
/*                 END Msg(2:0832)-3 tags in the code.                        */
/******************************************************************************/

/* 4. QAC Warning:                                                            */
/* Message       : (2:3204) This variable is only set once and so it could    */
/*                 be declared with the 'const' qualifier.                    */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3204           */
/* Justification : Consider future expansion so do not correspond.            */
/*                 or use depending on compile switch conditions.             */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any safety impact.                              */
/* Reference     : Look for START Msg(2:3204)-4 and                           */
/*                 END Msg(2:3204)-4 tags in the code.                        */
/******************************************************************************/
/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
#define CAN_RSCAN_START_SEC_CONST_8
/* QAC Warning: START Msg(2:0832)-3 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-3 */
/* The LUT to acquire DLC register value from payload size */
CONST(uint8, CAN_RSCAN_CONST) Can_GaaDLCFromPayloadTable[] =
{
  0x00U, /*     0 byte  -> 0x00 */
  0x01U, /*     1 byte  -> 0x01 */
  0x02U, /*     2 bytes -> 0x02 */
  0x03U, /*     3 bytes -> 0x03 */
  0x04U, /*     4 bytes -> 0x04 */
  0x05U, /*     5 bytes -> 0x05 */
  0x06U, /*     6 bytes -> 0x06 */
  0x07U, /*     7 bytes -> 0x07 */
  0x08U, /*     8 bytes -> 0x08 */
  0x09U, /*  9~12 bytes -> 0x09 */
  0x09U, /*  9~12 bytes -> 0x09 */
  0x09U, /*  9~12 bytes -> 0x09 */
  0x09U, /*  9~12 bytes -> 0x09 */
  0x0AU, /* 13~16 bytes -> 0x0A */
  0x0AU, /* 13~16 bytes -> 0x0A */
  0x0AU, /* 13~16 bytes -> 0x0A */
  0x0AU, /* 13~16 bytes -> 0x0A */
  0x0BU, /* 17~20 bytes -> 0x0B */
  0x0BU, /* 17~20 bytes -> 0x0B */
  0x0BU, /* 17~20 bytes -> 0x0B */
  0x0BU, /* 17~20 bytes -> 0x0B */
  0x0CU, /* 21~24 bytes -> 0x0C */
  0x0CU, /* 21~24 bytes -> 0x0C */
  0x0CU, /* 21~24 bytes -> 0x0C */
  0x0CU, /* 21~24 bytes -> 0x0C */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0DU, /* 25~32 bytes -> 0x0D */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0EU, /* 33~48 bytes -> 0x0E */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU, /* 49~64 bytes -> 0x0F */
  0x0FU  /* 49~64 bytes -> 0x0F */
};

/* The LUT to acquire payload size from DLC value */
CONST(uint8, CAN_RSCAN_CONST) Can_GaaPayloadFromDLCTable[] =
{
  0U,  /* 0x00 ->  0 byte  */
  1U,  /* 0x01 ->  1 byte  */
  2U,  /* 0x02 ->  2 bytes */
  3U,  /* 0x03 ->  3 bytes */
  4U,  /* 0x04 ->  4 bytes */
  5U,  /* 0x05 ->  5 bytes */
  6U,  /* 0x06 ->  6 bytes */
  7U,  /* 0x07 ->  7 bytes */
  8U,  /* 0x08 ->  8 bytes */
  12U, /* 0x09 -> 12 bytes */
  16U, /* 0x0A -> 16 bytes */
  20U, /* 0x0B -> 20 bytes */
  24U, /* 0x0C -> 24 bytes */
  32U, /* 0x0D -> 32 bytes */
  48U, /* 0x0E -> 48 bytes */
  64U  /* 0x0F -> 64 bytes */
};

#if ((CAN_RX_FIFO == STD_ON) || (CAN_RX_COMFIFO == STD_ON))
/* The LUT to acuire payload size from RFPLS/CFPLS field */
/* MISRA Violation: START Msg(2:3218)-9 */
static CONST(uint8, CAN_RSCAN_CONST) Can_GaaPayloadFromPLSTable[] =
/* END Msg(2:3218)-9 */
{
  8U,  /* 0x0 ->  8 bytes */
  12U, /* 0x1 -> 12 bytes */
  16U, /* 0x2 -> 16 bytes */
  20U, /* 0x3 -> 20 bytes */
  24U, /* 0x4 -> 24 bytes */
  32U, /* 0x5 -> 32 bytes */
  48U, /* 0x6 -> 48 bytes */
  64U  /* 0x7 -> 64 bytes */
};
#endif
#define CAN_RSCAN_STOP_SEC_CONST_8
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-6 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-6 */
/* END Msg(2:0832)-3 */
#endif /* (CAN_RSCANFD_CONFIGURED == STD_ON) */

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-6 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-6 */
/* END Msg(2:0832)-3 */

#if (CAN_RX_FIFO == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationRxFIFO(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  const uint8 LucUnit);
#endif
#if (CAN_RX_COMFIFO == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationTxRxFIFO(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  const uint8 LucUnit);
#endif
#if (CAN_RX_BUFFER == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationRxBuffer(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  const uint8 LucUnit);
#endif
#if (CAN_RX_OBJECT == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationCommonPart(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  uint32 LaaCanSdu[], uint32 LulDlc,
  const uint32 LulIDRegValue, const uint32 LulFDSts);
#endif
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_MainFunction_Write_Common(
  const uint8 LucIndex
);
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_MainFunction_Read_Common(
  const uint8 LucIndex
);
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-6 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-6 */
/* END Msg(2:0832)-3 */

#define CAN_RSCAN_START_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-6 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-6 */
/* END Msg(2:0832)-3 */
/*******************************************************************************
** Function Name         : Can_MainFunction_Write(_n)
**
** Service ID            : 0x01
**
** Description           : This function performs the polling of transmit
**                         confirmation that is configured statically as
**                         'to be polled'.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**                         CAN_TX_PROCESSING is set to POLLING.
**
** Global Variables Used : None
**
** Functions Invoked     : Can_MainFunction_Write_Common
**
** Registers Used        : (CFD)THLACCm, (CFD)THLSTSm, (CFD)THLPCTRm,
**                         (CFD)CFSTSk, (CFD)TXQSTSm, (CFD)TMSTSp
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write(void)
/* END Msg(1:1503)-7 */
{
  /* References: CAN_DDD_ACT_002 */
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_0);
}
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 0U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_0(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_0);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 1U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_1(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_1);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 2U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_2(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_2);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 3U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_3(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_3);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 4U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_4(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_4);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 5U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_5(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_5);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 6U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_6(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_6);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 7U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Write_7(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Write_Common(CAN_MAINFUNCTION_INSTANCE_7);
}
#endif

/*******************************************************************************
** Function Name         : Can_MainFunction_Read(_n)
**
** Service ID            : 0x08
**
** Description           : This function performs the polling of receive
**                         indications that are configured statically as 'to be
**                         polled'.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : None
**
** Input Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**                         Read operation must be set as polling mode.
**
** Global Variables Used : None
**
** Functions Invoked     : Can_MainFunction_Read_Common
**
** Registers Used        : (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                         (CFD)RFDFdx,(CFD)RFPCTR, (CFD)RFSTSx,CFDCSTS,
**                         (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk,(CFD)CFPCTRk,
**                         (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,(CFD)RMPTRq,
**                         (CFD)RMDFbq, FDRMSTSq
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read(void)
/* END Msg(1:1503)-7 */
{
  /* References: CAN_DDD_ACT_008 */
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_0);
}
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 0U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_0(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_0);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 1U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_1(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_1);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 2U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_2(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_2);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 3U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_3(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_3);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 4U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_4(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_4);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 5U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_5(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_5);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 6U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_6(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_6);
}
#endif
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 7U)
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Read_7(void)
/* END Msg(1:1503)-7 */
{
  Can_MainFunction_Read_Common(CAN_MAINFUNCTION_INSTANCE_7);
}
#endif

/*******************************************************************************
** Function Name         : Can_MainFunction_BusOff
**
** Service ID            : 0x09
**
** Description           : This function performs the polling of BusOff events
**                         that are configured statically as 'to be polled'.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**                         BusOff operation must be set as polling mode.
**                         If the state transition START to STOP has been
**                         started by Can_SetControllerMode, just clear error
**                         flags and don't do further operations.
**
** Global Variables Used : Can_GblInitialized, Can_GaaCtrlState,
**                         Can_GaaRegs, Can_GpPCController
**
** Functions Invoked     : Det_ReportError, CanIf_ControllerBusOff,
**                         CAN_ENTER_CRITICAL_SECTION, CAN_EXIT_CRITICAL_SECTION
**                     
** Registers Used        : (CFD)ERFL
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_BusOff(void)
/* END Msg(1:1503)-7 */
{
#if (CAN_BUSOFF_POLLING == STD_ON)
  /* References: CAN_DDD_ACT_009 */
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  uint8 LucCtrlIndex;
  boolean LblNotificationRequired;
#endif
  /* QAC Warning: START Msg(3:3416)-1 */
  /* If CAN Driver is not initialized yet, return without any operation */
  if (CAN_FALSE == Can_GblInitialized)
  /* END Msg(3:3416)-1 */
  {
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_MAIN_BUSOFF_SID, CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_009_ERR001 */
#endif
  }
  else
  {
#if (CAN_BUSOFF_POLLING == STD_ON)
    /* Loop for the number of Controllers configured  */
    /* MISRA Violation: START Msg(6:2877)-4 */
    for (LucCtrlIndex = (uint8)0U;
      LucCtrlIndex < (uint8)CAN_NO_OF_CONTROLLERS; LucCtrlIndex++)
    /* END Msg(6:2877)-4 */
    {
      /* MISRA Violation: START Msg(2:0491)-1 */
      LpPCController = &Can_GpPCController[LucCtrlIndex];
      /* END Msg(2:0491)-1 */
      /* Check whether polling method is configured and BusOff flag is enabled*/
      if ((0UL == ((uint32)LpPCController->ucIntEnable &
        (uint32)CAN_CHECK_INT_BUSOFF)) &&
        (CAN_TRUE != Can_GaaCtrlState[LucCtrlIndex].blBusOff) &&
        (0UL != (Can_GaaRegs[LpPCController->ucUnitIndex].pCmn->
          aaChReg[LpPCController->ucChannelOffset].ulERFL & CAN_RSCAN_BOEF)))
      {
        /* Clear all error flags */
        CAN_WRITE_REG_ONLY(&Can_GaaRegs[LpPCController->ucUnitIndex].pCmn->
                           aaChReg[LpPCController->ucChannelOffset].ulERFL,
                             CAN_RSCAN_ERFL_CLEAR)
        /* References: CAN_DDD_ACT_009_REG001 */
        /*
         * The transition START to STOP is done by the following triggers:
         *  - Can_SetControllerMode(CAN_T_STOP)
         *  - Bus-off
         * To avoid the state transition is done twice by both of triggers,
         * the exclusive control is required.
         */
        CAN_ENTER_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
        /* References: CAN_DDD_ACT_009_CRT001 */
        if ((CAN_T_START == Can_GaaCtrlState[LucCtrlIndex].enMode) &&
          (CAN_NO_PENDING_TRANSITION ==
            Can_GaaCtrlState[LucCtrlIndex].enSubState))
        {
          /* Set bus-off flag */
          Can_GaaCtrlState[LucCtrlIndex].blBusOff = CAN_TRUE;
          /* References: CAN_DDD_ACT_009_GBL001 */
          /* When busoff has been occurred, HW is CHANNEL_HALT mode already.
             So no additional operation is required, just set the mode. */
          Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_STOP;
          /* References: CAN_DDD_ACT_009_GBL002 */
          Can_GaaCtrlState[LucCtrlIndex].enSubState = \
              CAN_NO_PENDING_TRANSITION;
          /* References: CAN_DDD_ACT_009_GBL003 */
          /* Notification for CanIf is required */
          LblNotificationRequired = CAN_TRUE;
        }
        else
        {
          /* State transition by Can_SetControllerMode has been started
          already, ignore this BusOff interruption. */
          LblNotificationRequired = CAN_FALSE;
        }
        CAN_EXIT_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
        /* References: CAN_DDD_ACT_009_CRT002 */

        if (CAN_TRUE == LblNotificationRequired)
        {
          /* MISRA Violation: START Msg(4:2984)-2 */
          CanIf_ControllerBusOff((uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET));
          /* END Msg(4:2984)-2 */
        }
        else
        {
          /* Nothing to do */
        }
      }
      else
      {
        /* No action required */
      }
    }
#endif
  }
}

/*******************************************************************************
** Function Name         : Can_MainFunction_Wakeup
**
** Service ID            : 0x0A
**
** Description           : This function performs the polling of wake-up events
**                         that are configured statically as 'to be polled'.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**                         Wakeup operation must be set as polling mode.
**
** Global Variables Used : Can_GblInitialized, Can_GaaCtrlState,
**                         Can_GpPCController
**
** Functions Invoked     : Det_ReportError, CAN_ENTER_CRITICAL_SECTION,
**                         CAN_EXIT_CRITICAL_SECTION, EcuM_CheckWakeup,
**                         Can_WakeupMode
**
** Registers Used        : EICn, FCLAnCTLm, DNFAnEN
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Wakeup(void)
/* END Msg(1:1503)-7 */
{
  /* References: CAN_DDD_ACT_010 */
#if ((CAN_WAKEUP_SUPPORT == STD_ON) && (CAN_WAKEUP_POLLING == STD_ON))
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  uint8 LucCtrlIndex;
  boolean LblCheckWakeupRequired;
#endif
  /* QAC Warning: START Msg(3:3416)-1 */
  /* If CAN Driver is not initialized yet, return without any operation */
  if (CAN_FALSE == Can_GblInitialized)
  /* END Msg(3:3416)-1 */
  {
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    /* Report to DET, if module is not initialized */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_MAIN_WAKEUP_SID, CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_010_ERR001 */
#endif
  }
  else
  {
#if ((CAN_WAKEUP_SUPPORT == STD_ON) && (CAN_WAKEUP_POLLING == STD_ON))
    /* Loop for the number of Controllers configured */
    for (LucCtrlIndex = (uint8)0U;
          LucCtrlIndex < (uint8)CAN_NO_OF_CONTROLLERS; LucCtrlIndex++)
    {
      /* MISRA Violation: START Msg(2:0491)-1 */
      LpPCController = &Can_GpPCController[LucCtrlIndex];
      /* END Msg(2:0491)-1 */
      /* Check whether wakeup interrupt request occurred */
      if ((NULL_PTR != LpPCController->pICWakeup) &&
        (0UL == ((uint32)LpPCController->ucIntEnable &
        (uint32)CAN_CHECK_INT_WAKEUP)) &&
        (0U != (*LpPCController->pICWakeup & CAN_EIC_EIRF_MASK)))
      {
        CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
        /* References: CAN_DDD_ACT_010_CRT001 */
        /* Clear EIRF */
        RH850_SV_MODE_ICR_AND(16, LpPCController->pICWakeup,
          (uint16)(~CAN_EIC_EIRF_MASK));
        /* References: CAN_DDD_ACT_010_REG001 */
        /* Setting the filter control register to reset value */
        if(NULL_PTR != LpPCController->pFCLAReg)
        {
          *(LpPCController->pFCLAReg) = CAN_ZERO;
          /* References: CAN_DDD_ACT_010_REG002 */
        }
        else
        {
          /* Nothing to do */
        }
        /* Disable digital noise elimination */
        if(NULL_PTR != LpPCController->pDNFAReg)
        {
          *(LpPCController->pDNFAReg) &=
                            (~CAN_RSCAN_DNFA(LpPCController->ucChannelOffset));
          /* References: CAN_DDD_ACT_010_REG003 */
        }
        else
        {
          /* Nothing to do */
        }
        /* Confirm that state transition is not
        on-going by Can_SetControllerMode */
        if ((CAN_T_SLEEP == Can_GaaCtrlState[LucCtrlIndex].enMode) &&
          (CAN_NO_PENDING_TRANSITION ==
              Can_GaaCtrlState[LucCtrlIndex].enSubState))
        {
          /* The state transition takes a long time,
          the subsequent operation will be done in Can_MainFunction_Mode */
          Can_GaaCtrlState[LucCtrlIndex].enSubState = \
              CAN_PENDING_WAKEUP_REQUESTED;
          /* References: CAN_DDD_ACT_010_GBL001 */
          /* Store the wakeup event */
          Can_GaaCtrlState[LucCtrlIndex].blWakeupEventOccurred = CAN_TRUE;
          /* References: CAN_DDD_ACT_010_GBL002 */
          Can_GaaCtrlState[LucCtrlIndex].blWakeupByHW = CAN_TRUE;
          /* References: CAN_DDD_ACT_010_GBL003 */
          LblCheckWakeupRequired = CAN_TRUE;
        }
        else
        {
          /* If the state transition is already on-going, nothing to do */
          LblCheckWakeupRequired = CAN_FALSE;
        }
        CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
        /* References: CAN_DDD_ACT_010_CRT002 */
        /* Wakeup the controller and invoke EcuM_CheckWakeup call-back
           function to give wakeup notification */
        if (CAN_TRUE == LblCheckWakeupRequired)
        {
          Can_WakeupMode((uint8) LucCtrlIndex, CAN_MAIN_WAKEUP_SID);
          EcuM_CheckWakeup((EcuM_WakeupSourceType)CAN_DEFAULT_ONE <<
                            (LpPCController->ucWakeupSourceId));
        }
        else
        {
          /* No action required */
        }
      }
      else
      {
        /* No action required */
      }
    }
#endif
  }
}

/*******************************************************************************
** Function Name         : Can_MainFunction_Mode
**
** Service ID            : 0x0C
**
** Description           : This function performs the polling of CAN controller
**                         mode transitions.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Remarks               : None
**
** Global Variables Used : Can_GblInitialized, Can_GaaCtrlState
**
** Functions Invoked     : Det_ReportError, Can_StartMode, Can_StopMode,
**                         Can_SleepMode, Can_WakeupMode
**
** Registers Used        : (CFD)CmSTS,(CFD)CmCTR, (CFD)CmERFL, 
**                         (CFD)THLCCm, (CFD)GSTS,(CFD)GCTR
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-7 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_MainFunction_Mode(void)
/* END Msg(1:1503)-7 */
{
  /* References: CAN_DDD_ACT_012 */
  uint8 LucCtrlIndex;
  /* QAC Warning: START Msg(3:3416)-1 */
  /* If CAN Driver is not initialized yet, return without any operation */
  if (CAN_FALSE == Can_GblInitialized)
  /* END Msg(3:3416)-1 */
  {
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    /* Report to DET, if module is not initialized */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_MAIN_MODE_SID, CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_012_ERR001 */
#endif
  }
  else
  {
    /* Loop for the number of Controllers configured */
    /* MISRA Violation: START Msg(6:2877)-4 */
    for (LucCtrlIndex = (uint8) 0UL;
      LucCtrlIndex < (uint8)CAN_NO_OF_CONTROLLERS; LucCtrlIndex++)
    /* END Msg(6:2877)-4 */
    {
      switch (Can_GaaCtrlState[LucCtrlIndex].enSubState)
      {
      case CAN_PENDING_START_WAIT_RESET:
        Can_StartMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_START_WAIT_COM:
        Can_StartMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_STOP_WAIT_HALT:
        Can_StopMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_STOP_WAIT_RESET:
        Can_StopMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
#if (CAN_WAKEUP_SUPPORT == STD_ON)
      case CAN_PENDING_SLEEP_WAIT_STOP:
        Can_SleepMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_SLEEP_WAIT_GLOBALRESET:
        Can_SleepMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_SLEEP_WAIT_GLOBALSTOP:
        Can_SleepMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_WAKEUP_REQUESTED:
        Can_WakeupMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_WAKEUP_WAIT_GLOBALCHANGE:
        Can_WakeupMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_WAKEUP_WAIT_GLOBALRESET:
        Can_WakeupMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_WAKEUP_WAIT_GLOBALOP:
        Can_WakeupMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
      case CAN_PENDING_WAKEUP_WAIT_RESET:
        Can_WakeupMode((uint8) LucCtrlIndex, CAN_MAIN_MODE_SID);
        break;
#endif
      default: /* CAN_NO_PENDING_TRANSITION, CAN_TENTATIVE_TRANSITION */
        /* Nothing to do */
        break;
      } /* switch(*(LpPCController->pModeTransitionSts)) */
    }
  }
}
#define CAN_RSCAN_STOP_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-6 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-6 */
/* END Msg(2:0832)-3 */


#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-6 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-6 */
/* END Msg(2:0832)-3 */

/*******************************************************************************
** Function Name         : Can_CommonDetCheck
**
** Service ID            : Not Applicable
**
** Description           : Perform DET checking for Controller ID
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LulSID        : Service ID
**                         LucController : Controller ID
**
** Output Parameters     : None
**
** Return parameter      : Can_ReturnType (CAN_OK / CAN_NOT_OK)
**
** Preconditions         : None
**
** Global Variables Used : Can_GblInitialized, Can_GpPCController
**
** Functions Invoked     : Det_ReportError
**
** Registers Used        : None
**
** Reference ID          : CAN_DDD_ACT_046
*******************************************************************************/
#if (CAN_DEV_ERROR_DETECT == STD_ON)
FUNC(Can_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_CommonDetCheck(
  const uint8 LucSID, const uint8 LucController)
{
  /* References: CAN_DDD_ACT_046 */
  Can_ReturnType LenReturnValue;
  /* QAC Warning: START Msg(3:3416)-1 */
  /* Report to DET, if module is not initialized */
  if (CAN_FALSE == Can_GblInitialized)
  /* END Msg(3:3416)-1 */
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      LucSID, CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_046_ERR001 */
    LenReturnValue = CAN_NOT_OK;
  }
  else
  {
    /* Report to DET, if the Controller Id is out of range */
    /* MISRA Violation: START Msg(2:0491)-1 */
    if ((CAN_NO_OF_CONTROLLERS <= LucController) ||
      (CAN_FALSE == Can_GpPCController[LucController].blActivation))
    /* END Msg(2:0491)-1 */
    {
      (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
        LucSID, CAN_E_PARAM_CONTROLLER);
      /* References: CAN_DDD_ACT_046_ERR002 */
      LenReturnValue = CAN_NOT_OK;
    }
    else
    {
      LenReturnValue = CAN_OK;
    }
  }

  return LenReturnValue;
}
#endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */

/*******************************************************************************
** Function Name         : Can_MainFunction_Write_Common
**
** Service ID            : Not Applicable
**
** Description           : This function notifies the upper layer about transmit
**                         confirmation.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LucIndex : Index of Controller config table
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GblInitialized, Can_GpPBController,
**                         Can_GpPCController
**
** Functions Invoked     : Can_TxConfirmationProcessing, Det_ReportError
**
** Registers Used        : (CFD)THLACCm, (CFD)THLSTSm, (CFD)THLPCTRm,
**                         (CFD)CFSTSk, (CFD)TXQSTSm, (CFD)TMSTSp
*******************************************************************************/
/* QAC Warning: START Msg(3:3206)-2 */
static FUNC(void, CAN_RSCAN_PRIVATE_CODE)Can_MainFunction_Write_Common(
  const uint8 LucIndex)
/* END Msg(3:3206)-2 */
{
  /* References: CAN_DDD_ACT_055 */
#if (CAN_TX_POLLING == STD_ON) && \
  (((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) || \
  (CAN_TX_QUEUE == STD_ON)))
  uint8 LucCtrlIndex;
#endif

  /* QAC Warning: START Msg(3:3416)-1 */
  /* If CAN Driver is not initialized yet, return without any operation */
  if (CAN_FALSE == Can_GblInitialized)
  /* END Msg(3:3416)-1 */
  {
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    /* Report to DET, if module is not initialized */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_MAIN_WRITE_SID, CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_055_ERR001 */
#endif
  }
  else
  {
#if (CAN_TX_POLLING == STD_ON) && \
  (((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) || \
  (CAN_TX_QUEUE == STD_ON)))
    /* Invoke Can_TxConfirmationProcessing for each Controller which
       configured as polling mode */
    /* MISRA Violation: START Msg(6:2877)-4 */
    for (LucCtrlIndex = (uint8) 0U;
      LucCtrlIndex < (uint8) CAN_NO_OF_CONTROLLERS; LucCtrlIndex++)
    /* END Msg(6:2877)-4 */
    {
      if (
#if (CAN_NUMBER_OF_MAINFUNCTIONS > 0U)
        /* MISRA Violation: START Msg(2:0491)-1 */
        (Can_GpPBController[LucCtrlIndex].ucMainFunctionWIndex ==
          LucIndex) &&
        /* END Msg(2:0491)-1 */
#endif
        /* MISRA Violation: START Msg(2:0491)-1 */
        (0U ==
          (Can_GpPCController[LucCtrlIndex].ucIntEnable & CAN_CHECK_INT_TX)))
        /* END Msg(2:0491)-1 */
      {
        Can_TxConfirmationProcessing((uint8) LucCtrlIndex);
      }
      else
      {
        /* Nothing to do */
      }
    }
#endif /* (CAN_TX_POLLING == STD_ON) && \
  (((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))) */
  }
}

/*******************************************************************************
** Function Name         : Can_MainFunction_Read_Common
**
** Service ID            : Not Applicable
**
** Description           : This function notifies the upper layer about receive
**                         messages.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LucIndex : Index of Controller config table
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GblInitialized
**
** Functions Invoked     : Can_RxProcessing, Det_ReportError
**
** Registers Used        : (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                         (CFD)RFDFdx,(CFD)RFPCTR, (CFD)RFSTSx,CFDCSTS,
**                         (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk,(CFD)CFPCTRk,
**                         (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,(CFD)RMPTRq,
**                         (CFD)RMDFbq, FDRMSTSq
*******************************************************************************/
static FUNC(void, CAN_RSCAN_PRIVATE_CODE)Can_MainFunction_Read_Common(
  const uint8 LucIndex
)
{
  /* QAC Warning: START Msg(3:3416)-1 */
  /* References: CAN_DDD_ACT_056 */
  /* If CAN Driver is not initialized yet, return without any operation */
  if (CAN_FALSE == Can_GblInitialized)
  /* END Msg(3:3416)-1 */
  {
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    /* Report to DET, if module is not initialized */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_MAIN_READ_SID, CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_056_ERR001 */
#endif
  }
  else
  {
#if (CAN_RX_OBJECT == STD_ON)
    Can_RxProcessing(
      CAN_RXPROC_BUFFER_ALL | CAN_RXPROC_RXFIFO_ALL | CAN_RXPROC_TXRXFIFO_ALL,
      CAN_INT_DISABLED, LucIndex);
#endif
  }
}

/*******************************************************************************
** Function Name         : Can_TxConfirmationProcessing
**
** Service ID            : Not Applicable
**
** Description           : This function notifies the upper layer about transmit
**                         confirmation.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LucCtrlIndex : Index of Controller config table
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaRegs, Can_GpPCController,
**                         Can_GpHohConfig
**
** Functions Invoked     : Dem_ReportErrorStatus, CanIf_TxConfirmation
**
** Registers Used        : (CFD)THLACCm, (CFD)THLSTSm, (CFD)THLPCTRm,
**                         (CFD)CFSTSk, (CFD)TXQSTSm, (CFD)TMSTSp
*******************************************************************************/
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
/* MISRA Violation: START Msg(1:1505)-8 */
FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_TxConfirmationProcessing(
  const uint8 LucCtrlIndex)
/* END Msg(1:1505)-8 */
{
  /* References: CAN_DDD_ACT_032 */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpTHLACCReg;
#if (CAN_CANV2_CONFIGURED != STD_ON)
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpTHLACC1Reg;
#endif
  uint8 LucUnit;
  uint8 LucCh;
  uint8 LucCount;
  uint32 LulHistoryData;
#if (CAN_CANV2_CONFIGURED != STD_ON)
  uint32 LulLabelHistoryData;
#endif
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_TX_BUFFER == STD_ON))
  uint32 LulBufferIndex;
#endif
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_TX_QUEUE == STD_ON))
  uint32 LulBufferType;
#endif
#if (CAN_TX_COMFIFO == STD_ON)
  uint32 LulHohIndex;
  uint32 LulTXRXFIFOIndex;
  P2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_PRIVATE_CONST)LpHoh;
#endif

  /* MISRA Violation: START Msg(2:0491)-1 */
  LucUnit = Can_GpPCController[LucCtrlIndex].ucUnitIndex;
  /* END Msg(2:0491)-1 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucCh = Can_GpPCController[LucCtrlIndex].ucChannelOffset;
  /* END Msg(2:0491)-1 */

  /* Get the address of transmit history access register
     because the address is different between RSCAN and RSCANFD */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
  {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
#if (CAN_CANV2_CONFIGURED != STD_ON)
    LpTHLACCReg = &(Can_GaaRegs[LucUnit].pFD->aaTHLReg[LucCh].aaTHLACC0);
    LpTHLACC1Reg = &(Can_GaaRegs[LucUnit].pFD->aaTHLReg[LucCh].aaTHLACC1);
#else
    LpTHLACCReg = &(Can_GaaRegs[LucUnit].pFD->aaTHLACC[LucCh]);
#endif
#endif
  }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  else
#endif
  {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
    LpTHLACCReg = &(Can_GaaRegs[LucUnit].pCmn->aaTHLACC[LucCh]);
#endif
  }

  /* Report to DEM if transmit history overflow occurs */
#if defined(CAN_E_TX_HISTORY_OVERFLOW)
  if (CAN_RSCAN_THLELT ==
        (Can_GaaRegs[LucUnit].pCmn->aaTHLSTS[LucCh] & CAN_RSCAN_THLELT))
  {
    Dem_ReportErrorStatus(CAN_E_TX_HISTORY_OVERFLOW, DEM_EVENT_STATUS_FAILED);
  }
  else
  {
    /* Nothing to do */
  }
#endif
  /* Clear transmit history overflow bit */
  Can_GaaRegs[LucUnit].pCmn->aaTHLSTS[LucCh] = ~CAN_RSCAN_THLELT;
  /* References: CAN_DDD_ACT_032_REG006 */

  LucCount = 0U;
  /* Read all transmit history and inform CanIf */
  while ((LucCount < (uint8)CAN_RSCAN_THL_ENTRIES_PER_CH) && 
      (0UL == (Can_GaaRegs[LucUnit].pCmn->aaTHLSTS[LucCh] & CAN_RSCAN_THLEMP)))
  {
    /* Clear THL interrupt for every storing entry */
    Can_GaaRegs[LucUnit].pCmn->aaTHLSTS[LucCh] = ~CAN_RSCAN_THLIF;
    LulHistoryData = *LpTHLACCReg;
#if (CAN_CANV2_CONFIGURED != STD_ON)
    LulLabelHistoryData = (*LpTHLACC1Reg) & CAN_LABEL_BITS_MASK;
    CanIf_TxConfirmation((PduIdType)(LulLabelHistoryData));
#else
    /* Inform CanIf_TxConfirmation of */
    CanIf_TxConfirmation((PduIdType)CAN_RSCAN_TID_GET(LulHistoryData));
#endif
    /* Increment buffer pointer */
    Can_GaaRegs[LucUnit].pCmn->aaTHLPCTR[LucCh] = CAN_RSCAN_THLPC_NEXT;
    /* References: CAN_DDD_ACT_032_REG005 */

    /* Clear interrupt request flag according to the buffer type */
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_TX_BUFFER == STD_ON))
    LulBufferIndex = CAN_RSCAN_BN_GET(LulHistoryData);
#endif
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_TX_QUEUE == STD_ON))
    LulBufferType = CAN_RSCAN_BT_GET(LulHistoryData);
#endif
#if (CAN_TX_COMFIFO == STD_ON)
    if (CAN_RSCAN_BT_TXRXFIFO == LulBufferType)
    {
      /* Seek TxRxFIFO index of this buffer from the HOH config table */
      LulTXRXFIFOIndex = 0UL;
      for (LulHohIndex = 0UL;
        LulHohIndex < (uint32) CAN_NO_OF_HOHS; LulHohIndex++)
      {
        /* MISRA Violation: START Msg(2:0491)-1 */
        LpHoh = &Can_GpHohConfig[LulHohIndex];
        /* END Msg(2:0491)-1 */
        if ((CAN_HOH_HTH == LpHoh->enHoh) &&
          (LpHoh->ucController == LucCtrlIndex) &&
          (CAN_BUFFERTYPE_TXRXFIFO == LpHoh->enBufferType) &&
          (CAN_RSCAN_CFTML_GET(LpHoh->ulXXCCRegValue) == LulBufferIndex))
        {
          LulTXRXFIFOIndex = LpHoh->ucBufferIndex;
        }
        else
        {
          /* Nothing to do */
        }
      }
      /* Clear TxRxFIFO Tx interrupt flag if it is not cleared yet */
      Can_GaaRegs[LucUnit].pCmn->aaCFSTS[LulTXRXFIFOIndex] = ~CAN_RSCAN_CFTXIF;
      /* References: CAN_DDD_ACT_032_REG001 */
    }
    else
#endif
#if (CAN_TX_QUEUE == STD_ON)
    if (CAN_RSCAN_BT_TXQUEUE == LulBufferType)
    {
      /* Clear Tx Queue interrupt flag if it is not cleared yet */
      Can_GaaRegs[LucUnit].pCmn->aaTXQSTS[LucCh] = ~CAN_RSCAN_TXQIF;
      /* References: CAN_DDD_ACT_032_REG002 */
    }
    else
#endif
    {
#if (CAN_TX_BUFFER == STD_ON)
      /* Clear TMTRF flags (Tx completion) */
      Can_GaaRegs[LucUnit].pCmn->aaTMSTS[(LucCh * CAN_RSCAN_TXBUFFER_PER_CH)
        + LulBufferIndex] = CAN_RSCAN_TMTRF_NO;
      /* References: CAN_DDD_ACT_032_REG003 */
#endif
    }
    LucCount++;
  }
}
#endif /* ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON)) */

/*******************************************************************************
** Function Name         : Can_RxProcessing
**
** Service ID            : Not Applicable
**
** Description           : This function notifies the upper layer about receive
**                         indication.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LulBufferBits : Target buffer to be read
**                         LulMode       : Interrupt or polling or both
**                         LucIndex      : Index of MainFunction
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaRegs, Can_GpHohConfig,
**                         Can_GpPCController
**
** Functions Invoked     : Can_RxIndicationRxFIFO, Can_RxIndicationTxRxFIFO,
**                         Can_RxIndicationRxBuffer
**
** Registers Used        : (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                         (CFD)RFDFdx,(CFD)RFPCTR, (CFD)RFSTSx,CFDCSTS,
**                         (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk,(CFD)CFPCTRk,
**                         (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,(CFD)RMPTRq,
**                         (CFD)RMDFbq, FDRMSTSq
*******************************************************************************/
#if (CAN_RX_OBJECT == STD_ON)
/* MISRA Violation: START Msg(1:1505)-8 */
/* QAC Warning: START Msg(3:3206)-2 */
FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxProcessing(
  const uint32 LulBufferBits, const uint32 LulMode, const uint8 LucIndex)
/* END Msg(3:3206)-2 */
/* END Msg(1:1505)-8 */
{
  /* References: CAN_DDD_ACT_033 */
  P2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHoh;
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  uint8 LucUnit;
  uint32 LulHohIndex;

  /* Scan all HOH objects */
  for (LulHohIndex = 0UL;
    LulHohIndex < (uint32)CAN_NO_OF_HOHS; LulHohIndex++)
  {
    /* MISRA Violation: START Msg(2:0491)-1 */
    LpHoh = &Can_GpHohConfig[LulHohIndex];
    /* END Msg(2:0491)-1 */
    /* MISRA Violation: START Msg(2:0491)-1 */
    LpPCController = &Can_GpPCController[LpHoh->ucController];
    /* END Msg(2:0491)-1 */
    /* If HRH and interrupt/polling mode is match */
    if ((CAN_HOH_HRH == LpHoh->enHoh) &&
#if ((CAN_RX_POLLING == STD_ON) && (CAN_NUMBER_OF_MAINFUNCTIONS > 1U))
      (LucIndex == LpHoh->ucMainFunctionRIndex) &&
#endif
      (
#if (CAN_RX_POLLING == STD_ON)
        ((CAN_BUFFERTYPE_BUFFER == LpHoh->enBufferType) &&
          ((uint32)CAN_INT_DISABLED == LulMode)) ||
#endif
        ((LulMode & (uint32)CAN_CHECK_INT_RX) ==
          ((uint32)LpPCController->ucIntEnable & (uint32)CAN_CHECK_INT_RX))
      ))
    {
      LucUnit = LpPCController->ucUnitIndex;
      switch (LpHoh->enBufferType)
      {
#if (CAN_RX_FIFO == STD_ON)
      case CAN_BUFFERTYPE_RXFIFO:
        if (0UL != (LulBufferBits & CAN_RXPROC_RXFIFO(LucUnit)))
        {
          /* Indicate all messages in RxFIFO to CanIf */
          Can_RxIndicationRxFIFO(LpHoh, LucUnit);
        }
        else
        {
          /* Nothing to do */
        }
        break;
#endif /* (CAN_RX_FIFO == STD_ON) */
#if (CAN_RX_COMFIFO == STD_ON)
      case CAN_BUFFERTYPE_TXRXFIFO:
        if (0UL != (LulBufferBits & CAN_RXPROC_TXRXFIFO(LpHoh->ucController)))
        {
          /* Indicate all messages in TxRxFIFO to CanIf */
          Can_RxIndicationTxRxFIFO(LpHoh, LucUnit);
        }
        else
        {
          /* Nothing to do */
        }
        break;
#endif /* (CAN_RX_COMFIFO == STD_ON) */
#if (CAN_RX_BUFFER == STD_ON)
      case CAN_BUFFERTYPE_BUFFER:
        /* Check whether RMNSq bit for the target buffer is activated */
        if ((0UL != (LulBufferBits & CAN_RXPROC_BUFFER(LpHoh->ucController))) &&
          (0UL != (Can_GaaRegs[LucUnit].pCmn->aaRMND[
            CAN_RSCAN_RMND_GET_INDEX(LpHoh->ucBufferIndex)] &
            CAN_RSCAN_RMND_GET_BITMASK(LpHoh->ucBufferIndex))))
        {
          /* Indicate the message in this buffer to CanIf */
          Can_RxIndicationRxBuffer(LpHoh, LucUnit);
        }
        else
        {
          /* Nothing to do */
        }
        break;
#endif /* (CAN_RX_BUFFER == STD_ON) */
      default:
        /* Never executed */
        break;
      } /* switch (LpHoh->enBufferType) */
    }
    else
    {
      /* Nothing to do */
    }
  }
}
#endif /* (CAN_RX_OBJECT == STD_ON) */

/*******************************************************************************
** Function Name         : Can_RxIndicationRxFIFO
**
** Service ID            : Not Applicable
**
** Description           : This function reads a RxFIFO and
**                         notifies the upper layer about receive indication.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LpHoh   : Pointer to HRH
**                         LucUnit : Module number of RSCANn
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaRegs, Can_GaaPayloadFromDLCTable,
**                         Can_GaaPayloadFromPLSTable
**
** Functions Invoked     : Det_ReportError, Can_RxIndicationCommonPart,
**                         Dem_ReportErrorStatus().
**
** Registers Used        : FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                        (CFD)RFDFdx, (CFD)RFPCTR, (CFD)RFSTSx
*******************************************************************************/
#if (CAN_RX_FIFO == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationRxFIFO(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  const uint8 LucUnit)
{
  /* References: CAN_DDD_ACT_047 */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE)LpDataReg;
  /* To optimize data copy operation, declare data array with uint32 */
  VAR(uint32, CAN_RSCAN_NOINIT_DATA) LaaCanSdu[CAN_LOCALBUFFER_SIZE_32];
  uint32 LulMessageDlc;
  uint32 LulAvailableDlc;
  uint32 LulFDSts;
  uint32 LulIDRegValue;
  uint32 LulWordIndex;
  uint32 LulDlcWords;
  uint8 LucCount;
  /* QAC Warning: START Msg(2:3204)-4 */
  uint8 LucFIFOBufferDepth;
  /* END Msg(2:3204)-4 */
  uint8 LucRFDCValue;

  /* Clear interrupt request flags */
  (Can_GaaRegs[LucUnit].pCmn->aaRFSTS[LpHoh->ucBufferIndex]) =
     ~(CAN_RSCAN_RFIF);
  /* References: CAN_DDD_ACT_047_REG002 */

  /* Get Receive FIFO Buffer Depth Configuration value */
  LucRFDCValue = (uint8)CAN_RSCAN_RFDC_GET(LpHoh->ulXXCCRegValue);
  /* Get FIFO Buffer Depth value */
  LucFIFOBufferDepth = (uint8)CAN_RSCAN_FIFO_BUFFER_DEPTH_GET(LucRFDCValue);
  LucCount = 0U;
  /* Read RxFIFO until the FIFO becomes empty */
  while ((0UL ==
    (Can_GaaRegs[LucUnit].pCmn->aaRFSTS[LpHoh->ucBufferIndex] &
      CAN_RSCAN_RFEMP)) && (LucCount < LucFIFOBufferDepth))
  {
#if (defined(CAN_E_RECEIVE_DATA_LOST) || CAN_DEV_ERROR_DETECT == STD_ON)
    /*Check lost message*/
    if (CAN_FIFO_MSG_LOST_MASK ==
       ((Can_GaaRegs[LucUnit].pCmn->aaRFSTS[LpHoh->ucBufferIndex])
        & CAN_FIFO_MSG_LOST_MASK))
    {
      /* Clear receive FIFO message lost flag */
      (Can_GaaRegs[LucUnit].pCmn->aaRFSTS[LpHoh->ucBufferIndex]) =
        ~(CAN_RSCAN_RFMLT);
      /* References: CAN_DDD_ACT_047_REG003 */
#if (CAN_DEV_ERROR_DETECT == STD_ON)
      /* Report to DET error*/
      (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
         CAN_RXPROCESSING_SID, CAN_E_DATALOST);
      /* References: CAN_DDD_ACT_047_ERR001 */
#endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#if defined(CAN_E_RECEIVE_DATA_LOST)
      /* Report to DEM error*/
      Dem_ReportErrorStatus(CAN_E_RECEIVE_DATA_LOST, DEM_EVENT_STATUS_FAILED);
      /* References: CAN_DDD_ACT_047_ERR002 */
#endif /* defined(CAN_E_RECEIVE_DATA_LOST) */
    }
    else
    {
        /* No action required */
    }
#endif /* (defined(CAN_E_RECEIVE_DATA_LOST) ||
          (CAN_DEV_ERROR_DETECT == STD_ON)) */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
    {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
      /* Get status and data register address according to each buffer mode */
      LulFDSts =
        Can_GaaRegs[LucUnit].pFD->aaRFReg[LpHoh->ucBufferIndex].ulFDRFFDSTS;
      LulIDRegValue =
        Can_GaaRegs[LucUnit].pFD->aaRFReg[LpHoh->ucBufferIndex].ulFDRFID;
      LulMessageDlc =
        Can_GaaRegs[LucUnit].pFD->aaRFReg[LpHoh->ucBufferIndex].ulFDRFPTR;
      LpDataReg =
        &Can_GaaRegs[LucUnit].pFD->aaRFReg[LpHoh->ucBufferIndex].aaFDRFDF[0];

      /* Convert DLC value to actual byte length */
      LulMessageDlc =
        (uint32)Can_GaaPayloadFromDLCTable[CAN_RSCAN_XXDLC_GET(LulMessageDlc)];
      /* Read registers as the smaller one of message DLC or buffer DLC */
      LulAvailableDlc =
        Can_GaaPayloadFromPLSTable[CAN_RSCAN_RFPLS_GET(LpHoh->ulXXCCRegValue)];
      if (LulAvailableDlc > LulMessageDlc)
      {
        LulAvailableDlc = LulMessageDlc;
      }
      else
      {
        /* nothing to do */
      }
#endif /* (CAN_RSCANFD_CONFIGURED == STD_ON) */
    }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    else
#endif
    {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
      LulFDSts = 0UL;
      LulIDRegValue =
        Can_GaaRegs[LucUnit].pCmn->aaRFReg[LpHoh->ucBufferIndex].ulRFID;
      LulMessageDlc =
        Can_GaaRegs[LucUnit].pCmn->aaRFReg[LpHoh->ucBufferIndex].ulRFPTR;
      LpDataReg =
        &Can_GaaRegs[LucUnit].pCmn->aaRFReg[LpHoh->ucBufferIndex].aaRFDF[0];
      LulMessageDlc = CAN_RSCAN_XXDLC_GET(LulMessageDlc);
      /* Truncate 1xxxb to 1000b */
      if ((uint32)CAN_STD_MAX_PAYLOAD < LulMessageDlc)
      {
        LulMessageDlc = CAN_STD_MAX_PAYLOAD;
      }
      else
      {
        /* Nothing to do */
      }
      LulAvailableDlc = LulMessageDlc;
#endif /* (CAN_RSCAN_CONFIGURED == STD_ON) */
    }

    /* Copy Data to memory from registers by 4 bytes */
    LulDlcWords = CAN_ALIGN_4(LulAvailableDlc) / (uint32)sizeof(uint32);
    for (LulWordIndex = 0UL;
       LulWordIndex < LulDlcWords; LulWordIndex++)
    {
      /* MISRA Violation: START Msg(2:0491)-1 */
      LaaCanSdu[LulWordIndex] = LpDataReg[LulWordIndex];
      /* END Msg(2:0491)-1 */
    }

    /* Increment FIFO pointer */
    CAN_WRITE_REG_ONLY(
      &Can_GaaRegs[LucUnit].pCmn->aaRFPCTR[LpHoh->ucBufferIndex],
      CAN_RSCAN_CFPC_NEXT)
    /* References: CAN_DDD_ACT_047_REG001 */

    /* Indicate to the upper layer */
    Can_RxIndicationCommonPart(LpHoh, LaaCanSdu, LulMessageDlc,
      LulIDRegValue, LulFDSts);
    LucCount++;
  } /* while (FIFO is not empty) */
}
#endif /* (CAN_RX_FIFO == STD_ON) */

/*******************************************************************************
** Function Name         : Can_RxIndicationTxRxFIFO
**
** Service ID            : Not Applicable
**
** Description           : This function reads a TxRxFIFO and
**                         notifies the upper layer about receive indication.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Reentrant
**
** Input Parameters      : LpHoh   : Pointer to HRH
**                         LucUnit : Module number of RSCANn
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaRegs, Can_GaaPayloadFromDLCTable,
**                         Can_GaaPayloadFromPLSTable
**
** Functions Invoked     : Det_ReportError,Can_RxIndicationCommonPart,
**                         Dem_ReportErrorStatus().
**
** Registers Used        : CFDCSTS, (CFD)CFIDk, (CFD)CFPTRk, 
**                        (CFD)CFDFdk, (CFD)CFPCTRk, (CFD)CFSTSk, FDCFFDCST  
*******************************************************************************/
#if (CAN_RX_COMFIFO == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationTxRxFIFO(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  const uint8 LucUnit)
{
  /* References: CAN_DDD_ACT_048 */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE)LpDataReg;
  uint32 LulMessageDlc;
  uint32 LulAvailableDlc;
  /* To optimize data copy operation, declare data array with uint32 */
  VAR(uint32, CAN_RSCAN_NOINIT_DATA) LaaCanSdu[CAN_LOCALBUFFER_SIZE_32];
  uint32 LulFDSts;
  uint32 LulIDRegValue;
  uint32 LulWordIndex;
  uint32 LulDlcWords;
  uint8 LucCount;
  uint8 LucCFDCValue;
  /* QAC Warning: START Msg(2:3204)-4 */
  uint8 LucFIFOBufferDepth;
  /* END Msg(2:3204)-4 */

  /* Clear interrupt request flags */
  (Can_GaaRegs[LucUnit].pCmn->aaCFSTS[LpHoh->ucBufferIndex]) =
     ~(CAN_RSCAN_CFRXIF);
  /* References: CAN_DDD_ACT_048_REG002 */

  /* Get Receive FIFO Buffer Depth Configuration value */
  LucCFDCValue = (uint8)CAN_RSCAN_CFDC_GET(LpHoh->ulXXCCRegValue);

  /* Get FIFO Buffer Depth value */
  LucFIFOBufferDepth = (uint8)CAN_RSCAN_FIFO_BUFFER_DEPTH_GET(LucCFDCValue);
  LucCount = 0U;
  /* Read TxRxFIFO until the FIFO becomes empty */
  while ((0UL ==
    (Can_GaaRegs[LucUnit].pCmn->aaCFSTS[LpHoh->ucBufferIndex] &
      CAN_RSCAN_CFEMP)) && (LucCount < LucFIFOBufferDepth))
  {
#if (defined(CAN_E_RECEIVE_DATA_LOST) || CAN_DEV_ERROR_DETECT == STD_ON)
    /*Check lost message*/
    if (CAN_FIFO_MSG_LOST_MASK ==
       ((Can_GaaRegs[LucUnit].pCmn->aaCFSTS[LpHoh->ucBufferIndex])
        & CAN_FIFO_MSG_LOST_MASK))
    {
      /* Clear message lost status flags */
      (Can_GaaRegs[LucUnit].pCmn->aaCFSTS[LpHoh->ucBufferIndex]) =
        ~(CAN_RSCAN_CFMLT);
      /* References: CAN_DDD_ACT_048_REG003 */
#if (CAN_DEV_ERROR_DETECT == STD_ON)
      /* Report to DET */
      (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
         CAN_RXPROCESSING_SID, CAN_E_DATALOST);
      /* References: CAN_DDD_ACT_048_ERR001 */
#endif /* (CAN_DEV_ERROR_DETECT  == STD_ON) */
#if defined(CAN_E_RECEIVE_DATA_LOST)
      /* Report to DEM error*/
      Dem_ReportErrorStatus(CAN_E_RECEIVE_DATA_LOST, DEM_EVENT_STATUS_FAILED);
      /* References: CAN_DDD_ACT_048_ERR002 */
#endif /* defined(CAN_E_RECEIVE_DATA_LOST) */
    }
    else
    {
        /* No action required */
    }
#endif /* (defined(CAN_E_RECEIVE_DATA_LOST) ||
          (CAN_DEV_ERROR_DETECT == STD_ON)) */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
    {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
      /* Get status and data register address according to each buffer mode */
      LulFDSts =
        Can_GaaRegs[LucUnit].pFD->aaCFReg[LpHoh->ucBufferIndex].ulFDCSTS;
      LulIDRegValue =
        Can_GaaRegs[LucUnit].pFD->aaCFReg[LpHoh->ucBufferIndex].ulFDCFID;
      LulMessageDlc =
        Can_GaaRegs[LucUnit].pFD->aaCFReg[LpHoh->ucBufferIndex].ulFDCFPTR;
      LpDataReg =
        &Can_GaaRegs[LucUnit].pFD->aaCFReg[LpHoh->ucBufferIndex].aaFDCFDF[0];

      /* Convert DLC value to actual byte length */
      LulMessageDlc =
        (uint32)Can_GaaPayloadFromDLCTable[CAN_RSCAN_XXDLC_GET(LulMessageDlc)];
      /* Read registers as the smaller one of message DLC or buffer DLC */
      LulAvailableDlc =
        Can_GaaPayloadFromPLSTable[CAN_RSCAN_CFPLS_GET(LpHoh->ulXXCCRegValue)];
      if (LulAvailableDlc > LulMessageDlc)
      {
        LulAvailableDlc = LulMessageDlc;
      }
      else
      {
        /* nothing to do */
      }
#endif /* (CAN_RSCANFD_CONFIGURED == STD_ON) */
    }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    else
#endif
    {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
      LulFDSts = 0UL;
      LulIDRegValue =
        Can_GaaRegs[LucUnit].pCmn->aaCFReg[LpHoh->ucBufferIndex].ulCFID;
      LulMessageDlc =
        Can_GaaRegs[LucUnit].pCmn->aaCFReg[LpHoh->ucBufferIndex].ulCFPTR;
      LpDataReg =
        &Can_GaaRegs[LucUnit].pCmn->aaCFReg[LpHoh->ucBufferIndex].aaCFDF[0];
      LulMessageDlc = CAN_RSCAN_XXDLC_GET(LulMessageDlc);
      /* Truncate 1xxxb to 1000b */
      if ((uint32)CAN_STD_MAX_PAYLOAD < LulMessageDlc)
      {
        LulMessageDlc = CAN_STD_MAX_PAYLOAD;
      }
      else
      {
        /* Nothing to do */
      }
      LulAvailableDlc = LulMessageDlc;
#endif /* (CAN_RSCAN_CONFIGURED == STD_ON) */
    }

    /* Copy Data to memory from registers by 4 bytes */
    LulDlcWords = CAN_ALIGN_4(LulAvailableDlc) / (uint32)sizeof(uint32);
    for (LulWordIndex = 0UL;
       LulWordIndex < LulDlcWords; LulWordIndex++)
    {
      /* MISRA Violation: START Msg(2:0491)-1 */
      LaaCanSdu[LulWordIndex] = LpDataReg[LulWordIndex];
      /* END Msg(2:0491)-1 */
    }

    /* Increment FIFO pointer */
    CAN_WRITE_REG_ONLY(
      &Can_GaaRegs[LucUnit].pCmn->aaCFPCTR[LpHoh->ucBufferIndex],
      CAN_RSCAN_CFPC_NEXT)
    /* References: CAN_DDD_ACT_048_REG001 */

    /* Indicate to the upper layer */
    Can_RxIndicationCommonPart(LpHoh, LaaCanSdu, LulMessageDlc,
      LulIDRegValue, LulFDSts);
    LucCount++;
  } /* while (FIFO is not empty) */
}
#endif /* (CAN_RX_COMFIFO == STD_ON) */

/*******************************************************************************
** Function Name         : Can_RxIndicationRxBuffer
**
** Service ID            : Not Applicable
**
** Description           : This function reads a RxBuffer and
**                         notifies the upper layer about receive indication.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LpHoh   : Pointer to HRH
**                         LucUnit : Module number of RSCANn
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaRegs, Can_GaaPayloadFromDLCTable
**
** Functions Invoked     : Can_RxIndicationCommonPart(),Dem_ReportErrorStatus().
**
** Registers Used        : RMNDy,(CFD)RMIDq,(CFD)RMPTRq,(CFD)RMDFbq, FDRMSTSq.
*******************************************************************************/
#if (CAN_RX_BUFFER == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationRxBuffer(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  const uint8 LucUnit)
{
  /* References: CAN_DDD_ACT_049 */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE)LpDataReg;
  /* To optimize data copy operation, declare data array with uint32 */
  VAR(uint32, CAN_RSCAN_NOINIT_DATA) LaaCanSdu[CAN_LOCALBUFFER_SIZE_32];
  uint32 LulMessageDlc;
  uint32 LulAvailableDlc;
  uint32 LulFDSts;
  uint32 LulIDRegValue;
  uint32 LulWordIndex;
  uint32 LulDlcWords;
  uint32 LulRMNDIndex;
  uint32 LulRMNDMask;
  uint32 LulRetryCount;
  boolean LblReceiveOK;

  /* The retry operation is required for RxBuffer
     because it can be overwritten when new message arrives while reading */
  LblReceiveOK = CAN_FALSE;
  for (LulRetryCount = 0UL;
  ((CAN_RECBUFFER_RETRY_COUNT >= LulRetryCount) &&
    (CAN_FALSE == LblReceiveOK)); LulRetryCount++)
  {
    /* Clear RMNSq bit */
    LulRMNDIndex = CAN_RSCAN_RMND_GET_INDEX(LpHoh->ucBufferIndex);
    LulRMNDMask = CAN_RSCAN_RMND_GET_BITMASK(LpHoh->ucBufferIndex);
    CAN_WRITE_REG_ONLY(&Can_GaaRegs[LucUnit].pCmn->aaRMND[LulRMNDIndex],
      ~LulRMNDMask)
    /* References: CAN_DDD_ACT_049_REG001 */

    /* If RMNSq bit is still set, it means storage processing is ongoing */
    if (0UL == (Can_GaaRegs[LucUnit].pCmn->aaRMND[LulRMNDIndex] & LulRMNDMask))
    {
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        /* Get status and data register address according to each buffer mode */
        LulFDSts =
          Can_GaaRegs[LucUnit].pFD->aaHrhReg[LpHoh->ucBufferIndex].ulFDRMFDSTS;
        LulIDRegValue =
          Can_GaaRegs[LucUnit].pFD->aaHrhReg[LpHoh->ucBufferIndex].ulFDRMID;
        LulMessageDlc =
          Can_GaaRegs[LucUnit].pFD->aaHrhReg[LpHoh->ucBufferIndex].ulFDRMPTR;
        LpDataReg =
          &Can_GaaRegs[LucUnit].pFD->aaHrhReg[LpHoh->ucBufferIndex].aaFDRMDF[0];

        /* Convert DLC value to actual byte length */
        LulMessageDlc =
         (uint32)Can_GaaPayloadFromDLCTable[CAN_RSCAN_XXDLC_GET(LulMessageDlc)];
        /* When CanPayloadOverflowModeSelect is set as STORE,
           DLC value has the original length so it can be more than 20 bytes.
           Truncate it with 20 to avoid accessing the reserved register area. */
        if ((uint32)CAN_RSCAN_SINGLEBUFFER_LENGTH < LulMessageDlc)
        {
          LulAvailableDlc = CAN_RSCAN_SINGLEBUFFER_LENGTH;
        }
        else
        {
          LulAvailableDlc = LulMessageDlc;
        }
#endif /* (CAN_RSCANFD_CONFIGURED == STD_ON) */
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
        LulFDSts = 0UL;
        LulIDRegValue =
          Can_GaaRegs[LucUnit].pCmn->aaHrhReg[LpHoh->ucBufferIndex].ulRMID;
        LulMessageDlc =
          Can_GaaRegs[LucUnit].pCmn->aaHrhReg[LpHoh->ucBufferIndex].ulRMPTR;
        LpDataReg =
          &Can_GaaRegs[LucUnit].pCmn->aaHrhReg[LpHoh->ucBufferIndex].aaRMDF[0];
        LulMessageDlc = CAN_RSCAN_XXDLC_GET(LulMessageDlc);
        /* Truncate 1xxxb to 1000b */
        if ((uint32)CAN_STD_MAX_PAYLOAD < LulMessageDlc)
        {
          LulMessageDlc = CAN_STD_MAX_PAYLOAD;
        }
        else
        {
          /* Nothing to do */
        }
        LulAvailableDlc = LulMessageDlc;
#endif /* (CAN_RSCAN_CONFIGURED == STD_ON) */
      }

      /* Copy Data to memory from registers by 4 bytes */
      LulDlcWords = CAN_ALIGN_4(LulAvailableDlc) / (uint32)sizeof(uint32);
      for (LulWordIndex = 0UL;
         LulWordIndex < LulDlcWords; LulWordIndex++)
      {
        /* MISRA Violation: START Msg(2:0491)-1 */
        LaaCanSdu[LulWordIndex] = LpDataReg[LulWordIndex];
        /* END Msg(2:0491)-1 */
      }

      /* If RMNSq bit is set, it means new message arrived while reading buffer,
       the reading message was overwritten. */
      if (0UL !=
          (Can_GaaRegs[LucUnit].pCmn->aaRMND[LulRMNDIndex] & LulRMNDMask))
      {
#if defined(CAN_E_RECEIVE_DATA_LOST)
        /* Report to DEM error*/
        Dem_ReportErrorStatus(CAN_E_RECEIVE_DATA_LOST, DEM_EVENT_STATUS_FAILED);
        /* References: CAN_DDD_ACT_049_ERR001 */
#endif /* defined(CAN_E_RECEIVE_DATA_LOST) */
      }
      else
      {
        /* Indicate the upper layer */
        Can_RxIndicationCommonPart(
          LpHoh, LaaCanSdu, LulMessageDlc, LulIDRegValue, LulFDSts);
        /* Finish loop */
        LblReceiveOK = CAN_TRUE;
      }
    }
    else
    {
              /* The buffer is ongoing storage processing, retry */
    }
  }
}

#endif /* (CAN_RX_OBJECT == STD_ON) */

/*******************************************************************************
** Function Name         : Can_RxIndicationCommonPart
**
** Service ID            : Not Applicable
**
** Description           : This function notifies the upper layer of
**                         the received message.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LpHoh         : Pointer to HRH
**                         LaaCanSdu     : SDU buffer
**                         LulDlc        : Data Length
**                         LulIdRegValue : Receive Message ID
**                         LulFDSts      : Value of xFDSTS register
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : None
**
** Functions Invoked     : CanIf_RxIndication,
**                         CAN_LPDU_RECEIVE_CALLOUT_FUNCTION
**
** Registers Used        : None
*******************************************************************************/
#if (CAN_RX_OBJECT == STD_ON)
/* MISRA Violation: START Msg(2:3673)-10 */
/* QAC Warning: START Msg(3:3206)-2 */
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RxIndicationCommonPart(
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh,
  uint32 LaaCanSdu[], uint32 LulDlc,
  const uint32 LulIDRegValue, const uint32 LulFDSts)
/* END Msg(3:3206)-2 */
/* END Msg(2:3673)-10 */
{
  /* References: CAN_DDD_ACT_050 */
  Can_HwType LstMailbox;
  #if(CAN_AR_VERSION == CAN_AR_422_VERSION)
  PduInfoType LstPduInfo;
  #endif
#if defined(CAN_LPDU_RECEIVE_CALLOUT_FUNCTION)
  boolean LblCalloutOK;
#endif

  /* If this is CANFD message, set FD flag */
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
  if (0UL != (LulFDSts & CAN_RSCAN_XXFDF))
  {
    LstMailbox.CanId = CAN_FD_FRAME_FORMAT;
  }
  else
#endif
  {
    LstMailbox.CanId = 0U;
    if ((uint32)CAN_STD_MAX_PAYLOAD < LulDlc)
    {
      LulDlc = CAN_STD_MAX_PAYLOAD;
    }
    else
    {
      /* Nothing to do */
    }
  }

  /* Extracting extended can id and storing it */
  if (0UL != (LulIDRegValue & CAN_RSCAN_IDE))
  {
    /* MISRA Violation: START Msg(4:2986)-3 */
    LstMailbox.CanId = LstMailbox.CanId |
      (Can_IdType)(
      (LulIDRegValue & (uint32)CAN_ID_TYPE_IDMASK) |
        (uint32)CAN_EXTENDED_FORMAT);
    /* END Msg(4:2986)-3 */
  }
  else
  {
    /* MISRA Violation: START Msg(4:2986)-3 */
    LstMailbox.CanId = LstMailbox.CanId |
      (Can_IdType)(LulIDRegValue & (uint32)CAN_ID_TYPE_IDMASK);
    /* END Msg(4:2986)-3 */
  }

#if defined(CAN_LPDU_RECEIVE_CALLOUT_FUNCTION)
  /* This is the second redundant path function provided for legacy
  * safety relevant ECUs */
  /* CanObjectId is uint16 but 1st parameter of call-out function is uint8. */
  LblCalloutOK = CAN_LPDU_RECEIVE_CALLOUT_FUNCTION((uint8)LpHoh->usHohId,
    LstMailbox.CanId, (uint8)LulDlc, (const uint8*)LaaCanSdu);
  if (CAN_FALSE == LblCalloutOK)
  {
    /* If callout function returns false, nothing to do */
  }
  else
#endif
  {
    #if(CAN_AR_VERSION == CAN_AR_422_VERSION)
    LstMailbox.Hoh = (Can_HwHandleType)LpHoh->usHohId;
    LstMailbox.ControllerId =
      (uint8)(LpHoh->ucController + CAN_CONTROLLER_OFFSET);
    LstPduInfo.SduDataPtr = (uint8*)LaaCanSdu;
    LstPduInfo.SduLength = (PduLengthType)LulDlc;
    /* Invoke CanIf_RxIndication call-back function to give
    receive indication */
    CanIf_RxIndication(&LstMailbox, &LstPduInfo);
    #else
    /* Invoke CanIf_RxIndication call-back function to give
    receive indication */
    CanIf_RxIndication((Can_HwHandleType)LpHoh->usHohId, LstMailbox.CanId,
      (uint8)LulDlc, (const uint8*) &LaaCanSdu[(uint32)CAN_ZERO]);
    #endif
  } /* (CAN_FALSE == LbCalloutOK) */
}
#endif /* (CAN_RX_OBJECT == STD_ON) */


#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-6 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-6 */
/* END Msg(2:0832)-3 */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
