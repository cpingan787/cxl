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
 * @file              : Rte.c
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-16 11:47:28
 * @customer          : iSoft
 * @description       : RTE implementation file
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
 
/* PRQA S 0791, 0779, 0787, 0789, 1710, 1712, 0793 EOF */ /* VL_Rte_SimilarIdentifier */
/* PRQA S 1505, 1503, 3219, 1514 EOF */ /* VL_QAC_NoUsedApi */
/* PRQA S 3218, 2962, 2972 EOF */ /* VL_Rte_GlobalVarUsed */
/* PRQA S 2992, 2996 EOF */ /* VL_Rte_AlwaysFalse */
/* PRQA S 2872 EOF */ /* VL_Rte_DeadLoop */
/* PRQA S 1294, 4304 EOF */ /* VL_Rte_VarInitTypeDiff */
/* PRQA S 3451, 3449, 1510, 1526, 1707 EOF */ /* VL_Rte_Redeclaration */
/* PRQA S 0759 EOF */ /* VL_Rte_UnionDefined */
/* PRQA S 4447, 3101, 3102, 3103, 2850, 1291, 1265 EOF */ /* VL_Rte_NumericSuffix */
/* PRQA S 1758, 1756 EOF */ /* VL_Rte_UniqueDefinition */
/* PRQA S 1504 EOF */ /* VL_Rte_GlobalVarUsed */ 
/* PRQA S 1502 EOF */ /* VL_Rte_VariableNoUse */ 
/* PRQA S 3408 EOF */ /* VL_Rte_UnLinked */
/* PRQA S 2784, 1860 EOF */ /* VL_Rte_PtrArithmetic */
/* PRQA S 3335 EOF */ /* VL_Rte_NoDefination */
/* PRQA S 3200 EOF */ /* VL_Rte_ReturnValNoUsed */
/* PRQA S 4532, 4542, 1822, 2897, 4393, 0431 EOF */ /* VL_Rte_DataTypeImplicitConvert */
/* PRQA S 2986 EOF */ /* VL_Rte_RedundantCode */
/* PRQA S 6010, 6020, 6030, 6040, 6050, 6080, 6620, 6610, 6530, 6520 EOF */ /* VL_MTR_Rte_STCYC, VL_MTR_Rte_STLIN, VL_MTR_Rte_STMIF, VL_MTR_Rte_STPAR , VL_MTR_Rte_STST3, VL_MTR_Rte_STPTH, VL_MTR_Rte_STSCT, VL_MTR_Rte_STCDN, VL_MTR_Rte_STECT, VL_MTR_Rte_STVAR */
/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/

#define RTE_CORE

#include "Rte_Main.h"
#include "Ioc.h"
#include "Rte_Internal.h"


#include "SchM_CanIf.h"
#include "SchM_CanNm.h"
#include "SchM_CanSM.h"
#include "SchM_CanTp.h"
#include "SchM_ComM.h"
#include "SchM_Com.h"
#include "SchM_Dcm.h"
#include "SchM_Dem.h"
#include "SchM_EcuM.h"
#include "SchM_Nm.h"
#include "SchM_Os.h"
#include "SchM_PduR.h"
#include "SchM_ComXf.h"
#include "SchM_WdgM.h"



/*******************************************************************************
**                      Private Data Types                                    **
*******************************************************************************/


/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/

/*******************************************************************************
**                      External Function                                     **
*******************************************************************************/



/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
/* RTE Lifecycle */
#define RTE_START_SEC_VAR_INIT_8
#include "Rte_MemMap.h" 
Rte_StateType Rte_State = RTE_STATE_RTE_UNINIT;
#define RTE_STOP_SEC_VAR_INIT_8
#include "Rte_MemMap.h"










/*******************************************************************************
**                      Global Function Definitions                          **
*******************************************************************************/
/* RTE Lifecycle */
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" 
Std_ReturnType Rte_Start(void)
{
    return RTE_E_OK;
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" 
Std_ReturnType Rte_Stop(void)
{
return RTE_E_OK;
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h"
/* ModuleName : WdgM  */
/* ExclusiveArea : Exclusive */
void SchM_Enter_WdgM_Exclusive(void)
{
    SuspendAllInterrupts();
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"
#define RTE_START_SEC_CODE
#include "Rte_MemMap.h"
void SchM_Exit_WdgM_Exclusive(void)
{
    ResumeAllInterrupts();
}
#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h"


#if 0
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
TASK(iSoft_Auto_DEFAULT_OsTask_Init)
{

}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"


#define OS_START_SEC_CODE
#include "Os_MemMap.h"
TASK(OsTask_0)
{

}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"


#define OS_START_SEC_CODE
#include "Os_MemMap.h"
TASK(OsTask_5ms)
{

}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
TASK(OsTask_10ms)
{

}
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
TASK(iSoft_Auto_OsTask_5ms_BSW)
{
    EventMaskType eventMask;

 }
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
TASK(iSoft_Auto_OsTask_10ms_BSW)
{
    EventMaskType eventMask;

 }
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#define OS_START_SEC_CODE
#include "Os_MemMap.h"
TASK(iSoft_Auto_OsTask_20ms_BSW)
{
    EventMaskType eventMask;

 }
#define OS_STOP_SEC_CODE
#include "Os_MemMap.h"
#endif


/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/



