/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_Irq.c                                                   */
/* Version      = V1.0.5                                                      */
/* Date         = 20-Dec-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of Interrupt Service Routines Functionality.                     */
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
 * V1.0.1: 24-Sep-2020  : Add QAC justification and comments.
 * V1.0.2: 16-Mar-2021  : As per ARDAABD-2992, Update Global Variable Used and
 *                        register used of all functions at function's banner.
 *                        As per ARDAABD-2517: Update Function Invoked of    
 *                        functions at function's banner. 
 *         03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                        Add QAC message (2:0857), (4:5087),(1:1503),
 *                        (2:3006), (2:1006), (2:3138)
 *         03-Jun-2021  : Add QAC Warning messages.
 * V1.0.3: 19-Jul-2021  : As per ARDAABD-6769, Updated to change bit-size passed
 *                        from 16 to 8 when access bit EIMK of EIC register.
 *         02-Aug-2021  : Add QAC message (2:3892), (4:4461).
 * V1.0.4: 06-Dec-2021  : As per ARDAABF-1003, Update the condition to
 *                        report DEM of interrupt inconsistency for functions
 *                        Can_RxGlobalIsr, Can_RxIsr, Can_TxIsr, Can_BusOffIsr.
 * V1.0.5: 20-Dec-2021  : To support P1M-E, implement register DNFA in
 *                        Can_WakeupIsr.
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Can.h"
#include "Can_Ram.h"
#include "Can_MainServ.h"
/* MISRA Violation: START Msg(2:0857)-5 */
#include "Can_Irq.h"
/* END Msg(2:0857)-5 */
#include "Can_ModeCntrl.h"
#include "CanIf.h"
#include "rh850_Types.h"
/* MISRA Violation: START Msg(2:0857)-5 */
#include "Dem.h"
/* END Msg(2:0857)-5 */
#include "Can_RegWrite.h"
#if (CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
/* Included for the declaration of the critical section protection functions */
#include "SchM_Can.h"
#endif

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/

/* AUTOSAR release version information */
#define CAN_IRQ_C_AR_RELEASE_MAJOR_VERSION     CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_IRQ_C_AR_RELEASE_MINOR_VERSION     CAN_AR_RELEASE_MINOR_VERSION
#define CAN_IRQ_C_AR_RELEASE_REVISION_VERSION  CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_IRQ_C_SW_MAJOR_VERSION    CAN_IRQ_SW_MAJOR_VERSION
#define CAN_IRQ_C_SW_MINOR_VERSION    CAN_IRQ_SW_MINOR_VERSION

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_IRQ_C_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION_VALUE)
  #error "Can_Irq.c : Mismatch in Release Major Version"
#endif
#if (CAN_IRQ_C_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION_VALUE)
    #error "Can_Irq.c : Mismatch in Release Minor Version"
#endif
#if (CAN_IRQ_C_AR_RELEASE_REVISION_VERSION \
        != CAN_AR_RELEASE_REVISION_VERSION_VALUE)
    #error "Can_Irq.c : Mismatch in Release Revision Version"
#endif

#if (CAN_IRQ_C_SW_MAJOR_VERSION != CAN_SW_MAJOR_VERSION_VALUE)
  #error "Can_Irq.c : Mismatch in Software Major Version"
#endif
#if (CAN_IRQ_C_SW_MINOR_VERSION != CAN_SW_MINOR_VERSION_VALUE)
  #error "Can_Irq.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0491) Array subscripting applied to an object of        */
/*                 pointer type.                                              */
/* Rule          : MISRA-C:2004 Rule 17.4                                     */
/* Justification : This is necessary to support configuration.                */
/*                 The actual array can't be decided statically.              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0491)-1 and                           */
/*                 END Msg(2:0491)-1 tags in the code.                        */
/******************************************************************************/
/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0317) Implicit conversion from a pointer to void to     */
/*                 a pointer to object type.                                  */
/* Rule          : MISRA-C:2004 Rule 11.4                                     */
/* Justification : This is necessary to support configuration.                */
/*                 The actual array can't be decided statically.              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0317)-2 and                           */
/*                 END Msg(2:0317)-2 tags in the code.                        */
/******************************************************************************/
/* 3. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0316) Cast from a pointer to void to a pointer to       */
/*                  object type.                                              */
/* Rule          : MISRA-C:2004 Rule 11.4                                     */
/* Justification : A cast should not be performed between a pointer to object */
/*                 type and a different pointer to object type.               */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0316)-3 and                           */
/*                 END Msg(2:0316)-3 tags in the code.                        */
/******************************************************************************/
/* 4. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3408) '%s' has external linkage and is being defined    */
/*                 without any previous declaration.                          */
/*                 object type .                                              */
/* Rule          : MISRA-C:2004 Rule 8.8                                      */
/* Justification : This can't be declared in a header file statically since   */
/*                 number or name of symbols in this file is according to     */
/*                 a configuration.                                           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3408)-4 and                           */
/*                 END Msg(2:3408)-4 tags in the code.                        */
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
/* Message       : (2:3006) This function contains a mixture of in-line       */
/*                 assembler statements and C statements.                     */
/* Rule          : MISRA-C:2004 Rule-2.1                                      */
/* Justification : The usage of assembler statements is to read and syncp     */
/*                 register. It is necessary for operation.                   */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3006)-6  and                          */
/*                 END Msg(2:3006)-6  tags in the code.                       */
/******************************************************************************/
/* 7. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:1006) [E] This in-line assembler construct is a         */
/*                 language extension. The code has been ignored.             */
/* Rule          : MISRA-C:2004 Rule-1.1                                      */
/* Justification : The usage of assembler statements is to read and syncp     */
/*                 register. It is necessary for operation.                   */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:1006)-7  and                          */
/*                 END Msg(2:1006)-7  tags in the code.                       */
/******************************************************************************/
/* 8. MISRA C RULE VIOLATION:                                                 */
/* Message       : (1:1503) The function '%1s' is defined but is not used     */
/*                  within this project.                                      */
/* Rule          : MISRA-C:2004 Rule-14.1                                     */
/* Justification : This is accepted, due to the module's API is exported      */
/*                 for user's usage.                                          */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(1:1503)-8  and                          */
/*                 END Msg(1:1503)-8  tags in the code.                       */
/******************************************************************************/
/* 9. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include        */
/*                 memmap is following AUTOSAR rule.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(4:5087)-9 and                           */
/*                 END Msg(4:5087)-9 tags in the code.                        */
/******************************************************************************/

