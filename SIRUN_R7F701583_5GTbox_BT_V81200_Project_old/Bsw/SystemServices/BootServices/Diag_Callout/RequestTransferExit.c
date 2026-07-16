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
#include "RoutineControl.h"
#include "SecM.h"
#include "MemM_cfg.h"

static void ChecksumCompute(uint32 sAddr, uint32 size, uint8 drvId);

/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : ChecksumCompute
*
* Description   : This function is used to compute checksum.
*
* Inputs        : sAddr: The start address of the data for checksum calculation.
*                 size: The size of the data for checksum calculation.
*                 method: RC_CHECKSUM_BASE: CRC32 algorithm
*                         RC_CHECKSUM_DIFF: User algorithm
*                 drvId: driver type
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
static void ChecksumCompute(uint32 sAddr, uint32 size, uint8 drvId)
{
    uint32 readCnt;
    uint32 dataAddr;
    uint32 dataSize;
    uint8 dataBuf[RC_CHECKSUM_BUF_SIZE];
    uint8 retValue = E_OK;

    dataAddr = sAddr;
    dataSize = size;

    for (readCnt = (dataSize / RC_CHECKSUM_BUF_SIZE); readCnt > 0; readCnt--)
    {
        if(drvId == MEMM_DRV_FLASH)
        {
            /*read data*/
            retValue = FlsIf_Read(dataAddr, RC_CHECKSUM_BUF_SIZE, dataBuf);
        }
        else if(drvId == MEMM_DRV_RAM)
        {
            CommF_DataCopy(dataBuf, (void *)dataAddr, RC_CHECKSUM_BUF_SIZE);
            retValue = E_OK;
        }
        else
        {
            retValue = E_NOT_OK;
            break;
        }

        if (E_OK == retValue)
        {
            /*compute checksum*/
            SecM_Crc16Process(dataBuf,RC_CHECKSUM_BUF_SIZE);
        }
        else
        {
            break;
        }
        /*update data address. */
        dataAddr += RC_CHECKSUM_BUF_SIZE;

        Diag_NRC78Send();
        /*feed dog*/
        Diag_WdgFeed();
    }

    if(E_OK == retValue)
    {
        dataSize %= RC_CHECKSUM_BUF_SIZE;
        if (dataSize != 0)
        {
            if(drvId == MEMM_DRV_FLASH)
            {
                /*read data*/
                retValue = FlsIf_Read(dataAddr, dataSize, dataBuf);
            }
            else/* if(drvId == MEMM_DRV_RAM)*/
            {
                CommF_DataCopy(dataBuf, (void *)dataAddr, dataSize);
            }

            if (E_OK == retValue)
            {
                SecM_Crc16Process(dataBuf,dataSize);
            }
        }
    }

    Diag_NRC78Send();
    /*feed dog*/
    Diag_WdgFeed();
}
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
Std_ReturnType Calculate36blockCRC16(uint8 * checksum)
{
    /* Initialize return value */
     uint8 retValue = E_NOT_OK;
    #if 0
   
    uint8 LBType;
    uint8 drvId;
    uint8 idxInit = 0;
    uint8 idxCnt = 0;
    uint8 index;
    if ((g_DownSegIdx >= DOWNSEG_MAXNUM)
        || (g_CurLogicalBlockId == COMMF_INVALID_U8))
    {
        /*If don't download any segment, checksum is invalid*/
        return retValue;
    }
    /*get logical block type*/
    LBType = MemM_LBTypeGet(g_CurLogicalBlockId);

    /*compute checksum*/
    SecM_Crc16Preprocess();

    if(LBType == MEMM_FLASHDRV)
    {
        idxInit = 0;
        idxCnt = 1;
        drvId = MEMM_DRV_RAM;
    }
    else
    {
        idxInit = g_DownBlockStart[g_DownBlockIdx - 1U];
        idxCnt = 1U + g_DownBlockEnd[g_DownBlockIdx - 1U];
        drvId = MEMM_DRV_FLASH;
    }

    for(index = idxInit; index < idxCnt; index++)
    {
        ChecksumCompute(g_DownSeg[index].sAddr, g_DownSeg[index].size, drvId);
    }
    #endif
    SecM_Crc16Finish(checksum);

    retValue = E_OK ;
    return retValue;
}
