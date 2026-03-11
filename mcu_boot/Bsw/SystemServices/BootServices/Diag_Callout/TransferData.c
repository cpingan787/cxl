/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : TransferData.c
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
#include "TransferData.h"
#include "FlsIf.h"
#include "MemM_cfg.h"
//#include "mcal_test_main.h"
#include "Diag_Callout.h"
#include "logHal.h"
/***************************************************************************************************
*                                       DATA PROTOTYPES
***************************************************************************************************/
static uint8 TransDataBuf[TRANSDATA_BLOCKSIZE_MAX];
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : TransData_WriteMemory
*
* Description   : This function is used to write logical block data(flash driver/app/cal/...).
*
* Inputs        : addr: start address
*                 size: data length
*                 buf: data buffer
*
* Outputs       : None
*
* Return        : E_OK: write success
*                 E_NOT_OK: write fail
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 TransData_WriteMemory(uint32 addr, uint32 size, uint8 * buf)
{
    uint8 retValue = E_NOT_OK;
    TBOX_PRINT("[36] WriteMemory: Addr = 0x%08X, Size = %d bytes, BlockId = %d\n", addr, size, g_CurLogicalBlockId);
    Diag_NRC78Send();
    //delay_ms(2);

    /*write data to memory*/
    if(g_CurLogicalBlockId == MEMM_FLASHDRV) /*flash driver*/
    {
       // CommF_DataCopy((void *)addr,(void *)buf,size);
        retValue = E_OK;
        TBOX_PRINT("[36] Write to Flash Driver (RAM) skipped/mocked.\n");
    }
    else
    {
        //YJP add write to pflash
        retValue = FlsIf_Write(addr, size, buf);
       
    }

    if (E_OK != retValue)
    {
        /*clear g_CurLogicalBlockId and g_DownSegIdx*/
        g_CurLogicalBlockId = COMMF_INVALID_U8;
        g_DownSegIdx = COMMF_INVALID_U8;
    }
      SecM_Crc16Process(buf,size);
    return retValue;
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : TransData_ClrSequenceBuffer
*
* Description   : This function is used to clear block data buffer.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void TransData_ClrSequenceBuffer(void)
{
    CommF_DataSet(TransDataBuf, COMMF_INVALID_U8, TRANSDATA_BLOCKSIZE_MAX);
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : TransData_Copy2SequenceBuffer
*
* Description   : This function is used to copy block data to block data buffer.
*
* Inputs        : data: block data
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void TransData_Copy2SequenceBuffer(uint8 * data)
{
    CommF_DataCopy(TransDataBuf, data, TRANSDATA_BLOCKSIZE_MAX);
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : TransData_CheckSequenceBuffer
*
* Description   : This function is used to compare received block data with block data buffer's
*                 data
*
* Inputs        : data: received block data
*
* Outputs       : None
*
* Return        : E_OK: The comparison data is consistent
*                 E_NOT_OK: The comparison data is inconsistent
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 TransData_CheckSequenceBuffer(uint8 * data)
{
    return CommF_DataCompare(TransDataBuf,data,TRANSDATA_BLOCKSIZE_MAX);
}
