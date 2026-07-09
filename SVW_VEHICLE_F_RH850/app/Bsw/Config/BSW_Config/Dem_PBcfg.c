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
 *  @file               : Dem_PBcfg.c
 *  @author             : iSoft
 *  @date               : 2026-06-11 16:14:16
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Dem_Cfg.h"
#include "Dem_Types.h"
#include "Dem_PBcfg.h"
#include "Dem_Ext.h"
#include "Rte_Dem.h"

/* PRQA S 1533, 3408 EOF */ /* VL_QAC_OneRefSymbol, VL_Dem_3408 */
/*******************************************************************************
*                          General Configuration
*******************************************************************************/

/*******************************************************************************
*                          DemDataElementClass Configuration
*******************************************************************************/
#define DEM_START_SEC_CODE
#include "Dem_MemMap.h"
static Std_ReturnType DemReadOccctr(uint8* Buffer)
{
    *Buffer = DemInternalData.Occctr;
    return E_OK;
}
static Std_ReturnType DemReadAgingUpCnt(uint8* Buffer)
{
    *Buffer = DemInternalData.AgingUpCnt;
    return E_OK;
}
static Std_ReturnType DemReadFaultPendingCounter(uint8* Buffer)
{
    *Buffer = DemInternalData.FaultPendingCounter;
    return E_OK;
}
static Std_ReturnType DemReadAgedCounter(uint8* Buffer)
{
    *Buffer = DemInternalData.AgedCounter;
    return E_OK;
}
#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
static CONST(DemDataElementClassTypes,AUTOMATIC) DemDataElementClass[DEM_DATA_ELEMENT_CLASS_NUM] =
{
    {
        FALSE,
        1u,/*DemDataElementDataSize*/
        Rte_ReadData_0112,/*DemDataElementClass*/
    },
    {
        FALSE,
        3u,/*DemDataElementDataSize*/
        Rte_ReadData_E101,/*DemDataElementClass*/
    },
    {
        FALSE,
        6u,/*DemDataElementDataSize*/
        Rte_ReadData_010B,/*DemDataElementClass*/
    },
    {
        FALSE,
        2u,/*DemDataElementDataSize*/
        Rte_ReadData_E010,/*DemDataElementClass*/
    },
    {
        FALSE,
        1u,/*DemDataElementDataSize*/
        Rte_ReadData_D002,/*DemDataElementClass*/
    },
    {
        FALSE,
        7u,/*DemDataElementDataSize*/
        Rte_ReadData_BE80,/*DemDataElementClass*/
    },
    {
        TRUE,
        1u,/*DemDataElementDataSize*/
        DemReadAgingUpCnt,/*DemDataElementClass*/
    },
    {
        TRUE,
        1u,/*DemDataElementDataSize*/
        DemReadOccctr,/*DemDataElementClass*/
    },
    {
        TRUE,
        1u,/*DemDataElementDataSize*/
        DemReadAgedCounter,/*DemDataElementClass*/
    },
    {
        TRUE,
        1u,/*DemDataElementDataSize*/
        DemReadFaultPendingCounter,/*DemDataElementClass*/
    },
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

/*******************************************************************************
*                          Condition Configuration
*******************************************************************************/
#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemOperationCycle */
static CONST(Dem_OperationCycleType,AUTOMATIC) DemOperationCycle[DEM_OPERATION_CYCLE_NUM] =
{
    { /* DEMPOWER */
        FALSE,
        TRUE,
        DEM_OPCYC_IGNITION
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemEnableCondition */
CONST(uint8,AUTOMATIC) DemEnableCondition[DEM_ENABLE_CONDITION_NUM_BYTE] =
{
    0xfu,

};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemEnableConditionGroup */
CONST(uint8,AUTOMATIC) DemEnableConditionGroup[DEM_ENABLE_CONDITION_GROUP_NUM][DEM_ENABLE_CONDITION_NUM_BYTE] =
{
    {0xbu,},
    {0xfu,},
    {0x8u,}
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

/*******************************************************************************
*                          FreezeFrame Configuration
*******************************************************************************/

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemDidClass */
CONST(Dem_DidClassType,AUTOMATIC) DemDidClass[DEM_DID_CLASS_NUM] =
{
    { /* DemDidClass_0112 */
        0x112u,
        0u,
        1u,
        1u,
    },
    { /* DemDidClass_E101 */
        0xe101u,
        1u,
        1u,
        3u,
    },
    { /* DemDidClass_010B */
        0x10bu,
        2u,
        1u,
        6u,
    },
    { /* DemDidClass_E010 */
        0xe010u,
        3u,
        1u,
        2u,
    },
    { /* DemDidClass_D002 */
        0xd002u,
        4u,
        1u,
        1u,
    },
    { /* DemDidClass_BE80 */
        0xbe80u,
        5u,
        1u,
        7u,
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
CONST(uint16,AUTOMATIC) DemDidClassRef[DEM_DID_CLASS_REF_TOTAL_NUM] =
{
    /* DemFreezeFrameClass_GlobalFF */
    0x0u,
    0x1u,
    0x2u,
    0x3u,
    0x4u,
    /* DemFreezeFrameClass_LocalFF_BE08 */
    0x5u
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
CONST(Dem_FreezeFrameClassType,AUTOMATIC) DemFreezeFrameClass[DEM_FREEZE_FRAME_CLASS_NUM] =
{
    { /* DemFreezeFrameClass_GlobalFF DID*/
        13u,
        0u,
        5u
    },
    { /* DemFreezeFrameClass_LocalFF_BE08 DID*/
        7u,
        5u,
        1u
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemGeneral/DemFreezeFrameRecordClass */
CONST(Dem_FreezeFrameRecordClassType,AUTOMATIC) DemFreezeFrameRecordClass[DEM_FREEZE_FRAME_RECORD_CLASS_NUM] =
{
    { /* FreezeFrameRecordClass_RecNum2_Local */
        2u,                       /* DemFreezeFrameRecordNumber */
        DEM_TRIGGER_ON_TEST_FAILED,   /* DemFreezeFrameRecordTrigger */
        DEM_UPDATE_RECORD_NO       /* DemFreezeFrameRecordUpdate */
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
CONST(uint8,AUTOMATIC) DemFreezeFrameRecordClassRef[DEM_FREEZE_FRAME_RECORD_CLASS_REF_TOTAL_NUM] =
{
    /* FreezeFrameRecNumClass_RecNum2_Local */
    0x0u
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
CONST(Dem_FreezeFrameRecNumClassType,AUTOMATIC) DemFreezeFrameRecNumClass[DEM_FREEZE_FRAME_REC_NUM_CLASS_NUM] =
{
    { /* FreezeFrameRecNumClass_RecNum2_Local */
        0u,
        1u,
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

/*******************************************************************************
*                          ExtendedData Configuration
*******************************************************************************/
#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemExtendedDataRecordClass */
CONST(Dem_ExtendedDataRecordClassType,AUTOMATIC) DemExtendedDataRecordClass[DEM_EXTENDED_DATA_RECORD_CLASS_NUM] =
{
    { /* ExtendedDataRecordClass_AgingCounter */
        0x4u,
        DEM_TRIGGER_ON_CONFIRMED,/*DemExtendedDataRecordTrigger*/
        DEM_UPDATE_RECORD_YES,/*DemExtendedDataRecordUpdate*/
        6u,/*DemDataElementClassIndex*/
        1u,/*DemDataElementClassNum*/
        1u,
    },
    { /* ExtendedDataRecordClass_OccurCounter */
        0x1u,
        DEM_TRIGGER_ON_CONFIRMED,/*DemExtendedDataRecordTrigger*/
        DEM_UPDATE_RECORD_YES,/*DemExtendedDataRecordUpdate*/
        7u,/*DemDataElementClassIndex*/
        1u,/*DemDataElementClassNum*/
        1u,
    },
    { /* ExtendedDataRecordClass_AgingedCounter */
        0x3u,
        DEM_TRIGGER_ON_CONFIRMED,/*DemExtendedDataRecordTrigger*/
        DEM_UPDATE_RECORD_YES,/*DemExtendedDataRecordUpdate*/
        8u,/*DemDataElementClassIndex*/
        1u,/*DemDataElementClassNum*/
        1u,
    },
    { /* ExtendedDataRecordClass_FaultPendingCounter */
        0x2u,
        DEM_TRIGGER_ON_CONFIRMED,/*DemExtendedDataRecordTrigger*/
        DEM_UPDATE_RECORD_YES,/*DemExtendedDataRecordUpdate*/
        9u,/*DemDataElementClassIndex*/
        1u,/*DemDataElementClassNum*/
        1u,
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
CONST(uint8,AUTOMATIC) DemExtendedDataRecordClassRef[DEM_EXTENDED_DATA_RECORD_CLASS_REF_TOTAL_NUM] =
{
    /* ExtendedDataClass_DTCExtendedDataRecordNumber */
    0x1u,
    0x3u,
    0x2u,
    0x0u
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

/* DemGeneral/DemExtendedDataClass */
#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
CONST(Dem_ExtendedDataClassType,AUTOMATIC) DemExtendedDataClass[DEM_EXTENDED_DATA_CLASS_NUM] =
{
    { /* ExtendedDataClass_DTCExtendedDataRecordNumber */
        0u,
        4u
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/*******************************************************************************
*                          DTC Configuration
*******************************************************************************/

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemDTC Mapping event */
static CONST(Dem_EventIdType,AUTOMATIC) DemDTCMapping[59] =
{
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50,
    51,
    52,
    53,
    54,
    55,
    56,
    57,
    58,
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemDTC 0-65535 */
static CONST(Dem_DTCType,AUTOMATIC) DemDTC[DEM_DTC_NUM] =
{
    { /* DTC_0x951171 */
        0x951171u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        0,
    },
    { /* DTC_0x951512 */
        0x951512u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        1,
    },
    { /* DTC_0x952111 */
        0x952111u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        2,
    },
    { /* DTC_0x952113 */
        0x952113u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        3,
    },
    { /* DTC_0x953111 */
        0x953111u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        4,
    },
    { /* DTC_0x953113 */
        0x953113u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        5,
    },
    { /* DTC_0x953311 */
        0x953311u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        6,
    },
    { /* DTC_0x953312 */
        0x953312u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        7,
    },
    { /* DTC_0x953313 */
        0x953313u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        8,
    },
    { /* DTC_0x953411 */
        0x953411u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        9,
    },
    { /* DTC_0x953412 */
        0x953412u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        10,
    },
    { /* DTC_0x953413 */
        0x953413u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        11,
    },
    { /* DTC_0x953512 */
        0x953512u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        12,
    },
    { /* DTC_0x954100 */
        0x954100u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        13,
    },
    { /* DTC_0x954200 */
        0x954200u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        14,
    },
    { /* DTC_0x955011 */
        0x955011u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        15,
    },
    { /* DTC_0x955013 */
        0x955013u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        16,
    },
    { /* DTC_0x955016 */
        0x955016u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        17,
    },
    { /* DTC_0x955017 */
        0x955017u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        18,
    },
    { /* DTC_0x955201 */
        0x955201u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        19,
    },
    { /* DTC_0x957111 */
        0x957111u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        20,
    },
    { /* DTC_0x957113 */
        0x957113u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        21,
    },
    { /* DTC_0x95A011 */
        0x95a011u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        22,
    },
    { /* DTC_0x95A013 */
        0x95a013u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        23,
    },
    { /* DTC_0x95A111 */
        0x95a111u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        24,
    },
    { /* DTC_0x95A113 */
        0x95a113u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        25,
    },
    { /* DTC_0x95A211 */
        0x95a211u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        26,
    },
    { /* DTC_0x95A213 */
        0x95a213u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        27,
    },
    { /* DTC_0x95A311 */
        0x95a311u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        28,
    },
    { /* DTC_0x95A313 */
        0x95a313u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        29,
    },
    { /* DTC_0x95A411 */
        0x95a411u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        30,
    },
    { /* DTC_0x95A413 */
        0x95a413u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        31,
    },
    { /* DTC_0x95A511 */
        0x95a511u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        32,
    },
    { /* DTC_0x95A513 */
        0x95a513u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        33,
    },
    { /* DTC_0x95A711 */
        0x95a711u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        34,
    },
    { /* DTC_0x95A713 */
        0x95a713u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        35,
    },
    { /* DTC_0x95A809 */
        0x95a809u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        36,
    },
    { /* DTC_0x95A909 */
        0x95a909u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        37,
    },
    { /* DTC_0x95AA09 */
        0x95aa09u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        38,
    },
    { /* DTC_0x95AD09 */
        0x95ad09u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        39,
    },
    { /* DTC_0x95AE09 */
        0x95ae09u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        40,
    },
    { /* DTC_0xC07388 */
        0xc07388u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        41,
    },
    { /* DTC_0xC07488 */
        0xc07488u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        42,
    },
    { /* DTC_0xC14687 */
        0xc14687u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        43,
    },
    { /* DTC_0xD56217 */
        0xd56217u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        44,
    },
    { /* DTC_0xD56316 */
        0xd56316u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        45,
    },
    { /* DTC_0xD60087 */
        0xd60087u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        46,
    },
    { /* DTC_0xE00142 */
        0xe00142u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        47,
    },
    { /* DTC_0xE00444 */
        0xe00444u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        48,
    },
    { /* DTC_0xE26200 */
        0xe26200u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        49,
    },
    { /* DTC_0xE28000 */
        0xe28000u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        50,
    },
    { /* DTC_0xE28200 */
        0xe28200u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        51,
    },
    { /* DTC_0xE29887 */
        0xe29887u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        52,
    },
    { /* DTC_0xE298F0 */
        0xe298f0u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        53,
    },
    { /* DTC_0xE298F1 */
        0xe298f1u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        54,
    },
    { /* DTC_0xE2A287 */
        0xe2a287u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        55,
    },
    { /* DTC_0xE2A2F0 */
        0xe2a2f0u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        56,
    },
    { /* DTC_0xE2A2F1 */
        0xe2a2f1u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        57,
    },
    { /* DTC_0x951511 */
        0x951511u, /* DemDtcValue */
        0u, /* DemDTCAttributesRef  */
        DEM_OBD_DTC_INVALID, /*DemObdDTC */
        DEM_DTC_KIND_ALL_DTCS,
        0xffu, /* DemDTCFunctionalUnit  */
        DEM_SEVERITY_CHECK_AT_NEXT_HALT, /* DemDTCSeverity */
        DEM_GROUP_OF_DTC_INVALID, /* DTC GroupIndex */
        DEM_DTC_WWHOBD_CLASS_NOCLASS,/*DemWWHOBDDTCClass*/
        1,
        58,
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemDTCAttributes */
static CONST(Dem_DTCAttributesType,AUTOMATIC) DemDTCAttributes[DEM_DTC_ATTRIBUTES_NUM] =
{
    { /* DTCAttributes_LocalFF_BE08 */
        TRUE, /* DemAgingAllowed */
        0u, /* DemAgingCycleRef */
        40u, /* DemAgingCycleCounterThreshold */
        0u, /* DemAgingCycleCounterThresholdForTFSLC */
        0u, /* DemDTCPriority */
        0u, /* DemEventMemoryEntryFdcThresholdStorageValue */
        0u, /* DemFreezeFrameRecNumClassRef */
        FALSE, /* DemImmediateNvStorage */
        DEM_EVENT_SIGNIFICANCE_FAULT, /* DemDTCSignificance */
        0u, /* DemExtendedDataClassRef  */
        1u, /* DemFreezeFrameClassRef  */
        { 0u}, /* DemMemoryDestinationRef  */
        DEM_J1939_NODE_INVALID,/*DemJ1939DTC_J1939NodeRef*/
        DEM_J1939_FREEZE_FRAME_INVALID,/*DemJ1939ExpandedFreezeFrameClassRef*/
        DEM_J1939_FREEZE_FRAME_INVALID,/*DemJ1939FreezeFrameClassRef*/
        DEM_WWHOBD_FREEZE_FRAME_INVALID,/*DemWWHOBDFreezeFrameClassRef*/
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

/*******************************************************************************
*                          Indicator Configuration
*******************************************************************************/
#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
CONST(Dem_IndicatorAttributeType,AUTOMATIC) DemIndicatorAttribute[DEM_INDICATOR_ATTRIBUTE_TOTAL_NUM] =
{
    { /* IndicatorAttribute_0x951171 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x951512 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x952111 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x952113 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953111 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953113 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953311 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953312 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953313 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953411 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953412 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953413 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x953512 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x954100 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x954200 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x955011 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x955013 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x955016 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x955017 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x955201 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x957111 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x957113 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A011 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A013 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A111 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A113 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A211 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A213 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A311 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A313 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A411 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A413 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A511 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A513 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A711 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A713 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A809 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95A909 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95AA09 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95AD09 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x95AE09 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xC07388 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xC07488 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xC14687 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xD56217 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xD56316 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xD60087 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE00142 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE00444 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE26200 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE28000 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE28200 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE29887 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE298F0 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE298F1 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE2A287 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE2A2F0 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0xE2A2F1 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
    { /* IndicatorAttribute_0x954100 */
        0u, /* DemIndicatorFailureCycleCounterThreshold */
        0u, /* DemIndicatorHealingCycleCounterThreshold */
        Indicator_0, /* DemIndicatorRef  */
        DEM_INDICATOR_BLINKING, /* DemEventParameter_065800 : DemIndicatorAttribute_23 */
    },
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/*******************************************************************************
*                          Debounce Configuration
*******************************************************************************/
#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
static CONST(Dem_DebounceCounterBasedClassType,AUTOMATIC) DemDebounceCounterBasedClass[DEM_DEBOUNCE_COUNTER_BASED_CLASS_NUM] =
{
    { /* DebounceCounterBasedClass_F2_N2 */
        128u, /* DemDebounceCounterDecrementStepSize */
        65u, /* DemDebounceCounterIncrementStepSize  */
        0, /* DemDebounceCounterJumpDownValue  */
        0, /* DemDebounceCounterJumpUpValue */
        127, /* DemDebounceCounterFailedThreshold */
        -65, /* DemDebounceCounterPassedThreshold */
        TRUE, /* DemDebounceCounterJumpDown */
        TRUE, /* DemDebounceCounterJumpUp */
        FALSE, /* DemDebounceCounterStorage */
        DEM_DEBOUNCE_RESET, /* DemDebounceBehavior */
    },
    { /* DebounceCounterBasedClass_C07388 */
        128u, /* DemDebounceCounterDecrementStepSize */
        26u, /* DemDebounceCounterIncrementStepSize  */
        0, /* DemDebounceCounterJumpDownValue  */
        0, /* DemDebounceCounterJumpUpValue */
        127, /* DemDebounceCounterFailedThreshold */
        -128, /* DemDebounceCounterPassedThreshold */
        TRUE, /* DemDebounceCounterJumpDown */
        TRUE, /* DemDebounceCounterJumpUp */
        FALSE, /* DemDebounceCounterStorage */
        DEM_DEBOUNCE_RESET, /* DemDebounceBehavior */
    },
    { /* DebounceCounterBasedClass_F5_N5 */
        128u, /* DemDebounceCounterDecrementStepSize */
        26u, /* DemDebounceCounterIncrementStepSize  */
        0, /* DemDebounceCounterJumpDownValue  */
        0, /* DemDebounceCounterJumpUpValue */
        127, /* DemDebounceCounterFailedThreshold */
        -26, /* DemDebounceCounterPassedThreshold */
        TRUE, /* DemDebounceCounterJumpDown */
        TRUE, /* DemDebounceCounterJumpUp */
        FALSE, /* DemDebounceCounterStorage */
        DEM_DEBOUNCE_RESET, /* DemDebounceBehavior */
    },
    { /* DebounceCounterBasedClass_F3_N1 */
        128u, /* DemDebounceCounterDecrementStepSize */
        45u, /* DemDebounceCounterIncrementStepSize  */
        0, /* DemDebounceCounterJumpDownValue  */
        0, /* DemDebounceCounterJumpUpValue */
        127, /* DemDebounceCounterFailedThreshold */
        -128, /* DemDebounceCounterPassedThreshold */
        TRUE, /* DemDebounceCounterJumpDown */
        TRUE, /* DemDebounceCounterJumpUp */
        FALSE, /* DemDebounceCounterStorage */
        DEM_DEBOUNCE_RESET, /* DemDebounceBehavior */
    },
    { /* DebounceCounterBasedClass_F5_N20 */
        128u, /* DemDebounceCounterDecrementStepSize */
        26u, /* DemDebounceCounterIncrementStepSize  */
        0, /* DemDebounceCounterJumpDownValue  */
        0, /* DemDebounceCounterJumpUpValue */
        127, /* DemDebounceCounterFailedThreshold */
        -7, /* DemDebounceCounterPassedThreshold */
        TRUE, /* DemDebounceCounterJumpDown */
        TRUE, /* DemDebounceCounterJumpUp */
        FALSE, /* DemDebounceCounterStorage */
        DEM_DEBOUNCE_RESET, /* DemDebounceBehavior */
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/* DemConfigSet/DemDebounceTimeBaseClass 0-65535 */
static CONST(Dem_DebounceTimeBaseClassType,AUTOMATIC) DemDebounceTimeBaseClass[DEM_DEBOUNCE_TIME_BASE_CLASS_NUM] =
{
    { /* DemDebounceTimeBaseClass_F_1Min_P_5S */
        60000UL, /* DemDebounceTimeFailedThreshold */
        5000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_4Min_P_2S */
        240000UL, /* DemDebounceTimeFailedThreshold */
        2000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_4Min_P_5S */
        240000UL, /* DemDebounceTimeFailedThreshold */
        5000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_8Min_P_1S */
        480000UL, /* DemDebounceTimeFailedThreshold */
        1000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_20S_P_2S */
        20000UL, /* DemDebounceTimeFailedThreshold */
        2000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_4S_P_4S */
        4000UL, /* DemDebounceTimeFailedThreshold */
        4000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_5S_P_5S */
        5000UL, /* DemDebounceTimeFailedThreshold */
        5000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_3S_P_3S */
        3000UL, /* DemDebounceTimeFailedThreshold */
        3000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_2S_P_2S */
        2000UL, /* DemDebounceTimeFailedThreshold */
        2000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_5S_P_2S */
        5000UL, /* DemDebounceTimeFailedThreshold */
        2000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_1S_P_1S */
        1000UL, /* DemDebounceTimeFailedThreshold */
        1000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_2S_P_400Ms */
        2000UL, /* DemDebounceTimeFailedThreshold */
        400UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_3S_P_1S */
        3000UL, /* DemDebounceTimeFailedThreshold */
        1000UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    },
    { /* DemDebounceTimeBaseClass_F_375Ms_P_400Ms */
        375UL, /* DemDebounceTimeFailedThreshold */
        400UL, /* DemDebounceTimePassedThreshold */
        DEM_DEBOUNCE_FREEZE, /* DemDebounceBehavior */
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
/*******************************************************************************
*                          Event Configuration
*******************************************************************************/

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"
static CONST(Dem_EventParameterType,AUTOMATIC) DemEventParameter[DEM_EVENT_PARAMETER_NUM] =
{
    {  /* EventParameter_0x951171*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        0u, /* DemDTCRef */
        4u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        0u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        0u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x951512*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        1u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        1u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        1u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x952111*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        2u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        2u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        2u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x952113*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        3u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        3u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        3u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953111*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        4u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        0u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        4u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953113*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        5u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        1u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        5u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953311*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        6u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        4u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        6u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953312*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        7u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        5u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        7u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953313*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        8u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        6u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        8u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953411*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        9u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        7u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        9u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953412*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        10u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        8u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        10u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953413*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        11u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        9u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        11u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x953512*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        12u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        2u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        12u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x954100*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        13u, /* DemDTCRef */
        3u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        10u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        13u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x954200*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        14u, /* DemDTCRef */
        3u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        11u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        14u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x955011*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        15u, /* DemDTCRef */
        2u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        12u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        15u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x955013*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        16u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        13u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        16u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x955016*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        17u, /* DemDTCRef */
        1u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        14u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        17u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x955017*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        18u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        15u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        18u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x955201*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        19u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        3u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        19u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x957111*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        20u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        16u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        20u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x957113*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        21u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        17u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        21u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A011*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        22u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        4u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        22u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A013*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        23u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        18u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        23u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A111*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        24u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        19u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        24u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A113*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        25u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        20u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        25u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A211*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        26u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        21u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        26u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A213*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        27u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        22u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        27u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A311*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        28u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        23u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        28u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A313*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        29u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        24u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        29u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A411*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        30u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        25u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        30u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A413*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        31u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        26u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        31u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A511*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        32u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        27u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        32u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A513*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        33u, /* DemDTCRef */
        5u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        28u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        33u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A711*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        34u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        29u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        34u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A713*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        35u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        30u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        35u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A809*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        36u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        5u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        36u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95A909*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        37u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        6u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        37u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95AA09*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        38u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        7u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        38u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95AD09*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        39u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        8u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        39u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x95AE09*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        40u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        9u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        40u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xC07388*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        41u, /* DemDTCRef */
        1u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        10u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        41u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_BSW, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_AFTER_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xC07488*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        42u, /* DemDTCRef */
        1u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        11u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        42u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xC14687*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        43u, /* DemDTCRef */
        11u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        31u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        43u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xD56217*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        44u, /* DemDTCRef */
        10u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        32u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        44u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        2u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xD56316*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        45u, /* DemDTCRef */
        10u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        33u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        45u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        2u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xD60087*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        46u, /* DemDTCRef */
        9u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        34u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        46u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE00142*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        47u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        12u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        47u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE00444*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        48u, /* DemDTCRef */
        0u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        13u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        48u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE26200*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        49u, /* DemDTCRef */
        7u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        35u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        49u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE28000*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        50u, /* DemDTCRef */
        13u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        36u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        50u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE28200*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        51u, /* DemDTCRef */
        12u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        37u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        51u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE29887*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        52u, /* DemDTCRef */
        4u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        14u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        52u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE298F0*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        53u, /* DemDTCRef */
        8u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        38u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        53u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE298F1*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        54u, /* DemDTCRef */
        3u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        15u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        54u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE2A287*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        55u, /* DemDTCRef */
        2u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        16u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        55u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE2A2F0*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        56u, /* DemDTCRef */
        8u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        39u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        56u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0xE2A2F1*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        57u, /* DemDTCRef */
        3u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        17u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_COUNTER_BASED, /* AlgorithmType */
        57u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        1u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    },
    {  /* EventParameter_0x951511*/
        NULL_PTR,  /* DemCallbackInitMForE */
        NULL_PTR,  /* DemCallbackEventDataChanged */
        NULL_PTR, /* DemCallbackClearEventAllowed */
        0u, /* StatusChangedCbkStartIndex*/
        0u, /* StatusChangedCbkNum */
        58u, /* DemDTCRef */
        6u, /* AlgorithmRef = DemDebounceCounterBasedClassRef: Index Of DemDebounceCounterBasedClass   */
        40u, /* AlgorithmIndex = AlgorithmIndex_Counter++ */
        DEM_DEBOUNCE_TIME_BASE, /* AlgorithmType */
        58u, /* DemIndicatorAttributeStartIndex */
        1u, /* AttrNum = COUNT Event/DemIndicatorAttribute */
        0u,/*DemEventFailureCycleCounterThreshold*/
        TRUE,/*DemEventAvailable*/
        FALSE,  /* DemFFPrestorageSupported Range: true or false */
        DEM_EVENT_KIND_SWC, /* DemEventKind = DEM_EVENT_KIND_BSW or DEM_EVENT_KIND_SWC */
        REPORT_BEFORE_INIT, /* DemReportBehavior = REPORT_AFTER_INIT or REPORT_AFTER_INIT */
        0u, /* DemOperationCycleRef Reference: DemOperationCycle MULTI:1-1*/
        0u, /* DemEnableConditionGroupRef: Index Of DemEnableConditionGroup */
        DEM_STORAGE_CONDITION_GROUP_INVALID, /* DemStorageConditionGroupRef: Index Of DemStorageConditionGroup */
        DEM_COMPONENT_INVALID,/*DemComponentClassRef Reference: DemComponent */ /*if no component shall be DEM_COMPONENT_INVALID*/
        0xffu,/*DemComponentPriority*/
        DEM_EVENT_PARAMETER_INVALID,/*DemOBDGroupingAssociativeEventsRef*/
    }
};
#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h"

/*******************************************************************************
*                          OBD Configuration
*******************************************************************************/

/*******************************************************************************
*                          J1939 Configuration
*******************************************************************************/
/*******************************************************************************
*                          PB DemConfigSet Configuration
*******************************************************************************/
#define DEM_START_SEC_PBCFG_GLOBALROOT
#include "Dem_MemMap.h"
CONST(Dem_ConfigType, AUTOMATIC) DemPbCfg =
{
    NULL_PTR,
    DemDTC,
    NULL_PTR,
    DEM_DTC_NUM,
    DemDTCAttributes,
    DemDebounceCounterBasedClass,
    DemDebounceTimeBaseClass,
    NULL_PTR,
    DemEventParameter,
    DEM_EVENT_PARAMETER_NUM,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR,
    DemOperationCycle,
    DEM_OPERATION_CYCLE_NUM,
    NULL_PTR,
    DemDataElementClass,
    DemDTCMapping,
};
#define DEM_STOP_SEC_PBCFG_GLOBALROOT
#include "Dem_MemMap.h"
/*******************************************************************************
**                      end of file                                           **
*******************************************************************************/

