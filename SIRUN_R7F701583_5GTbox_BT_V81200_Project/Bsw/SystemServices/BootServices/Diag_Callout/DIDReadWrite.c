
#include "DIDReadWrite.h"
#include "MemM_cfg.h"
#include "FlsIf.h"
#include "EEIf.h"
#include "Dcm.h"

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
uint8 DcmSessionValue = 0U;
const DIDInfo_t DID_Infos[Dcm_NUMBER_OF_DIDS] =
{
    {
        MEMM_DRV_EE, //DrvType
        0xF100, //Did
        DID_F100_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F100_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF110, //Did
        DID_F110_LEN, //Size
        DID_INFO_READ_AND_WRITE, //RW_Permission
        DID_F110_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF111, //Did
        DID_F111_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F111_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF112, //Did
        DID_F112_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F112_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF113, //Did
        DID_F113_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F113_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF114, //Did
        DID_F114_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F114_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF115, //Did
        DID_F115_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F115_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF116, //Did
        DID_F116_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F116_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF117, //Did
        DID_F117_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F117_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF118, //Did
        DID_F118_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F118_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF119, //Did
        DID_F119_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F119_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF11A, //Did
        DID_F11A_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F11A_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF11B, //Did
        DID_F11B_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F11B_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF11C, //Did
        DID_F11C_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F11C_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF11D, //Did
        DID_F11D_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F11D_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF11E, //Did
        DID_F11E_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F11E_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF11F, //Did
        DID_F11F_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F11F_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF120, //Did
        DID_F120_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F120_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF121, //Did
        DID_F121_LEN, //Size
        DID_INFO_READ_AND_WRITE, //RW_Permission
        DID_F121_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF183, //Did
        DID_F183_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F183_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_RAM, //DrvType
        0xF186, //Did
        1, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        (uint32)&DcmSessionValue, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF187, //Did
        DID_F187_LEN, //Size
        DID_INFO_READ_AND_WRITE, //RW_Permission
        DID_F187_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF18A, //Did
        DID_F18A_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F18A_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF18B, //Did
        DID_F18B_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F18B_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF18C, //Did
        DID_F18C_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F18C_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF190, //Did
        DID_F190_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F190_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF191, //Did
        DID_F191_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F191_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF192, //Did
        DID_F192_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F192_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF194, //Did
        DID_F194_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F194_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF198, //Did
        DID_F198_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F198_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1A0, //Did
        DID_F1A0_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1A0_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1A1, //Did
        DID_F1A1_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1A1_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1A2, //Did
        DID_F1A2_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1A2_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1A5, //Did
        DID_F1A5_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1A5_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1A8, //Did
        DID_F1A8_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1A8_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1A9, //Did
        DID_F1A9_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1A9_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1AA, //Did
        DID_F1AA_LEN, //Size
        DID_INFO_READ_AND_WRITE, //RW_Permission
        DID_F1AA_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF130, //Did
        DID_F130_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F130_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1B5, //Did
        DID_F1B5_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1B5_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xF1B6, //Did
        DID_F1B6_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_F1B6_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xAFF1, //Did
        DID_AFF1_LEN, //Size
        DID_INFO_READ_AND_WRITE, //RW_Permission
        DID_AFF1_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xAFF2, //Did
        DID_AFF2_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_AFF2_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xAFF5, //Did
        DID_AFF5_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_AFF5_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xAFFC, //Did
        DID_AFFC_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_AFFC_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xAFFD, //Did
        DID_AFFD_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_AFFD_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xAFFE, //Did
        DID_AFFE_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_AFFE_ADDR_IDX, //Addr
    },
    {
        MEMM_DRV_EE, //DrvType
        0xAFFF, //Did
        DID_AFFF_LEN, //Size
        DID_INFO_READ_ONLY, //RW_Permission
        DID_AFFF_ADDR_IDX, //Addr
    }
};

/* DID(F183) write data*/
uint8 WriteDataF198[DID_F198_LEN] =
{
    0x42, 0x44, 0x55, 0x20, 0x24, 0x03, 0x13, 0x30, 0x30, 0x35
};

/*DID(F187) write data */
uint8 WriteDataF187[DID_F187_LEN] =
{
    0x42, 0x44, 0x30, 0x36, 0x30
};

/*DID(F18A) write data */
uint8 WriteDataF18A[DID_F18A_LEN] =
{
    0x56, 0x31, 0x30, 0x37, 0x38
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
    // uint8 ReadDataF18A[DID_F18A_LEN] = {0};//渚涘簲鍟咺D锛宺yn
    // uint8 ReadDataF187[DID_F187_LEN] = {0};//杞﹁締鍒堕�犲晢闆朵欢鍙�,ryn
    uint8 ReadDat_retValue = 0;
    uint8 IsValid_retValue = 0;

//    ReadDat_retValue = DID_Read(ReadDataF183, &DID_Infos[1]);
//    IsValid_retValue = CommF_DataCompare(ReadDataF183,WriteDataF183,DID_F183_LEN);
//    if((ReadDat_retValue == E_NOT_OK) || (IsValid_retValue == E_NOT_OK))
//    {
//        DID_Write(WriteDataF183, &DID_Infos[1]);
//    }

    // ReadDat_retValue = DID_Read(ReadDataF18A, &DID_Infos[3]);
    // IsValid_retValue = CommF_DataCompare(ReadDataF18A,WriteDataF18A,DID_F18A_LEN);
    // if ((ReadDat_retValue == E_NOT_OK) || (IsValid_retValue == E_NOT_OK))
    // {
    //     DID_Write(WriteDataF18A, &DID_Infos[3]);
    // }

    // ReadDat_retValue = DID_Read(ReadDataF187, &DID_Infos[2]);
    // IsValid_retValue = CommF_DataCompare(ReadDataF187,WriteDataF187,DID_F187_LEN);
    // if ((ReadDat_retValue == E_NOT_OK) || (IsValid_retValue == E_NOT_OK))
    // {
    //     DID_Write(WriteDataF187, &DID_Infos[2]);
    // }
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
            if(ProdInfo->Did == 0xF187)
            {
                uint8 AllowWrite = 0x00;
                Diag_FlagRead(ALLOW_F187_WRITE_ID, &AllowWrite);
                if(AllowWrite)
                {
                    retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
                    AllowWrite = 0x00;
                    Diag_FlagWrite(ALLOW_F187_WRITE_ID, &AllowWrite);
                }
                else
                {
                    retValue = E_NOT_OK;
                }
            }
            else
            {
                retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            }
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
            if(ProdInfo->Addr == (uint32)&DcmSessionValue)
            {
                DcmSessionValue = GetDcmState_Session();
            }
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





