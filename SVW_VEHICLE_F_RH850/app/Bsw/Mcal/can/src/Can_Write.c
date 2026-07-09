/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_Write.c                                                 */
/* Version      = V1.0.4                                                      */
/* Date         = 02-Oct-2023                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2023 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Transmission of L-PDU(s).                                                  */
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
 *         13-Jul-2019  : Change write verify and RAM mirror to INLINE function
 *         26-Jul-2019  : Add preprocessor for CAN_WRITE_VERIFY_RUNTIME function
 *         01-Aug-2019  : Improve write verify by using Can_VerifyWriteReg
 *                        function and macro CAN_WRITE_VERIFY_RUNTIME.
 *                        update (4:0491), (4:0310), (2:3416).
 *         11-Oct-2019  : Implement Mutex in Can_Write.
 * V1.0.1: 16-Mar-2021  : As per ARDAABD-2992, Update Global Variable Used and
 *                        register used of all functions at function's banner.
 *                        As per ARDAABD-2517: Update Function Invoked of
 *                        functions at function's banner.
 *         03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                        Add QAC message (2:0857), (4:5087).
 *         03-Jun-2021  : Added QAC Warning messages.
 * V1.0.2: 14-Sep-2021  : As per ARDAABD-7594, correct the declaration of
 *                        LulCTR_RegValue in Can_Write.
 * V1.0.3: 14-Dec-2021  : Added Comment QAC messages.
 * V1.0.4: 02-Oct-2023  : As per ARDAABD-9685, Remove
 *                        Can_GaaRegs[LucUnit].pCmn->aaTMSTS[LulQueueWindow]
 *                        for Tx queue in Can_GetTxRegPointers.
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* CAN module header file */
#include "Can.h"
#include "Can_GeneralTypes.h"
#include "Can_LTTypes.h"
#include "Can_PBTypes.h"
/* MISRA Violation: START Msg(2:0857)-6 */
#include "Can_RegWrite.h"
/* END Msg(2:0857)-6 */
/* Included for RAM variable declarations */
/* MISRA Violation: START Msg(2:0857)-6 */
#include "Can_Ram.h"
/* END Msg(2:0857)-6 */
#include "Can_MainServ.h"
#if (CAN_DEV_ERROR_DETECT == STD_ON)
/* Included for the declaration of Det_ReportError() */
#include "Det.h"
#endif
/* CAN Interface call-back Header File */
/* MISRA Violation: START Msg(2:0857)-6 */
#include "CanIf_Cbk.h"
/* END Msg(2:0857)-6 */
/*
 * OS Header File to have the prototype of GetCounterValue()
 *for getting current tick of OS
 */
 /* MISRA Violation: START Msg(2:0857)-6 */
#include "Os.h"
/* END Msg(2:0857)-6 */
#if (CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
/* Included for the declaration of the critical section protection functions */
#include "SchM_Can.h"
#endif

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_WRITE_C_AR_RELEASE_MAJOR_VERSION    CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_WRITE_C_AR_RELEASE_MINOR_VERSION    CAN_AR_RELEASE_MINOR_VERSION
#define CAN_WRITE_C_AR_RELEASE_REVISION_VERSION CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_WRITE_C_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_WRITE_C_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_WRITE_C_AR_RELEASE_MAJOR_VERSION != \
        CAN_AR_RELEASE_MAJOR_VERSION_VALUE)
  #error "Can_Write.c : Mismatch in Release Major Version"
#endif
#if (CAN_WRITE_C_AR_RELEASE_MINOR_VERSION != \
        CAN_AR_RELEASE_MINOR_VERSION_VALUE)
  #error "Can_Write.c : Mismatch in Release Minor Version"
#endif
#if(CAN_WRITE_C_AR_RELEASE_REVISION_VERSION != \
        CAN_AR_RELEASE_REVISION_VERSION_VALUE)
  #error "Can_Write.c : Mismatch in Release Revision Version"
#endif

#if (CAN_WRITE_C_SW_MAJOR_VERSION != CAN_SW_MAJOR_VERSION_VALUE)
  #error "Can_Write.c : Mismatch in Software Major Version"
#endif
#if (CAN_WRITE_C_SW_MINOR_VERSION != CAN_SW_MINOR_VERSION_VALUE)
  #error "Can_Write.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0491) Array subscripting applied to an object of        */
/*                 pointer type.                                              */
/* Rule          : MISRA-C:2004 Rule 17.4                                     */
/* Justification : This is necessary to support configuration.                */
/*                 The actuall array can't be decided statically.             */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0491)-1 and                           */
/*                 END Msg(2:0491)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0492) Array subscripting applied to a function          */
/*                 parameter declared as a pointer.                           */
/* Rule          : MISRA-C:2004 Rule-17.4                                     */
/* Justification : This is necessary to handle pointers passed by user code.  */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0492)-2 and                           */
/*                 END Msg(2:0492)-2 tags in the code.                        */
/******************************************************************************/

/* 3. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:2982) This assignment is redundant. The value of this   */
/*                 object is never used before being modified.                */
/* Rule          : MISRA-C:2004 Rule-21.1                                     */
/* Justification : This variable is necessary to initialized before using.    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:2982)-3 and                           */
/*                 END Msg(2:2982)-3 tags in the code.                        */
/******************************************************************************/

