/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can.c                                                       */
/* Version      = V1.0.4                                                      */
/* Date         = 14-Dec-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation. All rights reserved.        */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of Initialization, ReInitialization and Version Control          */
/* Functionality.                                                             */
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
 *                         function and macro functions CAN_WRITE_VERIFY_INIT,
 *                         CAN_WRITE_VERIFY_MIRROR_INIT,
 *                         CAN_WRITE_VERIFY_RUNTIME,
 *                         CAN_WRITE_VERIFY_MIRROR_RUNTIME
 *          25-Sep-2019  : Update MISRA C Rule Violations, remove QAC message
 *                         (4:0310). Update QAC message (4:0491).
 *          11-Oct-2019  : Initialize Can_GaaHwAccessFlag in Can_Init.
 * V1.0.1:  24-Sep-2020  : Add QAC justification and comments.
 *          23-Oct-2020  : Correct Service ID of Can_RAMTest().
 * V1.0.2:  16-Mar-2021  : As per ARDAABD-2992, Update Global Variable Used and
 *                         register used of all functions at function's banner.
 *                         As per ARDAABD-2517: Update Function Invoked of    
 *                         functions at function's banner                       
 *          25-Mar-2021  : As per ARDAABD-5506, Change type of BaudRateConfigID
 *                         parameter in Can_SetBaudrate() API to uint16.
 *          03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                         Remove QAC message (2:2016)
 *                         Add QAC message (2:0857), (4:5087),(1:1503),
 *                         (2:3138), (2:2982).
 *          03-Jun-2021  : Added QAC Warning messages.
 * V1.0.3:  19-Jul-2021  : As per ARDAABD-6769, Updated to change bit-size passed
 *                         from 16 to 8 when access bit EIMK of EIC register.
 *          02-Aug-2021  : Add QAC message (2:3892), (4:4461).
 * V1.0.4:  02-Dec-2021  : As per ARDAABF-1000, Correct the casting at
 *                         Can_InitController()
 *          14-Dec-2021  : Add QAC Warning message (3:3206).
 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
/* CAN module header file */
#include "Can.h"
#include "Can_GeneralTypes.h"
#include "Can_LTTypes.h"
#include "Can_PBTypes.h"
#include "Can_Irq.h"
/* MISRA Violation: START Msg(2:0857)-9 */
#include "Can_RegWrite.h"
/* END Msg(2:0857)-9 */
/* including DEM header file */
#include "Dem.h"
/* Included for RAM variable declarations */
#include "Can_Ram.h"
#include "Can_ModeCntrl.h"
/* MISRA Violation: START Msg(2:0857)-9 */
#include "Can_MainServ.h"
/* END Msg(2:0857)-9 */
#if (CAN_WAKEUP_SUPPORT == STD_ON)
/* ECUM callback and call-out header file */
#include "EcuM_Cbk.h"
#endif
/*
 * OS Header File to have the prototype of GetCounterValue() for getting current
 * tick of OS
 */
#include "Os.h"

#if (CAN_CRITICAL_SECTION_PROTECTION == STD_ON)
/* Included for the declaration of the critical section protection functions */
#include "SchM_Can.h"
#endif
/* Included for the declaration of Det_ReportError() */
#if (CAN_DEV_ERROR_DETECT == STD_ON)
#include "Det.h"
#endif
#include "rh850_Types.h"

#if (CAN_RAMTEST_API == STD_ON)
/* CAN Driver RAM Test Header File */
#include "Can_RamTest.h"
#endif

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
/* AUTOSAR release version information */
#define CAN_C_AR_RELEASE_MAJOR_VERSION CAN_AR_RELEASE_MAJOR_VERSION
#define CAN_C_AR_RELEASE_MINOR_VERSION CAN_AR_RELEASE_MINOR_VERSION
#define CAN_C_AR_RELEASE_REVISION_VERSION CAN_AR_RELEASE_REVISION_VERSION

/* File version information */
#define CAN_C_SW_MAJOR_VERSION    CAN_SW_MAJOR_VERSION
#define CAN_C_SW_MINOR_VERSION    CAN_SW_MINOR_VERSION

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (CAN_C_AR_RELEASE_MAJOR_VERSION != CAN_AR_RELEASE_MAJOR_VERSION_VALUE)
  #error "Can.c : Mismatch in Release Major Version"
#endif
#if (CAN_C_AR_RELEASE_MINOR_VERSION != CAN_AR_RELEASE_MINOR_VERSION_VALUE)
  #error "Can.c : Mismatch in Release Minor Version"
#endif
#if (CAN_C_AR_RELEASE_REVISION_VERSION != CAN_AR_RELEASE_REVISION_VERSION_VALUE)
  #error "Can.c : Mismatch in Release Revision Version"
#endif

#if (CAN_C_SW_MAJOR_VERSION != CAN_SW_MAJOR_VERSION_VALUE)
  #error "Can.c : Mismatch in Software Major Version"
#endif
#if (CAN_C_SW_MINOR_VERSION != CAN_SW_MINOR_VERSION_VALUE)
  #error "Can.c : Mismatch in Software Minor Version"
#endif

/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/

/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0316) Cast from a pointer to void to a pointer to       */
/*                 object type .                                              */
/* Rule          : MISRA-C:2004 Rule-11.4                                     */
/* Justification : Typecasting from void* is necessary to hide internal types */
/*                 from the header files which are exposed to user.           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0316)-1 and                           */
/*                 END Msg(2:0316)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0491) Array subscripting applied to an object of        */
/*                 pointer type.                                              */
/* Rule          : MISRA-C:2004 Rule-17.4                                     */
/* Justification : This is necessary to support configuration.                */
/*                 The actual array can't be decided statically.              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0491)-2 and                           */
/*                 END Msg(2:0491)-2 tags in the code.                        */
/******************************************************************************/

/* 3. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:1055) [C99] The keyword 'inline' has been used.         */
/* Rule          : MISRA-C:2004 Rule 1.1                                      */
/* Justification : This message is allowed in F1x to improve software metric. */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:1055)-3 and                           */
/*                 END Msg(2:1055)-3 tags in the code.                        */
/******************************************************************************/

/* 4. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3458) Macro defines a braced code statement block.      */
/* Rule          : MISRA-C:2004 Rule-19.4                                     */
/* Justification : Since the macros are implemented as function macros braces */
/*                 cannot be avoided.                                         */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for  MISRA Violation: START Msg(2:3458)-4 and         */
/*                 END Msg(2:3458)-4 tags in the code.                        */
/******************************************************************************/

/* 5. MISRA C RULE VIOLATION:                                                 */
/* Message       : (4:2984) This operation is redundant. The value of the     */
/*                 result is always '1'.                                      */
/* Rule          : MISRA-C:2004 Rule 21.1                                     */
/* Justification : If user configures controller offset ID is more than 1,    */
/*                 this warning will  not occur.                              */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:2984)-5 and                           */
/*                 END Msg(4:2984)-5 tags in the code.                        */
/******************************************************************************/

/* 6. MISRA C RULE VIOLATION:                                                 */
/* Message       : (6:2877) This loop will never be executed more than once.  */
/* Rule          : MISRA-C:2004 Rule-21.1                                     */
/* Justification : It is depend on configuration, the maximum of loop count   */
/*                 shall be more than one with different configurations.      */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(6:2877)-6 and                           */
/*                 END Msg(6:2877)-6 tags in the code.                        */
/******************************************************************************/

/* 7. MISRA C RULE VIOLATION:                                                 */
/* Message       : (6:2993) The value of this 'do - while' loop controlling.  */
/*                  expression is always 'false'. The loop will only be       */
/*                  executed once.                                            */
/* Rule          : MISRA-C:2004 Rule-13.7                                     */
/* Justification : It is depend on configuration, the maximum of loop count   */
/*                 shall be more than one with different configurations.      */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(6:2993)-7 and                           */
/*                 END Msg(6:2993)-7 tags in the code.                        */
/******************************************************************************/

/* 8. MISRA C RULE VIOLATION:                                                 */
/* Message       : (6:2996) The result of this logical operation is always    */
/*                 'false'.                                                   */
/* Rule          : MISRA-C:2004 Rule-13.7                                     */
/* Justification : Condition check is for all use cases and the warning is    */
/*                 for only particular configuration.                         */
/* Verification  : However, this part of the code is verified manually and it */
/*                 is not having any impact.                                  */
/* Reference     : Look for START Msg(6:2996)-8 and                           */
/*                 END Msg(6:2996)-8 tags in the code.                        */
/******************************************************************************/

/* 9. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:0857) [L] Number of macro definitions exceeds 1024 -    */
/*                  program does not conform strictly to ISO:C90.             */
/* Rule          : MISRA-C:2004 Rule-1.1                                      */
/* Justification : This is accepted as of macros are used for better          */
/*                 readability of code and/or to support configuration        */
/*                 flexibility                                                */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:0857)-9  and                          */
/*                 END Msg(2:0857)-9  tags in the code.                       */
/******************************************************************************/

/* 10. MISRA C RULE VIOLATION:                                                */
/* Message       : (4:5087) Use of #include directive after code fragment.    */
/* Rule          : MISRA-C:2004 Rule-19.1                                     */
/* Justification : This is accepted, due to implementation for include        */
/*                 memmap is following AUTOSAR rule.                          */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(4:5087)-10 and                          */
/*                 END Msg(4:5087)-10 tags in the code.                       */
/******************************************************************************/

/* 11. MISRA C RULE VIOLATION:                                                */
/* Message       : (1:1503) The function '%1s' is defined but is not used     */
/*                  within this project.                                      */
/* Rule          : MISRA-C:2004 Rule-14.1                                     */
/* Justification : This is accepted, due to the module's API is exported      */
/*                 for user's usage.                                          */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(1:1503)-11  and                         */
/*                 END Msg(1:1503)-11  tags in the code.                      */
/******************************************************************************/

/* 12. MISRA C RULE VIOLATION:                                                */
/* Message       : (2:3138) Null statement is located close to other code or  */
/*                 comments.                                                  */
/* Rule          : MISRA-C:2004 Rule-14.3                                     */
/* Justification : This is limitation of QAC since it can't compile assembler */
/*                 There is no impact on operation.                           */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3138)-12  and                         */
/*                 END Msg(2:3138)-12  tags in the code.                      */
/******************************************************************************/

/* 13. MISRA C RULE VIOLATION:                                                */
/* Message       : (2:2982) This assignment is redundant. The value of this   */
/*                 object is never used before being modified.                */
/* Rule          : MISRA-C:2004 Rule-21.1                                     */
/* Justification : This variable is necessary to initialized before using.    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:2982)-13 and                          */
/*                 END Msg(2:2982)-13 tags in the code.                       */
/******************************************************************************/

/* 14. MISRA C RULE VIOLATION:                                                */
/* Message       : (4:4461) A non-constant expression of 'essentially         */
/*                 unsigned' type (%1s) is being converted to                 */
/*                 narrower unsigned type, '%2s' on assignment.               */
/* Rule          : MISRA-C:2004 Rule-10.1                                     */
/* Justification : This is use for accessing to 16 LSB of PMSR registers.     */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(4:4461)-14 and END Msg(4:4461)-14 tags  */
/*                 in the code.                                               */
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

/* 2. QAC Warning:                                                            */
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
/* Reference     : Look for START Msg(2:3441)-2 and END Msg(2:3441)-2         */
/*                 tags in the code.                                          */
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

/* 4. QAC warning:                                                            */
/* Message       : (2:3227) The parameter '%s' is never modified and          */
/*                 so it could be declared with the 'const' qualifier.        */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3227           */
/*                 REFERENCE - ISO:C90-6.5.3 Type Qualifiers                  */
/* Justification : To follow AUTOSAR and/or Renesas requirement for this API, */
/*                 the const shall not be used.                               */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:3227)-4 and                           */
/*                 END Msg(2:3227)-4 tags in the code.                        */
/******************************************************************************/

/* 5. QAC Warning:                                                            */
/* Message       : (3:3416) Logical operation performed on expression with    */
/*                 possible side effects.                                     */
/* Justification : Logical operation accesses volatile object which is a      */
/*                 register access and timeout counter. All register addresses*/
/*                 and timeout counter are generated with volatile qualifier. */
/*                 There is no impact on the functionality                    */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(3:3416)-5 and END Msg(3:3416)-5         */
/*                 tags in the code.                                          */
/******************************************************************************/

/* 6. QAC Warning:                                                            */
/* Message       : (2:3352) This 'switch' statement contains only two         */
/*                 execution paths.                                           */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3352           */
/* Justification : The number of switch case is depend on configurations      */
/*                 So using switch is necessary instead of if-else.           */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(2:3352)-6 and                           */
/*                 END Msg(2:3352)-6 tags in the code.                        */
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
/* 8. QAC Warning:                                                            */
/* Message       : (3:3206) The parameter is not used in this function.       */
/* Rule          : No MISRA-C:2004 Rules applicable to message 3206           */
/* Justification : This is done as per implementation requirement             */
/* Verification  : However, part of the code is verified manually             */
/*                 and it is not having any impact.                           */
/* Reference     : Look for START Msg(3:3206)-8 and                           */
/*                 END Msg(3:3206)-8 tags in the code.                        */
/******************************************************************************/
/******************************************************************************/

/*******************************************************************************
**                      Global Data                                           **
*******************************************************************************/
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
#if (CAN_WRITE_VERIFY != CAN_WV_DISABLE)
/* MISRA Violation: START Msg(2:1055)-3 */
static INLINE FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_VerifyWriteReg(
  CONSTP2CONST(volatile uint32, AUTOMATIC, REGSPACE) LpWriteRegAddr,
  CONST(uint32, AUTOMATIC) LulRegWriteValue,
  CONST(uint32, AUTOMATIC) LulMaskValue,
  CONST(uint8, AUTOMATIC) LucApiId)
/* END Msg(2:1055)-3 */
{
  /* References: CAN_DDD_ACT_066 */
  CAN_VERIFY_WRITE_REG(LpWriteRegAddr, LulRegWriteValue, LulMaskValue, LucApiId)
}
#endif /* End of #if (CAN_WRITE_VERIFY != CAN_WV_DISABLE) */
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

