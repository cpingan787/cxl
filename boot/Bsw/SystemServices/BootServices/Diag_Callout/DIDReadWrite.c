
#include "DIDReadWrite.h"
#include "MemM_cfg.h"
#include "FlsIf.h"
#include "EEIf.h"
#include "Dcm.h"
#include "logHal.h"

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

DID_F110_t DID_F110RamBuffer[16] = {
    { 0xF111, DID_F111_ADDR_IDX},
    { 0xF112, DID_F112_ADDR_IDX},
    { 0xF113, DID_F113_ADDR_IDX},
    { 0xF114, DID_F114_ADDR_IDX},
    { 0xF115, DID_F115_ADDR_IDX},
    { 0xF116, DID_F116_ADDR_IDX},
    { 0xF117, DID_F117_ADDR_IDX},
    { 0xF118, DID_F118_ADDR_IDX},
    { 0xF119, DID_F119_ADDR_IDX},
    { 0xF11A, DID_F11A_ADDR_IDX},
    { 0xF11B, DID_F11B_ADDR_IDX},
    { 0xF11C, DID_F11C_ADDR_IDX},
    { 0xF11D, DID_F11D_ADDR_IDX},
    { 0xF11E, DID_F11E_ADDR_IDX},
    { 0xF11F, DID_F11F_ADDR_IDX},
};

/* DID(F120) Init data*/
static uint8 InitDataF120[DID_F120_LEN] = {0xFF};//待补充
/* DID(F183) Init data*/
static uint8 InitDataF183[DID_F183_LEN] = {0xFF};//待补充
/* DID(F18A) Init data*/
static uint8 InitDataF18A[DID_F18A_LEN] = {0x56, 0x31, 0x30, 0x37, 0x38};//待补充
/* DID(F191) Init data*/
static uint8 InitDataF191[DID_F191_LEN] = {0xFF};//待补充
/* DID(F192) Init data*/
static uint8 InitDataF192[DID_F192_LEN] = {0xFF};//待补充
/* DID(F194) Init data*/
static uint8 InitDataF194[DID_F194_LEN] = {0xFF};//待补充
/* DID(F1A0) Init data*/
static uint8 InitDataF1A0[DID_F1A0_LEN] = {0xFF};//待补充
/* DID(F1A1) Init data*/
static uint8 InitDataF1A1[DID_F1A1_LEN] = {0x00, 0x00, 0x00, 0x00, 0x00};
/* DID(F1A2) Init data*/
static uint8 InitDataF1A2[DID_F1A2_LEN] = {0xB8, 0x01, 0x17, 0x00, 0x00, 0x00, 0x00, 0x04};
/* DID(F1A5) Init data*/
static uint8 InitDataF1A5[DID_F1A5_LEN] = {0x00, 0x00, 0x00};
/* DID(F1B6) Init data*/
static uint8 InitDataF1B6[DID_F1B6_LEN] = {0xFF};//待补充
/* DID(AFF2) Init data*/
static uint8 InitDataAFF2[DID_AFF2_LEN] = {0xFF};