/* 4. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:1055) [C99] The keyword 'inline' has been used.         */
/* Rule          : MISRA-C:2004 Rule 1.1                                      */
/* Justification : This message is allowed in F1x to improve software metric. */
/*                                                                            */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:1055)-4 and                           */
/*                 END Msg(2:1055)-4 tags in the code.                        */
/******************************************************************************/

/* 5. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3458) Macro defines a braced code statement block.      */
/* Rule          : MISRA-C:2004 Rule 19.4                                     */
/* Justification : Since the macros are implemented as function macros braces */
/*                 cannot be avoided.                                         */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for  MISRA Violation: START Msg(2:3458)-5 and         */
/*                 END Msg(2:3458)-5 tags in the code.                        */
/******************************************************************************/

/* 6. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0857) [L] Number of macro definitions exceeds 1024 -    */
/*                 program does not conform strictly to ISO:C90.              */
/*                 object is never used before being modified.                */
/* Rule          : MISRA-C:2004 Rule-1.1                                      */
/* Justification : This is accepted as of macros are used for better          */
/*                 readability of code and/or to support configuration        */
/*                 flexibility                                                */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0857)-6 and                           */
/*                 END Msg(2:0857)-6 tags in the code.                        */
/******************************************************************************/

/* 7. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include memmap */
/*                 is following AUTOSAR rule.                                 */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:5087)-7 and                           */
/*                 END Msg(4:5087)-7 tags in the code.                        */
/******************************************************************************/

/* 8. MISRA C RULE VIOLATION:                                                 */
/* Message       : (1:1503) The function '%1s' is defined but is not used     */
/*                 within this project.                                       */
/* Rule          : MISRA-C:2004 Rule-14.1                                     */
/* Justification : This is accepted, due to the module's API                  */
/*                 is exported for user's usage.                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(1:1503)-8 and                           */
/*                 END Msg(1:1503)-8 tags in the code.                        */
/******************************************************************************/

/******************************************************************************/
/**                      QAC warning                                         **/
/******************************************************************************/

/* 1. QAC warning:                                                            */
/* Message       : (2:3227) The parameter '%s' is never modified and          */
/*                 so it could be declared with the 'const' qualifier.        */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3227           */
/*                 REFERENCE - ISO:C90-6.5.3 Type Qualifiers                  */
/* Justification : To follow AUTOSAR and/or Renesas requirement for this API, */
/*                 the const shall not be used.                               */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:3227)-1 and                           */
/*                 END Msg(2:3227)-1 tags in the code.                        */
/******************************************************************************/

/* 2. QAC Warning:                                                            */
/* Message       : (3:3416) Logical operation performed on expression with    */
/*                 possible side effects.                                     */
/* Justification : Logical operation accesses volatile object which is a      */
/*                 register access and timeout counter. All register addresses*/
/*                 and timeout counter are generated with volatile qualifier. */
/*                 There is no impact on the functionality                    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(3:3416)-2 and END Msg(3:3416)-2         */
/*                 tags in the code.                                          */
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
/* Message       : (2:3892) The result of this cast is implicitly converted to*/
/*                 another type.                                              */
/* Justification : This is used for write verification of a particular        */
/*                 register so even if it is unsigned or signed type it has no*/
/*                 impact.                                                    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any safety impact.                              */
/* Reference     : Look for START Msg(2:3892)-4 and                           */
/*                 END Msg(2:3892)-4 tags in the code.                        */
/******************************************************************************/

/* 5. QAC warning:                                                            */
/* Message       : (2:3457) Macro defines a braced initializer.               */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3457           */
/* Justification : Since the macros are implemented as function macros braces */
/*                 cannot be avoided.                                         */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:3457)-5 and                           */
/*                 END Msg(2:3457)-5 tags in the code.                        */
/******************************************************************************/

/******************************************************************************/
/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/
/* Byte offsets of SDU */
#define CAN_RSCAN_0_BYTE 0UL
#define CAN_RSCAN_1_BYTE 1UL
#define CAN_RSCAN_2_BYTE 2UL
#define CAN_RSCAN_3_BYTE 3UL
/* Structure to contain tx relevant registers */
typedef struct
{
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
  /* Point CFDFDCSTS or CFDTMFDCTR */
  P2VAR(volatile uint32, TYPEDEF, REGSPACE) pCTR;
#endif
  /* Point (CFD)CFID or (CFD)TMID */
  P2VAR(volatile uint32, TYPEDEF, REGSPACE) pID;
  /* Point (CFD)CFPTR or (CFD)TMPTR */
  P2VAR(volatile uint32, TYPEDEF, REGSPACE) pPTR;
  /* Point (CFD)CFDF or (CFD)TMDF */
  P2VAR(volatile uint32, TYPEDEF, REGSPACE) pDF;
  /* Point (CFD)CFPCTR or (CFD)TXQPCTR or (CFD)TMC */
  P2VAR(volatile uint8, TYPEDEF, REGSPACE) pTrig;
  /* When this value is written to pTrig, transmission is started */
  uint8 ucTrigValue;
} Can_TxRegSetType;
/*******************************************************************************
**                      Inline Function Definitions                           **
*******************************************************************************/

