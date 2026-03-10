/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_ModeCntrl.c                                             */
/* Version      = V1.0.5                                                      */
/* Date         = 20-Dec-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved         */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of Controller Mode Control Functionality.                        */
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
/*              Devices:       X1x                                            */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0: 31-May-2019  : Initial version
 *         13-Jul-2019  : Change write verify and RAM mirror to INLINE function
 *         01-Aug-2019  : Improve write verify by using Can_VerifyWriteReg
 *                        Can_VerifyWriteRegInitRuntime functions and macro
 *                        functions CAN_WRITE_VERIFY_MIRROR_INIT_RUNTIME,
 *                        CAN_WRITE_VERIFY_RUNTIME,
 *                        CAN_WRITE_VERIFY_MIRROR_RUNTIME.
 *                        Add argument LucApiId for internal function.
 *         25-Sep-2019  : Update MISRA C Rule Violations, remove QAC message
 *                        (4:2995).
 *         05-Nov-2019  : Remove critical section in Can_GlobalModeChange() and
 *                        Can_ChannelModeChange().
 * V1.0.1: 16-Sep-2020  : As per ARDAACH-224, remove DET error condition
 *                        check and add inform to CanIf when Transition
 *                        CAN_T_WAKEUP and current mode is CAN_T_STOP in
 *                        Can_SetControlerMode() API.
 *         17-Sep-2020  : As per ARDAACH-231, 
 *                        + Remove block code indicates to
 *                        CanIf when transition to STOPED and
 *                        CAN_TENTATIVE_TRANSITION != enSubState
 *                        + Add condition check busoff flag is false before
 *                        invoking Can_StopMode in Can_SetControlerMode
 *                        + Remove condition check busoff flag in Can_StopMode
 *         24-Sep-2020  : Add QAC justification and comments.
 * V1.0.2: 16-Mar-2021  : As per ARDAABD-2992, Update Global Variable Used and
 *                        register used of all functions at function's banner.
 *                        As per ARDAABD-2517: Update Function Invoked of    
 *                        functions at function's banner.  
 *         22-Mar-2021  : As per ARDAABD-5507, update precondition of API 
 *                        Can_SelfTestChannel() in function banner.
 *         03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                        Remove QAC message (2:3416), (2:2016).
 *                        Add QAC message (2:0857), (4:5087),(1:1503),
 *                        (1:1505), (2:2982), (2:3138).
 *         03-Jun-2021  : Added QAC Warning messages.
 * V1.0.3: 19-Jul-2021  : As per ARDAABD-6769, Updated to change bit-size passed
 *                        from 16 to 8 when access bit EIMK of EIC register.
 *         02-Aug-2021  : Add QAC message (2:3892), (4:4461).
 * V1.0.4: 02-Dec-2021  : As per ARDAABF-1000, Correct the casting at
 *                        Can_ClearRxBuffers(), Can_EnableTxBuffers().
 *         14-Dec-2021  : Add comment QAC messages.
 * V1.0.5: 20-Dec-2021  : To support P1M-E, implement register DNFA in
 *                        Can_SleepMode.
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* CAN module header file */
#include "Can.h"
/* Included for RAM variable declarations */
#include "Can_Ram.h"
#include "Can_Irq.h"
/* MISRA Violation: START Msg(2:0857)-4 */
#include "Can_RegWrite.h"
/* END Msg(2:0857)-4 */
#if (CAN_DEV_ERROR_DETECT == STD_ON)
/* Included for the declaration of Det_ReportError() */
#include "Det.h"
#endif
/* Included for the declaration of Dem_ReportErrorStatus() */
#if defined(CAN_E_TIMEOUT_FAILURE)
#include "Dem.h"
#endif
/* CAN Interface call-back Header File */
/* MISRA Violation: START Msg(2:0857)-4 */
#include "CanIf.h"
/* END Msg(2:0857)-4 */
/* CAN Mode Control Header File */
/* MISRA Violation: START Msg(2:0857)-4 */
#include "Can_ModeCntrl.h"
/* END Msg(2:0857)-4 */
/* CAN Main Processing Header File */
#include "Can_MainServ.h"
#if (CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
/* Included for the declaration of the critical section protection functions */
#include "SchM_Can.h"
#endif
/*
 * OS Header File to have the prototype of GetCounterValue() for getting current
 * tick of OS
 */
#include "Os.h"
/* Included for RH850_SV_MODE macros */
#include "rh850_Types.h"


/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_MODECNTRL_C_AR_RELEASE_MAJOR_VERSION CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_MODECNTRL_C_AR_RELEASE_MINOR_VERSION CAN_AR_RELEASE_MINOR_VERSION
#define CAN_MODECNTRL_C_AR_RELEASE_REVISION_VERSION \
                                              CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_MODECNTRL_C_SW_MAJOR_VERSION    CAN_MODECNTRL_SW_MAJOR_VERSION
#define CAN_MODECNTRL_C_SW_MINOR_VERSION    CAN_MODECNTRL_SW_MINOR_VERSION

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_MODECNTRL_C_AR_RELEASE_MAJOR_VERSION != \
        CAN_AR_RELEASE_MAJOR_VERSION_VALUE)
    #error "Can_ModeCntrl.c : Mismatch in Release Major Version"
#endif
#if (CAN_MODECNTRL_C_AR_RELEASE_MINOR_VERSION != \
        CAN_AR_RELEASE_MINOR_VERSION_VALUE)
    #error "Can_ModeCntrl.c : Mismatch in Release Minor Version"
#endif
#if (CAN_MODECNTRL_C_AR_RELEASE_REVISION_VERSION != \
        CAN_AR_RELEASE_REVISION_VERSION_VALUE)
    #error "Can_ModeCntrl.c : Mismatch in Release Revision Version"
#endif

#if (CAN_MODECNTRL_C_SW_MAJOR_VERSION != CAN_SW_MAJOR_VERSION_VALUE)
  #error "Can_ModeCntrl.c : Mismatch in Software Major Version"
#endif
#if (CAN_MODECNTRL_C_SW_MINOR_VERSION != CAN_SW_MINOR_VERSION_VALUE)
  #error "Can_ModeCntrl.c : Mismatch in Software Minor Version"
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
/* Message       : (2:1055) [C99] The keyword 'inline' has been used.         */
/* Rule          : MISRA-C:2004 Rule 1.1                                      */
/* Justification : This message is allowed in F1x to improve software metric. */
/*                                                                            */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:1055)-2 and                           */
/*                 END Msg(2:1055)-2 tags in the code.                        */
/******************************************************************************/

/* 3. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3458) Macro defines a braced code statement block.      */
/* Rule          : MISRA-C:2004 Rule 19.4                                     */
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

/* 6. MISRA C RULE VIOLATION:                                                 */
/* Message       : (1:1503) The function '%1s' is defined but is not used     */
/*                 within this project.                                       */
/* Rule          : MISRA-C:2004 Rule-14.1                                     */
/* Justification : This is accepted, due to the module's API                  */
/*                 is exported for user's usage.                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(1:1503)-6 and                           */
/*                 END Msg(1:1503)-6 tags in the code.                        */
/******************************************************************************/

/* 7. MISRA C RULE VIOLATION:                                                 */
/* Message       : (1:1505) The function '%1s' is only referenced ............*/
/*                 in the translation unit where it is defined.               */
/* Rule          : MISRA-C:2004 Rule-8.10                                     */
/* Justification : This is accepted, due to following coding rule,            */
/*                 internal function can be defined in other C source files   */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(1:1505)-7 and                           */
/*                 END Msg(1:1505)-7 tags in the code.                        */
/******************************************************************************/

/* 8. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3138) Null statement is located close to other code or  */
/*                 comments.                                                  */
/* Rule          : MISRA-C:2004 Rule-14.3                                     */
/* Justification : This is limitation of QAC since it can't compile assembler */
/*                 There is no impact on operation.                           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3138)-8  and                          */
/*                 END Msg(2:3138)-8  tags in the code.                       */
/******************************************************************************/

/* 9. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:2982) This assignment is redundant. The value of this   */
/*                 object is never used before being modified.                */
/* Rule          : MISRA-C:2004 Rule-21.1                                     */
/* Justification : This variable is necessary to initialized before using.    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:2982)-9 and                           */
/*                 END Msg(2:2982)-9 tags in the code.                        */
/******************************************************************************/

/* 10. MISRA C RULE VIOLATION:                                                */
/* Message       : (4:4461) A non-constant expression of 'essentially         */
/*                 unsigned' type (%1s) is being converted to                 */
/*                 narrower unsigned type, '%2s' on assignment.               */
/* Rule          : MISRA-C:2004 Rule-10.1                                     */
/* Justification : This is use for accessing to 16 LSB of PMSR registers.     */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:4461)-10 and END Msg(4:4461)-10 tags  */
/*                 in the code.                                               */
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

/* 4. QAC Warning:                                                            */
/* Message       : (2:3441) Function call argument is an expression with      */
/*                 possible side effects                                      */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3441           */
/* Justification : Logical operation accesses volatile object which is a      */
/*                 register access and timeout counter. All register addresses*/
/*                 and timeout counter are generated with volatile qualifier. */
/*                 There is no impact on the functionality                    */
/*                 due to this conditional check for mode change.             */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3441)-4 and END Msg(2:3441)-4         */
/*                 tags in the code.                                          */
/******************************************************************************/

/* 5. QAC Warning:                                                            */
/* Message       : (3:3206) The parameter is not used in this function.       */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3206           */
/* Justification : This is done as per implementation requirement             */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(3:3206)-5 and                           */
/*                 END Msg(3:3206)-5 tags in the code.                        */
/******************************************************************************/

