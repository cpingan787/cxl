/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_RamTest.c                                               */
/* Version      = V1.0.3                                                      */
/* Date         = 13-Dec-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved         */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of RAM Test using CheckerBoard and WalkPath                      */
/* Algorithms.                                                                */
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
 *          13-Jul-2019  : Change write verify and RAM mirror to INLINE function
 *          01-Aug-2019  : Improve write verify by using Can_VerifyWriteReg
 *                         function and macro CAN_WRITE_VERIFY_RUNTIME.
 * V1.0.1:  03-Sep-2020  : As per ARDAABD-2481, Change CAN_RELEASELOCK
 *                         location to begin of the loop.
 * V1.0.2:  16-Mar-2021  : As per ARDAABD-2992, Update Global Variable Used and
 *                         register used of all functions at function's banner.
 *                         As per ARDAABD-2517: Update Function Invoked of    
 *                         functions at function's banner.  
 *          03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                         Remove QAC message (4:0310),(2:3416), (2:3892).
 *                         Add QAC message (2:0857), (4:5087), (1:1503).
 *          03-Jun-2021  : Added QAC Warning messages.
 * V1.0.3:  13-Dec-2021  : Added comment QAC messages.
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
// #include "Compiler.h"
#include "Can.h"
#include "Can_Ram.h"
#include "Can_LTTypes.h"
/* MISRA Violation: START Msg(2:0857)-4 */
#include "Can_RegWrite.h"
/* END Msg(2:0857)-4 */
#if (CAN_RAMTEST_API == STD_ON)
/* CAN Driver RAM Test Header File */
/* MISRA Violation: START Msg(2:0857)-4 */
#include "Can_RamTest.h"
/* END Msg(2:0857)-4 */
#endif
/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0488) Performing Pointer arithmetic.                    */
/* Rule          : MISRA-C:2004 Rule-17.4                                     */
/* Justification : Increment operator not used to achieve better throughput.  */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0488)-1 and                           */
/*                 END Msg(2:0488)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:1055) [C99] The keyword 'inline' has been used.         */
/* Rule          : MISRA-C:2004 Rule-1.1                                      */
/* Justification : This message is allowed in F1x to improve software metric. */
/*                                                                            */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:1055)-2 and                           */
/*                 END Msg(2:1055)-2 tags in the code.                        */
/******************************************************************************/

/* 3. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3458) Macro defines a braced code statement block.      */
/* Rule          : MISRA-C:2004 Rule-19.4                                     */
/* Justification : Since the macros are implemented as function macros braces */
/*                 cannot be avoided.                                         */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for  MISRA Violation: START Msg(2:3458)-3 and         */
/*                 END Msg(2:3458)-3 tags in the code.                        */
/******************************************************************************/

/* 4. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0857) [L] Number of macro definitions exceeds 1024 -    */
/*                 program does not conform strictly to ISO:C90.              */
/*                 object is never used before being modified.                */
/* Rule          : MISRA-C:2004 Rule-1.1                                      */
/* Justification : This is accepted as of macros are used for better          */
/*                 readability of code and/or to support configuration        */
/*                 flexibility                                                */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0857)-4 and                           */
/*                 END Msg(2:0857)-4 tags in the code.                        */
/******************************************************************************/

/* 5. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include memmap */
/*                 is following AUTOSAR rule.                                 */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:5087)-5 and                           */
/*                 END Msg(4:5087)-5 tags in the code.                        */
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

/* 2. QAC warning:                                                            */
/* Message       : (2:3227) The parameter '%s' is never modified and          */
/*                 so it could be declared with the 'const' qualifier.        */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3227           */
/*                 REFERENCE - ISO:C90-6.5.3 Type Qualifiers                  */
/* Justification : To follow AUTOSAR and/or Renesas requirement for this API, */
/*                 the const shall not be used.                               */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:3227)-2 and                           */
/*                 END Msg(2:3227)-2 tags in the code.                        */
/******************************************************************************/

