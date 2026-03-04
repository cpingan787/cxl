/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* File name    = Compiler.h                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2015-2023 Renesas Electronics Corporation                     */
/*============================================================================*/
/* Purpose:                                                                   */
/* Provision for compiler macros                                              */
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
 * V1.0.0:   07-Sep-2015  : Initial version.
 * V1.0.1:   06-Jan-2016  : Following changes are made :
 *                          1. MACRO '#if 0' has been removed.
 *                          2. Functions 'G3K_FETRAP_ENTRY' and
 *                             'G3K_FETRAP_LEAVE' has been modified.
 * V1.0.2:  09-Feb-2017   : #ARDAABD-891
 *                          1. Development branches merged
 * V1.0.3:  25-May-2018   : 1. As part of ARDAABD-3112, added type definition
 *                             CONSTP2FUNC.
 *                          2. Copyright updated.
 * V1.0.4:  09-Apr-2023   : As part of ARDAABD-9477, remove function
 *                          G3K_FETRAP_ENTRY and G3K_FETRAP_LEAVE.
 */
/******************************************************************************/

#ifndef COMPILER_H
#define COMPILER_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#include "Compiler_Cfg.h"    /* Module specific memory and pointer */
                                  /* classes    */
/*******************************************************************************
**                      Version Information                                  **
*******************************************************************************/
/* AUTOSAR specification release version information for R4.0.3 */
#define COMPILER_AR_RELEASE_MAJOR_VERSION  4
#define COMPILER_AR_RELEASE_MINOR_VERSION  5
#define COMPILER_AR_RELEASE_REVISION_VERSION  0

/* AUTOSAR specification version information as per R3.2.2 */
#define COMPILER_AR_MAJOR_VERSION  2
#define COMPILER_AR_MINOR_VERSION  2
#define COMPILER_AR_PATCH_VERSION  0
#define COMPILER_SW_MAJOR_VERSION  1
#define COMPILER_SW_MINOR_VERSION  0
#define COMPILER_SW_PATCH_VERSION  0

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/

/*
 * Compiler abstraction symbols
 */

#define INLINE  inline
#define STATIC  static
//#define _INTERRUPT_  __interrupt
//#define _INTERRUPT_ (#pragma interrupt)
#define _INTERRUPT_ 

#ifndef _GREENHILLS_C_RH850_
  #define _GREENHILLS_C_RH850_
#endif

#ifndef NULL_PTR
  #define NULL_PTR  ((void *)0)
#endif

/* AUTOMATIC used for the declaration of local pointers */
#define AUTOMATIC

/* TYPEDEF used for defining pointer types within type definitions */
#define TYPEDEF

/* Type definition of pointers to functions
   rettype     return type of the function
   ptrclass    defines the classification of the pointer's distance
   fctname     function name respectively name of the defined type
 */
#define P2FUNC(rettype, ptrclass, fctname) rettype (*fctname)

/* Type definition of constant pointers to functions
   rettype     return type of the function
   ptrclass    defines the classification of the pointer's distance
   fctname     function name respectively name of the defined type
 */
#define CONSTP2FUNC(rettype, ptrclass, fctname)  rettype (* const fctname)

/* memclass and ptrclass is not used */
/* [cover parentID={3D1E4249-7935-442a-BA40-B52F61DAD64C}] [/cover] */
/* MISRA2012_RULE_4_9_JUSTIFICATION: Function like macro is defined to comply
   with the AUTOSAR standard. This macro is not used in MCAL.*/
#define FUNC_P2CONST(rettype, ptrclass, memclass) const rettype *

/* The compiler abstraction shall define the FUNC macro for the declaration and
   definition of functions, that ensures correct syntax of function
   declarations as required by a specific compiler. - used for API functions
   rettype     return type of the function
   memclass    classification of the function itself
 */
#define FUNC(type, memclass) memclass type

/* Pointer to constant data
   ptrtype     type of the referenced data
   memclass    classification of the pointer's variable itself
   ptrclass    defines the classification of the pointer's distance
 */
#define P2CONST(ptrtype, memclass, ptrclass)  const ptrtype *

/* Pointer to variable data
   ptrtype     type of the referenced data
   memclass    classification of the pointer's variable itself
   ptrclass    defines the classification of the pointer's distance
 */
#define P2VAR(ptrtype, memclass, ptrclass) ptrtype *

/* Const pointer to variable data
   ptrtype     type of the referenced data
   memclass    classification of the pointer's variable itself
   ptrclass    defines the classification of the pointer's distance
 */
#define CONSTP2VAR(ptrtype, memclass, ptrclass) ptrtype * const

/* Const pointer to constant data
   ptrtype     type of the referenced data
   memclass    classification of the pointer's variable itself
   ptrclass    defines the classification of the pointer's distance
 */
#define CONSTP2CONST(ptrtype, memclass, ptrclass) const ptrtype * const

/* ROM constant
   type        type of the constant
   memclass    classification of the constant
 */
#define CONST(type, memclass) const type

/* RAM variables
   type        type of the variable
   memclass    classification of the variable
 */
#define VAR(type, memclass) type

/* Inline assembler support for HALT instruction */
//#define ASM_HALT() __asm("halt")
#define ASM_HALT() __halt()

/* Inline assembler support for NOP instruction */
//#define ASM_NOP() __asm("nop")
#define ASM_NOP()	__nop()

//#define ENABLE_INTERRUPT()        __asm("ei")
//#define DISABLE_INTERRUPT()       __asm("di")
#define ENABLE_INTERRUPT()		__EI()
#define DISABLE_INTERRUPT()		__DI()

/* Inline assembler support for syncp instruction */
//#define EXECUTE_SYNCP()           __asm("syncp")
#define EXECUTE_SYNCP()		__syncp()

#define NO_PROLOGUE _Pragma("ghs noprologue")

/* Macro FE_INTERRUPT is used to define an FE level interrupt.
 * Has to be placed right before ISR function definition
 */
#define DEFINE_FE_INTERRUPT  _Pragma("ghs interrupt(FE)")
/* Enable this macro only for the devices which support FPU */


/* Utilize the GHS specific intrinsic functions for accessing the cpu system
registers */
#define LDSR                           __LDSR

#define STSR                           __STSR

void __LDSR(int regID, int selID, unsigned int val);

unsigned int __STSR(int regID, int selID);



#define __HAS_FPU__


/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

#endif /* COMPILER_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/


