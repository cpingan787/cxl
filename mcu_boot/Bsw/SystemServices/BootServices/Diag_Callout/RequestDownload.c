/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : RequestDownload.c
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : Junpeng.Yue
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
*   1.0         2024/07/01    Junpeng.Yue        N/A         Original
*   1.1         xxxx/xx/xx    xxxxxxxxxxx        N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Diag_Callout.h"
#include "RequestDownload.h"
#include "MemM_cfg.h"
#include "logHal.h"
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RequestDownload
*
* Description   : This function is used to verify and record request download information.
*
* Inputs        : addr: request download address
*                 size: request download length
*
* Outputs       : None
*
* Return        : E_OK: request download area is valid
*                 E_NOT_OK: request download area is invalid
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
Std_ReturnType RequestDownload(uint32 addr, uint32 size)
{
    /* Initialize return value */
    Std_ReturnType retValue = E_NOT_OK;
    /* Which logical block does the download address belong to  */
    uint8 LBId;
    TBOX_PRINT("[34]1 Addr = 0x%08X, Total Size = 0x%X\r\n", addr, size);
    /* Use this address to get logical block number. */
    LBId = MemM_LBIdGet(addr,size);
    TBOX_PRINT("[34] Mapp to LBId: %d\r\n", LBId);

    /*if LBId is valid then keep LBId */
    if ((LBId != COMMF_INVALID_U8) && (size != 0))
    {
        /* Assign the current logical block ID to the global variable */
        g_CurLogicalBlockId = LBId;

        if (g_DownSegIdx < (DOWNSEG_MAXNUM - 1U))
        {
            if(g_CurLogicalBlockId == MEMM_FLASHDRV)
            {
                /*record addr and size to g_DownSeg[0] which belongs to flash driver*/
                g_DownSeg[0].sAddr = addr;
                g_DownSeg[0].size = size;
            }
            else
            {
                g_DownSegIdx++;
                /*record addr and size to g_DownSeg*/
                g_DownSeg[g_DownSegIdx].sAddr = addr;
                g_DownSeg[g_DownSegIdx].size = size;
                g_CrcAddrEnd[g_DownBlockIdx - 1U] = addr;
                g_DownBlockEnd[g_DownBlockIdx - 1U] = g_DownSegIdx;
                TBOX_PRINT("[34] Target is Application/Data.\n");
            }
            retValue = E_OK;
            SecM_Crc16Preprocess();
        }
    }
    return retValue;
}
