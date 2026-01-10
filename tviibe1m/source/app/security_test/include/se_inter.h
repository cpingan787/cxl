/******************************************************************************
 Copyright(C),Beijing Renxin Certificate Technology Co., Ltd.
 File name: 	    gpc_phy_inter_spi.h
 Author:    	    zhengwd	
 Version:		    V1.0	
 Date:      	    2021-03-01
 Description:       
 History:		

******************************************************************************/
#ifndef __SE_INTER_H__
#define __SE_INTER_H__


/* Driver configuration */
//#include "ti_drivers_config.h"
#include "se_hardware_hal.h"

/***************************************************************************
* Include Header Files
***************************************************************************/


/**************************************************************************
* Global Macro Definition
***************************************************************************/
//#define IW_DEBUG_PHY //是否开始全局变量数组输出调试

#define GPC_PHY_POLLING   1

#define OK 0
#define FAIL 1

#define GPC_PHY_POWER_WAKE_UP_TIME_DEFAULT      (7)    	/* ms 手册中的T6时间，可以设置 > 5ms（可以设置7或者8）*/
#define GPC_PHY_MAX_CLK_FREQ_DEFAULT            (1000)  /* kHz */
#define GPC_PHY_MIN_POLL_TIME_DEFAULT           (10)    /* multiple of 100us: APDU发送后到接收查询之间的时间，可以减少到10（1ms）*/
//#define GPC_PHY_MIN_POLL_TIME_DEFAULT         (0)     /* IRQ */
#define GPC_PHY_SE_GUARD_TIME_DEFAULT           (200)   /* us */
//#define GPC_PHY_SE_GUARD_TIME_DEFAULT         (1000)  /* us */
#define GPC_PHY_WAKE_UP_TIME_DEFAULT            (200)   /* us */
#define GPC_PHY_SEAL_DEFAULT                    (16)    

#define GPC_PHY_SEND_FIRST_FRAG_LEN             (6)     /* 发送数据时第1 片段数据长度 */
#define GPC_PHY_RECV_FIRST_FRAG_LEN             (6)     /* 接收数据时第1 片段数据长度 */
#define GPC_PHY_INF_FIELD_MAX_SIZE              0x0FF9


#define GPC_PHY_BLOCK_NAD_OFFSET        (0)
#define GPC_PHY_BLOCK_PCB_OFFSET        (1)
#define GPC_PHY_BLOCK_LEN_OFFSET        (2)

#define GPC_PHY_SEND_TO_RECEIVE_DELAY_TIME        (3)      /* ms */
#define GPC_PHY_RECEIVE_TO_SEND_DELAY_TIME        (3)      /* ms */

#define FEED_DOG_MODE_TIME (1)
#define SE_RECEIVE_TIMEOUT (0)

enum GPC_PHY_INTER_TYPE
{
	GPC_PHY_INTER_TYPE_SPI  =       0x01,           /* 与SE的通信接口类型为SPI */
	GPC_PHY_INTER_TYPE_I2C  =       0x02,           /* 与SE的通信接口类型为I2C */
	GPC_PHY_INTER_TYPE_RFU  =       0x03,  
};

enum GPC_PHY_IRQ_TYPE
{
	GPC_PHY_IRQ_TYPE_INVALID        =       0x00,           /* IRQ引脚无效，表示SE 尚未准备好发送的数据 */
	GPC_PHY_IRQ_TYPE_VALID          =       0x01,           /* IRQ引脚有效，表示SE 已准备好发送的数据 */
    GPC_PHY_IRQ_TYPE_TIMEOUT        =       0x02,
};

//================DEBUG================
enum GPC_PHY_ERROR
{
	GPC_PHY_ERROR_NULL     		=       0x0000,           //无错误
	GPC_PHY_ERROR_TIMEOUT       =       0x0001,           //
    GPC_PHY_ERROR_FRAG     	 	=       0x0002,
    GPC_PHY_ERROR_LEN     	 	=       0x0003,
    GPC_PHY_ERROR_RECV     	 	=       0x0004,
};
enum GPC_CODE_TRACE
{
	GPC_CODE_TRACE_INIT     					=       0x00,

