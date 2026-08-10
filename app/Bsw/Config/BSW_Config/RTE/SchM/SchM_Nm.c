 /* PRQA S 6610 EOF */ /* VL_MTR_Rte_STCDN */
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
 * @file              : SchM_Nm.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-19 18:49:46
 * @customer          : iSoft
 * @description       : SchM Nm Source
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/


/*******************************************************************************
**                              Include Section                               **
*******************************************************************************/

#include "SchM_Internal.h"
#include "SchM_Nm.h"
#include "Os.h"

/* ModuleName : Nm  */
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h"
/* ExclusiveArea : Coordinator */
void SchM_Enter_Nm_Coordinator(void)
{
    SuspendAllInterrupts();
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h"
void SchM_Exit_Nm_Coordinator(void)
{
    ResumeAllInterrupts();
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h"
/* ModuleName : Nm  */
/* ExclusiveArea : IRA */
void SchM_Enter_Nm_IRA(void)
{
    SuspendAllInterrupts();
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h"
void SchM_Exit_Nm_IRA(void)
{
    ResumeAllInterrupts();
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"

