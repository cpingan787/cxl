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
 *  @file               : Dcm_PBcfg.c
 *  @author             : iSoft
 *  @date               : 2026-01-21 17:21:53
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/* PRQA S 6620 EOF */ /* VL_MTR_Dcm_STSCT */
/******************************* references ************************************/
#include "Dcm_Types.h"
#include "Rte_Dcm.h"
#include "Dcm_PBcfg.h"
#include "Dcm_Ext.h"
#include "NvM.h"

/**********************DID*************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static const boolean DcmDspDIDcheckPerSourceDID = TRUE;
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*******************Control DTC Setting********************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspControlDTCSettingType, DCM_CONST) Dcm_DspControlDTCSettingCfg =
{
    FALSE, /*DcmSupportDTCSettingControlOptionRecord*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*******************Com Control********************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspComControlAllChannelType, DCM_CONST) Dcm_DspComControlAllChannelCfg[1] =
{
    {
        TRUE, /*DcmDspComControlAllChannelUsed*/
        0u, /*DcmDspComMChannelId*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspComControlType, DCM_CONST) Dcm_DspComControlCfg =
{
    1u, /*DcmDspComControlAllChannelNum*/
    &Dcm_DspComControlAllChannelCfg[0], /*DcmDspComControlAllChannel*/
    NULL_PTR, /*DcmDspComControlSetting*/
    0u, /*DcmDspComControlSpecificChannelNum*/
    NULL_PTR, /*DcmDspComControlSpecificChannel*/
    0u, /*DcmDspComControlSubNodeNum*/
    NULL_PTR /*DcmDspComControlSubNode*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*******************Common Authorization********************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)CommonAuthorization_0_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)CommonAuthorization_1_SecRef[1] = {1u};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)CommonAuthorization_1_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DspCommonAuthorizationType, DCM_CONST) Dcm_DspCommonAuthorizationCfg[2] =
{
    {
        0u,     /*DcmDspCommonAuthorizationSecurityLevelRefNum*/
        NULL_PTR, /*DcmDspCommonAuthorizationSecurityLevelRef*/
        1u, /*DcmDspCommonAuthorizationSessionRefNum*/
        &CommonAuthorization_0_SesRef[0], /*DcmDspCommonAuthorizationSessionRef*/
    },
    {
        1u,     /*DcmDspCommonAuthorizationSecurityLevelRefNum*/
        &CommonAuthorization_1_SecRef[0], /*DcmDspCommonAuthorizationSecurityLevelRef*/
        1u, /*DcmDspCommonAuthorizationSessionRefNum*/
        &CommonAuthorization_1_SesRef[0], /*DcmDspCommonAuthorizationSessionRef*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDataType, DCM_CONST) Dcm_DspDataCfg[131] =
{
    {
        Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData, /*DcmDspDataWriteFnc*/
        3u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData, /*DcmDspDataWriteFnc*/
        17u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData, /*DcmDspDataWriteFnc*/
        11u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData, /*DcmDspDataWriteFnc*/
        20u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        3u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        10u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        10u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        10u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        3u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData, /*DcmDspDataWriteFnc*/
        64u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData, /*DcmDspDataWriteFnc*/
        64u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData, /*DcmDspDataWriteFnc*/
        6u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData, /*DcmDspDataWriteFnc*/
        6u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData, /*DcmDspDataWriteFnc*/
        4u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData, /*DcmDspDataWriteFnc*/
        64u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData, /*DcmDspDataWriteFnc*/
        64u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData, /*DcmDspDataWriteFnc*/
        14u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData, /*DcmDspDataWriteFnc*/
        37u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData, /*DcmDspDataWriteFnc*/
        24u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        3u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        6u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        3u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        24u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        20u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        24u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        24u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        24u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        128u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        128u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        4u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        3u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        8u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        24u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        4u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        6u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        6u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        5u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        32u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        3u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        2u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        16u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        458u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        7u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        4u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        36u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        1u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    },
    {
        Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead,     /*DcmDspDataConditionCheckReadFnc*/
        TRUE, /*DcmConditionCheckReadFncUsed*/
        NULL_PTR,     /*DcmDspDataEcuSignalFnc*/
        NULL_PTR, /*DcmDspDataReadEcuSignalFnc*/
        DCM_OPAQUE, /*DcmDspDataEndianness*/
        NULL_PTR,     /*DcmDspDataFreezeCurrentsStateFnc*/
        NULL_PTR,     /*DcmDspDataGetScalingInfoFnc*/
        NULL_PTR,  /*DcmDspDataReadDataLengthFnc*/
        Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData, /*DcmDspDataReadFnc*/
        NULL_PTR, /*DcmDspDataResetToDefaultFnc*/
        NULL_PTR, /*DcmDspDataReturnControlToECUFnc*/
        NULL_PTR, /*DcmDspDataShortTermAdjustmentFnc*/
        NULL_PTR, /*DcmDspDataWriteFnc*/
        4u, /*DcmDspDataByteSize*/
        DCM_UINT8_N, /*DcmDspDataType*/
        USE_DATA_ASYNCH_CLIENT_SERVER, /*DcmDspDataUsePort*/
        0u, /*DcmDspDataBlockId*/
        0xffu, /*DcmDspDataInfoIndex*/
        NULL_PTR, /*DcmDspDiagnosisScaling*/
        NULL_PTR /*DcmDspExternalSRDataElementClass*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/********************Dsp Did******************************/
/******************************************
 *DcmDspDidRead container configration
 *****************************************/                                                                        
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DspDidReadType,DCM_CONST)Dcm_DidInfo_0_ReadCfg =
{
    0u, /*DcmDspDidReadSecurityLevelRefNum*/
    NULL_PTR, /*pDcmDspDidReadSecurityLevelRow*/
    0u, /*DcmDspDidReadSessionRefNum*/
    NULL_PTR, /*pDcmDspDidReadSessionRow*/
    0u, /*DcmDspDidReadRoleRefNum*/
    NULL_PTR, /*pDcmDspAuthenticationRow*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DspDidReadType,DCM_CONST)Dcm_DidInfo_1_ReadCfg =
{
    0u, /*DcmDspDidReadSecurityLevelRefNum*/
    NULL_PTR, /*pDcmDspDidReadSecurityLevelRow*/
    0u, /*DcmDspDidReadSessionRefNum*/
    NULL_PTR, /*pDcmDspDidReadSessionRow*/
    0u, /*DcmDspDidReadRoleRefNum*/
    NULL_PTR, /*pDcmDspAuthenticationRow*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DspDidReadType,DCM_CONST)Dcm_DidInfo_2_ReadCfg =
{
    0u, /*DcmDspDidReadSecurityLevelRefNum*/
    NULL_PTR, /*pDcmDspDidReadSecurityLevelRow*/
    0u, /*DcmDspDidReadSessionRefNum*/
    NULL_PTR, /*pDcmDspDidReadSessionRow*/
    0u, /*DcmDspDidReadRoleRefNum*/
    NULL_PTR, /*pDcmDspAuthenticationRow*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*******************************************
 *DcmDspDidWrite container configuration,
 which is in the DcmDspDidInfo container
 ******************************************/
#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_DidInfo_0_Write_SecRefCfg[1] = {1u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_DidInfo_0_Write_SesRefCfg[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DspDidWriteType,DCM_CONST)Dcm_DidInfo_0_WriteCfg=
{
    1u,/*DcmDspDidWriteSecurityLevelRefNum*/
    &Dcm_DidInfo_0_Write_SecRefCfg[0],    /*pDcmDspDidWriteSecurityLevelRow*/
    1u,    /*DcmDspDidWriteSessionRefNum*/
    &Dcm_DidInfo_0_Write_SesRefCfg[0], /*pDcmDspDidWriteSessionRow*/
    0u,    /*DcmDspDidWriteRoleRefNum*/
    NULL_PTR, /*pDcmDspAuthenticationRow*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_DidInfo_2_Write_SesRefCfg[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DspDidWriteType,DCM_CONST)Dcm_DidInfo_2_WriteCfg=
{
    0u,/*DcmDspDidWriteSecurityLevelRefNum*/
    NULL_PTR,    /*pDcmDspDidWriteSecurityLevelRow*/
    1u,    /*DcmDspDidWriteSessionRefNum*/
    &Dcm_DidInfo_2_Write_SesRefCfg[0], /*pDcmDspDidWriteSessionRow*/
    0u,    /*DcmDspDidWriteRoleRefNum*/
    NULL_PTR, /*pDcmDspAuthenticationRow*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*******************************************
 *DcmDspDidControl container configuration,
 which is in the DcmDspDidInfo container
 ******************************************/    
/******************************************
 *DcmDspDidInfo container Configuration ***
 ******************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidInfoType,DCM_CONST)Dcm_DspDidInfoCfg[3] =
{
    {
        0u, /*DcmDspDDDIDMaxElements*/
        FALSE, /*DcmDspDidDynamicallyDefined*/
        NULL_PTR, /*pDcmDspDidControl*/
        &Dcm_DidInfo_0_ReadCfg, /*pDcmDspDidRead*/
        &Dcm_DidInfo_0_WriteCfg, /*pDcmDspDidWrite*/
    },
    {
        0u, /*DcmDspDDDIDMaxElements*/
        FALSE, /*DcmDspDidDynamicallyDefined*/
        NULL_PTR, /*pDcmDspDidControl*/
        &Dcm_DidInfo_1_ReadCfg, /*pDcmDspDidRead*/
        NULL_PTR, /*pDcmDspDidWrite*/
    },
    {
        0u, /*DcmDspDDDIDMaxElements*/
        FALSE, /*DcmDspDidDynamicallyDefined*/
        NULL_PTR, /*pDcmDspDidControl*/
        &Dcm_DidInfo_2_ReadCfg, /*pDcmDspDidRead*/
        &Dcm_DidInfo_2_WriteCfg, /*pDcmDspDidWrite*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F130_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[0],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F18B_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[1],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F18C_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[2],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F190_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[3],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F198_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[4],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1A8_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[5],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1A9_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[6],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F100_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[7],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F110_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[8],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F111_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[9],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F112_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[10],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F113_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[11],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F114_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[12],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F115_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[13],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F116_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[14],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F117_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[15],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F118_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[16],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F119_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[17],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F11A_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[18],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F11B_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[19],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F11C_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[20],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F11D_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[21],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F11E_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[22],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F11F_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[23],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F120_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[24],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F121_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[25],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F131_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[26],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F183_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[27],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F187_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[28],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F18A_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[29],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F191_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[30],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F192_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[31],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F194_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[32],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1A0_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[33],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1A1_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[34],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1A2_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[35],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1A5_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[36],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1AA_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[37],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1B5_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[38],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F1B6_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[39],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C001_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[40],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C002_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[41],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C003_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[42],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C004_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[43],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C005_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[44],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C006_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[45],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C007_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[46],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C008_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[47],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C009_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[48],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C00A_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[49],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C00B_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[50],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C00C_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[51],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C00D_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[52],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C011_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[53],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C012_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[54],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C013_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[55],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C106_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[60],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C109_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[61],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C016_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[58],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C102_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[59],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C014_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[56],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C015_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[57],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_CA02_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[62],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_CA21_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[63],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C305_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[64],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C307_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[66],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C308_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[67],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C309_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[68],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C30A_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[69],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C30C_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[70],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_CE01_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[71],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_CE05_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[72],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_CE06_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[73],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_CF00_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[74],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C30D_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[75],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_C306_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[65],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_112_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[79],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_E101_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[80],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_10B_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[81],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_D002_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[82],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_E010_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[83],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_F186_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[84],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_D001_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[85],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B9C1_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[86],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B000_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[87],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B001_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[88],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B002_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[89],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B003_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[90],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B004_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[91],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B005_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[92],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B006_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[93],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B00C_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[94],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B082_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[95],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B083_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[96],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B100_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[97],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B101_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[98],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B102_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[99],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B103_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[100],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B104_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[101],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B105_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[102],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B180_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[103],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B181_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[104],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B182_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[105],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B183_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[106],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B185_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[107],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B186_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[108],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B187_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[109],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B200_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[110],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B201_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[111],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B202_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[112],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B210_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[113],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B211_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[114],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B230_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[115],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B302_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[116],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B931_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[117],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_B9E4_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[118],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_AFF1_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[119],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_AFF2_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[120],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_AFF5_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[121],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_AFF6_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[122],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_BE01_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[123],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_BE02_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[124],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_BE04_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[125],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_BE80_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[126],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_BE05_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[127],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_BE06_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[128],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_BE0A_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[129],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidSignalType,DCM_CONST)Dcm_Did_D004_SignalCfg[1] =
{
    {
        0u,                   /*DcmDspDidByteOffset*/
        &Dcm_DspDataCfg[130],     /*pDcmDspDidData*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/**********************************************
 *DcmDspDid container configration*************
 **********************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspDidType,DCM_CONST)Dcm_DspDidCfg[128] =
{
    { /* Did_0xF130 */
        0xF130u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F130_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF18B */
        0xF18Bu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F18B_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF18C */
        0xF18Cu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F18C_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF190 */
        0xF190u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F190_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF198 */
        0xF198u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        2u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F198_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1A8 */
        0xF1A8u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        2u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1A8_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1A9 */
        0xF1A9u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        2u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1A9_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF100 */
        0xF100u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F100_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF110 */
        0xF110u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F110_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF111 */
        0xF111u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F111_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF112 */
        0xF112u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F112_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF113 */
        0xF113u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F113_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF114 */
        0xF114u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F114_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF115 */
        0xF115u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F115_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF116 */
        0xF116u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F116_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF117 */
        0xF117u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F117_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF118 */
        0xF118u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F118_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF119 */
        0xF119u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F119_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF11A */
        0xF11Au,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F11A_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF11B */
        0xF11Bu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F11B_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF11C */
        0xF11Cu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F11C_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF11D */
        0xF11Du,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F11D_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF11E */
        0xF11Eu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F11E_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF11F */
        0xF11Fu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F11F_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF120 */
        0xF120u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F120_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF121 */
        0xF121u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F121_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF131 */
        0xF131u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F131_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF183 */
        0xF183u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F183_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF187 */
        0xF187u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F187_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF18A */
        0xF18Au,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F18A_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF191 */
        0xF191u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F191_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF192 */
        0xF192u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F192_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF194 */
        0xF194u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F194_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1A0 */
        0xF1A0u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1A0_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1A1 */
        0xF1A1u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1A1_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1A2 */
        0xF1A2u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1A2_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1A5 */
        0xF1A5u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1A5_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1AA */
        0xF1AAu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1AA_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1B5 */
        0xF1B5u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1B5_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF1B6 */
        0xF1B6u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F1B6_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC001 */
        0xC001u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C001_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC002 */
        0xC002u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C002_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC003 */
        0xC003u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C003_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC004 */
        0xC004u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C004_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC005 */
        0xC005u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C005_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC006 */
        0xC006u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C006_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC007 */
        0xC007u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C007_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC008 */
        0xC008u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C008_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC009 */
        0xC009u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C009_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC00A */
        0xC00Au,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C00A_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC00B */
        0xC00Bu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C00B_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC00C */
        0xC00Cu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C00C_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC00D */
        0xC00Du,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C00D_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC011 */
        0xC011u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C011_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC012 */
        0xC012u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C012_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC013 */
        0xC013u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C013_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC106 */
        0xC106u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C106_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC109 */
        0xC109u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C109_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC016 */
        0xC016u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C016_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC102 */
        0xC102u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C102_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC014 */
        0xC014u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C014_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC015 */
        0xC015u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C015_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xCA02 */
        0xCA02u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_CA02_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xCA21 */
        0xCA21u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_CA21_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC305 */
        0xC305u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C305_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC307 */
        0xC307u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C307_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC308 */
        0xC308u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C308_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC309 */
        0xC309u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C309_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC30A */
        0xC30Au,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C30A_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC30C */
        0xC30Cu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C30C_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xCE01 */
        0xCE01u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_CE01_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xCE05 */
        0xCE05u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_CE05_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xCE06 */
        0xCE06u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_CE06_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xCF00 */
        0xCF00u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_CF00_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC30D */
        0xC30Du,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C30D_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xC306 */
        0xC306u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_C306_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0x112 */
        0x112u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_112_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xE101 */
        0xE101u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_E101_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0x10B */
        0x10Bu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_10B_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xD002 */
        0xD002u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_D002_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xE010 */
        0xE010u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_E010_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xF186 */
        0xF186u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_F186_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xD001 */
        0xD001u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_D001_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB9C1 */
        0xB9C1u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B9C1_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB000 */
        0xB000u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B000_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB001 */
        0xB001u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B001_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB002 */
        0xB002u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B002_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB003 */
        0xB003u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B003_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB004 */
        0xB004u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B004_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB005 */
        0xB005u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B005_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB006 */
        0xB006u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B006_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB00C */
        0xB00Cu,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B00C_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB082 */
        0xB082u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B082_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB083 */
        0xB083u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B083_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB100 */
        0xB100u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B100_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB101 */
        0xB101u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B101_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB102 */
        0xB102u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B102_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB103 */
        0xB103u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B103_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB104 */
        0xB104u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B104_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB105 */
        0xB105u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B105_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB180 */
        0xB180u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B180_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB181 */
        0xB181u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B181_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB182 */
        0xB182u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B182_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB183 */
        0xB183u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B183_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB185 */
        0xB185u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B185_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB186 */
        0xB186u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B186_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB187 */
        0xB187u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B187_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB200 */
        0xB200u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B200_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB201 */
        0xB201u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B201_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB202 */
        0xB202u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B202_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB210 */
        0xB210u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B210_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB211 */
        0xB211u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B211_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB230 */
        0xB230u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B230_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB302 */
        0xB302u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B302_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB931 */
        0xB931u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B931_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xB9E4 */
        0xB9E4u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_B9E4_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xAFF1 */
        0xAFF1u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        1u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_AFF1_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xAFF2 */
        0xAFF2u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_AFF2_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xAFF5 */
        0xAFF5u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_AFF5_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xAFF6 */
        0xAFF6u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_AFF6_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xBE01 */
        0xBE01u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_BE01_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xBE02 */
        0xBE02u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_BE02_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xBE04 */
        0xBE04u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_BE04_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xBE80 */
        0xBE80u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_BE80_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xBE05 */
        0xBE05u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_BE05_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xBE06 */
        0xBE06u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_BE06_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xBE0A */
        0xBE0Au,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        0u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_BE0A_SignalCfg[0],     /*pDcmDspDidSignal*/
    },
    { /* Did_0xD004 */
        0xD004u,     /*DcmDspDidId*/
        TRUE,     /*DcmDspDidUsed*/
        1u,     /*DcmDspDidInfoIndex*/
        0u,     /*DcmDspRefDidNum*/
        NULL_PTR,     /*pDcmDspRefDidIdArray*/
        1u, /*DcmDspDidSignalNum*/
        &Dcm_Did_D004_SignalCfg[0],     /*pDcmDspDidSignal*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/******************Dsp Routine**************/
/***********************************
 *DcmDspRequestRoutineResults container
 **********************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xAF09_SignalCfg[2] =
{
    {
        DCM_OPAQUE,     /*DcmDspRoutineSignalEndianness*/
        2u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        2u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xAF0A_SignalCfg[3] =
{
    {
        DCM_OPAQUE,     /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE,     /*DcmDspRoutineSignalEndianness*/
        2u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xAFF7_SignalCfg[1] =
{
    {
        DCM_OPAQUE,     /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xFE02_SignalCfg[3] =
{
    {
        DCM_OPAQUE,     /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        6u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xFE80_SignalCfg[2] =
{
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        2u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        6u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xFE0A_SignalCfg[2] =
{
    {
        DCM_OPAQUE,     /*DcmDspRoutineSignalEndianness*/
        114u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        3u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xFE0B_SignalCfg[3] =
{
    {
        DCM_OPAQUE,     /*DcmDspRoutineSignalEndianness*/
        2u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutSignalType,DCM_CONST)Dcm_Routine_0xAF05_SignalCfg[1] =
{
    {
        DCM_OPAQUE, /*DcmDspRoutineSignalEndianness*/
        1u, /*DcmDspRoutineSignalLength*/
        0u, /*DcmDspRoutineSignalPos*/
        DCM_UINT8_N, /*DcmDspRoutineSignalType*/
        NULL_PTR, /*DcmDspArgumentScaling*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
/***********************************
 *DcmDspRequestRoutineResults container
 **********************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xAF09_RequestRoutineResultsOutCfg =
{
    1u,                                  /*RoutineOutSignalNum*/
    &Dcm_Routine_0xAF09_SignalCfg[0],    /*DcmDspRoutineOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRequestRoutineResultsType,DCM_CONST)Dcm_RoutineInfo_0xAF09_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF09_RequestResults, /*DcmDspRequestRoutineResultsFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspRequestRoutineResultsCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspRequestRoutineResultsIn*/
    &Dcm_Routine_0xAF09_RequestRoutineResultsOutCfg, /*DcmDspRequestRoutineResultsOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xAF0A_RequestRoutineResultsInCfg =
{
    1u,                                  /*RoutineInSignalNum*/
    &Dcm_Routine_0xAF0A_SignalCfg[0],    /*DcmDspRoutineInSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xAF0A_RequestRoutineResultsOutCfg =
{
    1u,                                  /*RoutineOutSignalNum*/
    &Dcm_Routine_0xAF0A_SignalCfg[1],    /*DcmDspRoutineOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRequestRoutineResultsType,DCM_CONST)Dcm_RoutineInfo_0xAF0A_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults, /*DcmDspRequestRoutineResultsFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspRequestRoutineResultsCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    &Dcm_Routine_0xAF0A_RequestRoutineResultsInCfg, /*DcmDspRequestRoutineResultsIn*/
    &Dcm_Routine_0xAF0A_RequestRoutineResultsOutCfg, /*DcmDspRequestRoutineResultsOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xAFF7_RequestRoutineResultsOutCfg =
{
    1u,                                  /*RoutineOutSignalNum*/
    &Dcm_Routine_0xAFF7_SignalCfg[0],    /*DcmDspRoutineOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRequestRoutineResultsType,DCM_CONST)Dcm_RoutineInfo_0xAFF7_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults, /*DcmDspRequestRoutineResultsFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspRequestRoutineResultsCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspRequestRoutineResultsIn*/
    &Dcm_Routine_0xAFF7_RequestRoutineResultsOutCfg, /*DcmDspRequestRoutineResultsOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE02_RequestRoutineResultsOutCfg =
{
    1u,                                  /*RoutineOutSignalNum*/
    &Dcm_Routine_0xFE02_SignalCfg[0],    /*DcmDspRoutineOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRequestRoutineResultsType,DCM_CONST)Dcm_RoutineInfo_0xFE02_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE02_RequestResults, /*DcmDspRequestRoutineResultsFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspRequestRoutineResultsCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspRequestRoutineResultsIn*/
    &Dcm_Routine_0xFE02_RequestRoutineResultsOutCfg, /*DcmDspRequestRoutineResultsOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE0A_RequestRoutineResultsOutCfg =
{
    1u,                                  /*RoutineOutSignalNum*/
    &Dcm_Routine_0xFE0A_SignalCfg[0],    /*DcmDspRoutineOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRequestRoutineResultsType,DCM_CONST)Dcm_RoutineInfo_0xFE0A_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults, /*DcmDspRequestRoutineResultsFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspRequestRoutineResultsCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspRequestRoutineResultsIn*/
    &Dcm_Routine_0xFE0A_RequestRoutineResultsOutCfg, /*DcmDspRequestRoutineResultsOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE0B_RequestRoutineResultsOutCfg =
{
    1u,                                  /*RoutineOutSignalNum*/
    &Dcm_Routine_0xFE0B_SignalCfg[0],    /*DcmDspRoutineOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRequestRoutineResultsType,DCM_CONST)Dcm_RoutineInfo_0xFE0B_ResultsCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults, /*DcmDspRequestRoutineResultsFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspRequestRoutineResultsCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspRequestRoutineResultsIn*/
    &Dcm_Routine_0xFE0B_RequestRoutineResultsOutCfg, /*DcmDspRequestRoutineResultsOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
/***********************************
 *DcmDspRoutineStart container
 **********************************/

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF08_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF08_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     NULL_PTR, /*DcmDspStartRoutineIn*/
     NULL_PTR, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF09_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF09_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     NULL_PTR, /*DcmDspStartRoutineIn*/
     NULL_PTR, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xAF0A_StartRoutineInCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xAF0A_SignalCfg[2],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF0A_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF0A_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     &Dcm_Routine_0xAF0A_StartRoutineInCfg, /*DcmDspStartRoutineIn*/
     NULL_PTR, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAFF7_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAFF7_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     NULL_PTR, /*DcmDspStartRoutineIn*/
     NULL_PTR, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE02_StartRoutineInCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xFE02_SignalCfg[1],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE02_StartRoutineOutCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xFE02_SignalCfg[2],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xFE02_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE02_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     &Dcm_Routine_0xFE02_StartRoutineInCfg, /*DcmDspStartRoutineIn*/
     &Dcm_Routine_0xFE02_StartRoutineOutCfg, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE80_StartRoutineInCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xFE80_SignalCfg[0],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE80_StartRoutineOutCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xFE80_SignalCfg[1],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xFE80_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE80_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     &Dcm_Routine_0xFE80_StartRoutineInCfg, /*DcmDspStartRoutineIn*/
     &Dcm_Routine_0xFE80_StartRoutineOutCfg, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE0A_StartRoutineInCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xFE0A_SignalCfg[1],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xFE0A_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE0A_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     &Dcm_Routine_0xFE0A_StartRoutineInCfg, /*DcmDspStartRoutineIn*/
     NULL_PTR, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE0B_StartRoutineInCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xFE0B_SignalCfg[1],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xFE0B_StartRoutineOutCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xFE0B_SignalCfg[2],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xFE0B_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xFE0B_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     &Dcm_Routine_0xFE0B_StartRoutineInCfg, /*DcmDspStartRoutineIn*/
     &Dcm_Routine_0xFE0B_StartRoutineOutCfg, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)Dcm_Routine_0xAF05_StartRoutineOutCfg =
{
    1u,                                  /*RoutineInOutSignalNum*/
    &Dcm_Routine_0xAF05_SignalCfg[0],    /*DcmDspRoutineInOutSignal*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF05_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF05_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[1], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     NULL_PTR, /*DcmDspStartRoutineIn*/
     &Dcm_Routine_0xAF05_StartRoutineOutCfg, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF06_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF06_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[1], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     NULL_PTR, /*DcmDspStartRoutineIn*/
     NULL_PTR, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStartRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF07_StartCfg =
{

     Rte_Call_RoutineServices_Routine_0xAF07_Start, /*DcmDspStartRoutineFnc*/
     &Dcm_DspCommonAuthorizationCfg[1], /*DcmDspStartRoutineCommonAuthorizationRef*/
     0u,
     NULL_PTR,
     NULL_PTR, /*DcmDspStartRoutineIn*/
     NULL_PTR, /*DcmDspStartRoutineOut*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
/***********************************
 *DcmDspRoutineStop container
 **********************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStopRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF08_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF08_Stop, /*DcmDspStopRoutineFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStopRoutineCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspStopRoutineIn*/
    NULL_PTR, /*DcmDspStopRoutineIn*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineInOutType,DCM_CONST)    Dcm_Routine_0xAF09_StopRoutineOutCfg =
{
    1u,
    &Dcm_Routine_0xAF09_SignalCfg[1],
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStopRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF09_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF09_Stop, /*DcmDspStopRoutineFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStopRoutineCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspStopRoutineIn*/
    &Dcm_Routine_0xAF09_StopRoutineOutCfg, /*DcmDspStopRoutineIn*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStopRoutineType,DCM_CONST)Dcm_RoutineInfo_0xFE0A_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xFE0A_Stop, /*DcmDspStopRoutineFnc*/
    &Dcm_DspCommonAuthorizationCfg[0], /*DcmDspStopRoutineCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspStopRoutineIn*/
    NULL_PTR, /*DcmDspStopRoutineIn*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStopRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF06_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF06_Stop, /*DcmDspStopRoutineFnc*/
    &Dcm_DspCommonAuthorizationCfg[1], /*DcmDspStopRoutineCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspStopRoutineIn*/
    NULL_PTR, /*DcmDspStopRoutineIn*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspStopRoutineType,DCM_CONST)Dcm_RoutineInfo_0xAF07_StopCfg =
{
    Rte_Call_RoutineServices_Routine_0xAF07_Stop, /*DcmDspStopRoutineFnc*/
    &Dcm_DspCommonAuthorizationCfg[1], /*DcmDspStopRoutineCommonAuthorizationRef*/
    0u,
    NULL_PTR,
    NULL_PTR, /*DcmDspStopRoutineIn*/
    NULL_PTR, /*DcmDspStopRoutineIn*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
/***********************************
 *DcmDspRoutine container configration
 **********************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspRoutineType,DCM_CONST)Dcm_DspRoutineCfg[11] =
{
    { /* Routine_0xAF08 */
        0xAF08u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        NULL_PTR, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xAF08_StartCfg, /*DcmDspRequestRoutineResults*/
        &Dcm_RoutineInfo_0xAF08_StopCfg, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xAF09 */
        0xAF09u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        &Dcm_RoutineInfo_0xAF09_ResultsCfg, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xAF09_StartCfg, /*DcmDspRequestRoutineResults*/
        &Dcm_RoutineInfo_0xAF09_StopCfg, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xAF0A */
        0xAF0Au, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        &Dcm_RoutineInfo_0xAF0A_ResultsCfg, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xAF0A_StartCfg, /*DcmDspRequestRoutineResults*/
        NULL_PTR, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xAFF7 */
        0xAFF7u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        &Dcm_RoutineInfo_0xAFF7_ResultsCfg, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xAFF7_StartCfg, /*DcmDspRequestRoutineResults*/
        NULL_PTR, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xFE02 */
        0xFE02u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        &Dcm_RoutineInfo_0xFE02_ResultsCfg, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xFE02_StartCfg, /*DcmDspRequestRoutineResults*/
        NULL_PTR, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xFE80 */
        0xFE80u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        NULL_PTR, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xFE80_StartCfg, /*DcmDspRequestRoutineResults*/
        NULL_PTR, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xFE0A */
        0xFE0Au, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        &Dcm_RoutineInfo_0xFE0A_ResultsCfg, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xFE0A_StartCfg, /*DcmDspRequestRoutineResults*/
        &Dcm_RoutineInfo_0xFE0A_StopCfg, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xFE0B */
        0xFE0Bu, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[0],     /*DcmDspCommonAuthorizationRef*/
        &Dcm_RoutineInfo_0xFE0B_ResultsCfg, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xFE0B_StartCfg, /*DcmDspRequestRoutineResults*/
        NULL_PTR, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xAF05 */
        0xAF05u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[1],     /*DcmDspCommonAuthorizationRef*/
        NULL_PTR, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xAF05_StartCfg, /*DcmDspRequestRoutineResults*/
        NULL_PTR, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xAF06 */
        0xAF06u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[1],     /*DcmDspCommonAuthorizationRef*/
        NULL_PTR, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xAF06_StartCfg, /*DcmDspRequestRoutineResults*/
        &Dcm_RoutineInfo_0xAF06_StopCfg, /*DcmDspStopRoutine*/
    },
    { /* Routine_0xAF07 */
        0xAF07u, /*DcmDspRoutineId*/
        0u, /*DcmDspRoutineInfoByte*/
        TRUE, /*DcmDspRoutineUsePort*/
        TRUE,     /*DcmDspRoutineUsed*/
        &Dcm_DspCommonAuthorizationCfg[1],     /*DcmDspCommonAuthorizationRef*/
        NULL_PTR, /*DcmDspStopRoutineIn*/
        &Dcm_RoutineInfo_0xAF07_StartCfg, /*DcmDspRequestRoutineResults*/
        &Dcm_RoutineInfo_0xAF07_StopCfg, /*DcmDspStopRoutine*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
/******************Dsp Security Row**************/
/************************************************
 ****DcmDspSecurityRow container(Multiplicity=0..31)****
 ************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspSecurityRowType,DCM_CONST)Dcm_DspSecurityRow[1] =
{
    { /* Level_1 */
        1u,          /*DcmDspSecurityLevel*/
        4u,          /*DcmDspSecuritySeedSize*/
        4u,          /*DcmDspSecurityKeySize*/
        0u,          /*DcmDspSecurityADRSize*/
        TRUE,        /*DcmDspSecurityAttemptCounterEnabled*/
        2u,    /*DcmDspSecurityNumAttDelay*/
        10000u,  /*DcmDspSecurityDelayTime,10s */
        0u,/*DcmDspSecurityDelayTimeOnBoot*/
        Rte_Call_SecurityAccess_Level_1_GetSeed,    /*Dcm_GetSeedFnc*/
        Rte_Call_SecurityAccess_Level_1_CompareKey,    /*Dcm_CompareKeyFnc*/
        Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter,    /*Dcm_GetSecurityAttemptCounterFnc*/
        Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter,    /*Dcm_SetSecurityAttemptCounterFnc*/
        USE_ASYNCH_CLIENT_SERVER,    /*DcmDspSecurityUsePort*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
/************************************************
 ****DcmDspSecurity container(Multiplicity=1)****
 ************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspSecurityType,DCM_CONST)Dcm_DspSecurity =
{
    &Dcm_DspSecurityRow[0],    /*pDcm_DspSecurityRow*/
    1u,    /*DcmDspSecurityRow_Num*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/******************Dsp Session Row**************/
/************************************************
 ****DcmDspSessionRow container(Multiplicity=0..31)
 ************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspSessionRowType,DCM_CONST)Dcm_DspSessionRow[3] =
{
    { /* Default */
        DCM_NO_BOOT,    /*DcmDspSessionForBoot*/
        1u,    /*DcmDspSessionLevel*/
        50u,    /*DcmDspSessionP2ServerMax*/
        5000u,    /*DcmDspSessionP2StarServerMax*/
    },
    { /* Programming */
        DCM_SYS_BOOT,    /*DcmDspSessionForBoot*/
        2u,    /*DcmDspSessionLevel*/
        50u,    /*DcmDspSessionP2ServerMax*/
        5000u,    /*DcmDspSessionP2StarServerMax*/
    },
    { /* Extended */
        DCM_NO_BOOT,    /*DcmDspSessionForBoot*/
        3u,    /*DcmDspSessionLevel*/
        50u,    /*DcmDspSessionP2ServerMax*/
        5000u,    /*DcmDspSessionP2StarServerMax*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/************************************************
 *******Dcm_DspSession container(Multiplicity=1)*
 ************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspSessionType,DCM_CONST)Dcm_DspSession =
{
    &Dcm_DspSessionRow[0],    /*pDcmDspSessionRow*/
    3u,        /*DcmDspSessionRow_Num*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*****************************************************
 ****************DcmDsp container configration********
 ****************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DspCfgType,DCM_CONST) Dcm_DspCfg =
{
    &DcmDspDIDcheckPerSourceDID,    /*DcmDspDDDIDcheckPerSourceDID*/
    DCM_BIG_ENDIAN,    /*DcmDspDataDefaultEndianness*/
    FALSE,/*DcmDspEnableObdMirror*/
    10,/*DcmDspMaxDidToRead*/
    DCM_DSP_MAX_PERIODIC_DID_TO_READ,/*DcmDspMaxPeriodicDidToRead*/
    0u,/*DcmDspPowerDownTime*/
    BEFORE_RESET,    /*DcmResponseToEcuReset*/
    NULL_PTR,        /*pDcmDspClearDTC*/
    &Dcm_DspComControlCfg,        /*pDcmDspComControl*/
    &Dcm_DspCommonAuthorizationCfg[0],        /*pDcmDspCommonAuthorization*/
    &Dcm_DspControlDTCSettingCfg,    /*pDcmDspControlDTCSetting*/
    &Dcm_DspDataCfg[0],    /*pDcmDspData*/    NULL_PTR,    /*pDcmDspDataInfo*/
    128u,    /*DcmDspDidNum*/
    &Dcm_DspDidCfg[0],        /*pDcmDspDid*/
    3u,    /*DcmDspDidInfoNum*/
    &Dcm_DspDidInfoCfg[0],        /*pDcmDspDidInfo*/
    0u,    /*DcmDspDidRangeNum*/
    NULL_PTR,        /*pDcmDspDidRange*/
    NULL_PTR, /*pDcmDspMemory*/

    NULL_PTR,    /*DcmDspRequestFileTransfer*/

    11u,        /*DcmDspRoutineNum*/
    &Dcm_DspRoutineCfg[0],    /*pDcmDspRoutine*/

    &Dcm_DspSecurity,  /* pDcm_DspSecurity */
    &Dcm_DspSession,  /* pDcm_DspSession */

    DCM_DSP_MAX_PERIODIC_DID_SCHEDULER,
    NULL_PTR,

    NULL_PTR,
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*****************************************************************************************
 ********************************* DSD container configration*****************************
 *****************************************************************************************/

/*Service_0x10_DiagnosticSessionControl SubService*/
#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x10_3_SesRef[2] = {1u, 3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x10[3] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x1u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x2u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x3u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x10_3_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        2u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Service_0x31_RoutineControl SubService*/
#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_1_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_2_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SecRef[1] = {1u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x31[3] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x1u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_1_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x2u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_2_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x3u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SecRef[0],    /*DcmDsdSubServiceSecurityLevelRef*/
        1u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_3_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Service_0x11_ECUReset SubService*/

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x11[1] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x1u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Service_0x85_ControlDTCSetting SubService*/
#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_1_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_2_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x85[2] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x1u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_1_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x2u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_2_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Service_0x27_SecurityAccess SubService*/
#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_1_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_2_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x27[2] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x1u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_1_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x2u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_2_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Service_0x28_CommunicationControl SubService*/
#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_0_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_1_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_3_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x28[3] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x0u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_0_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x1u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_1_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x3u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_3_SesRef[0],    /*DcmDsdSubServiceSessionLevelRef*/
        1u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Service_0x19_ReadDTCInformation SubService*/

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x19[5] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x1u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x2u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x4u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x6u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0xAu,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Service_0x3E_TesterPresent SubService*/

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdSubServiceCfgType,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x3E[1] =
{
    {
        NULL_PTR,    /*DcmDsdSubServiceFnc*/
        0x0u,    /*DcmDsdSubServiceId*/
        TRUE,    /*DcmDsdSubServiceUsed*/
        NULL_PTR,    /*DcmDsdSubServiceModeRuleRef*/
        NULL_PTR,    /*DcmDsdSubServiceSecurityLevelRef*/
        0u,    /*DcmDsdSubServiceSecurityLevel_Num*/
        NULL_PTR,    /*DcmDsdSubServiceSessionLevelRef*/
        0u,    /*DcmDsdSubServiceSessionLevel_Num*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*UDS Service session and security configuration*/

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2E_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_8
#include  "Dcm_MemMap.h"
static  CONST(uint8,DCM_CONST)Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2F_SesRef[1] = {3u};
#define  DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
/*DcmDsdService SRVTABLE_UDS_CAN_FD*/    
static  CONST(Dcm_DsdServiceCfgType,DCM_CONST)SRVTABLE_UDS_CAN_FD_Service[12] =
{
    { /*DiagnosticSessionControl*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x10,    /*DcmDsdSidTabFnc*/
        0x10u,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        TRUE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        0u,    /*DcmDsdSessionLevel_Num*/
        NULL_PTR,    /*pDcmDsdSessionLevelRef*/
        3u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x10[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*RoutineControl*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x31,    /*DcmDsdSidTabFnc*/
        0x31u,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        FALSE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYSICAL, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        1u,    /*DcmDsdSessionLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x31_SesRef[0],    /*pDcmDsdSessionLevelRef*/
        3u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x31[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*ECUReset*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x11,    /*DcmDsdSidTabFnc*/
        0x11u,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        TRUE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        0u,    /*DcmDsdSessionLevel_Num*/
        NULL_PTR,    /*pDcmDsdSessionLevelRef*/
        1u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x11[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*ReadDataByIdentifier*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x22,    /*DcmDsdSidTabFnc*/
        0x22u,    /*DcmDsdServiceId*/
        FALSE,    /*DcmDsdSubfuncAvial*/
        FALSE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        0u,    /*DcmDsdSessionLevel_Num*/
        NULL_PTR,    /*pDcmDsdSessionLevelRef*/
        0u,    /*DcmDsdSubService_Num*/
        NULL_PTR,    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*ClearDiagnosticInformation*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x14,    /*DcmDsdSidTabFnc*/
        0x14u,    /*DcmDsdServiceId*/
        FALSE,    /*DcmDsdSubfuncAvial*/
        FALSE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        0u,    /*DcmDsdSessionLevel_Num*/
        NULL_PTR,    /*pDcmDsdSessionLevelRef*/
        0u,    /*DcmDsdSubService_Num*/
        NULL_PTR,    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*ControlDTCSetting*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x85,    /*DcmDsdSidTabFnc*/
        0x85u,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        TRUE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        1u,    /*DcmDsdSessionLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x85_SesRef[0],    /*pDcmDsdSessionLevelRef*/
        2u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x85[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*SecurityAccess*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x27,    /*DcmDsdSidTabFnc*/
        0x27u,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        FALSE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYSICAL, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        1u,    /*DcmDsdSessionLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x27_SesRef[0],    /*pDcmDsdSessionLevelRef*/
        2u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x27[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*CommunicationControl*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x28,    /*DcmDsdSidTabFnc*/
        0x28u,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        TRUE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        1u,    /*DcmDsdSessionLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x28_SesRef[0],    /*pDcmDsdSessionLevelRef*/
        3u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x28[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*ReadDTCInformation*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x19,    /*DcmDsdSidTabFnc*/
        0x19u,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        FALSE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        0u,    /*DcmDsdSessionLevel_Num*/
        NULL_PTR,    /*pDcmDsdSessionLevelRef*/
        5u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x19[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*WriteDataByIdentifier*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x2E,    /*DcmDsdSidTabFnc*/
        0x2Eu,    /*DcmDsdServiceId*/
        FALSE,    /*DcmDsdSubfuncAvial*/
        FALSE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYSICAL, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        1u,    /*DcmDsdSessionLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2E_SesRef[0],    /*pDcmDsdSessionLevelRef*/
        0u,    /*DcmDsdSubService_Num*/
        NULL_PTR,    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*TesterPresent*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x3E,    /*DcmDsdSidTabFnc*/
        0x3Eu,    /*DcmDsdServiceId*/
        TRUE,    /*DcmDsdSubfuncAvial*/
        TRUE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        0u,    /*DcmDsdSessionLevel_Num*/
        NULL_PTR,    /*pDcmDsdSessionLevelRef*/
        1u,    /*DcmDsdSubService_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_DsdSubService_UDS0x3E[0],    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    },
    { /*InputOutputControlByIdentifier*/
        TRUE,    /*DcmDsdServiceUsed*/
        Dcm_UDS0x2F,    /*DcmDsdSidTabFnc*/
        0x2Fu,    /*DcmDsdServiceId*/
        FALSE,    /*DcmDsdSubfuncAvial*/
        FALSE,  /*DcmDsdSuppressPosRsp*/
        DCM_PHYANDFUNC, /*DcmDsdSidTabAddressingFormat*/
        NULL_PTR,    /*DcmDsdModeRuleRef*/
        0u, /*DcmDsdSecurityLevel_Num*/
        NULL_PTR,    /*pDcmDsdSecurityLevelRef*/
        1u,    /*DcmDsdSessionLevel_Num*/
        &Dcm_SRVTABLE_UDS_CAN_FD_UDS0x2F_SesRef[0],    /*pDcmDsdSessionLevelRef*/
        0u,    /*DcmDsdSubService_Num*/
        NULL_PTR,    /*DcmDsdSubService*/
        NULL_PTR,    /*DcmDsdServiceRoleRefs*/
        0u    /*DcmDsdServiceRoleRef_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/**********************************************************************/
/*DCM Support Service Table(Multiplicity=1..256)*/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DsdServiceTableCfgType,DCM_CONST)Dcm_DsdServiceTable[DCM_SERVICE_TAB_NUM]=
{
    {
        0x0u,    /*DcmDsdSidTabId*/
        &SRVTABLE_UDS_CAN_FD_Service[0],    /*pDcmDsdService*/
        12u    /*DcmDsdSidTab_ServiceNum*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/**********************************************************************/

/**********************************************************************/
/*Dsd container(Multiplicity=1)*/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DsdCfgType,DCM_CONST)Dcm_DsdCfg =
{
    &Dcm_DsdServiceTable[0],    /*pDcmDsdServiceTable*/
    DCM_SERVICE_TAB_NUM        /*DcmDsdServiceTable_Num*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*****************************************************************************************
 ********************************* DSL container configration*****************************
 *****************************************************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
/*DcmDslBuffer container(Multiplicity=1..256)*/
static  CONST(Dcm_DslBufferType,DCM_CONST)Dcm_DslBufferCfg[DCM_CHANNEL_NUM] =
{
    {/* Buffer_CAN_FD_Rx*/
        0x0u,    /*Dcm_DslBufferId*/
        1024u,    /*Dcm_DslBufferSize*/
        0u    /*offset*/
    },
    {/* Buffer_CAN_FD_Tx*/
        0x1u,    /*Dcm_DslBufferId*/
        1024u,    /*Dcm_DslBufferSize*/
        1024u    /*offset*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/***********************************/
/*DcmDslDiagResp container(Multiplicity=1)*/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DslDiagRespType,DCM_CONST)Dcm_DslDiagRespCfg =
{
    FALSE,        /*DcmDslDiagRespOnSecondDeclinedRequest*/
    0u        /*DcmDslDiagRespMaxNumRespPend*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*****************************************************
 *DcmDslCallbackDCMRequestService port configuration(Multiplicity=1..*)
 *****************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static  CONST(Dcm_DslCallbackDCMRequestServiceType,DCM_CONST)Dcm_DslCallbackDCMRequestServiceCfg[1] =
{
    {
        NULL_PTR,
        NULL_PTR
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/********************UDS protocol Connection configuration*******************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DslProtocolRxType,DCM_CONST)Dsl_Protocol_Connection_RxCfg[DCM_DSL_RX_ID_NUM]=
{
    {
        0x0u,              /*DcmDslParentMainConnectionCtrlId*/
        DCM_FUNCTIONAL,    /*DcmDslProtocolRxAddrType*/
        DCM_Dcm_fun_rx_0x7df,       /*DcmDslProtocolRxPduId*/

    },
    {
        0x0u,              /*DcmDslParentMainConnectionCtrlId*/
        DCM_PHYSICAL,    /*DcmDslProtocolRxAddrType*/
        DCM_Dcm_phy_rx_0x711,       /*DcmDslProtocolRxPduId*/

    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DslProtocolTxType,DCM_CONST)Dsl_Protocol_Connection_TxCfg[DCM_DSL_TX_ID_NUM]=
{
    {
        0x0u,            /*DcmDslParentMainConnectionCtrlId*/
        DCM_Dcm_phy_tx_0x719,       /*DcmDslProtocolTxPduId*/
        DCM_PDUR_Dcm_phy_tx_0x719,  /*DcmDslProtocolTx Pdu Id of PduR*/
    },
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Connection1,Mainconnection,ProtocolTx configration(Multiplicity=1..*)*/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DslMainConnectionType,DCM_CONST) Dsl_Protocol_MainConnectionCfg[DCM_MAINCONNECTION_NUM] =
{
    {
        0x00000000u,                            /*DcmDslProtocolRxTesterSourceAddr*/
        NULL_PTR,  /*pDcmDslPeriodicTranmissionConRef*/
        0u,                                     /*DcmDslProtocolComMChannelId*/

        NULL_PTR,  /*pDcmDslROEConnectionRef*/
        &Dsl_Protocol_Connection_RxCfg[0],    /*pDcmDslProtocolRx*/
        2u,                                   /*DcmDslProtocolRx_Num*/
        &Dsl_Protocol_Connection_TxCfg[0],  /*pDcmDslProtocolTx*/
        1u                                    /*DcmDslProtocolTx_Num*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*Connection1 configration*/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DslConnectionType,DCM_CONST)Dsl_Protocol_ConnectionCfg[DCM_CONNECTION_NUM]=
{
    {
        0x0u,                                /*parent protocolRow id*/
        &Dsl_Protocol_MainConnectionCfg[0],    /*pDcmDslMainConnection*/
        NULL_PTR,                             /*pDcmDslPeriodicTransmission*/
        NULL_PTR                              /*pDcmDslResponseOnEvent*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
/*****************************************************
 ****Dcm_DslProtocolRow container configration(Multiplicity=1..*)*******
 ****************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DslProtocolRowType,DCM_CONST)Dsl_ProtocolRowCfg[DCM_DSLPROTOCOLROW_NUM_MAX] =
{
    {
        DCM_UDS_ON_CAN,        /*DcmDslProtocolType*/
        0u,                    /*DcmDslProtocolPriority*/
        TRUE,                /*true-protocol is available*/
        DCM_PROTOCAL_TRAN_NOT_VALID,
        TRUE,                /*True-send 0x78 before transitioning to the bootloader */
        0u,                     /*DcmTimStrP2ServerAdjust*/
        0u,                /*DcmTimStrP2StarServerAdjust*/
        &Dcm_DslBufferCfg[0],/*DcmDslProtocolRxBuffer*/
        &Dcm_DslBufferCfg[1],/*DcmDslProtocolTxBuffer*/
        0u,                 /*DcmDslServiceTableId*/
        &Dsl_Protocol_ConnectionCfg[0], /*DcmDslConnection*/
        FALSE,              /*DcmDslProtocolRequestQueued*/
    }
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*****************************************************
 *DcmDslProtocol container configration(Multiplicity=1)
 ****************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DslProtocolType,DCM_CONST)Dcm_DslProtocol =
{
    &Dsl_ProtocolRowCfg[0],    /*pDcmDslProtocolRow*/
    DCM_DSLPROTOCOLROW_NUM_MAX,    /*DcmDslProtocolRow_Num*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

/*****************************************************
 ****************DcmDsl container configration*****
 ****************************************************/
#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
static CONST(Dcm_DslCfgType,DCM_CONST)Dcm_DslCfg =
{
    DCM_CHANNEL_NUM,        /*Number of Channel configration*/
    &Dcm_DslBufferCfg[0],    /*DcmDslBuffer*/
    0u,                        /*Number of DslCallbackDCMRequestService port*/
    &Dcm_DslCallbackDCMRequestServiceCfg[0],    /*pDcmDslCallback_DCMRequestService*/
    &Dcm_DslDiagRespCfg,       /*reference to DcmDslDiagResp configration*/
    &Dcm_DslProtocol,        /*reference to DcmDslProtocol configration*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"

#define   DCM_START_SEC_CONST_UNSPECIFIED
#include  "Dcm_MemMap.h"
/* PRQA S 3408 ++ */ /* VL_Dcm_3408 */
CONST(Dcm_CfgType,DCM_CONST)Dcm_Cfg =
/* PRQA S 3408 -- */
{
    &Dcm_DslCfg,    /*pDcmDslCfg*/
    &Dcm_DsdCfg,    /*pDcmDsdCfg*/
    &Dcm_DspCfg,    /*pDcmDspCfg*/
    Dsl_Protocol_Connection_RxCfg,
    Dsl_Protocol_ConnectionCfg,
    Dsl_Protocol_MainConnectionCfg,
    Dsl_Protocol_Connection_TxCfg,
    NULL_PTR,        /*pDcmPageBufferCfg*/
    NULL_PTR,        /*pDcmProcessingConditionsCfg*/
};
#define  DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h"
