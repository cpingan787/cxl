/******************************************************************************
 Copyright(C),CEC Huada Electronic Design Co.,Ltd.
 File name: 		gpc_phy_inter_spi.c
 Author:			zhengwd 
 Version:			V1.0	
 Date:			2021-03-01	
 Description:	       
 History:		

******************************************************************************/

/***************************************************************************
* Include Header Files
***************************************************************************/
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "include/se_inter.h"


#define	DEF_NO_DELAY_US		1	//1: no api of BoardSleepus
/**************************************************************************
* Global Variable Declaration
***************************************************************************/
uint16_t 	g_count = 0;

uint8_t   	g_bGpcPwt 	= GPC_PHY_POWER_WAKE_UP_TIME_DEFAULT;
uint16_t   	g_sGpcMcf 	= GPC_PHY_MAX_CLK_FREQ_DEFAULT;
uint8_t   	g_bGpcMpot 	= GPC_PHY_MIN_POLL_TIME_DEFAULT;
uint16_t   	g_sGpcSegt 	= GPC_PHY_SE_GUARD_TIME_DEFAULT;
uint16_t   	g_sGpcWut 	= GPC_PHY_WAKE_UP_TIME_DEFAULT;
uint16_t   	g_sGpcSeal 	= GPC_PHY_SEAL_DEFAULT;
uint8_t   	g_bGpcPst	= 0;

uint8_t   	g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;

#if 0
uint32_t 	TimeIwallCnt = 0;
uint32_t 	TimeIwallLimit = 0;
uint32_t 	TimeIwallglbCnt = 0;
uint32_t 	TimeIwallglbLimit = 0;
#endif

//================DEBUG================
uint16_t   	g_sErrCodePhy 	= GPC_PHY_ERROR_NULL;
uint8_t   	g_codeTrace 	= GPC_CODE_TRACE_INIT;
uint8_t   	g_codeTrace2 	= GPC_CODE_TRACE_INIT;
uint8_t   	g_codeTrace3 	= GPC_CODE_TRACE_INIT;
uint8_t   	g_codeTrace4 	= GPC_CODE_TRACE_INIT;
//================DEBUG END================

//extern uint16_t g_sErrCode;
//extern uint16_t g_bGpcIrqOk;
//extern uint16_t g_bGpcPwt;
//extern uint16_t g_sGpcMcf;
//extern uint16_t g_bGpcPst;
//extern uint16_t g_bSpiCommProtocol;

//static uint8_t buf[64] = {0};

#if 0
extern SPI_Handle                  masterSpi;
//extern   UART_Handle                 uartHandle;
static bool spi_write(uint8_t *rxbuf, uint8_t *txbuf, size_t len) {
    SPI_Transaction masterTransaction;
    memset(buf, 0x0, sizeof(buf));
    masterTransaction.count  = len;
    masterTransaction.txBuf  = (void*)txbuf;//!< 将要传输的数据存放的地址赋给*txBuf
    masterTransaction.arg    = NULL;
    masterTransaction.rxBuf  = buf;

    return SPI_transfer(masterSpi, &masterTransaction) ? 1 : 0;//!< 调用SPI_transfer()写入数据
}

static bool spi_read(uint8_t *rxbuf, uint8_t *txbuf, size_t len) {
    SPI_Transaction masterTransaction;
    memset(buf, 0x0, sizeof(buf));
    masterTransaction.count = len;
    masterTransaction.rxBuf = rxbuf;//!< 将要接收到的数据存入buf所指的地址中
    masterTransaction.txBuf = buf;
    masterTransaction.arg = NULL;

    return SPI_transfer(masterSpi, &masterTransaction) ? 1 : 0;//!< 调用SPI_transfer()读出数据
}
#endif
//extern bool spi_write(uint8_t *rxbuf, uint8_t *txbuf, size_t len);
//extern bool spi_read(uint8_t *rxbuf, uint8_t *txbuf, size_t len);

