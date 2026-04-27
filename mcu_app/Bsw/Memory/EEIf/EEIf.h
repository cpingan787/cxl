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

#include "Std_Types.h"
#define DID_F100_LEN                            ((uint32)0x10U)
#define DID_F110_LEN                            ((uint32)0x10U)
#define DID_F111_LEN                            ((uint32)0x10U)
#define DID_F112_LEN                            ((uint32)0x10U)
#define DID_F113_LEN                            ((uint32)0x10U)
#define DID_F114_LEN                            ((uint32)0x10U)
#define DID_F115_LEN                            ((uint32)0x10U)
#define DID_F116_LEN                            ((uint32)0x10U)
#define DID_F117_LEN                            ((uint32)0x10U)
#define DID_F118_LEN                            ((uint32)0x10U)
#define DID_F119_LEN                            ((uint32)0x10U)
#define DID_F11A_LEN                            ((uint32)0x10U)
#define DID_F11B_LEN                            ((uint32)0x10U)
#define DID_F11C_LEN                            ((uint32)0x10U)
#define DID_F11D_LEN                            ((uint32)0x10U)
#define DID_F11E_LEN                            ((uint32)0x10U)
#define DID_F11F_LEN                            ((uint32)0x10U)
#define DID_F120_LEN                            ((uint32)0x10U)
#define DID_F121_LEN                            ((uint32)0x10U)
#define DID_F183_LEN                            ((uint32)0x0AU)
#define DID_F187_LEN                            ((uint32)0x05U)
#define DID_F18A_LEN                            ((uint32)0x05U)
#define DID_F18B_LEN                            ((uint32)0x03U)
#define DID_F18C_LEN                            ((uint32)0x10U)
#define DID_F190_LEN                            ((uint32)0x11U)
#define DID_F191_LEN                            ((uint32)0x05U)
#define DID_F192_LEN                            ((uint32)0x0AU)
#define DID_F194_LEN                            ((uint32)0x0AU)
#define DID_F198_LEN                            ((uint32)0x0BU)
#define DID_F1A0_LEN                            ((uint32)0x05U)
#define DID_F1A1_LEN                            ((uint32)0x05U)
#define DID_F1A2_LEN                            ((uint32)0x08U)
#define DID_F1A5_LEN                            ((uint32)0x03U)
#define DID_F1A8_LEN                            ((uint32)0x14U)
#define DID_F1A9_LEN                            ((uint32)0x05U)
#define DID_F1AA_LEN                            ((uint32)0x05U)
#define DID_F130_LEN                            ((uint32)0x20U)
#define DID_F1B5_LEN                            ((uint32)0x05U)
#define DID_F1B6_LEN                            ((uint32)0x05U)
#define DID_AFF1_LEN                            ((uint32)0x1CAU)
#define DID_AFF2_LEN                            ((uint32)0x01U)
#define DID_AFF5_LEN                            ((uint32)0x01U)
#define DID_AFFC_LEN                            ((uint32)0x02U)
#define DID_AFFD_LEN                            ((uint32)0x01U)
#define DID_AFFE_LEN                            ((uint32)0x01U)
#define DID_AFFF_LEN                            ((uint32)0x01U)

