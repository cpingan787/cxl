#include "task_test.h"

/* FreeRTOS Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
// #include "utility.h"
// #include <string.h>

//driver
#include "canHal.h"
#include "logHal.h"
#include "hsmHal.h"
#include "ecallHal.h"
#include "peripheralHal.h"
#include "powerManageHal.h"
#include "flashHal.h"

//stru_can_hal_msg Test1canBuffer[50];

// #if(1)
// stru_can_hal_msg Test2canBuffer[50];
// #endif
// uint32_t canTxCount;
// uint32_t canRxCount;

#if 0
static void CanTest1(void)
{
  typeCanHandLe canHandle;
  typeTimerHandle timerHandle;
  int16_t ret;
  uint16_t i;
  stru_can_hal_msg canMsg;
  stru_can_hal_msg_filter canFilter;
  uint32_t canId;
  uint8_t canData[8];


  canHandle = CanDriverHalOpen(TBOX_CAN_CHANNEL_1);
  timerHandle = PeripheralDriverHal_TimerOpen();
  if(canHandle<0)//invalid handle
  {
    return ;
  }
  if(timerHandle<0)
  {
    return ;    
  }

  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0x7F0;
  
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x01;
  canFilter.canIdExtdMax = 0x01;
  CanDriverHalSetFilter(canHandle,&canFilter); 
  CanDriverHalSetRxBuffer(canHandle,Test1canBuffer,50);
  
  canData[0] = 1;
  canData[1] = 0;  
  canData[2] = 4;  
  canData[3] = 5;  
  canData[4] = 6;  
  canData[5] = 7;  
  canData[6] = 8;  
  canData[7] = 9;
  canId = 0x00000100;
  //PeripheralDriverHal_TimerStart(timerHandle,100);
  canTxCount = 0;
  canRxCount = 0;
  while(1)
  {    
    /*ret = CanDriverHalTransmit(canHandle,canId,canData,8); 
    canTxCount++;*/
    
    while(1)
    {
			for(int i=0;i<10;i++)
			{
				canData[0] = canTxCount>>24;
				canData[1] = canTxCount>>16;
				canData[2] = canTxCount>>8;
				canData[3] = canTxCount>>0;
				
				canData[4] = canRxCount>>24;
				canData[5] = canRxCount>>16;
				canData[6] = canRxCount>>8;
				canData[7] = canRxCount>>0;
				ret = CanDriverHalTransmit(canHandle,canId,canData,8);
				canRxCount++;				
			}
			RTOS_HalApiWait(10);
      /*if(ret==0)
      {
        canRxCount++;
      }
      else
      {
        RTOS_HalApiWait(2);         
      } */   
 
    }

    //RTOS_HalApiWait(10);
  }  
}
#endif

// void Delay(__IO uint32_t nCount)	 //简单的延时函数
// {
// 	for(; nCount != 0; nCount--);
// }



uint32_t m_testCount = 0;
#if 0
static void CanTest2(void)
{
  typeCanHandLe canHandle;
  int16_t ret;
  uint16_t i;
  stru_can_hal_msg canMsg;
  uint32_t canId;
  uint8_t canData[64];
  stru_can_hal_msg_filter canFilter;
     //UartTest1();
  canHandle = CanDriverHalOpen(TBOX_CAN_CHANNEL_1);
  if(canHandle<0)//invalid handle
  {
    return ;
  }
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0x100;
  
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x01;
  canFilter.canIdExtdMax = 0x01;
  CanDriverHalSetFilter(canHandle,&canFilter); 
   
  CanDriverHalSetRxBuffer(canHandle,Test2canBuffer,150);
	memset(canData,0,64);


  canId = 0x00000101;  
	
	TBOX_PRINT("Can Test2 is start...\r\n");
	//FLEXCAN0_transmit_msg();
  while(1)
  { 
    ret = CanDriverHalReceiveWait(canHandle,&canMsg,100);
    if(ret==0)
    {
   //TBOX_PRINT("Can Test2 receive can data...\r\n");
   canData[1]++;
    memcpy(canData,&canMsg.canData,64);
            //canData[24] = canMsg.canData[24];
   m_testCount++;
   ret = CanDriverHalTransmit(canHandle,canId,canData,32);
   TBOX_PRINT("Can Test2 transmit can data...\r\n");
      i++;
    }
    else
    {
      //RTOS_HalApiWait(10);
    }
		
  }  
}
#endif