#if (CAN_WRITE_VERIFY != CAN_WV_DISABLE)
  /* MISRA Violation: START Msg(2:3458)-4 */
  #define CAN_WRITE_VERIFY_INIT(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
  }
  /* END Msg(2:3458)-4 */

  /* MISRA Violation: START Msg(2:3458)-4 */
  #define CAN_WRITE_VERIFY_MIRROR_INIT(pWriteRegAddr, \
                                RegWriteValue, pMirrorAddr, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
    CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
  }
  /* END Msg(2:3458)-4 */
#else
  /* QAC Warning: START Msg(2:3457)-3 */
  #define CAN_WRITE_VERIFY_INIT(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
  }
  /* END Msg(2:3457)-3 */

  /* QAC Warning: START Msg(2:3457)-3 */
  #define CAN_WRITE_VERIFY_MIRROR_INIT(pWriteRegAddr, \
                                RegWriteValue, pMirrorAddr, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
  }
  /* END Msg(2:3457)-3 */
#endif
#if (CAN_WRITE_VERIFY == CAN_WV_INIT_RUNTIME)
  /* MISRA Violation: START Msg(2:3458)-4 */
  #define CAN_WRITE_VERIFY_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
  }
  /* END Msg(2:3458)-4 */

  /* MISRA Violation: START Msg(2:3458)-4 */
  #define CAN_WRITE_VERIFY_MIRROR_RUNTIME(pWriteRegAddr, \
                                RegWriteValue, pMirrorAddr, MaskValue, ApiId) \
  { \
    CAN_WRITE_REG_ONLY(pWriteRegAddr, RegWriteValue) \
    Can_VerifyWriteReg(pWriteRegAddr, RegWriteValue, MaskValue, ApiId); \
    CAN_WRITE_RAM_MIRROR(pMirrorAddr, RegWriteValue) \
  }
  /* END Msg(2:3458)-4 */
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

/*******************************************************************************
**                      Function Definitions                                  **
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

/* Set global status */
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_SetStatus(
  const boolean LblStatus);
/* Sub function to initialize RSCANn module */
static FUNC(boolean, CAN_RSCAN_PRIVATE_CODE) Can_InitModule(
  const uint8 LucUnit);
/* Sub function to initialize Controller */
static FUNC(boolean, CAN_RSCAN_PRIVATE_CODE) Can_InitController(
  const uint8 LucCtrlIndex);

#if (CAN_CHANGE_BAUDRATE_API == STD_ON)
/* Sub function to get index of baudrate config table with baudrate */
static FUNC(uint32, CAN_RSCAN_PRIVATE_CODE) Can_SearchBaudrate(
  const uint8 LucCtrlIndex, const uint16 LusBaudrate);
#endif

#if (CAN_SET_BAUDRATE_API == STD_ON)
/* Sub function to get index of baudrate config table with ID */
static FUNC(uint32, CAN_RSCAN_PRIVATE_CODE) Can_SearchBaudrateID(
  const uint8 LucCtrlIndex, const uint16 LusBaudrateID);
#endif

#if (CAN_RAM_MIRROR == STD_ON)
/* Sub function to check consistency in static mode */
static FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_CheckConsistencyStatic(
  void);
/* Sub function to check consistency in dynamic mode */
static FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE) Can_CheckConsistencyDynamic(
  void);
#endif

#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

#define CAN_RSCAN_START_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

/*******************************************************************************
** Function Name         : Can_GetVersionInfo
**
** Service ID            : 0x07
**
** Description           : This function returns the version information of CAN
**                         driver component.
**
** Sync/Async            : Synchronous
**
** Re-entrancy           : Re-entrant
**
** Input Parameters      : None
**
** InOut Parameters      : None
**
** Output Parameters     : versioninfo
**
** Return parameter      : None
**
** Preconditions         : CanVersionInfoApi is configured as true.
**
** Global Variables      : None
**
** Functions invoked     : Det_ReportError
**
** Registers Used        : None
*******************************************************************************/
#if (CAN_VERSION_INFO_API == STD_ON)
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_GetVersionInfo(
  P2VAR(Std_VersionInfoType, AUTOMATIC, CAN_RSCAN_APPL_DATA) versioninfo)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_007 */
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  /* Check if parameter passed is equal to Null pointer */
  if(NULL_PTR == versioninfo)
  {
    /* Report to DET  */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                            CAN_GET_VERSIONINFO_SID, CAN_E_PARAM_POINTER);
    /* References: CAN_DDD_ACT_007_ERR001 */
  }
  else
#endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
    /* Copy the vendor Id */
    versioninfo->vendorID = CAN_VENDOR_ID;
    /* Copy the module Id */
    versioninfo->moduleID = CAN_MODULE_ID;
    /* Copy Software Major Version */
    versioninfo->sw_major_version = CAN_SW_MAJOR_VERSION;
    /* Copy Software Minor Version */
    versioninfo->sw_minor_version = CAN_SW_MINOR_VERSION;
    /* Copy Software Patch Version */
    versioninfo->sw_patch_version = CAN_SW_PATCH_VERSION;
  }
}
#endif /* (CAN_VERSION_INFO_API == STD_ON) */

/*******************************************************************************
** Function Name         : Can_Init
**
** Service ID            : 0x00
**
** Description           : This function initializes the static variables and
**                         CAN HW Unit global hardware settings for the further
**                         processing and initiates the setup of all CAN
**                         Controller specific settings.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : Config : Pointer to the configuration structure
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return Parameter      : None
**
** Preconditions         : None
**
** Global Variables Used : Can_GblInitialized,Can_GpConfig,
**                         Can_GpPCController, Can_GpPBController,
**                         Can_GpHohConfig, Can_GaaGlobalStateTransition,
**                         Can_GaaActiveControllers,
**                         Can_GaaGlobalIntCount, Can_GaaCtrlState
**                         Can_GaaHwAccessFlag
**
** Functions Invoked     : Det_ReportError, Dem_ReportErrorStatus,
**                         Can_SetStatus, Can_InitModule, Can_InitController,
**                         Can_GlobalModeChange
**
** Registers Used        : (CFD)GSTS, CFDGRMCFG, CFDGFDCFG, (CFD)RMNB,
**                         (CFD)GAFLCFG, (CFD)GCFG, (CFD)TMIECy,
**                         (CFD)GAFLECTR, (CFD)GAFLIDj, (CFD)GAFLMj,
**                         (CFD)GAFLP0_j, (CFD)GAFLP1_j,(CFD)CFCCk, 
**                         (CFD)TXQCCm, (CFD)RFCCx,(CFD)THLCCm,
**                         (CFD)Cm(N)CFG, CFDCmFDCFG, CFDCmDCFG,(CFD)CmCTR,
**                         EIC, (CFD)GCTR
**                         
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_Init(
  P2CONST(Can_ConfigType, CAN_VAR, CAN_RSCAN_APPL_CONST) Config)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_001 */
  uint8 LucIndex;
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
  uint16 LusHohIndex;
#endif
  boolean LblErrFlag;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;

  LblErrFlag = CAN_FALSE;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
#if (CAN_ALREADY_INIT_DET_CHECK == STD_ON)
  /* QAC Warning: START Msg(3:3416)-5 */
  /* Report to DET, if module is initialized */
  if (CAN_TRUE == Can_GblInitialized)
  /* END Msg(3:3416)-5 */
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID, CAN_INIT_SID,
      CAN_E_TRANSITION);
    /* References: CAN_DDD_ACT_001_ERR001 */
  }
  else
#endif
  /* Report to DET, if Configure pointer is equal to Null */
  if (NULL_PTR == Config)
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID, CAN_INIT_SID,
      CAN_E_PARAM_POINTER);
    /* References: CAN_DDD_ACT_001_ERR002 */
  }
  /* Report to DET, if database is not valid */
  else if (CAN_DBTOC_VALUE != Config->ulStartOfDbToc)
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
      CAN_INIT_SID, CAN_E_INVALID_DATABASE);
    /* References: CAN_DDD_ACT_001_ERR003 */
  }
  else
#endif /*#if (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
    /***********************************************************************
    *                  INITIALIZE GLOBAL VARIABLES                         *
    ***********************************************************************/
    /* Get pointers to configuration tables */
    Can_GpConfig = Config;
    /* References: CAN_DDD_ACT_001_GBL011 */
    /* MISRA Violation: START Msg(2:0316)-1 */
    Can_GpPCController =
      (P2CONST(Can_ControllerPCConfigType, CAN_VAR, CAN_RSCAN_CONFIG_DATA))
      Config->pControllerPCConfig;
    /* END Msg(2:0316)-1 */
    /* References: CAN_DDD_ACT_001_GBL012 */
    /* MISRA Violation: START Msg(2:0316)-1 */
    Can_GpPBController =
      (P2CONST(Can_ControllerPBConfigType, CAN_VAR, CAN_RSCAN_CONFIG_DATA))
      Config->pControllerPBConfig;
    /* END Msg(2:0316)-1 */
    /* References: CAN_DDD_ACT_001_GBL013 */
    /* MISRA Violation: START Msg(2:0316)-1 */
    Can_GpHohConfig =
      (P2CONST(Can_HohConfigType, CAN_VAR, CAN_RSCAN_CONFIG_DATA))
      Config->pHohConfig;
    /* END Msg(2:0316)-1 */
    /* References: CAN_DDD_ACT_001_GBL001 */

    /***********************************************************************
    *                  INITIALIZATION OF RSCANn MODULES                    *
    ***********************************************************************/
    /* MISRA Violation: START Msg(6:2877)-6 */
    for (LucIndex = (uint8) 0U;
      (LucIndex < (uint8) CAN_NO_OF_UNITS) && (CAN_FALSE == LblErrFlag);
      LucIndex++)
    /* END Msg(6:2877)-6 */
    {
#if (CAN_WAKEUP_SUPPORT == STD_ON)
      /* Initialize variables to handle the global stop */
      Can_GaaActiveControllers[LucIndex] = 0UL;
      /* References: CAN_DDD_ACT_001_GBL005 */
      Can_GaaGlobalStateTransition[LucIndex] = CAN_FALSE;
      /* References: CAN_DDD_ACT_001_GBL002 */
#endif
#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
      /* Initialize Global interruption disable count */
      Can_GaaGlobalIntCount[LucIndex] = 0UL;
      /* References: CAN_DDD_ACT_001_GBL003 */
#endif
      /* Initialize module and enter GLOBAL_RESET mode */
      LblErrFlag = Can_InitModule((uint8) LucIndex);
    }

    /***********************************************************************
    *                  INITIALIZATION OF CONTROLLERS                       *
    ***********************************************************************/
    /* MISRA Violation: START Msg(6:2877)-6 */
    for (LucIndex = (uint8) 0U;
      (LucIndex < (uint8) CAN_NO_OF_CONTROLLERS)
            && (CAN_FALSE == LblErrFlag);
            LucIndex++)
    /* END Msg(6:2877)-6 */
    {
      /* Initialize status variables */
      Can_GaaCtrlState[LucIndex].enMode = CAN_T_STOP;
      /* References: CAN_DDD_ACT_001_GBL004 */
      Can_GaaCtrlState[LucIndex].enSubState = CAN_NO_PENDING_TRANSITION;
      /* References: CAN_DDD_ACT_001_GBL006 */
      Can_GaaCtrlState[LucIndex].blBusOff = CAN_FALSE;
      /* References: CAN_DDD_ACT_001_GBL007 */
      Can_GaaCtrlState[LucIndex].ulBaudrateIndex = 0U;
      /* References: CAN_DDD_ACT_001_GBL008 */
      Can_GaaCtrlState[LucIndex].ulIntCount = 0U;
      /* References: CAN_DDD_ACT_001_GBL009 */
#if (CAN_WAKEUP_SUPPORT == STD_ON)
      Can_GaaCtrlState[LucIndex].blWakeupEventOccurred = CAN_FALSE;
      /* References: CAN_DDD_ACT_001_GBL010 */
#endif

      /* MISRA Violation: START Msg(2:0491)-2 */
      if (CAN_TRUE == Can_GpPCController[LucIndex].blActivation)
      /* END Msg(2:0491)-2 */
      {
        /* Initialize Controller and enter CHANNEL_RESET mode */
        LblErrFlag = Can_InitController((uint8) LucIndex);
      }
      else
      {
        /* Nothing to do */
      }
    }

    /***********************************************************************
    *                  INITIALIZATION OF Can_GaaHwAccessFlag               *
    ***********************************************************************/
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_TX_COMFIFO == STD_ON) ||\
  (CAN_TX_QUEUE == STD_ON))
    for (LusHohIndex = 0U; (LusHohIndex < CAN_NO_OF_HOHS); LusHohIndex++)
    {
      /* Clear flags which indicates HOH is being accessed by a Can_Write*/
      Can_GaaHwAccessFlag[LusHohIndex] = CAN_FALSE;
      /* References: CAN_DDD_ACT_001_GBL014 */
    }
#endif

    /***********************************************************************
    *                  ENTER GLOBAL_OPERATING MODE                         *
    ***********************************************************************/
    /* MISRA Violation: START Msg(6:2877)-6 */
    for (LucIndex = (uint8) 0U;
      (LucIndex < (uint8) CAN_NO_OF_UNITS) && (CAN_FALSE == LblErrFlag);
      LucIndex++)
    /* END Msg(6:2877)-6 */
    {
      /* Change to GLOBAL_OPERATING mode */
      LulTimeoutDuration = CAN_TIMEOUT_COUNT;
      LucTimeoutResult = Can_GlobalModeChange(
        (uint8) LucIndex, CAN_RSCAN_GMDC_OP, &LulTimeoutDuration, CAN_INIT_SID);
      /* If mode changed was not finished, report error */
      if (E_OK != LucTimeoutResult)
      {
#if defined(CAN_E_TIMEOUT_FAILURE)
        Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE,
          DEM_EVENT_STATUS_FAILED);
        /* References: CAN_DDD_ACT_001_ERR004 */
#endif
        LblErrFlag = CAN_TRUE;
      }
      else
      {
        /* No action required */
      }
    }

    /* If no error occurred, set the CAN status as initialized */
    if (CAN_FALSE == LblErrFlag)
    {
      Can_SetStatus(CAN_TRUE);
    }
    else
    {
      /* Nothing to do */
    }
  }
}

