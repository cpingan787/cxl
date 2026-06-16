
#ifndef BOOTSERVICES_DIAG_CALLOUT_DIDREADWRITE_H_
#define BOOTSERVICES_DIAG_CALLOUT_DIDREADWRITE_H_

/**********************************************************************************************************************
 * INCLUDES
 *********************************************************************************************************************/
#include "MemM.h"
#include "Std_Types.h"
/**********************************************************************************************************************
 *  GLOBAL DATA TYPES AND STRUCTURES
 *********************************************************************************************************************/

typedef struct
{
    uint8              DrvType;         /* Read/Write driver */
    uint16             Did;
    uint16             Size;
    uint8              RW_Permission;   /* Supports read and write types */
    uint32             Addr;            /* Storage address */
}DIDInfo_t;

typedef struct
{
    uint8              NumBlocks;
    uint32             Addr;
}DID_F110_t;

typedef struct
{
    uint32             Addr;
    uint8              Size;
    uint8*             InitData;
}DID_InitCfg_t;

/*==================================================================================================
*                                      GLOBAL CONSTANTS
==================================================================================================*/

#define Dcm_NUMBER_OF_DIDS                               0x2FU
#define DID_F100_LEN                            ((uint16)0x06U)
#define DID_F110_LEN                            ((uint16)0x10U)
#define DID_F111_LEN                            ((uint16)0x10U)
#define DID_F112_LEN                            ((uint16)0x10U)
#define DID_F113_LEN                            ((uint16)0x10U)
#define DID_F114_LEN                            ((uint16)0x10U)
#define DID_F115_LEN                            ((uint16)0x10U)
#define DID_F116_LEN                            ((uint16)0x10U)
#define DID_F117_LEN                            ((uint16)0x10U)
#define DID_F118_LEN                            ((uint16)0x10U)
#define DID_F119_LEN                            ((uint16)0x10U)
#define DID_F11A_LEN                            ((uint16)0x10U)
#define DID_F11B_LEN                            ((uint16)0x10U)
#define DID_F11C_LEN                            ((uint16)0x10U)
#define DID_F11D_LEN                            ((uint16)0x10U)
#define DID_F11E_LEN                            ((uint16)0x10U)
#define DID_F11F_LEN                            ((uint16)0x10U)
#define DID_F120_LEN                            ((uint16)0x10U)
#define DID_F121_LEN                            ((uint16)0x10U)
#define DID_F183_LEN                            ((uint16)0x0AU)
#define DID_F187_LEN                            ((uint16)0x05U)
#define DID_F18A_LEN                            ((uint16)0x05U)
#define DID_F18B_LEN                            ((uint16)0x03U)
#define DID_F18C_LEN                            ((uint16)0x10U)
#define DID_F190_LEN                            ((uint16)0x11U)
#define DID_F191_LEN                            ((uint16)0x05U)
#define DID_F192_LEN                            ((uint16)0x0AU)
#define DID_F194_LEN                            ((uint16)0x0AU)
#define DID_F198_LEN                            ((uint16)0x0BU)
#define DID_F1A0_LEN                            ((uint16)0x05U)
#define DID_F1A1_LEN                            ((uint16)0x05U)
#define DID_F1A2_LEN                            ((uint16)0x08U)
#define DID_F1A5_LEN                            ((uint16)0x03U)
#define DID_F1A8_LEN                            ((uint16)0x14U)
#define DID_F1A9_LEN                            ((uint16)0x05U)
#define DID_F1AA_LEN                            ((uint16)0x05U)
#define DID_F130_LEN                            ((uint16)0x20U)
#define DID_F1B5_LEN                            ((uint16)0x05U)
#define DID_F1B6_LEN                            ((uint16)0x05U)
#define DID_AFF1_LEN                            ((uint16)0x1CAU)
#define DID_AFF2_LEN                            ((uint16)0x01U)
#define DID_AFF5_LEN                            ((uint16)0x01U)
#define DID_AFFC_LEN                            ((uint16)0x02U)
#define DID_AFFD_LEN                            ((uint16)0x01U)
#define DID_AFFE_LEN                            ((uint16)0x01U)
#define DID_AFFF_LEN                            ((uint16)0x01U)

#define DID_INFO_READ_ONLY                     0x01U
#define DID_INFO_WRITE_ONLY                    0x02U
#define DID_INFO_READ_AND_WRITE                0x03U

/**********************************************************************************************************************
 *  GLOBAL DATA PROTOTYPES
 *********************************************************************************************************************/
extern uint8 WriteDataF198[DID_F198_LEN];
extern uint8 WriteDataF187[DID_F187_LEN];
extern uint8 WriteDataF18A[DID_F18A_LEN];
extern const DIDInfo_t DID_Infos[Dcm_NUMBER_OF_DIDS];

/**********************************************************************************************************************
 *  GLOBAL FUNCTION PROTOTYPES
 *********************************************************************************************************************/
extern void DID_Init(void);
extern Std_ReturnType DID_Write(uint8 * buf, const DIDInfo_t * ProdInfo);
extern Std_ReturnType DID_Read(uint8 * buf, const DIDInfo_t *  ProdInfo);
Std_ReturnType IsEEIfNeedInit(void* buff, uint32 len);

#endif /* BOOTSERVICES_DIAG_CALLOUT_DIDREADWRITE_H_ */
