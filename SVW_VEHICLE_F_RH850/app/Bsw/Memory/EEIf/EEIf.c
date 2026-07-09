 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       @: FlsIf.c
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
#include "EEIf.h"
//#include "Fls_Types.h"
//#include "Fls_Api.h"
#include "SchM_Fls.h"
#include "Fls.h"
#include "Wdg_59_DriverB.h"
#include "Wdg_59_DriverB_PBTypes.h"


/**********************************************************************************************
* FUNCTION DECLARATION
***********************************************************************************************/
static uint16 DataReadByAddr(uint32 addr);
static uint8 DataEraseProcess(uint32 TargetAddress, uint32 Length);
static uint8 DataReadProcess(uint32 SourceAddress, uint8 * TargetAddressPtr,uint32 Length);
static uint8 DataReadBlockProcess(uint8* buf);
static uint8 DataWriteProcess(uint32 TargetAddress, const uint8 * SourceAddressPtr,uint32 Length);
static uint8 EEIf_CopyPreviousData(uint8* blockBuffer, uint32 newStartAddr, uint32 blockIndex);
static uint32 EEIf_DetermineLatestSector(void);
static uint32 EEIf_FindLatestAddress(uint8 findType);
uint32 ValidSectorAdd(uint32 Sector0,uint32 Sector1);

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CommF_DataCopy
*
* Description   : This function is used to copy data from source address to destination address.
*
* Inputs        : des: destination address
*                 src: source address
*                 srcSize: the size of copy data.
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void CommF_DataCopy(void * des, void * src,uint32 srcSize)
{
    uint8 * pd, * ps;
    uint32 i;

    if ((des != src) && (srcSize != 0))
    {
        pd = (uint8 *)des;
        ps = (uint8 *)src;

        for (i = 0 ; i < srcSize ; i++)
        {
            pd[i] = ps[i];//is there another way to write it?rynnn
        }
    }
}

static uint16 DataReadByAddr(uint32 addr)
{
    uint32 retValue = 0xffff;
    uint8 ReadAppBuffer[2] = {0};
    
    Fls_Read(addr - FEE_SECTOR0_STARTADDRESS, ReadAppBuffer, 0x02);
    
    while (Fls_GetStatus() != MEMIF_IDLE)
    {
      Fls_MainFunction();
    }

    retValue = (ReadAppBuffer[0] << 8) + (ReadAppBuffer[1]);

    return retValue;
} 