/* 3. QAC warning:                                                            */
/* Message       : (2:3457) Macro defines a braced initializer.               */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3457           */
/* Justification : Since the macros are implemented as function macros braces */
/*                 cannot be avoided.                                         */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:3457)-3 and                           */
/*                 END Msg(2:3457)-3 tags in the code.                        */
/******************************************************************************/

/******************************************************************************/
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
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */
#if (CAN_RAMTEST_API == STD_ON)
#if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME)
/* MISRA Violation: START Msg(2:1055)-2 */
static INLINE FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_VerifyWriteReg(
  CONSTP2CONST(volatile uint32, AUTOMATIC, REGSPACE) LpWriteRegAddr,
  CONST(uint32, AUTOMATIC) LulRegWriteValue,
  CONST(uint32, AUTOMATIC) LulMaskValue,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(2:1055)-2 */
{
  /* References: CAN_DDD_ACT_069 */
  CAN_VERIFY_WRITE_REG(LpWriteRegAddr, LulRegWriteValue, LulMaskValue, LucApiId)
}
#endif /* End of #if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME) */

#if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME)
  /* MISRA Violation: START Msg(2:3458)-3 */
  #define CAN_WRITE_VERIFY_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
  }
  /* END Msg(2:3458)-3 */
#else
  /* QAC Warning: START Msg(2:3457)-3 */
  #define CAN_WRITE_VERIFY_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
  }
  /* END Msg(2:3457)-3 */
#endif /* End of #if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME) */
#endif /* End of #if (CAN_RAMTEST_API == STD_ON) */
/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/
/*******************************************************************************
** Function Name         : Can_RamTest_Checker_Algorithm
**
** Service ID            : Not Applicable
**
** Description           : Function for RAM testing using the CheckerBoard
**                         Algorithm.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non-Reentrant
**
** Input Parameters      : LucTestedCellNumber, LucUnit
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : LenReturnVal
**
** Preconditions         : The CAN Driver must be in Global test state.
**
** Global Variables Used : Can_GaaRegs, Can_GulPageID(R)
**
** Function(s) invoked   : None
**
** Registers Used        : RSCANnGTSTCFG, RSCANnGTSTCTR, 
**                         RSCANnGLOCKK, RSCANnRPGACCr.
**
*******************************************************************************/
#if (CAN_RAMTEST_API == STD_ON)
/* QAC Warning: START Msg(2:3227)-2 */
FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_RamTest_Checker_Algorithm
                                      (uint8 LucTestedCellNumber, uint8 LucUnit)