/* 10. MISRA C RULE VIOLATION:                                                */
/* Message       : (2:3138) Null statement is located close to other code or  */
/*                 comments.                                                  */
/* Rule          : MISRA-C:2004 Rule-14.3                                     */
/* Justification : This is limitation of QAC since it can't compile assembler */
/*                 There is no impact on operation.                           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3138)-10  and                         */
/*                 END Msg(2:3138)-10  tags in the code.                      */
/******************************************************************************/


/* 11. MISRA C RULE VIOLATION:                                                */
/* Message       : (4:4461) A non-constant expression of 'essentially         */
/*                 unsigned' type (%1s) is being converted to                 */
/*                 narrower unsigned type, '%2s' on assignment.               */
/* Rule          : MISRA-C:2004 Rule-10.1                                     */
/* Justification : This is use for accessing to 16 LSB of PMSR registers.     */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:4461)-11 and END Msg(4:4461)-11 tags  */
/*                 in the code.                                               */
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

/* 2. QAC Warning:                                                            */
/* Message       : (2:3892) The result of this cast is implicitly converted   */
/*                  to another type                                           */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3892           */
/* Justification : This implicit conversion is done to access the data from   */
/*                  the post build configuration                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.Also this is not a MISRA violation   */
/* Reference     : Look for QAC Warning START Msg(2:3892)-2 and               */
/*                 END Msg(2:3892)-2 tags in the code.                        */
/******************************************************************************/
/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/

#define CAN_RSCAN_START_SEC_CODE_FAST
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

/* Prototypes for internal functions */
#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_RxGlobalIsr(
  const uint8 LucUnit);
#endif
#if ((CAN_CONTROLLER0_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_RX_INTERRUPT == STD_ON))
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_RxIsr(const uint8 LucController);
#endif
#if ((CAN_CONTROLLER0_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_TX_INTERRUPT == STD_ON))
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_TxIsr(const uint8 LucController);
#endif
#if ((CAN_CONTROLLER0_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_BUSOFF_INTERRUPT == STD_ON))
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_BusOffIsr(
  const uint8 LucController);
#endif
#if ((CAN_WAKEUP_SUPPORT == STD_ON) && \
  ((CAN_CONTROLLER0_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_WAKEUP_INTERRUPT == STD_ON)))
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_WakeupIsr(
  const uint8 LucController);
#endif