/*******************************************************************************
** Function Name         : Can_VerifyWriteReg
**
** Description           : This function is to check write verify.
**
** Input Parameters      : LpWriteRegAddr, LulRegWriteValue, LulMaskValue,
**                         LucApiId
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Pre-conditions        : None
**
** Functions invoked     : None
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-7 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-7 */
/* END Msg(2:0832)-3 */
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
#if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME)
/* MISRA Violation: START Msg(2:1055)-4 */
static INLINE FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_VerifyWriteReg(
  CONSTP2CONST(volatile uint32, AUTOMATIC, REGSPACE) LpWriteRegAddr,
  CONST(uint32, AUTOMATIC) LulRegWriteValue,
  CONST(uint32, AUTOMATIC) LulMaskValue,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(2:1055)-4 */
{
  /* References: CAN_DDD_ACT_070 */
  CAN_VERIFY_WRITE_REG(LpWriteRegAddr, LulRegWriteValue, LulMaskValue, LucApiId)
}
#endif /* End of #if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME) */

#if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME)
  /* MISRA Violation: START Msg(2:3458)-5 */
  #define CAN_WRITE_VERIFY_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
  }
  /* END Msg(2:3458)-5 */
#else
  /* QAC Warning: START Msg(2:3457)-5 */
  #define CAN_WRITE_VERIFY_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
  }
  /* END Msg(2:3457)-5 */
#endif /* End of #if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME) */
#endif
/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
static FUNC(Can_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_GetTxRegPointers(
  CONSTP2VAR(Can_TxRegSetType, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpRegSet,
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh);

static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_WriteDataReg(
  CONSTP2CONST(uint8, AUTOMATIC, CAN_RSCAN_APPL_CONST) LpSrc,
  CONSTP2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpDF,
  const uint32 LulSrcLength, const uint32 LulDestLength, const uint8 LucPadding
);
#endif
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-7 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-7 */
/* END Msg(2:0832)-3 */

/*******************************************************************************
** Function Name         : Can_Write
**
** Service ID            : 0x06
**
** Description           : This function writes the L-PDU in an appropriate
**                         buffer inside the CAN Controller hardware. The CAN
**                         Driver stores the swPduhandle that is given inside
**                         parameter PduInfo until it calls the
**                         CanIf_TxConfirmation.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : HTH     : HOH ID
**                         PduInfo : Pointer to PDU information structure
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : Can_ReturnType (CAN_OK / CAN_NOT_OK / CAN_BUSY)
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GblInitialized, Can_GaaCtrlState,
**                         Can_GaaHwAccessFlag, Can_GaaDLCFromPayloadTable,
**                         Can_GaaPayloadFromDLCTable, Can_GaaRegs,
**                         Can_GpHohConfig, Can_GpPBController,
**                         Can_GpPCController
**
** Functions Invoked     : Det_ReportError,
**                         Can_GetTxRegPointers, Can_WriteDataReg,
**                         CAN_ENTER_CRITICAL_SECTION, CAN_EXIT_CRITICAL_SECTION
**                         CanIf_TriggerTransmit
**
** Registers Used        : (CFD)CFSTSk, (CFD)CFFDCST, (CFD)CFIDk, (CFD)CFPTRk,
**                         (CFD)CFDFd_k,(CFD)TXQTSTm,(CFD)TXQPCTRm, (CFD)TMSTSp,
**                         (CFD)TMFDCTRp,(CFD)TMIDp, (CFD)TMPTRp, (CFD)TMDFbp
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-7 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-7 */
/* END Msg(2:0832)-3 */
/* MISRA Violation: START Msg(1:1503)-8 */
/* QAC Warning: START Msg(2:3227)-1 */
FUNC(Can_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_Write(Can_HwHandleType Hth,
  P2CONST(Can_PduType, AUTOMATIC, CAN_RSCAN_APPL_CONST) PduInfo)
/* END Msg(2:3227)-1 */
/* END Msg(1:1503)-8 */
{
  /* References: CAN_DDD_ACT_006 */
  Can_ReturnType LenReturnValue;
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
#if (CAN_TRIGGER_TRANSMIT_FUNCTION == STD_ON)
  PduInfoType LstTTPduInfo;
  uint32 LaaTTSduData[CAN_LOCALBUFFER_SIZE_32];
#endif
  P2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_PRIVATE_CONST)LpHoh;
  Can_TxRegSetType LstTxRegSet;
  uint8 LucSduLength;
  P2VAR(uint8, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpSduPtr;
  uint32 LulDLC;
  uint32 LulActualLength;
#if (CAN_CANV2_CONFIGURED != STD_ON)
  /* Variable to store pCTR value for write verify */
  uint32 LulCTR_RegValue;
#endif
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
  uint8 LucController;
#endif
  boolean LblMutexAcquired;
#endif /* ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
    (CAN_TX_QUEUE == STD_ON)) */

  /* MISRA Violation: START Msg(2:2982)-3 */
  LenReturnValue = CAN_NOT_OK;
  /* END Msg(2:2982)-3 */
  /**************************************************************************/
  /* DET Checking                                                           */
  /**************************************************************************/
#if  (CAN_DEV_ERROR_DETECT == STD_ON)
  /* QAC Warning: START Msg(3:3416)-2 */
  /* Report to DET, if module is not initialized */
  if (CAN_FALSE == Can_GblInitialized)
  /* END Msg(3:3416)-2 */
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID, CAN_WRITE_SID,
      CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_006_ERR001 */
    LenReturnValue = CAN_NOT_OK;
  }
  /* Report to DET, if HTH is out of range */
  /* MISRA Violation: START Msg(2:0491)-1 */
  else if ((CAN_NO_OF_HOHS <= Hth) ||
    (CAN_HOH_HTH != Can_GpHohConfig[Hth].enHoh))
  /* END Msg(2:0491)-1 */
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID, CAN_WRITE_SID,
      CAN_E_PARAM_HANDLE);
    /* References: CAN_DDD_ACT_006_ERR002 */
    LenReturnValue = CAN_NOT_OK;
  }
  /* Report to DET, if PduInfo or SduPtr is  NULL */
  else if ((NULL_PTR == PduInfo) || ((NULL_PTR == PduInfo->sdu)
#if (CAN_TRIGGER_TRANSMIT_FUNCTION == STD_ON)
    /* MISRA Violation: START Msg(2:0491)-1 */
    && (CAN_FALSE == Can_GpHohConfig[Hth].blTriggerTransmitEnable)
    /* END Msg(2:0491)-1 */
#endif
    ))
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID, CAN_WRITE_SID,
      CAN_E_PARAM_POINTER);
    /* References: CAN_DDD_ACT_006_ERR003 */
    LenReturnValue = CAN_NOT_OK;
  }
  /* MISRA Violation: START Msg(2:0491)-1 */
  /* Check payload length */
  else if ((Can_GpHohConfig[Hth].ucTMDLC < PduInfo->length)
  /* END Msg(2:0491)-1 */
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
    /* MISRA Violation: START Msg(2:0491)-1 */
    ||
    (
    (CAN_STD_MAX_PAYLOAD < PduInfo->length) &&
      (
      (0UL == (PduInfo->id & CAN_FD_FRAME_FORMAT)) ||
        (CAN_FALSE ==
          Can_GpPBController[
          Can_GpHohConfig[Hth].ucController].pBaudrateConfig[Can_GaaCtrlState[
          Can_GpHohConfig[Hth].ucController].ulBaudrateIndex].blFdConfigured)
    )
      )
    /* END Msg(2:0491)-1 */
#endif
    )
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID, CAN_WRITE_SID,
      CAN_E_PARAM_DLC);
    /* References: CAN_DDD_ACT_006_ERR004 */
    LenReturnValue = CAN_NOT_OK;
  }
  else
#endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
    /**************************************************************************/
    /* Prepare data                                                           */
    /**************************************************************************/
    LblMutexAcquired = CAN_FALSE;
    /* MISRA Violation: START Msg(2:0491)-1 */
    LpHoh = &Can_GpHohConfig[Hth];
    /* END Msg(2:0491)-1 */
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
    /* Getting the value of ucController Id*/
    LucController = LpHoh->ucController;
#endif

    /* Critical section is required in case of
        the re-entrant call on same HTH */
    CAN_ENTER_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
    /* References: CAN_DDD_ACT_006_CRT001 */
    /* Check whether global flag for other hardware is already set or not */
    if (CAN_TRUE != Can_GaaHwAccessFlag[LpHoh->usHohId])
    {
      /* Set the global flag which indicates HOH is being accessed to true */
      Can_GaaHwAccessFlag[LpHoh->usHohId] = CAN_TRUE;
      /* References: CAN_DDD_ACT_006_GBL001 */
      LblMutexAcquired = CAN_TRUE;
    }
    else
    {
      /* No Action Required */
    }

    CAN_EXIT_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
    /* References: CAN_DDD_ACT_006_CRT002 */

    if (CAN_TRUE == LblMutexAcquired)
    {
      /************************************************************************/
      /* Check whether device is busy and get address of registers            */
      /************************************************************************/
      LenReturnValue = Can_GetTxRegPointers(&LstTxRegSet, LpHoh);

      /***********************************************************************/
      /* Trigger Transmission                                                */
      /***********************************************************************/
      LucSduLength = PduInfo->length;
      LpSduPtr = PduInfo->sdu;
#if (CAN_TRIGGER_TRANSMIT_FUNCTION == STD_ON)
      /* If SDU in the parameter is NULL, get SDU from CanIf */
      if ((CAN_OK == LenReturnValue) && (NULL_PTR == PduInfo->sdu) &&
        (CAN_TRUE == LpHoh->blTriggerTransmitEnable))
      {
        /* QAC Warning: START Msg(2:3892)-4 */
        LstTTPduInfo.SduDataPtr =
          (P2VAR(uint8, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA))LaaTTSduData;
        LstTTPduInfo.SduLength =
          (uint8)(CAN_LOCALBUFFER_SIZE_32 * sizeof(uint32));
        /* END Msg(2:3892)-4 */
        /* QAC Warning: START Msg(3:3416)-2 */
        if (E_OK == CanIf_TriggerTransmit(PduInfo->swPduHandle, &LstTTPduInfo))
        /* END Msg(3:3416)-2 */
        {
          /* Use LstTTPduInfo instead of the original parameter */
          LucSduLength = (uint8)LstTTPduInfo.SduLength;
          LpSduPtr = LstTTPduInfo.SduDataPtr;
        }
        else
        {
          LenReturnValue = CAN_NOT_OK;
        }
      }
      else
      {
        /* Nothing to do */
      }
#endif /* (CAN_TRIGGER_TRANSMIT_FUNCTION == STD_ON) */

      /************************************************************************/
      /* Send data                                                            */
      /************************************************************************/
      if (CAN_OK == LenReturnValue)
      {
        /* If EXTENDED ID format, set IDE bit */
        if (0UL != (PduInfo->id & CAN_EXTENDED_FORMAT))
        {
          CAN_WRITE_VERIFY_RUNTIME(
            LstTxRegSet.pID,
            ((uint32)PduInfo->id & CAN_ID_TYPE_IDMASK) |
                            CAN_RSCAN_THLEN | CAN_RSCAN_IDE,
            CAN_COMMON_REG_MASK,
            CAN_WRITE_SID)
          /* References: CAN_DDD_ACT_006_REG001 */
        }
        else
        {
          CAN_WRITE_VERIFY_RUNTIME(
            LstTxRegSet.pID,
            ((uint32)PduInfo->id & CAN_ID_TYPE_IDMASK) | CAN_RSCAN_THLEN,
            CAN_COMMON_REG_MASK,
            CAN_WRITE_SID)
          /* References: CAN_DDD_ACT_006_REG002 */
        }

#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        if (0UL != (PduInfo->id & CAN_FD_FRAME_FORMAT))
        {
          /* MISRA Violation: START Msg(2:0491)-1 */
          if (CAN_TRUE == Can_GpPBController[LucController].pBaudrateConfig
            [Can_GaaCtrlState[LucController].ulBaudrateIndex].blBRS)
          /* END Msg(2:0491)-1 */
          {
            CAN_WRITE_VERIFY_RUNTIME(
              LstTxRegSet.pCTR,
              CAN_RSCAN_XXFDF | CAN_RSCAN_XXBRS,
              CAN_COMMON_REG_MASK,
              CAN_WRITE_SID)
            /* References: CAN_DDD_ACT_006_REG004 */
          }
          else
          {
            CAN_WRITE_VERIFY_RUNTIME(
              LstTxRegSet.pCTR,
              CAN_RSCAN_XXFDF,
              CAN_COMMON_REG_MASK,
              CAN_WRITE_SID)
            /* References: CAN_DDD_ACT_006_REG003 */
          }
          /* Convert payload length (0-64byte) to DLC value (0x0-0xF) */
          LulDLC = Can_GaaDLCFromPayloadTable[LucSduLength];
          LulActualLength = Can_GaaPayloadFromDLCTable[LulDLC];
        }
        else
#endif /* (CAN_RSCANFD_CONFIGURED == STD_ON) */
        {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
#if (CAN_RSCAN_CONFIGURED == STD_ON)
          /* MISRA Violation: START Msg(2:0491)-1 */
          if (CAN_MACRO_RSCAN ==
            Can_GaaRegs[Can_GpPCController[
            LpHoh->ucController].ucUnitIndex].enMacroType)
          /* END Msg(2:0491)-1 */
          {
            /* No pCTR for RSCAN */
          }
          else
#endif
          {
            CAN_WRITE_VERIFY_RUNTIME(
              LstTxRegSet.pCTR,
              0UL,
              CAN_COMMON_REG_MASK,
              CAN_WRITE_SID)
            /* References: CAN_DDD_ACT_006_REG005 */
          }
#endif
          /* When classical CAN, DLC is as is */
          LulDLC = LucSduLength;
          LulActualLength = LulDLC;
      }
#if (CAN_CANV2_CONFIGURED != STD_ON)
        LulCTR_RegValue = *LstTxRegSet.pCTR |
                            CAN_RSCAN_XXPTR(PduInfo->swPduHandle);
        CAN_WRITE_VERIFY_RUNTIME(
          LstTxRegSet.pCTR,
          LulCTR_RegValue,
          CAN_COMMON_REG_MASK,
          CAN_WRITE_SID)
        /* References: CAN_DDD_ACT_006_REG006 */
        /* Set PTR reg value, including DLC and PduHandle as label data */
        CAN_WRITE_VERIFY_RUNTIME(
          LstTxRegSet.pPTR,
          CAN_RSCAN_XXDLC(LulDLC),
          CAN_COMMON_REG_MASK,
          CAN_WRITE_SID)
        /* References: CAN_DDD_ACT_006_REG007 */
#else
        /* Set PTR reg value, including DLC and PduHandle as label data */
        CAN_WRITE_VERIFY_RUNTIME(
          LstTxRegSet.pPTR,
          CAN_RSCAN_XXDLC(LulDLC) | CAN_RSCAN_XXPTR(PduInfo->swPduHandle),
          CAN_COMMON_REG_MASK,
          CAN_WRITE_SID)
        /* References: CAN_DDD_ACT_006_REG008 */
#endif
        /* Copy payload data to data register */
        Can_WriteDataReg(LpSduPtr, LstTxRegSet.pDF,
          (uint32)LucSduLength, LulActualLength,
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
          LpHoh->ucPaddingValue
#else
          0x00U
#endif
        );

        /* Start transmission */
        CAN_WRITE_REG_ONLY(LstTxRegSet.pTrig, LstTxRegSet.ucTrigValue)
        /* References: CAN_DDD_ACT_006_REG009 */
      }
      else /* if (CAN_OK == LenReturnValue) */
      {
        /* Nothing to do */
      }

      CAN_ENTER_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
      /* References: CAN_DDD_ACT_006_CRT003 */
      /* Release this HTH */
      /* Clear the global flag which indicates HOH is being accessed to false */
      Can_GaaHwAccessFlag[LpHoh->usHohId] = CAN_FALSE;
      /* References: CAN_DDD_ACT_006_GBL002 */
      CAN_EXIT_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
      /* References: CAN_DDD_ACT_006_CRT004 */
    }
    else /* if (CAN_TRUE == LblMutexAcquired) */
    {
      LenReturnValue = CAN_BUSY;
    }
