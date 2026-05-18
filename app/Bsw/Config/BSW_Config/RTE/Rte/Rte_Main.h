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
 * @file              : Rte_Main.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-16 11:47:26
 * @customer          : iSoft
 * @description       : Lifecycle Header File.
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
#ifndef RTE_MAIN_H
#define RTE_MAIN_H
/* PRQA S 1513 EOF */ /* VL_Rte_Redeclaration */
/* PRQA S 1753 EOF */ /* VL_Rte_NoDefination */
/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Rte.h"
/*******************************************************************************
**                      Global Macros                                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Declaration                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Functions                                       **
*******************************************************************************/
/* RTE Life-Cycle API */
Std_ReturnType Rte_Start (void);
Std_ReturnType Rte_Stop (void);

#endif /*RTE_MAIN_H*/
