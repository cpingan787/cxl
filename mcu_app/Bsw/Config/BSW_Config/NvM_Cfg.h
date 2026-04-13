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
 *  @file               : NvM_Cfg.h
 *  @author             : iSoft
 *  @date               : 2026-01-29 15:22:22
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#ifndef NVM_CFG_H
#define NVM_CFG_H
/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/

#define NVM_CFG_SW_MAJOR_VERSION 2U
#define NVM_CFG_SW_MINOR_VERSION 0U
#define NVM_CFG_SW_PATCH_VERSION 0U

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"
/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/
#define NVM_API_CONFIG_CLASS                            NVM_API_CONFIG_CLASS_3
#define NVM_BSWM_MULTIBLOCK_JOBSTATUS_INFORMATION        STD_OFF
#define NVM_BSWM_SINGLEBLOCK_JOBSTATUS_INFORMATION      STD_OFF
#define NVM_COMPILED_CONFIG_ID                          (0xaabbu)
#define NVM_CRC_NUM_OF_BYTES                              (0x80u)
#define NVM_DATASET_SELECTION_BITS                      (0x8u)
#define NVM_DEV_ERROR_DETECT                            STD_OFF
#define NVM_DRV_MODE_SWITCH                                 STD_OFF
#define NVM_DYNAMIC_CONFIGURATION                         STD_OFF
#define NVM_JOB_PRIORITIZATION                            STD_OFF
#define NVM_POLLING_MODE                                STD_ON
#define NVM_REPEAT_MIRROR_OPERATIONS                      (0x5u)
#define NVM_SET_RAM_BLOCK_STATUS_API                    STD_OFF
#define NVM_SIZE_IMMEDIATE_JOB_QUEUE                    (0x0u)
#define NVM_SIZE_STANDARD_JOB_QUEUE                        (0xau)
#define NVM_VERSION_INFO_API                            STD_OFF
#define NVM_INCLUDE_CRC                                 STD_ON
#define NVM_CRC_TYPE_8                                  STD_OFF
#define NVM_CRC_TYPE_16                                 STD_ON
#define NVM_CRC_TYPE_32                                 STD_OFF
#define NVM_DEM_PRODUCTION_ERROR_DETECT                 STD_OFF

#define NVM_DEM_E_HARDWARE                                STD_OFF
#define NVM_DEM_E_INTEGRITY_FAILED                        STD_OFF
#define NVM_DEM_E_LOSS_OF_REDUNDANCY                      STD_OFF
#define NVM_DEM_E_REQ_FAILED                              STD_OFF
#define NVM_DEM_E_VERIFY_FAILED                           STD_OFF
#define NVM_DEM_E_WRITE_PROTECTED                         STD_OFF
#define NVM_DEM_E_WRONG_BLOCK_ID                          STD_OFF

/*The following definitions used to index NVM block for SW */
#define NvMBlock_DIDF1A9               2U
#define NvMBlock_All_EventEntry               3U
#define NvMBlock_UDS_InternalData               4U
#define NvMBlock_DIDF18B               5U
#define NvMBlock_DIDF18C               6U
#define NvMBlock_DIDF190               7U
#define NvMBlock_DIDF198               8U
#define NvMBlock_DIDF1A8               9U
#define NvMBlock_DIDF130               10U
#define NvMBlock_DIDC001               11U
#define NvMBlock_DIDC002               12U
#define NvMBlock_DIDC003               13U
#define NvMBlock_DIDC004               14U
#define NvMBlock_DIDC005               15U
#define NvMBlock_DIDC006               16U
#define NvMBlock_DIDC007               17U
#define NvMBlock_DIDC008               18U
#define NvMBlock_DIDC009               19U
#define NvMBlock_DIDC00A               20U
#define NvMBlock_DIDC00B               21U
#define NvMBlock_DIDC00C               22U
#define NvMBlock_DIDC00D               23U
#define NvMBlock_DIDC011               24U
#define NvMBlock_DIDC012               25U
#define NvMBlock_DIDC013               26U
#define NvMBlock_DIDC014               27U
#define NvMBlock_DIDC015               28U
#define NvMBlock_DIDC016               29U
#define NvMBlock_DIDC102               30U
#define NvMBlock_DIDC106               31U
#define NvMBlock_DIDC109               32U
#define NvMBlock_DIDCA02               33U
#define NvMBlock_DIDCA21               34U
#define NvMBlock_DIDC305               35U
#define NvMBlock_DIDC306               36U
#define NvMBlock_DIDC307               37U
#define NvMBlock_DIDC308               38U
#define NvMBlock_DIDC309               39U
#define NvMBlock_DIDC30A               40U
#define NvMBlock_DIDC30C               41U
#define NvMBlock_DIDCE01               42U
#define NvMBlock_DIDCE05               43U
#define NvMBlock_DIDCE06               44U
#define NvMBlock_DIDCF00               45U
#define NvMBlock_DIDC30D               46U
#define NvMBlock_Reserved_block0               47U
#define NvMBlock_Reserved_block1               48U  // 用做密钥管理区, 占用254字节
#define NvMBlock_Reserved_block2               49U
#define NvMBlock_27Key_error_count               50U
#define NvMBlock_SecOc_count               51U
#define NvMBlock_SecOc_Key               52U
#define NvMBlock_DID0100               53U

/*The total number of user configured*/
#define NVM_BLOCK_NUM_ALL                                 53U
#define NVM_REDUNDANT_ALL                                  1U

#define NVM_MAX_LENGTH_CONFIGED_RAM_MIRROR                0U

#define NVM_MAX_LENGTH_NV_BLOCK                            2478U
#define NVM_MAX_LENGTH_REDUNDANT_BLOCK                    2U

#if (STD_ON==NVM_JOB_PRIORITIZATION)
/* The priority table size*/
#define NVM_TABLE_SIZE_PRIORITY                          2U
/*The total number of different priority*/
#define NVM_TOTAL_NUM_DIFF_PRI                             NVM_TABLE_SIZE_PRIORITY
#endif

extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer1[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer2[5];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer5[3];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer6[16];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer7[17];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer8[11];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer9[20];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer10[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer11[64];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer12[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer13[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer14[64];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer15[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer16[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer17[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer18[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer19[6];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer20[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer21[6];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer22[4];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer23[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer24[64];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer25[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer26[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer27[64];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer28[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer29[32];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer30[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer31[8];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer32[14];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer33[37];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer34[1];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer35[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer36[1];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer37[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer38[8];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer39[8];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer40[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer41[8];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer42[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer43[1];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer44[1];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer45[24];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer46[2];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer47[254];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer48[254];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer49[254];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer50[1];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer51[4];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer52[16];
extern VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer53[16];

extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_ConfigID[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF1A9[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_All_EventEntry[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_UDS_InternalData[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF18B[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF18C[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF190[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF198[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF1A8[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF130[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC001[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC002[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC003[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC004[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC005[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC006[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC007[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC008[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC009[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00A[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00B[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00C[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00D[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC011[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC012[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC013[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC014[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC015[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC016[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC102[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC106[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC109[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCA02[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCA21[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC305[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC306[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC307[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC308[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC309[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC30A[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC30C[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCE01[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCE05[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCE06[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCF00[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC30D[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_Reserved_block0[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_Reserved_block1[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_Reserved_block2[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_27Key_error_count[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_SecOc_count[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_SecOc_Key[1];
extern VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DID0100[1];

#endif /* End of NVM_CFG_H*/
/*******************************************************************************
**                           End Of File                                      **
*******************************************************************************/

