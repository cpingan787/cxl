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
 *  @file               : NvM_Cfg.c
 *  @author             : iSoft
 *  @date               : 2026-07-09 16:48:13
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "NvM_Types.h"
#include "Rte_NVM.h"
#include "Dem_Internal.h"

/* PRQA S 1504, 0306, 6610, 1502 EOF */ /* VL_NvM_1504, VL_NvM_0306, VL_MTR_NvM_STCDN, VL_NvM_1502 */
/********************************************************
 ****Container for NvmMultiBlockCallback
 ********************************************************/
#define NVM_START_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h"
CONST(NvM_MultiBlockCallbackType, NVM_CONST) NvmMultiBlockCallback = NULL_PTR;
#define NVM_STOP_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h"

VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer1[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer2[5];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer5[3];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer6[16];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer7[17];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer8[11];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer9[20];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer10[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer11[64];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer12[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer13[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer14[64];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer15[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer16[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer17[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer18[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer19[6];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer20[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer21[6];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer22[4];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer23[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer24[64];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer25[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer26[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer27[64];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer28[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer29[32];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer30[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer31[8];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer32[14];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer33[37];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer34[1];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer35[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer36[1];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer37[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer38[8];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer39[8];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer40[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer41[8];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer42[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer43[1];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer44[1];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer45[24];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer46[2];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer47[254];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer48[254];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer49[254];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer50[1];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer51[4];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer52[16];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer53[16];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer54[20];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer55[24];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer56[8];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer57[8];
VAR(uint8, NVM_VAR_NOINIT) NvMBlockRamBuffer58[8];

#define NVM_START_SEC_VAR_CLEARED_32
#include "NvM_MemMap.h"
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_ConfigID[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF1A9[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_All_EventEntry[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_UDS_InternalData[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF18B[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF18C[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF190[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF198[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF1A8[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDF130[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC001[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC002[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC003[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC004[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC005[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC006[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC007[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC008[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC009[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00A[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00B[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00C[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC00D[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC011[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC012[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC013[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC014[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC015[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC016[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC102[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC106[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC109[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCA02[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCA21[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC305[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC306[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC307[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC308[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC309[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC30A[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC30C[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCE01[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCE05[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCE06[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDCF00[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDC30D[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_Reserved_block0[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_Reserved_block1[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_Reserved_block2[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_27Key_error_count[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_SecOc_count[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_SecOc_Key[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DID0100[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDB001[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_DIDB004[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_listentiming[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_canUserMode[1];
        VAR(uint32, NVM_VAR_NOINIT) NvMCrcBuf_NvMBlock_dtcEepromCheck[1];
#define NVM_STOP_SEC_VAR_CLEARED_32
#include "NvM_MemMap.h"

/********************************************************
 ****Container for a management structure to configure the
composition of a given NVRAM Block Management Type.
 ********************************************************/
#define NVM_START_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h"
CONST(NvM_BlockDescriptorType, NVM_CONST) NvM_BlockDescriptor[NVM_BLOCK_NUM_ALL] =
{
    /*NvMBlock_ConfigID*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_REDUNDANT,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x3c,
       /*
        * Bit 0:NvmWriteBlockOnce
        * Bit 1:NvmBlockWriteProt
        * Bit 2:NvmCalcRamBlockCrc
        * Bit 3:NvmResistantToChangedSw
        * Bit 4:NvmSelectBlockForReadall
        * Bit 5:NvmSelectBlockForWriteall
        * Bit 6:NvMStaticBlockIDCheck
        * Bit 7:NvMWriteVerification
        * Bit 8:NvMBlockUseAutoValidation
        * Bit 9:NvMBlockUseCRCCompMechanism
        * Bit 10:NvMBlockUseSetRamBlockStatus
        * Bit 11:NvMBlockUseSyncMechanism
        * Bit 12:NvMBswMBlockStatusInformation
        */
        NVM_CRC16,    /*NvmBlockCRCType*/
        1,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        2,    /*NvmNvBlockNum*/
        0,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_ConfigID,    /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer1),    /*NvmRamBlockDataAddress*/
        NULL_PTR,   /*NvmRomBlockDataAddress*/
        NULL_PTR,   /*NvmInitBlockCallback*/
        NULL_PTR,   /*NvmSingleBlockCallback*/
        NULL_PTR,   /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,   /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDF1A9*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        2,    /*NvmNvBlockBaseNumber*/
        5,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDF1A9,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer2),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDF1A9_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_All_EventEntry*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x38,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        3,    /*NvmNvBlockBaseNumber*/
        2478,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        0,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_All_EventEntry,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(DemEventMemoryEntryStorage),    /*NvMRamBlockDataAddress*/
        NULL_PTR,   /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_UDS_InternalData*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x38,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        4,    /*NvmNvBlockBaseNumber*/
        260,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        0,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_UDS_InternalData,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(&DemEventRelateInformationStorage),    /*NvMRamBlockDataAddress*/
        NULL_PTR,   /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDF18B*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        5,    /*NvmNvBlockBaseNumber*/
        3,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDF18B,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer5),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDF18B_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDF18C*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        6,    /*NvmNvBlockBaseNumber*/
        16,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDF18C,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer6),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDF18C_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDF190*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        7,    /*NvmNvBlockBaseNumber*/
        17,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDF190,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer7),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDF190_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDF198*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        8,    /*NvmNvBlockBaseNumber*/
        11,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDF198,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer8),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDF198_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDF1A8*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        9,    /*NvmNvBlockBaseNumber*/
        20,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDF1A8,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer9),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDF1A8_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDF130*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        10,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDF130,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer10),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDF130_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC001*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        11,    /*NvmNvBlockBaseNumber*/
        64,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC001,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer11),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC001_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC002*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        12,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC002,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer12),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC002_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC003*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        13,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC003,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer13),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC003_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC004*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        14,    /*NvmNvBlockBaseNumber*/
        64,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC004,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer14),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC004_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC005*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        15,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC005,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer15),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC005_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC006*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        16,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC006,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer16),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC006_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC007*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        17,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC007,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer17),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC007_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC008*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        18,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC008,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer18),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC008_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC009*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        19,    /*NvmNvBlockBaseNumber*/
        6,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC009,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer19),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC009_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC00A*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        20,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC00A,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer20),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC00A_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC00B*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        21,    /*NvmNvBlockBaseNumber*/
        6,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC00B,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer21),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC00B_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC00C*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        22,    /*NvmNvBlockBaseNumber*/
        4,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC00C,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer22),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC00C_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC00D*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        23,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC00D,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer23),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC00D_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC011*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        24,    /*NvmNvBlockBaseNumber*/
        64,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC011,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer24),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC011_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC012*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        25,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC012,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer25),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC012_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC013*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        26,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC013,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer26),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC013_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC014*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        27,    /*NvmNvBlockBaseNumber*/
        64,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC014,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer27),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC014_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC015*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        28,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC015,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer28),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC015_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC016*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        29,    /*NvmNvBlockBaseNumber*/
        32,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC016,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer29),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC016_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC102*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        30,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC102,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer30),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC102_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC106*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        31,    /*NvmNvBlockBaseNumber*/
        8,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC106,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer31),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC106_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC109*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        32,    /*NvmNvBlockBaseNumber*/
        14,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC109,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer32),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC109_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDCA02*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        33,    /*NvmNvBlockBaseNumber*/
        37,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDCA02,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer33),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDCA02_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDCA21*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        34,    /*NvmNvBlockBaseNumber*/
        1,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDCA21,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer34),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDCA21_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC305*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        35,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC305,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer35),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC305_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC306*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        36,    /*NvmNvBlockBaseNumber*/
        1,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC306,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer36),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC306_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC307*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        37,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC307,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer37),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC307_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC308*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        38,    /*NvmNvBlockBaseNumber*/
        8,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC308,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer38),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC308_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC309*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        39,    /*NvmNvBlockBaseNumber*/
        8,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC309,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer39),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC309_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC30A*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        40,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC30A,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer40),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC30A_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC30C*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        41,    /*NvmNvBlockBaseNumber*/
        8,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC30C,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer41),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC30C_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDCE01*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        42,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDCE01,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer42),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDCE01_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDCE05*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        43,    /*NvmNvBlockBaseNumber*/
        1,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDCE05,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer43),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDCE05_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDCE06*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        44,    /*NvmNvBlockBaseNumber*/
        1,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDCE06,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer44),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDCE06_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDCF00*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        45,    /*NvmNvBlockBaseNumber*/
        24,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDCF00,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer45),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDCF00_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDC30D*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        46,    /*NvmNvBlockBaseNumber*/
        2,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDC30D,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer46),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDC30D_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_Reserved_block0*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        47,    /*NvmNvBlockBaseNumber*/
        254,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_Reserved_block0,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer47),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_Reserved_block0_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_Reserved_block1*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        48,    /*NvmNvBlockBaseNumber*/
        254,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_Reserved_block1,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer48),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_Reserved_block1_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_Reserved_block2*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        49,    /*NvmNvBlockBaseNumber*/
        254,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_Reserved_block2,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer49),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_Reserved_block2_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_27Key_error_count*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        50,    /*NvmNvBlockBaseNumber*/
        1,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_27Key_error_count,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer50),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_27Key_error_count_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_SecOc_count*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        51,    /*NvmNvBlockBaseNumber*/
        4,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_SecOc_count,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer51),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_SecOc_count_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_SecOc_Key*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        52,    /*NvmNvBlockBaseNumber*/
        16,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_SecOc_Key,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer52),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_SecOc_Key_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DID0100*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        53,    /*NvmNvBlockBaseNumber*/
        16,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DID0100,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer53),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DID0100_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDB001*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        54,    /*NvmNvBlockBaseNumber*/
        20,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDB001,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer54),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDB001_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_DIDB004*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        55,    /*NvmNvBlockBaseNumber*/
        24,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_DIDB004,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer55),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_DIDB004_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_listentiming*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        56,    /*NvmNvBlockBaseNumber*/
        8,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_listentiming,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer56),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_listentiming_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_canUserMode*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        57,    /*NvmNvBlockBaseNumber*/
        8,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_canUserMode,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer57),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_canUserMode_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
    /*NvMBlock_dtcEepromCheck*/
    {
        0,    /*NvMNvramDeviceId*/
        NVM_BLOCK_NATIVE,    /*NvmBlockManagementType*/
        0u, /*RepaireIndex*/
        #if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
        1,      /*NvmBlockJobPriority*/
        #endif
        0x23c,
        /*
         * Bit 0:NvmWriteBlockOnce
         * Bit 1:NvmBlockWriteProt 
         * Bit 2:NvmCalcRamBlockCrc
         * Bit 3:NvmResistantToChangedSw 
         * Bit 4:NvmSelectBlockForReadall 
         * Bit 5:NvmSelectBlockForWriteall 
         * Bit 6:NvMStaticBlockIDCheck
         * Bit 7:NvMWriteVerification
         * Bit 8:NvMBlockUseAutoValidation
         * Bit 9:NvMBlockUseCRCCompMechanism
         * Bit 10:NvMBlockUseSetRamBlockStatus
         * Bit 11:NvMBlockUseSyncMechanism
         * Bit 12:NvMBswMBlockStatusInformation
         */    
        NVM_CRC16,    /*NvmBlockCRCType*/
        58,    /*NvmNvBlockBaseNumber*/
        8,    /*NvmNvBlockLength*/
        1,    /*NvmNvBlockNum*/
        1,    /*NvmRomBlockNum*/
        3,    /*NvMMaxNumOfReadRetries*/
        3,    /*NvMMaxNumOfWriteRetries*/
        0,    /*NvMWriteVerificationDataSize*/
        NvMCrcBuf_NvMBlock_dtcEepromCheck,   /*NvmBlockCrcBuffAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlockRamBuffer58),    /*NvMRamBlockDataAddress*/
        (P2VAR(uint8, AUTOMATIC, NVM_APPL_CODE))(NvMBlock_dtcEepromCheck_RomAddress),    /*NvMRomBlockDataAddress*/
        NULL_PTR,   /*NvMInitBlockCallback*/
        NULL_PTR,    /*NvmSingleBlockCallback*/
        NULL_PTR,    /*NvM_ReadRamBlockFromNvmCallbackType*/
        NULL_PTR,       /*NvM_WriteRamBlockToNvmCallbackType*/
    },
};
#define NVM_STOP_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h"

#if ((NVM_API_CONFIG_CLASS_1!=NVM_API_CONFIG_CLASS)&&(STD_ON==NVM_JOB_PRIORITIZATION))
#define NVM_START_SEC_VAR_POWER_ON_INIT_16
#include "NvM_MemMap.h"
/* PRQA S 3408++ */ /* VL_NvM_3408 */
VAR(uint16, NVM_VAR_POWER_ON_INIT) NvM_PriorityTable[2][NVM_TABLE_SIZE_PRIORITY] =
/* PRQA S 3408-- */
{

    {
        0x0000U,0x0000U
    },
    {
        0x0000U,0x0000U
    }
};
#define NVM_STOP_SEC_VAR_POWER_ON_INIT_16
#include "NvM_MemMap.h"
#endif
/*******************************************************************************
**                           End Of File                                      **
*******************************************************************************/

