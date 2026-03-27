/*******************************************************************************
**                                                                            **
** Copyright (C) iSOFT   (2016)                                               **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to iSOFT.         **
** Passing on and copying of this document, and communication                 **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME    : Rte_Type.h                                                  **
**                                                                            **
**  Created on  :                                                             **
**  Author      :                                                     **
**  Vendor      :                                                             **
**  DESCRIPTION : RTE Type definitions                                        **
**                                                                            **
**  SPECIFICATION(S) :   AUTOSAR classic Platform 4.2.2                       **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*  <VERSION>    <DATE>    <AUTHOR>    <REVISION LOG>                         */


#ifndef RTE_NVM_H
#define RTE_NVM_H
/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Rte.h"
/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                      Private Function Definitions                         **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/

uint8 NvMBlock_DIDF1A9_RomAddress[4]={0};
uint8 NvMBlock_DIDF18B_RomAddress[3]={0};
uint8 NvMBlock_DIDF18C_RomAddress[16]={0};
uint8 NvMBlock_DIDF190_RomAddress[17]={0};
uint8 NvMBlock_DIDF198_RomAddress[11]={0};
uint8 NvMBlock_DIDF1A8_RomAddress[20]={0};
uint8 NvMBlock_DIDF130_RomAddress[32]={0};
uint8 NvMBlock_DIDC001_RomAddress[64]={0};
uint8 NvMBlock_DIDC002_RomAddress[32]={0};
uint8 NvMBlock_DIDC003_RomAddress[32]={0};
uint8 NvMBlock_DIDC004_RomAddress[64]={0};
uint8 NvMBlock_DIDC005_RomAddress[32]={0};
uint8 NvMBlock_DIDC006_RomAddress[32]={0};
uint8 NvMBlock_DIDC007_RomAddress[32]={0};
uint8 NvMBlock_DIDC008_RomAddress[32]={0};
uint8 NvMBlock_DIDC009_RomAddress[6]={0};
uint8 NvMBlock_DIDC00A_RomAddress[32]={0};
uint8 NvMBlock_DIDC00B_RomAddress[6]={0};
uint8 NvMBlock_DIDC00C_RomAddress[4]={0};
uint8 NvMBlock_DIDC00D_RomAddress[2]={0};
uint8 NvMBlock_DIDC011_RomAddress[64]={0};
uint8 NvMBlock_DIDC012_RomAddress[32]={0};
uint8 NvMBlock_DIDC013_RomAddress[32]={0};
uint8 NvMBlock_DIDC014_RomAddress[64]={0};
uint8 NvMBlock_DIDC015_RomAddress[32]={0};
uint8 NvMBlock_DIDC016_RomAddress[32]={0};
uint8 NvMBlock_DIDC102_RomAddress[2]={0};
uint8 NvMBlock_DIDC106_RomAddress[8]={0};
uint8 NvMBlock_DIDC109_RomAddress[14]={0};
uint8 NvMBlock_DIDCA02_RomAddress[37]={0};
uint8 NvMBlock_DIDCA21_RomAddress[1]={0};
uint8 NvMBlock_DIDC305_RomAddress[2]={0};
uint8 NvMBlock_DIDC306_RomAddress[1]={0};
uint8 NvMBlock_DIDC307_RomAddress[2]={0};
uint8 NvMBlock_DIDC308_RomAddress[8]={0};
uint8 NvMBlock_DIDC309_RomAddress[8]={0};
uint8 NvMBlock_DIDC30A_RomAddress[2]={0};
uint8 NvMBlock_DIDC30C_RomAddress[8]={0};
uint8 NvMBlock_DIDCE01_RomAddress[2]={0};
uint8 NvMBlock_DIDCE05_RomAddress[1]={0};
uint8 NvMBlock_DIDCE06_RomAddress[1]={0};
uint8 NvMBlock_DIDCF00_RomAddress[24]={0};
uint8 NvMBlock_DIDC30D_RomAddress[2]={0};
uint8 NvMBlock_Reserved_block0_RomAddress[254]={0};
uint8 NvMBlock_Reserved_block1_RomAddress[254]={0};
uint8 NvMBlock_Reserved_block2_RomAddress[254]={0};
uint8 NvMBlock_27Key_error_count_RomAddress[1]={0};
uint8 NvMBlock_SecOc_count_RomAddress[4]={0};
uint8 NvMBlock_SecOc_Key_RomAddress[16]={0};
uint8 NvMBlock_DID0100_RomAddress[16]={0};
#include "Dem_Types.h"  // 包含Dem类型定义
//VAR(Dem_EventIdType, AUTOMATIC) DemPermanentMemory[1];
#endif /* RTE_NVM_H */