/* 6. QAC Warning:                                                            */
/* Message       : (2:3462) Argument to macro '%s' appears to contain a       */
/*                 side effect, but it is not used.                           */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3462           */
/* Justification : Typecasting is done as per the register size,              */
/*                 to access hardware registers.                              */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:3462)-6 and                           */
/*                 END Msg(2:3462)-6 tags in the code.                        */
/******************************************************************************/

/* 7. QAC Warning:                                                            */
/* Message       : (2:3892) The result of this cast is implicitly converted   */
/*                  to another type                                           */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3892           */
/* Justification : This implicit conversion is done to access the data from   */
/*                  the post build configuration                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.Also this is not a MISRA violation   */
/* Reference     : Look for QAC Warning START Msg(2:3892)-7 and               */
/*                 END Msg(2:3892)-7 tags in the code.                        */
/******************************************************************************/
/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/
/*******************************************************************************
**                      Inline Function Definitions                           **
*******************************************************************************/
/*******************************************************************************
** Function Name         : Can_VerifyWriteRegInitRuntime
**
** Description           : This function is to check write verify in the
**                         internal function called by both Can_Init and other
**                         API.
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
/* QAC Warning: START Msg(2:0832)-2 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-2 */
#if (CAN_WRITE_VERIFY != CAN_WV_DISABLE)
/* MISRA Violation: START Msg(2:1055)-2 */
static INLINE FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_VerifyWriteRegInitRuntime(
  CONSTP2CONST(volatile uint32, AUTOMATIC, REGSPACE) LpWriteRegAddr,
  CONST(uint32, AUTOMATIC) LulRegWriteValue,
  CONST(uint32, AUTOMATIC) LulMaskValue,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(2:1055)-2 */
{
  /* References: CAN_DDD_ACT_068 */
#if (CAN_WRITE_VERIFY == CAN_WV_INIT_ONLY)
  if (CAN_INIT_SID == LucApiId)
#endif
  {
    CAN_VERIFY_WRITE_REG(
      LpWriteRegAddr, LulRegWriteValue,
      LulMaskValue, LucApiId)
  }
#if (CAN_WRITE_VERIFY == CAN_WV_INIT_ONLY)
  else
  {
    /* Do nothing */
  }
#endif /* #if (CAN_WRITE_VERIFY == CAN_WV_INIT_ONLY) */
}
#endif /* #if (CAN_WRITE_VERIFY != CAN_WV_DISABLE) */

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
#if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME)
/* MISRA Violation: START Msg(2:1055)-2 */
static INLINE FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_VerifyWriteReg(
  CONSTP2CONST(volatile uint32, AUTOMATIC, REGSPACE) LpWriteRegAddr,
  CONST(uint32, AUTOMATIC) LulRegWriteValue,
  CONST(uint32, AUTOMATIC) LulMaskValue,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(2:1055)-2 */
{
  /* References: CAN_DDD_ACT_067 */
  CAN_VERIFY_WRITE_REG(LpWriteRegAddr, LulRegWriteValue, LulMaskValue, LucApiId)
}
#endif /* End of #if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME) */
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-2 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-2 */

#if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME)
  /* MISRA Violation: START Msg(2:3458)-3 */
  #define CAN_WRITE_VERIFY_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
  }
  /* END Msg(2:3458)-3 */

  /* MISRA Violation: START Msg(2:3458)-3 */
  #define CAN_WRITE_VERIFY_MIRROR_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, pMirrorAddr, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
    CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
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

  /* QAC Warning: START Msg(2:3457)-3 */
  #define CAN_WRITE_VERIFY_MIRROR_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, pMirrorAddr, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
  }
  /* END Msg(2:3457)-3 */
#endif

#if (CAN_WRITE_VERIFY != CAN_WV_DISABLE)
  /* MISRA Violation: START Msg(2:3458)-3 */
  #define CAN_WRITE_VERIFY_MIRROR_INIT_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, pMirrorAddr, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteRegInitRuntime(\
                             pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
    CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
  }
  /* END Msg(2:3458)-3 */
#else
  /* QAC Warning: START Msg(2:3457)-3 */
  #define CAN_WRITE_VERIFY_MIRROR_INIT_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, pMirrorAddr, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
  }
  /* END Msg(2:3457)-3 */
#endif

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-2 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-2 */

#if (CAN_RX_OBJECT == STD_ON)
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_ClearRxBuffers(
  const uint8 LucUnit, const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId);
#endif

#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON) || \
  (CAN_TX_QUEUE == STD_ON))
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_EnableTxBuffers(
  const uint8 LucUnit, const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId);
#endif

#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-2 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-2 */
/*******************************************************************************
** Function Name         : Can_SetControllerMode
**
** Service ID            : 0x03
**
** Description           : This function calls the corresponding CAN Driver
**                         service for changing the CAN Controller Mode. It
**                         initiates a transition to the requested CAN
**                         Controller Mode.
**
** Sync/Async            : Asynchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : Controller : Controller ID
**                         Transition : Target state
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized and during the
**                         function executes the Wake-up interrupt must be
**                         disabled so that the Wake-up status can be checked
**                         inside this function.
**
** Global Variables Used : Can_GaaCtrlState, Can_GpPCController
**
** Function(s) invoked   : Can_CommonDetCheck, Det_ReportError, Can_SleepMode,
**                         Can_StartMode, Can_StopMode, Can_WakeupMode
**                         CanIf_ControllerModeIndication,
**                         CAN_ENTER_CRITICAL_SECTION,
**                         CAN_EXIT_CRITICAL_SECTION
**
** Registers Used        : (CFD)CmSTS,(CFD)CmCTR, (CFD)CmERFL,
**                         (CFD)THLCCm,CFD)GSTS,(CFD)GCTR,(CFD)CFCCk,
**                         (CFD)TXQCCm,(CFD)RFCCx,(CFD)RMNDy
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-2 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-2 */
/* MISRA Violation: START Msg(1:1503)-6 */
/* QAC Warning: START Msg(2:3227)-1 */
FUNC(Can_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_SetControllerMode(
  uint8 Controller, Can_StateTransitionType Transition)
/* END Msg(2:3227)-1 */
/* END Msg(1:1503)-6 */
{
  /* References: CAN_DDD_ACT_003 */
  Can_StateTransitionType LenCurrentMode;
  Can_ReturnType LenReturnValue;
#if (CAN_WAKEUP_SUPPORT == STD_ON)
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
#endif

  /* Get the current mode of the Controller */
  LenCurrentMode = Can_GaaCtrlState[Controller].enMode;

#if (CAN_DEV_ERROR_DETECT == STD_ON)
  LenReturnValue = Can_CommonDetCheck(CAN_SET_MODECNTRL_SID, Controller);
  if (CAN_OK != LenReturnValue)
  {
    /* Return LenReturnValue as is */
  }
  /* Report to DET, if the transition is out of range */
  else if ((uint32)CAN_T_WAKEUP < (uint32)Transition)
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_SET_MODECNTRL_SID, CAN_E_TRANSITION);
    /* References: CAN_DDD_ACT_003_ERR001 */
    LenReturnValue = CAN_NOT_OK;
  }
  /* Report to DET, if the transition is not valid */
  else if (((CAN_T_SLEEP == LenCurrentMode) &&
               ((CAN_T_START == Transition) || (CAN_T_STOP == Transition))) ||
            ((CAN_T_START == LenCurrentMode) &&
               ((CAN_T_SLEEP == Transition) || (CAN_T_WAKEUP == Transition))))
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_SET_MODECNTRL_SID, CAN_E_TRANSITION);
    /* References: CAN_DDD_ACT_003_ERR002 */
    LenReturnValue = CAN_NOT_OK;
  }
  else
