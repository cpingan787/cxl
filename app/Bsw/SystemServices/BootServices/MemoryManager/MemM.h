 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       @: MemM.h
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
#ifndef MEMM_H
#define MEMM_H
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Common.h"
#include "CommonMacroDefine.h"
/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/

/***************************************************************************************************
*                                  DATA TYPES AND STRUCTURES
***************************************************************************************************/
typedef struct
{
    uint8    memType;
    uint32   sBlockAddr;
    uint32   eBlockAddr;
    uint32   BlockSize;
}
MemM_LBInfo_t;

typedef struct
{
    uint8          flagDrv;
    uint32         flagAddr;
    uint32         flagSize;
    uint32         flagData;
} MemM_FlagInfo_t;
/***************************************************************************************************
*                                     FUNCTION PROTOTYPES
***************************************************************************************************/
extern uint8 MemM_LBIdGet(uint32 tagAddr,uint32 tagSize);

#define MemM_LBStartAddrGet(LBId) (((LBId) < (MEMM_LOGICALBLOCK_NUM)) ? \
                        (g_logicalBlocks[LBId].sBlockAddr) : (COMMF_INVALID_U32))
#define MemM_LBSizeGet(LBId) (((LBId) < (MEMM_LOGICALBLOCK_NUM)) ? \
                            (g_logicalBlocks[LBId].BlockSize) : (COMMF_INVALID_U32))
#define MemM_LBTypeGet(LBId) (((LBId) < (MEMM_LOGICALBLOCK_NUM)) ? \
                            (g_logicalBlocks[LBId].memType) : (COMMF_INVALID_U8))
/*Clear the flash driver in ram*/
#define MemM_ClearFlsdrv() {CommF_DataSet((void *)(g_logicalBlocks[0].sBlockAddr), \
                                COMMF_INVALID_U8, MemM_LBSizeGet(0));}
#endif  /*MEMM_H*/

