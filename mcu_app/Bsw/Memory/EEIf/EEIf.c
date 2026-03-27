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


/**********************************************************************************************
* FUNCTION DECLARATION
***********************************************************************************************/
static uint16 DataReadByAddr(uint32 addr);
static uint8 DataEraseProcess(uint32 TargetAddress, uint32 Length);
static uint8 DataReadProcess(uint32 SourceAddress, uint8 * TargetAddressPtr,uint32 Length);
static uint8 DataReadBlockProcess(uint8* buf);
static uint8 DataWriteProcess(uint32 TargetAddress, const uint8 * SourceAddressPtr,uint32 Length);
static uint8 IsDateValid(void);
static void CommF_DataCopy(void * des, void * src,uint32 srcSize);
uint32 ValidSectorAdd(uint32 Sector0,uint32 Sector1);

uint8 FeeUser_Data_Store[DATALEN];

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
* Function Name : Diag_FlagCompare
*
* Description   : Compare the fee data with the input data
*
* Inputs        : flagId   size data  targetData
*
* Outputs       : E_OK/E_NOT_OK
*
* Limitations   : None
*
************************************************************************************************
END_FUNCTION_HDR */
static uint8 IsDateValid(void)
{
    uint8 retValue = E_NOT_OK;
    uint8 readData[DATALEN];
    retValue = DataReadBlockProcess(readData);
    if(retValue == E_OK)
    {
        retValue = DataCompare(readData, FeeUser_Data_Store, DATALEN);
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
* Description   : this function will
*
* Inputs        : drvPar
*
* Outputs       : the read work succeed or not
* 
* Limitations   : Only for HiBoot 
*                 
************************************************************************************************
END_FUNCTION_HDR */
uint16 startStr = 0;
uint16  endStr = 0;
uint8 EEIf_Write(uint32 sAddr, uint32 size, uint8* buf)
{
    #if 0
    uint8 tem = E_NOT_OK;
    uint32 startAddr = FEE_SECTOR0_STARTADDRESS;//uint32,ryn,0x10000000
    FeeUser_Data_Store[0] = VALIDBLOCK_FLAG;
    CommF_DataCopy(&(FeeUser_Data_Store[sAddr]),buf, size);
    tem = DataEraseProcess(startAddr - FEE_SECTOR0_STARTADDRESS, SECTORLEN);
    tem = DataWriteProcess(FEE_SECTOR0_STARTADDRESS - FEE_SECTOR0_STARTADDRESS, FeeUser_Data_Store, DATALEN);
  #endif
 
    uint32 i;
    uint8 tem = E_NOT_OK;
    uint32 startData = 0;
     uint32 endData = 0;
    uint32 startAddr = FEE_SECTOR0_STARTADDRESS;//uint32,ryn,0x10000000
    uint32 endAddr = FEE_SECTOR0_FINAL_BANK_STARTADD;//uint32,ryn,0x10001FC0
    FeeUser_Data_Store[0] = (VALIDBLOCK_FLAG >> 8) & 0xff;
    FeeUser_Data_Store[1] =  VALIDBLOCK_FLAG & 0xff;
    CommF_DataCopy(&(FeeUser_Data_Store[sAddr]),buf, size);

    startData = DataReadByAddr(startAddr); 
    endData = DataReadByAddr(endAddr);
    
    if((startData != 0xFFFF ) && (endData != 0xFFFF))
    {
        tem = DataWriteProcess(FEE_SECTOR1_STARTADDRESS - FEE_SECTOR0_STARTADDRESS, FeeUser_Data_Store, DATALEN);  //0x2000
        if(tem == E_OK)
        {
            tem = IsDateValid();
        }
        //Erase data to FEE
        tem = DataEraseProcess(startAddr - FEE_SECTOR0_STARTADDRESS, SECTORLEN);                                                        
    }
    if(tem == E_NOT_OK)
    {
        startAddr = FEE_SECTOR1_STARTADDRESS;//0x10002000
        endAddr = FEE_SECTOR1_FINAL_BANK_STARTADD;//0x10003FC0
	startData = DataReadByAddr(startAddr);
	endData = DataReadByAddr(endAddr);
        if((startData != 0xFFFF ) && (endData != 0xFFFF))
        {
            tem = DataWriteProcess(FEE_SECTOR0_STARTADDRESS - FEE_SECTOR0_STARTADDRESS, FeeUser_Data_Store, DATALEN);
                                                               //0x00000000
            if(tem == E_OK)
            {
                tem = IsDateValid();
            }
            //Erase data too FEE
            tem = DataEraseProcess(startAddr - FEE_SECTOR0_STARTADDRESS, SECTORLEN);
                                                        //0x00002000,0x2000
        }
    }
    if(tem == E_NOT_OK)
    {
        startAddr = FEE_SECTOR1_STARTADDRESS;//0x10002000
        startData = DataReadByAddr(startAddr);
        if(startData == 0xFFFF)
        {
            startAddr = FEE_SECTOR0_STARTADDRESS;//0x10000000
        }
        for(i = 0; i < BLOCKSIZE; i++)
        {
            uint32 addrData = DataReadByAddr(startAddr + i * 64);
            if(addrData == 0xFFFF)
            {
                //Write
                tem =DataWriteProcess(startAddr - FEE_SECTOR0_STARTADDRESS + i * 64 , FeeUser_Data_Store, DATALEN);
                if(tem == E_OK)
                {
                    tem = IsDateValid();
                }
                break;
            }
        }
    }
      
    return tem;
}
static uint8 DataReadBlockProcess(uint8* buf)
{
    #if 0
    uint8 tem = E_NOT_OK;
    uint32 startAddr = FEE_SECTOR0_STARTADDRESS;
    uint8 *pdata = (uint8*)(startAddr);
    CommF_DataCopy(buf, pdata, DATALEN);
    tem = E_OK;
    #endif
    uint32 i;
    uint8 tem = E_NOT_OK;

    uint32 startAddr = FEE_SECTOR0_STARTADDRESS;//uint32,ryn,0x10000000
    uint32 startData = 0;
    startData = DataReadByAddr(startAddr);

    if(startData == 0xFFFF)
    {
        startAddr = FEE_SECTOR1_STARTADDRESS;
    }
    startData = DataReadByAddr(startAddr);

    if(startData == 0xFFFF)
    {
        startAddr = INVALIDSECTOR;
    }

    if(startAddr != INVALIDSECTOR)
    {

        for(i = 0; i < BLOCKSIZE; i++)
        {
            uint32 SourceAddress  = startAddr + i * DATALEN;
            uint8  TargetAddressPtr[DATALEN] = {0};
            DataReadProcess(SourceAddress - FEE_SECTOR0_STARTADDRESS, TargetAddressPtr, DATALEN);
            if((TargetAddressPtr[0] == ((VALIDBLOCK_FLAG >> 8) & 0xff)) && 
                (TargetAddressPtr[1] == (VALIDBLOCK_FLAG & 0xff)))
            {
                CommF_DataCopy(buf, TargetAddressPtr, DATALEN);
                tem = E_OK;
            }
            else
            {
            }
        }
    }

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : EEIf_Read
*
* Description   : this function will check and caculate the input parameters and  call FlashDriverWrite
*
* Inputs        : drvPar:standard hiboot mm input parameter
*
*
* Outputs       : the read work succeed or not
*
* Limitations   : Only for HiBoot
*
************************************************************************************************
END_FUNCTION_HDR */
uint32 SourceAddress = 0 ;  
uint8 EEIf_Read(uint32 sAddr, uint32 size, uint8* buf)
{
#if 0
    uint8 tem = E_NOT_OK;
    uint32 startAddr = FEE_SECTOR0_STARTADDRESS;
    uint8 *pdata = (uint8*)(startAddr);
    CommF_DataCopy(buf, pdata+(sAddr), size);
    tem = E_OK;
#endif
    uint32 i = 0;
    uint8 tem = E_NOT_OK;
    uint8 *pdata = NULL_PTR;
    uint32 ValidSector_Addr = ValidSectorAdd(FEE_SECTOR0_STARTADDRESS,FEE_SECTOR1_STARTADDRESS);
    if(ValidSector_Addr != INVALIDSECTOR)
    {
        for(i = 0; i < BLOCKSIZE; i++)
        {
            SourceAddress  = ValidSector_Addr +(BLOCKSIZE - 1 - i) * 64;
            uint8  TargetAddressPtr[DATALEN] = {0};
            DataReadProcess(SourceAddress - FEE_SECTOR0_STARTADDRESS, TargetAddressPtr, DATALEN);
            if((TargetAddressPtr[0] == ((VALIDBLOCK_FLAG >> 8) & 0xff)) && 
                (TargetAddressPtr[1] == (VALIDBLOCK_FLAG & 0xff)))
            {
                CommF_DataCopy(buf, TargetAddressPtr + (sAddr), size);
                tem = E_OK;
                break;
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