DID_InitCfg_t DIDInitCfg[] = {
    {DID_F120_ADDR_IDX, DID_F120_LEN, InitDataF120},
    {DID_F183_ADDR_IDX, DID_F183_LEN, InitDataF183},
    {DID_F18A_ADDR_IDX, DID_F18A_LEN, InitDataF18A},
    {DID_F191_ADDR_IDX, DID_F191_LEN, InitDataF191},
    {DID_F192_ADDR_IDX, DID_F192_LEN, InitDataF192},
    {DID_F194_ADDR_IDX, DID_F194_LEN, InitDataF194},
    {DID_F1A0_ADDR_IDX, DID_F1A0_LEN, InitDataF1A0},
    {DID_F1A1_ADDR_IDX, DID_F1A1_LEN, InitDataF1A1},
    {DID_F1A2_ADDR_IDX, DID_F1A2_LEN, InitDataF1A2},
    {DID_F1A5_ADDR_IDX, DID_F1A5_LEN, InitDataF1A5},
    {DID_F1B6_ADDR_IDX, DID_F1B6_LEN, InitDataF1B6},
    {DID_AFF2_ADDR_IDX, DID_AFF2_LEN, InitDataAFF2},
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
    uint8 ValidCheckData[20] = {0};
    uint8 ReadDat_retValue = 0;
    uint8 IsValid_retValue = 0;
    Std_ReturnType ret = 5;

    TBOX_PRINT("DID_Init\n");
    
    for(uint8 i = 0; i < sizeof(DIDInitCfg)/sizeof(DIDInitCfg[0]); i++)
    {
        
        ReadDat_retValue = EEIf_Read(DIDInitCfg[i].Addr, DIDInitCfg[i].Size,ValidCheckData);
        IsValid_retValue = IsEEIfNeedInit(ValidCheckData,DIDInitCfg[i].Size);
        if ((ReadDat_retValue == E_OK) || (IsValid_retValue == E_OK))
        {
            ret = EEIf_Write(DIDInitCfg[i].Addr, DIDInitCfg[i].Size, DIDInitCfg[i].InitData);
        }
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

    switch(ProdInfo->Did)
    {
        case 0xF187:/* F187 仅可写一次 */
        {
            uint8 ReadData[DID_F187_LEN] = {0};
            /* 判断是否已写入 */
            EEIf_Read(ProdInfo->Addr, ProdInfo->Size, ReadData);
            for(uint8 i = 0; i < ProdInfo->Size; i++)
            {
                if(ReadData[i] != 0)
                {
                    retValue = E_NOT_OK;
                    TBOX_PRINT("F187 already written\n");
                    return retValue;
                }
            }
            /* 写入数据 */
            retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            break;
        }

        case 0xF1AA:
            retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            break;

        case 0xAFF1:
            retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            break;

        case 0xF121:
            retValue = EEIf_Write(ProdInfo->Addr, ProdInfo->Size, buf);
            break;

        case 0xF110:
        {
            uint8 F110NumBlocks = 0;
            uint32 F110Addr = 0; 
            EEIf_Read(DID_F110_ADDR_IDX, 1, &F110NumBlocks);
            TBOX_PRINT("F110NumBlocks = 0xF1%02X\n", DID_F110RamBuffer[F110NumBlocks].NumBlocks);
            F110Addr = DID_F110RamBuffer[F110NumBlocks].Addr;
            retValue = EEIf_Write(F110Addr, 16, buf);

            F110NumBlocks++;
            if(F110NumBlocks >= 15)
            {
                F110NumBlocks = 1;
            }
            retValue = EEIf_Write(DID_F110_ADDR_IDX, 1, &F110NumBlocks);
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

    if(ProdInfo->Did == 0xF110)
    {
        uint8 F110NumBlocks = 0;
        uint32 F110Addr = 0; 
        uint8 i = 0;
        EEIf_Read(DID_F110_ADDR_IDX, 1, &F110NumBlocks);

        if(F110NumBlocks == 0)/* 未被写入 */
        {
            for(i = 0; i < 16; i++)
            {
                buf[i] = 0x00;
            }
            retValue = E_OK;
            return retValue;
        }
        else if(F110NumBlocks == 1)
        {
            /* 读F11F判断是否是第一轮写入 */
            uint8 IsFirstWheel = 1;//是否是第一轮 1是 0否
            uint8 F11FNumBlocks[16] = {0};
            EEIf_Read(DID_F11F_ADDR_IDX, 16, &F11FNumBlocks);
            for(i = 0; i < 16; i++)
            {
                if(F11FNumBlocks[i] != 0)
                {
                    IsFirstWheel = 0;
                    break;
                }
            }

            if(IsFirstWheel == 1)
            {
                /* 是第一轮 读取F111 */
                EEIf_Read(DID_F111_ADDR_IDX, 16, buf);
            }
            else
            {
                /* 不是第一轮 读取F11F */
                for(i = 0; i < 16; i++)
                {
                    buf[i] = F11FNumBlocks[i];
                }
            }

            retValue = E_OK;
            return retValue;
        }
        else
        {
            F110Addr = DID_F110RamBuffer[F110NumBlocks - 1].Addr;
            retValue = EEIf_Read(F110Addr, 16, buf);
        }
        return retValue;
    }

    if(ProdInfo->Did == 0xF130)
    {
        uint8 F130NumBlocks = 0;
        EEIf_Read(DID_F130_ADDR_IDX, 1, &F130NumBlocks);
        TBOX_PRINT("f130: %x\n", F130NumBlocks);
        if(F130NumBlocks == 0x01)
        {
            for(uint8 i = 0; i < 32; i++)
            {
                buf[i] = 0x00;
            }
        }
        else
        {
            for(uint8 i = 0; i < 32; i++)
            {
                buf[i] = 0xFF;
            }
        }
        retValue = E_OK;
        return retValue;
    }

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


Std_ReturnType IsEEIfNeedInit(void* buff, uint32 len)
{
    uint8* p = (uint8 *)buff;
    for(uint32 i = 0; i < len; i++)
    {
        if(p[i] != 0)

        {
            return E_NOT_OK;
        }
    }
    return E_OK;
}