#endif /* ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
    (CAN_TX_QUEUE == STD_ON)) */
  } /* if (DET check) */

  return(LenReturnValue);
}
#define CAN_RSCAN_STOP_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-7 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-7 */
/* END Msg(2:0832)-3 */

#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-7 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-7 */
/* END Msg(2:0832)-3 */
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
/*******************************************************************************
** Function Name         : Can_GetTxRegPointers
**
** Service ID            : Not Applicable
**
** Description           : This function checks whether a target buffer is BUSY
**                         and retrieves the address of tx relevant registers
**                         according to the memory mode and the buffer index.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LpHoh    : Pointer to an HTH configuration
**                                    information
**
** InOut Parameters      : None
**
** Output Parameters     : LpRegSet : Pointer to a structure to store addresses
**
** Return parameter      : Can_ReturnType (CAN_OK / CAN_BUSY)
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaRegs, Can_GpPCController
**
** Functions Invoked     : None
**
** Registers Used        : (CFD)CFSTSk, (CFD)CFFDCST, (CFD)CFIDk, (CFD)CFPTRk,
**                         (CFD)CFDFd_k,(CFD)TXQTSTm,(CFD)TXQPCTRm, (CFD)TMSTSp,
**                         (CFD)TMFDCTRp, (CFD)TMIDp, (CFD)TMPTRp, (CFD)TMDFbp
*******************************************************************************/
static FUNC(Can_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_GetTxRegPointers(
  CONSTP2VAR(Can_TxRegSetType, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpRegSet,
  CONSTP2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)LpHoh)
{
  /* References: CAN_DDD_ACT_053 */
  Can_ReturnType LenRetValue;
  uint8 LucUnit;
  uint32 LulBufIdx;
#if (CAN_TX_QUEUE == STD_ON)
  uint32 LulQueueWindow;
#endif

  LenRetValue = CAN_OK;
  LulBufIdx = LpHoh->ucBufferIndex;
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucUnit = Can_GpPCController[LpHoh->ucController].ucUnitIndex;
  /* END Msg(2:0491)-1 */
#if (CAN_TX_COMFIFO == STD_ON)
  if (CAN_BUFFERTYPE_TXRXFIFO == LpHoh->enBufferType)
  {
    /* If FIFO is full, return CAN_BUSY */
    if (0UL !=
      (Can_GaaRegs[LucUnit].pCmn->aaCFSTS[LulBufIdx] & CAN_RSCAN_CFFLL))
    {
      LenRetValue = CAN_BUSY;
    }
    else
    {
      /* Get address of transmit trigger register.
      To unify trigger operation with other buffer types,
      cast pointer to uint8*. CFPCTR allows 8, 16, 32bit access. */
      LpRegSet->pTrig =
        (P2VAR(volatile uint8, AUTOMATIC, REGSPACE))
        &Can_GaaRegs[LucUnit].pCmn->aaCFPCTR[LulBufIdx];
      CAN_WRITE_REG_ONLY(&LpRegSet->ucTrigValue, (uint8)CAN_RSCAN_CFPC_NEXT)
      /* References: CAN_DDD_ACT_053_REG025 */

#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        LpRegSet->pCTR = &Can_GaaRegs[LucUnit].pFD->aaCFReg[LulBufIdx].ulFDCSTS;
        /* References: CAN_DDD_ACT_053_REG004 */
        LpRegSet->pID = &Can_GaaRegs[LucUnit].pFD->aaCFReg[LulBufIdx].ulFDCFID;
        /* References: CAN_DDD_ACT_053_REG005 */
        LpRegSet->pPTR =
          &Can_GaaRegs[LucUnit].pFD->aaCFReg[LulBufIdx].ulFDCFPTR;
        /* References: CAN_DDD_ACT_053_REG006 */
        LpRegSet->pDF =
          &Can_GaaRegs[LucUnit].pFD->aaCFReg[LulBufIdx].aaFDCFDF[0];
        /* References: CAN_DDD_ACT_053_REG007 */
#endif
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
        LpRegSet->pID = &Can_GaaRegs[LucUnit].pCmn->aaCFReg[LulBufIdx].ulCFID;
        /* References: CAN_DDD_ACT_053_REG001 */
        LpRegSet->pPTR = &Can_GaaRegs[LucUnit].pCmn->aaCFReg[LulBufIdx].ulCFPTR;
        /* References: CAN_DDD_ACT_053_REG002 */
        LpRegSet->pDF =
          &Can_GaaRegs[LucUnit].pCmn->aaCFReg[LulBufIdx].aaCFDF[0];
        /* References: CAN_DDD_ACT_053_REG003 */
#endif
      }
    }
  }
  else
#endif /* (CAN_TX_COMFIFO == STD_ON) */
#if (CAN_TX_QUEUE == STD_ON)
  if (CAN_BUFFERTYPE_TXQUEUE == LpHoh->enBufferType)
  {
    /* If Queue is full, return CAN_BUSY */
    if (0UL !=
      (Can_GaaRegs[LucUnit].pCmn->aaTXQSTS[LulBufIdx] & CAN_RSCAN_TXQFLL))
    {
      LenRetValue = CAN_BUSY;
    }
    else
    {
      /* Get index of tx buffer to access tx queue */
      LulQueueWindow = CAN_RSCAN_TXQUEUEWINDOW(LulBufIdx);
      /* Get address of transmit trigger register.
      To unify trigger operation with other buffer types,
      cast pointer to uint8*. CFPCTR allows 8, 16, 32bit access. */
      LpRegSet->pTrig =
        (P2VAR(volatile uint8, AUTOMATIC, REGSPACE))
        &Can_GaaRegs[LucUnit].pCmn->aaTXQPCTR[LulBufIdx];
      CAN_WRITE_REG_ONLY(&LpRegSet->ucTrigValue, (uint8)CAN_RSCAN_TXQPC_NEXT)
      /* References: CAN_DDD_ACT_053_REG008 */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        LpRegSet->pCTR =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulQueueWindow].ulFDTMFDCTR;
        /* References: CAN_DDD_ACT_053_REG011 */
        LpRegSet->pID =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulQueueWindow].ulFDTMID;
        /* References: CAN_DDD_ACT_053_REG013 */
        LpRegSet->pPTR =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulQueueWindow].ulFDTMPTR;
        /* References: CAN_DDD_ACT_053_REG015 */
        LpRegSet->pDF =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulQueueWindow].aaFDTMDF[0];
        /* References: CAN_DDD_ACT_053_REG016 */
