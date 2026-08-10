/*==============================================================================*/
/**
 *
 * Copyright (C) iSOFT   (2023)
 *
 * All rights reserved.
 *
 * This document contains proprietary information belonging to iSOFT.
 * Passing on and copying of this document, and communication
 * of its contents is not permitted without prior written authorization.
 * 
 ********************************************************************************
 * 
 *  @MCU                : R7F7015813
 *  @file               : PduR_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-25 19:09:55
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "PduR.h"
#include "CanIf.h"
#include "CanTp.h"
#include "Com_Cbk.h"
#include "Dcm.h"
#include "Dcm_Cbk.h"
#include "IpduM.h"
#include "IpduM_Cbk.h"
#include "CanNm.h"
#include "PduR_Internal.h"
/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/

/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/

/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
/* PRQA S 1533 EOF */ /* VL_QAC_OneRefSymbol */

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "PduR_MemMap.h"
CONST(PduRBswModuleType,PDUR_CONST)
PduR_BswModuleConfigData[PDUR_BSW_MODULE_SUM] =
{
    {
        PDUR_COM,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        Com_TriggerTransmit,
        NULL_PTR,
        Com_TxConfirmation,
        Com_RxIndication,
        NULL_PTR,
        Com_CopyTxData,
        Com_TpTxConfirmation,
        Com_StartOfReception,
        Com_CopyRxData,
        Com_TpRxIndication,
    },
    {
        PDUR_CANIF,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        CanIf_Transmit,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
    },
    {
        PDUR_IPDUM,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        IpduM_TriggerTransmit,
        IpduM_Transmit,
        IpduM_TxConfirmation,
        IpduM_RxIndication,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
    },
    {
        PDUR_CANNM,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        CanNm_Transmit,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
    },
    {
        PDUR_CANTP,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        CanTp_Transmit,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
    },
    {
        PDUR_DCM,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        Dcm_TxConfirmation,
        NULL_PTR,
        NULL_PTR,
        Dcm_CopyTxData,
        Dcm_TpTxConfirmation,
        Dcm_StartOfReception,
        Dcm_CopyRxData,
        Dcm_TpRxIndication,
    },
};
#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "PduR_MemMap.h"

#define PDUR_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "PduR_MemMap.h"
const PduR_BufferPoolType PduR_GlobalBufferPool =
{
    /* size, BufferIndexPtr */

    0u,     NULL_PTR

};
#define PDUR_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "PduR_MemMap.h"

/*******************************************************************************
**                      End of file                                           **
*******************************************************************************/