#endif /* #if (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
    LenReturnValue = CAN_OK;
    /* If Transition is to the Same State */
    if (LenCurrentMode == Transition)
    {
      /* Indicate mode change to CanIf, if Transition is to the Same State */
      if (CAN_T_START == Transition)
      {
        /* Indicate mode change to CanIf */
        CanIf_ControllerModeIndication(
         (uint8)(Controller + CAN_CONTROLLER_OFFSET), CANIF_CS_STARTED);
      }
      else if (CAN_T_STOP == Transition)
      {
        /* Indicate mode change to CanIf */
        CanIf_ControllerModeIndication(
          (uint8)(Controller + CAN_CONTROLLER_OFFSET), CANIF_CS_STOPPED);
      }
      else if (CAN_T_SLEEP == Transition)
      {
        /* Indicate mode change to CanIf */
        CanIf_ControllerModeIndication(
         (uint8)(Controller + CAN_CONTROLLER_OFFSET),CANIF_CS_SLEEP);
      }
      else
      {
        /* No action required */
      }
    }
    /*
    * If transition to CAN_T_WAKEUP while current mode is CAN_T_STOP
    * Treat as transition to same state
    */
    else if ((CAN_T_STOP == LenCurrentMode) && (CAN_T_WAKEUP == Transition))
    {
      /* Indicate mode change to CanIf */
      CanIf_ControllerModeIndication(
        (uint8)(Controller + CAN_CONTROLLER_OFFSET), CANIF_CS_STOPPED);
    }
    else
    {
      /* Invoke corresponding function based on the transition */
      switch (Transition)
      {
      case CAN_T_START:
        Can_StartMode(Controller, CAN_SET_MODECNTRL_SID);
        break;
      case CAN_T_STOP:
        /*
         * The transition START to STOP is done by the following triggers:
         *  - Can_SetControllerMode(CAN_T_STOP)
         *  - Busoff
         * To avoid the state transition is done twice by both of triggers,
         * the exclusive control is required.
         */
        CAN_ENTER_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
        /* References: CAN_DDD_ACT_003_CRT001 */
        if ((CAN_T_START == Can_GaaCtrlState[Controller].enMode) &&
          (CAN_NO_PENDING_TRANSITION ==
            Can_GaaCtrlState[Controller].enSubState))
        {
          /* Mark subState as "TENTATIVE" to block the transition by ISR */
          Can_GaaCtrlState[Controller].enSubState = CAN_TENTATIVE_TRANSITION;
          /* References: CAN_DDD_ACT_003_GBL001 */
        }
        else
        {
          /* The transition to CAN_T_STOP by bus-off has been done */
        }
        CAN_EXIT_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
        /* References: CAN_DDD_ACT_003_CRT003 */

        if (CAN_FALSE == Can_GaaCtrlState[Controller].blBusOff)
        {
          /* Start the transition to STOP sate */
          Can_StopMode(Controller, CAN_SET_MODECNTRL_SID);
        }
        else
        {
          /* nothing to do*/
        }
        break;
      case CAN_T_SLEEP:
        Can_SleepMode(Controller, CAN_SET_MODECNTRL_SID);
        break;
      default: /* CAN_T_WAKEUP */
#if (CAN_WAKEUP_SUPPORT == STD_ON)
        /* MISRA Violation: START Msg(2:0491)-1 */
        LpPCController = &Can_GpPCController[Controller];
        /* END Msg(2:0491)-1 */
        /*
         * The transition SLEEP to STOP is done by the following triggers:
         *  - Can_SetControllerMode(CAN_T_WAKEUP)
         *  - Wake-up trigger by the HW
         * To avoid the state transition is done twice by both of triggers,
         * the exclusive control is required.
         * This critical section must be INTERRUPT_CONTROL_PROTECTION,
         * because EIC register is manipulated and the exclusive control is
         * also required against Can_EnableControllerInterrupts.
         */
        CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
        /* References: CAN_DDD_ACT_003_CRT002 */
        if ((CAN_T_SLEEP == Can_GaaCtrlState[Controller].enMode) &&
          (CAN_NO_PENDING_TRANSITION ==
            Can_GaaCtrlState[Controller].enSubState))
        {
          /* Mark subState as "TENTATIVE" to block the transition by ISR */
          Can_GaaCtrlState[Controller].enSubState = CAN_TENTATIVE_TRANSITION;
          /* References: CAN_DDD_ACT_003_GBL002 */
          /* Wakeup is triggered by SW */
          Can_GaaCtrlState[Controller].blWakeupByHW = CAN_FALSE;
          /* References: CAN_DDD_ACT_003_GBL003 */
          /* Disable Wake-up ISR */
          if (NULL_PTR != LpPCController->pICWakeup)
          {
            /* MISRA Violation: START Msg(4:4461)-10 */
            /* QAC Warning: START Msg(2:3892)-7 */
            /* MISRA Violation: START Msg(2:3138)-8 */
            RH850_SV_SET_ICR_SYNCP(8, LpPCController->pICWakeup,
                    (uint8)CAN_EIC_EIMK_MASK);
            /* END Msg(2:3138)-8 */
            /* END Msg(2:3892)-7 */
            /* END Msg(4:4461)-10 */
            /* References: CAN_DDD_ACT_003_REG001 */
          }
          else
          {
            /* No action is Required */
          }
        }
        else
        {
          /* The transition to CAN_T_STOP by ISR has been started */
        }
        CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
        /* References: CAN_DDD_ACT_003_CRT004 */

        if (CAN_TENTATIVE_TRANSITION != Can_GaaCtrlState[Controller].enSubState)
        {
          /* The state transition has been started by the ISR.
             Return CAN_NOT_OK according to SWS_Can_00048. */
          LenReturnValue = CAN_NOT_OK;
        }
        else
#endif /* (CAN_WAKEUP_SUPPORT == STD_ON) */
        {
          /* Start the transition to STOP sate */
          Can_WakeupMode(Controller, CAN_SET_MODECNTRL_SID);
        }
        break;
      }
    }
  }
  /* Return LenCanReturnType */
  return(LenReturnValue);
}

/*******************************************************************************
** Function Name         : Can_SelfTestChannel
**
** Service ID            : 0x15
**
** Description           : This service initiates the transition of mode
**                         to execute a self test in internal or external
**                         loop back mode.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non-Reentrant
**
** Input Parameters      : LucController, LenTest_Transition
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized and 
**                         Can_SetControllerMode(CAN_T_START) shall have been 
**                         called at least once for the particular channel
**                         before invoking this API.
** Global Variables Used : Can_GaaRegs, Can_GaaMirrorChannelReg,
**                         Can_GpPCController
**
** Function(s) invoked   : Det_ReportError, Can_CommonDetCheck
**                         Can_ChannelModeChange, Dem_ReportErrorStatus
**                         CAN_ENTER_CRITICAL_SECTION,CAN_EXIT_CRITICAL_SECTION
**                     
** Registers Used        : (CFD)CmCTR,(CFD)CmSTS
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-6 */
/* QAC Warning: START Msg(2:3227)-1 */
FUNC(Std_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_SelfTestChannel
                      (uint8 LucController, Can_SelfTestType LenTest_Transition)
/* END Msg(2:3227)-1 */
/* END Msg(1:1503)-6 */
{
  /* References: CAN_DDD_ACT_065 */
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  /* Pointer to CmCTR register with volatile to prevent optimization */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANCmCTRReg;
  /* Variable to hold the DET return value */
  Std_ReturnType LucReturnValue;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  /* Variable to hold common DET check return value */
  Can_ReturnType LenReturnValue;
#endif
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulTimeoutDuration;
  volatile uint32 LulCTR_RegValue;

  /* Initialize LucReturnValue to E_OK */
  /* MISRA Violation: START Msg(2:2982)-9 */
  LucReturnValue = E_OK;
  /* END Msg(2:2982)-9 */
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    LenReturnValue = Can_CommonDetCheck(CAN_SELFTESTCHANNEL_SID, LucController);
  if (CAN_OK != LenReturnValue)
  {
    LucReturnValue = E_NOT_OK;
  }
  else
  {
    /* Report to DET, if the LenTest_Transition is out of range */
    if ((Can_SelfTestType)CAN_T_SELF_INTERNAL < LenTest_Transition)
    {
      /* Report to DET */
      (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                              CAN_SELFTESTCHANNEL_SID, CAN_E_TRANSITION);
      /* Set the error status flag to true */
      LucReturnValue = E_NOT_OK;
    }
    else
    {
      /* No Action Required */
    }
  }

  /* Check whether any development error occurred */
  if (E_NOT_OK != LucReturnValue)
#endif
  {
    /* MISRA Violation: START Msg(2:0491)-1 */
    LpPCController = &Can_GpPCController[LucController];
    /* END Msg(2:0491)-1 */
    LucUnit = LpPCController->ucUnitIndex;
    LucCh = LpPCController->ucChannelOffset;
    /* Get CmCTR register address */
    LpRCANCmCTRReg = &Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCTR;

    /* Transition to Channel HALT mode */
    LulTimeoutDuration = CAN_TIMEOUT_COUNT;
    LucReturnValue =
      Can_ChannelModeChange(LucUnit, LucController, CAN_RSCAN_CHMDC_HALT,
      &LulTimeoutDuration, CAN_SELFTESTCHANNEL_SID);
    if (E_OK != LucReturnValue)
    {
#if defined(CAN_E_TIMEOUT_FAILURE)
      /* Report to DEM if timeout occurs */
      Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
#endif
    }
    else
    {
      /* Critical section is required to prevent ulCTR register is modified
      while doing write verify */
      CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_065_CRT001 */
      switch (LenTest_Transition)
      {
      case CAN_T_SELF_OFF:
        /* Setting CTME and CTMS[1:0] bit in the CmCTR register to 0 */
        LulCTR_RegValue = *(LpRCANCmCTRReg) & CAN_RSCAN_CTM_MASK;
        /* QAC Warning: START Msg(2:3441)-4 */
        /* QAC Warning: START Msg(2:3462)-6 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          LpRCANCmCTRReg,
          LulCTR_RegValue,
          &Can_GaaMirrorChannelReg[LucController].ulCTR,
          CAN_COMMON_REG_MASK,
          CAN_SELFTESTCHANNEL_SID)
        break;
      case CAN_T_SELF_EXTERNAL:
        /* END Msg(2:3462)-6 */
        /* END Msg(2:3441)-4 */
        /* Setting CTME bit in the CmCTR register to 1 */
        LulCTR_RegValue = *(LpRCANCmCTRReg) | CAN_RSCAN_CTME;
        /* QAC Warning: START Msg(2:3441)-4 */
        /* QAC Warning: START Msg(2:3462)-6 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          LpRCANCmCTRReg,
          LulCTR_RegValue,
          &Can_GaaMirrorChannelReg[LucController].ulCTR,
          CAN_COMMON_REG_MASK,
          CAN_SELFTESTCHANNEL_SID)
        /* END Msg(2:3462)-6 */
        /* END Msg(2:3441)-4 */

        /* Clearing CTMS[1:0] bits in the CmCTR register to 00 */
        /* QAC Warning: START Msg(2:3441)-4 */
        /* QAC Warning: START Msg(2:3462)-6 */
        LulCTR_RegValue = *(LpRCANCmCTRReg) &
                            (CAN_RSCAN_CTM_MASK | CAN_RSCAN_CTME);
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          LpRCANCmCTRReg,
          LulCTR_RegValue,
          &Can_GaaMirrorChannelReg[LucController].ulCTR,
          CAN_COMMON_REG_MASK,
          CAN_SELFTESTCHANNEL_SID)
        /* END Msg(2:3462)-6 */
        /* END Msg(2:3441)-4 */

        /* Setting CTMS[1:0] bits in the CmCTR register to 10 */
        LulCTR_RegValue = *(LpRCANCmCTRReg) | CAN_RSCAN_CTMS_SELF0;
        /* QAC Warning: START Msg(2:3441)-4 */
        /* QAC Warning: START Msg(2:3462)-6 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          LpRCANCmCTRReg,
          LulCTR_RegValue,
          &Can_GaaMirrorChannelReg[LucController].ulCTR,
          CAN_COMMON_REG_MASK,
          CAN_SELFTESTCHANNEL_SID)
        break;
      case CAN_T_SELF_INTERNAL:
        /* END Msg(2:3462)-6 */
        /* END Msg(2:3441)-4 */
        /* Setting CTME bit in the CmCTR register to 1 */
        LulCTR_RegValue = *(LpRCANCmCTRReg) | CAN_RSCAN_CTME;
        /* QAC Warning: START Msg(2:3441)-4 */
        /* QAC Warning: START Msg(2:3462)-6 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          LpRCANCmCTRReg,
          LulCTR_RegValue,
          &Can_GaaMirrorChannelReg[LucController].ulCTR,
          CAN_COMMON_REG_MASK,
          CAN_SELFTESTCHANNEL_SID)
        /* END Msg(2:3462)-6 */
        /* END Msg(2:3441)-4 */

        /* Setting CTMS[1:0] bits in the CmCTR register to 11 */
        LulCTR_RegValue = *(LpRCANCmCTRReg) | CAN_RSCAN_CTMS_SELF1;
        /* QAC Warning: START Msg(2:3441)-4 */
        /* QAC Warning: START Msg(2:3462)-6 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          LpRCANCmCTRReg,
          LulCTR_RegValue,
          &Can_GaaMirrorChannelReg[LucController].ulCTR,
          CAN_COMMON_REG_MASK,
          CAN_SELFTESTCHANNEL_SID)
        break;
        /* END Msg(2:3462)-6 */
        /* END Msg(2:3441)-4 */
      default:
        /* No action required */
        break;
      }
      CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_065_CRT002 */
      /* Transition to Channel COMMUNICATION mode */
      LucReturnValue =
        Can_ChannelModeChange(LucUnit, LucController, CAN_RSCAN_CHMDC_COM,
        &LulTimeoutDuration, CAN_SELFTESTCHANNEL_SID);
#if defined(CAN_E_TIMEOUT_FAILURE)
      if (E_OK != LucReturnValue)
      {
        /* Report to DEM if timeout occurs */
        Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
      }
      else
      {
        /* No action required */
      }
#endif
    }
  }
#if  (CAN_DEV_ERROR_DETECT == STD_ON)
  else
  {
    /* No Action Required */
  }
#endif
  return(LucReturnValue);
}
#define CAN_RSCAN_STOP_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-2 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-2 */


