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
 * @file              : SchM.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-16 11:47:29
 * @customer          : iSoft
 * @description       : RTE implementation file
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
/* PRQA S 6010, 6020, 6030, 6040, 6050, 6080, 6620, 6610, 6530, 6520 EOF */ /* VL_MTR_Rte_STCYC, VL_MTR_Rte_STLIN, VL_MTR_Rte_STMIF, VL_MTR_Rte_STPAR , VL_MTR_Rte_STST3, VL_MTR_Rte_STPTH, VL_MTR_Rte_STSCT, VL_MTR_Rte_STCDN, VL_MTR_Rte_STECT, VL_MTR_Rte_STVAR */
/* PRQA S 1504, 3408, 3200, 3335, 4424, 1842 EOF */ /* VL_Rte_GlobalVarUsed, VL_Rte_UnLinked, VL_Rte_ReturnValNoUsed, VL_Rte_NoDefination, VL_Rte_EnumConvert, VL_Rte_DiffDataType */ 
/* PRQA S 3217, 0563, 1863, 3440 EOF */ /* VL_Rte_DiffDataType  */
/* PRQA S 1514 EOF */ /* VL_QAC_NoUsedApi */
/* PRQA S 1753 EOF */ /* VL_Rte_NoDefination */
/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#define RTE_CORE

#include "SchM_Internal.h"
#include "SchM.h"
#include "Os.h"
#include "Ioc.h"
#include "EcuM.h"
#include "SchM_CanIf.h"
#include "SchM_CanNm.h"
#include "SchM_CanSM.h"
#include "SchM_ComM.h"
#include "SchM_Com.h"
#include "SchM_EcuM.h"
#include "SchM_Nm.h"
#include "SchM_Os.h"
#include "SchM_PduR.h"
#include "SchM_ComXf.h"

#include "Rte_Internal.h"

extern Rte_StateType Rte_State;

/*******************************************************************************
**                      Private Data Types                                    **
*******************************************************************************/






/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/


/*******************************************************************************
**                      Global Function Definitions                          **
*******************************************************************************/
/* SchM Lifecycle */
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" 
void SchM_Init(const SchM_ConfigType * ConfigPtr)
{
    uint32 coreId = GetCoreID();
    if (coreId == OS_CORE_ID_0)
    {
        Rte_State = RTE_STATE_SCHM_INIT;
    }

    (void)ConfigPtr;
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"

#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" 
void SchM_Start(void)
{
    uint32 coreId = GetCoreID();
    if (coreId == OS_CORE_ID_0)
    {	
        // (void)ActivateTask(iSoft_Auto_OsTask_5ms_BSW);
        // (void)ActivateTask(iSoft_Auto_OsTask_10ms_BSW);
        // (void)ActivateTask(iSoft_Auto_OsTask_20ms_BSW);
        Rte_State = RTE_STATE_SCHM_START;
    }
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"

#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" 
void SchM_StartTiming(void)
{
//    (void)SetRelAlarm(iSoft_Auto_OsAlarm_5ms_BSW, OS_MS2TICKS_SystemTimer_Core0(1), OS_MS2TICKS_SystemTimer_Core0(5));
//    (void)SetRelAlarm(iSoft_Auto_OsAlarm_10ms_BSW, OS_MS2TICKS_SystemTimer_Core0(1), OS_MS2TICKS_SystemTimer_Core0(10));
//    (void)SetRelAlarm(iSoft_Auto_OsAlarm_20ms_BSW, OS_MS2TICKS_SystemTimer_Core0(1), OS_MS2TICKS_SystemTimer_Core0(20));

}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"

#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" 
void SchM_Deinit(void)
{
 //   (void)CancelAlarm(iSoft_Auto_OsAlarm_5ms_BSW);
 //   (void)CancelAlarm(iSoft_Auto_OsAlarm_10ms_BSW);
 //   (void)CancelAlarm(iSoft_Auto_OsAlarm_20ms_BSW);
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"


/* SchM APIs */
/* SchM CS Function Define */