/*******************************************************************************
** Function Name         : Can_ChangeBaudrate
**
** Service ID            : 0x0D
**
** Description           : This function set baudrate of CAN Controller.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non-Reentrant
**
** Input Parameters      : Controller : Controller ID
**                         Baudrate   : Baudrate in kbps, it must be in
**                                    baudrate configuration of this Controller.
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : Std_ReturnType(E_OK/E_NOT_OK)
**
** Preconditions         : CanDriver module must be initialized and
**                         the state of Controller must be CAN_T_STOP.
**
** Global Variables Used : Can_GaaCtrlState,
**                         Can_GpPBController, Can_GpPCController,
**                         Can_GaaRegs, Can_GaaMirrorChannelReg             
**
** Functions Invoked     : Can_CommonDetCheck, Det_ReportError,
**                         Can_SearchBaudrate, EcuM_SetWakeupEvent
**
** Registers Used        : (CFD)CmCFG, CFDCmDCFG, CFDCmFDCFG
*******************************************************************************/
#if (CAN_CHANGE_BAUDRATE_API == STD_ON)
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(Std_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_ChangeBaudrate(
  uint8 Controller, const uint16 Baudrate)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_013 */
  Std_ReturnType LucReturnValue;
  P2CONST(Can_ControllerBaudrateConfigType, AUTOMATIC, CAN_RSCAN_APPL_CONST)
    LpBaudrateConfig;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulBaudrateIndex;

#if (CAN_DEV_ERROR_DETECT == STD_ON)
  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck(CAN_CHANGE_BAUDRATE_SID, Controller);
  if (CAN_OK != LenCommonResult)
  {
    LucReturnValue = E_NOT_OK;
  }
  /* Check whether the Controller is in stop mode */
  else if (CAN_T_STOP != Can_GaaCtrlState[Controller].enMode)
  {
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                          CAN_CHANGE_BAUDRATE_SID, CAN_E_TRANSITION);
    /* References: CAN_DDD_ACT_013_ERR001 */
    LucReturnValue = E_NOT_OK;
  }
  else
#endif /* #if (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
    /* Search the baud rates configured for the CAN controller*/
    LulBaudrateIndex = Can_SearchBaudrate(Controller, (uint16)Baudrate);
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    /* Report to DET, if parameter Baud rate is an invalid value */
    if (CAN_INVALID_INDEX == LulBaudrateIndex)
    {
      (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                    CAN_CHANGE_BAUDRATE_SID, CAN_E_PARAM_BAUDRATE);
      /* References: CAN_DDD_ACT_013_ERR002 */
      LucReturnValue = E_NOT_OK;
    }
    else
#endif
    {
      /* MISRA Violation: START Msg(2:0491)-2 */
      LpBaudrateConfig =
        &Can_GpPBController[Controller].pBaudrateConfig[LulBaudrateIndex];
      /* END Msg(2:0491)-2 */
      /* MISRA Violation: START Msg(2:0491)-2 */
      LucUnit = Can_GpPCController[Controller].ucUnitIndex;
      /* END Msg(2:0491)-2 */
      /* MISRA Violation: START Msg(2:0491)-2 */
      LucCh = Can_GpPCController[Controller].ucChannelOffset;
      /* END Msg(2:0491)-2 */
      /* Update current baudrate status */
      Can_GaaCtrlState[Controller].ulBaudrateIndex = LulBaudrateIndex;
      /* References: CAN_DDD_ACT_013_GBL001 */
      /* Initialization of baud rate and time setting related parameters*/
      /* QAC Warning: START Msg(2:3441)-2 */
      CAN_WRITE_VERIFY_MIRROR_RUNTIME(
        &Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCFG,
        LpBaudrateConfig->ulCFG,
        &Can_GaaMirrorChannelReg[Controller].ulCFG,
        CAN_COMMON_REG_MASK,
        CAN_CHANGE_BAUDRATE_SID)
      /* END Msg(2:3441)-2 */
      /* References: CAN_DDD_ACT_013_REG001 */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        /* QAC Warning: START Msg(2:3441)-2 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          &Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulDCFG,
          LpBaudrateConfig->ulDCFG,
          &Can_GaaMirrorChannelReg[Controller].ulDCFG,
          CAN_COMMON_REG_MASK,
          CAN_CHANGE_BAUDRATE_SID)
        /* END Msg(2:3441)-2 */
        /* References: CAN_DDD_ACT_013_REG002 */
        /* QAC Warning: START Msg(2:3441)-2 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          &Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulFDCFG,
          LpBaudrateConfig->ulFDCFG,
          &Can_GaaMirrorChannelReg[Controller].ulFDCFG,
          CAN_COMMON_REG_MASK,
          CAN_CHANGE_BAUDRATE_SID)
        /* END Msg(2:3441)-2 */
        /* References: CAN_DDD_ACT_013_REG003 */
#endif
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
        /* Nothing to do */
      }

#if (CAN_WAKEUP_SUPPORT == STD_ON)
      /* Check wakeup event according to SWS_Can_00461 */
      if (CAN_TRUE == Can_GaaCtrlState[Controller].blWakeupEventOccurred)
      {
        /* Clear event flag */
        Can_GaaCtrlState[Controller].blWakeupEventOccurred = CAN_FALSE;
        /* References: CAN_DDD_ACT_013_GBL002 */
        /* Invoke the EcuM Set Wakeup API*/
        /* QAC Warning: START Msg(2:3441)-2 */
        /* MISRA Violation: START Msg(2:0491)-2 */
        EcuM_SetWakeupEvent((EcuM_WakeupSourceType)CAN_DEFAULT_ONE <<
                (Can_GpPCController[Controller].ucWakeupSourceId));
        /* END Msg(2:0491)-2 */
        /* END Msg(2:3441)-2 */
      }
      else
      {
        /* Nothing to do */
      }
#endif /* (CAN_WAKEUP_SUPPORT == STD_ON) */
      LucReturnValue = E_OK;
    }
  }
  return LucReturnValue;
}
#endif

/*******************************************************************************
** Function Name         : Can_CheckBaudrate
**
** Service ID            : 0x0E
**
** Description           : This function checks the baud rates configured for
**                         CAN Controller.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : Controller : Controller ID
**                         Baudrate   : Baudrate in kbps
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : Std_ReturnType(E_OK/E_NOT_OK)
**
** Preconditions         : CanDriver module must be initialized.
**
** Global Variables Used : None
**
** Functions Invoked     : Can_CommonDetCheck, Can_SearchBaudrate,
**                         Det_ReportError
**
** Registers Used        : None
*******************************************************************************/
#if (CAN_CHANGE_BAUDRATE_API == STD_ON)
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(Std_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_CheckBaudrate(
  uint8 Controller, const uint16 Baudrate)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_014 */
  Std_ReturnType LucReturnValue;
  uint32 LulBaudrateIndex;

#if (CAN_DEV_ERROR_DETECT == STD_ON)
  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck(CAN_CHECK_BAUDRATE_SID, Controller);
  if (CAN_OK != LenCommonResult)
  {
    LucReturnValue = E_NOT_OK;
  }
  else
#endif /* #if (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
    /* Search the baud rates configured for the CAN controller*/
    LulBaudrateIndex = Can_SearchBaudrate(Controller, (uint16)Baudrate);
    if (CAN_INVALID_INDEX != LulBaudrateIndex)
    {
      LucReturnValue = E_OK;
    }
    else
    {
#if (CAN_DEV_ERROR_DETECT == STD_ON)
      /* Report to DET */
      (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
        CAN_CHECK_BAUDRATE_SID, CAN_E_PARAM_BAUDRATE);
      /* References: CAN_DDD_ACT_014_ERR001 */
#endif
      LucReturnValue = E_NOT_OK;
    }
  }

  return(LucReturnValue);
}
#endif
/*******************************************************************************
** Function Name         : Can_SetBaudrate
**
** Service ID            : 0x0F
**
** Description           : This function set baudrate of CAN Controller.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant for different Controller,
**                         Non Re-entrant for the same Controller
**
** Input Parameters      : Controller         : Controller ID
**                         BaudRateConfigID   : Baudrate ID
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : Std_ReturnType(E_OK/E_NOT_OK)
**
** Preconditions         : CanDriver module must be initialized.
**                         CanSetBaudrateApi is configured as true.
**                         The state of Controller must be CAN_T_STOP.
**
** Global Variables Used : Can_GaaCtrlState,Can_GpPBController
**                         Can_GpPCController, Can_GaaRegs,
**                         Can_GaaMirrorChannelReg          
**
** Functions Invoked     : Can_CommonDetCheck,Det_ReportError,
**                         Can_SearchBaudrateID
**
** Registers Used        : (CFD)CmCFG, CFDCmDCFG, CFDCmFDCFG
*******************************************************************************/
#if (CAN_SET_BAUDRATE_API == STD_ON)
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(Std_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_SetBaudrate(
  uint8 Controller, uint16 BaudRateConfigID)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_015 */
  Std_ReturnType LucReturnValue;
  P2CONST(Can_ControllerBaudrateConfigType, AUTOMATIC, CAN_RSCAN_APPL_CONST)
    LpBaudrateConfig;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulBaudrateIndex;

#if (CAN_DEV_ERROR_DETECT == STD_ON)
  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck(CAN_SET_BAUDRATE_SID, Controller);
  if (CAN_OK != LenCommonResult)
  {
    LucReturnValue = E_NOT_OK;
  }
  /* Check whether the Controller is in stop mode */
  else if ((CAN_T_STOP != Can_GaaCtrlState[Controller].enMode) ||
    (CAN_NO_PENDING_TRANSITION != Can_GaaCtrlState[Controller].enSubState))
  {
    /* Report to DET */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                          CAN_SET_BAUDRATE_SID, CAN_E_TRANSITION);
    /* References: CAN_DDD_ACT_015_ERR001 */
    /* Set the error status flag to true */
    LucReturnValue = E_NOT_OK;
  }
  else
#endif /* #if (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
    /* Search the baud rates configured for the CAN controller*/
    LulBaudrateIndex = Can_SearchBaudrateID(
      Controller, (uint16)BaudRateConfigID);
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    /* Report to DET, if parameter Baud rate is an invalid value */
    if (CAN_INVALID_INDEX == LulBaudrateIndex)
    {
      /* Report to DET */
      (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                    CAN_SET_BAUDRATE_SID, CAN_E_PARAM_BAUDRATE);
      /* References: CAN_DDD_ACT_015_ERR002 */
      LucReturnValue = E_NOT_OK;
    }
    else
#endif
    {
      /* MISRA Violation: START Msg(2:0491)-2 */
      LpBaudrateConfig =
        &Can_GpPBController[Controller].pBaudrateConfig[LulBaudrateIndex];
      /* END Msg(2:0491)-2 */
      /* MISRA Violation: START Msg(2:0491)-2 */
      LucUnit = Can_GpPCController[Controller].ucUnitIndex;
      /* END Msg(2:0491)-2 */
      /* MISRA Violation: START Msg(2:0491)-2 */
      LucCh = Can_GpPCController[Controller].ucChannelOffset;
      /* END Msg(2:0491)-2 */
      /* Update current baudrate status */
      Can_GaaCtrlState[Controller].ulBaudrateIndex = LulBaudrateIndex;
      /* References: CAN_DDD_ACT_015_GBL001 */
      /* Initialization of baud rate and time setting related parameters*/
      /* QAC Warning: START Msg(2:3441)-2 */
      CAN_WRITE_VERIFY_MIRROR_RUNTIME(
        &Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCFG,
        LpBaudrateConfig->ulCFG,
        &Can_GaaMirrorChannelReg[Controller].ulCFG,
        CAN_COMMON_REG_MASK,
        CAN_SET_BAUDRATE_SID)
      /* END Msg(2:3441)-2 */
      /* References: CAN_DDD_ACT_015_REG001 */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        /* QAC Warning: START Msg(2:3441)-2 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          &Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulDCFG,
          LpBaudrateConfig->ulDCFG,
          &Can_GaaMirrorChannelReg[Controller].ulDCFG,
          CAN_COMMON_REG_MASK,
          CAN_SET_BAUDRATE_SID)
        /* END Msg(2:3441)-2 */
        /* References: CAN_DDD_ACT_015_REG002 */
        /* QAC Warning: START Msg(2:3441)-2 */
        CAN_WRITE_VERIFY_MIRROR_RUNTIME(
          &Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulFDCFG,
          LpBaudrateConfig->ulFDCFG,
          &Can_GaaMirrorChannelReg[Controller].ulFDCFG,
          CAN_COMMON_REG_MASK,
          CAN_SET_BAUDRATE_SID)
        /* END Msg(2:3441)-2 */
        /* References: CAN_DDD_ACT_015_REG003 */
#endif
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
        /* Nothing to do */
      }
      LucReturnValue = E_OK;
    }
  }

  return LucReturnValue;
}
#endif /* (CAN_SET_BAUDRATE_API == STD_ON) */

/*******************************************************************************
** Function Name         : Can_DisableControllerInterrupts
**
** Service ID            : 0x04
**
** Description           : This function disables all interrupts for this CAN
**                         Controller.
**                         If interrupt event occurs after this API, it is kept
**                         and handled after Can_EnableControllerInterrupts.
**                         Note that RxFIFO interruption is not disabled
**                         since it is global interruption.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : Controller : Controller ID
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GpPCController, Can_GaaCtrlState
**                         Can_GaaRegs, Can_GaaGlobalIntCount
**                         
** Functions Invoked     : Can_CommonDetCheck, CAN_ENTER_CRITICAL_SECTION,
**                         CAN_EXIT_CRITICAL_SECTION
**
** Registers Used        : EICn registers
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_DisableControllerInterrupts(
  uint8 Controller)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_004 */
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;