//WDG timer定时器，是为了防止程序跑飞，在正常流程中操作Master SysTick WDG，和SPI通信协议本身没有关系
//目前Master 设置命令定时超时为 5s，只要5s内有操作就会清。
void wdg_handler(uint32_t time_uint32){return;}

#if 0
//就是Master在发送了SPI数据后，开启timer定时timer2_start，设定SLAVE响应超时时间；
//wTimeout = 300ms ，现在代码里面配置的  SLAVE响应超时时间 300ms。
uint8_t timer2_over(uint32_t time_uint32)
{
	if(TimeIwallCnt > TimeIwallLimit)
	{
		return FAIL;
	}

	return OK;
}
uint8_t timerglb_over()
{
	if(TimeIwallglbCnt > TimeIwallglbLimit)
	{
		return FAIL;
	}

	return OK;
}

//开启定时器
//SE_RECEIVE_TIMEOUT          = 0,    //表示 接收数据超时的Timer（start 和over对应）
void timer2_start(uint32_t timertag, uint32_t wTimeout)
{
	TimeIwallLimit = wTimeout/1000;//默认300ms
	TimeIwallCnt = 0;
}
void timerglb_start()
{
	TimeIwallglbLimit = 5000;//默认5s
	TimeIwallglbCnt = 0;
}
#endif


//基础发送函数
static uint8_t spi_send_frag(uint8_t *frag, uint16_t frag_len)
{
	uint8_t ret = 0;

	SPICsen();
//	ret = HAL_SPI_Transmit(&g_SpiHandle, frag, frag_len, SPI_Timeout);
//        ret = spi_write(NULL, frag, frag_len);
    ret = HAL_SE_SpiSend(frag, frag_len);

	SPICsoff();

	return ret;
//	if(ret == 1)
//		return OK;
//	else
//		return FAIL;
}

//基础接收函数
static uint8_t spi_receive_frag(uint8_t *frag, uint16_t frag_len)
{
	uint8_t ret = 0;

	memset(frag, 0x00, frag_len);

	SPICsen();
//	ret = HAL_SPI_Receive(&g_SpiHandle, frag, frag_len, SPI_Timeout);
//        ret = spi_read(frag, NULL, frag_len);
    ret = HAL_SE_SpiReceive(frag, frag_len);
	SPICsoff();

	return ret;
//	if(ret == 1)
//		return OK;
//	else
//		return FAIL;
}

/**
  * @brief EXTI line detection callbacks
  * @param GPIO_Pin: Specifies the pins connected EXTI line
  * @retval None
  */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
//	if (GPIO_Pin == SE_EXTI_PE5_GPIO_PIN)
//	{
//		g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_VALID;
//		g_count++;
//	}
}

int32_t Gpc_Phy_Io_Init(void)
{
//	GPIO_InitTypeDef  GPIO_InitStruct;
	//EXTI_ConfigTypeDef EXTI_InitStructure;

	//--- Enable the EXTI IO Clock ---
//	SE_EXTI_PE5_GPIO_CLK_ENABLE();

	//---PC8  IO ��ʼ��---
//	GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
	//GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
	//GPIO_InitStruct.Pull = GPIO_NOPULL;
//	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	//GPIO_InitStruct.Pull = GPIO_PULLUP;
//	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;  
	//GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;  
	
//	GPIO_InitStruct.Pin = SE_EXTI_PE5_GPIO_PIN;
//	HAL_GPIO_Init(SE_EXTI_PE5_GPIO_PORT, &GPIO_InitStruct);

	/* Enable and set EXTI line 15_10 Interrupt to the lowest priority */
//	HAL_NVIC_SetPriority(EXTI9_5_IRQn, 0, 0);
	//HAL_NVIC_SetPriority(EXTI9_5_IRQn, 3, 0);
//	HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);

	return OK;
}


int32_t Gpc_Phy_Spi_Init(void)
{
	return OK;
}

int32_t Gpc_Phy_Spi_DeInit(void)
{
	return OK;
}

void Gpc_Phy_Spi_DelayMs(uint32_t msDelay)
{
//	HAL_Delay(msDelay);
    BoardSleepms(msDelay);
    return;
}