#if 0
static void CanTest2(void)
{
  typeCanHandLe canHandle;
  int16_t ret;
  uint16_t i;
  stru_can_hal_msg canMsg;
  uint32_t canId;
  uint8_t canData[64];
  stru_can_hal_msg_filter canFilter;
     //UartTest1();
  canHandle = CanDriverHalOpen(TBOX_CAN_CHANNEL_1);
  if(canHandle<0)//invalid handle
  {
    return ;
  }
  canFilter.useStdFilter = 0x01;
  canFilter.canIdStdMin = 0x00;
  canFilter.canIdStdMax = 0x100;
  
  canFilter.useExdtFilter = 0x00; 
  canFilter.canIdExtdMin = 0x01;
  canFilter.canIdExtdMax = 0x01;
  CanDriverHalSetFilter(canHandle,&canFilter); 
   
  CanDriverHalSetRxBuffer(canHandle,Test2canBuffer,50);
  memset(canData,0,64);
  canData[0] = 2;
  canData[1] = 0;  
  canData[2] = 0;  
  canData[3] = 0;  
  canData[4] = 0xAA;  
  canData[5] = 0;  
  canData[6] = 0;  
  canData[7] = 0xBB;
  
  canData[14] = 0xcc;
  
  
  canId = 0x00000101;  
 
 TBOX_PRINT("Can Test2 is start...\r\n");
 //FLEXCAN0_transmit_msg();
  while(1)
  { 
    ret = CanDriverHalReceiveWait(canHandle,&canMsg,100);
    if(ret==0)
    {
   //TBOX_PRINT("Can Test2 receive can data...\r\n");
   canData[1]++;
    memcpy(canData,&canMsg.canData,64);
            //canData[24] = canMsg.canData[24];
   m_testCount++;
   ret = CanDriverHalTransmit(canHandle,canId,canData,32);
   TBOX_PRINT("Can Test2 transmit can data...\r\n");
      i++;
    }
    else
    {
      //RTOS_HalApiWait(10);
    }

  }  
}
#endif

// void BatteryTest(void)
// {
// 	PeripheralDriverHal_Enable_battery_charge(1);
// 	PeripheralDriverHal_Enable_battery_out(1);
// }

// uint8_t Test1TaskUartBuffer[100];
// uint8_t Test2TaskUartBuffer[100];
// uint8_t Test1Data[50];
// uint8_t Test2Data[50];

// uint32_t m_testUartRx = 0;



// void UartTest1(void)
// {
//   typeUartHandLe uartHandle;
// //  uint8_t i;
// 	stru_uartFilterConfig filter;
	
//   uartHandle = UartDriverHalOpen(2);
//   UartDriverHalConfigureBuffer(uartHandle,Test1TaskUartBuffer,sizeof(Test1TaskUartBuffer));
// 	filter.Aid = 0x01;
// 	filter.MinMid = 0x00;
// 	filter.MaxMid = 0xFF;
// 	UartDriverHalConfigureFilterByProtocal(uartHandle,&filter,1);
//   Test1Data[0] = 0x01;
// 	Test1Data[1] = 0x02;
//   Test1Data[2] = 0x03;
// 	Test1Data[3] = 0x04;	
//   Test1Data[4] = 0x05;
// 	Test1Data[5] = 0x06;	
//   Test1Data[6] = 0x07;
// 	Test1Data[7] = 0x08;
//   Test1Data[8] = 0x09;
// 	Test1Data[9] = 0x10;
//   Test1Data[10] = 0x11;
// 	Test1Data[11] = 0x12;
//   Test1Data[12] = 0x13;
// 	Test1Data[13] = 0x14;
// 	Test1Data[14] = 0x15;
// 	Test1Data[15] = 0x16;
	
//   while(1)   
//  {
// 	 uint16_t rxLength = 0;
// 	 UartDriverHalReceiveWait(uartHandle,Test2Data,&rxLength,1000000);
// 	 if(rxLength>0)
// 	 {
// 		 m_testUartRx ++;
// 			UartDriverHalTransmit(uartHandle,Test2Data,rxLength);
// 	 }	 		 
//    RTOS_HalApiWait(100);   
//  } 
// }

