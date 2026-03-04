/**
 * COPYRIGHT
 * ---------------------------------------------------------------------------------------------------------------------
 * Copyright (c) iSOFT INFRASTRUCTURE SOFTWARE CO., LTD. This software is proprietary to
 * iSOFT INFRASTRUCTURE SOFTWARE CO., LTD., and all rights are reserved by iSOFT INFRASTRUCTURE SOFTWARE CO., LTD.
 * Without the express written permission of the company, no organization or individual may copy, install, trial,
 * distribute, or reverse engineer this software. For terms of use and further details, please refer to the End User
 * License Agreement (EULA) or contact us business@i-soft.com.cn for more assistance.
 *
 * This file contains code from iSoft, which is licensed under the LGPL-2.1. However, due to a special exception,
 * you are not required to comply with the provisions of section 6a of LGPL-2.1. Specifically, you may distribute
 * your software, including this file, under terms of your choice, including proprietary licenses, without needing to
 * provide the source code or object code as specified in section 6a. For more details, please refer to the project's
 * LICENSE and EXCEPTION files and the specific exception statement.
 * ---------------------------------------------------------------------------------------------------------------------
 * FILE DESCRIPTION
 * ---------------------------------------------------------------------------------------------------------------------
 * @MCU               : R7F7015833
 * @file              : SchM.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-16 11:47:29
 * @customer          : iSoft
 * @description       : Header file containing RTE types
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
#ifndef SCHM_H
#define SCHM_H
/* ================================================ misar justifications ============================================ */
/**
  \page ISOFT_MISRA_Exceptions  MISRA-C:2012 Compliance Exceptions
    ModeName:Rte
  RuleSorce:puhua_rules-2024.12.rcf
      
    \li VL_Rte_SimilarIdentifier
      Reason: The name is determined by the configuration.
      Risk: Older compilers may interpret it as the same identifier.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_Redeclaration
      Reason: Rte.c need function declaration to use and Xfrm module need either.
      Risk: Code redundancy and may difficult to maintain
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_DiffDataType
      Reason: DataType is determined by the configuration.
      Risk: Code redundancy and may difficult to maintain
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_FuncNoUsed
      Reason: Func may be used.
      Risk: Code redundancy and may difficult to maintain.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_Standard
      Reason: The AUTOSAR standard specifies this.
      Risk: Performance reduction and code redundancy.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_ArrayAccessOutOfBounds
      Reason: The array size and index is generated according to the configuration
      Risk: Performance reduction and code redundancy.
      Prevention: Functional reliability guaranteed by design.

    \li VL_Rte_NoFuncParaIdentifier
      Reason: Based on the code prescribed by AUTOSAR.
      Risk: Function readability is reduced.
      Prevention: Optionally add comments.
     
    \li VL_Rte_FuncCallRedundant
      Reason: Under certain configuration, it would only call one single function.
      Risk: Performance reduction and code redundancy.
      Prevention: Logic remain OK and behave no risk under some other configuration.

    \li VL_Rte_NoDefination
      Reason: Implemented by another module
      Risk: Performance reduction and code redundancy.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_EnumConvert
      Reason: convenient to use general logic to handle  the enumeration definitions for different modules
      Risk: The definition of enumeration values may exceed the range of uint8 values.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_CodeUnreachable
      Reason: Exception Handle
      Risk: Performance reduction and code redundancy.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_DataTypeImplicitConvert
      Reason: Generation because of the configurations.
      Risk: If the symbol number is negative, the value will be unexpected.
      Prevention: The number with a sign is definitely a positive number.

    \li VL_Rte_NumericSuffix
      Reason: The Suffixes were generated by configuration
      Risk: may cause compilation errors or runtime errors.
      Prevention: Modify the configuration

    \li VL_Rte_NoModifyVariable
      Reason: The variables will be modified in dataflow followed
      Risk: Performance reduction and code redundancy.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_VariableNoUse
      Reason: Allow the definition of some unused variables,which defined by configuration
      Risk: Performance reduction and code redundancy.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_UnionDefined
      Reason: The union object is defined by configuration
      Risk: Performance reduction and code redundancy.
      Prevention: Code inspection and test of the different configurations in the component test.

    \li VL_Rte_ArrayQualifier
      Reason: DataType is determined by the configuration.
      Risk: Performance reduction and code redundancy.
      Prevention: C23 support

    \li VL_Rte_UniqueDefinition
      Reason: The objects are in different namespaces
      Risk: Performance reduction and code redundancy.
      Prevention: Ensure through compilation
    
    \li VL_MTR_Rte_STPAR
      Reason: The API is defined by the AUTOSAR standard. The standard compliance vote is higher than the measurement threshold.
      Risk: For the target uC, the stack usage and runtime are too high.
      Prevention: When testing the result code on the target uC, the user must check the stack usage in the project context.

    \li VL_MTR_Rte_STCYC
      Reason: The functions were not separated into sub-functions because there were higher requirements for minimizing the stack and applying them to the runtime usage of the code
      Risk: Understandability and testability may become overly complex.
      Prevention: Design and code review + clear structure and annotated code.
    
    \li VL_MTR_Rte_STLIN
      Reason: Some function logics are overly complex. Splitting and implementing them will lead to reduced performance.
      Risk: The code is difficult to maintain.
      Prevention: Design and code review, clear structure and annotated code.

    \li VL_MTR_Rte_STMIF
      Reason: Tasks must handle different scenarios based on local conditions, which leads to deep control nesting. Since shared code outweighs the variants, deeper nesting is acceptable to keep the code size small.
      Risk: The code is difficult to maintain.
      Prevention: Design and code review, clear structure and annotated code.
    
    \li VL_MTR_Rte_STST3
      Reason: Some functions logic is too complex; splitting them would degrade performance.
      Risk: The code is difficult to maintain.
      Prevention: Design and code review, clear structure and annotated code.

    \li VL_MTR_Rte_STPTH
      Reason: Functionality wasn't split into subroutines because there are stricter demands on minimizing stack usage and runtime footprint.
      Risk: The code is difficult to maintain.
      Prevention: Design and code review, clear structure and annotated code.

    \li VL_MTR_Rte_STSCT
      Reason: RTE operation requires many static variables.
      Risk: Static variables have global lifetimes; an excess of them can create implicit inter-module dependencies and increase code coupling.
      Prevention: Design and code review, clear structure and annotated code.

    \li VL_MTR_Rte_STCDN
      Reason: Comments adhere to PH standards.
      Risk: A high comment-to-code ratio may indicate that the code is overly complex or verbose.
      Prevention: Reduce reliance on comments by optimizing code logic.

    \li VL_MTR_Rte_STECT
      Reason: The total variable count is tied to user configuration; dynamic code may exceed this under extreme conditions.
      Risk: The code is difficult to maintain, and the data flow is complex.
      Prevention: Design and code review, clear structure and annotated code.

    \li VL_MTR_Rte_STVAR
      Reason: Variable count is tied to user configuration, and dynamic code may exceed it under extreme conditions.
      Risk: The code is difficult to maintain.
      Prevention: Design and code review, clear structure and annotated code.

 */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

/*******************************************************************************
**                      Global Macros                                        **
*******************************************************************************/
/* SchM Related */
#define SCHM_E_OK                    (0U)
/* Common SchM Errors */
#define SCHM_E_TIMEOUT               (129U)
#define SCHM_E_LIMIT                 (130U)
#define SCHM_E_NO_DATA               (131U)
#define SCHM_E_TRANSMIT_ACK          (132U)
#define SCHM_E_IN_EXCLUSIVE_AREA     (135U)
#define SCHM_E_DEV_DEFECT            (191U)
#define SCHM_INVALID_COREID          (255U)

#define SCHM_IDLE                    (0U)
#define SCHM_REQUEST                 (1U)

typedef struct
{
    uint8 reserved;
} SchM_ConfigType;


/*******************************************************************************
**                      Global Functions                                       **
*******************************************************************************/
/* SchM Life-Cycle API */
void SchM_Init (const SchM_ConfigType * ConfigPtr);
void SchM_Start (void);
void SchM_StartTiming (void);
void SchM_Deinit (void);

#endif /*SCHM_H*/