/* END Msg(2:3227)-2 */
{
  /* References: CAN_DDD_ACT_062 */
  Std_ReturnType LenReturnVal;
  uint8 LucIndex;
  /* LucTestRun needed for the algorithm */
  uint8 LucTestRun;
  uint32 LulValue;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANRPGACCReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGLOCKKReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGTSTCTRReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGTSTCFGReg;

  LulValue = CAN_RAM_TEST_DATA;
  LenReturnVal = E_OK;

  LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
  LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;
  LpRCANGTSTCFGReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCFG;
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
  {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pFD->aaRPGACC[0];
#endif
  }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  else
#endif
  {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pCmn->aaRPGACC[0];
#endif
  }

  /* Write protection data to GLOCKK register and Enable RAM Test mode */
  CAN_RELEASELOCK
  /* References: CAN_DDD_ACT_062_REG001 */
  /* write 0 and 1 in consecutive locations */
  for (LucTestRun = CAN_ZERO;
        (LucTestRun < CAN_TWO) && (E_OK == LenReturnVal);
                                                      LucTestRun++)
  {
    /* write 0 and 1 in consecutive locations */
    for (LucIndex = CAN_ZERO;
          LucIndex < LucTestedCellNumber; LucIndex++)
    {
      /* Select the page for Ram Test*/
      CAN_WRITE_VERIFY_RUNTIME(
        LpRCANGTSTCFGReg,
        CAN_RSCAN_RTMPS(Can_GulPageID),
        CAN_COMMON_REG_MASK,
        CAN_RAMTEST_SID)
      /* References: CAN_DDD_ACT_062_REG002 */
      /* MISRA Violation: START Msg(2:0488)-1 */
      *(LpRCANRPGACCReg + LucIndex) = LulValue;
      /* END Msg(2:0488)-1 */
      /* References: CAN_DDD_ACT_062_REG003 */
      LulValue = ~LulValue;
    }
    /* Check whether the number of tested cell is odd or even */
    if (CAN_ZERO != (uint8)(LucTestedCellNumber & CAN_ONE))
    {
      LulValue = ~LulValue;
    }
    else
    {
      /* No action required */
    }

    /* Read 0 and 1 in consecutive locations */
    for (LucIndex = CAN_ZERO;
          (LucIndex < LucTestedCellNumber) && (E_OK == LenReturnVal);
                                                                    LucIndex++)
    {
      /* Select the page for Ram Test*/
      CAN_WRITE_VERIFY_RUNTIME(
        LpRCANGTSTCFGReg,
        CAN_RSCAN_RTMPS(Can_GulPageID),
        CAN_COMMON_REG_MASK,
        CAN_RAMTEST_SID)
      /* MISRA Violation: START Msg(2:0488)-1 */
      /* References: CAN_DDD_ACT_062_REG005 */
      /* Check whether the data are correct */
      if (*(LpRCANRPGACCReg + LucIndex) != LulValue)
      /* END Msg(2:0488)-1 */
      {
        LenReturnVal = E_NOT_OK;
      }
      else
      {
        /* No action required */
      }
      LulValue = ~LulValue;
    }
    LulValue = ~(CAN_RAM_TEST_DATA);
  }

  return (LenReturnVal);
} /* End of Can_RamTest_Checker_Algorithm () */
#endif /* End of CAN_RAMTEST_API == STD_ON */

/*******************************************************************************
** Function Name         : Can_RamTst_WalkPath_Algorithm
**
** Service ID            : Not Applicable
**
** Description           : Function for RAM testing using the WalkPath
**                         Algorithm.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non-Reentrant
**
** Input Parameters      : LucTestedCellNumber, LucUnit, LenWalkPathType
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : LenReturnVal
**
** Preconditions         : The CAN Driver must be in Global stop state.
**
** Global Variables Used : Can_GaaRegs, Can_GulPageID(R)
**
** Function(s) invoked   : Can_RamTst_Set_RAMData
**
** Registers Used        : RSCANnGTSTCFG, RSCANnGTSTCTR,
**                         RSCANnGLOCKK, RSCANnRPGACCr.
**
*******************************************************************************/
#if (CAN_RAMTEST_API == STD_ON)
/* QAC Warning: START Msg(2:3227)-2 */
FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_RamTst_WalkPath_Algorithm
 (uint8 LucTestedCellNumber, uint8 LucUnit, Can_RamTestWalkType LenWalkPathType)
