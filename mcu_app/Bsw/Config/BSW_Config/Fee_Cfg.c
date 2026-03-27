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
 *  @file               : Fee_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-03-16 09:26:39
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Fee_Cfg.h"
/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/

/*******************************************************************************
**                      Version Information                                   **
*******************************************************************************/
#define FEE_CFG_C_AR_MAJOR_VERSION  4u
#define FEE_CFG_C_AR_MINOR_VERSION  5u
#define FEE_CFG_C_AR_PATCH_VERSION  0u
#define FEE_CFG_C_SW_MAJOR_VERSION  2u
#define FEE_CFG_C_SW_MINOR_VERSION  0u
#define FEE_CFG_C_SW_PATCH_VERSION  0u
/*******************************************************************************
**                      Version Check                                         **
*******************************************************************************/
#if (FEE_CFG_C_AR_MAJOR_VERSION != FEE_CFG_H_AR_MAJOR_VERSION)
    #error "Fee_Cfg.c:Mismatch in Specification Major Version"
#endif

#if (FEE_CFG_C_AR_MINOR_VERSION != FEE_CFG_H_AR_MINOR_VERSION)
    #error "Fee_Cfg.c:Mismatch in Specification Minor Version"
#endif

#if (FEE_CFG_C_AR_PATCH_VERSION != FEE_CFG_H_AR_PATCH_VERSION)
    #error "Fee_Cfg.c:Mismatch in Specification Patch Version"
#endif

#if (FEE_CFG_C_SW_MAJOR_VERSION != FEE_CFG_H_SW_MAJOR_VERSION)
    #error "Fee_Cfg.c:Mismatch in Specification Major Version"
#endif

#if (FEE_CFG_C_SW_MINOR_VERSION != FEE_CFG_H_SW_MINOR_VERSION)
    #error "Fee_Cfg.c:Mismatch in Specification Minor Version"
#endif
/*******************************************************************************
**                      Macros                                                **
*******************************************************************************/

/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define FEE_START_SEC_PCCONFIG_DATA_UNSPECIFIED
#include "Fee_MemMap.h"
/* PRQA S 3408,1531++ */ /* MISRA Rule 8.4,Rule 8.7 */
CONST(Fee_ClusterConfigType, FEE_CONST_PCCFG) Fee_ClusterConfig_FeeClusterGrp[CLUSTER_NUMBER_OF_FEECLUSTERGRP] =
/* PRQA S 3408,1531-- */ /* MISRA Rule 8.4,Rule 8.7 */
{
    {
        0x4000u,
        0x3000u,
    },
    {
        0x7000u,
        0x3000u,
    },
};

Fee_ClusterGroupType Fee_ClusterGroupConfig[FEE_CLUSTER_GROUP_NUM] =
{
    {
        &Fee_ClusterConfig_FeeClusterGrp[0],
        CLUSTER_NUMBER_OF_FEECLUSTERGRP,
    },
};
#define FEE_STOP_SEC_PCCONFIG_DATA_UNSPECIFIED
#include "Fee_MemMap.h"

#define FEE_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Fee_MemMap.h"
/* PRQA S 3408,1504++ */ /* MISRA Rule 8.4,Rule 8.7 */
CONST(Fee_BlockConfigType, FEE_CONST_PBCFG) Fee_BlockConfig[54] =
/* PRQA S 3408,1504++ */ /* MISRA Rule 8.4,Rule 8.7 */
{
    {
        0x100u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x101u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x200u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x300u,
        0xcd0u,
        FALSE,
        0u
    },
    {
        0x400u,
        0x100u,
        FALSE,
        0u
    },
    {
        0x500u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x600u,
        0x18u,
        FALSE,
        0u
    },
    {
        0x700u,
        0x18u,
        FALSE,
        0u
    },
    {
        0x800u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x900u,
        0x18u,
        FALSE,
        0u
    },
    {
        0xa00u,
        0x28u,
        FALSE,
        0u
    },
    {
        0xb00u,
        0x48u,
        FALSE,
        0u
    },
    {
        0xc00u,
        0x28u,
        FALSE,
        0u
    },
    {
        0xd00u,
        0x28u,
        FALSE,
        0u
    },
    {
        0xe00u,
        0x48u,
        FALSE,
        0u
    },
    {
        0xf00u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1000u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1100u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1200u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1300u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x1400u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1500u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x1600u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x1700u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x1800u,
        0x48u,
        FALSE,
        0u
    },
    {
        0x1900u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1a00u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1b00u,
        0x48u,
        FALSE,
        0u
    },
    {
        0x1c00u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1d00u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x1e00u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x1f00u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x2000u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x2100u,
        0x28u,
        FALSE,
        0u
    },
    {
        0x2200u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2300u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2400u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2500u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2600u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x2700u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x2800u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2900u,
        0x10u,
        FALSE,
        0u
    },
    {
        0x2a00u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2b00u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2c00u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2d00u,
        0x20u,
        FALSE,
        0u
    },
    {
        0x2e00u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x2f00u,
        0x100u,
        FALSE,
        0u
    },
    {
        0x3000u,
        0x100u,
        FALSE,
        0u
    },
    {
        0x3100u,
        0x100u,
        FALSE,
        0u
    },
    {
        0x3200u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x3300u,
        0x8u,
        FALSE,
        0u
    },
    {
        0x3400u,
        0x20u,
        FALSE,
        0u
    },
    {
        0x3500u,
        0x18u,
        FALSE,
        0u
    },
};
#define FEE_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Fee_MemMap.h"

#define FEE_START_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Fee_MemMap.h"
/* PRQA S 3408++ */ /* MISRA Rule 8.4 */
CONST(Fee_ConfigType, FEE_CONST_PBCFG) Fee_ConfigData =
/* PRQA S 3408++ */ /* MISRA Rule 8.4 */
{
    54u,
    &Fee_BlockConfig[0]
};
#define FEE_STOP_SEC_PBCONFIG_DATA_UNSPECIFIED
#include "Fee_MemMap.h"

