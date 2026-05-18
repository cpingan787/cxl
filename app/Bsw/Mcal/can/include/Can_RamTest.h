/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = Can_RamTest.h                                               */
/* Version      = V1.0.1                                                      */
/* Date         = 03-Jun-2021                                                 */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* (c) 2019-2021 Renesas Electronics Corporation                              */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision of external declaration of APIs for RAM Test.                    */
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
**                      Revision History                                      **
*******************************************************************************/
/*
 * V1.0.0:  31-May-2019  : Initial version
 * V1.0.1:  19-Mar-2021  : As per ARDAABD-3191, Add comment for some structure
 *                         missing in Source comment.
 *          03-Apr-2021  : Update QAC 931, MISRA-C Rule Violation.
 *                         Add QAC message (2:3453), (2:3458).
 *          03-Jun-2021  : Added QAC Warning messages.
 */
/******************************************************************************/
#ifndef CAN_RAMTEST_H
#define CAN_RAMTEST_H
/*******************************************************************************
**                      MISRA C Rule Violations                               **
*******************************************************************************/
/* 1. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3453) A function could probably be used instead         */
/*                 of this function-like macro.                               */
/* Rule          : MISRA-C:2004 Rule-19.7                                     */
/* Justification : Accept this message Function can't be used in              */
/*                 initializing expressions of const value,                   */
/*                 or macro is better in point of performance.                */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for START Msg(2:3453)-1 and                           */
/*                 END Msg(2:3453)-1 tags in the code.                        */
/******************************************************************************/

/* 2. MISRA C RULE VIOLATION:                                                 */
/* Message       : (2:3458) Macro defines a braced code statement block.      */
/* Rule          : MISRA-C:2004 Rule-19.4                                     */
/* Justification : Since the macros are implemented as function macros braces */
/*                 cannot be avoided.                                         */
/* Verification  : However, part of the code is verified manually and it is   */
/*                 not having any impact.                                     */
/* Reference     : Look for  MISRA Violation: START Msg(2:3458)-2 and         */
/*                 END Msg(2:3458)-2 tags in the code.                        */
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

/******************************************************************************/
/* RAM size of each page */
#define CAN_RAM_PAGE_SIZE                   (uint8)0x40
/* Data to be written into memory for RAM test*/
#define CAN_RAM_TEST_DATA                   (uint32)0xAAAAAAAAUL
/* Protection Release Data 1 for RAM Test */
#define CAN_PROTECTION_RELEASE_DATA1        (uint32)0x00007575UL
/* Protection Release Data 2 for RAM Test */
#define CAN_PROTECTION_RELEASE_DATA2        (uint32)0x00008A8AUL
/* Macro to set all RAM cells to zero */
#define CAN_RAM_TEST_CLEAR_DATA             (uint32)0x00000000UL
/* Macro to set all RAM cells to one */
#define CAN_RAM_TEST_SET_DATA               (uint32)0xFFFFFFFFUL
#define CAN_RAMTST_CELL_DIVIDER             (uint32)0x00000005UL
#define CAN_RAM_TEST_DATA_TYPE              (uint8)0x20
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RAMTST_MASK_BITX(X)             ((0x0001UL) << (X))
/* END Msg(2:3453)-1 */
/* Macro for inverting a particular bit */
/* MISRA Violation: START Msg(2:3453)-1 */
#define CAN_RAMTST_INVERT_BITX(VAR, X, TYPE) ((VAR) ^= \
                                                 (TYPE)CAN_RAMTST_MASK_BITX(X))
/* END Msg(2:3453)-1 */

/* MISRA Violation: START Msg(2:3458)-2 */
#define CAN_RELEASELOCK                                \
{                                                      \
  *(LpRCANGLOCKKReg) = CAN_PROTECTION_RELEASE_DATA1;   \
  *(LpRCANGLOCKKReg) = CAN_PROTECTION_RELEASE_DATA2;   \
  *(LpRCANGTSTCTRReg) = CAN_RSCAN_RTME;                \
}
/* END Msg(2:3458)-2 */
/* Enum deceleration for Can_RamTest*/
typedef enum ETag_Can_RamTestWalkType
{
/* WalkPath type 0: Fill all ram cells with '1' */
  CAN_RAMTEST_WALK_0 = 0,
/* WalkPath type 1: Fill all ram cells with '0' */
  CAN_RAMTEST_WALK_1
} Can_RamTestWalkType;

/* This type defines '0' or '1' will be written to ram cells */
typedef enum ETag_Can_RamTestFillType
{
/* Fill all ram cells with '0' */
  CAN_RAMTEST_FILL_0 = 0,
/* Fill all ram cells with '1' */
  CAN_RAMTEST_FILL_1
} Can_RamTestFillType;

#define CAN_RSCAN_START_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

extern FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE)
        Can_RamTst_WalkPath_Algorithm (uint8 LucTestedCellNumber, uint8 LucUnit,
                                           Can_RamTestWalkType LenWalkPathType);
extern FUNC(Std_ReturnType, CAN_RSCAN_PRIVATE_CODE)
       Can_RamTest_Checker_Algorithm (uint8 LucTestedCellNumber, uint8 LucUnit);
extern FUNC(void, CAN_RSCAN_PRIVATE_CODE) Can_RamTst_Set_RAMData
 (uint8 LucTestedCellNumber, uint8 LucUnit, Can_RamTestFillType LenRAMFillType);

#define CAN_RSCAN_STOP_SEC_PRIVATE_CODE
/* QAC Warning: START Msg(2:0832)-1 */
#include CAN_MEMMAP_FILE
/* END Msg(2:0832)-1 */

#endif /* CAN_RAMTEST_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
