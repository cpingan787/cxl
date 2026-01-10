#include "taskEcallProcess.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include "queue.h"
#include "task.h"
#include "ecallHal.h"
#include "logHal.h"
#include "string.h"
#include "taskDtcProcess.h"
#include "vehicleSignalApp.h"

// ecall process cycle definition
#define ECALL_PROCESS_CYCLE_TIME          10 //ms

#define SOS_KEY_DEBOUNCE_TIME    	 ( 50 )                         /*按键短按去抖动的时间*/
#define SOS_KEY_DEBANCE_TIME    	 ( 2000 )                         /*按键长按去抖动的时间*/
#define SOS_KEY_DEBOUNCE_MAX_TIME    ( 4000 )                         /*按键短按检测最长的时间*/
#define SOS_KEY_HARD_FAULT_TIME 	 ( 40000 )                       /*按键硬件故障的时间*/    

#define BCALL_SEVERMESSAGE 0x14
#define COMMAND_BCALL_TRANSMIT_REQ	0x01	//MCU����BCALL״̬����
#define COMMAND_BCALL_TRANSMIT_ACK	0x02	//MPU�ظ�

#define VEHICLE_CAN_UNPACK_FORMAT_INTEL     	0
#define VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB		1		
#define VEHICLE_CAN_UNPACK_FORMAT_MOTO_MSB		2

static SosButtonClickMsg_t g_SosButtonClickMsg;      /*按键时间*/
static int16_t  g_mpuHandle                        =   -1;
static uint16_t g_EcallDisableTimeCount	=   0;                      //��ֹʱ�����
static uint8_t g_mpuDriverRxBuffer[20];

static int16_t EcallSdkMesageSend(uint8_t result)
{
    MpuHalDataPack_t l_txPack;
	uint8_t luctxData[10] = {0};
	
    if(result == NULL)
    {
        return -1;
    }
    
    l_txPack.aid = 0x04;
    l_txPack.mid = BCALL_SEVERMESSAGE;
    l_txPack.subcommand = COMMAND_BCALL_TRANSMIT_REQ;
    
    luctxData[0] = result;
    
    l_txPack.pDataBuffer = luctxData;
    l_txPack.dataBufferSize = 1;
    l_txPack.dataLength = 1;
    
    MpuHalTransmit(g_mpuHandle,&l_txPack);
    
    return 0;
}

/** ****************************************************************************
* @remarks       static void SosButtonDetection( void )
* @brief         SOS 按键信号周期性处理
* @param[in]     无
* @param[out]    无
* @return        pdPASS 成功，pdFAIL 失败
* @attention     无
*******************************************************************************/
static void SRSStatusCheck( void )
{
    static uint16_t srsTimeCount = 0;
	uint8_t CANSignalFormat = VEHICLE_CAN_UNPACK_FORMAT_MOTO_LSB;
	uint8_t SRSstatus;
    double dataVaule = 0;    
    const can_signal_configure_t *pCanSignalConfigure = NULL; 
    pCanSignalConfigure = GetCan0SignalConfigure();
	
		
    ReadCanSignal(CANSignalFormat,&pCanSignalConfigure->ACU_CrashOutput_Sts,&dataVaule);   
	SRSstatus = (uint8_t)dataVaule;
	
	if(SRSstatus != 0)
	{
		srsTimeCount++;
	}
	else
	{
		srsTimeCount = 0;
	}
	
	if(srsTimeCount >= 1000 / ECALL_PROCESS_CYCLE_TIME)
	{
		srsTimeCount = 0;
		EcallSdkMesageSend(0x01);
	}
}
static void SosButtonDetection( void )
{
    uint32_t key_time = 0;
	static uint8_t  key_quick_cnt = 0xFF;
	static uint32_t  window_start_tick  = 0;
	
    static SosButtonState_e SosButtonState = E_SOS_BUTTON_STATE_IDLE;

    if( SosButtonState == E_SOS_BUTTON_STATE_IDLE )            /*检测按键*/
    {
        if( EcallHalGetSosButtonStatus() == 1 )
        {
            g_SosButtonClickMsg.clickTime = xTaskGetTickCount();
        	if(key_quick_cnt == 0xFF)
			{
				key_quick_cnt = 0;
				window_start_tick  = g_SosButtonClickMsg.clickTime;
			}
			else
			{
				key_time = osElapsedTimeGet( g_SosButtonClickMsg.clickTime, window_start_tick  );
				if(key_time >SOS_KEY_DEBOUNCE_MAX_TIME)
				{
					key_quick_cnt = 0;
					window_start_tick  = g_SosButtonClickMsg.clickTime;
				}
			}
            SosButtonState = E_SOS_BUTTON_STATE_CLICK;
        }
		else
		{
			if(key_quick_cnt != 0xFF)
			{
	            g_SosButtonClickMsg.clickTime = xTaskGetTickCount();
				key_time = osElapsedTimeGet( g_SosButtonClickMsg.clickTime, window_start_tick  );
				if(key_time >SOS_KEY_DEBOUNCE_MAX_TIME)
				{
					key_quick_cnt = 0xFF;
					window_start_tick  = 0;
				}
				else
				{
					//do nothing
				}
			}
			else
			{
				//do nothing
			}
		}
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_CLICK )            /*按键去抖*/
    {
        if( EcallHalGetSosButtonStatus() == 1 )
        {
            g_SosButtonClickMsg.pressTime = xTaskGetTickCount();
            key_time = osElapsedTimeGet( g_SosButtonClickMsg.pressTime, g_SosButtonClickMsg.clickTime );
            if( key_time >= SOS_KEY_DEBOUNCE_TIME )
            {
            	if(key_quick_cnt<3)
            	{
	            	key_quick_cnt++;
					SosButtonState = E_SOS_BUTTON_STATE_FOURCHECK;			 /*按键确认被按下*/
            	}
				else
				{
					key_quick_cnt = 0xFF;
					window_start_tick = 0;
					SosButtonState = E_SOS_BUTTON_STATE_IDLE;
					memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
				}
				
            }
			else
			{
				//do nothing
			}
        }
        else
        {
			key_quick_cnt = 0xFF;
			window_start_tick = 0;
            SosButtonState = E_SOS_BUTTON_STATE_IDLE;
            memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
        }
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_FOURCHECK )            /*按键去抖*/
    {
		g_SosButtonClickMsg.pressTime = xTaskGetTickCount();
		
		key_time = osElapsedTimeGet( g_SosButtonClickMsg.pressTime, window_start_tick );
		if(key_time <= SOS_KEY_DEBOUNCE_MAX_TIME)//4S
		{
			if((key_quick_cnt>=3)&&(key_quick_cnt != 0xFF))
			{
				EcallSdkMesageSend(0x02);
				
				window_start_tick = 0;
				key_quick_cnt = 0xFF;
				SosButtonState = E_SOS_BUTTON_STATE_IDLE;
				memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
			}
			else
			{
				if( EcallHalGetSosButtonStatus() == 1 )
				{
					key_time = osElapsedTimeGet( g_SosButtonClickMsg.pressTime, g_SosButtonClickMsg.clickTime );
					if( key_time >= SOS_KEY_DEBANCE_TIME )
					{
						window_start_tick = 0;
						key_quick_cnt = 0xFF;
						SosButtonState = E_SOS_BUTTON_STATE_PRESS;			 /*按键确认被按下*/
					}
					else
					{
						//do nothing
					}
				}
				else
				{
					SosButtonState = E_SOS_BUTTON_STATE_IDLE;
					memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
				}
			}
		}
        else
        {
            SosButtonState = E_SOS_BUTTON_STATE_IDLE;
            memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
        }
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_PRESS )           /*按键确认被按下*/
    {
        g_SosButtonClickMsg.pressTime = xTaskGetTickCount();
        if( EcallHalGetSosButtonStatus() == 1 )
        {
            key_time = osElapsedTimeGet( g_SosButtonClickMsg.pressTime, g_SosButtonClickMsg.clickTime );
            if( key_time >= SOS_KEY_HARD_FAULT_TIME )
            {
                SosButtonState = E_SOS_BUTTON_STATE_HARDFAULT;
            }
			else
			{
				//do nothing
			}
        }
        else
        {
        	EcallSdkMesageSend(0x02);
            SosButtonState = E_SOS_BUTTON_STATE_IDLE;
            memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
        }
    }
    else if(SosButtonState == E_SOS_BUTTON_STATE_HARDFAULT )           /*按键卡滞错误*/
    {
        if( EcallHalGetSosButtonStatus() == 0 )
        {
            SosButtonState = E_SOS_BUTTON_STATE_IDLE;
            memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));
        }
		else
		{
			//do nothing
		}
    }
}

