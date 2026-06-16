/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : RoutineControl.c
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : Dongxue.Guo
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
*   1.0         2024/07/08    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "RoutineControl.h"
#include "Dcm.h"
#include "Diag_Callout.h"
#include "FlsIf.h"
#include "MemM.h"
#include "MemM_cfg.h"
//#include "mcal_test_main.h"
#include "SecM.h"
#include "BootM.h"
/***************************************************************************************************
*                                      DEFINES AND MACROS
***************************************************************************************************/
#define RC_CHECKSUM_BASE    (0U)
#define RC_CHECKSUM_DIFF    (1U)
#define RC_DEPENDENCY_CRC_LEN      (4U)
/***************************************************************************************************
*                                       DATA PROTOTYPES
***************************************************************************************************/
uint32 g_CrcAddr[2] = {0};
uint32 g_CrcAddrEnd[2] = {0};
uint8 g_DownBlockStart[2] = {0};
uint8 g_DownBlockEnd[2] = {0};
uint8 g_DownBlockIdx = 0;
/***************************************************************************************************
*                                 INTERNAL FUNCTION PROTOTYPES
***************************************************************************************************/
static void ChecksumCompute(uint32 sAddr, uint32 size, uint8 method, uint8 drvId);
static uint8 ChecksumVerifyDependencies(void);
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
static void ChecksumCompute(uint32 sAddr, uint32 size, uint8 method, uint8 drvId)
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
            SecM_Crc32Process(dataBuf,RC_CHECKSUM_BUF_SIZE);
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
                SecM_Crc32Process(dataBuf,dataSize);
            }
        }
    }

    Diag_NRC78Send();
    /*feed dog*/
    Diag_WdgFeed();
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RC_ChecksumVerify
*
* Description   : This function is used to check program integrity by verify checksum.
*
* Inputs        : checksum: reference checksum value
*
* Outputs       : None
*
* Return        : E_OK: check success
*                 E_NOT_OK: check fail
*
* Limitations   : Only contiguous address data can be verified.
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 RC_ChecksumVerify(uint8 * checksum)
{
    uint8 retValue = E_NOT_OK;
    uint8 LBType;
    uint8 drvId;
    uint8 idxInit = 0;
    uint8 idxCnt = 0;
    uint8 index;
    uint8 crc[RC_CHECKSUM_LEN] = {0};

    if ((g_DownSegIdx >= DOWNSEG_MAXNUM)
        || (g_CurLogicalBlockId == COMMF_INVALID_U8))
    {
        /*If don't download any segment, checksum is invalid*/
        return retValue;
    }
    /*get logical block type*/
    LBType = MemM_LBTypeGet(g_CurLogicalBlockId);

    /*compute checksum*/
    SecM_Crc32Preprocess();

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
        ChecksumCompute(g_DownSeg[index].sAddr, g_DownSeg[index].size, RC_CHECKSUM_DIFF, drvId);
    }

    SecM_Crc32Finish(&crc[0]);

    if(CommF_DataCompare(checksum, crc, RC_CHECKSUM_LEN) == E_OK)
    {
        if (MEMM_FLASHDRV == LBType)
        {
            retValue = FlsIf_Init();
        }
        else
        {
            retValue = E_OK ;
        }
    }

    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : ChecksumVerifyDependencies