/*******************************************************************************
** Function Name         : Can_RxGlobalIsr
**
** Service ID            : Not Applicable
**
** Description           : Common part of each RXFIFO_ISR.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : LucUnitIdx: Physical number of Unit
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : Can_GaaPhysicalUnitToIndex, Can_GaaRegs,
**         Can_GpConfig
**
** Functions Invoked     : Can_RxProcessing, Dem_ReportErrorStatus
**
** Registers Used        : RFCCx,(CFD)GSTS(for dummy read only),
**                         (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                         (CFD)RFDFdx,(CFD)RFPCTR, (CFD)RFSTSx, CFDCSTS, 
**                         (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk, (CFD)CFPCTRk, 
**                         (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,
**                         (CFD)RMPTRq,(CFD)RMDFbq, FDRMSTSq
*******************************************************************************/
#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
/* MISRA Violation: START Msg(2:3006)-6 */
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_RxGlobalIsr(const uint8 LucUnit)
/* END Msg(2:3006)-6 */
{
  /* References: CAN_DDD_ACT_057 */
  uint8 LucUnitIdx;
#if (CAN_INTERRUPT_CONSISTENCY_CHECK == STD_ON)
  uint32 LulRxFIFOIndex;
  uint32 LulIrqExist;
#endif
#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
  uint32 LulWUFMask;
  P2CONST(Can_HWUnitInfoType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHWInfo;
#endif

  /* Convert the physical Unit index to the config index */
  LucUnitIdx = Can_GaaPhysicalUnitToIndex[LucUnit];

#if (CAN_INTERRUPT_CONSISTENCY_CHECK == STD_ON)
  LulIrqExist = 0UL;
  /* Accumulate all interrupt request flags of all RxFIFO */
  for (LulRxFIFOIndex = 0UL;
   LulRxFIFOIndex < (uint32) CAN_RSCAN_RXFIFO_PER_UNIT; LulRxFIFOIndex++)
  {
    /* if (RFCCk.RFIE && RFSTSk.RFIF), it means that irq exists */
    LulIrqExist = LulIrqExist | (
      CAN_RSCAN_RFIE_GET(
        Can_GaaRegs[LucUnitIdx].pCmn->aaRFCC[LulRxFIFOIndex])
      &
      CAN_RSCAN_RFIF_GET(
        Can_GaaRegs[LucUnitIdx].pCmn->aaRFSTS[LulRxFIFOIndex])
      );
  }
  /* If no IRQ from RS-CAN or EIC is masked, this interrupt is wrong */
  if ((0UL == LulIrqExist) ||
    ((uint16)(*Can_GaaRegs[LucUnitIdx].pICRxFIFO &
      (CAN_EIC_EIMK_MASK | CAN_EIC_EIRF_MASK)) != CAN_EIC_EIRF_MASK))
  {
    Dem_ReportErrorStatus(CAN_E_INT_INCONSISTENT, DEM_EVENT_STATUS_FAILED);
    /* References: CAN_DDD_ACT_057_ERR001 */
    /* References: CAN_DDD_ACT_057_FSR001 */
  }
  else
#endif
  {
#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
    /* MISRA Violation: START Msg(2:0316)-3 */
    LpHWInfo =
      (P2CONST(Can_HWUnitInfoType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA))
      Can_GpConfig->pHWUnitInfo;
    /* END Msg(2:0316)-3 */
    /* MISRA Violation: START Msg(2:0491)-1 */
    LpHWInfo = &LpHWInfo[LucUnit];
    /* END Msg(2:0491)-1 */
    LulWUFMask = LpHWInfo->ulRxFIFOWUFMask;
    if (LulWUFMask
        == (uint32)(*Can_GaaRegs[LucUnitIdx].pWUF0Reg
           & LulWUFMask))
    {
      *Can_GaaRegs[LucUnitIdx].pWUFC0Reg = LulWUFMask;
    }
    else
    {
      /* No action required */
    }
#endif
    /* Invoke Can_RxProcessing internal function for receive processing */
    Can_RxProcessing(CAN_RXPROC_RXFIFO(LucUnitIdx), CAN_CHECK_INT_RX,
      CAN_MAINFUNCTION_INSTANCE_0);
    /* DummyRead & SYNCP */
    /* MISRA Violation: START Msg(2:1006)-7 */
    RH850_SET_IOREG_SYNCP(32, &Can_GaaRegs[LucUnitIdx].pCmn->ulGSTS, 0UL);
    /* END Msg(2:1006)-7 */
    /* References: CAN_DDD_ACT_057_REG001 */
  }
}
#endif /* (CAN_RSCANx_RXFIFO_INTERRUP == STD_ON) */

/*******************************************************************************
** Function Name         : CAN_RSCAN0_RXFIFO_ISR
**
** Service ID            : Not Applicable
**
** Description           : This is RXFIFO Interrupt Service routines for the Can
**                         hardware unit 0.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : None
**
** Functions Invoked     : Can_RxGlobalIsr
**
** Registers Used        : RFCCx,(CFD)GSTS(for dummy read only),
**                         (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                         (CFD)RFDFdx,(CFD)RFPCTR, (CFD)RFSTSx, CFDCSTS, 
**                         (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk, (CFD)CFPCTRk, 
**                         (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,
**                         (CFD)RMPTRq,(CFD)RMDFbq, FDRMSTSq
**
** Reference ID          : CAN_DDD_ACT_020
*******************************************************************************/
#if (CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_RSCAN0_RXFIFO_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_RSCAN0_RXFIFO_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_RSCAN0_RXFIFO_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  /* References: CAN_DDD_ACT_020 */
  Can_RxGlobalIsr(CAN_PHYIDX_UNIT0);
}
#endif /* (CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) */

/*******************************************************************************
** Function Name         : CAN_RSCAN1_RXFIFO_ISR
**
** Service ID            : Not Applicable
**
** Description           : This is RXFIFO Interrupt Service routines for the Can
**                         hardware unit 1.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Reentrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : None
**
** Functions Invoked     : Can_RxGlobalIsr
**
** Registers Used        : RFCCx,(CFD)GSTS(for dummy read only),
**                         (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                         (CFD)RFDFdx,(CFD)RFPCTR, (CFD)RFSTSx, CFDCSTS, 
**                         (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk, (CFD)CFPCTRk, 
**                         (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,
**                         (CFD)RMPTRq,(CFD)RMDFbq, FDRMSTSq
**
** Reference ID          : CAN_DDD_ACT_020
*******************************************************************************/
#if (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_RSCAN1_RXFIFO_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_RSCAN1_RXFIFO_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_RSCAN1_RXFIFO_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_RxGlobalIsr(CAN_PHYIDX_UNIT1);
}
#endif /* (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON) */

