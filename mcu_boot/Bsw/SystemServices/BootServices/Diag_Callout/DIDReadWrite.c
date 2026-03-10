
#include "DIDReadWrite.h"
#include "MemM_cfg.h"
#include "FlsIf.h"
#include "EEIf.h"

/**********************************************************************************************************************
 *  GLOBAL DATA PROTOTYPES
 *********************************************************************************************************************/

/*********************************************************************************************
 * DID_Infos
 * The list of 22/2E service support  DID
 * Config parameter :
 * DrvType          Read/write driver type
 * Did:             Support  DID
 * Size:             Data size of DID
 * RW_Permission:     Read or Write attributes config
 * Addr:            the address
 *********************************************************************************************/
const DIDInfo_t DID_Infos[Dcm_NUMBER_OF_DIDS] =
{
    {
        MEMM_DRV_EE, //2,DrvType
        0xF199, //Did
        DID_F199_LEN, //9,Size
        DID_INFO_READ_AND_WRITE, //3,RW_Permission
        DID_F199_ADDR_IDX, //35.Addr
    },
    {
        MEMM_DRV_EE,//2
        0xF198,
        DID_F198_LEN,//0x0A
        DID_INFO_READ_AND_WRITE,//3
        DID_F198_ADDR_IDX,//2
    },
    {
        MEMM_DRV_EE,//2
        0xF187,
        DID_F187_LEN,//0x0C
        DID_INFO_READ_AND_WRITE,//3
        DID_F187_ADDR_IDX,//12
    },
    {
        MEMM_DRV_EE,//2
        0xF18A,
        DID_F18A_LEN,//0x0A
        DID_INFO_READ_AND_WRITE,//3
        DID_F18A_ADDR_IDX,//25
    },
    {
        MEMM_DRV_FLASH,//2
        0xAFFB,
        DID_AFFB_LEN,//0x02
        DID_INFO_READ_ONLY,//0x01U
        DID_F18A_ADDR_IDX,//25
    },
    {
        MEMM_DRV_FLASH,//2
        0xAFFC,
        DID_AFFC_LEN,//0x02
        DID_INFO_READ_ONLY,//0x01U
        DID_F18A_ADDR_IDX,//25
    },
    {
        MEMM_DRV_FLASH,//2
        0xAFFD,
        DID_AFFD_LEN,//0x01
        DID_INFO_READ_ONLY,//0x01U
        DID_F18A_ADDR_IDX,//25
    },
    {
        MEMM_DRV_FLASH,//2
        0xAFFE,
        DID_AFFE_LEN,//0x01
        DID_INFO_READ_ONLY,//0x01U
        DID_F18A_ADDR_IDX,//25
    },
    {
        MEMM_DRV_FLASH,//2
        0xAFFF,
        DID_AFFF_LEN,//0x01
        DID_INFO_READ_ONLY,//0x01U
        DID_F18A_ADDR_IDX,//25
    },
};

/* DID(F183) write data*/
uint8 WriteDataF198[DID_F198_LEN] =
{
    0x42, 0x44, 0x55, 0x20, 0x24, 0x03, 0x13, 0x30, 0x30, 0x35
};

/*DID(F187) write data */
uint8 WriteDataF187[DID_F187_LEN] =
{
    0x42, 0x44, 0x30, 0x36, 0x30, 0x33, 0x30, 0x30, 0x30, 0x30, 0x30, 0x33
};

/*DID(F18A) write data */
uint8 WriteDataF18A[DID_F18A_LEN] =
{
    0x56, 0x31, 0x30, 0x37, 0x38, 0x35, 0x31, 0x30, 0x20, 0x20
};