#endif
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
        LpRegSet->pID =
          &Can_GaaRegs[LucUnit].pCmn->aaHthReg[LulQueueWindow].ulTMID;
        /* References: CAN_DDD_ACT_053_REG010 */
        LpRegSet->pPTR =
          &Can_GaaRegs[LucUnit].pCmn->aaHthReg[LulQueueWindow].ulTMPTR;
        /* References: CAN_DDD_ACT_053_REG012 */
        LpRegSet->pDF =
          &Can_GaaRegs[LucUnit].pCmn->aaHthReg[LulQueueWindow].aaTMDF[0];
        /* References: CAN_DDD_ACT_053_REG014 */
#endif
      }
    }
  }
  else
#endif /* (CAN_TX_QUEUE == STD_ON) */
  {
#if (CAN_TX_BUFFER == STD_ON)
    /* If TxBuffer is on-going, return CAN_BUSY */
    if (0U !=
      (Can_GaaRegs[LucUnit].pCmn->aaTMSTS[LulBufIdx] & CAN_RSCAN_TMTRM))
    {
      LenRetValue = CAN_BUSY;
    }
    else
    {
      /* Get address of transmit trigger register */
      LpRegSet->pTrig = &Can_GaaRegs[LucUnit].pCmn->aaTMC[LulBufIdx];
      CAN_WRITE_REG_ONLY(&LpRegSet->ucTrigValue, CAN_RSCAN_TMTR)
      /* References: CAN_DDD_ACT_053_REG017 */
      /* Clearing the transmission status register */
      Can_GaaRegs[LucUnit].pCmn->aaTMSTS[LulBufIdx] = 0U;
      /* References: CAN_DDD_ACT_053_REG026 */

#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        LpRegSet->pCTR =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulBufIdx].ulFDTMFDCTR;
        /* References: CAN_DDD_ACT_053_REG018 */
        LpRegSet->pID =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulBufIdx].ulFDTMID;
        /* References: CAN_DDD_ACT_053_REG020 */
        LpRegSet->pPTR =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulBufIdx].ulFDTMPTR;
        /* References: CAN_DDD_ACT_053_REG022 */
        LpRegSet->pDF =
          &Can_GaaRegs[LucUnit].pFD->aaHthReg[LulBufIdx].aaFDTMDF[0];
        /* References: CAN_DDD_ACT_053_REG024 */
