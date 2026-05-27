 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : Common.c
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
*   1.0         2024/07/16    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/
/***************************************************************************************************
*                                         INCLUDE FILES
***************************************************************************************************/
#include "Common.h"
#include "CommonMacroDefine.h"
/***************************************************************************************************
*                                       DATA PROTOTYPES
***************************************************************************************************/
volatile uint16 Comm_MainTick;
/***************************************************************************************************
*                                       PROGRAM BODY
***************************************************************************************************/
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

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CommF_DataCompare
*
* Description   : This function is used to compare data of a specified size in two memory areas.
*
* Inputs        : buf1: first memory area
*                 buf2: second memory area
*                 length: The number of bytes to be compared.
*
* Outputs       : None
*
* Return        : E_OK: data are consistent
*                 E_NOT_OK: data are inconsistent
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint8 CommF_DataCompare(void * buf1, void * buf2,uint32 length)
{
    uint8 ReturnVal = E_OK;
    uint32 i;
    uint8 * pd, * ps;
    for (i = 0 ; i < length ; i++)
    {
        pd = (uint8 *)buf1;
        ps = (uint8 *)buf2;
        if(pd[i] != ps[i])
        {
            ReturnVal = E_NOT_OK;
            break;
        }
    }
    return ReturnVal;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CommF_DataSet
*
* Description   : This function is used to fill data into the data buffer.
*
* Inputs        : des: destination address of the buffer
*                 src: the data to be filled
*                 desSize: the size of the destination data buffer
*
* Outputs       : None
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void CommF_DataSet(void * des, uint8 src,uint32 desSize)
{
    uint8 * pd;
    uint32 i;
    if ((des != NULL_PTR) && (desSize != 0))
    {
        pd = (uint8 *)des;

        for (i = 0;i<desSize;i++)
        {
            pd[i] = src;
        }

    }
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CommF_GetUint32DataValue
*
* Description   : This function is used to Get uint32 type data from a data buffer.
*
* Inputs        : databuf: Pointer to a data buffer, which indicates the location where the data
*                 should be gotten.
*                 length: the byte number of data that should be gotten.
*
* Outputs       : None
*
* Return        : uint32 type data
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
uint32 CommF_GetUint32DataValue(uint8 *databuf,uint8 length)
{
    uint8 i;
    uint32 DataValue=0;

    for (i = 0; i < length; i++)
    {
        DataValue|=(uint32)databuf[i]<<(uint8)(BIT_NUM_OF_BYTE*(length-i-1));
    }
    return DataValue;
}

/* BEGIN_FUNCTION_HDR
************************************************************************************************
* Function Name : CommF_GetElapsedValue
*
* Description   : This function is used to calculate timeout.
*
* Inputs        : Value: start time
*
* Outputs       : ElapsedValue: The time difference between the current time and the start time
*
* Return        : None
*
* Limitations   :
*
************************************************************************************************
END_FUNCTION_HDR */
void CommF_GetElapsedValue(uint16 *Value, uint16 *ElapsedValue)
{
    *ElapsedValue = Comm_MainTick - *Value;
    /* As both are positive, wrap-around case will be taken care automatically. */
}