void TaskEcallProcess( void *pvParameters )
{
    uint16_t cycleTimeCount = 0;
	uint32_t distime =0;
    MpuHalDataPack_t rxPack;
    MpuHalFilter_t mpuFilter;
    g_mpuHandle = MpuHalOpen();
	if(g_mpuHandle<0)//invalid handle
	{
		for(;;)
		{
			TBOX_PRINT("TaskEcallProcess : MpuHalOpen open error\r\n");
			vTaskDelay(1000);
		}
	}  
	
    //
    g_mpuHandle = MpuHalOpen();
    mpuFilter.aid = 0x04;
    mpuFilter.midMin = 0x14;
    mpuFilter.midMax = 0x14;
    MpuHalSetRxFilter(g_mpuHandle,&mpuFilter);
    MpuHalSetRxBuffer(g_mpuHandle,g_mpuDriverRxBuffer,sizeof(g_mpuDriverRxBuffer));
    memset( (uint8_t *)&g_SosButtonClickMsg, 0x00, sizeof( SosButtonClickMsg_t ));

    while(1)
    {
#if 1
        if(GetTboxOtaStatus() == 1)
        {
        	distime = 3*1000;//30s
            g_EcallDisableTimeCount++;
            if(g_EcallDisableTimeCount>=distime)
            {
                g_EcallDisableTimeCount=0;
                SetTboxOtaStatus(0);
            }
        }
		else
		{
			g_EcallDisableTimeCount=0;
	        /* 按键处理 */
	        SosButtonDetection();
			SRSStatusCheck();
#if 0
	        cycleTimeCount++;
	        if(cycleTimeCount > 1000 / ECALL_PROCESS_CYCLE_TIME)
	        {
	            cycleTimeCount = 0;
	            /*MIC状态检测*/
	            if( EcallHalGetMicConnectStatus() == 0 )
	            {
	                //ClearDtcFaultState(E_DTC_ITEM_MIC_SHORT);     // MIC连接正常
	                //ClearDtcFaultState(E_DTC_ITEM_MIC_OPEN);
	            }
	            else if( EcallHalGetMicConnectStatus() == 1 )
	            {
	                //SetDtcFaultState(E_DTC_ITEM_MIC_OPEN);
	            }
	            else if( EcallHalGetMicConnectStatus() == 2 )
	            {
	                //SetDtcFaultState(E_DTC_ITEM_MIC_SHORT);
	            }
	        }
#endif
		}
        vTaskDelay(ECALL_PROCESS_CYCLE_TIME);
#else
    EcallHalGpioTest(0);
    vTaskDelay(1000);
    EcallHalGpioTest(1);
    vTaskDelay(1000);
#endif
    }
}