#if (CAN_DEV_ERROR_DETECT == STD_ON)
  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck(CAN_DISABLE_CNTRL_INT_SID, Controller);
  if (CAN_OK != LenCommonResult)
  {
    /* Nothing to do */
  }
  else
#endif
  {
    /* MISRA Violation: START Msg(2:0491)-2 */
    LpPCController = &Can_GpPCController[Controller];
    /* END Msg(2:0491)-2 */

    /* If this Controller is configured as polling mode for all events,
       do nothing */
    if (CAN_INT_DISABLED != LpPCController->ucIntEnable)
    {
      /* Critical section is required to protect updating of ulIntCount
         and to prevent the interruption during manipulating EIMK flag */
      CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_004_CRT001 */

      if (0UL != Can_GaaCtrlState[Controller].ulIntCount)
      {
        /* When this function is called recursively, do nothing */
      }
      else
      {
#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
        /* Disable Global interruption */
        /* QAC Warning: START Msg(2:3892)-7 */
        /* MISRA Violation: START Msg(4:4461)-14 */
        RH850_SV_MODE_ICR_OR(8,
            Can_GaaRegs[LpPCController->ucUnitIndex].pICRxFIFO,
            (uint8)CAN_EIC_EIMK_MASK);
        /* END Msg(4:4461)-14 */
        /* END Msg(2:3892)-7 */
        /* References: CAN_DDD_ACT_004_REG001 */
        /* Increment Global interruption disable count */
        Can_GaaGlobalIntCount[LpPCController->ucUnitIndex]++;
        /* References: CAN_DDD_ACT_004_GBL001 */
#endif
        /* Disable Channel interruption */
        /* QAC Warning: START Msg(2:3892)-7 */
        /* MISRA Violation: START Msg(4:4461)-14 */
        RH850_SV_MODE_ICR_OR(8, LpPCController->pICErr,
          (uint8)CAN_EIC_EIMK_MASK);
        /* END Msg(4:4461)-14 */
        /* END Msg(2:3892)-7 */
        /* References: CAN_DDD_ACT_004_REG002 */
        /* QAC Warning: START Msg(2:3892)-7 */
        /* MISRA Violation: START Msg(4:4461)-14 */
        RH850_SV_MODE_ICR_OR(8, LpPCController->pICRec,
          (uint8)CAN_EIC_EIMK_MASK);
        /* END Msg(4:4461)-14 */
        /* END Msg(2:3892)-7 */
        /* References: CAN_DDD_ACT_004_REG003 */
        /* QAC Warning: START Msg(2:3892)-7 */
        /* MISRA Violation: START Msg(4:4461)-14 */
        RH850_SV_MODE_ICR_OR(8, LpPCController->pICTx,
          (uint8)CAN_EIC_EIMK_MASK);
        /* END Msg(4:4461)-14 */
        /* END Msg(2:3892)-7 */
        /* References: CAN_DDD_ACT_004_REG004 */
#if (CAN_WAKEUP_SUPPORT == STD_ON)
        if (NULL_PTR != LpPCController->pICWakeup)
        {
          /* To modify EIMK flag without affecting EIRF flag,
             access the lower 16 bit only */
          RH850_SV_MODE_ICR_OR(8, LpPCController->pICWakeup,
            (uint8)CAN_EIC_EIMK_MASK);
          /* References: CAN_DDD_ACT_004_REG005 */
        }
        else
        {
          /* No action is Required */
        }
#endif
        /* DummyRead & SYNCP are required to guarantee that
           any interruption never occurs after this function returns. */
        RH850_SV_MODE_REG_READ_ONLY(16, LpPCController->pICTx);
        /* MISRA Violation: START Msg(2:3138)-12 */
        EXECUTE_SYNCP();
        /* END Msg(2:3138)-12 */
      }
      /* Increment recursive count */
      Can_GaaCtrlState[Controller].ulIntCount++;
      /* References: CAN_DDD_ACT_004_GBL002 */

      CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_004_CRT002 */
    }
    else
    {
      /* Nothing to do */
    }
  }
}

/*******************************************************************************
** Function Name         : Can_EnableControllerInterrupts
**
** Service ID            : 0x05
**
** Description           : This function enables all interrupts for this CAN
**                         Controller.
**                         If Can_DisableControllerInterrupt has been called
**                         multiple times, this function should be called
**                         same times to enable interrupts.
**                         If this function when interrupts already enabled,
**                         nothing is done.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Re-entrant
**
** Input Parameters      : Controller : Controller ID
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : None
**
** Preconditions         : The CAN Driver must be initialized.
**
** Global Variables Used : Can_GpPCController, Can_GaaCtrlState
**                         Can_GaaGlobalIntCount, Can_GaaRegs            
**
** Functions Invoked     : Can_CommonDetCheck, CAN_ENTER_CRITICAL_SECTION
**                         CAN_EXIT_CRITICAL_SECTION
**
** Registers Used        : EICn registers
*******************************************************************************/
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(void, CAN_RSCAN_PUBLIC_CODE) Can_EnableControllerInterrupts(
  uint8 Controller)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_005 */
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;

#if (CAN_DEV_ERROR_DETECT == STD_ON)
  Can_ReturnType LenCommonResult;
  LenCommonResult = Can_CommonDetCheck(CAN_ENABLE_CNTRL_INT_SID, Controller);
  if (CAN_OK != LenCommonResult)
  {
    /* Do nothing */
  }
  else
#endif
  {
    /* MISRA Violation: START Msg(2:0491)-2 */
    LpPCController = &Can_GpPCController[Controller];
    /* END Msg(2:0491)-2 */

    /* If this Controller is configured as polling mode for all events,
       do nothing */
    if (CAN_INT_DISABLED != LpPCController->ucIntEnable)
    {
      /* Critical section is required to protect updating of ulIntCount */
      CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_005_CRT001 */

      if (0UL == Can_GaaCtrlState[Controller].ulIntCount)
      {
        /* If interruption is already enabled, do nothing */
      }
      else
      {
        /* Decrement recursive count */
        Can_GaaCtrlState[Controller].ulIntCount--;
        /* References: CAN_DDD_ACT_005_GBL001 */

        if (0UL != Can_GaaCtrlState[Controller].ulIntCount)
        {
          /* Recursive count is still remained, do nothing */
        }
        else
        {
#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
          /* Decrement Global interruption disable count */
          Can_GaaGlobalIntCount[LpPCController->ucUnitIndex]--;
          /* References: CAN_DDD_ACT_005_GBL002 */
          /* Enable Global interruption */
          if (0UL == Can_GaaGlobalIntCount[LpPCController->ucUnitIndex])
          {
            RH850_SV_MODE_ICR_AND(8,
              Can_GaaRegs[LpPCController->ucUnitIndex].pICRxFIFO,
              (uint8)(~CAN_EIC_EIMK_MASK));
            /* References: CAN_DDD_ACT_005_REG001 */
          }
          else
          {
            /* Nothing to do */
          }
#endif
          /* Enable Channel interrupts */
          RH850_SV_MODE_ICR_AND(8, LpPCController->pICErr,
            (uint8)(~CAN_EIC_EIMK_MASK));
          /* References: CAN_DDD_ACT_005_REG002 */
          RH850_SV_MODE_ICR_AND(8, LpPCController->pICRec,
            (uint8)(~CAN_EIC_EIMK_MASK));
          /* References: CAN_DDD_ACT_005_REG003 */
          RH850_SV_MODE_ICR_AND(8, LpPCController->pICTx,
            (uint8)(~CAN_EIC_EIMK_MASK));
          /* References: CAN_DDD_ACT_005_REG004 */
#if (CAN_WAKEUP_SUPPORT == STD_ON)
          /* If waiting wake-up interrupt now, enable it */
          if ((CAN_T_SLEEP == Can_GaaCtrlState[Controller].enMode) &&
            (CAN_NO_PENDING_TRANSITION ==
              Can_GaaCtrlState[Controller].enSubState) &&
            (0U != (LpPCController->ucIntEnable & CAN_CHECK_INT_WAKEUP)) &&
            (NULL_PTR != LpPCController->pICWakeup))
          {
            /* To modify EIMK flag without affecting EIRF flag,
               access the lower 8 bit only */
            RH850_SV_MODE_ICR_AND(8, LpPCController->pICWakeup,
              (uint8)(~CAN_EIC_EIMK_MASK));
            /* References: CAN_DDD_ACT_005_REG005 */
          }
          else
          {
            /* No action is Required */
          }
 #endif
          /* DummyRead & SYNCP are not required when opening Interrupt Mask.
             Because even though there is a pending interrupt,
             it should not necessarily be accepted on the next instruction. */
        }
      }
      /* Enable Interruption */
      CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_005_CRT002 */
    }
    else
    {
      /* Nothing to do */
    }
  }
}

/*******************************************************************************
** Function Name         : Can_CheckWakeup
**
** Service ID            : 0x0B
**
** Description           : This function checks if a wakeup has occurred for the
**                         given controller.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : Controller
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : Can_ReturnType (CAN_OK / CAN_NOT_OK)
**
** Preconditions         : The CAN Driver must be initialized.
**                         CanWakeupFunctionalityAPI is configured as true.
**
** Global Variables Used : Can_GaaCtrlState, Can_GpPCController
**
** Functions Invoked     : Can_CommonDetCheck, EcuM_SetWakeupEvent
**
** Registers Used        : None
*******************************************************************************/
#if (CAN_CHECK_WAKEUP_API == STD_ON)
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
/* QAC Warning: START Msg(3:3206)-8 */
FUNC(Can_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_CheckWakeup(uint8 Controller)
/* END Msg(3:3206)-8 */
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_011 */
  Can_ReturnType LenReturnValue;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  LenReturnValue = Can_CommonDetCheck(CAN_CHECK_WAKEUP_SID, Controller);
  if (CAN_OK != LenReturnValue)
  {
    /* Nothing to do */
  }
  else
#endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
  {
#if (CAN_WAKEUP_SUPPORT == STD_ON)
    /* Check, if the wakeup status is set */
    if (CAN_TRUE == Can_GaaCtrlState[Controller].blWakeupEventOccurred)
    {
      /* Clear event flag */
      Can_GaaCtrlState[Controller].blWakeupEventOccurred = CAN_FALSE;
      /* References: CAN_DDD_ACT_011_GBL001 */
      /* Invoke the EcuM Set Wakeup API*/
      /* QAC Warning: START Msg(2:3441)-2 */
      /* MISRA Violation: START Msg(2:0491)-2 */
      EcuM_SetWakeupEvent((EcuM_WakeupSourceType)CAN_DEFAULT_ONE <<
               (Can_GpPCController[Controller].ucWakeupSourceId));
      /* END Msg(2:0491)-2 */
      /* END Msg(2:3441)-2 */
      LenReturnValue = CAN_OK;
    }
    else
#endif /* (CAN_WAKEUP_SUPPORT == STD_ON) */
    {
      /* Set Can_ReturnType to CAN_NOT_OK */
      LenReturnValue = CAN_NOT_OK;
    }
  }
  /* returning the development error occurred */
  return(LenReturnValue);
}
#endif /* (CAN_CHECK_WAKEUP_API == STD_ON) */

#define CAN_RSCAN_STOP_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

/*******************************************************************************
** Function Name       : Can_SetStatus
**
** Service ID          : Not Applicable
**
** Description         : This function updates Can_GblInitialized.
**                       The purpose of this function is to prevent the order of
**                       instructions being changed by the compiler.
**
** Sync/Async          : Synchronous
**
** Re-entrancy         : Non Re-entrant
**
** Input Parameters    : LblStatus: New status value
**
** InOut Parameters    : None
**
** Output Parameters   : None
**
** Return parameter    : None
**
** Preconditions       : None
**
** Global Variable     : None
**
** Function invoked    : None
**
** Registers Used      : None
*******************************************************************************/
static FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_SetStatus(
  const boolean LblStatus)
{
  /* References: CAN_DDD_ACT_045 */
  Can_GblInitialized = LblStatus;
  /* References: CAN_DDD_ACT_045_GBL001 */
}