/***********************************************************************************
* Function:      Gpc_Phy_Spi_Send
* Description:   spi数据发送
* Input:         SendData:发送地址,SendLen:发送数据长度
* Output:        None
* Return:        None
* Date:          2019.07.22
* ModifyRecord:
**********************************************************************************/
int32_t Gpc_Phy_Spi_Send(uint8_t *inbuf, uint16_t inbuf_len)
{
	uint8_t bNullByte = 0x00;
	uint8_t bRet = FAIL;
	uint16_t i = 0;
	uint16_t sDivX = 0;
	uint16_t sModX = 0;

	BoardSleepms(GPC_PHY_RECEIVE_TO_SEND_DELAY_TIME);   
	do
	{
   		 //g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;
		//1. sent wake-up data
		if(spi_send_frag(&bNullByte, 1))   // send one Null-Byte
		{
			break;
		}
		#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
		BoardSleepms(1);
		#else
		BoardSleepus(g_sGpcWut);                         // wait for a duration of WUT唤醒时间
		#endif

		//2. sent first fragment of data 
		if(spi_send_frag(inbuf, GPC_PHY_SEND_FIRST_FRAG_LEN))   
		{
			break;
		}
		#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
		BoardSleepms(1);
		#else
		BoardSleepus(g_sGpcSegt);                         // wait for a duration of SE Guard Time保护时间
		#endif

		//3. cumpute value of sDivx and sModx 切分为g_sGpcSeal块大小后传输
		sDivX = (inbuf_len-GPC_PHY_SEND_FIRST_FRAG_LEN) /g_sGpcSeal;  
		sModX = (inbuf_len-GPC_PHY_SEND_FIRST_FRAG_LEN)% g_sGpcSeal;

		//4. sent remaining fragment of data 
		for(i=0;i<sDivX;i++)
		{
			if(spi_send_frag(inbuf+GPC_PHY_SEND_FIRST_FRAG_LEN+g_sGpcSeal*i, g_sGpcSeal))   
			{
				break;
			}
			#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
			BoardSleepms(1);
			#else
			BoardSleepus(g_sGpcSegt);                         // wait for a duration of SE Guard Time
			#endif
		}
			
		if (sModX)
		{	
			if(spi_send_frag(inbuf+GPC_PHY_SEND_FIRST_FRAG_LEN+g_sGpcSeal*i, sModX))   
			{
				break;
			}
			#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
			BoardSleepms(1);
			#else
			BoardSleepus(g_sGpcSegt);						 // wait for a duration of SE Guard Time
			#endif
		}
		bRet = OK;
	}while(0);

	g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;
	return bRet;
}

