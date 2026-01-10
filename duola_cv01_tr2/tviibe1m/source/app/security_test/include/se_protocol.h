/******************************************************************************
 Copyright(C),Beijing Renxin Certificate Technology Co., Ltd.
 File name: 	    gpc_data_link_protocol.h
 Author:    	    zhengwd	
 Version:		    V1.0	
 Date:      	    2021-03-02
 Description:       
 History:		

******************************************************************************/
#ifndef __GPC_DATA_LINK_PROTOCOL_H__
#define  __GPC_DATA_LINK_PROTOCOL_H__

//#include <ti/drivers/SPI.h>
//#include <ti/devices/cc13x2_cc26x2/driverlib/cpu.h>
#include "se_inter.h"
/**************************************************************************
* Global Macro Definition
***************************************************************************/
// Block type define
#define GPC_I_BLOCK                     0
#define GPC_R_BLOCK                     2
#define GPC_S_BLOCK                     3


//S-Block type define
#define GPC_RESYNCH_REQUEST             0xC0
#define GPC_RESYNCH_RESPONSE            0xE0
#define GPC_IFS_REQUEST                 0xC1
#define GPC_IFS_RESPONSE                0xE1
#define GPC_ABORT_REQUEST               0xC2
#define GPC_ABORT_RESPONSE              0xE2
#define GPC_WTX_REQUEST                 0xC3
#define GPC_WTX_RESPONSE                0xE3
#define GPC_CIP_REQUEST                 0xC4
#define GPC_CIP_RESPONSE                0xE4
#define GPC_RELEASE_REQUEST             0xC6
#define GPC_RELEASE_RESPONSE            0xE6
#define GPC_SWR_REQUEST                 0xCF
#define GPC_SWR_RESPONSE                0xEF

#define GPC_BLOCK_NAD                   0x21

//#define GPC_BLOCK_INF_FIELD_MAX_SIZE    0x0FF9
//#define GPC_BLOCK_INF_FIELD_MAX_SIZE    0x01F9
#define GPC_BLOCK_INF_FIELD_MAX_SIZE    0x012C
#define GPC_BLOCK_CIP_INF_MAX_SIZE      0x40
#define GPC_BLOCK_CIP_SPI_PARAM_SIZE    12
#define GPC_BLOCK_CIP_I2C_PARAM_SIZE    8

#define GPC_BLOCK_PROLOGUE_FIELD_SIZE   		4
#define GPC_BLOCK_EPILOGUE_FIELD_SIZE   		2

#define GPC_BLOCK_ERROR_HANDLING_MAX_NUM     	3
#define GPC_BLOCK_TRANS_RETRY_MAX_NUM   		3


#define GPC_BLOCK_NAD_OFFSET            0
#define GPC_BLOCK_PCB_OFFSET            1
#define GPC_BLOCK_LEN_OFFSET            2
#define GPC_BLOCK_INF_OFFSET            4


#define GPC_IFSC_DEFAULT                261
//#define GPC_IFSD_DEFAULT              64
#define GPC_IFSD_DEFAULT                261   
#define GPC_IFSD_EXPECT                 64
//#define GPC_IFSD_EXPECT               0x01F0


#define GPC_BWT_DEFAULT                 300   //ms   

#define GPC_BLOCK_OK                    0  
#define GPC_BLOCK_ERR                   1    
#define GPC_R_BLOCK_OK                  0 
#define GPC_R_BLOCK_CRC_ERR             1 
#define GPC_R_BLOCK_OTHER_ERR           2 

#define GPC_BLOCK_LAST                  0  
#define GPC_BLOCK_MORE                  1 

#define OK                              0
#define FAIL                            1

#define SW_OK                           0x9000
#define SW_FRAME_ERR                    0x9E01
#define SW_CHANNEL_ERR                  0x9E02
#define SW_CLA_ERR                      0x9E03
#define SW_P1P2_ERR                     0x9E04
#define SW_LCLE_ERR                     0x9E05
#define SW_DATA_ERR                     0X9E06
#define SW_NO_ERR                       0X9E07
#define SW_CRC_ERR                      0x9E01

#define SW_SE_NOTCONNECT                0x9E01

#define SW_GPC_PCB_ERR                  0x9E12
#define SW_GPC_LEN_ERR                  0x9E11
#define SW_GPC_COMM_ERR                 0x9E10
#define SW_GPC_CRC_ERR                  0x9E08
#define SW_SE_TIMEOUT                   0x9E01
#define SW_SE_GLB_TIMEOUT               0x9E02
#define SW_SE_GLB_LONGTIMEOUT           0x9E03


#define SPI_COMM_PROTOCOL_GPC_PHY       0x10
#define SPI_COMM_PROTOCOL_GPC_DLL       0x11
#define GPC_PHY_IRQ_TYPE_INVALID        0x0


/**************************************************************************
* Global Type Definition
***************************************************************************/
typedef enum
{
	GPC_TRANS_OK            = 0x00,
	GPC_TRANS_MOREDATA      = 0x01,
	GPC_TRANS_RETRY         = 0x02,
	GPC_TRANS_ABORT         = 0x03,
	GPC_TRANS_RESYNCH       = 0x04,
	GPC_TRANS_WTX           = 0x05,
	GPC_TRANS_TIMEROUT      = 0x06,
	GPC_TRANS_CIP_PARAM_ERR = 0x07,
	GPC_TRANS_COMM_ERR  	= 0x08,
	GPC_TRANS_LONG_TIMEROUT = 0x09,
} GPC_TRANS_STATE;

enum
{
	Status_Success                  = 0x00,
	Status_Fail                     = 0x01,
	Status_ReadOnly                 = 0x02,
	Status_OutOfRange               = 0x03,
	Status_InvalidArgument          = 0x04,
	Int32_timeout                   = 0x05,
	Status_NoTransferInProgress     = 0x06,
};

/**************************************************************************
* Global Variable Declaration
**************************************************************************/
extern uint16_t g_sGpcMcf;

/**************************************************************************
* Global Functon Declaration
***************************************************************************/ 
extern int32_t SE_Connect(void);
extern int32_t SE_Disconnect(void);
extern int32_t SE_CmdExecute(uint8_t *cmd, uint16_t cmd_len, uint8_t *ack, uint16_t *ack_len);
extern void user_appcallback(void);

#endif
