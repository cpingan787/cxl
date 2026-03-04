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
 * @file              : SchM_Type.h
 * @license           : 
 * @licenseExpiryDate : 
 * @date              : 2026-01-16 11:47:29
 * @customer          : iSoft
 * @description       : SchM Type Header
 * @toolVersion       : 2.2.0.3
 **********************************************************************************************************************/
#ifndef SCHM_TYPE_H
#define SCHM_TYPE_H
/* PRQA S 3412, 3410, 0602, 1336  EOF */ /* VL_Rte_Standard */
/*******************************************************************************
** Include Section **
*******************************************************************************/
#include "ComStack_Types.h"

/*******************************************************************************
** Global Macros **
*******************************************************************************/

/*******************************************************************************
** Global Data Types **
*******************************************************************************/
typedef enum
{
    RTE_STATE_RTE_UNINIT,
    RTE_STATE_SCHM_START,
    RTE_STATE_SCHM_INIT, 
    RTE_STATE_RTE_INIT   
} Rte_StateType;

#define SCHM_CS_PARAMETER_NUM_MAX 16U
typedef struct crossCoreBufferType
{
    void (*servicePtr)(struct crossCoreBufferType *);
    uint32 serviceParameter[SCHM_CS_PARAMETER_NUM_MAX];
    uint32 index;
} SchM_CrossCore_BufferType;
typedef struct AsyncrossCoreBufferType
{
    void (*servicePtr)(struct AsyncrossCoreBufferType *);
    uint32 serviceParameter[SCHM_CS_PARAMETER_NUM_MAX];
} SchM_AsynCrossCore_BufferType;


/* product custom */
typedef enum
{
  SHCM_TP_DATACONF = 0x00U,
  SHCM_TP_DATARETRY = 0x01U,
  SHCM_TP_CONFPENDING = 0x02U,
  SHCM_TP_NULLPTR = 0xFFU
} SchM_TpDataStateType; /* Variables of this type shall be used to store the */
                   /* state of TP buffer */

typedef struct
{
    SchM_TpDataStateType TpDataState; /*The enumeration type to be used to store the
                                  state of Tp buffer.*/
    PduLengthType TxTpDataCnt;   /*Offset from the current position which identifies
                                  the number of bytes to be retransmitted.*/
} SchM_RetryInfoType;

#endif /*SCHM_TYPE_H*/
