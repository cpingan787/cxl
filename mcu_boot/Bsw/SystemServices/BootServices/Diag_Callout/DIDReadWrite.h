
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
    uint8              Size;
    uint8              RW_Permission;   /* Supports read and write types */
    uint32             Addr;            /* Storage address */
}DIDInfo_t;

/*==================================================================================================
*                                      GLOBAL CONSTANTS
==================================================================================================*/

#define Dcm_NUMBER_OF_DIDS                             0x09U
#define DID_F198_LEN                            ((uint32)0x0AU)
#define DID_F187_LEN                            ((uint32)0x0CU)
#define DID_F18A_LEN                            ((uint32)0x0AU)
#define DID_F199_LEN                            ((uint32)0x04U)

#define DID_AFFB_LEN                            ((uint32)0x02U)
#define DID_AFFC_LEN                            ((uint32)0x02U)
#define DID_AFFD_LEN                            ((uint32)0x01U)
#define DID_AFFE_LEN                            ((uint32)0x01U)
#define DID_AFFF_LEN                            ((uint32)0x01U)

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

#endif /* BOOTSERVICES_DIAG_CALLOUT_DIDREADWRITE_H_ */