enum USERDATA_BLOCK0
{
    BLOCK_ID_IDX = 0,
    REPROGRAM_ADDR_IDX = BLOCK_ID_IDX + 2,
    RESET_ADDR_IDX = REPROGRAM_ADDR_IDX + 4,
    SECURITY_ADDR_IDX = RESET_ADDR_IDX + 4,
    NEGATIVERES_ADDR_IDX = SECURITY_ADDR_IDX + 4,
    DID_F100_ADDR_IDX = NEGATIVERES_ADDR_IDX + 4,
    DID_F110_ADDR_IDX = DID_F100_ADDR_IDX + DID_F100_LEN,
    DID_F111_ADDR_IDX = DID_F110_ADDR_IDX + DID_F110_LEN,
    DID_F112_ADDR_IDX = DID_F111_ADDR_IDX + DID_F111_LEN,
    DID_F113_ADDR_IDX = DID_F112_ADDR_IDX + DID_F112_LEN,
    DID_F114_ADDR_IDX = DID_F113_ADDR_IDX + DID_F113_LEN,   
    DID_F115_ADDR_IDX = DID_F114_ADDR_IDX + DID_F114_LEN,
    DID_F116_ADDR_IDX = DID_F115_ADDR_IDX + DID_F115_LEN,
    DID_F117_ADDR_IDX = DID_F116_ADDR_IDX + DID_F116_LEN,
    DID_F118_ADDR_IDX = DID_F117_ADDR_IDX + DID_F117_LEN,
    DID_F119_ADDR_IDX = DID_F118_ADDR_IDX + DID_F118_LEN,
    DID_F11A_ADDR_IDX = DID_F119_ADDR_IDX + DID_F119_LEN,
    DID_F11B_ADDR_IDX = DID_F11A_ADDR_IDX + DID_F11A_LEN,
    DID_F11C_ADDR_IDX = DID_F11B_ADDR_IDX + DID_F11B_LEN,
    DID_F11D_ADDR_IDX = DID_F11C_ADDR_IDX + DID_F11C_LEN,
    DID_F11E_ADDR_IDX = DID_F11D_ADDR_IDX + DID_F11D_LEN, 
    DID_F11F_ADDR_IDX = DID_F11E_ADDR_IDX + DID_F11E_LEN,
    DID_F120_ADDR_IDX = DID_F11F_ADDR_IDX + DID_F11F_LEN,
    DID_F121_ADDR_IDX = DID_F120_ADDR_IDX + DID_F120_LEN,
    DID_F183_ADDR_IDX = DID_F121_ADDR_IDX + DID_F121_LEN,
    DID_F187_ADDR_IDX = DID_F183_ADDR_IDX + DID_F183_LEN,
    DID_F18A_ADDR_IDX = DID_F187_ADDR_IDX + DID_F187_LEN,
    DID_F18B_ADDR_IDX = DID_F18A_ADDR_IDX + DID_F18A_LEN,
    DID_F18C_ADDR_IDX = DID_F18B_ADDR_IDX + DID_F18B_LEN,
    DID_F190_ADDR_IDX = DID_F18C_ADDR_IDX + DID_F18C_LEN,
    DID_F191_ADDR_IDX = DID_F190_ADDR_IDX + DID_F190_LEN,
    DID_F192_ADDR_IDX = DID_F191_ADDR_IDX + DID_F191_LEN,
    DID_F194_ADDR_IDX = DID_F192_ADDR_IDX + DID_F192_LEN,
    DID_F198_ADDR_IDX = DID_F194_ADDR_IDX + DID_F194_LEN,
    DID_F1A0_ADDR_IDX = DID_F198_ADDR_IDX + DID_F198_LEN,
    DID_F1A1_ADDR_IDX = DID_F1A0_ADDR_IDX + DID_F1A0_LEN,
    DID_F1A2_ADDR_IDX = DID_F1A1_ADDR_IDX + DID_F1A1_LEN,
    DID_F1A5_ADDR_IDX = DID_F1A2_ADDR_IDX + DID_F1A2_LEN,
    DID_F1A8_ADDR_IDX = DID_F1A5_ADDR_IDX + DID_F1A5_LEN,
    DID_F1A9_ADDR_IDX = DID_F1A8_ADDR_IDX + DID_F1A8_LEN,
    DID_F1AA_ADDR_IDX = DID_F1A9_ADDR_IDX + DID_F1A9_LEN,
    DID_F130_ADDR_IDX = DID_F1AA_ADDR_IDX + DID_F1AA_LEN,
    DID_F1B5_ADDR_IDX = DID_F130_ADDR_IDX + DID_F130_LEN,
    DID_F1B6_ADDR_IDX = DID_F1B5_ADDR_IDX + DID_F1B5_LEN,
    DID_AFF1_ADDR_IDX = DID_F1B6_ADDR_IDX + DID_F1B6_LEN,
    DID_AFF2_ADDR_IDX = DID_AFF1_ADDR_IDX + DID_AFF1_LEN,
    DID_AFF5_ADDR_IDX = DID_AFF2_ADDR_IDX + DID_AFF2_LEN,
    DID_AFFC_ADDR_IDX = DID_AFF5_ADDR_IDX + DID_AFF5_LEN,
    DID_AFFD_ADDR_IDX = DID_AFFC_ADDR_IDX + DID_AFFC_LEN,
    DID_AFFE_ADDR_IDX = DID_AFFD_ADDR_IDX + DID_AFFD_LEN,
    DID_AFFF_ADDR_IDX = DID_AFFE_ADDR_IDX + DID_AFFE_LEN,
    VSN_ADDR_IDX = DID_AFFF_ADDR_IDX + DID_AFFF_LEN,
    VSN_ACTIVE_FLAG_IDX = VSN_ADDR_IDX + 32U,
    ALG_FLAG_IDX = VSN_ACTIVE_FLAG_IDX + 1U,
    SM4_KEY_IDX = ALG_FLAG_IDX + 1U,
    SM4_KEY_ACTIVE_FLAG_IDX = SM4_KEY_IDX + 32U,
    SM2_KEY_IDX = SM4_KEY_ACTIVE_FLAG_IDX + 1U,
    ECC256_KEY_IDX = SM2_KEY_IDX + 65U
};


/*********************************************************************************************************************/
/* function Import                                                                                                 */
/*********************************************************************************************************************/

#define  DATALEN                           (2048u)
#define  BLOCKSIZE                         (64u)
#define  SECTORLEN                         (0x2000u)
#define  CHECKSUM_SIZE                     (2u)      // 每个block的校验位大小
#define  USER_DATA_START                   (CHECKSUM_SIZE)  // 用户数据在block中的起始位置
#define  BLOCK_DATA_SIZE                   (BLOCKSIZE - CHECKSUM_SIZE)  // 每个block可用于存储用户数据的大小
#define  NEW_STORAGE_OFFSET                (SECTORLEN * 2)  // 新存储区域相对于原存储区域的偏移
#define  FIND_LATEST_READ_ADDRESS         (0u) // 查找最新可读取地址
#define  FIND_LATEST_WRITE_ADDRESS        (1u) // 查找最新可写入地址

#define  FEE_SECTOR0_STARTADDRESS          (0xFF200000UL)
#define  FEE_NEW_SECTOR0_STARTADDRESS      (FEE_SECTOR0_STARTADDRESS + NEW_STORAGE_OFFSET)  // 新存储区域起始地址
#define  FEE_SECTOR0_FINAL_BANK_STARTADD   (FEE_SECTOR0_STARTADDRESS + SECTORLEN - DATALEN)

#define  FEE_SECTOR1_STARTADDRESS          (0xFF202000UL)
#define  FEE_SECTOR1_FINAL_BANK_STARTADD   (FEE_SECTOR1_STARTADDRESS + SECTORLEN - DATALEN)

#define  ACTUAL_DATALEN_SIZE               ((DATALEN % BLOCK_DATA_SIZE == 0) ? ((DATALEN / BLOCK_DATA_SIZE) * BLOCKSIZE) : ((DATALEN / BLOCK_DATA_SIZE + 1) * BLOCKSIZE))


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
extern uint32 EEIf_FindLatestDataAddress(uint32 addridx);
#endif