	GPC_CODE_TRACE_SEND_TIMEROUT       			=       0x01,
	GPC_CODE_TRACE_SEND_TRANS_COMM_ERR     	 	=       0x02,
	GPC_CODE_TRACE_SEND_TRANS_OTHER_ERR     	=       0x03,
	GPC_CODE_TRACE_SEND_TRANS_OTHER_ERR2     	=       0x04,
	GPC_CODE_TRACE_SEND_TRANS_OTHER_ERR3     	=       0x05,
	GPC_CODE_TRACE_SEND_TRANS_RETRY     	 	=       0x06,
	GPC_CODE_TRACE_SEND_TRANS_MOREDATA     	 	=       0x07,
	GPC_CODE_TRACE_SEND_LONG_HANDLER     	 	=       0x08,

	GPC_CODE_TRACE_BLCOK_LONG_TIMEROUT    	 	=       0x09,
	GPC_CODE_TRACE_BLCOK_TRANS_TIMEROUT    	 	=       0x0A,
	GPC_CODE_TRACE_BLCOK_COMM_ERR    	 		=       0x0B,
	GPC_CODE_TRACE_BLCOK_CRC_ERR    	 		=       0x0C,
	GPC_CODE_TRACE_BLCOK_OTHER_ERR    	 		=       0x0D,

	GPC_CODE_TRACE_GPC_SE_TIMEOUT     	 		=       0x0E,
	GPC_CODE_TRACE_GPC_LEN_ERR     	 			=       0x0F,
	GPC_CODE_TRACE_GPC_LEN_ERR2     	 		=       0x10,
	GPC_CODE_TRACE_GPC_LEN_ERR3    	 			=       0x11,
	GPC_CODE_TRACE_GPC_PCB_ERR    	 			=       0x12,
	GPC_CODE_TRACE_GPC_PCB_ERR2    	 			=       0x13,
	GPC_CODE_TRACE_GPC_PCB_ERR3    	 			=       0x14,
	GPC_CODE_TRACE_GPC_CRC_ERR    	 			=       0x15,

	GPC_CODE_TRACE_SEND_TRANS_NONSENSE     	 	=       0x16,
};
//================DEBUG END================

typedef struct
{
	int32_t  (* IOInit)(void);
	int32_t  (* BusInit)(void);
	int32_t  (* BusDeInit)(void);
	int32_t  (* BusSend)( uint8_t *,uint16_t);
	int32_t  (* BusRecv)(uint8_t *,uint16_t *);
	void     (* DelayMs)(uint32_t msDelay);
} GPC_PHY_INTER_t;


/**************************************************************************
* Global Variable Declaration
***************************************************************************/
extern uint8_t	   	g_bGpcPwt;
extern uint16_t   	g_sGpcMcf;
extern uint8_t	   	g_bGpcMpot;
extern uint16_t   	g_sGpcSegt;
extern uint16_t   	g_sGpcSeal;
extern uint16_t   	g_sGpcWut;
extern uint8_t    	g_bGpcPst;

extern uint8_t   	g_bGpcIrqOk;
extern uint16_t  	g_count;

//================DEBUG================
extern uint8_t   	g_codeTrace;
extern uint8_t   	g_codeTrace2;
extern uint8_t   	g_codeTrace3;
extern uint8_t   	g_codeTrace4;
//================DEBUG END================

/**************************************************************************
* Global Functon Declaration
***************************************************************************/ 

extern int8_t Gpc_Phy_Inter_Probe(void *pCtx, uint8_t bInterType);
extern int32_t Gpc_Phy_Spi_Recv(uint8_t *outbuf, uint16_t *outbuf_len);
extern int32_t Gpc_Phy_Spi_Send(uint8_t *inbuf, uint16_t inbuf_len);

#endif

/*************** Copyright(C),Beijing Renxin Certificate Technology Co., Ltd. */

