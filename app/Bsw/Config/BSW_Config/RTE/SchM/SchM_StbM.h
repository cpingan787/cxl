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
 * @file              : SchM_CanIf.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-16 11:47:29
 * @customer          : iSoft
 * @description       : Module Interlink Header
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
/* PRQA S 1513, 3451, 3449 EOF */ /* VL_Rte_Redeclaration */
/* PRQA S 1753 EOF */ /* VL_Rte_NoDefination */
/* PRQA S 1709 EOF */ /* VL_Rte_UniqueDefinition */

#ifndef SCHM_STBM_H
#define SCHM_STBM_H

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */
#include "SchM_StbM_Type.h"





#define SCHM_STBM_COREID 0



extern void StbM_MainFunction(void);              /* PRQA S 3451, 3449 */



/* ExclusiveArea : Context */
extern void SchM_Enter_StbM_Context(void);
extern void SchM_Exit_StbM_Context(void);














#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* SCHM_STBM_H */