//static uint8_t testData[20];
void TaskTest(void *pvParameters )
{
    while(1)   
    {
      // CanHalTestMain();
      PeripheralHalTestMain();
      // HsmHalTestMain();
      // EcallHalTestMain();
      // vTaskDelay(3000);
      // PowerManageHalTestMain();
      FlashHalTestMain();
      // vTaskDelay(3000);
      // TBOX_PRINT("task test running\r\n");
    }
}

// void Test2Task(void *pvParameters )
// {
//   //uint32_t i;
// 	uint32_t tickCount;
// 	uint32_t idleCount;
//     //UartTest2();
// 	CanTest2();
//     //mutexTest2();
// 	while(1)
// 	{
// 	   tickCount = RTOS_HalGetTickCount();
// 	   idleCount = GetIdleCount();
// 	   TBOX_PRINT("idle count is %d \r\n",idleCount);
// 	   RTOS_HalApiWait(1000);
// 	  }
// }




// typedef enum
// {
//     SyncState_Init,
//     SyncState_Idle,
//     SyncState_IoSyncTransmit,
//     syncState_Sleep,

// } enum_SyncState;

// //配置蓝牙指令
// typedef enum
// {
//     BLE_Config_BRD = 1,
//     BLE_Config_BRD_MSG,//广播内容
//     BLE_Config_Wakeup,
//     BLE_Config_ON_OFF,
//     BLE_Config_RESERVE,
// } enum_BLE_CMD;
// /***********************定时器**************************************/
// #define PERIPHERAL_TIMER_INSTANCE_NUMBER    3
// typedef int16_t typeTimerHandle;
// typeTimerHandle SE_TimerHandle;//se专用定时器


// enum_SyncState m_syncState = SyncState_Init;

// void CpuStartCycleProcess(void);
// void McuCpuTimeSyncCycleProcess(uint8_t *pRxData, uint16_t rxLength);
// void McuCpuTimeSyncInitialize(typeUartHandLe uartHandle);

// //信长城接口实现
// int16_t Iwall_GetSystemTime(struct tm *systime);
// uint32_t Iwall_MpuDataReceive(uint8_t *data,  uint32_t *datalen);
// uint32_t Iwall_MpuDataSend(uint8_t *data, uint32_t *datalen);
// uint32_t Iwall_BleDataReceive(uint8_t *data, uint32_t *datalen);
// uint32_t Iwall_BleDataSend(uint8_t *data, uint16_t datalen);
// uint32_t Iwall_BleConfig(uint8_t cmd, uint8_t *data, uint32_t datalen);
// uint32_t Iwall_BleGetRssi(uint8_t cnt, uint8_t *rssi);
// char     Iwall_BleGetRssi_fresh(uint8_t cnt);
// char     BLE_SendCmdToBle(enum_BLE_CMD ble_cmd,uint8_t *data,uint32_t datalen);
// char     BLE_ReceiveCmdFromBle(enum_BLE_CMD ble_cmd,uint8_t *data);
// char BLE_SetIbeacon(uint8_t *data,uint32_t datalen);
// char  BLE_GetIbeacon(uint8_t *data);
// #ifdef VE21_HW1_2
// #else
// char  Iwall_BleSetRssi_fresh(uint8_t cnt);
// #endif
// int16_t ReadDataFromFlash(uint32_t address,uint8_t *data,uint32_t dataLength);
// int16_t WriteDataToFlash(uint32_t address,const uint8_t *data,uint32_t dataLength);
// uint32_t BLE_separate_rssi(uint8_t *sr,uint8_t *rt,uint16_t datalen,uint8_t *des);
// void SPI_Init_t(void);

// //uint8_t Test1TaskUartBuffer[100];
// //uint8_t Test2TaskUartBuffer[100];
// static uint8_t m_uartRxData[64];


// extern uint16_t BLE_RxBuffer_RecCount;
// extern enum_BLE_CMD BLE_cmd_Send;


// uint8_t BLE_txBuff[BLE_SEND_MAX] = {0};//向蓝牙发送数据每次最多1024
// uint8_t BLE_rxBuff[BLE_MAX_NUM_REC] = {0};//蓝牙接受数据
// uint32_t   ble_count_rtos = 0;
// uint8_t  ret_count = 0;//蓝牙读包测试此处

