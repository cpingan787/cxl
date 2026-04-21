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

#include "Diag_Callout.h"
#include "FlsIf.h"
#include "r_fcl_types.h"
#include "Os.h"
//#include "fcl_user.h"


/**********************************************************************************************
*  static Services 
***********************************************************************************************/
static uint8 FlsIf_PageBuffer[FLSIF_MAX_PAGE_SIZE];
typedef enum
{
    FlsIf_NoInit,
    FlsIf_OK,
    FlsIf_NOT_OK
}FlsIf_StateType;
static   FlsIf_StateType  FlsIf_State;

static uint8 FlsIf_GetBlockNum(uint32 phyaddr,uint8* blocknum);
static uint8 FlsIf_ConvertAddress(uint32 logicaddr,uint32* phyaddr);
static uint8 FlsIf_GetSectorIdx(uint32 phyaddr, uint32* sectorIdx);
/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_GetBlockNum
*
* Description   : this function will caculate  the input physical address in which physical block
*
* Inputs        : phyaddr-physical addresss
*                   *blocknum-the blocknum                          
* Outputs       : the input phyaddr valid or not
* 
* Limitations   : Only for HiBoot 
*                 
************************************************************************************************
END_FUNCTION_HDR */
static uint8 FlsIf_GetBlockNum(uint32 phyaddr,uint8* blocknum)
{
    uint8 tem = E_NOT_OK;
    uint8 i = 0;

    for(i = 0 ; i < FLSIF_BLOCK_NUM ; i++)
    {
        if((phyaddr >= FlsIf_Block[i].startaddress)
            && (phyaddr < FlsIf_Block[i].startaddress + FlsIf_Block[i].length))
        {
            /* the addr is in "i" block*/
            * blocknum = i;
            tem = E_OK;
            break;
        }
    }

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_ConvertAddress
*
* Description   : this function will convert the logic address to physical address
*
* Inputs        : logicaddr-logic addresss
*                   phyaddr-    physical address                
* Outputs       : the input logicaddr valid or not
* 
* Limitations   : Only for HiBoot 
*                 
************************************************************************************************
END_FUNCTION_HDR */

static uint8 FlsIf_ConvertAddress(uint32 logicaddr, uint32* phyaddr)
{
    uint8 tem = E_OK;
    #if(STD_OFF == FLSIF_CONVERTADDRESS)
    *phyaddr = logicaddr;
    #else
    #endif

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_Init
*
* Description   : this function will call FlashDriverInit and init all the parameters that FlsiIf need
*
* Inputs        : None
*
* Outputs       : None
* 
* Limitations   : Only for HiBoot 
*                 
************************************************************************************************
END_FUNCTION_HDR */
uint8 FlsIf_Init(void)
{
    uint8 tem = E_OK;
#if 0
    flsdrv_header_t * p = (flsdrv_header_t*)FLASH_DRIVER_STARTADDRESS;
    flsdrv_para_t temParamDrv = {0};
    p->init(&temParamDrv);
    tem = temParamDrv.err_code;
#endif

    FCL_Init();
    if(tem == E_OK)
    {
        FlsIf_State = FlsIf_OK;
    }
    else
    {
        FlsIf_State = FlsIf_NOT_OK;
    }
    return tem;
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
uint8 FlsIf_DeInit(void)
{
    uint8 tem = E_OK;

   // flsdrv_header_t * p = (flsdrv_header_t*)FLASH_DRIVER_STARTADDRESS;

   // flsdrv_para_t temParamDrv = {0};

   // p->deinit(&temParamDrv);

   // tem = temParamDrv.err_code;

    if(tem == E_OK)
    {
        FlsIf_State = FlsIf_NoInit;
    }
    else
    {
        FlsIf_State = FlsIf_NOT_OK;
    }

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_Write
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
uint8 FlsIf_Write(uint32 sAddr, uint32 size, uint8* buf)
{
    uint8  blocknum = 0;
    uint32 addr = 0;
    /*
    1- get physical addr;2-get blocknum;3-if the physical addr align to page
    step 1&2 will check the address range
    */
    uint8  tem = E_OK;
    uint32 len = size;
    uint8* sptr= buf;
    uint32 pageSize = 0;
    #if 0
    flsdrv_para_t temParamDrv = {0};
    flsdrv_header_t * p = (flsdrv_header_t*)FLASH_DRIVER_STARTADDRESS;
    #endif
    if((FlsIf_State == FlsIf_OK) && (len > 0U))
    {
        if((E_OK == FlsIf_ConvertAddress(sAddr, &addr)) &&
            (E_OK == FlsIf_GetBlockNum(addr, &blocknum)) &&
            (0U == (addr % FlsIf_Block[blocknum].pagesize)))
        {
            /*OK*/
        }
        else
        {
            tem = E_NOT_OK ;
        }

        /* write cycle */
        while( (len > 0U) && (tem == E_OK) )
        {
            pageSize = FlsIf_Block[blocknum].pagesize;
            /* copy data*/
            if(len >= pageSize)
            {
                CommF_DataCopy((uint8*)FlsIf_PageBuffer, (uint8*)sptr, pageSize);
            }
            else
            {
                /* copy the residual data*/
                CommF_DataCopy((uint8*)FlsIf_PageBuffer, (uint8*)sptr, len);
                /* fill the last page with erase value*/
                CommF_DataSet(&FlsIf_PageBuffer[len], FLSIF_ERASE_VALUE, (pageSize - len));
                len = pageSize;
            }

            /* feeddog handle */
            #if(STD_ON == FLSIF_PASS_FEEDDOG)
            /*pass to flash driver*/
            temParam.wdTriggerFct = drvPar->memFeedDog;
            #else
            /* feed here */
            Diag_WdgFeed();
            #endif
            Diag_NRC78Send();
            #if 0
            /* update parameter */
            temParamDrv.addr = addr;
            temParamDrv.len = pageSize;
            temParamDrv.pbuf = FlsIf_PageBuffer;
            /***Mcal_DisableAllInterrupts();*/
            /* call flash driver write  */
            p->write(&temParamDrv);
            #endif
            SuspendAllInterrupts();
            tem = FCL_Handel(R_FCL_CMD_WRITE, FlsIf_PageBuffer, addr, 1);
            ResumeAllInterrupts();
            /***Mcal_EnableAllInterrupts();*/
            /* get error code */
            if(tem == E_OK)
            {
                addr = addr + pageSize;
                len  = len  - pageSize;
                sptr = &sptr[pageSize];

                if((len>0)&&(addr >= FlsIf_Block[blocknum].startaddress + FlsIf_Block[blocknum].length))
                {
                    /* the last block has been write */
                    blocknum++;
                    if(blocknum>=FLSIF_BLOCK_NUM)
                    {
                        /* all blocks has been write */
                        len = 0;
                    }
                    else
                    {
                        /* start next block  */
                        addr = FlsIf_Block[blocknum].startaddress;
                    }
                }
            }
            else
            {
                tem = E_NOT_OK;
            }
        }
    }
    else
    {
        tem = E_NOT_OK;
    }
    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_Erase
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
uint8 FlsIf_Erase(uint32 sAddr, uint32 size)
{
    uint8  blocknum = 0;
    uint32 addr = 0;
    uint32 len = size;
    uint32 sectorIdx = 0;
    /*
    1- get physical addr;2-get blocknum;3-if the physical addr algin to sector
    step 1&2 will check the address range
    */
    uint8  tem = E_OK;
    #if 0
    flsdrv_header_t * p = (flsdrv_header_t*)FLASH_DRIVER_STARTADDRESS;
    flsdrv_para_t temParamDrv = {0};
    #endif
    if(FlsIf_State == FlsIf_OK)
    {
        if((E_OK == FlsIf_ConvertAddress(sAddr,&addr))&&
           (E_OK == FlsIf_GetBlockNum(addr,&blocknum))&&
           (0 == ((addr-FlsIf_Block[blocknum].startaddress)%FlsIf_Block[blocknum].sectorsize))&&
           (E_OK == FlsIf_GetSectorIdx(addr, &sectorIdx)))
        {
            /*OK*/
        }
        else
        {
            tem = E_NOT_OK ;
        }
   
        /* erase cycle ,erase all valid sectors start from tarAddr ,in length*/
        while((len > 0) && (tem == E_OK))
        {
            /* feeddog handle */
            #if(STD_ON == FLSIF_PASS_FEEDDOG)
            /*pass to flash driver*/
            temParam.wdTriggerFct = drvPar->memFeedDog;
            #else
            /* feed here */
            Diag_WdgFeed();
            #endif
            Diag_NRC78Send();
            #if 0
            /* update parameter */
            temParamDrv.addr = addr;
            temParamDrv.len = FlsIf_Block[blocknum].sectorsize;
            /* call flash driver erase  */
            p->erase(&temParamDrv);
            #endif
	        SuspendAllInterrupts();
            tem = FCL_Handel(R_FCL_CMD_ERASE, 0 , sectorIdx, 1);
            ResumeAllInterrupts();
            
            /* get error code */
            if(E_OK == tem)
            {
                addr = addr + FlsIf_Block[blocknum].sectorsize;

                if(len >= FlsIf_Block[blocknum].sectorsize)
                {
                    len  = len - FlsIf_Block[blocknum].sectorsize;
                }
                else
                { 
                    len  = 0;
                }
                
                /* Get sector info for the next address */
                if (len > 0)
                {
                    if (E_OK != FlsIf_GetSectorIdx(addr, &sectorIdx))
                    {
                        tem = E_NOT_OK;
                    }
                    else if((addr >= FlsIf_Block[blocknum].startaddress + FlsIf_Block[blocknum].length))
                    {
                         /* the last block has been erased */
                         blocknum++;

                         if(blocknum >= FLSIF_BLOCK_NUM)
                         {
                          /* all blocks has been erased */
                           tem = E_NOT_OK;
                         }
                         else
                         {
                             /* start next block  */
                             addr = FlsIf_Block[blocknum].startaddress;
                             /* Get sector info for the new block start address */
                             if (E_OK != FlsIf_GetSectorIdx(addr, &sectorIdx))
                             {
                                 tem = E_NOT_OK;
                             }
                         }
                    }
                }
            }
            else
            {
                tem = E_NOT_OK;
            }
        }
    }
    else
    {
        tem = E_NOT_OK;
    }
    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_Read
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
uint8 FlsIf_Read(uint32 sAddr, uint32 size, uint8* buf)
{
    uint32 addr = 0;
    uint32 i    = 0;
    uint8* ptr;
    /* 1- get physical addr */
    uint8  tem = (FlsIf_ConvertAddress(sAddr, &addr));
    /* not supported read when the address is not continuous */
    #if(STD_OFF == FLSIF_SPECIAL_READ)
    if(tem == E_OK)
    {
        while(i < size)
        {
            ptr = (uint8 *)(addr);
            buf[i] = ptr[i];
            i++;
        }
    }
    #else
    /* add your code*/

    #endif

    return tem;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : FlsIf_GetSectorIdx
* 
* Description   : this function will calculate the sector index for the given physical address
*                 - For address range 0x00000000-0x0000FFFF, sector size is 8KB (8192 bytes)
*                 - For address range 0x00010000-0x1FFFFFFF, sector size is 32KB (32768 bytes)
* 
* Inputs        : phyaddr - physical address
*                 *sectorIdx - pointer to store the sector index
* 
* Outputs       : E_OK if the address is valid, E_NOT_OK otherwise
* 
* Limitations   : Only for HiBoot
*                 Address must be within 0x00000000-0x1FFFFFFF
************************************************************************************************
END_FUNCTION_HDR */
static uint8 FlsIf_GetSectorIdx(uint32 phyaddr, uint32* sectorIdx)
{
    uint8 tem = E_NOT_OK;
    const uint32 SECTOR_SIZE_8KB = 0x2000U;
    const uint32 SECTOR_SIZE_32KB = 0x8000U;
    const uint32 ADDRESS_BOUNDARY = 0x0000FFFFU;
    
    /* Check if input pointer is valid */
    if (sectorIdx != NULL)
    {
        /* Check if address is within valid range */
        if (phyaddr <= 0x1FFFFFFFU)
        {
            if (phyaddr <= ADDRESS_BOUNDARY)
            {
                /* Address is in 0x00000000-0x0000FFFF range, use 8KB sector size */
                *sectorIdx = (uint32)(phyaddr / SECTOR_SIZE_8KB);
            }
            else
            {
                /* Address is in 0x00010000-0x1FFFFFFF range, use 32KB sector size */
                /* Calculate sector index: 0x00000000-0x0000FFFF has 8 sectors (8KB each) */
                *sectorIdx = 8U + (uint32)((phyaddr - 0x00010000U) / SECTOR_SIZE_32KB);
            }
            tem = E_OK;
        }
    }
    
    return tem;
}