/*******************************************************************************
** Function Name         : Can_RxIsr
**
** Service ID            : Not Applicable
**
** Description           : Common part of each RX_ISR
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : LucController : Physical number of Controller
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : Can_GpConfig, Can_GaaRegs, Can_GpPCController
**
** Functions Invoked     : Can_RxProcessing, Dem_ReportErrorStatus
**
** Registers Used        : RFCCx,(CFD)GSTS(for dummy read only),(CFD)RFSTSx
**                         (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                         (CFD)RFDFdx,(CFD)RFPCTR, CFDCSTS,(CFD)CFPCTRk,
**                         (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk,  
**                         (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,
**                         (CFD)RMPTRq,(CFD)RMDFbq, FDRMSTSq
**
*******************************************************************************/
#if ((CAN_CONTROLLER0_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_RX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_RX_INTERRUPT == STD_ON))
/* MISRA Violation: START Msg(2:3006)-6 */
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_RxIsr(const uint8 LucController)
/* END Msg(2:3006)-6 */
{
  /* References: CAN_DDD_ACT_028 */
  uint8 LucCtrlIndex;
  P2CONST(volatile uint8, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpController;
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
#if (CAN_INTERRUPT_CONSISTENCY_CHECK == STD_ON)
  uint32 LulTxRxFIFOIndex;
  uint32 LulLoop;
  uint32 LulIrqExist;
#endif
#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
  uint32 LulWUFMask;
#endif

  /* Convert the physical Controller index to the config index */
  /* MISRA Violation: START Msg(2:0317)-2 */
  LpController = Can_GaaConfig->pPhysicalControllerToIndex;
  /* END Msg(2:0317)-2 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucCtrlIndex = LpController[LucController];
  /* END Msg(2:0491)-1 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-1 */

#if (CAN_INTERRUPT_CONSISTENCY_CHECK == STD_ON)
  LulIrqExist = 0UL;
  /* Accumulate all interrupt request flags of all TxRxFIFO */
  LulTxRxFIFOIndex =
        (uint32)LpPCController->ucChannelOffset * CAN_RSCAN_TXRXFIFO_PER_CH;
  for (LulLoop = 0UL;
     LulLoop < (uint32) CAN_RSCAN_TXRXFIFO_PER_CH; LulLoop++)
  {
    /* if (CFCCk.CFRXIE && CFSTSk.CFRXIF), it means that IRQ exists */
    LulIrqExist = LulIrqExist | (
      CAN_RSCAN_CFRXIE_GET(
        Can_GaaRegs[LpPCController->ucUnitIndex].pCmn->aaCFCC[LulTxRxFIFOIndex])
      &
      CAN_RSCAN_CFRXIF_GET(
      Can_GaaRegs[LpPCController->ucUnitIndex].pCmn->aaCFSTS[LulTxRxFIFOIndex])
      );
    LulTxRxFIFOIndex++;
  }
  /* If no IRQ exists from RS-CAN or EIC is masked, this interrupt is wrong */
  if ((0UL == LulIrqExist) ||
    ((uint16)(*LpPCController->pICRec & (CAN_EIC_EIMK_MASK | CAN_EIC_EIRF_MASK))
      != CAN_EIC_EIRF_MASK))
  {
    Dem_ReportErrorStatus(CAN_E_INT_INCONSISTENT, DEM_EVENT_STATUS_FAILED);
    /* References: CAN_DDD_ACT_028_ERR001 */
    /* References: CAN_DDD_ACT_028_FSR001 */
  }
  else
#endif
  {
#if (CAN_WAKEUPFACTOR_CLEAR == STD_ON)
    LulWUFMask = LpPCController->ulWUFMask;
    if (LulWUFMask
        == (uint32)(*Can_GaaRegs[LpPCController->ucUnitIndex].pWUF0Reg
           & LulWUFMask))
    {
      *Can_GaaRegs[LpPCController->ucUnitIndex].pWUFC0Reg = LulWUFMask;
    }
    else
    {
      /* No action required */
    }
#endif
    /* Invoke Can_RxProcessing internal function for receive processing */
    Can_RxProcessing(CAN_RXPROC_TXRXFIFO(LucCtrlIndex), CAN_CHECK_INT_RX,
      CAN_MAINFUNCTION_INSTANCE_0);

    /* DummyRead & SYNCP */
    /* MISRA Violation: START Msg(2:1006)-7 */
    RH850_SET_IOREG_SYNCP(32,
      &Can_GaaRegs[LpPCController->ucUnitIndex].pCmn->ulGSTS, 0UL);
    /* END Msg(2:1006)-7 */
    /* References: CAN_DDD_ACT_028_REG001 */
  }
}
#endif /* (CAN_CONTROLLERn_RX_INTERRUPT == STD_ON) */

/*******************************************************************************
** Function Name         : CAN_CONTROLLERx_RX_ISR
**
** Service ID            : Not Applicable
**
** Description           : This is RX Interrupt Service routines for the Can
**                         hardware unit.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : None
**
** Functions Invoked     : Can_RxIsr
**
** Registers Used        :  RFCCx,(CFD)GSTS(for dummy read only),(CFD)RFSTSx
**                          (CFD)RMNDy, FDRFFDSTSx, (CFD)RFIDx, (CFD)RFPTRx, 
**                          (CFD)RFDFdx,(CFD)RFPCTR, CFDCSTS,(CFD)CFPCTRk,
**                          (CFD)CFIDk, (CFD)CFPTRk, (CFD)CFDFdk,  
**                          (CFD)CFSTSk, FDCFFDCST,(CFD)RMIDq,
**                          (CFD)RMPTRq,(CFD)RMDFbq, FDRMSTSq
**
*******************************************************************************/
#if (CAN_CONTROLLER0_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER0_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER0_RX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER0_RX_ISR(void)
#endif
{
  /* References: CAN_DDD_ACT_019 */
  Can_RxIsr(CAN_PHYIDX_CONTROLLER0);
}
#endif

#if (CAN_CONTROLLER1_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER1_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER1_RX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER1_RX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER1);
}
#endif

#if (CAN_CONTROLLER2_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined  (Os_CAN_CONTROLLER2_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER2_RX_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER2_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER2);
}
#endif

#if (CAN_CONTROLLER3_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER3_RX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER3_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER3);
}
#endif

#if (CAN_CONTROLLER4_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER4_RX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER4_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER4);
}
#endif

#if (CAN_CONTROLLER5_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER5_RX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER5_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER5);
}
#endif

#if (CAN_CONTROLLER6_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER6_RX_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER6_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER6);
}
#endif

#if (CAN_CONTROLLER7_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER7_RX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER7_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER7);
}
#endif

#if (CAN_CONTROLLER8_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER8_RX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER8_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER8);
}
#endif