/*******************************************************************************
** Function Name         : Can_InitModule
**
** Service ID            : Not applicable
**
** Description           : Initialize RSCANn module.
**                         After this function, module becomes GLOBAL_RESET.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : LucUnit : Index of Can_GaaRegs for the target unit
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : When any error occurred CAN_TRUE, otherwise CAN_FALSE
**
** Preconditions         : Can_GpConfig must be initialized
**
** Global Variables Used : Can_GpConfig, Can_GaaRegs
**
** Functions Invoked     : Dem_ReportErrorStatus, Can_WaitRegisterChange,
**                         Can_GlobalModeChange
**
** Registers Used        : (CFD)GSTS, CFDGRMCFG, CFDGFDCFG, (CFD)RMNB,
**                         (CFD)GAFLCFG, (CFD)GCFG, (CFD)TMIECy,
**                         (CFD)GAFLECTR, (CFD)GAFLIDj, (CFD)GAFLMj,
**                         (CFD)GAFLP0_j, (CFD)GAFLP1_j,
**                         EIC registers, (CFD)GCTR
*******************************************************************************/
static FUNC(boolean, CAN_RSCAN_PRIVATE_CODE) Can_InitModule(
  const uint8 LucUnit)
{
  /* References: CAN_DDD_ACT_026 */
  boolean LblErrFlag;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;
  uint32 LulCount;
#if ((CAN_RX_OBJECT == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON))
  P2CONST(Can_FilterType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpFilter;
  uint32 LulRulePage;
  uint32 LulRuleIndex;
#endif
  P2CONST(Can_HWUnitInfoType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHWInfo;

  /* Get PBConfig data for this RSCAN(FD) unit */
  /* MISRA Violation: START Msg(2:0316)-1 */
  LpHWInfo =
    (P2CONST(Can_HWUnitInfoType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA))
    Can_GpConfig->pHWUnitInfo;
  /* END Msg(2:0316)-1 */
  /* MISRA Violation: START Msg(2:0491)-2 */
  LpHWInfo = &LpHWInfo[LucUnit];
  /* END Msg(2:0491)-2 */

  /* Wait until GRAMINIT flag is set */
  LulTimeoutDuration = CAN_TIMEOUT_COUNT;
  LucTimeoutResult = Can_WaitRegisterChange(
    &Can_GaaRegs[LucUnit].pCmn->ulGSTS,
    CAN_RSCAN_GRAMINIT, 0UL, &LulTimeoutDuration);
  /* If GRAMINIT flag was not set, report error */
  if (E_OK != LucTimeoutResult)
  {
#if defined(CAN_E_TIMEOUT_FAILURE)
    Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
    /* References: CAN_DDD_ACT_026_ERR001 */
#endif
    LblErrFlag = CAN_TRUE;
  }
  else
  {
    /***********************************************************************
    *                  ENTER GLOBAL_RESET MODE                             *
    ***********************************************************************/
    /* Change to GLOBAL_RESET mode */
    LulTimeoutDuration = CAN_TIMEOUT_COUNT;
    LucTimeoutResult = Can_GlobalModeChange(LucUnit,
      CAN_RSCAN_GMDC_RESET, &LulTimeoutDuration, CAN_INIT_SID);
    /* If mode changed was not finished, report error */
    if (E_OK != LucTimeoutResult)
    {
#if defined(CAN_E_TIMEOUT_FAILURE)
      Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
      /* References: CAN_DDD_ACT_026_ERR002 */
#endif
      LblErrFlag = CAN_TRUE;
    }
    else
    {
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
#if (CAN_CANV2_CONFIGURED == STD_ON)
        /* Set RCMC bit to activate RSCANFD with CANFD mode */
        CAN_WRITE_VERIFY_INIT
        (
          &Can_GaaRegs[LucUnit].pCmn->ulGRMCFG,
          CAN_RSCAN_RCMC,
          CAN_COMMON_REG_MASK,
          CAN_INIT_SID
        )
        /* References: CAN_DDD_ACT_026_REG001 */
#endif
        /* Fix TSCCFG=0 and RPED=0, these functions are not used in MCAL */
        CAN_WRITE_VERIFY_INIT
        (
          &Can_GaaRegs[LucUnit].pCmn->ulGFDCFG,
          CAN_RSCAN_GFDCFG_DEFAULT,
          CAN_COMMON_REG_MASK,
          CAN_INIT_SID
        )
        /* References: CAN_DDD_ACT_026_REG002 */
#endif
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
        /* Nothing to do */
      }

      /***********************************************************************
      *                  INITIALIZATION OF BUFFER SETTINGS                   *
      ***********************************************************************/
      /* Set payload size and buffer number of RxBuffer */
      CAN_WRITE_VERIFY_INIT
      (
        &Can_GaaRegs[LucUnit].pCmn->ulRMNB,
        LpHWInfo->ulRMNB,
        CAN_COMMON_REG_MASK,
        CAN_INIT_SID
      )
      /* References: CAN_DDD_ACT_026_REG003 */
      /* Set the value of global configuration register */
      CAN_WRITE_VERIFY_INIT
      (
        &Can_GaaRegs[LucUnit].pCmn->ulGCFG,
        LpHWInfo->ulGCFG,
        CAN_COMMON_REG_MASK,
        CAN_INIT_SID
      )
      /* References: CAN_DDD_ACT_026_REG004 */

      /* Initialize transmission buffer interruption enable/disable */
      for (LulCount = (uint32) 0UL;
         LulCount < (uint32)LpHWInfo->ucNoOfTMIEC; LulCount++)
      {
        /* MISRA Violation: START Msg(2:0491)-2 */
        /* QAC Warning: START Msg(2:3441)-2 */
        CAN_WRITE_VERIFY_INIT
        (
          &Can_GaaRegs[LucUnit].pCmn->aaTMIEC[LulCount],
          LpHWInfo->pTMIEC[LulCount],
          CAN_COMMON_REG_MASK,
          CAN_INIT_SID
        )
        /* END Msg(2:3441)-2 */
        /* END Msg(2:0491)-2 */
        /* References: CAN_DDD_ACT_026_REG005 */
      }

      /***********************************************************************
      *           INITIALIZATION OF ACCEPTANCE FILTER LIST                   *
      ************************************************************************/
      /* Set number of receive rules */
      for (LulCount = (uint32) 0U;
          LulCount < (uint32) LpHWInfo->ucNoOfGAFLCFG; LulCount++)
      {
        /* QAC Warning: START Msg(2:3441)-2 */
        CAN_WRITE_VERIFY_INIT
        (
          &Can_GaaRegs[LucUnit].pCmn->aaGAFLCFG[LulCount],
          LpHWInfo->aaGAFLCFG[LulCount],
          CAN_COMMON_REG_MASK,
          CAN_INIT_SID
        )
        /* END Msg(2:3441)-2 */
        /* References: CAN_DDD_ACT_026_REG006 */
      }
#if ((CAN_RX_OBJECT == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON))
      LulCount = (uint32)0U;
      LulRulePage = 0U;
      /* Set all receive rules to the receive filter registers */
      while (LulCount < (uint32)LpHWInfo->usNoOfFilters)
      {
        /* Set page index for each 16 rules */
        CAN_WRITE_VERIFY_INIT
        (
          &Can_GaaRegs[LucUnit].pCmn->ulGAFLECTR,
          CAN_RSCAN_AFLDAE | CAN_RSCAN_AFLPN(LulRulePage),
          CAN_COMMON_REG_MASK,
          CAN_INIT_SID
        )
        /* References: CAN_DDD_ACT_026_REG007 */

        LulRuleIndex = 0U;
        /* Set up to 16 rules to the receive filter registers in this page */
        while (((uint32)CAN_RSCAN_RULES_PER_PAGE > LulRuleIndex) &&
          (LulCount < (uint32)LpHWInfo->usNoOfFilters))
        {
          /* MISRA Violation: START Msg(2:0491)-2 */
          LpFilter = &LpHWInfo->pFilterConfig[LulCount];
          /* END Msg(2:0491)-2 */
          /* MISRA Violation: START Msg(2:0491)-2 */
          /* QAC Warning: START Msg(2:3441)-2 */
          CAN_WRITE_VERIFY_INIT
          (
            &Can_GaaRegs[LucUnit].pRR[LulRuleIndex].ulGAFLID,
            LpFilter->ulGAFLID,
            CAN_COMMON_REG_MASK,
            CAN_INIT_SID
          )
          /* END Msg(2:3441)-2 */
          /* END Msg(2:0491)-2 */
          /* References: CAN_DDD_ACT_026_REG008 */
          /* MISRA Violation: START Msg(2:0491)-2 */
          /* QAC Warning: START Msg(2:3441)-2 */
          CAN_WRITE_VERIFY_INIT
          (
            &Can_GaaRegs[LucUnit].pRR[LulRuleIndex].ulGAFLM,
            LpFilter->ulGAFLM,
            CAN_COMMON_REG_MASK,
            CAN_INIT_SID
          )
          /* END Msg(2:3441)-2 */
          /* END Msg(2:0491)-2 */
          /* References: CAN_DDD_ACT_026_REG011 */
          /* MISRA Violation: START Msg(2:0491)-2 */
          /* QAC Warning: START Msg(2:3441)-2 */
          CAN_WRITE_VERIFY_INIT
          (
            &Can_GaaRegs[LucUnit].
              pRR[LulRuleIndex].aaGAFLP[CAN_RSCAN_GAFLP_PAGE0],
            LpFilter->aaGAFLP[CAN_RSCAN_GAFLP_PAGE0],
            CAN_COMMON_REG_MASK,
            CAN_INIT_SID
          )
          /* END Msg(2:3441)-2 */
          /* END Msg(2:0491)-2 */
          /* References: CAN_DDD_ACT_026_REG012 */
          /* MISRA Violation: START Msg(2:0491)-2 */
          /* QAC Warning: START Msg(2:3441)-2 */
          CAN_WRITE_VERIFY_INIT
          (
            &Can_GaaRegs[LucUnit].
              pRR[LulRuleIndex].aaGAFLP[CAN_RSCAN_GAFLP_PAGE1],
            LpFilter->aaGAFLP[CAN_RSCAN_GAFLP_PAGE1],
            CAN_COMMON_REG_MASK,
            CAN_INIT_SID
          )
          /* END Msg(2:3441)-2 */
          /* END Msg(2:0491)-2 */
          /* References: CAN_DDD_ACT_026_REG013 */
          LulRuleIndex++;
          LulCount++;
        }
        /* Increment page */
        LulRulePage++;
      }
      /* Write disabling the Acceptance Filter List*/
      CAN_WRITE_VERIFY_INIT
      (
        &Can_GaaRegs[LucUnit].pCmn->ulGAFLECTR,
        CAN_RSCAN_AFLDAE_OFF,
        CAN_COMMON_REG_MASK,
        CAN_INIT_SID
      )
      /* References: CAN_DDD_ACT_026_REG009 */

      /***********************************************************************
      *           INITIALIZATION OF GLOBAL INTERRUPTION                      *
      ************************************************************************/
#if ((CAN_RSCAN0_RXFIFO_INTERRUPT == STD_ON) || \
    (CAN_RSCAN1_RXFIFO_INTERRUPT == STD_ON))
      /* MISRA Violation: START Msg(2:3138)-12 */
      RH850_SV_CLEAR_ICR_SYNCP(8, Can_GaaRegs[LucUnit].pICRxFIFO,
        (uint8)(~CAN_EIC_EIMK_MASK));
      /* END Msg(2:3138)-12 */
      /* References: CAN_DDD_ACT_026_REG010 */
#endif
#endif /* #if ((CAN_RX_OBJECT == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON)) */
      LblErrFlag = CAN_FALSE;
    }
  }
  return LblErrFlag;
}

