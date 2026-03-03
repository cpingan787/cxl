 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : MemM.c
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
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "MemM_cfg.h"
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : MemM_LBIdGet
*
* Description   : This function is used for getting logical block id.
*
* Inputs        : tagAddr: target start address
*                 tagSize: target length
*
* Outputs       : None
*
* Return        : the logical block the target address belongs to
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 MemM_LBIdGet(uint32 tagAddr,uint32 tagSize)
{
    uint8 i;
    uint8 retValue = COMMF_INVALID_U8;
    uint32 tagEndAddr;      
    
    if (tagSize > 0)
    {
        tagEndAddr = tagAddr + tagSize - 1;   
    }
    else
    {
        tagEndAddr = tagAddr;  
    }
    
    if (tagAddr <= tagEndAddr)   /*avoid overflow*/
    {
        for (i = 0 ; i< MEMM_LOGICALBLOCK_NUM;i++) /*flash or ram*/
        {
            /*In the logical block*/
            if ((tagAddr >= g_logicalBlocks[i].sBlockAddr) && (tagEndAddr < g_logicalBlocks[i].eBlockAddr))
            {
                retValue = i;/*block index*/
                break;
            }
        }
    }
    return retValue;
}