#if (CAN_CONTROLLER9_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER9_RX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER9_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER9);
}
#endif

#if (CAN_CONTROLLER10_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER10_RX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER10_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER10);
}
#endif

#if (CAN_CONTROLLER11_RX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_RX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER11_RX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER11_RX_ISR(void)
#endif
{
  Can_RxIsr(CAN_PHYIDX_CONTROLLER11);
}
#endif
/*******************************************************************************
** Function Name         : Can_TxIsr
**
** Service ID            : Not Applicable
**
** Description           : Common part of each TX_ISR
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : LucController : Physical number of Controller
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : Can_GpConfig, Can_GaaRegs, Can_GpPCController
**
** Functions Invoked     : Can_TxConfirmationProcessing, Dem_ReportErrorStatus
**
** Registers Used        : (CFD)GTINTSTSx, (CFD)GSTS (for dummy read only)
**                         (CFD)THLACCm, (CFD)THLSTSm, (CFD)THLPCTRm,
**                         (CFD)CFSTSk, (CFD)TXQSTSm, (CFD)TMSTSp
**
*******************************************************************************/
#if ((CAN_CONTROLLER0_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_TX_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_TX_INTERRUPT == STD_ON))
/* MISRA Violation: START Msg(2:3006)-6 */
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_TxIsr(const uint8 LucController)
/* END Msg(2:3006)-6 */
{
  /* References: CAN_DDD_ACT_029 */
  uint8 LucCtrlIndex;
  P2CONST(volatile uint8, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpController;
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;

  /* Convert the physical Controller index to the config index */
  /* MISRA Violation: START Msg(2:0317)-2 */
  LpController = Can_GaaConfig->pPhysicalControllerToIndex;
  /* END Msg(2:0317)-2 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucCtrlIndex = LpController[LucController];
  /* END Msg(2:0491)-1 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-1 */
  /* If no irq exists from RS-CAN or EIC is masked, this interrupt is wrong */

#if (CAN_INTERRUPT_CONSISTENCY_CHECK == STD_ON)
  if ((0U ==
    Can_GaaRegs[LpPCController->ucUnitIndex].pCmn->unGINTSTS.aaB
                              [LpPCController->ucChannelOffset])
    ||
    ((uint16)(*LpPCController->pICTx & (CAN_EIC_EIMK_MASK | CAN_EIC_EIRF_MASK))
      != CAN_EIC_EIRF_MASK))
  {
    Dem_ReportErrorStatus(CAN_E_INT_INCONSISTENT, DEM_EVENT_STATUS_FAILED);
    /* References: CAN_DDD_ACT_029_ERR001 */
    /* References: CAN_DDD_ACT_029_FSR001 */
  }
  else
#endif
  {
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))

    Can_TxConfirmationProcessing(LucCtrlIndex);
    /* DummyRead & SYNCP */
    /* MISRA Violation: START Msg(2:1006)-7 */
    RH850_SET_IOREG_SYNCP(32,
      &Can_GaaRegs[LpPCController->ucUnitIndex].pCmn->ulGSTS, 0UL);
    /* END Msg(2:1006)-7 */
    /* References: CAN_DDD_ACT_029_REG001 */
#endif
  }
}
#endif /* (CAN_CONTROLLERn_TX_INTERRUPT == STD_ON) */

/*******************************************************************************
** Function Name         : CAN_CONTROLLERx_TX_ISR
**
** Service ID            : Not Applicable
**
** Description           : This is TX Interrupt Service routines for the Can
**                         hardware unit.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : None
**
** Functions Invoked     : Can_TxIsr
**
** Registers Used        : CFD)GTINTSTSx, (CFD)GSTS (for dummy read only)
**                         (CFD)THLACCm, (CFD)THLSTSm, (CFD)THLPCTRm,
**                         (CFD)CFSTSk, (CFD)TXQSTSm, (CFD)TMSTSp
**
*******************************************************************************/
#if (CAN_CONTROLLER0_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER0_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER0_TX_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER0_TX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  /* References: CAN_DDD_ACT_021 */
  Can_TxIsr(CAN_PHYIDX_CONTROLLER0);
}
#endif

#if (CAN_CONTROLLER1_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER1_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER1_TX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER1_TX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER1);
}
#endif

#if (CAN_CONTROLLER2_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER2_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER2_TX_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER2_TX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER2);
}
#endif

#if (CAN_CONTROLLER3_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER3_TX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER3_TX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER3);
}
#endif

#if (CAN_CONTROLLER4_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER4_TX_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER4_TX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER4);
}
#endif

#if (CAN_CONTROLLER5_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER5_TX_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER5_TX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER5);
}
#endif

#if (CAN_CONTROLLER6_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER6_TX_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER6_TX_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER6);
}
#endif

#if (CAN_CONTROLLER7_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER7_TX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER7_TX_ISR(void)
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER7);
}
#endif

#if (CAN_CONTROLLER8_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER8_TX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER8_TX_ISR(void)
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER8);
}
#endif

#if (CAN_CONTROLLER9_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER9_TX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER9_TX_ISR(void)
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER9);
}
#endif

#if (CAN_CONTROLLER10_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER10_TX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER10_TX_ISR(void)
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER10);
}
#endif

