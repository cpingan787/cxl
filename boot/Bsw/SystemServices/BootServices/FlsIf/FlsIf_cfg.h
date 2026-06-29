 /*  BEGIN_FILE_HDR
******************************************Copyright(C)*****************************************
*
*                                       YKXH  Technology
*
***********************************File Info***************************************************
*   File Name       @: FlsIf_Cfg.c
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

#ifndef FLSIF_CFG_H
#define FLSIF_CFG_H

/*********************************************************************************************************************/
/* Typedef                                                                                                           */
/*********************************************************************************************************************/


/*********************************************************************************************************************/
/* Macro Defines                                                                                                 */
/*********************************************************************************************************************/
#define FLASH_DRIVER_STARTADDRESS      0xFEDD0F00// 0x20420000U
#define FLASH_DRIVER_LENGTH            0xF00U


/* need logic address to physical address or not*/
#define  FLSIF_CONVERTADDRESS               STD_OFF
/* need special read method or not*/
#define  FLSIF_SPECIAL_READ                 STD_OFF
/* need pass the feeddog function pointer to flash driver or not*/
#define  FLSIF_PASS_FEEDDOG                 STD_OFF
/* publish the erase and write time, if different sector have different time,publish the max one*/
//#define  FLSIF_SECTOR_ERASETIME             10ul
//#define  FLSIF_PAGE_WRITETIME               10ul
//#define  FLSIF_SECTOR_WRITETIME             (5ul/*FLSIF_PAGE_WRITETIME*8ul*/)

/* the max access time, when time out the  bootloader have to send response to pc */
//#define  FLSIF_ACCESS_TIMELIMITE            10000ul
/* max page size */
#define  FLSIF_MAX_PAGE_SIZE                0x100u

/* define the physical flash block num*/
#define  FLSIF_BLOCK_NUM                      3
#define  FLSIF_ERASE_VALUE                  0xFF
/* config order :address low-high*/


#endif