/***********************************************************************************
* Function:      Gpc_Phy_Spi_Recv
* Description:   spi数据接收
* Input:         ReceiveData:接收地址,ReceiveLen:接收长度
* Output:        None
* Return:        None
* Date:          2019.07.22
* ModifyRecord:
**********************************************************************************/
int32_t Gpc_Phy_Spi_Recv(uint8_t *outbuf, uint16_t *outbuf_len)
{
	uint8_t bRet = FAIL;
	uint16_t i = 0;
	uint16_t sDivX = 0;
	uint16_t sModX = 0;
	uint16_t sRecvLen = 0;
	uint16_t sInfLen = 0;

	BoardSleepms(GPC_PHY_SEND_TO_RECEIVE_DELAY_TIME);
	do
	{
		wdg_handler(FEED_DOG_MODE_TIME);			//定时喂狗
		if(timer2_over(SE_RECEIVE_TIMEOUT))  
		{
			if(!g_sErrCodePhy) g_sErrCodePhy = GPC_PHY_ERROR_TIMEOUT;
			break;
		}

		if(g_bGpcMpot != 0x00)//轮询机制
		{
			#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
			BoardSleepms(1);
			#else
			BoardSleepus((uint32_t)g_bGpcMpot*10);
			#endif
			//1. receive first fragment of data 
			if(spi_receive_frag(outbuf, GPC_PHY_RECV_FIRST_FRAG_LEN))	//轮询接收头
			{
				if(!g_sErrCodePhy) g_sErrCodePhy = GPC_PHY_ERROR_FRAG;
				break;//接收协议头失败，物理层错误
			}

			if(outbuf[GPC_PHY_BLOCK_NAD_OFFSET] !=0x12)
			{
				continue;//继续重新开始轮询
			}
		}
		else//中断机制
		{
			//1. receive first fragment of data 
			if(GPC_PHY_IRQ_TYPE_INVALID==g_bGpcIrqOk )
			{
				continue;
			}
			//g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;
			
			//1. receive first fragment of data 
			if(spi_receive_frag(outbuf, GPC_PHY_RECV_FIRST_FRAG_LEN))	
			{
				if(!g_sErrCodePhy) g_sErrCodePhy = GPC_PHY_ERROR_FRAG;
				break;
			}
		}

		#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
		BoardSleepms(1);
		#else
		BoardSleepus(g_sGpcSegt);						 // wait for a duration of SE Guard Time
		#endif
		sRecvLen += GPC_PHY_RECV_FIRST_FRAG_LEN;

		sInfLen = (*(outbuf+GPC_PHY_BLOCK_LEN_OFFSET) <<8) + *(outbuf+GPC_PHY_BLOCK_LEN_OFFSET+1); 
		if(sInfLen > GPC_PHY_INF_FIELD_MAX_SIZE)
		{
			if(!g_sErrCodePhy) g_sErrCodePhy = GPC_PHY_ERROR_LEN;
			break;//协议长度错误
		}

		//2. cumpute value of sDivx and sModx 分段多次读取，默认每次16字节
		sDivX = sInfLen /g_sGpcSeal;  
		sModX = sInfLen % g_sGpcSeal;

		//3. receive remaining fragment of data 
		for(i=0;i<sDivX;i++)
		{
			if(spi_receive_frag(outbuf+GPC_PHY_RECV_FIRST_FRAG_LEN+g_sGpcSeal*i, g_sGpcSeal))   
			{
				if(!g_sErrCodePhy) g_sErrCodePhy = GPC_PHY_ERROR_RECV;
				break;
			}
			sRecvLen += g_sGpcSeal;
			#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
			BoardSleepms(1);
			#else
			BoardSleepus(g_sGpcSegt);						 // wait for a duration of SE Guard Time
			#endif
		}
			
		if (sModX)
		{	
			if(spi_receive_frag(outbuf+GPC_PHY_RECV_FIRST_FRAG_LEN+g_sGpcSeal*i, sModX))   
			{
				if(!g_sErrCodePhy) g_sErrCodePhy = GPC_PHY_ERROR_RECV;
				break;//接收数据失败，物理层错误
			}
			sRecvLen += sModX;
			#ifdef	DEF_NO_DELAY_US	//1: no api of BoardSleepus
			BoardSleepms(1);
			#else
			BoardSleepus(g_sGpcSegt);						 // wait for a duration of SE Guard Time
			#endif
		}
		bRet = OK;
		break;
	}while(1);

	*outbuf_len = sRecvLen;
	g_bGpcIrqOk = GPC_PHY_IRQ_TYPE_INVALID;
	return bRet;
}


int8_t Gpc_Phy_Inter_Probe(void *pCtx, uint8_t bInterType)
{
	GPC_PHY_INTER_t *HwCtx = (GPC_PHY_INTER_t *)pCtx;

	if(GPC_PHY_INTER_TYPE_SPI == bInterType)
	{
		HwCtx->IOInit     = Gpc_Phy_Io_Init;
		HwCtx->BusInit    = Gpc_Phy_Spi_Init;
		HwCtx->BusDeInit  = Gpc_Phy_Spi_DeInit;
		HwCtx->BusSend    = Gpc_Phy_Spi_Send;
		HwCtx->BusRecv    = Gpc_Phy_Spi_Recv;
		HwCtx->DelayMs  = Gpc_Phy_Spi_DelayMs;
	}

	return OK;
}

/*************** Copyright(C),CEC Huada Electronic Design Co.,Ltd.*****END OF FILE****/