#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-2 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-2 */
/*******************************************************************************
** Function Name         : Can_SleepMode
**
** Service ID            : Not Applicable
**
** Description           : This function initiates a transition to sleep mode.
**
** Sync/Async            : None
**
** Reentrancy            : Re-entrant from Can_SetControllerMode and
**                         Can_MainFunction_Mode.
**                         Non Re-entrant from same API.
**
** Input Parameters      : LucCtrlIndex, LucApiId
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaCtrlState, Can_GaaRegs,
**                         Can_GaaActiveControllers,
**                         Can_GaaGlobalStateTransition,Can_GpPCController
**                         
** Function(s) invoked   : Can_GlobalModeChange, Can_ChannelModeChange,
**                         CanIf_ControllerModeIndication,
**                         CAN_ENTER_CRITICAL_SECTION,
**                         CAN_EXIT_CRITICAL_SECTION
**
** Registers Used        : (CFD)GSTS, (CFD)CmSTS,
**                         (CFD)GCTR,(CFD)CmCTR, FCLAnCTLm, DNFAnEN
*******************************************************************************/
/* MISRA Violation: START Msg(1:1505)-7 */
/* QAC Warning: START Msg(3:3206)-5 */
FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_SleepMode(const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(3:3206)-5 */
/* END Msg(1:1505)-7 */
{
  /* References: CAN_DDD_ACT_035 */
#if (CAN_WAKEUP_SUPPORT == STD_ON)
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucResult;
  uint8 LucUnit;
  uint8 LucCh;
  Can_SubStatusType LenSubState;
  boolean LblGlobalTransitionRequired;

  LulTimeoutDuration = CAN_TIMEOUT_COUNT;
  /* MISRA Violation: START Msg(2:0491)-1 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-1 */
  LucUnit = LpPCController->ucUnitIndex;
  LucCh = LpPCController->ucChannelOffset;

  LenSubState = Can_GaaCtrlState[LucCtrlIndex].enSubState;
  LucResult = E_OK;

  /*
   * STEP 1:
   * Start to change to CHANNEL_STOP.
   * At this time, global state transition is never on-going.
   * Because:
   * - While GLOBAL_STOP to GLOBAL_OPERATION is on-going, it means that
   *   all Controllers are CAN_T_SLEEP or during transition to CAN_T_WAKEUP.
   * - While GLOBAL_OPERATION to GLOBAL_STOP is on-going, it means that
   *   one Controller is during transition to CAN_T_SLEEP and
   *   other Controllers are CAN_T_SLEEP.
   * - When Can_SetControllerMode(CAN_T_SLEEP) is invoked for a Controller
   *   which is CAN_T_SLEEP already, Can_SetControllerMode returns immediately.
   * - When Can_SetControllerMode(CAN_T_SLEEP) is invoked for a Controller
   *   which is during state transition, it causes the DET error.
   */
  if (CAN_NO_PENDING_TRANSITION == LenSubState)
  {
    LenSubState = CAN_PENDING_SLEEP_WAIT_STOP;
    LucResult = Can_ChannelModeChange(LucUnit, LucCtrlIndex,
      CAN_RSCAN_CSLPR | CAN_RSCAN_CHMDC_RESET, &LulTimeoutDuration, LucApiId);
    /* Continue to STEP 3 */
  }
  /*
   * STEP 2:
   * If necessary, wait for CHANNEL_STOP.
   */
  else if ((CAN_PENDING_SLEEP_WAIT_STOP == LenSubState) &&
    (0UL ==
      (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS & CAN_RSCAN_CSLPSTS)))
  {
    /* Continue to pending */
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Nothing to do */
  }

  /*
   * STEP 3:
   * If all Controllers slept, change global state to GLOBAL_RESET.
   */
  if ((E_OK == LucResult) &&
    (CAN_PENDING_SLEEP_WAIT_STOP == LenSubState))
  {
    /* Critical section is required in case entering to sleep and
       waking up occur on different channels at same time */
    CAN_ENTER_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
    /* References: CAN_DDD_ACT_035_CRT001 */
    /* Clear active bit of this Controller */
    Can_GaaActiveControllers[LucUnit] &= ~(1UL << LucCtrlIndex);
    /* References: CAN_DDD_ACT_035_GBL001 */
    if (0UL == Can_GaaActiveControllers[LucUnit])
    {
      /* If all Controllers have been entered to CANNEL_STOP,
         start the global state change: GLOBAL_OPERATION to GLOBAL_STOP */
      Can_GaaGlobalStateTransition[LucUnit] = CAN_TRUE;
      /* References: CAN_DDD_ACT_035_GBL002 */
      LblGlobalTransitionRequired = CAN_TRUE;
    }
    else
    {
      LblGlobalTransitionRequired = CAN_FALSE;
    }
    CAN_EXIT_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
    /* References: CAN_DDD_ACT_035_CRT003 */

    /* If all controllers stopped, enter GLOBAL_STOP mode */
    if (CAN_TRUE == LblGlobalTransitionRequired)
    {
      /* At first, change to GLOBAL_RESET mode. This takes 2 CAN bits. */
      LenSubState = CAN_PENDING_SLEEP_WAIT_GLOBALRESET;
      LucResult = Can_GlobalModeChange(
        LucUnit, CAN_RSCAN_GMDC_RESET, &LulTimeoutDuration, LucApiId);
      /* Continue to STEP 5 */
    }
    else
    {
      /* Continue to STEP 7 */
    }
  }
  /*
   * STEP 4:
   * If necessary, wait for GLOBAL_RESET.
   */
  else if ((E_OK == LucResult) &&
    (CAN_PENDING_SLEEP_WAIT_GLOBALRESET == LenSubState) &&
    (CAN_RSCAN_GRSTSTS !=
      (Can_GaaRegs[LucUnit].pCmn->ulGSTS & CAN_RSCAN_GSTSMASK)))
  {
    /* Continue to pending */
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Nothing to do */
  }

  /*
   * STEP 5:
   * If necessary, enter GLOBAL_STOP.
   */
  if ((E_OK == LucResult) &&
    (CAN_PENDING_SLEEP_WAIT_GLOBALRESET == LenSubState))
  {
    LenSubState = CAN_PENDING_SLEEP_WAIT_GLOBALSTOP;
    LucResult = Can_GlobalModeChange(LucUnit,
      CAN_RSCAN_GSLPR | CAN_RSCAN_GMDC_RESET, &LulTimeoutDuration, LucApiId);
    /* Continue to STEP 7 */
  }
  /*
   * STEP 6:
   * If necessary, wait for GLOBAL_STOP.
   */
  else if ((E_OK == LucResult) &&
    (CAN_PENDING_SLEEP_WAIT_GLOBALSTOP == LenSubState) &&
    (0UL == (Can_GaaRegs[LucUnit].pCmn->ulGSTS & CAN_RSCAN_GSLPSTS)))
  {
    /* Continue to pending */
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Nothing to do */
  }

  /*
   * STEP 7:
   * Finish transition.
   */
  if (E_OK == LucResult)
  {
    /* Clear Global transition on-going flag */
    if (CAN_PENDING_SLEEP_WAIT_GLOBALSTOP == LenSubState)
    {
      /* No critical section is required because this can be done atomically */
      Can_GaaGlobalStateTransition[LucUnit] = CAN_FALSE;
      /* References: CAN_DDD_ACT_035_GBL006 */
    }
    else
    {
      /* Nothing to do */
    }

    /* Critical section is required to avoid conflict to
       Can_DisableControllerInterrupts */
    CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
    /* References: CAN_DDD_ACT_035_CRT002 */
    Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_SLEEP;
    /* References: CAN_DDD_ACT_035_GBL003 */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = CAN_NO_PENDING_TRANSITION;
    /* References: CAN_DDD_ACT_035_GBL007 */
    if (NULL_PTR != LpPCController->pICWakeup)
    {
      /* Enable wakeup interrupt */
      if ((0U != (LpPCController->ucIntEnable & CAN_CHECK_INT_WAKEUP)) &&
        (0UL == Can_GaaCtrlState[LucCtrlIndex].ulIntCount))
      {
        /* Clear EIMK and EIRF */
        RH850_SV_MODE_ICR_AND(16, LpPCController->pICWakeup,
          (uint16)(~(CAN_EIC_EIRF_MASK | CAN_EIC_EIMK_MASK)));
        /* References: CAN_DDD_ACT_035_REG001 */
      }
      else
      {
        /* If the interrupt is disabled, clear EIRF only */
        RH850_SV_MODE_ICR_AND(16, LpPCController->pICWakeup,
          (uint16)(~CAN_EIC_EIRF_MASK));
        /* References: CAN_DDD_ACT_035_REG002 */
      }
    }
    else
    {
      /* Wakeup is not available on this Controller, nothing to do */
    }

    /* Setting the filter control register for falling edge detection*/
    if(NULL_PTR != LpPCController->pFCLAReg)
    {
      *(LpPCController->pFCLAReg) = CAN_RSCAN_FCLA_FALLING_EDGE;
      /* References: CAN_DDD_ACT_035_REG003 */
    }
    else
    {
      /* Nothing to do */
    }
    /* Enables digital noise elimination */
    if(NULL_PTR != LpPCController->pDNFAReg)
    {
      *(LpPCController->pDNFAReg) |=
          CAN_RSCAN_DNFA(LpPCController->ucChannelOffset);
      /* References: CAN_DDD_ACT_035_REG004 */
    }
    else
    {
      /* Nothing to do */
    }

    CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
    /* References: CAN_DDD_ACT_035_CRT004 */

    /* Notify CanIf of completion of transition to SLEEP state */
    CanIf_ControllerModeIndication(
      (uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET), CANIF_CS_SLEEP);
  }
  else
  {
    /* If time-out occurred, update the pending status.
    This should be done at the end of this function once to avoid re-entrant
    call from Can_SetControllerMode and Can_MainFunction_Mode. */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = LenSubState;
    /* References: CAN_DDD_ACT_035_GBL009 */
  }
#else /* (CAN_WAKEUP_SUPPORT == STD_ON) */
  /* Set the Controller to sleep mode */
  Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_SLEEP;
  /* References: CAN_DDD_ACT_035_GBL008 */
  Can_GaaCtrlState[LucCtrlIndex].enSubState = CAN_NO_PENDING_TRANSITION;
  /* References: CAN_DDD_ACT_035_GBL005 */
  /* Indicate mode change to CanIf */
  CanIf_ControllerModeIndication(
    (uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET), CANIF_CS_SLEEP);
#endif /* (CAN_WAKEUP_SUPPORT == STD_ON) */
}

/*******************************************************************************
** Function Name         : Can_WakeupMode
**
** Service ID            : Not Applicable
**
** Description           : This function initiates the transition to wakeup from
**                         sleep Mode.
**
** Sync/Async            : None
**
** Reentrancy            : Re-entrant from Can_SetControllerMode and
**                         Can_MainFunction_Mode.
**                         Non Re-entrant from same API.
**
** Input Parameters      : LucCtrlIndex  : Index of a Controller
**                         LucApiId      : Service ID of API call this function
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaCtrlState, Can_GaaGlobalStateTransition,
**                         Can_GaaActiveControllers, Can_GaaRegs,
**                         Can_GpPCController                        
**
** Function(s) invoked   : Can_GlobalModeChange, Can_ChannelModeChange,
**                         CanIf_ControllerModeIndication,
**                         CAN_ENTER_CRITICAL_SECTION ,
**                         CAN_EXIT_CRITICAL_SECTION
**
** Registers Used        : (CFD)GSTS, (CFD)CmSTS,(CFD)CmCTR,(CFD)GCTR
*******************************************************************************/
/* MISRA Violation: START Msg(1:1505)-7 */
/* QAC Warning: START Msg(3:3206)-5 */
FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_WakeupMode(const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(3:3206)-5 */
/* END Msg(1:1505)-7 */
{
  /* References: CAN_DDD_ACT_036 */
#if (CAN_WAKEUP_SUPPORT == STD_ON)
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  Std_ReturnType LucResult;
  uint32 LulTimeoutDuration;
  uint8 LucUnit;
  uint8 LucCh;
  Can_SubStatusType LenSubState;
  boolean LblGlobalTransitionRequired;

  /* MISRA Violation: START Msg(2:0491)-1 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-1 */
  LucUnit = LpPCController->ucUnitIndex;
  LucCh = LpPCController->ucChannelOffset;

  LucResult = E_OK;
  LulTimeoutDuration = CAN_TIMEOUT_COUNT;
  LenSubState = Can_GaaCtrlState[LucCtrlIndex].enSubState;
  LblGlobalTransitionRequired = CAN_FALSE;

  /*
   * STEP 1:
   * If Global state transition is on-going,
   * hold to start the state transition of a Controller.
   * If wakeup was invoked from Can_SetControllerMode,
   * the first subState is CAN_TENTATIVE_TRANSITION.
   * If wakeup was invoked from the wakeup interrupt,
   * the first subState is CAN_PENDING_WAKEUP_REQUESTED.
   */
  if ((CAN_TENTATIVE_TRANSITION == LenSubState) ||
    (CAN_PENDING_WAKEUP_REQUESTED == LenSubState) ||
    (CAN_PENDING_WAKEUP_WAIT_GLOBALCHANGE == LenSubState))
  {
    /* Critical section is required in case entering to sleep and
       waking up occur on different channels at same time */
    CAN_ENTER_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
    /* References: CAN_DDD_ACT_036_CRT001 */
    if (CAN_TRUE == Can_GaaGlobalStateTransition[LucUnit])
    {
      /* If any global state transition is on-going now on this RS-CAN unit,
         hold to start the state transition of Controllers */
      LenSubState = CAN_PENDING_WAKEUP_WAIT_GLOBALCHANGE;
      LucResult = E_NOT_OK;
    }
    else
    {
      if (0UL == Can_GaaActiveControllers[LucUnit])
      {
        /* If this is the first wake-up on the Unit,
           start the global state change: GLOBAL_STOP to GLOBAL_OPERATION */
        Can_GaaGlobalStateTransition[LucUnit] = CAN_TRUE;
        /* References: CAN_DDD_ACT_036_GBL002 */
        LblGlobalTransitionRequired = CAN_TRUE;
      }
      else
      {
        /* Nothing to do */
      }
      /* Set the active (not sleep) bit of this Controller */
      Can_GaaActiveControllers[LucUnit] |= (1UL << LucCtrlIndex);
      /* References: CAN_DDD_ACT_036_GBL001 */
    }
    CAN_EXIT_CRITICAL_SECTION(CAN_RAM_DATA_PROTECTION);
    /* References: CAN_DDD_ACT_036_CRT002 */


    if (CAN_TRUE == LblGlobalTransitionRequired)
    {
      /* At first, GLOBAL_STOP -> GLOBAL_RESET */
      LenSubState = CAN_PENDING_WAKEUP_WAIT_GLOBALRESET;
      LucResult = Can_GlobalModeChange(LucUnit, CAN_RSCAN_GMDC_RESET,
        &LulTimeoutDuration, LucApiId);
      /* Continue to STEP 3 */
    }
    else
    {
      /* Continue to STEP 5 */
    }
  }
  /*
   * STEP 2:
   * If necessary, wait for GLOBAL_RESET.
   */
  else if ((CAN_PENDING_WAKEUP_WAIT_GLOBALRESET == LenSubState) &&
    (0UL == (Can_GaaRegs[LucUnit].pCmn->ulGSTS & CAN_RSCAN_GRSTSTS)))
  {
    /* Continue pending */
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Continue to STEP 3 */
  }

  /*
   * STEP 3:
   * After GLOBAL_RESET, change to GLOBAL_OPEARTION.
   */
  if ((E_OK == LucResult) &&
    (CAN_PENDING_WAKEUP_WAIT_GLOBALRESET == LenSubState))
  {
    LenSubState = CAN_PENDING_WAKEUP_WAIT_GLOBALOP;
    LucResult = Can_GlobalModeChange(LucUnit, CAN_RSCAN_GMDC_OP,
      &LulTimeoutDuration, LucApiId);
  }
  /*
   * STEP 4:
   * If necessary, wait for GLOBAL_OPERATION.
   */
  else if ((E_OK == LucResult) &&
    (CAN_PENDING_WAKEUP_WAIT_GLOBALOP == LenSubState) &&
    (CAN_RSCAN_GOPSTS != Can_GaaRegs[LucUnit].pCmn->ulGSTS))
  {
    /* Continue pending */
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Continue to STEP 5 */
  }

  /*
   * STEP 5:
   * Change to CHANNEL_RESET.
   */
  if ((E_OK == LucResult) &&
    (CAN_PENDING_WAKEUP_WAIT_RESET != LenSubState))
  {
    /* Clear Global transition on-going flag */
    if (CAN_PENDING_WAKEUP_WAIT_GLOBALOP == LenSubState)
    {
      /* No critical section is required because this can be done atomically */
      Can_GaaGlobalStateTransition[LucUnit] = CAN_FALSE;
      /* References: CAN_DDD_ACT_036_GBL003 */
    }
    else
    {
      /* Nothing to do */
    }

    LenSubState = CAN_PENDING_WAKEUP_WAIT_RESET;
    LucResult = Can_ChannelModeChange(LucUnit, LucCtrlIndex,
      CAN_RSCAN_CHMDC_RESET, &LulTimeoutDuration, LucApiId);
    /* Continue to STEP 7 */
  }
  /*
   * STEP 6:
   * Wait for CHANNEL_RESET.
   */
  else if ((E_OK == LucResult) &&
    (CAN_RSCAN_CRSTSTS !=
      (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS & CAN_RSCAN_CSTSMASK)))
  {
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Continue to STEP 7 */
  }

  /*
   * STEP 7:
   * Finish transition.
   */
  if (E_OK == LucResult)
  {
    Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_STOP;
    /* References: CAN_DDD_ACT_036_GBL004 */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = CAN_NO_PENDING_TRANSITION;
    /* References: CAN_DDD_ACT_036_GBL007 */
    /* Indicate mode change to CanIf */
    if (CAN_TRUE == Can_GaaCtrlState[LucCtrlIndex].blWakeupByHW)
    {
      /* If the wakeup transition was triggered by HW, don't call CanIf */
    }
    else
    {
      CanIf_ControllerModeIndication(
         (uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET), CANIF_CS_STOPPED);
    }
  }
  else
  {
    /* If timeout occurred, update the pending status.
    This should be done at the end of this function once to avoid reentrant
    call from Can_SetControllerMode and Can_MainFunction_Mode. */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = LenSubState;
    /* References: CAN_DDD_ACT_036_GBL005 */
  }
#else /* (CAN_WAKEUP_SUPPORT == STD_ON) */
  /* If the wakeup feature is not supported, just change the logical state */
  Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_STOP;
  /* References: CAN_DDD_ACT_036_GBL006 */
  Can_GaaCtrlState[LucCtrlIndex].enSubState = CAN_NO_PENDING_TRANSITION;
  /* References: CAN_DDD_ACT_036_GBL008 */
  /* Indicate mode change to CanIf */
  CanIf_ControllerModeIndication(
    (uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET), CANIF_CS_STOPPED);
#endif /* (CAN_WAKEUP_SUPPORT == STD_ON) */
}

/*******************************************************************************
** Function Name         : Can_StartMode
**
** Service ID            : Not Applicable
**
** Description           : This function initiates the transition to the normal
**                         operating mode with complete functionality.
**
** Sync/Async            : None
**
** Reentrancy            : Re-entrant from Can_SetControllerMode and
**                         Can_MainFunction_Mode.
**                         Non Re-entrant from same API.
**
** Input Parameters      : LucCtrlIndex : Index of Controller config table
**                         LucApiId     : Service ID of API call this function
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized and
**                         Controller state must be CAN_T_STOP or CAN_T_WAKEUP
**
** Global Variables Used : Can_GaaCtrlState, Can_GaaRegs,Can_GpPCController
**
** Function(s) invoked   : Can_ChannelModeChange, Can_ClearRxBuffers,
**                         CanIf_ControllerModeIndication, Can_EnableTxBuffers
**
** Registers Used        : (CFD)CmSTS, (CFD)CmERFL, (CFD)THLCCm,
**                         (CFD)CFCCk,(CFD)TXQCCm, (CFD)RFCCx, (CFD)RMNDy
*******************************************************************************/
FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_StartMode(const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId)
{
  /* References: CAN_DDD_ACT_037 */
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulTimeoutDuration;
  Can_SubStatusType LenSubState;
  Std_ReturnType LucResult;
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;

  LucResult = E_OK;
  LulTimeoutDuration = CAN_TIMEOUT_COUNT;
  LenSubState = Can_GaaCtrlState[LucCtrlIndex].enSubState;
  /* MISRA Violation: START Msg(2:0491)-1 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-1 */
  LucUnit = LpPCController->ucUnitIndex;
  LucCh = LpPCController->ucChannelOffset;

  /*
   * STEP 1:
   * If current state is BusOff, Controller should be CHANNEL_HALT.
   * Change to CHANNEL_RESET to clear tx buffers before start.
   */
  if ((CAN_NO_PENDING_TRANSITION == LenSubState) &&
    (CAN_TRUE == Can_GaaCtrlState[LucCtrlIndex].blBusOff))
  {
    /* Clear error flags */
    CAN_WRITE_REG_ONLY(&Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulERFL,
      CAN_RSCAN_ERFL_CLEAR)
    /* References: CAN_DDD_ACT_037_REG001 */
    Can_GaaCtrlState[LucCtrlIndex].blBusOff = CAN_FALSE;
    /* References: CAN_DDD_ACT_037_GBL001 */
    /* Change to CHANNEL_RESET mode */
    LenSubState = CAN_PENDING_START_WAIT_RESET;
    LucResult = Can_ChannelModeChange(LucUnit, LucCtrlIndex,
      CAN_RSCAN_CHMDC_RESET, &LulTimeoutDuration, LucApiId);
  }
  /*
   * STEP 2:
   * If necessary, wait for CHANNEL_RESET.
   */
  else if ((CAN_PENDING_START_WAIT_RESET == LenSubState) &&
    (0UL ==
      (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS & CAN_RSCAN_CRSTSTS)))
  {
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Continue to STEP 3 */
  }

  /*
   * STEP 3:
   * Change to CHANNEL_COMMUNICATION mode.
   */
  if ((E_OK == LucResult) &&
    ((CAN_NO_PENDING_TRANSITION == LenSubState) ||
    (CAN_PENDING_START_WAIT_RESET == LenSubState)))
  {
#if (CAN_RX_OBJECT == STD_ON)
    /*
    * Clear all buffers
    * TX_BUFFER, TX_QUEUE and TXRX_FIFO(TxMode) are cleared automatically
    * in CHANNEL_RESET mode.
    * RX_BUFFER, RX_FIFO, TXRX_FIFO(RxMode) must be cleared by software.
    */
    Can_ClearRxBuffers(LucUnit, LucCtrlIndex, LucApiId);
#endif /* (CAN_RX_OBJECT == STD_ON) */

    /* Change Channel Mode to Communication Mode */
    LenSubState = CAN_PENDING_START_WAIT_COM;
    LucResult = Can_ChannelModeChange(LucUnit, LucCtrlIndex,
      CAN_RSCAN_CHMDC_COM, &LulTimeoutDuration, LucApiId);
  }
  /*
   * STEP 4:
   * Wait for CHANNEL_COMMUNICATION.
   */
  else if ((E_OK == LucResult) &&
    (CAN_PENDING_START_WAIT_COM == LenSubState) &&
    (CAN_RSCAN_COPSTS !=
    (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS & CAN_RSCAN_CSTSMASK)))
  {
    /* Continue pending */
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Continue to STEP 5 */
  }

  /*
   * STEP 5:
   * Finish transition.
   */
  if (E_OK == LucResult)
  {
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON) || \
  (CAN_TX_QUEUE == STD_ON))
    /* Re-enable CFCC.CFE and TXQCC.TXQE
       since these registers are cleared in CHANNEL_RESET */
    Can_EnableTxBuffers(LucUnit, LucCtrlIndex, LucApiId);
#endif

    /* Enable transmit history buffer */
    /* QAC Warning: START Msg(2:3441)-4 */
    CAN_WRITE_VERIFY_RUNTIME(
      &Can_GaaRegs[LucUnit].pCmn->aaTHLCC[LucCh],
      (LpPCController->ulTHLCC | CAN_RSCAN_THLE),
      CAN_COMMON_REG_MASK,
      LucApiId)
    /* END Msg(2:3441)-4 */
    /* References: CAN_DDD_ACT_037_REG002 */

    /* Inform the upper layer */
    Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_START;
    /* References: CAN_DDD_ACT_037_GBL002 */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = CAN_NO_PENDING_TRANSITION;
    /* References: CAN_DDD_ACT_037_GBL003 */
    CanIf_ControllerModeIndication(
      (uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET), CANIF_CS_STARTED);
  }
  else
  {
    /* If time-out occurred, update the pending status.
      This should be done at the end of this function once to avoid re-entrant
      call from Can_SetControllerMode and Can_MainFunction_Mode. */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = LenSubState;
    /* References: CAN_DDD_ACT_037_GBL004 */
  }
}