#if (CAN_CONTROLLER11_TX_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_TX_CAT2_ISR) || (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER11_TX_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER11_TX_ISR(void)
#endif
{
  Can_TxIsr(CAN_PHYIDX_CONTROLLER11);
}
#endif
/*******************************************************************************
** Function Name         : Can_BusOffIsr
**
** Service ID            : Not Applicable
**
** Description           : Common part of each BUSOFF_ISR.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : LucController : Physical number of Controller
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : Can_GpConfig, Can_GaaRegs, Can_GaaCtrlState
**                         Can_GpPCController
**
** Functions Invoked     : CanIf_ControllerBusOff, Dem_ReportErrorStatus
**                         CAN_ENTER_CRITICAL_SECTION, 
**                         CAN_EXIT_CRITICAL_SECTION
**
** Registers Used        : CmCTR,(CFD)ERFL, (CFD)GSTS (for dummy read only)
*******************************************************************************/
#if ((CAN_CONTROLLER0_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_BUSOFF_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_BUSOFF_INTERRUPT == STD_ON))
/* MISRA Violation: START Msg(2:3006)-6 */
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_BusOffIsr(const uint8 LucController)
/* END Msg(2:3006)-6 */
{
  /* References: CAN_DDD_ACT_030 */
  P2CONST(volatile uint8, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpController;
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_FAST_CONST)
    LpPCController;
  uint8 LucCtrlIndex;
  uint8 LucUnit;
  uint8 LucCh;
  boolean LblNotificationRequired;

  /* Convert the physical Controller index to the config index */
  /* MISRA Violation: START Msg(2:0317)-2 */
  LpController = Can_GaaConfig->pPhysicalControllerToIndex;
  /* END Msg(2:0317)-2 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucCtrlIndex = LpController[LucController];
  /* END Msg(2:0491)-1 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-1 */
  LucUnit = LpPCController->ucUnitIndex;
  LucCh = LpPCController->ucChannelOffset;

#if (CAN_INTERRUPT_CONSISTENCY_CHECK == STD_ON)
  /* If no irq exists from RS-CAN or EIC is masked, this interrupt is wrong */
  if ((0UL == (
    CAN_RSCAN_GET_EIEBITS(Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCTR) &
    CAN_RSCAN_GET_EFBITS(Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulERFL))
    ) ||
    ((uint16)(*LpPCController->pICErr & (CAN_EIC_EIMK_MASK | CAN_EIC_EIRF_MASK))
      != CAN_EIC_EIRF_MASK))
  {
    Dem_ReportErrorStatus(CAN_E_INT_INCONSISTENT, DEM_EVENT_STATUS_FAILED);
    /* References: CAN_DDD_ACT_030_ERR001 */
    /* References: CAN_DDD_ACT_030_FSR001 */
  }
  else
#endif
  {
    /* Check whether Busoff event is occurred or not */
    if (0UL !=
      (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulERFL & CAN_RSCAN_BOEF))
    {
      /*
       * The transition START to STOP is done by the following triggers:
       *  - Can_SetControllerMode(CAN_T_STOP)
       *  - BusOff
       * To avoid the state transition is done twice by both of triggers,
       * the exclusive control is required.
       */
      CAN_ENTER_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
      /* References: CAN_DDD_ACT_030_CRT001 */
      if ((CAN_T_START == Can_GaaCtrlState[LucCtrlIndex].enMode) &&
        (CAN_NO_PENDING_TRANSITION ==
          Can_GaaCtrlState[LucCtrlIndex].enSubState))
      {
        /* Set bus-off flag */
        Can_GaaCtrlState[LucCtrlIndex].blBusOff = CAN_TRUE;
        /* References: CAN_DDD_ACT_030_GBL001 */
        /* When bus off has been occurred, HW is CHANNLE_HALT mode already.
           So no additional operation is required, just set the mode. */
        Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_STOP;
        /* References: CAN_DDD_ACT_030_GBL002 */
        Can_GaaCtrlState[LucCtrlIndex].enSubState = CAN_NO_PENDING_TRANSITION;
        /* References: CAN_DDD_ACT_030_GBL003 */
        /* Notification for CanIf is required */
        LblNotificationRequired = CAN_TRUE;
      }
      else
      {
        /* State transition by Can_SetControllerMode has been started already,
           ignore this BusOff interruption. */
        LblNotificationRequired = CAN_FALSE;
      }
      CAN_EXIT_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
      /* References: CAN_DDD_ACT_030_CRT002 */

      if (CAN_TRUE == LblNotificationRequired)
      {
        CanIf_ControllerBusOff((uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET));
      }
      else
      {
        /* Nothing to do */
      }
    }
    else
    {
      /* Nothing to do */
    }
    /* Clear all error flags */
    CAN_WRITE_REG_ONLY(&Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulERFL,
                        CAN_RSCAN_ERFL_CLEAR)
    /* References: CAN_DDD_ACT_030_REG001 */
    /* DummyRead & SYNCP */
    /* MISRA Violation: START Msg(2:1006)-7 */
    RH850_SET_IOREG_SYNCP(32, &Can_GaaRegs[LucUnit].pCmn->ulGSTS, 0UL);
    /* END Msg(2:1006)-7 */
    /* References: CAN_DDD_ACT_030_REG002 */
  }
}
#endif /* (CAN_CONTROLLERn_BUSOFF_INTERRUPT == STD_ON) */

/*******************************************************************************
** Function Name         : CAN_CONTROLLERx_BUSOFF_ISR
**
** Service ID            : Not Applicable
**
** Description           : This is BUSOFF Interrupt Service routines for the Can
**                         hardware unit.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : None
**
** Functions Invoked     : Can_BusoffIsr
**
** Registers Used        : CmCTR,(CFD)ERFL, (CFD)GSTS (for dummy read only)
*******************************************************************************/
#if (CAN_CONTROLLER0_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER0_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER0_BUSOFF_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER0_BUSOFF_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  /* References: CAN_DDD_ACT_022 */
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER0);
}
#endif