// void BLE_Task(void* parmeter)
// {

	
// //	SE_TimerHandle = PeripheralDriverHal_TimerOpen();//定时器打开
//  //   PeripheralDriverHal_TimerStart(SE_TimerHandle,10*1000);//10 s 定时器开启	
   
//  //   uartHandle = UartDriverHalOpen(1);

	
// //	Iwall_Ble_Init();//蓝牙数据设置初始化
 
// //	se_connect_test();//SE连接函数
// //    se_version_test();//SE版本获取函数

// ////////////	while(getbleisstart()==false)
// ////////////	{
// ////////////		RTOS_HalApiWait(1);
// ////////////	}
//     while (1)
//     {
// #ifdef VE21_HW1_2
// 	//	Iwall_BleConect_Test();
	
		
// 		BleTaskCycleProcess();
// //		RTOS_HalApiWait(2);
// //		AppEventProcess();
// 		RTOS_HalApiWait(5);
	
// 		__NOP();
// 	//	RTOS_HalApiWait(1);//任务周期1ms
// 	//	BleDataParseProcess();
// 	//	ret = BleDataReceive(BLE_RxBuffer, &BLE_rxlenght);//接收蓝牙数据()
// #else
		
// #endif
//     }
// }

// static uint8_t u8TimeSyncMidCnt = 0;
// static uint8_t m_uartDriverRxBuffer[64];


// void McuCpuSync_Task(void *pvParameters)
// {
//     typeUartHandLe uartHandle;
//     stru_uartFilterConfig uartFilter;
//     uint16_t rxLength;
//     uint8_t count;
//     uint32_t mcu_rxLength;//接收cpu数据长度
//     uint32_t mcu_txLength;//发送数据长度
//     uint8_t mcu_rxData[50];//接收cpu数据
//     uint8_t mcu_txData[50];//发送数据给cpu

//     uartHandle = UartDriverHalOpen(GetMainCpuUartChannel());  //UART_CHANNEL_CPU_MAIN
//     if (uartHandle < 0) //invalid handle
//     {
//         for (;;)
//         {
//             RTOS_HalApiWait(10);
//         }
//     }
//     uartFilter.Aid = 0x01;
//     uartFilter.MinMid = 0x02;
//     uartFilter.MaxMid = 0x08;
//     UartDriverHalConfigureFilterByProtocal(uartHandle, &uartFilter, 1);
//     UartDriverHalConfigureBuffer(uartHandle, m_uartDriverRxBuffer, sizeof(m_uartDriverRxBuffer));
//     McuCpuTimeSyncInitialize(uartHandle);
//     while (1)
//     {
//         uint16_t timeSyncRxLength = 0x00;
// 		if(count)
//         {
//            count = 0;
// //////////////           CpuStartCycleProcess();  //CPU 开机处理 
//         }
//         else
//         {
//            count = 1;
//         }
//         while (1)
//         {
//             rxLength = 0;
//             UartDriverHalReceiveWait(uartHandle, m_uartRxData, &rxLength, 0);
//             if (rxLength == 0x00)
//             {
//                 break;
//             }
//             if (m_uartRxData[3] == 0x02) //time sync
//             {
//                 u8TimeSyncMidCnt += 1;
//                 timeSyncRxLength = rxLength;
//                 McuCpuTimeSyncCycleProcess(m_uartRxData, timeSyncRxLength);
//             }
//         }
// //////////////////		SendMcuMsgToCpu(uartHandle,0x01,0x02,01,mcu_txData,0);
// 	#if 0
//         //获取系统时间接口,完成
//         Iwall_GetSystemTime(&mcu_tm);
//         //接收cpu数据(解包后的数据)mcu_txLength
//         Iwall_MpuDataReceive(mcu_rxData,&mcu_rxLength);
//         if(mcu_rxLength!=0)
//         {
//             mcu_rxData[0] = 0x00;
//         }
		
//         //向cpu发送数据
// 		SendMcuMsgToCpu(0x01,0x02,mcu_txData,mcu_txLength);//
//         if (timeSyncRxLength == 0x00)
//         {
//             McuCpuTimeSyncCycleProcess(m_uartRxData, timeSyncRxLength);
//         }
// 	#endif
//         RTOS_HalApiWait(10);

//     }
// }