static uint8  DataReadProcess(uint32 SourceAddress,  uint8 * TargetAddressPtr,uint32 Length)
{
    uint8  tem = E_OK;
    MemIf_StatusType fls_status;
    tem = Fls_Read(SourceAddress, TargetAddressPtr, Length);
    do
    {
        Fls_MainFunction();
        fls_status = Fls_GetStatus();
    } while (fls_status != MEMIF_IDLE);

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : IsValidWriteDataF187
*
* Description   : This function is used for determining whether the data to be written .
*
* Inputs        :  sdu(the data needs to be written)
*
* Outputs       : result
*
* Limitations   : This function is a callback for Dcm module.
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8 DataCompare(uint8 * des, uint8 * src, uint8 size)
{
    uint8 i;
    uint8 retValue = E_OK;

    for(i = 0;i < size; i++)
    {
        if(des[i] != src[i])
        {
            retValue = E_NOT_OK;
            break;
        }
    }
    return retValue;
}



/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : DataEraseProcess
*
* Description   : this function will check and caculate the input parameters and  call FlashDriverErase
*
* Inputs        : drvPar:standard hiboot mm input parameter
*
* Outputs       : the erase work succeed or not
*
* Limitations   : Only for HiBoot
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8  DataEraseProcess(uint32 TargetAddress, uint32 Length)
{
    uint8  tem = E_OK;
    MemIf_StatusType fls_status;
    tem = Fls_Erase(TargetAddress, Length);
    do
    {
        Wdg_59_DriverB_TriggerFunc(WDG_59_DRIVERB_INCLUDE_CRITICAL_SECTION);
        Fls_MainFunction();
        fls_status = Fls_GetStatus();
    } while (fls_status != MEMIF_IDLE);

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : DataWriteProcess
*
* Description   : this function will check and caculate the input parameters and  call FlashDriverErase
*
* Inputs        : drvPar:standard hiboot mm input parameter
*
* Outputs       : the erase work succeed or not
*
* Limitations   : Only for HiBoot
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8 DataWriteProcess(uint32 TargetAddress, const uint8 * SourceAddressPtr,uint32 Length)
{
    uint8 tem = E_OK;
    MemIf_StatusType fls_status;
    tem = Fls_Write(TargetAddress , SourceAddressPtr, Length);
    do
    {
        Fls_MainFunction();
        fls_status = Fls_GetStatus();
    } while (fls_status != MEMIF_IDLE);

    return tem ;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EEIf_Init
*
* Description   : this function init all the parameters that Fls need
*
* Inputs        : None
*
* Outputs       : None
* 
* Limitations   : None
*                 
************************************************************************************************
END_FUNCTION_HDR */
void EEIf_Init(void)
{
  //  uint8 tem = E_OK;
    Fls_Init(FlsConfigSet);
	//FlsIf_Init();
  //  return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_DeInit
*
* Description   : this function will call FlashDriverDeInit and reset all the parameters that FlsiIf need
*
* Inputs        : None
*
* Outputs       : None
* 
* Limitations   : Only for HiBoot 
*                 
************************************************************************************************
END_FUNCTION_HDR */
uint8 EEIf_DeInit(void)
{
    // yjp
    uint8 tem = E_OK;
    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EEIf_Write
* 
* Description   : 向指定地址写入数据，采用分块写入的方式，每次写入64Byte的小block
* 
* Inputs        : sAddr - 写入的起始地址
*                 size - 写入的数据大小
*                 buf - 待写入的数据缓冲区
* 
* Outputs       : E_OK - 操作成功，E_NOT_OK - 操作失败
* 
* Limitations   : Only for HiBoot 
*                 
************************************************************************************************
END_FUNCTION_HDR */
uint8 EEIf_Write(uint32 sAddr, uint32 size, uint8* buf)
{
    uint32 i, j;
    uint8 tem = E_NOT_OK;
    uint32 startData = 0;
    uint32 endData = 0;
    uint32 startAddr = FEE_SECTOR0_STARTADDRESS;
    uint32 newStartAddr = 0;
    uint8 blockBuffer[BLOCKSIZE]; 
    uint32 blockCount = ACTUAL_DATALEN_SIZE / BLOCK_DATA_SIZE;
    
    // 查找最新的可写入地址
    newStartAddr = EEIf_FindLatestAddress(FIND_LATEST_WRITE_ADDRESS);
    
    // 检查找到的起始地址是否有效
    if(newStartAddr == 0xFFFFFFFF)
    {
        // 未找到有效的可写入地址，返回错误
        return E_NOT_OK;
    }

    // 初始化数据缓冲区
    for(i = 0; i < blockCount; i++)
    {
        // 复制上一次的数据到blockBuffer
        tem = EEIf_CopyPreviousData(blockBuffer, newStartAddr, i);
        if(tem != E_OK)
        {
            return E_NOT_OK;
        }

        // 计算当前block对应的用户逻辑地址范围
        uint32 blockLogicStart = i * BLOCK_DATA_SIZE;
        uint32 blockLogicEnd = blockLogicStart + BLOCK_DATA_SIZE - 1;
        
        // 计算用户数据在当前block中的偏移
        int dataOffset = (int)sAddr - (int)blockLogicStart;
        
        // 处理数据在当前block中的情况
        if(dataOffset >= 0 && dataOffset < BLOCK_DATA_SIZE)
        {
            // 计算实际的buffer偏移（加上校验位占用的字节）
            uint32 bufferOffset = USER_DATA_START + dataOffset;
            
            // 计算可复制的数据大小
            uint32 copySize = size;
            if(copySize > BLOCK_DATA_SIZE - dataOffset)
            {
                copySize = BLOCK_DATA_SIZE - dataOffset;
            }
            
            // 复制数据到当前block
            CommF_DataCopy(&blockBuffer[bufferOffset], buf, copySize);
            
            // 检查新存储区域的当前起始位置是否有数据
            startData = DataReadByAddr(newStartAddr + i * BLOCKSIZE);
            if(startData != 0xFFFF)
            {
                // 如果有数据，先擦除该扇区
                tem = DataEraseProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS, SECTORLEN);
                if(tem != E_OK)
                {
                    return tem;
                }
            }

            // 分块写入数据
            tem = DataWriteProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS + i * BLOCKSIZE, blockBuffer, BLOCKSIZE);
            if(tem != E_OK)
            {
                return tem;
            }
            // 处理跨block的数据
            if(copySize < size)
            {
                uint32 remainingSize = size - copySize;
                uint32 nextBlockIndex = i + 1;
                
                // 遍历后续的block，处理跨block的数据
                while(remainingSize > 0 && nextBlockIndex < blockCount)
                {

                    // 复制上一次的数据到blockBuffer
                    tem = EEIf_CopyPreviousData(blockBuffer, newStartAddr, nextBlockIndex);
                    if(tem != E_OK)
                    {
                        return E_NOT_OK;
                    }

                    // 计算可复制到下一个block的数据大小
                    uint32 nextCopySize = remainingSize;
                    if(nextCopySize > BLOCK_DATA_SIZE)
                    {
                        nextCopySize = BLOCK_DATA_SIZE;
                    }
                    
                    // 复制数据到下一个block
                    CommF_DataCopy(&blockBuffer[USER_DATA_START], &buf[copySize], nextCopySize);
                    
                    // 检查下一个block的存储位置是否有数据
                    startData = DataReadByAddr(newStartAddr + nextBlockIndex * BLOCKSIZE);
                    if(startData != 0xFFFF)
                    {
                        // 如果有数据，先擦除该扇区
                        tem = DataEraseProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS, SECTORLEN);
                        if(tem != E_OK)
                        {
                            return tem;
                        }
                    }
                    
                    // 写入下一个block
                    tem = DataWriteProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS + nextBlockIndex * BLOCKSIZE, blockBuffer, BLOCKSIZE);
                    if(tem != E_OK)
                    {
                        return tem;
                    }
                    
                    // 更新剩余数据大小和已复制数据大小
                    remainingSize -= nextCopySize;
                    copySize += nextCopySize;
                    nextBlockIndex++;
                    i++;
                }
            }
        }
        else
        {
            // 检查新存储区域的当前起始位置是否有数据
            startData = DataReadByAddr(newStartAddr + i * BLOCKSIZE);
            if(startData != 0xFFFF)
            {
                // 如果有数据，先擦除该扇区
                tem = DataEraseProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS, SECTORLEN);
                if(tem != E_OK)
                {
                    return tem;
                }
            }

            // 分块写入数据
            tem = DataWriteProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS + i * BLOCKSIZE, blockBuffer, BLOCKSIZE);
            if(tem != E_OK)
            {
                return tem;
            }
        }
    }
    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : DataReadBlockProcess
