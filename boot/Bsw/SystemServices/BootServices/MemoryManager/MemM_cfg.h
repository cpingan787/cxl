 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : MemM_cfg.h
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : zhongliang.Yang
************************************************************************************************
*   Description     :
*
************************************************************************************************
*   Limitations     : None
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
#ifndef MEMM_CFG_H
#define MEMM_CFG_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "MemM.h"
#include "DIDReadWrite.h"

/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/
/*g_FlagsInfo info*/
#define MEMM_APPA_FLAG_ADDR                      0x00080000U
//#define MEMM_APPB_FLAG_ADDR                      0x00150000U //不需要Application B
//#define MEMM_CAL_FLAG_ADDR                       0x001F0000U //无标定数据
#define PROGRAM_CNT_MAX                          0x3E8U //程序最大刷写次数
#define MEMM_FLAG_NUM                            0x0BU

#define MEMM_FLAG_REPROGRAM_ID                   0x00u
#define MEMM_FLAG_REPROGRAM_SIZE                 0x04u
#define MEMM_FLAG_REPROGRAM_DATA                 0xB5u

#define MEMM_FLAG_RESET_SESSION_ID               0x01u
#define MEMM_FLAG_RESET_SESSION_SIZE             0x04u
#define MEMM_FLAG_RESET_SESSION_DATA             0x01U

#define MEMM_FLAG_RESET_REQUEST_ID               0x02u
#define MEMM_FLAG_RESET_REQUEST_SIZE             0x04u
#define MEMM_FLAG_RESET_REQUEST_DATA             0x02U

#define MEMM_FLAG_NORESPONSE_ID                  0x03u
#define MEMM_FLAG_NORESPONSE_SIZE                0x04u
#define MEMM_FLAG_NORESPONSE_DATA                0xA9U

#define MEMM_FLAG_APPA_ID                        0x04u
#define MEMM_FLAG_APPA_SIZE                      0x04u
#define MEMM_FLAG_APPA_DATA                      0xFEu

#define MEMM_FLAG_FAC_ID                         0x05u
#define MEMM_FLAG_FAC_SIZE                       0x04u

#define VSN_ACTIVE_FLAG_ID                       0x06u
#define VSN_ACTIVE_FLAG_SIZE                     0x01u

#define SM4_KEY_ACTIVE_FLAG_ID                   0x07u
#define SM4_KEY_ACTIVE_FLAG_SIZE                 0x01u

#define ALLOW_F187_WRITE_ID                      0x08u
#define ALLOW_F187_WRITE_SIZE                    0x01u

#define ALLOW_F190_WRITE_ID                      0x09u
#define ALLOW_F190_WRITE_SIZE                    0x01u

#define MEMM_FLAG_MPU_REPROGRAM_ID                 10u
#define MEMM_FLAG_MPU_REPROGRAM_SIZE             0x04u
#define MEMM_FLAG_MPU_REPROGRAM_DATA             0xC5u



/*g_logicalBlocks info*/
#define MEMM_LOGICALBLOCK_NUM          0x02u

#define MEMM_DRV_RAM                      0U
#define MEMM_DRV_FLASH                    1U
#define MEMM_DRV_EE                       2U

#define MEMM_FLASHDRV                    0U
#define MEMM_APPA                        1U
#define MEMM_APPB                        2U
#define MEMM_CAL                         3U

#define MEMM_ADDR_OFFSET              (0x200U) /*reserve for valid flag*/
/*The address range for flash driver*/
#define MEMM_FLASHDRV_START_ADDR      (0xFEDD0F00U)
#define MEMM_FLASHDRV_LIMIT_ADDR      (0xFEDDF000U)
#define MEMM_FLASHDRV_SIZE            (MEMM_FLASHDRV_LIMIT_ADDR - MEMM_FLASHDRV_START_ADDR)