/**********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 *********************************************************************************************************************/

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : DID_Init
* Description   : This function writes the specified DID data when boot is initialized
*
* Inputs        : None
*
* Outputs       : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void DID_Init(void)
{
//    uint8 ReadDataF183[DID_F183_LEN] = {0};//寮曞绋嬪簭鐗堟湰鍙凤紝ryn
    uint8 ReadDataF18A[DID_F18A_LEN] = {0};//渚涘簲鍟咺D锛宺yn
    uint8 ReadDataF187[DID_F187_LEN] = {0};//杞﹁締鍒堕�犲晢闆朵欢鍙�,ryn
    uint8 ReadDat_retValue = 0;
    uint8 IsValid_retValue = 0;

//    ReadDat_retValue = DID_Read(ReadDataF183, &DID_Infos[1]);
//    IsValid_retValue = CommF_DataCompare(ReadDataF183,WriteDataF183,DID_F183_LEN);
//    if((ReadDat_retValue == E_NOT_OK) || (IsValid_retValue == E_NOT_OK))
//    {
//        DID_Write(WriteDataF183, &DID_Infos[1]);
//    }

    ReadDat_retValue = DID_Read(ReadDataF18A, &DID_Infos[3]);
    IsValid_retValue = CommF_DataCompare(ReadDataF18A,WriteDataF18A,DID_F18A_LEN);
    if ((ReadDat_retValue == E_NOT_OK) || (IsValid_retValue == E_NOT_OK))
    {
        DID_Write(WriteDataF18A, &DID_Infos[3]);
    }

    ReadDat_retValue = DID_Read(ReadDataF187, &DID_Infos[2]);
    IsValid_retValue = CommF_DataCompare(ReadDataF187,WriteDataF187,DID_F187_LEN);
    if ((ReadDat_retValue == E_NOT_OK) || (IsValid_retValue == E_NOT_OK))
    {
        DID_Write(WriteDataF187, &DID_Infos[2]);
    }
}
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : DID_Write
* Description   : This function writes the specified DID data to the spedified NvM area
*
* Inputs        : 1:buf(Area to store specified DID data)   2:ProdInfo(The information of the specified DID)
*
* Outputs       : 0:E_OK; 1:E_NOT_OK
*
* Limitations   : This function is a callback for Dcm module.
*
************************************************************************************************
END_FUNCTION_HDR */
Std_ReturnType DID_Write(uint8 * buf, const DIDInfo_t* ProdInfo)
{
    Std_ReturnType retValue = E_NOT_OK;//uint8,ryn

    switch(ProdInfo->DrvType)
    {
        case MEMM_DRV_RAM:
        {
            CommF_DataCopy((void *)ProdInfo->Addr, (void *)buf, ProdInfo->Size);
            retValue = E_OK;
            break;
        }
        case MEMM_DRV_FLASH:
        {
            retValue = FlsIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }
        case MEMM_DRV_EE:
        {
            retValue = E_OK ;//= EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }
        default:
        {
            /*do nothing*/
            break;
        }
    }

    return retValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : DID_Read
* Description   : This function reads the specified DID data from the spedified NvM area
*
* Inputs        : 1:buf(Area to store specified DID data)   2:ProdInfo(The information of the specified DID)
*
* Outputs       : 0:E_OK; 1:E_NOT_OK
*
* Limitations   : This function is a callback for Dcm module.
*
************************************************************************************************
END_FUNCTION_HDR */
Std_ReturnType DID_Read(uint8 * buf, const DIDInfo_t * ProdInfo)
{
    Std_ReturnType retValue = E_NOT_OK;//uint8.ryn

    switch(ProdInfo->DrvType)
    {
        case MEMM_DRV_RAM:
        {
            CommF_DataCopy((void *)buf, (void *)ProdInfo->Addr, ProdInfo->Size);
            retValue = E_OK;
            break;
        }
        case MEMM_DRV_FLASH:
        {
            retValue = FlsIf_Read(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }
        case MEMM_DRV_EE:
        {
            retValue = EEIf_Read(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }
        default:
        {
            /*do nothing*/
            break;
        }
    }

    return retValue;
}