* 
* Description   : 分块读取数据，从新存储区域读取完整的数据块
* 
* Inputs        : buf - 存储读取数据的缓冲区
* 
* Outputs       : E_OK - 操作成功，E_NOT_OK - 操作失败
* 
* Limitations   : None
*                 
************************************************************************************************
END_FUNCTION_HDR */
static uint8 DataReadBlockProcess(uint8* buf)
{
    uint32 i, j;
    uint8 tem = E_NOT_OK;
    uint32 startAddr = FEE_NEW_SECTOR0_STARTADDRESS; // 新存储区域起始地址
    uint32 blockCount = ACTUAL_DATALEN_SIZE / BLOCK_DATA_SIZE;
    uint8 blockBuffer[BLOCKSIZE]; // 局部变量，用于分块读取

    // 检查新存储区域是否有数据
    uint32 startData = DataReadByAddr(startAddr);
    if(startData == 0xFFFF)
    {
        return tem;
    }

    // 分块读取数据
    for(i = 0; i < blockCount; i++)
    {
        // 读取当前block
        DataReadProcess(startAddr - FEE_SECTOR0_STARTADDRESS + i * BLOCKSIZE, blockBuffer, BLOCKSIZE);

        // 验证校验位
        uint16 checksum = VALIDBLOCK_FLAG + i;
        if((blockBuffer[0] != ((checksum >> 8) & 0xff)) || (blockBuffer[1] != (checksum & 0xff)))
        {
            return E_NOT_OK;
        }

        // 计算用户数据在block中的起始位置（跳过校验位）
        // 将读取的用户数据复制到输出缓冲区（跳过校验位）
        for(j = 0; j < BLOCK_DATA_SIZE; j++)
        {
            buf[i * BLOCK_DATA_SIZE + j] = blockBuffer[USER_DATA_START + j];
        }
    }

    tem = E_OK;
    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EEIf_Read
* 
* Description   : 从指定地址读取数据，仅读取与指定sAddr相对应的block数据
* 
* Inputs        : sAddr - 读取的起始地址
*                 size - 读取的数据大小
*                 buf - 存储读取数据的缓冲区
* 
* Outputs       : E_OK - 操作成功，E_NOT_OK - 操作失败
* 
* Limitations   : Only for HiBoot
*                 
************************************************************************************************
END_FUNCTION_HDR */ 
uint8 EEIf_Read(uint32 sAddr, uint32 size, uint8* buf)
{
    uint32 i, j;
    uint8 tem = E_NOT_OK;
    uint32 startAddr = FEE_SECTOR0_STARTADDRESS;
    uint32 blockCount = ACTUAL_DATALEN_SIZE / BLOCK_DATA_SIZE;
    uint8 blockBuffer[BLOCKSIZE]; // 局部变量，用于分块读取

    // 查找最新的可读取地址
    uint32 newStartAddr = EEIf_FindLatestAddress(FIND_LATEST_READ_ADDRESS);
    
    // 检查找到的起始地址是否有效
    if(newStartAddr == 0xFFFFFFFF)
    {
        // 未找到有效的可读取地址，返回错误
        return E_NOT_OK;
    }
    
    // 计算目标block的索引
    uint32 targetBlockIndex = sAddr / BLOCK_DATA_SIZE;
    
    // 检查目标block索引是否有效
    if(targetBlockIndex < blockCount)
    {
        // 读取目标block
        DataReadProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS + targetBlockIndex * BLOCKSIZE, blockBuffer, BLOCKSIZE);
        
        // 验证校验位
        uint16 checksum = VALIDBLOCK_FLAG + targetBlockIndex;
        if((blockBuffer[0] == ((checksum >> 8) & 0xff)) && (blockBuffer[1] == (checksum & 0xff)))
        {
            // 计算用户数据在当前block中的偏移（补偿校验位）
            uint32 offset = sAddr % BLOCK_DATA_SIZE;
            uint32 bufferOffset = USER_DATA_START + offset;
            
            // 计算可复制的数据大小
            uint32 copySize = size;
            if(copySize > BLOCK_DATA_SIZE - offset)
            {
                copySize = BLOCK_DATA_SIZE - offset;
            }
            
            // 复制请求的数据
            CommF_DataCopy(buf, &blockBuffer[bufferOffset], copySize);
            
            // 处理跨block的数据
            if(copySize < size)
            {
                uint32 remainingSize = size - copySize;
                uint32 nextBlockIndex = targetBlockIndex + 1;
                
                // 遍历后续的block，处理跨block的数据
                while(remainingSize > 0 && nextBlockIndex < blockCount)
                {
                    // 读取下一个block
                    DataReadProcess(newStartAddr - FEE_SECTOR0_STARTADDRESS + nextBlockIndex * BLOCKSIZE, blockBuffer, BLOCKSIZE);
                    
                    // 验证校验位
                    checksum = VALIDBLOCK_FLAG + nextBlockIndex;
                    if((blockBuffer[0] == ((checksum >> 8) & 0xff)) && (blockBuffer[1] == (checksum & 0xff)))
                    {
                        // 计算可复制到下一个block的数据大小
                        uint32 nextCopySize = remainingSize;
                        if(nextCopySize > BLOCK_DATA_SIZE)
                        {
                            nextCopySize = BLOCK_DATA_SIZE;
                        }
                        
                        // 复制数据到输出缓冲区
                        CommF_DataCopy(&buf[copySize], &blockBuffer[USER_DATA_START], nextCopySize);
                        
                        // 更新剩余数据大小和已复制数据大小
                        remainingSize -= nextCopySize;
                        copySize += nextCopySize;
                        nextBlockIndex++;
                    }
                    else
                    {
                        break;
                    }
                }
                
                // 如果所有数据都已读取，设置成功标志
                if(remainingSize == 0)
                {
                    tem = E_OK;
                }
            }
            else
            {
                // 如果数据在单个block中，设置成功标志
                tem = E_OK;
            }
        }
    }

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : ValidSectorAdd
*
* Description   : determine valid sector address
*
* Inputs        : 1:Sector0_Address(address of Sector0) 2:Sector1_Address(address of Sector1)
*
*
* Outputs       : Addr:valid sector address
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint32 ValidSectorAdd(uint32 Sector0_Address,uint32 Sector1_Address)
{
    uint32 Addr = 0;
    uint16 sector0Data = DataReadByAddr(Sector0_Address);
    uint16 sector1Data = DataReadByAddr(Sector1_Address);


    if((sector0Data != 0xFFFF) && (sector1Data == 0xFFFF))
    {
        Addr = Sector0_Address;
    }
    else if((sector0Data == 0xFFFF) && (sector1Data != 0xFFFF))
    {
        Addr = Sector1_Address;
    }
    else
    {
        Addr = INVALIDSECTOR;
    }
    return Addr;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EEIf_CopyPreviousData
* 
* Description   : 将上一次的数据复制到blockBuffer数组中
* 
* Inputs        : blockBuffer - blockBuffer[0]的内存地址
*                 newStartAddr - 新的起始地址
*                 blockIndex - 当前block的索引
* 
* Outputs       : E_OK - 操作成功，E_NOT_OK - 操作失败
* 
* Limitations   : None
*                 
************************************************************************************************
END_FUNCTION_HDR */
static uint8 EEIf_CopyPreviousData(uint8* blockBuffer, uint32 newStartAddr, uint32 blockIndex)
{
    uint8 tem = E_OK;
    uint32 j = 0;
    
    // 参数验证
    if(blockBuffer == NULL_PTR)
    {
        return E_NOT_OK;
    }
    
    // 首先通过公式latestReadAddr = newStartAddr - ACTUAL_DATALEN_SIZE计算初始值
    uint32 latestReadAddr = newStartAddr - ACTUAL_DATALEN_SIZE;
    
    // 调用EEIf_DetermineLatestSector函数获取当前活动的SECTOR
    uint32 activeSector = EEIf_DetermineLatestSector();
    
    // 对计算得到的latestReadAddr进行边界有效性检测
    if(activeSector == FEE_SECTOR0_STARTADDRESS)
    {
        // 当latestReadAddr < FEE_SECTOR0_STARTADDRESS且当前活动SECTOR为SECTOR0时，将latestReadAddr强制设置为FEE_SECTOR0_STARTADDRESS
        if(latestReadAddr < FEE_SECTOR0_STARTADDRESS)
        {
            latestReadAddr = FEE_SECTOR0_STARTADDRESS;
        }
    }
    else if(activeSector == FEE_SECTOR1_STARTADDRESS)
    {
        // 当latestReadAddr < FEE_SECTOR1_STARTADDRESS且当前活动SECTOR为SECTOR1时，将latestReadAddr强制设置为FEE_SECTOR1_STARTADDRESS
        if(latestReadAddr < FEE_SECTOR1_STARTADDRESS)
        {
            latestReadAddr = FEE_SECTOR1_STARTADDRESS;
        }
    }
    
    // 检查计算得到的地址是否有效
    if(latestReadAddr >= FEE_SECTOR0_STARTADDRESS)
    {
        // 读取最新的数据到临时缓冲区
        uint8 prevBlockBuffer[BLOCKSIZE];
        uint8 readStatus = DataReadProcess(latestReadAddr - FEE_SECTOR0_STARTADDRESS + blockIndex * BLOCKSIZE, prevBlockBuffer, BLOCKSIZE);
        if(readStatus == E_OK)
        {
            // 对当前数据的标志位进行严格校验
            // 计算预期的校验位值
            uint16 expectedChecksum = VALIDBLOCK_FLAG + blockIndex;
            // 从读取的数据中提取校验位
            uint16 actualChecksum = (prevBlockBuffer[0] << 8) | prevBlockBuffer[1];
            
            // 验证校验位是否符合预期
            if(actualChecksum == expectedChecksum)
            {
                // 校验通过，复制请求的数据
                CommF_DataCopy(blockBuffer, prevBlockBuffer, BLOCKSIZE);
            }
            else
            {
                // 计算当前block的校验位
                uint16 checksum = VALIDBLOCK_FLAG + blockIndex;
                blockBuffer[0] = (checksum >> 8) & 0xff;
                blockBuffer[1] = checksum & 0xff;

                // 清空当前blockBuffer
                for(j = 2; j < BLOCKSIZE; j++)
                {
                    blockBuffer[j] = 0;
                }
            }
        }
        else
        {
            tem = E_NOT_OK;
        }
    }
    else
    {
        // 未找到有效的可读取地址，清空当前blockBuffer，防止数据错误

        // 计算当前block的校验位
        uint16 checksum = VALIDBLOCK_FLAG + blockIndex;
        blockBuffer[0] = (checksum >> 8) & 0xff;
        blockBuffer[1] = checksum & 0xff;

        // 清空当前blockBuffer
        for(j = 2; j < BLOCKSIZE; j++)
        {
            blockBuffer[j] = 0;
        }
    }
    
    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EEIf_DetermineLatestSector
* 
* Description   : 确定当前最新数据存储扇区，判断最新数据存储在SECTOR0还是SECTOR1中
* 
* Inputs        : None
* 
* Outputs       : FEE_SECTOR0_STARTADDRESS - 最新数据在SECTOR0
*                 FEE_SECTOR1_STARTADDRESS - 最新数据在SECTOR1
*                 0xFFFFFFFF - 两个扇区均非空
* 
* Limitations   : None
*                 
************************************************************************************************
END_FUNCTION_HDR */
static uint32 EEIf_DetermineLatestSector(void)
{
    uint16 sector0StartData = 0;
    uint16 sector0EndData = 0;
    uint16 sector1StartData = 0;
    uint16 sector1EndData = 0;
    uint8 sector0Empty = 0;
    uint8 sector1Empty = 0;
    
    // 读取SECTOR0的两个关键地址的值
    sector0StartData = DataReadByAddr(FEE_SECTOR0_STARTADDRESS);
    sector0EndData = DataReadByAddr(FEE_SECTOR0_STARTADDRESS + SECTORLEN - 2 * ACTUAL_DATALEN_SIZE);
    
    // 读取SECTOR1的两个关键地址的值
    sector1StartData = DataReadByAddr(FEE_SECTOR1_STARTADDRESS);
    sector1EndData = DataReadByAddr(FEE_SECTOR1_STARTADDRESS + SECTORLEN - 2 * ACTUAL_DATALEN_SIZE);
    
    // 判定SECTOR0是否为空
    if((sector0StartData == 0xFFFF) && (sector0EndData == 0xFFFF))
    {
        sector0Empty = 1;
    }
    
    // 判定SECTOR1是否为空
    if((sector1StartData == 0xFFFF) && (sector1EndData == 0xFFFF))
    {
        sector1Empty = 1;
    }
    
    // 扇区选择规则
    if(sector0Empty && sector1Empty)
    {
        // 当SECTOR0和SECTOR1均为空时，返回SECTOR0作为写入起始扇区
        return FEE_SECTOR0_STARTADDRESS;
    }
    else if(sector0Empty && !sector1Empty)
    {
        // 当SECTOR0为空而SECTOR1非空时，返回SECTOR1
        return FEE_SECTOR1_STARTADDRESS;
    }
    else if(!sector0Empty && sector1Empty)
    {
        // 当SECTOR1为空而SECTOR0非空时，返回SECTOR0
        return FEE_SECTOR0_STARTADDRESS;
    }
    else
    {
        // 当两个扇区均非空时，清空两个扇区，返回SECTOR0
        DataEraseProcess(FEE_SECTOR0_STARTADDRESS, SECTORLEN);
        DataEraseProcess(FEE_SECTOR1_STARTADDRESS, SECTORLEN);
        return FEE_SECTOR0_STARTADDRESS;
    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EEIf_FindLatestAddress
* 
* Description   : 根据指定标志位查找最新的可写入地址或可读取地址
* 
* Inputs        : findType - 查找类型，FIND_LATEST_READ_ADDRESS表示查找可读取地址，FIND_LATEST_WRITE_ADDRESS表示查找可写入地址
* 
* Outputs       : 成功时返回计算得到的地址，失败时返回0xFFFFFFFF
* 
* Limitations   : None
*                 
************************************************************************************************
END_FUNCTION_HDR */
static uint32 EEIf_FindLatestAddress(uint8 findType)
{
    uint32 latestSector = 0;
    uint32 latestAddress = 0;
    uint32 sectorStart = 0;
    uint32 sectorEnd = 0;
    uint16 data = 0;
    uint32 currentAddr = 0;
    uint32 nextSector = 0;
    
    // 调用EEIf_DetermineLatestSector函数获取当前有效的SECTOR
    latestSector = EEIf_DetermineLatestSector();
    
    // 验证SECTOR的有效性
    if(latestSector == 0xFFFFFFFF)
    {
        // SECTOR无效，返回错误
        return 0xFFFFFFFF;
    }
    
    // 设置当前SECTOR的起始和结束地址
    if(latestSector == FEE_SECTOR0_STARTADDRESS)
    {
        sectorStart = FEE_SECTOR0_STARTADDRESS;
        sectorEnd = FEE_SECTOR0_STARTADDRESS + SECTORLEN;
        nextSector = FEE_SECTOR1_STARTADDRESS;
    }
    else if(latestSector == FEE_SECTOR1_STARTADDRESS)
    {
        sectorStart = FEE_SECTOR1_STARTADDRESS;
        sectorEnd = FEE_SECTOR1_STARTADDRESS + SECTORLEN;
        nextSector = FEE_SECTOR0_STARTADDRESS;
    }
    else
    {
        // SECTOR无效，返回错误
        return 0xFFFFFFFF;
    }
    
    // 按照DATALEN长度遍历整个SECTOR空间，定位最后一个包含VALIDBLOCK_FLAG标志的地址
    latestAddress = 0;
    currentAddr = sectorStart;
    while(currentAddr < sectorEnd)
    {
        data = DataReadByAddr(currentAddr);
        if(data == VALIDBLOCK_FLAG)
        {
            latestAddress = currentAddr;
        }
        // 计算实际占用空间：使用宏定义ACTUAL_DATALEN_SIZE
        currentAddr += ACTUAL_DATALEN_SIZE;
    }
    
    // 处理未找到包含VALIDBLOCK_FLAG地址的情况
    if(latestAddress == 0)
    {
        // 未找到包含VALIDBLOCK_FLAG的地址，创建默认值0的全新数据块，返回SECTOR起始地址
        if(findType == FIND_LATEST_READ_ADDRESS)
        {
            uint8 buf[1] = {0};
            EEIf_Write(0, 1, buf);
        }
        return sectorStart;
    }
    
    // 根据标志位确定返回可读取地址还是可写入地址
    if(findType == FIND_LATEST_READ_ADDRESS)
    {
        // 直接返回查找到的包含VALIDBLOCK_FLAG的地址
        return latestAddress;
    }
    else if(findType == FIND_LATEST_WRITE_ADDRESS)
    {
        // 基础地址为包含VALIDBLOCK_FLAG的地址 + ACTUAL_DATALEN_SIZE
        uint32 baseAddress = latestAddress + ACTUAL_DATALEN_SIZE;
        
        // 执行边界检测：验证当前SECTOR剩余空间是否能容纳DATALEN长度的数据
        if((sectorEnd - baseAddress) >= ACTUAL_DATALEN_SIZE)
        {
            // 若剩余空间充足：返回计算得到的基础地址
            return baseAddress;
        }
        else
        {
            // 若剩余空间不足：将最新数据存储到另一个SECTOR
            // 将起始地址为latestAddress、长度为DATALEN的内存数据复制到nextSector
            uint32 blockCount = ACTUAL_DATALEN_SIZE / BLOCKSIZE;
            uint8 blockBuffer[BLOCKSIZE];
            uint32 i;
            
            // 按BLOCKSIZE分块复制数据
            for(i = 0; i < blockCount; i++)
            {
                // 读取源数据到临时缓冲区
                DataReadProcess(latestAddress - FEE_SECTOR0_STARTADDRESS + i * BLOCKSIZE, blockBuffer, BLOCKSIZE);
                
                // 写入到目标地址
                DataWriteProcess(nextSector - FEE_SECTOR0_STARTADDRESS + i * BLOCKSIZE, blockBuffer, BLOCKSIZE);
            }
            
            // 将sectorStart所在的sector全部erase
            DataEraseProcess(sectorStart - FEE_SECTOR0_STARTADDRESS, SECTORLEN);
            
            // 返回复制完成后的下一个可用地址
            return nextSector + ACTUAL_DATALEN_SIZE;
        }
    }
    else
    {
        // 无效的查找类型，返回错误
        return 0xFFFFFFFF;
    }
}