#endif /* (CAN_FD_SUPPORT == STD_ON) */
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
        LpRegSet->pID =
          &Can_GaaRegs[LucUnit].pCmn->aaHthReg[LulBufIdx].ulTMID;
        /* References: CAN_DDD_ACT_053_REG019 */
        LpRegSet->pPTR =
          &Can_GaaRegs[LucUnit].pCmn->aaHthReg[LulBufIdx].ulTMPTR;
        /* References: CAN_DDD_ACT_053_REG021 */
        LpRegSet->pDF =
          &Can_GaaRegs[LucUnit].pCmn->aaHthReg[LulBufIdx].aaTMDF[0];
        /* References: CAN_DDD_ACT_053_REG023 */
#endif
      }
    }
#endif /* #if (CAN_TX_BUFFER == STD_ON) */
  }

  return(LenRetValue);
}

/*******************************************************************************
** Function Name         : Can_WriteDataReg
**
** Service ID            : Not Applicable
**
** Description           : This function writes SDU to the tx data register.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Reentrant
**
** Input Parameters      : LpSrc         : Pointer to SDU
**                         LpDF          : Pointer to the data register
**                         LulSrcLength  : Length of SDU
**                         LulDestLength : Length of data to be written to DF
**                         LucPadding    : Padding value to fill the surplus
**                                         area between SrcLength and DestLength
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : None
**
** Functions Invoked     : None
**
** Registers Used        : None
*******************************************************************************/
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_WriteDataReg(
  CONSTP2CONST(uint8, AUTOMATIC, CAN_RSCAN_APPL_CONST) LpSrc,
  CONSTP2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpDF,
  const uint32 LulSrcLength, const uint32 LulDestLength, const uint8 LucPadding)
{
  /* References: CAN_DDD_ACT_054 */
  const uint32 LulAvailableWords = LulSrcLength / (uint32)sizeof(uint32);
  const uint32 LulRemainedBytes = LulSrcLength % (uint32)sizeof(uint32);
  const uint32 LulTotalWords = LulDestLength / (uint32)sizeof(uint32);
  uint32 LulWordIndex;
  uint32 LulDataRegValue;
  uint32 LulByteIndex;

  /* Copy user data to the data buffer by 4 bytes */
  LulByteIndex = 0UL;
  for (LulWordIndex = 0UL;
     LulWordIndex < LulAvailableWords; LulWordIndex++)
  {
    /* MISRA Violation: START Msg(2:0492)-2 */
    LulDataRegValue = CAN_RSCAN_CREATEWORD(
      LpSrc[LulByteIndex],
      LpSrc[LulByteIndex + CAN_RSCAN_1_BYTE],
      LpSrc[LulByteIndex + CAN_RSCAN_2_BYTE],
      LpSrc[LulByteIndex + CAN_RSCAN_3_BYTE]);
    /* END Msg(2:0492)-2 */
    LulByteIndex = LulByteIndex + (uint32)sizeof(uint32);
    /* MISRA Violation: START Msg(2:0492)-2 */
    CAN_WRITE_VERIFY_RUNTIME(
      &LpDF[LulWordIndex],
      LulDataRegValue,
      CAN_COMMON_REG_MASK,
      CAN_WRITE_SID)
    /* END Msg(2:0492)-2 */
    /* References: CAN_DDD_ACT_054_REG001 */
  }

  /* Copy remaining bytes to data buffer */
  switch (LulRemainedBytes)
  {
  case CAN_RSCAN_0_BYTE: /* LulSrcLength = 4n + 0 */
    /* No remaining byte */
    break;
  case CAN_RSCAN_1_BYTE: /* LulSrcLength = 4n + 1 */
    /* MISRA Violation: START Msg(2:0492)-2 */
    LulDataRegValue = CAN_RSCAN_CREATEWORD(
      LpSrc[LulByteIndex],
      LucPadding, LucPadding, LucPadding);
    CAN_WRITE_VERIFY_RUNTIME(
      &LpDF[LulWordIndex],
      LulDataRegValue,
      CAN_COMMON_REG_MASK,
      CAN_WRITE_SID)
    /* END Msg(2:0492)-2 */
    /* References: CAN_DDD_ACT_054_REG002 */
    LulWordIndex++;
    break;
  case CAN_RSCAN_2_BYTE: /* LulSrcLength = 4n + 2 */
    /* MISRA Violation: START Msg(2:0492)-2 */
    LulDataRegValue = CAN_RSCAN_CREATEWORD(
      LpSrc[LulByteIndex],
      LpSrc[LulByteIndex + CAN_RSCAN_1_BYTE],
      LucPadding, LucPadding);
    CAN_WRITE_VERIFY_RUNTIME(
      &LpDF[LulWordIndex],
      LulDataRegValue,
      CAN_COMMON_REG_MASK,
      CAN_WRITE_SID)
    /* END Msg(2:0492)-2 */
    /* References: CAN_DDD_ACT_054_REG003 */
    LulWordIndex++;
    break;
  default: /* LulSrcLength = 4n + 3 */
    /* MISRA Violation: START Msg(2:0492)-2 */
    LulDataRegValue = CAN_RSCAN_CREATEWORD(
      LpSrc[LulByteIndex],
      LpSrc[LulByteIndex + CAN_RSCAN_1_BYTE],
      LpSrc[LulByteIndex + CAN_RSCAN_2_BYTE],
      LucPadding);
    CAN_WRITE_VERIFY_RUNTIME(
      &LpDF[LulWordIndex],
      LulDataRegValue,
      CAN_COMMON_REG_MASK,
      CAN_WRITE_SID)
    /* END Msg(2:0492)-2 */
    /* References: CAN_DDD_ACT_054_REG004 */
    LulWordIndex++;
    break;
  }

  /* Fill padding to the surplus area */
  LulDataRegValue = CAN_RSCAN_CREATEWORD(
    LucPadding, LucPadding, LucPadding, LucPadding);
  for (; LulWordIndex < LulTotalWords; LulWordIndex++)
  {
    /* MISRA Violation: START Msg(2:0492)-2 */
    CAN_WRITE_VERIFY_RUNTIME(
      &LpDF[LulWordIndex],
      LulDataRegValue,
      CAN_COMMON_REG_MASK,
      CAN_WRITE_SID)
    /* END Msg(2:0492)-2 */
    /* References: CAN_DDD_ACT_054_REG005 */
  }
}
#endif /* ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON)) */
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-3 */
/* MISRA Violation: START Msg(4:5087)-7 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-7 */
/* END Msg(2:0832)-3 */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