/*******************************************************************************
** Function Name         : Can_ClearRxBuffers
**
** Service ID            : Not Applicable
**
** Description           : This function clears rx buffers when a Controller
**                         enters CHANNEL_RESET mode.
**
** Sync/Async            : None
**
** Reentrancy            : Reentrant
**
** Input Parameters      : LucCtrlIndex : Controller index
**                         LucUnit      : Unit index
**                         LucApiId     : Service ID of API call this function
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized and
**                         Channel state must be CANNEL_RESET mode
**
** Global Variables Used : Can_GaaRegs, Can_GaaMirrorHohReg, Can_GpHohConfig
**
** Function(s) invoked   : None
**
** Registers Used        : (CFD)CFCCk, (CFD)RFCCx, (CFD)RMNDy
*******************************************************************************/
#if (CAN_RX_OBJECT == STD_ON)
/* QAC Warning: START Msg(3:3206)-5 */
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_ClearRxBuffers(
  const uint8 LucUnit, const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(3:3206)-5 */
{
  /* References: CAN_DDD_ACT_051 */
  P2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHoh;
  uint32 LulHohIndex;
#if (CAN_RX_BUFFER == STD_ON)
  uint32 LulRMNDIndex;
  uint32 LulRMNDMask;
#endif

  /* Scan all HOH objects */
  for (LulHohIndex = 0UL;
    LulHohIndex < (uint32)CAN_NO_OF_HOHS; LulHohIndex++)
  {
    /* MISRA Violation: START Msg(2:0491)-1 */
    LpHoh = &Can_GpHohConfig[LulHohIndex];
    /* END Msg(2:0491)-1 */
    /* If this HOH is HRH and belongs to this Controller, process it */
    if ((LpHoh->ucController == LucCtrlIndex) &&
      (CAN_HOH_HRH == LpHoh->enHoh))
    {
      switch (LpHoh->enBufferType)
      {
#if (CAN_RX_COMFIFO == STD_ON)
      case CAN_BUFFERTYPE_TXRXFIFO:
        /* Disable TxRxFIFO(RxMode) */
        /* QAC Warning: START Msg(2:3441)-4 */
        CAN_WRITE_VERIFY_RUNTIME(
          &Can_GaaRegs[LucUnit].pCmn->aaCFCC[LpHoh->ucBufferIndex],
          LpHoh->ulXXCCRegValue,
          CAN_COMMON_REG_MASK,
          LucApiId)
        /* END Msg(2:3441)-4 */
        /* References: CAN_DDD_ACT_051_REG001 */
        /* Re-Enable TxRxFIFO(RxMode) */
        /* QAC Warning: START Msg(2:3441)-4 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          &Can_GaaRegs[LucUnit].pCmn->aaCFCC[LpHoh->ucBufferIndex],
          (LpHoh->ulXXCCRegValue | CAN_RSCAN_CFE),
          &Can_GaaMirrorHohReg[LulHohIndex].ulCFCC,
          CAN_COMMON_REG_MASK,
          LucApiId)
        /* END Msg(2:3441)-4 */
        /* References: CAN_DDD_ACT_051_REG002 */
        break;
#endif
#if (CAN_RX_FIFO == STD_ON)
      case CAN_BUFFERTYPE_RXFIFO:
        /* Disable Rx FIFO */
        /* QAC Warning: START Msg(2:3441)-4 */
        CAN_WRITE_VERIFY_RUNTIME(
          &Can_GaaRegs[LucUnit].pCmn->aaRFCC[LpHoh->ucBufferIndex],
          LpHoh->ulXXCCRegValue,
          CAN_COMMON_REG_MASK,
          LucApiId)
        /* END Msg(2:3441)-4 */
        /* References: CAN_DDD_ACT_051_REG003 */
        /* Re-Enable Rx FIFO */
        /* QAC Warning: START Msg(2:3441)-4 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          &Can_GaaRegs[LucUnit].pCmn->aaRFCC[LpHoh->ucBufferIndex],
          (LpHoh->ulXXCCRegValue | CAN_RSCAN_RFE),
          &Can_GaaMirrorHohReg[LulHohIndex].ulRFCC,
          CAN_COMMON_REG_MASK,
          LucApiId)
        /* END Msg(2:3441)-4 */
        /* References: CAN_DDD_ACT_051_REG004 */
        break;
#endif
#if (CAN_RX_BUFFER == STD_ON)
      case CAN_BUFFERTYPE_BUFFER:
        /* Get index and bit position of RMND registers for this buffer */
        LulRMNDIndex = CAN_RSCAN_RMND_GET_INDEX(LpHoh->ucBufferIndex);
        LulRMNDMask = CAN_RSCAN_RMND_GET_BITMASK(LpHoh->ucBufferIndex);
        /* Clear receive flag */
        CAN_WRITE_REG_ONLY(&Can_GaaRegs[LucUnit].pCmn->aaRMND[LulRMNDIndex],
          ~LulRMNDMask)
        /* References: CAN_DDD_ACT_051_REG005 */
        break;
#endif
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
#endif

/*******************************************************************************
** Function Name         : Can_EnableTxBuffers
**
** Service ID            : Not Applicable
**
** Description           : This function enables Tx buffers when
**                         a Controller is re-started.
**
** Sync/Async            : None
**
** Reentrancy            : Reentrant
**
** Input Parameters      : LucUnit      : RS-CAN(FD) unit index
**                         LucCtrlIndex : Controller index
**                         LucApiId     : Service ID of API call this function
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized and
**                         Channel state must be CHANNEL_COMMUNICATOIN mode
**
** Global Variables Used : Can_GaaRegs, Can_GaaMirrorHohReg, Can_GpHohConfig
**
** Function(s) invoked   : None
**
** Registers Used        : (CFD)CFCCk, (CFD)TXQCCm
*******************************************************************************/
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON) || \
  (CAN_TX_QUEUE == STD_ON))
/* QAC Warning: START Msg(3:3206)-5 */
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_EnableTxBuffers(
  const uint8 LucUnit, const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(3:3206)-5 */
{
  /* References: CAN_DDD_ACT_052 */
  P2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHoh;
  uint32 LulHohIndex;

  /* Scan all HOH objects */
  for (LulHohIndex = 0UL;
    LulHohIndex < (uint32) CAN_NO_OF_HOHS; LulHohIndex++)
  {
    /* MISRA Violation: START Msg(2:0491)-1 */
    LpHoh = &Can_GpHohConfig[LulHohIndex];
    /* END Msg(2:0491)-1 */
    /* If this HOH belongs to this Controller, process it according to a type */
    if (LpHoh->ucController == LucCtrlIndex)
    {
#if ((CAN_TX_COMFIFO == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON))
      if (((CAN_BUFFERTYPE_TXRXFIFO == LpHoh->enBufferType) &&
        (CAN_HOH_HTH == LpHoh->enHoh)) ||
        (CAN_BUFFERTYPE_GATEWAY == LpHoh->enBufferType))
      {
        /* QAC Warning: START Msg(2:3441)-4 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          &Can_GaaRegs[LucUnit].pCmn->aaCFCC[LpHoh->ucBufferIndex],
          (LpHoh->ulXXCCRegValue | CAN_RSCAN_CFE),
          &Can_GaaMirrorHohReg[LulHohIndex].ulCFCC,
          CAN_COMMON_REG_MASK,
          LucApiId)
        /* END Msg(2:3441)-4 */
        /* References: CAN_DDD_ACT_052_REG001 */
      }
      else
#endif
#if (CAN_TX_QUEUE == STD_ON)
        if (CAN_BUFFERTYPE_TXQUEUE == LpHoh->enBufferType)
        {
          /* QAC Warning: START Msg(2:3441)-4 */
          CAN_WRITE_VERIFY_MIRROR_RUNTIME(
            &Can_GaaRegs[LucUnit].pCmn->aaTXQCC[LpHoh->ucBufferIndex],
            (LpHoh->ulXXCCRegValue | CAN_RSCAN_TXQE),
            &Can_GaaMirrorHohReg[LulHohIndex].ulTXQCC,
            CAN_COMMON_REG_MASK,
            LucApiId)
          /* END Msg(2:3441)-4 */
          /* References: CAN_DDD_ACT_052_REG002 */
        }
        else
#endif
        {
          /* Nothing to do */
        }
    }
    else
    {
      /* Nothing to do */
    }
  }
}
#endif /* ((CAN_TX_COMFIFO == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON) || \
      (CAN_TX_QUEUE == STD_ON)) */

/*******************************************************************************
** Function Name         : Can_StopMode
**
** Service ID            : Not Applicable
**
** Description           : This function initiates the transition to stop mode.
**
** Sync/Async            : None
**
** Reentrancy            : Re-entrant from Can_SetControllerMode and
**                         Can_MainFunction_Mode.
**                         Non re-entrant from same API.
**
** Input Parameters      : LucCtrlIndex : Index of Controller config table
**                         LucApiId     : Service ID of API call this function
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GaaCtrlState, Can_GaaRegs, Can_GpPCController
**                         
** Function(s) invoked   : Can_ChannelModeChange,
**                         CanIf_ControllerModeIndication
**
** Registers Used        : (CFD)CmSTS,(CFD)CmCTR
*******************************************************************************/
FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_StopMode(const uint8 LucCtrlIndex,
  CONST(uint8, AUTOMATIC) LucApiId)
{
  /* References: CAN_DDD_ACT_038 */
  uint32 LulTimeoutDuration;
  Can_SubStatusType LenSubState;
  Std_ReturnType LucResult;
  uint8 LucUnit;
  uint8 LucCh;

  LucResult = E_OK;
  LulTimeoutDuration = CAN_TIMEOUT_COUNT;
  LenSubState = Can_GaaCtrlState[LucCtrlIndex].enSubState;
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucUnit = Can_GpPCController[LucCtrlIndex].ucUnitIndex;
  /* END Msg(2:0491)-1 */
  /* MISRA Violation: START Msg(2:0491)-1 */
  LucCh = Can_GpPCController[LucCtrlIndex].ucChannelOffset;
  /* END Msg(2:0491)-1 */

  /*
   * STEP 1:
   * If the current state is START, change to HALT mode before RESET mode
   * to wait the completion of on-going transmission or reception.
   * If the STOP transition is invoked from Can_SetControlerMode,
   * the first subState is CAN_TENTATIVE_TRANSITION.
   * If the STOP transition is invoked from BusOff,
   * the state transition is done immediately and this function is not invoked.
   */
  if (CAN_TENTATIVE_TRANSITION == LenSubState)
  {
    LenSubState = CAN_PENDING_STOP_WAIT_HALT;
    LucResult = Can_ChannelModeChange(LucUnit, LucCtrlIndex,
      CAN_RSCAN_CHMDC_HALT, &LulTimeoutDuration, LucApiId);
  }
  /*
   * STEP 2:
   * If necessary, wait for the completion to change to CHANNEL_HALT mode.
   */
  else if ((CAN_PENDING_STOP_WAIT_HALT == LenSubState) &&
    (0UL ==
      (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS & CAN_RSCAN_CHLTSTS)))
  {
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Continue to STEP 3 */
  }

  /*
   * STEP 3:
   * Change the controller to CHANNEL_RESET mode.
   */
  if ((E_OK == LucResult) &&
    (CAN_PENDING_STOP_WAIT_RESET != LenSubState))
  {
    LenSubState = CAN_PENDING_STOP_WAIT_RESET;
    LucResult = Can_ChannelModeChange(LucUnit, LucCtrlIndex,
      CAN_RSCAN_CHMDC_RESET, &LulTimeoutDuration, LucApiId);
  }
  /*
   * STEP 4:
   * Wait for the completion to change to CHANNEL_RESET mode.
   */
  else if ((E_OK == LucResult) &&
    (0UL ==
      (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS & CAN_RSCAN_CRSTSTS)))
  {
    /* Continue to pending */
    LucResult = E_NOT_OK;
  }
  else
  {
    /* Continue to STEP 5 */
  }

  /*
   * STEP 5:
   * Clear all received data and notify CanIf.
   */
  if (E_OK == LucResult)
  {
    /* Set the Controller to stop mode */
    Can_GaaCtrlState[LucCtrlIndex].enMode = CAN_T_STOP;
    /* References: CAN_DDD_ACT_038_GBL001 */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = CAN_NO_PENDING_TRANSITION;
    /* References: CAN_DDD_ACT_038_GBL003 */

    /* Indicate mode change to CanIf */
    CanIf_ControllerModeIndication(
      (uint8)(LucCtrlIndex + CAN_CONTROLLER_OFFSET), CANIF_CS_STOPPED);
  }
  else
  {
    /* If time-out occurred, update the pending status.
    This should be done at the end of this function once to avoid reentrant
    call from Can_SetControllerMode and Can_MainFunction_Mode. */
    Can_GaaCtrlState[LucCtrlIndex].enSubState = LenSubState;
    /* References: CAN_DDD_ACT_038_GBL002 */
  }
}

/*******************************************************************************
** Function Name         : Can_GlobalModeChange
**
** Service ID            : Not Applicable
**
** Description           : Perform global mode change of RACAN.
**
** Sync/Async            : None
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LucUnit   : Module number of RSCANn
**                         LulMdBits : Mode bits of GCTR register
**                         LucApiId  : Service ID of API call this function
**
** InOut Parameters      : LpTimeoutDuration: Time-out counts with OsCounter,
**                                  actual elapsed time is subtracted from this.
**
** Output Parameters     : None
**
** Return parameter      : When time-out occurred E_NOT_OK, otherwise E_OK.
**
** Preconditions         : None
**
** Global Variables Used : Can_GaaRegs, Can_GaaMirrorGlobalReg
**
** Function(s) invoked   : Can_WaitRegisterChange
**
** Registers Used        : (CFD)GCTR, (CFD)GSTS
*******************************************************************************/
/* QAC Warning: START Msg(3:3206)-5 */
FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_GlobalModeChange(
  const uint8 LucUnit, const uint32 LulMdBits,
  CONSTP2VAR(uint32, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpTimeoutDuration,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(3:3206)-5 */
{
  /* References: CAN_DDD_ACT_039 */
  Std_ReturnType LucResult;

  CAN_WRITE_VERIFY_MIRROR_INIT_RUNTIME(
    &Can_GaaRegs[LucUnit].pCmn->ulGCTR,
    LulMdBits,
    &Can_GaaMirrorGlobalReg[LucUnit].ulGCTR,
    CAN_COMMON_REG_MASK,
    LucApiId)

  LucResult = Can_WaitRegisterChange(&Can_GaaRegs[LucUnit].pCmn->ulGSTS,
    CAN_RSCAN_GSTSMASK, LulMdBits, LpTimeoutDuration);

  return LucResult;
}

/*******************************************************************************
** Function Name         : Can_ChannelModeChange
**
** Service ID            : Not Applicable
**
** Description           : Perform channel mode change of RACAN.
**
** Sync/Async            : None
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LucUnit      : Module number of RSCANn
**                         LucCtrlIndex : Controller index
**                         LulMdBits    : Mode bits of CmCTR register
**                         LucApiId     : Service ID of API call this function
**
** InOut Parameters      : LpTimeoutDuration: Time-out counts with OsCounter,
**                                  actual elapsed time is subtracted from this.
**
** Output Parameters     : None
**
** Return parameter      : When time-out occurred E_NOT_OK, otherwise E_OK.
**
** Preconditions         : None
**
** Global Variables Used : Can_GaaRegs, Can_GaaMirrorChannelReg,
**                         Can_GpPCController
**
** Function(s) invoked   : Can_WaitRegisterChange
**
** Registers Used        : (CFD)CmCTR, (CFD)CmSTS
*******************************************************************************/
/* QAC Warning: START Msg(3:3206)-5 */
FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_ChannelModeChange(
  const uint8 LucUnit, const uint8 LucCtrlIndex, const uint32 LulMdBits,
  CONSTP2VAR(uint32, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpTimeoutDuration,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(3:3206)-5 */
{
  /* References: CAN_DDD_ACT_040 */
  Std_ReturnType LucResult;
  uint32 LulCTR_RegValue;
  P2CONST(volatile uint32, AUTOMATIC, REGSPACE) LpSTSReg;
  uint8 LucCh;

  /* MISRA Violation: START Msg(2:0491)-1 */
  LucCh = Can_GpPCController[LucCtrlIndex].ucChannelOffset;
  /* END Msg(2:0491)-1 */

  /* QAC Warning: START Msg(2:3441)-4 */
  LulCTR_RegValue =
    ((Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCTR & ~CAN_RSCAN_CHMDC_MASK)
     | LulMdBits);
  CAN_WRITE_VERIFY_MIRROR_INIT_RUNTIME(
    &Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCTR,
    LulCTR_RegValue,
    &Can_GaaMirrorChannelReg[LucCtrlIndex].ulCTR,
    CAN_COMMON_REG_MASK,
    LucApiId)
  /* END Msg(2:3441)-4 */
  /* References: CAN_DDD_ACT_040_REG001 */

  LpSTSReg = &Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS;
  LucResult = Can_WaitRegisterChange(
    LpSTSReg, CAN_RSCAN_CSTSMASK, LulMdBits, LpTimeoutDuration);

  return LucResult;
}

/*******************************************************************************
** Function Name         : Can_WaitRegisterChange
**
** Service ID            : Not Applicable
**
** Description           : Wait for change of status register
**
** Sync/Async            : None
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : LpReg   : Address of status register
**                         LulMask : Mask bits to be compared
**                         LulBits : Comparison bits
**
** InOut Parameters      : LpTimeoutDuration  Time-out counts with OsCounter,
**                                  actual elapsed time is subtracted from this.
**
** Output Parameters     : None
**
** Return parameter      : When timeout occurred E_NOT_OK, otherwise E_OK.
**
** Preconditions         : None
**
** Global Variables Used : None
**
** Function(s) invoked   : GetCounterValue()
**
** Registers Used        : Depend on LpReg
*******************************************************************************/
FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_WaitRegisterChange(
  volatile CONSTP2CONST(uint32, AUTOMATIC, REGSPACE) LpReg,
  const uint32 LulMask, const uint32 LulBits,
  CONSTP2VAR(uint32, AUTOMATIC, CAN_RSCAN_PRIVATE_DATA) LpTimeoutDuration)
{
  /* References: CAN_DDD_ACT_041 */
  Std_ReturnType LucResult;
  TickType LulPrevTime;
  TickType LulCurrentTime;
  uint32 LulTimeLapse;

  LulTimeLapse = 0UL;
  LucResult = E_OK;

  /* Get initial count */
  (void)GetCounterValue(CAN_OS_COUNTER_ID, &LulPrevTime);

  /* Wait until mode change completion or time-out */
  while (((*LpReg & LulMask) != LulBits) && (E_OK == LucResult))
  {
    /* Get current count */
    (void)GetCounterValue(CAN_OS_COUNTER_ID, &LulCurrentTime);
    /* Check whether timer lapped */
    if (LulPrevTime > LulCurrentTime)
    {
      /* When timer lapped, add remained counts from previous value to lapping.
         '1UL' means extra one count when lapping (MAX to 0). */
      LulTimeLapse = LulTimeLapse + (uint32)(
        (((TickType)CAN_OS_COUNTER_MAX_VALUE - LulPrevTime) + 1UL) +
        LulCurrentTime);
    }
    else
    {
      /* Otherwise, accumulate the delta counts simply. */
      LulTimeLapse = LulTimeLapse + (uint32)(LulCurrentTime - LulPrevTime);
    }
    /* Update the previous count */
    LulPrevTime = LulCurrentTime;
    /* Check time-out */
    if (*LpTimeoutDuration <= LulTimeLapse)
    {
      /* Set error and break wait loop */
      LucResult = E_NOT_OK;
    }
    else
    {
      /* Continue to wait */
    }
  }
  /* Subtract structure actual elapsed time from the parameter */
  *LpTimeoutDuration = *LpTimeoutDuration - LulTimeLapse;

  return LucResult;
}
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-2 */
/* MISRA Violation: START Msg(4:5087)-5 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-5 */
/* END Msg(2:0832)-2 */
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