/* END Msg(2:3227)-2 */
{
  /* References: CAN_DDD_ACT_064 */
  /* LulIndex of the cells */
  uint8 LucCellnumber;
  /* Cell to be tested */
  uint8 LucBaseCell;
  /* Bit to be tested in the cell */
  uint8 LucBaseBit;
  /* Total number of bits */
  uint32 LulTotalbits;
  /* Bit numbering */
  uint32 LulIndex;
  /* Pointers for RAM Test registers */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANRPGACCReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGLOCKKReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGTSTCTRReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGTSTCFGReg;
  /* Initialize the tested cells with LulValue 0 or 1 */
  uint32 LulBackGroundVariable;
  Can_RamTestFillType LenRamFillType;

  Std_ReturnType LenReturnVal = E_OK;
  LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
  LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;
  LpRCANGTSTCFGReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCFG;
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
  {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pFD->aaRPGACC[0];
#endif
  }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  else
#endif
  {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pCmn->aaRPGACC[0];
#endif
  }

  if (CAN_RAMTEST_WALK_0 == LenWalkPathType)
  {
    LulBackGroundVariable = CAN_RAM_TEST_SET_DATA;
    LenRamFillType = CAN_RAMTEST_FILL_1;
  }
  else
  {
    LulBackGroundVariable = CAN_RAM_TEST_CLEAR_DATA;
    LenRamFillType = CAN_RAMTEST_FILL_0;
  }
  /* Fill all cells with either zero or one */
  Can_RamTst_Set_RAMData(LucTestedCellNumber, LucUnit, LenRamFillType);
  LulTotalbits = (uint32)LucTestedCellNumber << CAN_RAMTST_CELL_DIVIDER;

  /* Write protection data to GLOCKK register and Enable RAM Test mode */
  CAN_RELEASELOCK
  /* References: CAN_DDD_ACT_064_REG001 */

   /* Select the base bit to be tested in the ascending order. (LSB to MSB) */
  for (LulIndex = (uint32)CAN_ZERO; (LulIndex < LulTotalbits) &&
                                            (E_OK == LenReturnVal); LulIndex++)
  {
    LucBaseCell = (uint8)(LulIndex >> CAN_RAMTST_CELL_DIVIDER);
    LucBaseBit = (uint8)(LulIndex & (CAN_RAM_TEST_DATA_TYPE - CAN_ONE));

    /* Select the page for Ram Test*/
    CAN_WRITE_VERIFY_RUNTIME(
      LpRCANGTSTCFGReg,
      CAN_RSCAN_RTMPS(Can_GulPageID),
      CAN_COMMON_REG_MASK,
      CAN_RAMTEST_SID)
    /* References: CAN_DDD_ACT_064_REG002 */
    /* Invert the base bit */
    /* MISRA Violation: START Msg(2:0488)-1 */
    CAN_RAMTST_INVERT_BITX(*(LpRCANRPGACCReg + LucBaseCell), LucBaseBit,
                           uint32);
    /* END Msg(2:0488)-1 */
    /* References: CAN_DDD_ACT_064_REG003 */

    /* Read and check all other bits in the tested cells (LSB to MSB) */
    for (LucCellnumber = CAN_ZERO;
      (LucCellnumber < LucTestedCellNumber) && (E_OK == LenReturnVal);
                                                                LucCellnumber++)
    {
      /* Select the page for Ram Test*/
      CAN_WRITE_VERIFY_RUNTIME(
        LpRCANGTSTCFGReg,
        CAN_RSCAN_RTMPS(Can_GulPageID),
        CAN_COMMON_REG_MASK,
        CAN_RAMTEST_SID)
      /* References: CAN_DDD_ACT_064_REG005 */
      /* Check for the base cell */
      if (LucCellnumber == LucBaseCell)
      {
        /* MISRA Violation: START Msg(2:0488)-1 */
        if (*(LpRCANRPGACCReg + LucBaseCell) !=
                      (LulBackGroundVariable ^ ((uint32)CAN_ONE << LucBaseBit)))
        /* END Msg(2:0488)-1 */
        {
          LenReturnVal = E_NOT_OK;
        }
        else
        {
          /* Do nothing */
        }
      }
      /* MISRA Violation: START Msg(2:0488)-1 */
      /* Check the content of all other cells excluding the base cell */
      else if (*(LpRCANRPGACCReg + LucCellnumber) != LulBackGroundVariable)
      /* END Msg(2:0488)-1 */
      {
        LenReturnVal = E_NOT_OK;
      }
      else
      {
        /* Do nothing */
      }
    }
    /* Select the page for Ram Test*/
    CAN_WRITE_VERIFY_RUNTIME(
      LpRCANGTSTCFGReg,
      CAN_RSCAN_RTMPS(Can_GulPageID),
      CAN_COMMON_REG_MASK,
      CAN_RAMTEST_SID)
    /* References: CAN_DDD_ACT_064_REG007 */
    /* Re-invert the base cell */
    /* MISRA Violation: START Msg(2:0488)-1 */
    CAN_RAMTST_INVERT_BITX(*(LpRCANRPGACCReg + LucBaseCell), LucBaseBit,
                           uint32);
    /* END Msg(2:0488)-1 */
    /* References: CAN_DDD_ACT_064_REG008 */
  }

  return (LenReturnVal);
} /* End of RamTst_WalkPath_Algorithm */
#endif /* End of CAN_RAMTEST_API == STD_ON */

