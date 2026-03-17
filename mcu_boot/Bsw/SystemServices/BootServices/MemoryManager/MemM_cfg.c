 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       @: MemM_cfg.c
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
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "MemM_cfg.h"
#include "EEIf.h"

/***************************************************************************************************
*                                       DATA PROTOTYPES
***************************************************************************************************/
/*the logical blocks information*/
MemM_LBInfo_t g_logicalBlocks[MEMM_LOGICALBLOCK_NUM] =
{
    {
        MEMM_FLASHDRV,
        MEMM_FLASHDRV_START_ADDR,
        MEMM_FLASHDRV_LIMIT_ADDR,
        MEMM_FLASHDRV_SIZE
    },
    {
        MEMM_APPA,
        MEMM_APPA_START_ADDR,
        MEMM_APPA_LIMIT_ADDR,
        MEMM_APPA_SIZE
    },
    {
        MEMM_APPB,
        MEMM_APPB_START_ADDR,
        MEMM_APPB_LIMIT_ADDR,
        MEMM_APPB_SIZE

    },
    {
        MEMM_CAL,
        MEMM_CAL_START_ADDR,
        MEMM_CAL_LIMIT_ADDR,
        MEMM_CAL_SIZE
    },
};

/*The information of flags*/
MemM_FlagInfo_t g_FlagsInfo[MEMM_FLAG_NUM] =
{
    {
        MEMM_DRV_EE,
        REPROGRAM_ADDR_IDX,
        MEMM_FLAG_REPROGRAM_SIZE,
        MEMM_FLAG_REPROGRAM_DATA
    },
    {
        MEMM_DRV_EE,
        RESET_ADDR_IDX,
        MEMM_FLAG_RESET_SESSION_SIZE,
        MEMM_FLAG_RESET_SESSION_DATA},
    {
        MEMM_DRV_EE,
        RESET_ADDR_IDX,
        MEMM_FLAG_RESET_REQUEST_SIZE,
        MEMM_FLAG_RESET_REQUEST_DATA
    },
    {
        MEMM_DRV_EE,
        NEGATIVERES_ADDR_IDX,
        MEMM_FLAG_NORESPONSE_SIZE,
        MEMM_FLAG_NORESPONSE_DATA
    },
    {
        MEMM_DRV_FLASH,
        MEMM_APPA_FLAG_ADDR,
        MEMM_FLAG_APPA_SIZE,
        MEMM_FLAG_APPA_DATA
    },
    {
        MEMM_DRV_FLASH,
        MEMM_APPB_FLAG_ADDR,
        MEMM_FLAG_APPB_SIZE,
        MEMM_FLAG_APPB_DATA
    },
    {
        MEMM_DRV_FLASH,
        MEMM_CAL_FLAG_ADDR,
        MEMM_FLAG_CAL_SIZE,
        MEMM_FLAG_CAL_DATA
    },
    {
        MEMM_DRV_EE,
        SECURITY_ADDR_IDX,
        MEMM_FLAG_FAC_SIZE,
        COMMF_INVALID_U8 /*true value is not constant*/
    },
    {
        MEMM_DRV_EE,
        REPROGRAM_ADDR_IDX,
        MEMM_FLAG_MPU_REPROGRAM_SIZE,
        MEMM_FLAG_MPU_REPROGRAM_DATA
    },
};