#if (CAN_CONTROLLER1_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER1_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER1_BUSOFF_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER1_BUSOFF_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER1);
}
#endif

#if (CAN_CONTROLLER2_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER2_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER2_BUSOFF_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER2_BUSOFF_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER2);
}
#endif

#if (CAN_CONTROLLER3_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER3_BUSOFF_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER3_BUSOFF_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER3);
}
#endif

#if (CAN_CONTROLLER4_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER4_BUSOFF_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER4_BUSOFF_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER4);
}
#endif

#if (CAN_CONTROLLER5_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER5_BUSOFF_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER5_BUSOFF_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER5);
}
#endif

#if (CAN_CONTROLLER6_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER6_BUSOFF_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER6_BUSOFF_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER6);
}
#endif

#if (CAN_CONTROLLER7_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER7_BUSOFF_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER7_BUSOFF_ISR(void)
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER7);
}
#endif

#if (CAN_CONTROLLER8_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER8_BUSOFF_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER8_BUSOFF_ISR(void)
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER8);
}
#endif

#if (CAN_CONTROLLER9_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER9_BUSOFF_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER9_BUSOFF_ISR(void)
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER9);
}
#endif

#if (CAN_CONTROLLER10_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER10_BUSOFF_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER10_BUSOFF_ISR(void)
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER10);
}
#endif

#if (CAN_CONTROLLER11_BUSOFF_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_BUSOFF_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER11_BUSOFF_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER11_BUSOFF_ISR(void)
#endif
{
  Can_BusOffIsr(CAN_PHYIDX_CONTROLLER11);
}
#endif

#if (CAN_WAKEUP_SUPPORT == STD_ON)
/*******************************************************************************
** Function Name         : Can_WakeupIsr
**
** Service ID            : Not Applicable
**
** Description           : Common part of each WAKEUP_ISR
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : LucController : Physical number of Controller
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver component must be initialized
**
** Global Variables Used : Can_GaaConfig, Can_GaaCtrlState,
**                         Can_GpPCController
**
** Functions Invoked     : EcuM_CheckWakeup(),Can_WakeupMode(),
**                         Dem_ReportErrorStatus, CAN_ENTER_CRITICAL_SECTION
**                         CAN_EXIT_CRITICAL_SECTION
**
** Registers Used        : (CFD)GSTS, (CFD)CmSTS,(CFD)GCTR,(CFD)CmCTR,
**                         FCLAnCTLm, DNFAnEN
*******************************************************************************/
#if ((CAN_CONTROLLER0_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER1_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER2_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER3_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER4_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER5_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER6_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER7_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER8_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER9_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER10_WAKEUP_INTERRUPT == STD_ON) || \
  (CAN_CONTROLLER11_WAKEUP_INTERRUPT == STD_ON))
static FUNC(void, CAN_RSCAN_FAST_CODE) Can_WakeupIsr(const uint8 LucController)
{
  /* References: CAN_DDD_ACT_031 */
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  P2CONST(volatile uint8, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpController;
  uint8 LucCtrlIndex;
  boolean LblCheckWakeupRequired;

  /* Convert the physical Controller index to the config index */
  /* MISRA Violation: START Msg(2:0317)-2 */
  LpController = Can_GaaConfig->pPhysicalControllerToIndex;
  /* END Msg(2:0317)-2 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucCtrlIndex = LpController[LucController];
  /* END Msg(2:0491)-1 */
  /* Getting the pointer to pre-compile controller structure*/
  /* MISRA Violation: START Msg(2:0491)-1 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-1 */
  if (NULL_PTR != LpPCController->pICWakeup)
  {
#if (CAN_INTERRUPT_CONSISTENCY_CHECK == STD_ON)
    /* If the interrupt is masked, this interrupt is wrong */
    if(0U != (*LpPCController->pICWakeup & CAN_EIC_EIMK_MASK))
    {
      Dem_ReportErrorStatus(CAN_E_INT_INCONSISTENT, DEM_EVENT_STATUS_FAILED);
      /* References: CAN_DDD_ACT_031_ERR001 */
      /* References: CAN_DDD_ACT_031_FSR001 */
    }
    else
#endif
    {
      /* Critical section is required to avoid the conflict with
         Can_EnableControllerInterrupt and Can_SetControllerMode */
      CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_031_CRT001 */
      /*Disabling the interrupt*/
      /* QAC Warning: START Msg(2:3892)-2 */
      /* MISRA Violation: START Msg(4:4461)-11 */
      /* MISRA Violation: START Msg(2:3138)-10 */
      RH850_SV_SET_ICR_SYNCP(8, LpPCController->pICWakeup,
          (uint8)CAN_EIC_EIMK_MASK);
      /* END Msg(2:3138)-10 */
      /* END Msg(4:4461)-11 */
      /* END Msg(2:3892)-2 */
      /* References: CAN_DDD_ACT_031_REG001 */
      /* Setting the filter control register to reset value */
      if(NULL_PTR != LpPCController->pFCLAReg)
      {
        *(LpPCController->pFCLAReg) = CAN_ZERO;
        /* References: CAN_DDD_ACT_031_REG002 */
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
        /* References: CAN_DDD_ACT_031_REG003 */
      }
      else
      {
        /* Nothing to do */
      }
      /* Confirm state transition is not on-going by Can_SetControllerMode */
      if ((CAN_T_SLEEP == Can_GaaCtrlState[LucCtrlIndex].enMode)
        && (CAN_NO_PENDING_TRANSITION ==
        Can_GaaCtrlState[LucCtrlIndex].enSubState))
      {
        /* The state transition takes a long time,
           the subsequent operation will be done in Can_MainFunction_Mode */
        Can_GaaCtrlState[LucCtrlIndex].enSubState =
                                            CAN_PENDING_WAKEUP_REQUESTED;
        /* References: CAN_DDD_ACT_031_GBL001 */
        /* Store the wakeup event */
        Can_GaaCtrlState[LucCtrlIndex].blWakeupEventOccurred = CAN_TRUE;
        /* References: CAN_DDD_ACT_031_GBL002 */
        Can_GaaCtrlState[LucCtrlIndex].blWakeupByHW = CAN_TRUE;
        /* References: CAN_DDD_ACT_031_GBL003 */
        LblCheckWakeupRequired = CAN_TRUE;
      }
      else
      {
        /* If the state transition is already on-going, nothing to do */
        LblCheckWakeupRequired = CAN_FALSE;
      }
      CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_031_CRT002 */

      /* Wakeup the controller and invoke EcuM_CheckWakeup call-back function to
         give wakeup notification */
      if (CAN_TRUE == LblCheckWakeupRequired)
      {
        Can_WakeupMode(LucCtrlIndex, CAN_WAKEUP_ISR_API_ID);
        EcuM_CheckWakeup((EcuM_WakeupSourceType)CAN_DEFAULT_ONE <<
                          (LpPCController->ucWakeupSourceId));
      }
      else
      {
        /* No action required */
      }
    }
  }
  else
  {
    /* No action required */
  }
}
#endif /* (CAN_CONTROLLERn_WAKEUP_INTERRUPT == STD_ON) */

/*******************************************************************************
** Function Name         : CAN_CONTROLLERn_WAKEUP_ISR
**
** Service ID            : Not Applicable
**
** Description           : This is WAKEUPn Interrupt Service routines for the
**                         Can hardware unit.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : None
**
** Functions Invoked     : Can_WakeupIsr
**
** Registers Used        : (CFD)GSTS, (CFD)CmSTS,(CFD)GCTR,(CFD)CmCTR
*******************************************************************************/
#if (CAN_CONTROLLER0_WAKEUP_INTERRUPT == STD_ON)
#if defined (Os_CAN_CONTROLLER0_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER0_WAKEUP_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER0_WAKEUP_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  /* References: CAN_DDD_ACT_023 */
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER0);
}
#endif