*
* Description   : This function is used to check header checksum.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : E_OK: check success
*                 E_NOT_OK: check fail
*
* Limitations   : Only contiguous address data can be verified.
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8 ChecksumVerifyDependencies(void)
{
    uint8 block;
    uint8 blockNum;
    uint8 idxInit = 0;
    uint8 idxCnt = 0;
    uint8 index;
    uint32 addr,size;
    uint8 retValue = E_OK;
    uint8 crcRef[RC_CHECKSUM_LEN]={0};
    uint8 crcValue[RC_CHECKSUM_LEN]={0};

    blockNum = g_DownBlockIdx;

    for(block = 0;block < blockNum;block++)
    {
        /*1. get crc value in the header*/
        FlsIf_Read(g_CrcAddr[block], RC_DEPENDENCY_CRC_LEN, crcRef);
        /*2. compute crc*/
        g_DownBlockIdx = block + 1U;
        CommF_DataSet(crcValue, 0, RC_DEPENDENCY_CRC_LEN);
        SecM_Crc32Preprocess();

        idxInit = g_DownBlockStart[block];
        idxCnt = 1U + g_DownBlockEnd[block];
        for(index = idxInit; index < idxCnt; index++)
        {
            addr = g_DownSeg[index].sAddr;
            size = g_DownSeg[index].size;
            if(addr == g_CrcAddrEnd[block])
            {
                size = size - RC_DEPENDENCY_CRC_LEN;
            }
            ChecksumCompute(addr, size, RC_CHECKSUM_BASE, MEMM_DRV_FLASH);
        }

        SecM_Crc32Finish(&crcValue[0]);
        /*3. compare header crc and calculated crc*/
        if(CommF_DataCompare(crcValue, crcRef, RC_CHECKSUM_LEN) != E_OK)
        {
            retValue = E_NOT_OK;
            break;
        }
    }

    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RC_CheckDependency
*
* Description   : This function is used to check program dependency.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : E_OK: check success
*                 E_NOT_OK: check fail
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 RC_CheckDependency(void)
{
    uint8 retValue = E_OK;

    Diag_NRC78Send();

    retValue = ChecksumVerifyDependencies();

    if(E_OK == retValue)
    {
        if(GetDcmState_AppACrc())
        {
            retValue = Diag_FlagWrite(MEMM_FLAG_APPA_ID, (uint8*)&g_FlagsInfo[MEMM_FLAG_APPA_ID].flagData);
        }

        if(GetDcmState_CalCrc())
        {
            retValue = E_OK;//Diag_FlagWrite(MEMM_FLAG_CAL_ID, (uint8*)&g_FlagsInfo[MEMM_FLAG_CAL_ID].flagData);
        }

        /*Are all logical blocks valid?*/
        if(E_OK == retValue)
        {
            retValue = E_OK;//BootM_IsAllLBA_Valid();
        }
        retValue = FlsIf_DeInit();
       // MemM_ClearFlsdrv();
        g_DownSegIdx = COMMF_INVALID_U8;      /*clear g_DownSegIdx*/
        g_CurLogicalBlockId = COMMF_INVALID_U8;
    }

    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RC_EraseMem_Preprocess
*
* Description   : This function is used to check erase memory request length and erase area.
*                 If request is valid, get the current logical block.
*
* Inputs        : buf: request address and length
*                 len: service request total length
*
* Outputs       : None
*
* Return        : RC_ERASE_NO_ERROR: check pass
*                 RC_ERASE_LEN_ERROR: request length is incorrect
*                 RC_ERASE_ADDR_ERROR: erase area is incorrect
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 RC_EraseMem_Preprocess(uint8* buf, uint16 len)
{
    uint8 AddressFormat;
    uint8 SizeFormat;
    uint32 MemoryAddress=0;
    uint32 MemorySize=0;
    uint8 Ret = RC_ERASE_NO_ERROR;
    uint8 LBId;

    /* The number of bytes occupied by erasing the address in the received data */
    AddressFormat = buf[0] & LOW_NIBBLE_MASK;
    /* The number of bytes occupied by the erase length in the received data*/
    SizeFormat=(uint8)(buf[0]>>BIT_NUM_OF_NIBBLE);

    /*Determine the total length of received data */
    if((len!=(5U +RC_ERASE_ADDR_FORMAT + RC_ERASE_SIZE_FORMAT)) ||
        (AddressFormat != RC_ERASE_ADDR_FORMAT) ||
        (SizeFormat != RC_ERASE_SIZE_FORMAT))
    {
        Ret = RC_ERASE_LEN_ERROR;
    }
    else
    {
        /* Calculate the erase address */
        MemoryAddress = CommF_GetUint32DataValue(&buf[1],RC_ERASE_ADDR_FORMAT);
        /*Calculate the erase length*/
        MemorySize = CommF_GetUint32DataValue(&buf[RC_ERASE_ADDR_FORMAT+1U],RC_ERASE_SIZE_FORMAT);
        /*Use this address to get logical block number.*/
        LBId = MemM_LBIdGet(MemoryAddress,MemorySize);
        /*Erase address is valid and flash driver has been verified*/
        if (LBId != COMMF_INVALID_U8)
        {
            g_CurLogicalBlockId = LBId;
            g_CrcAddr[g_DownBlockIdx] = MemoryAddress + MemorySize - RC_DEPENDENCY_CRC_LEN;
            g_DownBlockStart[g_DownBlockIdx] = g_DownSegIdx + 1U;
            g_DownBlockIdx++;
        }
        else
        {
            Ret = RC_ERASE_ADDR_ERROR;
        }
    }

    return Ret;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RC_EraseMemory
*
* Description   : This function is used for erasing memory.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : E_OK: erase success
*                 E_NOT_OK: erase fail
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 RC_EraseMemory(void)
{
    uint8 retValue = E_OK;
    uint32 sAddr;
    uint32 size;

    /*send 0x78*/
    Diag_NRC78Send();

    sAddr = MemM_LBStartAddrGet(g_CurLogicalBlockId) - MEMM_ADDR_OFFSET;
    size = MemM_LBSizeGet(g_CurLogicalBlockId);

    /*erase memory*/
    retValue = FlsIf_Erase(sAddr, size);

    if (E_NOT_OK == retValue)
    {
        /*clear g_CurLogicalBlockId and g_DownSegIdx*/
        g_CurLogicalBlockId = COMMF_INVALID_U8;
        g_DownSegIdx = COMMF_INVALID_U8;
    }

    return retValue;
}


/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RC_ActivationAndRollback
*
* Description   : Activation and Rollback,
                  This value is used to switch the activation/deactivation status of A/B partitions.
*
* Inputs        : None
*
* Outputs       : None
*
* Return        : E_OK: check success
*                 E_NOT_OK: check fail
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 RC_ActivationAndRollback(void)
{
    uint8 retValue = E_OK;

   
    return retValue;
}


/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : RC_CheckSVN
*
* Description   : Calculate software verification number (SVN)
                  This value is used to calculate the calibration of all modules
* Inputs        : None
*
* Outputs       : None
*
* Return        : E_OK: check success
*                 E_NOT_OK: check fail
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 RC_CheckSVN(void)
{
    uint8 retValue = E_OK;

   
    return retValue;
}
