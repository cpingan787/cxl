

/* Includes */
 
#include "CanTp.h"
#include "CanTp_Types.h"









        
/* Function definitions */




/* ConfigSet Structure definitions */
 



static const struct CanTp_RxPduStructType CanTp_RxPdu[2u] =
{    
    {  0,         0,         NULL_PTR                 },
    {  1,         0,         NULL_PTR                 }
};

static const struct CanTp_TxSduStructType CanTp_TxSdu[2u] =
{
    {  CANTP_MAX_NPDU_LENGTH,  CANTP_TX_CONFIG, 0x0,  0,    0,    0,     0,     0, 0 }
};

static const struct CanTp_RxSduStructType CanTp_RxSdu[2u] =
{
    {  CANTP_PHY_RX_CONFIG,  0x0,  0,    1,    0,    0,     0,     0, 0  },
    {  CANTP_FUN_RX_CONFIG,  0x0,  0,    1,    0,    0,     0,     1, 1  }
};

static const struct CanTp_TimeOutStructType CanTp_TimeOut[2u] =
{
{   70,                  150,                 61          },
{   70,                  60,                  150         }
};

static const struct CanTp_ParamStructType CanTp_Param[1u] =
{
    {{ 0x01,     0x8,      },     0x0       }
};

const struct CanTp_ConfigStructType CanTp_Config = 
{ 
     
    1,
    2,
    1,
    2,
    1,
       
    &CanTp_RxPdu[0],
    &CanTp_TxSdu[0],
    &CanTp_RxSdu[0],
    &CanTp_TimeOut[0],
    &CanTp_Param[0]
};
 



