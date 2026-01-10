/***************************************************************************//**
* \file main_cm4.c
*
* \version 1.0
*
* \brief Main example file for CM4
*
********************************************************************************
* \copyright
* Copyright 2016-2020, Cypress Semiconductor Corporation. All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "cy_project.h"
#include "FreeRTOS.h"

#include "semphr.h"
#include "taskManage.h"
#include "sdkdemo.h"
#include "crypto/cy_crypto_config.h"
#include "logHal.h"

#define IPC_RELEASE_INT_NUMBER  6   /* Release interrupt number. This interrup is handled by notifier (CM4) */
#define IPC_NOTIFY_INT_NUMBER   7   /* Notify interrupt number. This interrup is handled by notifiee (CM0+) */
#define CY_IPC_CHAN_USRPIPE_CM4 7



static void SetupOsExceptions(void)
{
    /* Handler for Cortex Supervisor Call (SVC, formerly SWI) - address 11 */
    Cy_SysInt_SetVector(SVCall_IRQn, (cy_israddress)vPortSVCHandler);

    /* Handler for Cortex PendSV Call - address 14 */
    Cy_SysInt_SetVector(PendSV_IRQn, (cy_israddress)xPortPendSVHandler);

    /* Handler for Cortex SYSTICK - address 15 */
    Cy_SysInt_SetVector(SysTick_IRQn, (cy_israddress)xPortSysTickHandler);
}

int main(void)
{
    SystemInit();
    __enable_irq(); /* Enable global interrupts. */
   

    /* At first force release the lock state. */
    (void)Cy_IPC_Drv_LockRelease(Cy_IPC_Drv_GetIpcBaseAddress(CY_IPC_CHAN_USRPIPE_CM4), CY_IPC_NO_NOTIFICATION);

    /* Wait until the CM0+ IPC server is started */
    /* Note:
     * After the CM0+ IPC server is started, the corresponding number of the INTR_MASK is set.
     * So in this case CM4 can recognize whether the server has started or not by the INTR_MASK status.
     */
    while (((1uL << (CY_IPC_CHAN_USRPIPE_CM4)) !=  
        Cy_IPC_Drv_ExtractAcquireMask(Cy_IPC_Drv_GetInterruptMask(Cy_IPC_Drv_GetIntrBaseAddr(CY_IPC_CHAN_USRPIPE_CM4)))))
    {
    }    

    SetupOsExceptions();
      
    TasksStart();
   
    for(;;)
    {
        // Wait 0.05 [s]
    }
}

void vApplicationIdleHook(void)
{
    /* The idle task hook is enabled by setting configUSE_IDLE_HOOK to 1 in
    FreeRTOSConfig.h. This function is called on each cycle of the idle task. */
}

/**
 *****************************************************************************
 ** RTOS "malloc failed" hook if not enough memory is left on the heap
 **
 **
 ** \return none
 *****************************************************************************/
void vApplicationMallocFailedHook(void)
{
    /* The heap space has been exceeded. */

    taskDISABLE_INTERRUPTS();
    /*
    while(1)
    {
        // Do nothing - this is a placeholder for a breakpoint 
    }
*/
}

void vApplicationStackOverflowHook(TaskHandle_t xTask, char_t *pcTaskName)
{
    /* The stack space has been exceeded for a task */
    
    (void)xTask;
    (void)pcTaskName;

    taskDISABLE_INTERRUPTS();
    
    while(1)
    {
    }
}

static StackType_t g_idleTaskStack[configMINIMAL_STACK_SIZE];
static StackType_t g_timerTaskStack[configTIMER_TASK_STACK_DEPTH];
static StaticTask_t g_idleTaskTcb;
static StaticTask_t g_timerTaskTcb;


void vApplicationGetIdleTaskMemory( StaticTask_t ** ppxIdleTaskTCBBuffer,
                                               StackType_t ** ppxIdleTaskStackBuffer,
                                               uint32_t * pulIdleTaskStackSize )
{
    *ppxIdleTaskTCBBuffer = &g_idleTaskTcb;
    *ppxIdleTaskStackBuffer= g_idleTaskStack;
    *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
}

void vApplicationGetTimerTaskMemory( StaticTask_t ** ppxTimerTaskTCBBuffer,
                                          StackType_t ** ppxTimerTaskStackBuffer,
                                              uint32_t * pulTimerTaskStackSize )
{
    *ppxTimerTaskTCBBuffer = &g_timerTaskTcb;
    *ppxTimerTaskStackBuffer = g_timerTaskStack;
    *pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
}

//uint8_t ble_data[200];
//uint32_t ble_data_count;
//void taskDemo()
//{
//BleDataRecv(ble_data,&ble_data_count);
  
//}
/*
uint32_t Iwall_BleDataRecv(unsigned char *data, unsigned int *datalen)
{
	uint32_t u32Ret = 0;
	int32_t Ret = 0;
	Ret = BleDataRecv(data, datalen);
	if (Ret)
	{
		u32Ret = 1;
	}
	
	return u32Ret;
}

uint32_t Iwall_BleATRecv(unsigned char *data, unsigned int *datalen)
{
	uint32_t u32Ret = 0;
	int32_t Ret = 0;
	Ret = BleATRecv(data, datalen);
	if (Ret)
	{
		u32Ret = 1;
	}
	return u32Ret;
}

uint32_t u32AckLen;

uint32_t Iwall_GetBleStatus(void)
{
    uint32_t u32Ret = 0;
    uint8_t CheckAck[16] = {0};
    static uint8_t u8TurnFlag = 0;

    if (2 == u8TurnFlag)
    {
        u32Ret = BleDataSend("AT\r\n", 5);
        if (0 == u32Ret)
        {
            u32Ret = 0;
            u8TurnFlag = 1;
        }
    }
    else if (1 == u8TurnFlag)
    {
        Iwall_BleDataRecv(CheckAck, &u32AckLen);
        u32Ret = Iwall_BleATRecv(CheckAck, &u32AckLen);
        if (!u32Ret)
        {
 //           if (!memcmp("AT+OK", CheckAck, u32AckLen))
            {
         //      ILOG("--- Ble Init Success ---\r\n");
            }
            else
            {
           //     ILOG("--- Ble Init Error ---\r\n");
          //      CharDump(CheckAck, 16);
            }
            u8TurnFlag = 0;
        }

        u32Ret = 0;
    }

    return u32Ret;
}




uint8_t ble_pData[200] = {0x01,0x02,0x03,0x04,0x05,0x06};
uint8_t countl = 1;
uint8_t ble_pData_rev[100];
uint32_t ble_pData_rev_count;
uint32_t ble_pAT_rev_count;
uint8_t ble_pAT_rev[100];
ST_LOCALTIME systime;

void taskDemo()
{
  
//  if(countl == 2)
  {
  //  BleDataSend(ble_pData,200);
 //vTaskDelay(5000);   
    
     BleDataSend(ble_pData,110);
 vTaskDelay(200);   
 ble_pData[0]++;
    countl = 1;
  }
    if(countl == 3)
  {
    BleDataSend("AT\r\n", 5);
    
    countl = 1;
  }
  BleHalRead(ble_pData_rev,&ble_pData_rev_count);

  BleATRecv(ble_pAT_rev,&ble_pAT_rev_count);
//  Iwall_GetBleStatus();
  GetSystemTime(&systime);
  if(countl == 3)
  SENVMErase(0x14000000);
  if(countl == 2)
    SENVMWrite(0x14000000,ble_pData,6);
}

*/

/* [] END OF FILE */