/*******************************************************************************
** Function Name         : Can_RamTst_Set_RAMData
**
** Service ID            : Not Applicable
**
** Description           : Function for setting all cells of RAM to zero or one
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non-Reentrant
**
** Input Parameters      : LucTestedCellNumber, LucUnit, LenRAMFillType
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be in Global stop state.
**
** Global Variables Used : Can_GaaRegs, Can_GulPageID(R)
**
** Function(s) invoked   : None
**
** Registers Used        : RSCANnGTSTCFG, RSCANnGTSTCTR,
**                         RSCANnGLOCKK, RSCANnRPGACCr.
**
*******************************************************************************/
#if (CAN_RAMTEST_API == STD_ON)
/* QAC Warning: START Msg(2:3227)-2 */
FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RamTst_Set_RAMData
  (uint8 LucTestedCellNumber, uint8 LucUnit, Can_RamTestFillType LenRAMFillType)
/* END Msg(2:3227)-2 */
{
  /* References: CAN_DDD_ACT_063 */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANRPGACCReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGLOCKKReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGTSTCTRReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGTSTCFGReg;
  uint32 LulRamInitData;
  /* LulIndex of the cells */
  uint8 LucCellnumber;

  LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
  LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;
  LpRCANGTSTCFGReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCFG;
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
  {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pFD->aaRPGACC[0];
#endif
  }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
  else
#endif
  {
#if (CAN_RSCAN_CONFIGURED == STD_ON)
    LpRCANRPGACCReg = &Can_GaaRegs[LucUnit].pCmn->aaRPGACC[0];
#endif
  }

  /* Determine which data to be initialized in RAM */
  if (CAN_RAMTEST_FILL_1 == LenRAMFillType)
  {
    LulRamInitData = CAN_RAM_TEST_SET_DATA;
  }
  else
  {
    LulRamInitData = CAN_RAM_TEST_CLEAR_DATA;
  }
  /* Write protection data to GLOCKK register and Enable RAM Test mode */
  CAN_RELEASELOCK
  /* References: CAN_DDD_ACT_063_REG001 */

  /* Fill all bits with RAM init data */
  for (LucCellnumber = CAN_ZERO;
    LucCellnumber < LucTestedCellNumber; LucCellnumber++)
  {
    /* Select the page for Ram Test*/
    CAN_WRITE_VERIFY_RUNTIME(
      LpRCANGTSTCFGReg,
      CAN_RSCAN_RTMPS(Can_GulPageID),
      CAN_COMMON_REG_MASK,
      CAN_RAMTEST_SID)
    /* References: CAN_DDD_ACT_063_REG002 */
    /* MISRA Violation: START Msg(2:0488)-1 */
    *(LpRCANRPGACCReg + LucCellnumber) = LulRamInitData;
    /* END Msg(2:0488)-1 */
    /* References: CAN_DDD_ACT_063_REG003 */
  }
} /* End of Can_RamTst_Set_RAMData */
#endif /* End of CAN_RAMTEST_API == STD_ON */
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-1 */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
