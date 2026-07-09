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
 * @file              : Rte_Type.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-16 11:47:26
 * @customer          : iSoft
 * @description       : Header file containing user defined AUTOSAR types
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
#ifndef RTE_TYPE_H
#define RTE_TYPE_H
/* PRQA S 1336 EOF */ /* VL_Rte_NoFuncParaIdentifier */
/* PRQA S 0631, 1508, 1506 EOF */ /* VL_Rte_Mutitypedef */
/* PRQA S 1710 EOF */ /* VL_Rte_SimilarIdentifier */
/* PRQA S 0750 EOF */ /* VL_Rte_UnionDefined */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Rte.h"
#include "SchM_Type.h"

/*******************************************************************************
**                      Global Macros                                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/
typedef uint8 Rte_MetaData_IOCData_Type_1byte[1];
typedef uint8 Rte_MetaData_IOCData_Type_2byte[2];
typedef uint8 Rte_MetaData_IOCData_Type_4byte[4];
typedef uint8 Rte_MetaData_IOCData_Type_8byte[8];
typedef struct
{
    uint16 clientId;
    uint16 sequenceCounter;
} Rte_Cs_TransactionHandleType;
typedef uint8 * uint8_ptr;
typedef uint8 uint8_Cs;
typedef uint16 uint16_Cs;

typedef uint16 uint16_Mode;


/* User defined Data Type */



















/*******************************************************************************
**                      Global Data Declaration                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                      **
*******************************************************************************/

#endif /*RTE_TYPE_H*/