/*The address range for application A*/
#define MEMM_APPA_START_ADDR          (MEMM_APPA_FLAG_ADDR + MEMM_ADDR_OFFSET)
#define MEMM_APPA_LIMIT_ADDR          (0x0014FFFFU)
#define MEMM_APPA_SIZE                (MEMM_APPA_LIMIT_ADDR - MEMM_APPA_START_ADDR + 1)

//不需要Application B
// /*The address range for application B*/
// #define MEMM_APPB_START_ADDR          (MEMM_APPB_FLAG_ADDR + MEMM_ADDR_OFFSET)
// #define MEMM_APPB_LIMIT_ADDR          (0x001EFFFFU)
// #define MEMM_APPB_SIZE                (MEMM_APPB_LIMIT_ADDR - MEMM_APPB_START_ADDR)
/*The address range for calibration data*/
#define MEMM_CAL_START_ADDR           (MEMM_CAL_FLAG_ADDR + MEMM_ADDR_OFFSET)
#define MEMM_CAL_LIMIT_ADDR           (0x001FFFFFU)
#define MEMM_CAL_SIZE                 (MEMM_CAL_LIMIT_ADDR - MEMM_CAL_START_ADDR)

/***************************************************************************************************
*                                  DATA TYPES AND STRUCTURES
***************************************************************************************************/
#define PROGRAM_CNT_LEN                         0x02U
#define VSN_LEN                                 0x20U
#define VSN_ACTIVE_FLAG_LEN                     0x01U
#define ALG_FLAG_LEN                            0x01U
#define SM4_KEY_LEN                             0x20U
#define SM4_KEY_ACTIVE_FLAG_LEN                 0x01U
#define SM2_KEY_LEN                             0x41U
#define ECC256_KEY_LEN                          0x41U

enum USERDATA_BLOCK0
{
    BLOCK_ID_IDX = 0,
    REPROGRAM_ADDR_IDX = BLOCK_ID_IDX + 2,
    RESET_ADDR_IDX = REPROGRAM_ADDR_IDX + MEMM_FLAG_REPROGRAM_SIZE,
    SECURITY_ADDR_IDX = RESET_ADDR_IDX + MEMM_FLAG_RESET_SESSION_SIZE,
    NEGATIVERES_ADDR_IDX = SECURITY_ADDR_IDX + MEMM_FLAG_NORESPONSE_SIZE,
    ALLOW_F187_WRITE_IDX = NEGATIVERES_ADDR_IDX + MEMM_FLAG_NORESPONSE_SIZE,
    ALLOW_F190_WRITE_IDX = ALLOW_F187_WRITE_IDX + ALLOW_F187_WRITE_SIZE,
    PROGRAM_CNT_ADDR_IDX = ALLOW_F190_WRITE_IDX + ALLOW_F190_WRITE_SIZE,
    DID_F100_ADDR_IDX = PROGRAM_CNT_ADDR_IDX + PROGRAM_CNT_LEN,
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
    VSN_ACTIVE_FLAG_IDX = VSN_ADDR_IDX + VSN_LEN,
    ALG_FLAG_IDX = VSN_ACTIVE_FLAG_IDX + VSN_ACTIVE_FLAG_LEN,
    SM4_KEY_IDX = ALG_FLAG_IDX + ALG_FLAG_LEN,
    SM4_KEY_ACTIVE_FLAG_IDX = SM4_KEY_IDX + SM4_KEY_LEN,
    SM2_KEY_IDX = SM4_KEY_ACTIVE_FLAG_IDX + SM4_KEY_ACTIVE_FLAG_LEN,
    ECC256_KEY_IDX = SM2_KEY_IDX + SM2_KEY_LEN,
};

/***************************************************************************************************
*                                 GLOBAL VARIABLE DECLARATIONS
***************************************************************************************************/
extern MemM_LBInfo_t       g_logicalBlocks[MEMM_LOGICALBLOCK_NUM];
extern MemM_FlagInfo_t     g_FlagsInfo[MEMM_FLAG_NUM];

#endif  /*MEMM_CFG_H*/