/*******************************************************************************
** Function Name         : Can_InitController
**
** Service ID            : Not applicable
**
** Description           : Initialize a Controller.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : LucCtrlIndex : Index of Controller
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : When any error occurred CAN_TRUE, otherwise CAN_FALSE
**
** Preconditions         : Can_GpConfig must be initialized
**                         Global state must be GLOBAL_RESET mode
**
** Global Variables Used : Can_GpPCController, Can_GpPBController
**                         Can_GaaActiveControllers, Can_GaaRegs
**                         Can_GaaMirrorChannelReg, Can_GpHohConfig
**                         Can_GaaMirrorHohReg
**
** Functions Invoked     : Dem_ReportErrorStatus, Can_ChannelModeChange
**
** Registers Used        : (CFD)CFCCk, (CFD)TXQCCm, (CFD)RFCCx,(CFD)THLCCm
**                         (CFD)Cm(N)CFG, CFDCmFDCFG, CFDCmDCFG, (CFD)CmCTR,
**                         EIC registers,(CFD)CmSTS
*******************************************************************************/
static FUNC(boolean, CAN_RSCAN_PRIVATE_CODE) Can_InitController(
  const uint8 LucCtrlIndex)
{
  /* References: CAN_DDD_ACT_027 */
  boolean LblErrFlag;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulHohIndex;
  P2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHoh;
  P2CONST(Can_ControllerPCConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPCController;
  P2CONST(Can_ControllerPBConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpPBController;
  P2CONST(Can_ControllerBaudrateConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA)
    LpBaudrateConfig;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;

  /* Get pointer to configuration table */
  /* MISRA Violation: START Msg(2:0491)-2 */
  LpPCController = &Can_GpPCController[LucCtrlIndex];
  /* END Msg(2:0491)-2 */
  /* MISRA Violation: START Msg(2:0491)-2 */
  LpPBController = &Can_GpPBController[LucCtrlIndex];
  /* END Msg(2:0491)-2 */

  LucUnit = LpPCController->ucUnitIndex;
  LucCh = LpPCController->ucChannelOffset;
#if (CAN_WAKEUP_SUPPORT == STD_ON)
  /* Since initial state is not SLEEP, set active flag */
  Can_GaaActiveControllers[LucUnit] |= (1UL << LucCtrlIndex);
  /* References: CAN_DDD_ACT_027_GBL001 */
#endif

  /***********************************************************************
  *                  ENTER CHANNEL_RESET MODE                            *
  ***********************************************************************/
  LulTimeoutDuration = CAN_TIMEOUT_COUNT;
  LucTimeoutResult =
    Can_ChannelModeChange(LucUnit, LucCtrlIndex, CAN_RSCAN_CHMDC_RESET,
    &LulTimeoutDuration, CAN_INIT_SID);
  if (E_OK != LucTimeoutResult)
  {
#if defined(CAN_E_TIMEOUT_FAILURE)
    Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
    /* References: CAN_DDD_ACT_027_ERR001 */
#endif
    LblErrFlag = CAN_TRUE;
  }
  else
  {
    /*******************************************************************
    *                  INITIALIZATION OF BAUDRATE                      *
    *******************************************************************/
    /* MISRA Violation: START Msg(2:0491)-2 */
    LpBaudrateConfig =
      &LpPBController->pBaudrateConfig[CAN_DEFAULT_BAUDRATE_INDEX];
    /* END Msg(2:0491)-2 */
    /* Setting the value for nBTP into the nominal channel register */
    /* QAC Warning: START Msg(2:3441)-2 */
    CAN_WRITE_VERIFY_MIRROR_INIT
    (
      &Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCFG,
      LpBaudrateConfig->ulCFG,
      &Can_GaaMirrorChannelReg[LucCtrlIndex].ulCFG,
      CAN_COMMON_REG_MASK,
      CAN_INIT_SID
    )
    /* END Msg(2:3441)-2 */
    /* References: CAN_DDD_ACT_027_REG001 */

#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
    {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
      /* Configuring FDCFG register*/
      /* QAC Warning: START Msg(2:3441)-2 */
      CAN_WRITE_VERIFY_MIRROR_INIT
      (
        &Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulFDCFG,
        LpBaudrateConfig->ulFDCFG,
        &Can_GaaMirrorChannelReg[LucCtrlIndex].ulFDCFG,
        CAN_COMMON_REG_MASK,
        CAN_INIT_SID
      )
      /* END Msg(2:3441)-2 */

      /* References: CAN_DDD_ACT_027_REG002 */
      /* Setting the value for dBTP into the register */
      /* QAC Warning: START Msg(2:3441)-2 */
      CAN_WRITE_VERIFY_MIRROR_INIT
      (
        &Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulDCFG,
        LpBaudrateConfig->ulDCFG,
        &Can_GaaMirrorChannelReg[LucCtrlIndex].ulDCFG,
        CAN_COMMON_REG_MASK,
        CAN_INIT_SID
      )
      /* END Msg(2:3441)-2 */
      /* References: CAN_DDD_ACT_027_REG011 */
#endif
    }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    else
#endif
    {
      /* Nothing to do */
    }

    /*******************************************************************
    *                  INITIALIZATION OF HTH/HRH BUFFERS               *
    *******************************************************************/
    for (LulHohIndex = (uint32) 0U;
      LulHohIndex < (uint32) CAN_NO_OF_HOHS; LulHohIndex++)
    {
      /* MISRA Violation: START Msg(2:0491)-2 */
      LpHoh = &Can_GpHohConfig[LulHohIndex];
      /* END Msg(2:0491)-2 */
      if (LpHoh->ucController == LucCtrlIndex)
      {
        switch (LpHoh->enBufferType)
        {
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_RX_BUFFER == STD_ON))
        case CAN_BUFFERTYPE_BUFFER:
          /* Nothing is required */
          break;
#endif
#if (CAN_RX_FIFO == STD_ON)
        /* QAC Warning: START Msg(2:3441)-2 */
        case CAN_BUFFERTYPE_RXFIFO:
          CAN_WRITE_VERIFY_MIRROR_INIT
          (
            &Can_GaaRegs[LucUnit].pCmn->aaRFCC[LpHoh->ucBufferIndex],
            LpHoh->ulXXCCRegValue,
            &Can_GaaMirrorHohReg[LulHohIndex].ulRFCC,
            CAN_COMMON_REG_MASK,
            CAN_INIT_SID
          )
        /* END Msg(2:3441)-2 */
          /* References: CAN_DDD_ACT_027_REG003 */
          break;
#endif
#if(CAN_TX_QUEUE == STD_ON)
        /* QAC Warning: START Msg(2:3441)-2 */
        case CAN_BUFFERTYPE_TXQUEUE:
          CAN_WRITE_VERIFY_MIRROR_INIT
          (
            &Can_GaaRegs[LucUnit].pCmn->aaTXQCC[LpHoh->ucBufferIndex],
            LpHoh->ulXXCCRegValue,
            &Can_GaaMirrorHohReg[LulHohIndex].ulTXQCC,
            CAN_COMMON_REG_MASK,
            CAN_INIT_SID
          )
        /* END Msg(2:3441)-2 */
          /* References: CAN_DDD_ACT_027_REG004 */
          break;
#endif
        /* QAC Warning: START Msg(2:3441)-2 */
        /* QAC Warning: START Msg(2:3352)-6 */
        default:
#if ((CAN_RX_COMFIFO == STD_ON) || (CAN_TX_COMFIFO == STD_ON) || \
  (CAN_GATEWAY_COMFIFO == STD_ON))
          CAN_WRITE_VERIFY_MIRROR_INIT
          (
            &Can_GaaRegs[LucUnit].pCmn->aaCFCC[LpHoh->ucBufferIndex],
            LpHoh->ulXXCCRegValue,
            &Can_GaaMirrorHohReg[LulHohIndex].ulCFCC,
            CAN_COMMON_REG_MASK,
            CAN_INIT_SID
          )
          /* References: CAN_DDD_ACT_027_REG005 */
#endif
          break;
        }
        /* END Msg(2:3352)-6 */
        /* END Msg(2:3441)-2 */
      }
      else
      {
        /* Nothing to do */
      }
    }

    /*******************************************************************
    *                       SETTING OF TRANSMIT HISTORY BUFFER         *
    *******************************************************************/
    /* QAC Warning: START Msg(2:3441)-2 */
    CAN_WRITE_VERIFY_INIT
    (
      &Can_GaaRegs[LucUnit].pCmn->aaTHLCC[LucCh],
      LpPCController->ulTHLCC,
      CAN_COMMON_REG_MASK,
      CAN_INIT_SID
    )
    /* END Msg(2:3441)-2 */
    /* References: CAN_DDD_ACT_027_REG006 */

    /*******************************************************************
    *                       SETTING OF ERROR INTERRUPTS                *
    *******************************************************************/
    /* Disabling Interrupts in can controller control register*/
    /* QAC Warning: START Msg(2:3441)-2 */
    CAN_WRITE_VERIFY_MIRROR_INIT
    (
      &Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCTR,
      LpPCController->ulCTR | CAN_RSCAN_CHMDC_RESET,
      &Can_GaaMirrorChannelReg[LucCtrlIndex].ulCTR,
      CAN_COMMON_REG_MASK,
      CAN_INIT_SID
    )
    /* END Msg(2:3441)-2 */
    /* References: CAN_DDD_ACT_027_REG007 */

    /*******************************************************************
    *                       ENABLING OF INTERRUPTS                     *
    *******************************************************************/
    /* Enable interrupts */
    RH850_SV_MODE_ICR_AND(8, LpPCController->pICErr,
      (uint8)(~CAN_EIC_EIMK_MASK));
    /* References: CAN_DDD_ACT_027_REG008 */
    RH850_SV_MODE_ICR_AND(8, LpPCController->pICRec,
      (uint8)(~CAN_EIC_EIMK_MASK));
    /* References: CAN_DDD_ACT_027_REG009 */
    RH850_SV_MODE_ICR_AND(8, LpPCController->pICTx,
      (uint8)(~CAN_EIC_EIMK_MASK));
    /* References: CAN_DDD_ACT_027_REG010 */
    /* DummyRead & SYNCP */
    RH850_SV_MODE_REG_READ_ONLY(16, LpPCController->pICTx);
    /* MISRA Violation: START Msg(2:3138)-12 */
    EXECUTE_SYNCP();
    /* END Msg(2:3138)-12 */

    LblErrFlag = CAN_FALSE;
  }

  return LblErrFlag;
}

/*******************************************************************************
** Function Name         : Can_SearchBaudrate
**
** Service ID            : Not Applicable
**
** Description           : This function searches the baudrate configured for
**                         CAN Controller.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : LucCtrlIndex : Index of Controller config table
**                         LusBaudrate  : Baudrate in kbps
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : If specified baudrate is found, its index.
**                         Otherwise CAN_INALID_INDEX.
**
** Preconditions         : CanDriver module must be initialized.
**
** Global Variables Used : Can_GpPBController
**
** Functions Invoked     : None
**
** Registers Used        : None
*******************************************************************************/
#if (CAN_CHANGE_BAUDRATE_API == STD_ON)
static FUNC(uint32, CAN_RSCAN_PRIVATE_CODE) Can_SearchBaudrate(
  const uint8 LucCtrlIndex, const uint16 LusBaudrate)
{
  /* References: CAN_DDD_ACT_024 */
  P2CONST(Can_ControllerBaudrateConfigType, AUTOMATIC, CAN_RSCAN_APPL_CONST)
    LpBaudrateConfig;
  uint32 LulReturnValue;
  uint32 LulBaudrateConfigCount;
  uint32 LulCount;

  /* MISRA Violation: START Msg(2:0491)-2 */
  LpBaudrateConfig = Can_GpPBController[LucCtrlIndex].pBaudrateConfig;
  /* END Msg(2:0491)-2 */
  /* MISRA Violation: START Msg(2:0491)-2 */
  LulBaudrateConfigCount = Can_GpPBController[LucCtrlIndex].usNoOfBaudrate;
  /* END Msg(2:0491)-2 */
  LulReturnValue = (uint32) CAN_INVALID_INDEX;
  LulCount = 0UL;
  /* Seek a baudrate setting until end of the table or a setting is found */
  while ((LulCount < LulBaudrateConfigCount) &&
    (CAN_INVALID_INDEX == LulReturnValue))
  {
    /* MISRA Violation: START Msg(2:0491)-2 */
    if (LpBaudrateConfig[LulCount].usBaudrateConfig == LusBaudrate)
    /* END Msg(2:0491)-2 */
    {
      /* Update the global variable for the configuration structure index */
      LulReturnValue = LulCount;
    }
    else
    {
      /* No action required */
    }
    LulCount++;
  }
  return(LulReturnValue);
}
#endif
/*******************************************************************************
** Function Name         : Can_SearchBaudrateID
**
** Service ID            : Not Applicable
**
** Description           : This function searches the baud rate configured for
**                         CAN Controller.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non Re-entrant
**
** Input Parameters      : LucCtrlIndex  : Index of Controller config table
**                         LusBaudrateID : Baudrate ID
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : If specified baudrate is found, its index.
**                         Otherwise CAN_INALID_INDEX.
**
** Preconditions         : CanDriver module must be initialized.
**
** Global Variables Used : Can_GpPBController
**
** Functions Invoked     : None
**
** Registers Used        : None
*******************************************************************************/
#if (CAN_SET_BAUDRATE_API == STD_ON)
static FUNC(uint32, CAN_RSCAN_PRIVATE_CODE) Can_SearchBaudrateID(
  const uint8 LucCtrlIndex, const uint16 LusBaudrateID)
{
  /* References: CAN_DDD_ACT_025 */
  P2CONST(Can_ControllerBaudrateConfigType, AUTOMATIC, CAN_RSCAN_APPL_CONST)
    LpBaudrateConfig;
  uint32 LulReturnValue;
  uint32 LulBaudrateConfigCount;
  uint32 LulCount;

  /* MISRA Violation: START Msg(2:0491)-2 */
  LpBaudrateConfig = Can_GpPBController[LucCtrlIndex].pBaudrateConfig;
  /* END Msg(2:0491)-2 */
  /* MISRA Violation: START Msg(2:0491)-2 */
  LulBaudrateConfigCount = Can_GpPBController[LucCtrlIndex].usNoOfBaudrate;
  /* END Msg(2:0491)-2 */
  LulReturnValue = (uint32) CAN_INVALID_INDEX;
  LulCount = 0UL;
  /* Seek a baudrate setting until end of the table or a setting is found */
  while ((LulCount < LulBaudrateConfigCount) &&
    (CAN_INVALID_INDEX == LulReturnValue))
  {
    /* MISRA Violation: START Msg(2:0491)-2 */
    if (LpBaudrateConfig[LulCount].ucBaudrateConfigID == (uint8)LusBaudrateID)
    /* END Msg(2:0491)-2 */
    {
      /* Update the global variable for the configuration structure index */
      LulReturnValue = LulCount;
    }
    else
    {
      /* No action required */
    }
    LulCount++;
  }
  return(LulReturnValue);
}
#endif /* (CAN_SET_BAUDRATE_API == STD_ON) */

#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

/*******************************************************************************
** Function Name         : Can_RAMTest
**
** Service ID            : 0x14
**
** Description           : This API used for testing one RAM page in
**                         the foreground.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Non-Reentrant
**
** Input Parameters      : LulPageID
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : LucResult
**
** Preconditions         : All controllers must be in STOP state.
**
** Global Variables Used : Can_GaaRegs, Can_GulPageID(W), 
**                         Can_GblInitialized
**
** Function(s) invoked   : Can_RamTest_Checker_Algorithm(),
**                         Can_RamTst_WalkPath_Algorithm(),
**                         Can_RamTst_Set_RAMData(), Det_ReportError(),
**                         Can_GlobalModeChange(),Dem_ReportErrorStatus().
**
** Registers Used        : (CFD)GSTS, (CFD)GCTR,(CFD)GLOCKK, 
**                         (CFD)GTSTCTR, (CFD)GTSTCFG, (CFD)RPGACCr
**
*******************************************************************************/
#if (CAN_RAMTEST_API == STD_ON)
#define CAN_RSCAN_START_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(Std_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_RAMTest(uint32 LulPageID)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_061 */
  /* Number of tested RAM cells */
  uint8 LucNumTestCell;
  uint8 LucUnit;
  /* Variable to store the Result of RAM Test in each cycle*/
  Std_ReturnType LucResult;
  uint32 LulTimeoutDuration;
  Std_ReturnType LucTimeoutResult;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  uint8 LucNoOfController;
  uint8 LucCh;
#endif
  /* Pointer to register with volatile to prevent optimization */
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGLOCKKReg;
  P2VAR(volatile uint32, AUTOMATIC, REGSPACE) LpRCANGTSTCTRReg;
  /* MISRA Violation: START Msg(2:2982)-13 */
  LucResult = E_OK;
  /* END Msg(2:2982)-13 */
  LulTimeoutDuration = CAN_TIMEOUT_COUNT;

#if (CAN_DEV_ERROR_DETECT == STD_ON)
  /* Check if the parameter "LulPageID" is out of range */
  if (LulPageID > CAN_MAX_RAMPAGES_HARDWARE)
  {
    /* Report to DET */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                                   CAN_RAMTEST_SID, CAN_RAMTEST_E_OUT_OF_RANGE);
    /* References: CAN_DDD_ACT_061_ERR001 */
    LucResult = E_NOT_OK;
  }
  else