#if (CAN_CONTROLLER1_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER1_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER1_WAKEUP_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER1_WAKEUP_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER1);
}
#endif

#if (CAN_CONTROLLER2_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER2_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER2_WAKEUP_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER2_WAKEUP_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER2);
}
#endif

#if (CAN_CONTROLLER3_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER3_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER3_WAKEUP_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER3_WAKEUP_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER3);
}
#endif

#if (CAN_CONTROLLER4_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER4_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(1:1503)-8 */
/* MISRA Violation: START Msg(2:3408)-4 */
ISR(CAN_CONTROLLER4_WAKEUP_CAT2_ISR)
/* END Msg(2:3408)-4 */
/* END Msg(1:1503)-8 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER4_WAKEUP_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER4);
}
#endif

#if (CAN_CONTROLLER5_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER5_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER5_WAKEUP_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER5_WAKEUP_ISR(void)
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER5);
}
#endif

#if (CAN_CONTROLLER6_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER6_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
/* MISRA Violation: START Msg(2:3408)-4 */
/* MISRA Violation: START Msg(1:1503)-8 */
ISR(CAN_CONTROLLER6_WAKEUP_CAT2_ISR)
/* END Msg(1:1503)-8 */
/* END Msg(2:3408)-4 */
/* Defines the CAT1 interrupt mapping */
#else
/* MISRA Violation: START Msg(1:1503)-8 */
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER6_WAKEUP_ISR(void)
/* END Msg(1:1503)-8 */
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER6);
}
#endif

#if (CAN_CONTROLLER7_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER7_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER7_WAKEUP_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER7_WAKEUP_ISR(void)
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER7);
}
#endif

#if (CAN_CONTROLLER8_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER8_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER8_WAKEUP_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER8_WAKEUP_ISR(void)
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER8);
}
#endif

#if (CAN_CONTROLLER9_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER9_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER9_WAKEUP_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER9_WAKEUP_ISR(void)
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER9);
}
#endif

#if (CAN_CONTROLLER10_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER10_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER10_WAKEUP_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER10_WAKEUP_ISR(void)
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER10);
}
#endif

#if (CAN_CONTROLLER11_WAKEUP_INTERRUPT == STD_ON)
/* Defines the CAT2 interrupt mapping */
#if defined (Os_CAN_CONTROLLER11_WAKEUP_CAT2_ISR) || \
  (CAN_ISR_CATEGORY_2 == STD_ON)
ISR(CAN_CONTROLLER11_WAKEUP_CAT2_ISR)
/* Defines the CAT1 interrupt mapping */
#else
_INTERRUPT_ FUNC(void, CAN_RSCAN_FAST_CODE) CAN_CONTROLLER11_WAKEUP_ISR(void)
#endif
{
  Can_WakeupIsr(CAN_PHYIDX_CONTROLLER11);
}
#endif
#endif /* (CAN_WAKEUP_SUPPORT == STD_ON) */

#define CAN_RSCAN_STOP_SEC_CODE_FAST
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-9 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-9 */
/* END Msg(2:0832)-1 */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
