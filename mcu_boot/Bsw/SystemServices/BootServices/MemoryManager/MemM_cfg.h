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
/***************************************************************************************************
*                                  DATA TYPES AND STRUCTURES
***************************************************************************************************/
enum USERDATA_BLOCK0
{
    BLOCK_ID_IDX = 0,
    REPROGRAM_ADDR_IDX = 2,
    RESET_ADDR_IDX = 6,
    SECURITY_ADDR_IDX = 10,
    NEGATIVERES_ADDR_IDX = 14,
    DID_F198_ADDR_IDX = 22,
    DID_F187_ADDR_IDX = 32,
    DID_F18A_ADDR_IDX = 45,
    DID_F199_ADDR_IDX = 55
};

/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/
/*g_FlagsInfo info*/
#define MEMM_APPA_FLAG_ADDR                      0x00050000U
#define MEMM_APPB_FLAG_ADDR                      0x00120000U
#define MEMM_CAL_FLAG_ADDR                       0x001F0000U

#define MEMM_FLAG_NUM                            0x09U

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

#define MEMM_FLAG_APPB_ID                        0x05u
#define MEMM_FLAG_APPB_SIZE                      0x04u
#define MEMM_FLAG_APPB_DATA                      0xFBu

#define MEMM_FLAG_CAL_ID                         0x06u
#define MEMM_FLAG_CAL_SIZE                       0x04u
#define MEMM_FLAG_CAL_DATA                       0xFCu

#define MEMM_FLAG_FAC_ID                         0x07u
#define MEMM_FLAG_FAC_SIZE                       0x04u

#define MEMM_FLAG_MPU_REPROGRAM_ID               0x08u
#define MEMM_FLAG_MPU_REPROGRAM_SIZE             0x04u
#define MEMM_FLAG_MPU_REPROGRAM_DATA             0xC5u


#define MEMM_FLAG_APPAddr_ID                   	 0x08u
#define MEMM_FLAG_APPAddr_SIZE                   0x04u



/*g_logicalBlocks info*/
#define MEMM_LOGICALBLOCK_NUM          0x04u

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
#define MEMM_APPA_LIMIT_ADDR          (0x0011FFFFU)
#define MEMM_APPA_SIZE                (MEMM_APPA_LIMIT_ADDR - MEMM_APPA_START_ADDR)

/*The address range for application B*/
#define MEMM_APPB_START_ADDR          (MEMM_APPB_FLAG_ADDR + MEMM_ADDR_OFFSET)
#define MEMM_APPB_LIMIT_ADDR          (0x001EFFFFU)
#define MEMM_APPB_SIZE                (MEMM_APPB_LIMIT_ADDR - MEMM_APPB_START_ADDR)
/*The address range for calibration data*/
#define MEMM_CAL_START_ADDR           (MEMM_CAL_FLAG_ADDR + MEMM_ADDR_OFFSET)
#define MEMM_CAL_LIMIT_ADDR           (0x001FFFFFU)
#define MEMM_CAL_SIZE                 (MEMM_CAL_LIMIT_ADDR - MEMM_CAL_START_ADDR)

/***************************************************************************************************
*                                 GLOBAL VARIABLE DECLARATIONS
***************************************************************************************************/
extern MemM_LBInfo_t       g_logicalBlocks[MEMM_LOGICALBLOCK_NUM];
extern MemM_FlagInfo_t     g_FlagsInfo[MEMM_FLAG_NUM];

#endif  /*MEMM_CFG_H*/

