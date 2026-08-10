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
 *  @file               : ComM_PBCfg.h
 *  @author             : iSoft
 *  @date               : 2026-06-18 17:27:42
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef COMM_PBCFG_H_
#define COMM_PBCFG_H_

/*=================================================[inclusions]=======================================================*/
#include "ComM_Types.h"

/*====================================================[macros]========================================================*/
BEGIN_C_DECLS
#if !defined(COMM_CONFIG_LOCAL)
#define COMM_CONFIG_LOCAL static
#endif

/*=============================================[type definitions]=====================================================*/
/** \brief busSm type */
typedef struct {
    Std_ReturnType (*busSm_RequestComMode)(NetworkHandleType network, ComM_ModeType ComM_Mode);
    Std_ReturnType (*busSm_GetCurrentComMode)(NetworkHandleType network, ComM_ModeType* ComM_Mode);
} ComM_BusSmConfigType;

/** \brief channel data type */
typedef struct {
    NetworkHandleType inerChIdx;
#define COMM_BUS_TYPE_CAN      0u
    uint32 busType;
    NetworkHandleType busIndex;
    const ComM_BusSmConfigType* busSmCfgType;
#define COMM_NM_VARIANT_FULL          0x01u
#define COMM_NM_VARIANT_PASSIVE       0x08u
#define COMM_NM_VARIANT_NORMAL        0x1u
    uint8 nmVariant;
    uint8 dcmInReqIdx;
    const uint8* dcmNotifyIdPtr;
#define COMM_NO_COM_INHIBITION 0x3u
#define COMM_NO_WAKEUP_INHIBITION 0x4u
    uint8 cfgMask[1];
    /* channel var */
    uint8* requestMask;
    uint8 requestMaskLen;
} ComM_ChannelConfigType;

/** \brief user data type */
typedef struct ComM_UserConfigSTag{
    ComM_UserHandleType userId;
    const uint8* directChList;
    uint32 directChListNum;
    const uint8* mapAllChList;
    uint32 mapAllChListNum;
    const uint8* userInChIdex;
} ComM_UserConfigType;

typedef struct {
    const ComM_ChannelConfigType* chCfgPtr;
    const ComM_UserConfigType* userCfgPtr;
    uint32 userCfgNum;
}ComM_ConfigType;

/*========================================[external data declarations]============================================*/
extern CONST(ComM_ConfigType, COMM_CONST) ComM_Config;
END_C_DECLS
#endif /* COMM_PBCFG_H_ */