#endif
  {
#if defined(RSCAN0_PAGEID_MAX_VALUE) && defined(RSCAN1_PAGEID_MAX_VALUE)
    /* Check whether the page belongs to RSCAN0 or RSCAN1 */
    if (RSCAN0_PAGEID_MAX_VALUE < LulPageID)
    {
      LucUnit = CAN_ONE;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
      LucNoOfController = RSCAN1_MAX_NUMBER_OF_CONTROLLER;
#endif
      /* Calculating the LulPageID with respective to the RS-CAN1 unit */
      LulPageID = (LulPageID - RSCAN0_PAGEID_MAX_VALUE) - (uint32)CAN_ONE;
      /* Size of last page maybe differ from 256 bytes, so need to check
         if LulPageID is the last page */
      if (RSCAN1_PAGEID_MAX_VALUE == LulPageID)
      {
        LucNumTestCell = RSCAN1_RAM_LAST_PAGE_SIZE;
      }
      else
      {
        LucNumTestCell = CAN_RAM_PAGE_SIZE;
      }
    }
    else
    {
      LucUnit = CAN_ZERO;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
      LucNoOfController = RSCAN0_MAX_NUMBER_OF_CONTROLLER;
#endif
      /* Size of last page maybe differ from 256 bytes, so need to check
         if LulPageID is the last page */
      if (RSCAN0_PAGEID_MAX_VALUE == LulPageID)
      {
        LucNumTestCell = RSCAN0_RAM_LAST_PAGE_SIZE;
      }
      else
      {
        LucNumTestCell = CAN_RAM_PAGE_SIZE;
      }
    }
#elif defined RSCAN0_PAGEID_MAX_VALUE
    LucUnit = CAN_ZERO;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    LucNoOfController = RSCAN0_MAX_NUMBER_OF_CONTROLLER;
#endif
    /* Size of last page maybe differ from 256 bytes, so need to check
       if LulPageID is the last page */
    if (RSCAN0_PAGEID_MAX_VALUE == LulPageID)
    {
      LucNumTestCell = RSCAN0_RAM_LAST_PAGE_SIZE;
    }
    else
    {
      LucNumTestCell = CAN_RAM_PAGE_SIZE;
    }
#else
    LucUnit = CAN_ZERO;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    LucNoOfController = RSCAN1_MAX_NUMBER_OF_CONTROLLER;
#endif
    /* Size of last page maybe differ from 256 bytes, so need to check
       if LulPageID is the last page */
    if (RSCAN1_PAGEID_MAX_VALUE == LulPageID)
    {
      LucNumTestCell = RSCAN1_RAM_LAST_PAGE_SIZE;
    }
    else
    {
      LucNumTestCell = CAN_RAM_PAGE_SIZE;
    }
#endif
#if (CAN_DEV_ERROR_DETECT == STD_ON)
    /* Loop to check if all controllers are in hardware RESET MODE */
    /* MISRA Violation: START Msg(6:2877)-6 */
    for (LucCh = (uint8) 0U;
          (LucCh < LucNoOfController) && (E_OK == LucResult); LucCh++)
    /* END Msg(6:2877)-6 */
    {
      /* Check if this controller belongs to the hardware unit that is under
         ram test and in hardware RESET MODE */
      if (0UL == (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulSTS &
                    CAN_RSCAN_CRSTSTS))
      {
        /* Report to DET */
        (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                                CAN_RAMTEST_SID, CAN_RAMTEST_E_GLOBAL_STOP);
        /* References: CAN_DDD_ACT_061_ERR002 */
        LucResult = E_NOT_OK;
      }
      else
      {
        /* No action required */
      }
    }
#endif
  }
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  if (E_NOT_OK != LucResult)
#endif
  {
    /* Transition to Global Reset Mode */
    LucTimeoutResult = Can_GlobalModeChange(LucUnit, CAN_RSCAN_GMDC_RESET,
      &LulTimeoutDuration, CAN_RAMTEST_SID);

    /* If mode changed was not finished, report error */
    if (E_OK != LucTimeoutResult)
    {
#if defined(CAN_E_TIMEOUT_FAILURE)
      Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
      /* References: CAN_DDD_ACT_061_ERR003 */
#endif
      LucResult = E_NOT_OK;
    }
    else
    {
#if (CAN_CANV2_CONFIGURED == STD_ON)
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
      {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
        /* Set RCMC bit to activate RSCANFD with CANFD mode */
        CAN_WRITE_VERIFY_INIT
        (
          &Can_GaaRegs[LucUnit].pCmn->ulGRMCFG,
          CAN_RSCAN_RCMC,
          CAN_COMMON_REG_MASK,
          CAN_RAMTEST_SID
        )
        /* References: CAN_DDD_ACT_061_REG001 */
#endif
      }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
      else
#endif
      {
        /* Nothing to do */
      }
#endif
      /* Transition to Global Test Mode */
      LucTimeoutResult = Can_GlobalModeChange(LucUnit, CAN_RSCAN_GMDC_TEST,
        &LulTimeoutDuration, CAN_RAMTEST_SID);

      /* If mode changed was not finished, report error */
      if (E_OK != LucTimeoutResult)
      {
#if defined(CAN_E_TIMEOUT_FAILURE)
        Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
        /* References: CAN_DDD_ACT_061_ERR004 */
#endif
        LucResult = E_NOT_OK;
      }
      else
      {
        /* Get GLOCKK register address */
        LpRCANGLOCKKReg = &Can_GaaRegs[LucUnit].pCmn->ulGLOCKK;
        LpRCANGTSTCTRReg = &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR;

        /* Write protection data to GLOCKK register and Enable RAM Test mode */
        CAN_RELEASELOCK

        /* Select the page for Ram Test*/
        CAN_WRITE_VERIFY_RUNTIME
        (
          &Can_GaaRegs[LucUnit].pCmn->ulGTSTCFG,
          CAN_RSCAN_RTMPS(LulPageID),
          CAN_COMMON_REG_MASK,
          CAN_RAMTEST_SID
        )
        /* References: CAN_DDD_ACT_061_REG002 */

        /* Set Can_GulPageID before invoke RAM test internal function */
        Can_GulPageID = LulPageID;
        /* References: CAN_DDD_ACT_061_GBL001 */

        /* Fill all cells with zero */
        Can_RamTst_Set_RAMData(LucNumTestCell, LucUnit, CAN_RAMTEST_FILL_0);

        LucResult = Can_RamTest_Checker_Algorithm(LucNumTestCell, LucUnit);
        if (E_OK == LucResult)
        {
          LucResult = Can_RamTst_WalkPath_Algorithm(LucNumTestCell, LucUnit,
                                                            CAN_RAMTEST_WALK_0);
          if (E_OK == LucResult)
          {
            LucResult = Can_RamTst_WalkPath_Algorithm(LucNumTestCell, LucUnit,
                                                            CAN_RAMTEST_WALK_1);
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

        /* Fill all cells with zero */
        Can_RamTst_Set_RAMData(LucNumTestCell, LucUnit, CAN_RAMTEST_FILL_0);

        /* Disable Ram Test */
        CAN_WRITE_VERIFY_RUNTIME(
          &Can_GaaRegs[LucUnit].pCmn->ulGTSTCTR, CAN_RSCAN_GTSTCTR_DISABLE,
          CAN_COMMON_REG_MASK, CAN_RAMTEST_SID)
        /* References: CAN_DDD_ACT_061_REG003 */

        /* Transition from Global Test Mode to Global Reset Mode */
        LucTimeoutResult = Can_GlobalModeChange(LucUnit, CAN_RSCAN_GMDC_RESET,
          &LulTimeoutDuration, CAN_RAMTEST_SID);

        /* If mode changed was not finished, report error */
        if (E_OK != LucTimeoutResult)
        {
#if defined(CAN_E_TIMEOUT_FAILURE)
          Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE, DEM_EVENT_STATUS_FAILED);
          /* References: CAN_DDD_ACT_061_ERR005 */
#endif
          LucResult = E_NOT_OK;
        }
        else
        {
          /* Transition from Global Reset Mode to Global Stop Mode */
          LucTimeoutResult = Can_GlobalModeChange(LucUnit, CAN_RSCAN_GSLPR |
            CAN_RSCAN_GMDC_RESET, &LulTimeoutDuration, CAN_RAMTEST_SID);

          /* If mode changed was not finished, report error */
          if (E_OK != LucTimeoutResult)
          {
#if defined(CAN_E_TIMEOUT_FAILURE)
            Dem_ReportErrorStatus(CAN_E_TIMEOUT_FAILURE,
                                    DEM_EVENT_STATUS_FAILED);
            /* References: CAN_DDD_ACT_061_ERR006 */
#endif
            LucResult = E_NOT_OK;
          }
          else
          {
            /* No action required */
          }
        }
      }
    }
  }
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  else
  {
    /* No action required */
  }
#endif
  Can_GulPageID = (uint32)CAN_ZERO;
  /* References: CAN_DDD_ACT_061_GBL002 */
  Can_GblInitialized = CAN_FALSE;
  /* References: CAN_DDD_ACT_061_GBL003 */
  return(LucResult);
}
#define CAN_RSCAN_STOP_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */
#endif /* End of CAN_RAMTEST_API == STD_ON */

/*******************************************************************************
** Function Name         : Can_CheckHWConsistency
**
** Service ID            : 0x11
**
** Description           : This is CAN Driver Component support function.
**                         This API compares the control register values with
**                         its corresponding RAM mirror variable if
**                         CAN_RAM_MIRROR is enabled.
**
** Sync/Async            : Synchronous
**
** Reentrancy            : Reentrant
**
** Input Parameters      : LenHWConsistencyMode
**
** InOut Parameters      : None
**
** Output Parameters     : None
**
** Return parameter      : LenRetConsistencyState
**
** Preconditions         : CAN_RAM_MIRROR should be enabled.
**                         CAN Driver must be initialized.
**
** Global Variables Used : Can_GblInitialized
**
** Functions invoked     : Det_ReportError, Can_CheckConsistencyStatic(),
**                         Can_CheckConsistencyDynamic().
**
** Registers Used        : RSCANnGAFLCFG0, RSCANnGAFLCFG1, RSCANnGCFG,
**                         RSCANnGAFLECTR, RSCANnRMNB, RSCFDnCFDGRMCFG
**                         RSCFDnCFDGAFLIDj, RSCFDnCFDGAFLMj,  RSCANnGAFLIDj,
**                         RSCANnGAFLMj, RSCFDnCFDGAFLP0_j, RSCFDnCFDGAFLP1_j,
**                         RSCANnGAFLP0j, RSCANnGAFLP1j.
**
*******************************************************************************/
#if (CAN_RAM_MIRROR == STD_ON)
#define CAN_RSCAN_START_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */
/* MISRA Violation: START Msg(1:1503)-11 */
/* QAC Warning: START Msg(2:3227)-4 */
FUNC(Std_ReturnType, CAN_RSCAN_PUBLIC_CODE) Can_CheckHWConsistency
                                (Can_HWConsistencyModeType LenHWConsistencyMode)
/* END Msg(2:3227)-4 */
/* END Msg(1:1503)-11 */
{
  /* References: CAN_DDD_ACT_058 */
  /* Declare the variable to store the DET return value */
  Std_ReturnType LenRetConsistencyState;
  LenRetConsistencyState = E_OK;
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  /* QAC Warning: START Msg(3:3416)-5 */
  /* Report to DET, if module is initialized */
  if (CAN_TRUE != Can_GblInitialized)
  /* END Msg(3:3416)-5 */
  {
    /* Report to DET */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                            CAN_CHECK_HW_CONSISTENCY_SID, CAN_E_UNINIT);
    /* References: CAN_DDD_ACT_058_ERR001 */
    /* Set the error status flag to true */
    LenRetConsistencyState = E_NOT_OK;
  }
  else
  {
    /* No action required */
  }
  /* Det Check if Can_CheckHWConsistency is called with invalid arguments */
  if ((CAN_STATIC != LenHWConsistencyMode) &&
        (CAN_DYNAMIC != LenHWConsistencyMode))
  {
    /* Report to DET module */
    (void)Det_ReportError(CAN_MODULE_ID, CAN_INSTANCE_ID,
                     CAN_CHECK_HW_CONSISTENCY_SID, CAN_E_PARAM_VALUE);
    /* References: CAN_DDD_ACT_058_ERR002 */
    LenRetConsistencyState = E_NOT_OK;
  }
  else
  {
    /* No action required */
  }

  if (E_NOT_OK != LenRetConsistencyState)
#endif
  {
    /* Hardware consistency check static registers */
    if (CAN_STATIC == LenHWConsistencyMode)
    {
      LenRetConsistencyState = Can_CheckConsistencyStatic();
    }
    /* Check Dynamic registers*/
    else
    {
      LenRetConsistencyState = Can_CheckConsistencyDynamic();
    }
  }
#if (CAN_DEV_ERROR_DETECT == STD_ON)
  else
  {
    /* No action required */
  }
#endif
  return(LenRetConsistencyState);
}
#define CAN_RSCAN_STOP_SEC_PUBLIC_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */

/*******************************************************************************
** Function Name         : Can_CheckConsistencyStatic
**
** Service ID            : Not Applicable
**
** Description           : This is CAN Driver Component support function.
**                         This API compares the control register values with
**                         its corresponding RAM mirror variable if
**                         CAN_RAM_MIRROR is enabled.
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
** Return parameter      : LenRetConsistencyState
**
** Preconditions         : CAN_RAM_MIRROR should be enabled.
**
** Global Variables Used : Can_GpConfig, Can_GaaRegs
**
** Functions invoked     : Det_ReportError
**
** Registers Used        : RSCANnGAFLCFG0, RSCANnGAFLCFG1, RSCANnGCFG,
**                         RSCANnGAFLECTR, RSCANnRMNB, RSCFDnCFDGRMCFG
**                         RSCFDnCFDGAFLIDj, RSCFDnCFDGAFLMj,  RSCANnGAFLIDj,
**                         RSCANnGAFLMj, RSCFDnCFDGAFLP0_j, RSCFDnCFDGAFLP1_j,
**                         RSCANnGAFLP0j, RSCANnGAFLP1j.
**
*******************************************************************************/
#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */
static FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE)
                                  Can_CheckConsistencyStatic (void)
{
  /* References: CAN_DDD_ACT_059 */
  P2CONST(Can_HWUnitInfoType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHWInfo;
#if ((CAN_RX_OBJECT == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON))
  P2CONST(Can_FilterType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpFilter;
  uint32 LulPagesCount;
  uint32 LulRuleIndex;
#endif
  uint8 LucUnit;
  uint32 LulCount;
  Std_ReturnType LenRetValue;

  /* Initialize return value */
  LenRetValue = E_OK;
  /* Set initial value for counter for unit */
  LucUnit = (uint8)0U;
  do
  {
    /* Get PBConfig data for this RSCAN(FD) unit */
    /* MISRA Violation: START Msg(2:0316)-1 */
    LpHWInfo =
      (P2CONST(Can_HWUnitInfoType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA))
      Can_GpConfig->pHWUnitInfo;
    /* END Msg(2:0316)-1 */
    /* MISRA Violation: START Msg(2:0491)-2 */
    LpHWInfo = &LpHWInfo[LucUnit];
    /* END Msg(2:0491)-2 */

    /* Checking for global registers */
    if (Can_GaaRegs[LucUnit].pCmn->ulGCFG != LpHWInfo->ulGCFG)
    {
      LenRetValue = E_NOT_OK;
    }
    else
    {
      /*No action required */
    }
    /* Check registers that are available in CANFD only */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
    {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
#if (CAN_CANV2_CONFIGURED == STD_ON)
      /* Check GRMCFG register */
      if (CAN_RSCAN_RCMC != Can_GaaRegs[LucUnit].pCmn->ulGRMCFG)
      {
        LenRetValue = E_NOT_OK;
      }
      else
#endif
      {
        /* Check GFDCFG register */
        if (Can_GaaRegs[LucUnit].pCmn->ulGFDCFG !=
                  CAN_RSCAN_GFDCFG_DEFAULT)
        {
          LenRetValue = E_NOT_OK;
        }
        else
        {
          /* No action required */
        }
      }
#endif
    }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    else
#endif
    {
      /* Nothing to do */
    }

    /* Check registers related to acceptance filter */
    if (E_NOT_OK != LenRetValue)
    {
      for (LulCount = 0UL;
        LulCount < (uint32) LpHWInfo->ucNoOfGAFLCFG; LulCount++)
      {
        if (Can_GaaRegs[LucUnit].pCmn->aaGAFLCFG[LulCount] !=
                                                LpHWInfo->aaGAFLCFG[LulCount])
        {
          LenRetValue = E_NOT_OK;
        }
        else
        {
          /*No action required */
        }
      }
#if ((CAN_RX_OBJECT == STD_ON) || (CAN_GATEWAY_COMFIFO == STD_ON))
      if ((Can_GaaRegs[LucUnit].pCmn->ulGAFLECTR & CAN_RSCAN_AFLDAE) !=
                CAN_RSCAN_AFLDAE_OFF)
      {
        LenRetValue = E_NOT_OK;
      }
      else
      {
        /* No Action required */
      }

      /* Initialize the Receive Rule Count*/
      LulCount = 0UL;
      /* Initialize the Page Count*/
      LulPagesCount = 0UL;

      /*Enabling the Acceptance Filter List to read the receive rule table*/
      while (LulCount < (uint32)LpHWInfo->usNoOfFilters)
      {
        /* Set page index for each 16 rules */
        Can_GaaRegs[LucUnit].pCmn->ulGAFLECTR = CAN_RSCAN_AFLPN(LulPagesCount);

        LulRuleIndex = 0UL;
        /* Check GAFLID, GAFLM, GAFLP corresponding to each rule */
        while ((CAN_RSCAN_RULES_PER_PAGE > LulRuleIndex) &&
          (LulCount < (uint32)LpHWInfo->usNoOfFilters))
        {
          /* MISRA Violation: START Msg(2:0491)-2 */
          LpFilter = &LpHWInfo->pFilterConfig[LulCount];
          /* END Msg(2:0491)-2 */
          /* MISRA Violation: START Msg(2:0491)-2 */
          if ((Can_GaaRegs[LucUnit].pRR[LulRuleIndex].ulGAFLID !=
                LpFilter->ulGAFLID) ||
              (Can_GaaRegs[LucUnit].pRR[LulRuleIndex].ulGAFLM !=
                LpFilter->ulGAFLM) ||
              (Can_GaaRegs[LucUnit].pRR[LulRuleIndex].
                aaGAFLP[CAN_RSCAN_GAFLP_PAGE0] !=
                  LpFilter->aaGAFLP[CAN_RSCAN_GAFLP_PAGE0]) ||
              (Can_GaaRegs[LucUnit].pRR[LulRuleIndex].
                aaGAFLP[CAN_RSCAN_GAFLP_PAGE1] !=
                  LpFilter->aaGAFLP[CAN_RSCAN_GAFLP_PAGE1]))
          /* END Msg(2:0491)-2 */
          {
            LenRetValue = E_NOT_OK;
          }
          else
          {
            /* No Action required */
          }
          LulRuleIndex++;
          LulCount++;
        }
       /* Increment page */
       LulPagesCount++;
      }
#endif
    }
    else
    {
      /* No Action required */
    }

    /* Check registers related to transmit buffer */
    if (E_NOT_OK != LenRetValue)
    {
      /* Verify whether receive buffer payload value set to 20 bytes in
      case of canV2 and 64 bytes in case of can and also expected number
      of buffers count is up to date */
      if (Can_GaaRegs[LucUnit].pCmn->ulRMNB != LpHWInfo->ulRMNB)
      {
          LenRetValue = E_NOT_OK;
      }
      else
      {
        /* No Action required */
      }

      /* Loop for each TMIEC register */
      for (LulCount = 0UL;
            LulCount < (uint32)LpHWInfo->ucNoOfTMIEC; LulCount++)
      {
        /* MISRA Violation: START Msg(2:0491)-2 */
        if (Can_GaaRegs[LucUnit].pCmn->aaTMIEC[LulCount] !=
              LpHWInfo->pTMIEC[LulCount])
        /* END Msg(2:0491)-2 */
        {
          LenRetValue = E_NOT_OK;
        }
        else
        {
          /* No Action required */
        }
      }
    }
    else
    {
      /* No Action required */
    }
    /* Updating the local register value */
    /* MISRA Violation: START Msg(4:2984)-5 */
    LucUnit++;
    /* END Msg(4:2984)-5 */
  /* MISRA Violation: START Msg(6:2993)-7 */
  /* MISRA Violation: START Msg(6:2996)-8 */
  }while (((uint8)CAN_NO_OF_UNITS) > LucUnit);
  /* END Msg(6:2996)-8 */
  /* END Msg(6:2993)-7 */

  return LenRetValue;
}

/*******************************************************************************
** Function Name         : Can_CheckConsistencyDynamic
**
** Service ID            : Not Applicable
**
** Description           : This is CAN Driver Component support function.
**                         This API compares the control register values with
**                         its corresponding RAM mirror variable if
**                         CAN_RAM_MIRROR is enabled.
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
** Return parameter      : LenRetConsistencyState
**
** Preconditions         : CAN_RAM_MIRROR should be enabled.
**
** Global Variables Used : Can_GaaRegs,Can_GaaMirrorChannelReg
**                         Can_GaaMirrorHohReg,Can_GaaMirrorGlobalReg,
**                         Can_GpPCController, Can_GpHohConfig
**
** Functions invoked     : Det_ReportError, CAN_ENTER_CRITICAL_SECTION,
**                         CAN_EXIT_CRITICAL_SECTION.
**
** Registers Used        : RSCANnGAFLCFG0, RSCANnGAFLCFG1, RSCANnGCFG,
**                         RSCANnGAFLECTR, RSCANnRMNB, RSCFDnCFDGRMCFG
**                         RSCFDnCFDGAFLIDj, RSCFDnCFDGAFLMj,  RSCANnGAFLIDj,
**                         RSCANnGAFLMj, RSCFDnCFDGAFLP0_j, RSCFDnCFDGAFLP1_j,
**                         RSCANnGAFLP0j, RSCANnGAFLP1j.
**
*******************************************************************************/
static FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE)
                                        Can_CheckConsistencyDynamic (void)
{
  /* References: CAN_DDD_ACT_060 */
  P2CONST(Can_HohConfigType, AUTOMATIC, CAN_RSCAN_CONFIG_DATA) LpHoh;
  uint8 LucController;
  uint8 LucUnit;
  uint8 LucCh;
  uint32 LulHohIndex;
  Std_ReturnType LenRetValue;

  /* Initialize return value */
  LenRetValue = E_OK;

  /* Loop for each controller */
  /* MISRA Violation: START Msg(6:2877)-6 */
  for (LucController = (uint8)0U;
    LucController < (uint8)CAN_NO_OF_CONTROLLERS; LucController++)
  /* END Msg(6:2877)-6 */
  {
    /* MISRA Violation: START Msg(2:0491)-2 */
    LucUnit = Can_GpPCController[LucController].ucUnitIndex;
    /* END Msg(2:0491)-2 */
    /* MISRA Violation: START Msg(2:0491)-2 */
    LucCh = Can_GpPCController[LucController].ucChannelOffset;
    /* END Msg(2:0491)-2 */
    /* Critical section is required to prevent the registers is modified while
     checking */
    CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
    /* References: CAN_DDD_ACT_060_CRT001 */
    if ((Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCFG !=
          Can_GaaMirrorChannelReg[LucController].ulCFG) ||
        (Can_GaaRegs[LucUnit].pCmn->aaChReg[LucCh].ulCTR !=
          Can_GaaMirrorChannelReg[LucController].ulCTR))
    {
      LenRetValue = E_NOT_OK;
    }
    else
    {
      /* No Action required */
    }

    /* Check CANFD registers */
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    if (CAN_MACRO_RSCANFD == Can_GaaRegs[LucUnit].enMacroType)
#endif
    {
#if (CAN_RSCANFD_CONFIGURED == STD_ON)
      /* Configuring FDCFG register*/
      if ((Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulFDCFG !=
            Can_GaaMirrorChannelReg[LucController].ulFDCFG) ||
          (Can_GaaRegs[LucUnit].pFD->aaFDChReg[LucCh].ulDCFG !=
            Can_GaaMirrorChannelReg[LucController].ulDCFG))
      {
        LenRetValue = E_NOT_OK;
      }
      else
      {
        /* Nothing to do */
      }
#endif
    }
#if ((CAN_RSCAN_CONFIGURED == STD_ON) && (CAN_RSCANFD_CONFIGURED == STD_ON))
    else
#endif
    {
      /* Nothing to do */
    }
    CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
    /* References: CAN_DDD_ACT_060_CRT002 */

    /* Loop for each hardware object */
    for (LulHohIndex = 0UL;
      (LulHohIndex < (uint32)CAN_NO_OF_HOHS) && (E_OK == LenRetValue);
                                                          LulHohIndex++)
    {
      /* MISRA Violation: START Msg(2:0491)-2 */
      LpHoh = &Can_GpHohConfig[LulHohIndex];
      /* END Msg(2:0491)-2 */
      /* Critical section is required to prevent the registers is modified while
         checking */
      CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_060_CRT003 */
      if (LpHoh->ucController == LucController)
      {
        switch (LpHoh->enBufferType)
        {
#if ((CAN_TX_BUFFER == STD_ON) || (CAN_RX_BUFFER == STD_ON))
        case CAN_BUFFERTYPE_BUFFER:
          /* Nothing is required */
          break;
#endif
#if (CAN_RX_FIFO == STD_ON)
        case CAN_BUFFERTYPE_RXFIFO:
          if (Can_GaaRegs[LucUnit].pCmn->aaRFCC[LpHoh->ucBufferIndex] !=
                Can_GaaMirrorHohReg[LulHohIndex].ulRFCC)
          {
            LenRetValue = E_NOT_OK;
          }
          else
          {
            /* Nothing to do */
          }
          break;
#endif
#if(CAN_TX_QUEUE == STD_ON)
        case CAN_BUFFERTYPE_TXQUEUE:
          if (Can_GaaRegs[LucUnit].pCmn->aaTXQCC[LpHoh->ucBufferIndex] !=
                Can_GaaMirrorHohReg[LulHohIndex].ulTXQCC)
          {
            LenRetValue = E_NOT_OK;
          }
          else
          {
            /* Nothing to do */
          }
          break;
#endif
        default :
#if ((CAN_RX_COMFIFO == STD_ON) || (CAN_TX_COMFIFO == STD_ON) || \
  (CAN_GATEWAY_COMFIFO == STD_ON))
          if (Can_GaaRegs[LucUnit].pCmn->aaCFCC[LpHoh->ucBufferIndex] !=
                Can_GaaMirrorHohReg[LulHohIndex].ulCFCC)
          {
            LenRetValue = E_NOT_OK;
          }
          /* QAC Warning: START Msg(2:3352)-6 */
          else
          {
            /* Nothing to do */
          }
#endif
          break;
        }
          /* END Msg(2:3352)-6 */
      }
      else
      {
        /* Nothing to do */
      }
      CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
      /* References: CAN_DDD_ACT_060_CRT004 */
    }
  }

  /* Loop for each Can unit */
  /* MISRA Violation: START Msg(6:2877)-6 */
  for (LucUnit = (uint8)0U;
    (LucUnit < (uint8)CAN_NO_OF_UNITS) && (E_OK == LenRetValue);
                                                              LucUnit++)
  /* END Msg(6:2877)-6 */
  {
    /* Critical section is required to prevent the registers is modified while
       checking */
    CAN_ENTER_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
    /* References: CAN_DDD_ACT_060_CRT005 */
    if (Can_GaaRegs[LucUnit].pCmn->ulGCTR !=
          Can_GaaMirrorGlobalReg[LucUnit].ulGCTR)
    {
      LenRetValue = E_NOT_OK;
    }
    else
    {
      /* No action required */
    }
    CAN_EXIT_CRITICAL_SECTION(CAN_INTERRUPT_CONTROL_PROTECTION);
    /* References: CAN_DDD_ACT_060_CRT006 */
  }

  return LenRetValue;
}
#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
/* MISRA Violation: START Msg(4:5087)-10 */
#include CAN_MEMMAP_FILE
/* END Msg(4:5087)-10 */
/* END Msg(2:0832)-1 */
#endif
/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
