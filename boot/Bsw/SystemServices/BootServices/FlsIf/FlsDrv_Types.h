/*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       : FlsDrv_Types.h
************************************************************************************************
*   Project/Product :
*   Title           :
*   Author          : Dongxue.Guo
************************************************************************************************
*   Description     : Flash driver types definition
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
*   1.0         2024/06/04    Dongxue.Guo        N/A         Original
*   1.1         xxxx/xx/xx    xxxxx              N/A         xxxxxxxx
*
************************************************************************************************
* END_FILE_HDR*/

#ifndef FLSDRV_TYPES_H
#define FLSDRV_TYPES_H

/*********************************************************************************************************************/
/* Typedef                                                                                               */
/*********************************************************************************************************************/
typedef void (*tWDTriggerFct) (void);         /* watchdog trigger routine */

typedef struct
{
    uint8 version_major;
    uint8 version_minor;
    uint8 version_patch;
    uint8 res;
    uint16 err_code;       /* return error code */
    uint32 err_addr;       /* return error address */

    uint32 addr; /* physical address in bytes */
    uint32 len;     /* length of data buffer (in bytes) */
    uint8* pbuf;    /* pointer to data buffer */

    /* additional input parameters */
//    tWDTriggerFct   wdTriggerFct;       /* pointer to watchdog trigger routine */
} flsdrv_para_t;


typedef void (*flsdrv_func_t)(flsdrv_para_t*);

typedef struct
{
    uint8 type_mcu;             /* MCU type */
    uint8 type_mask;            /* MASK type */
    uint8 res;                  /* 0x00 */
    uint8 Interfaceversion;     /* interface version */

    flsdrv_func_t init;                 /* pointer to init routine */
    flsdrv_func_t deinit;               /* pointer to deinit routine */
    flsdrv_func_t erase;                /* pointer to erase routine */
    flsdrv_func_t write;                /* pointer to write routine */
    flsdrv_func_t read;

    uint32 res1;
    uint32 res2;
} flsdrv_header_t;


#endif /* FLSDRV_TYPES_H */
