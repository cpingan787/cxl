 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       @: FlsIf.h
************************************************************************************************
*   Project/Product @:
*   Title           @:
*   Author          @: zhongliang.Yang
************************************************************************************************
*   Description     @:
*
************************************************************************************************
*   Limitations     @: None
*
************************************************************************************************
*
************************************************************************************************
*   Revision History:
* 
*   Version     Date          Initials           CR#         Descriptions
*   --------    -----------   ----------------   --------    -----------------------
*   1.0         2018/05/29    zhongliang.yang    N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/

#ifndef EEIF_H_
#define EEIF_H_
#include "Common.h"
#include "MemM.h"

/*********************************************************************************************************************/
/* function Import                                                                                                 */
/*********************************************************************************************************************/

#define  DATALEN                           (2048u)
#define  BLOCKSIZE                         (64u)
#define  SECTORLEN                         (0x2000u)
#define  CHECKSUM_SIZE                     (2u)      // 每个block的校验位大小
#define  USER_DATA_START                   (CHECKSUM_SIZE)  // 用户数据在block中的起始位置
#define  BLOCK_DATA_SIZE                   (BLOCKSIZE - CHECKSUM_SIZE)  // 每个block可用于存储用户数据的大小
#define  ACTUAL_DATALEN_SIZE               ((DATALEN % BLOCK_DATA_SIZE == 0) ? ((DATALEN / BLOCK_DATA_SIZE) * BLOCKSIZE) : ((DATALEN / BLOCK_DATA_SIZE + 1) * BLOCKSIZE))
#define  NEW_STORAGE_OFFSET                (SECTORLEN * 2)  // 新存储区域相对于原存储区域的偏移
#define  FIND_LATEST_READ_ADDRESS         (0u) // 查找最新可读取地址
#define  FIND_LATEST_WRITE_ADDRESS        (1u) // 查找最新可写入地址

#define  FEE_SECTOR0_STARTADDRESS          (0xFF200000UL)
#define  FEE_NEW_SECTOR0_STARTADDRESS      (FEE_SECTOR0_STARTADDRESS + NEW_STORAGE_OFFSET)  // 新存储区域起始地址
//#define  FEE_SECTOR0_FINAL_BANK_STARTADD   (FEE_SECTOR0_STARTADDRESS + SECTORLEN - DATALEN)

#define  FEE_SECTOR1_STARTADDRESS          (0xFF202000UL)
//#define  FEE_SECTOR1_FINAL_BANK_STARTADD   (FEE_SECTOR1_STARTADDRESS + SECTORLEN - DATALEN)

#define  INVALIDSECTOR                     (0xFFFFFFFFu)




#define  VALIDBLOCK_FLAG                   (0xA532u)

#define  FEEBLOCK_USERDATA_STORE0          (0x01u)
#define  FEEBLOCK_USERDATA_STORE1          (0x02u)

/*********************************************************************************************************************/
/* function Export                                                                                                 */
/*********************************************************************************************************************/
extern uint8  EEIf_Read(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_Write(uint32 sAddr, uint32 size, uint8* buf);
extern uint8  EEIf_DeInit(void);
extern void   EEIf_Init(void);
#endif
