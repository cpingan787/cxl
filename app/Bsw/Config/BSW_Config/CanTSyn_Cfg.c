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
 *  @MCU                : R7F7015833
 *  @file               : CanTSyn_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-02-04 16:09:22
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/******************************************************************************
**                      Includes                                             **
******************************************************************************/
#include "CanTSyn.h"
#include "StbM_Cfg.h"
#include "CanIf_PBcfg.h"
#define CANTSYN_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"
static CONST(CanTSyn_DataIDListElementType, CANTSYN_CONST) CanTSyn_GlobalTimeSyncDataIDList[1][16] =
{
    {
         {0, 0},
         {1, 1},
         {2, 2},
         {3, 3},
         {4, 4},
         {5, 5},
         {6, 6},
         {7, 7},
         {8, 8},
         {9, 9},
         {10, 10},
         {11, 11},
         {12, 12},
         {13, 13},
         {14, 14},
         {15, 15}
    }

};
#define CANTSYN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"

#define CANTSYN_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"
static CONST(CanTSyn_DataIDListElementType, CANTSYN_CONST) CanTSyn_GlobalTimeFupDataIDList[1][16] =
{
    {
        {0, 15},
        {1, 14},
        {2, 13},
        {3, 12},
        {4, 11},
        {5, 10},
        {6, 9},
        {7, 8},
        {8, 7},
        {9, 6},
        {10, 5},
        {11, 4},
        {12, 3},
        {13, 2},
        {14, 1},
        {15, 0}
    }
};
#define CANTSYN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"

#define CANTSYN_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"
static CONST(CanTSynGlobalTimeSlaveType, CANTSYN_CONST) CanTSyn_GlobalTimeSlave[1] =
{
    {

        2000, /* CanTSynGlobalTimeFollowUpTimeout */
        1, /* CanTSynGlobalTimeSequenceCounterJumpWidth */
        CRC_IGNORED, /* CanTSynRxCrcValidated */
        CANTSYN_RX_PDU_CANTSYNC /* CanTSynGlobalTimePduId */
    }
};
#define CANTSYN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"

#define CANTSYN_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"
static CONST(CanTSyn_GlobalTimeDomainType, CANTSYN_CONST) CanTSyn_GlobalTimeDomain[CANTSYN_GLOBALTIMEDOMAIN_NUMBER] =
{
    {
        0, /* CanTSynGlobalTimeDomainId */
        FALSE, /* CanTSynUseExtendedMsgFormat */
        StbMConf_StbMSynchronizedTimeBase_StbMSynchronizedTimeBase_Slave, /* CanTSynSynchronizedTimeBaseId */
        CanTSyn_GlobalTimeSyncDataIDList[0],
        CanTSyn_GlobalTimeFupDataIDList[0],
        NULL_PTR,
        NULL_PTR,
        NULL_PTR,
        &CanTSyn_GlobalTimeSlave[0]
    }
};
#define CANTSYN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"

#define CANTSYN_START_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"
const CanTSyn_ConfigType CanTSyn_config =
{
    CanTSyn_GlobalTimeDomain,
};
#define CANTSYN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
#include "CanTSyn_MemMap.h"
