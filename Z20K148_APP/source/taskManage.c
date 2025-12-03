/*************************************************
 Copyright © 2025 SiRun (AnHui). All rights reserved.
 File Name: taskManage.c
 Author: 
 Created Time: 
 Description: 
 Others: 
 *************************************************/
/****************************** include ***************************************/
#include "FreeRTOS.h"
#include "task.h"
#include "taskManage.h"
#include "batteryHal.h"
// #include "bleHal.h"
#include "canHal.h"
#include "gSensorHal.h"
#include "logHal.h"
#include "mpuHal.h"
#include "peripheralHal.h"
#include "timerHal.h"
#include "flashHal.h"
#include "PowerManageHal.h"
#include "ecallHal.h"
#include "hsmHal.h"
#include "mcuMpuSyncTask.h"
#include "remoteDiagnosticTask.h"
#include "taskPowerManage.h"
#include "taskVehicleDataToCpu.h"
#include "taskDiagnostic.h"
#include "taskDtcProcess.h"
#include "taskEcallProcess.h"
#include "canPeriodTask.h"
#include "task_test.h"
#include "remoteControl.h"
#include "string.h"

/****************************** Macro Definitions ******************************/
#define TASK_TEST_ENABLE    0
#define LOWEST_TASK_PRIORITY                            (tskIDLE_PRIORITY+1)
#define REMOTE_UPDATE_TASK_PRIORITY                     (tskIDLE_PRIORITY+2)
#define POWERMANAGE_TASK_PRIORITY                       (tskIDLE_PRIORITY+3)
#define MCU_CPU_SYNC_TASK_PRIORITY                      (tskIDLE_PRIORITY+3)
#define UDS_DIG_TASK_PRIORITY                           (tskIDLE_PRIORITY+3)
#define UPLOAD_DATA_TASK_PRIORITY                       (tskIDLE_PRIORITY+3)
#define MONITOR_TASK_PRIORITY	                        (tskIDLE_PRIORITY+3)
#define NET_MANAGE_TASK_PRIORITY                        (tskIDLE_PRIORITY+4)    
#define REMOTE_CONTROL_TASK_PRIORITY                    (tskIDLE_PRIORITY+4)
#define CAN_TX_CYCLE_TASK_PRIORITY                      (tskIDLE_PRIORITY+4)
#define BLUETOOTH_TASK_PRIORITY                         (tskIDLE_PRIORITY+2)
#define DRIVER_TASK_PRIORITY                            (tskIDLE_PRIORITY+6)
#define MPU_UART_TASK_PRIORITY                          (tskIDLE_PRIORITY+7)
#define TASK_TEST_STATIC_SIZE                           (256*1) 
#define TASK_MPU_HAL_TX_STATIC_SIZE                     (configMINIMAL_STACK_SIZE*3)
#define TASK_CAN_HAL_RX_STATIC_SIZE                     (configMINIMAL_STACK_SIZE*3)
#define TASK_POWER_MANAGE_STATIC_SIZE					(configMINIMAL_STACK_SIZE*2)
#define TASK_NET_MANAGE_STATIC_SIZE                     (configMINIMAL_STACK_SIZE*2)
#define TASK_DIAGNOSTIC_STATIC_SIZE                     (configMINIMAL_STACK_SIZE*4)
#define TASK_DIAGNOSTIC_DTC_STATIC_SIZE                 (configMINIMAL_STACK_SIZE*2)
#define TASK_ECALL_STATIC_SIZE                          (configMINIMAL_STACK_SIZE*6)
#define TASK_MCU_CPU_SYNC_STATIC_SIZE                   (configMINIMAL_STACK_SIZE*4)
#define TASK_CAN_DATA_TO_CPU_STATIC_SIZE                (configMINIMAL_STACK_SIZE*6)
#define TASK_TEST_PRESENT_STATIC_SIZE	                (configMINIMAL_STACK_SIZE*2)
#define TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE              (configMINIMAL_STACK_SIZE*2)
#define TASK_REMOTE_CONTROL_STATIC_SIZE                 (configMINIMAL_STACK_SIZE*12)
#define TASK_CAN_PERIOD_STATIC_SIZE   	                (configMINIMAL_STACK_SIZE*3)
#define TASK_MONITOR_STATIC_SIZE					    (configMINIMAL_STACK_SIZE)

#if __BUILD_TARGET__ == RELEASEAPP1
#define APP_ABSTRACT_ADDRESS                            (FLASH_APP_BANKA_ABSTRACT_ADDRESS)
#elif __BUILD_TARGET__ == RELEASEAPP2  
#define APP_ABSTRACT_ADDRESS                            (FLASH_APP_BANKB_ABSTRACT_ADDRESS)
#endif

#ifdef APP_ABSTRACT_ADDRESS
__root const uint8_t version[4]@(APP_ABSTRACT_ADDRESS) = {'V', '.', '0', '1'};
__root const uint8_t startAddr[4]@(APP_ABSTRACT_ADDRESS + 4) = {0};
__root const uint8_t codeLen[4]@(APP_ABSTRACT_ADDRESS + 8) = {0};
__root const uint8_t crcValue[4]@(APP_ABSTRACT_ADDRESS + 12) = {0}; 
__root const uint8_t encryValue[16]@(APP_ABSTRACT_ADDRESS + 16) = {0};
#endif

/* 任务监控相关配置 */
#define TASK_MONITOR_INTERVAL_MS        1000    /* 监控周期，单位毫秒 */
#define STACK_USAGE_THRESHOLD_WARNING   80      /* 栈使用率警告阈值百分比 */
#define STACK_USAGE_THRESHOLD_ERROR     90      /* 栈使用率错误阈值百分比 */
#define MAX_EXPECTED_TASKS              20      /* 最大预期任务数量，用于静态分配 */

/****************************** Type Definitions ******************************/
/* 任务统计信息结构体 */
#if configUSE_TRACE_FACILITY == 1
typedef struct
{
    char pcTaskName[configMAX_TASK_NAME_LEN];    /* 任务名称 */
    uint16_t usStackHighWaterMark;               /* 栈高水位 */
    uint16_t usStackSize;                        /* 栈大小 */
    uint8_t ucStackUsage;                        /* 栈使用率(%) */
    uint8_t ucState;                             /* 任务状态 */
    UBaseType_t uxPriority;                      /* 任务优先级 */
} TaskMonitorInfo_t;

/* 系统监控数据结构体 */
typedef struct
{
    uint32_t ulTotalRunTime;                     /* 系统总运行时间 */
    UBaseType_t uxTaskCount;                     /* 任务数量 */
    TaskMonitorInfo_t *pxTaskInfoArray;          /* 任务信息数组 */
} SystemMonitorData_t;
#endif

/****************************** Global Variables ******************************/
StaticTask_t m_mpuHalUartTxTaskBuffer;
StackType_t m_mpuHalUartTxTaskStack[TASK_MPU_HAL_TX_STATIC_SIZE];

StaticTask_t m_mpuHalSpiTxTaskBuffer;
StackType_t m_mpuHalSpiTxTaskStack[TASK_MPU_HAL_TX_STATIC_SIZE];

StaticTask_t m_canHalRxTaskBuffer;
StackType_t m_canHalRxTaskStack[TASK_CAN_HAL_RX_STATIC_SIZE];

StaticTask_t m_powerManageTaskBuffer;
StackType_t m_powerManageTaskStack[TASK_POWER_MANAGE_STATIC_SIZE];

#if(TASK_TEST_ENABLE == 1)
StaticTask_t m_testTaskBuffer;
StackType_t m_testTaskStack[TASK_TEST_STATIC_SIZE];
#endif

StaticTask_t m_mcuCpuSyncTaskBuffer;
StackType_t m_mcuCpuSyncTaskStack[TASK_MCU_CPU_SYNC_STATIC_SIZE];

StaticTask_t m_canToCpuTaskBuffer;
StackType_t m_canToCpuTaskStack[TASK_CAN_DATA_TO_CPU_STATIC_SIZE];

#if configUSE_TRACE_FACILITY == 1
StaticTask_t m_monitorTaskBuffer;
StackType_t m_monitorTaskStack[TASK_MONITOR_STATIC_SIZE];
#endif

StaticTask_t m_diagnosticTaskBuffer;
StackType_t m_diagnosticTaskStack[TASK_DIAGNOSTIC_STATIC_SIZE];

StaticTask_t m_dtcTaskBuffer;
StackType_t m_dtcTaskStack[TASK_DIAGNOSTIC_DTC_STATIC_SIZE];

StaticTask_t m_ecallTaskBuffer;
StackType_t m_ecallTaskStack[TASK_ECALL_STATIC_SIZE];

StaticTask_t m_canPeriodTaskBuffer;
StackType_t m_canPeriodTaskStack[TASK_CAN_PERIOD_STATIC_SIZE];

StaticTask_t m_remoteDiagnostic1TaskBuffer;
StackType_t m_remoteDiagnostic1TaskStack[TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE];

StaticTask_t m_remoteControlTaskBuffer;
StackType_t m_remoteControlTaskStack[TASK_REMOTE_CONTROL_STATIC_SIZE];

uint8_t ExampleStr1[] = "App Project is running...\r\n";
const CanConfigure_t g_globalCanfdConfig[] = 
{
    {
        .canChannel = TBOX_CAN_CHANNEL_1,
        // .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_2,
        //.canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    // {
    //     .canChannel = TBOX_CAN_CHANNEL_3,
    //     // .canFdMode = 1,
    //     .bandrate = E_CAN_500K,
    //     .dataBandrate = E_CAN_2000K,
    //     .busOffEventFun = NULL,
    // },
    // {
    //     .canChannel = TBOX_CAN_CHANNEL_4,
    //     .canFdMode = 1,
    //     .bandrate = E_CAN_500K,
    //     .dataBandrate = E_CAN_2000K,
    //     .busOffEventFun = NULL,
    // },
    // {
    //     .canChannel = TBOX_CAN_CHANNEL_5,
    //     .canFdMode = 1,
    //     .bandrate = E_CAN_500K,
    //     .dataBandrate = E_CAN_2000K,
    //     .busOffEventFun = NULL,
    // },
    // {
    //     .canChannel = TBOX_CAN_CHANNEL_6,
    //     .canFdMode = 1,
    //     .bandrate = E_CAN_500K,
    //     .dataBandrate = E_CAN_2000K,
    //     .busOffEventFun = NULL,
    // },
};
#if configUSE_TRACE_FACILITY == 1
/* 全局监控数据 */
static SystemMonitorData_t g_systemMonitorData;

/* 静态分配的任务状态数组，避免频繁的动态内存分配 */
static TaskStatus_t g_taskStatusArray[MAX_EXPECTED_TASKS];

/* 静态分配的任务监控信息数组 */
static TaskMonitorInfo_t g_taskMonitorInfoArray[MAX_EXPECTED_TASKS];
#endif

/****************************** Function Declarations *************************/
static void start_tasks(void);
static void CreateDriverTasks(void);
static void CreateAppTasks(void);
static int16_t TasksManageInit(void);
static void MainTask(void *pvParameters);
#if configUSE_TRACE_FACILITY == 1
static uint8_t ucCalculateStackUsage(uint16_t usHighWaterMark, uint16_t usStackSize);
static void vInitTaskStackSizes(TaskMonitorInfo_t *pxTaskInfo);
static void vCheckStackUsageWarnings(void);
static void TaskMonitorState(void);
static void vMonitorSystemInit(void);
#endif

/****************************** Public Function Implementations ***************/
#if configUSE_TRACE_FACILITY == 1
/*************************************************
   Function:        ucCalculateStackUsage
   Description:     Calculate the stack usage percentage based on the high water mark
   Input:           usHighWaterMark - The high water mark of the task stack
                    usStackSize - The total stack size of the task
   Output:          None
   Return:          None
   Others:          None
  *************************************************/
static uint8_t ucCalculateStackUsage(uint16_t usHighWaterMark, uint16_t usStackSize)
{
    uint8_t ucStackUsage = 0;
    if (usStackSize == 0)
    {
        return 0;
    }
    uint32_t usUsedStack = usStackSize - usHighWaterMark;
    ucStackUsage = (uint8_t)((usUsedStack * 100) / (uint32_t)usStackSize);
    return ucStackUsage;
}

/*************************************************
   Function:        vInitTaskStackSizes
   Description:     Initialize the stack size of each task in the system
   Input:           pxTaskInfo - Pointer to the TaskMonitorInfo_t structure
   Output:          None
   Return:          None
   Others:          None
  *************************************************/
static void vInitTaskStackSizes(TaskMonitorInfo_t *pxTaskInfo)
{
    if (pxTaskInfo == NULL)
    {
        TBOX_PRINT("vInitTaskStackSizes: pxTaskInfo is NULL");
        return;
    }
    if (strcmp(pxTaskInfo->pcTaskName, "Monitor_task") == 0) {
        pxTaskInfo->usStackSize = TASK_MONITOR_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "IDLE") == 0) {
        pxTaskInfo->usStackSize = configMINIMAL_STACK_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "mpu_tx_t") == 0) {
        pxTaskInfo->usStackSize = TASK_MPU_HAL_TX_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "mpu_spi_tx_t") == 0) {
        pxTaskInfo->usStackSize = TASK_MPU_HAL_TX_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "can_rx_t") == 0) {
        pxTaskInfo->usStackSize = TASK_CAN_HAL_RX_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "test") == 0) {
        pxTaskInfo->usStackSize = TASK_TEST_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "ToCpu_task") == 0) {   
        pxTaskInfo->usStackSize = TASK_CAN_DATA_TO_CPU_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "mcuMpuSync_task") == 0) {
        pxTaskInfo->usStackSize = TASK_MCU_CPU_SYNC_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "diagnostic_task") == 0) {
        pxTaskInfo->usStackSize = TASK_DIAGNOSTIC_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "canPeriod_task") == 0) {
        pxTaskInfo->usStackSize = TASK_CAN_PERIOD_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "dtc_task") == 0) {
        pxTaskInfo->usStackSize = TASK_DIAGNOSTIC_DTC_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "remoteDiagnostic_task") == 0) {
        pxTaskInfo->usStackSize = TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "remoteControl_task") == 0) {
        pxTaskInfo->usStackSize = TASK_REMOTE_CONTROL_STATIC_SIZE;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "Tmr Svc") == 0) {
        pxTaskInfo->usStackSize = configTIMER_TASK_STACK_DEPTH;
    }
    else if (strcmp(pxTaskInfo->pcTaskName, "main_task") == 0) {
        pxTaskInfo->usStackSize = configMINIMAL_STACK_SIZE*4;
    }
    else {
        TBOX_PRINT("vInitTaskStackSizes: unknown task name %s", pxTaskInfo->pcTaskName);
        pxTaskInfo->usStackSize = TASK_NET_MANAGE_STATIC_SIZE; /* 默认值 */
    }   
}

/*************************************************
   Function:        vCheckStackUsageWarnings
   Description:     Check the stack usage of all tasks and print warnings if necessary
   Input:           None
   Output:          None
   Return:          None
   Others:          None
  *************************************************/
static void vCheckStackUsageWarnings(void)
{
    for (UBaseType_t x = 0; x < g_systemMonitorData.uxTaskCount; x++)
    {
        TaskMonitorInfo_t *pxTaskInfo = &g_systemMonitorData.pxTaskInfoArray[x];
        
        if (pxTaskInfo->ucStackUsage >= STACK_USAGE_THRESHOLD_ERROR)
        {
            TBOX_PRINT("[错误] 任务 %s 栈使用率过高: %u%%\n", 
                   pxTaskInfo->pcTaskName, pxTaskInfo->ucStackUsage);
            /* 这里可以添加错误处理逻辑，如记录DTC等 */
        }
        else if (pxTaskInfo->ucStackUsage >= STACK_USAGE_THRESHOLD_WARNING)
        {
            TBOX_PRINT("[警告] 任务 %s 栈使用率警告: %u%%\n", 
                   pxTaskInfo->pcTaskName, pxTaskInfo->ucStackUsage);
        }
    }
}

/*************************************************
   Function:        TaskMonitorState
   Description:     Update the state and stack usage of all tasks in the system
   Input:           None
   Output:          None
   Return:          None
   Others:          None
  *************************************************/
static void TaskMonitorState(void)
{
    UBaseType_t uxArraySize, x;
    uint32_t ulTotalRunTime;

    uxArraySize = uxTaskGetNumberOfTasks();
    if (uxArraySize <= MAX_EXPECTED_TASKS)
    {
        uxArraySize = uxTaskGetSystemState(g_taskStatusArray, MAX_EXPECTED_TASKS, &ulTotalRunTime);
        for (x = 0; x < uxArraySize; x++)
        {
            TaskMonitorInfo_t *pxTaskInfo = NULL;
            // 在静态数组中查找任务
            for (UBaseType_t y = 0; y < MAX_EXPECTED_TASKS; y++)
            {
                if (g_taskMonitorInfoArray[y].pcTaskName[0] != '\0' && 
                    strcmp(g_taskMonitorInfoArray[y].pcTaskName, g_taskStatusArray[x].pcTaskName) == 0)
                {
                    pxTaskInfo = &g_taskMonitorInfoArray[y];
                    break;
                }
            }  
            // 如果没找到，尝试找一个空闲槽位初始化新任务
            if (pxTaskInfo == NULL)
            {
                for (UBaseType_t y = 0; y < MAX_EXPECTED_TASKS; y++)
                {
                    if (g_taskMonitorInfoArray[y].pcTaskName[0] == '\0')
                    {
                        pxTaskInfo = &g_taskMonitorInfoArray[y];
                        // 复制任务名称
                        strcpy(pxTaskInfo->pcTaskName, g_taskStatusArray[x].pcTaskName);
                        // 初始化新任务数据
                        pxTaskInfo->usStackSize = 0;
                        vInitTaskStackSizes(pxTaskInfo);
                        break;
                    }
                }
            }
            if (pxTaskInfo != NULL)
            {
                pxTaskInfo->usStackHighWaterMark = g_taskStatusArray[x].usStackHighWaterMark;
                pxTaskInfo->ucState = g_taskStatusArray[x].eCurrentState;
                pxTaskInfo->uxPriority = g_taskStatusArray[x].uxCurrentPriority;
                pxTaskInfo->ucStackUsage = ucCalculateStackUsage(
                    pxTaskInfo->usStackHighWaterMark, pxTaskInfo->usStackSize);
                
            }
        }
        /* 检查栈使用警告 */
        vCheckStackUsageWarnings();
    }
    else
    {
        TBOX_PRINT("[警告] 任务数量超过最大预期值 %u, 当前任务数: %u\n", MAX_EXPECTED_TASKS, uxArraySize);
    }
}

/*************************************************
   Function:        vMonitorSystemInit
   Description:     Initialize the task monitoring system
   Input:           None
   Output:          None
   Return:          None
   Others:          None
  *************************************************/
static void vMonitorSystemInit(void)
{
    /* 初始化监控数据 */
    memset(&g_systemMonitorData, 0, sizeof(SystemMonitorData_t));
    g_systemMonitorData.pxTaskInfoArray = g_taskMonitorInfoArray;
    g_systemMonitorData.uxTaskCount = MAX_EXPECTED_TASKS;
    /* 初始化任务信息数组 */
    for (UBaseType_t i = 0; i < MAX_EXPECTED_TASKS; i++)
    {
        memset(&g_taskMonitorInfoArray[i], 0, sizeof(TaskMonitorInfo_t));
        g_taskMonitorInfoArray[i].pcTaskName[0] = '\0'; // 初始化为空字符串
    }
}

/*************************************************
   Function:        TaskMonitor
   Description:     Task function for monitoring system tasks and resources
   Input:           pvParameters - Not used in this implementation
   Output:          None
   Return:          None
   Others:          None
  *************************************************/
void TaskMonitor(void *pvParameters)
{
    TickType_t xLastWakeTime;
    uint32_t ulMonitorCounter = 0;
    
    /* 初始化监控系统 */
    vMonitorSystemInit();
    
    /* 等待系统稳定 */
    vTaskDelay(pdMS_TO_TICKS(2000));
    
    xLastWakeTime = xTaskGetTickCount();
    while (1)
    {
#if 0
        uint8_t ucStackUsage[320] = {0,};
        for (uint16_t i = 0; i < 320; i++)
        {
            if (ucStackUsage[i] > 0)
            {
                TBOX_PRINT("任务监控系统未初始化\n");
            }
        }
#endif
        vTaskDelayUntil(&xLastWakeTime, pdMS_TO_TICKS(TASK_MONITOR_INTERVAL_MS));
        
        /* 每10次周期输出完整报告，其他周期可以选择只输出摘要或关键信息 */
        TaskMonitorState();
        
        ulMonitorCounter++;
        
        /* 可以在这里添加定期清理或诊断逻辑 */
        if (ulMonitorCounter % 60 == 0) /* 每分钟执行一次 */
        {
            /* 可以添加内存使用情况检查、性能分析等 */
            TBOX_PRINT("监控系统运行正常，已持续监控 %u 分钟\n", ulMonitorCounter / 60);
            TBOX_PRINT("任务监控系统状态:\n");
            for (UBaseType_t i = 0; i < g_systemMonitorData.uxTaskCount; i++)
            {
                if (g_taskMonitorInfoArray[i].pcTaskName[0] != '\0')
                {
                    TBOX_PRINT("任务 %s: 栈高水位 %u, 优先级 %u, 栈使用 %u%%\n",
                            g_taskMonitorInfoArray[i].pcTaskName,
                            g_taskMonitorInfoArray[i].usStackHighWaterMark,
                            g_taskMonitorInfoArray[i].uxPriority,
                            g_taskMonitorInfoArray[i].ucStackUsage);
                }
            }
        }
        
        /* 防止计数器溢出 */
        if (ulMonitorCounter >= 0xFFFFFF00)
        {
            ulMonitorCounter = 0;
        }
    }
}
#endif

#if configCHECK_FOR_STACK_OVERFLOW == 2
/*************************************************
   Function:        vApplicationStackOverflowHook
   Description:     Callback function for FreeRTOS to detect stack overflow
   Input:           xTask - Handle of the task that caused the stack overflow
                    pcTaskName - Name of the task that caused the stack overflow
   Output:          None
   Return:          None
   Others:          Required by FreeRTOS when configCHECK_FOR_STACK_OVERFLOW is set to 1 or 2
  *************************************************/
void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName)
{
    /* Disable interrupts to prevent further damage */
    taskDISABLE_INTERRUPTS();
	for(uint32_t i = 0; i < 10; i++)
	{
		TBOX_PRINT("Stack overflow detected in task: %s\n", pcTaskName);
	}
    
    for( ;; )
    {
    }
}
#endif

/*************************************************
   Function:        TasksStart
   Description:     Public API to start the task management system
   Input:           None
   Output:          None
   Return:          None
   Others:          Calls the internal start_tasks function to initialize and start all tasks
 *************************************************/
void TasksStart(void)
{
    start_tasks();
}

/****************************** Private Function Implementations ***************/
/*************************************************
   Function:        CreateDriverTasks
   Description:     Create driver-level tasks for hardware communication
   Input:           None
   Output:          None
   Return:          None
   Others:          Creates tasks for MPU transmission and CAN reception
 *************************************************/
static void CreateDriverTasks(void)
{
    xTaskCreateStatic( MpuHalUartTxTask, "mpu_tx_t", TASK_MPU_HAL_TX_STATIC_SIZE, NULL, MPU_UART_TASK_PRIORITY, m_mpuHalUartTxTaskStack,&m_mpuHalUartTxTaskBuffer);
    xTaskCreateStatic( MpuHalSpiTxTask, "mpu_spi_tx_t", TASK_MPU_HAL_TX_STATIC_SIZE, NULL, DRIVER_TASK_PRIORITY, m_mpuHalSpiTxTaskStack,&m_mpuHalSpiTxTaskBuffer);
    xTaskCreateStatic( CanHalReceiveTask, "can_rx_t", TASK_CAN_HAL_RX_STATIC_SIZE, NULL, DRIVER_TASK_PRIORITY, m_canHalRxTaskStack,&m_canHalRxTaskBuffer); 
}

/*************************************************
   Function:        CreateAppTasks
   Description:     Create application-level tasks for system functionality
   Input:           None
   Output:          None
   Return:          None
   Others:          Creates tasks for vehicle data processing, diagnostics, CAN communication, and remote control
 *************************************************/
static void CreateAppTasks(void)
{
#if(TASK_TEST_ENABLE == 1)
    xTaskCreateStatic( TaskTest, "test", TASK_TEST_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_testTaskStack,&m_testTaskBuffer);
#endif
    xTaskCreateStatic(TaskVehicleDataToCpu,"ToCpu_task",TASK_CAN_DATA_TO_CPU_STATIC_SIZE, NULL,UPLOAD_DATA_TASK_PRIORITY, m_canToCpuTaskStack, &m_canToCpuTaskBuffer );
#if configUSE_TRACE_FACILITY == 1
    xTaskCreateStatic(TaskMonitor,"Monitor_task",TASK_MONITOR_STATIC_SIZE, NULL,MONITOR_TASK_PRIORITY, m_monitorTaskStack, &m_monitorTaskBuffer );
#endif    
    xTaskCreateStatic(McuMpuSyncTaskMain,"mcuMpuSync_task",TASK_MCU_CPU_SYNC_STATIC_SIZE, NULL,MCU_CPU_SYNC_TASK_PRIORITY, m_mcuCpuSyncTaskStack, &m_mcuCpuSyncTaskBuffer );
    xTaskCreateStatic(TaskEcuDiagnostic, "diagnostic_task", TASK_DIAGNOSTIC_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_diagnosticTaskStack,&m_diagnosticTaskBuffer);
    xTaskCreateStatic(canPeriodTaskMain, "canPeriod_task", TASK_CAN_PERIOD_STATIC_SIZE, NULL, CAN_TX_CYCLE_TASK_PRIORITY, m_canPeriodTaskStack,&m_canPeriodTaskBuffer);
    xTaskCreateStatic(TaskDtcProcess, "dtc_task", TASK_DIAGNOSTIC_DTC_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_dtcTaskStack,&m_dtcTaskBuffer);  
    xTaskCreateStatic(TaskEcallProcess, "ecall_task", TASK_ECALL_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_ecallTaskStack,&m_ecallTaskBuffer);
    xTaskCreateStatic(RemoteDiagnosticTaskMain, "remoteDiagnostic_task",TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE,NULL,REMOTE_CONTROL_TASK_PRIORITY,m_remoteDiagnostic1TaskStack,&m_remoteDiagnostic1TaskBuffer);
    xTaskCreateStatic(TaskAppVehicleRemoteControl, "remoteControl_task",TASK_REMOTE_CONTROL_STATIC_SIZE,NULL,REMOTE_CONTROL_TASK_PRIORITY,m_remoteControlTaskStack,&m_remoteControlTaskBuffer);
}

/*************************************************
   Function:        TasksManageInit
   Description:     Initialize all hardware abstraction layer modules
   Input:           None
   Output:          None
   Return:          0 on successful initialization
   Others:          Initializes flash, peripheral, logging, power management, CAN, MPU, and timer modules
 *************************************************/
static int16_t  TasksManageInit(void)
{
    FlashHalInit();
    PeripheralHalInit();
    //GSensorHalInit(1);
    LogHalInit(3);
    PowerManageHalInit(1,570,15000,9000);
    CanHalInit(g_globalCanfdConfig,sizeof(g_globalCanfdConfig)/sizeof(g_globalCanfdConfig[0]));    
    //BatteryHalInit();
    //BleHalInit();
    EcallHalInit();
    MpuHalInit();
    TimerHalInit(); 
    //HsmHalInit();
    TBOX_PRINT("Task init complete! \r\n");
    return 0;
}

/*************************************************
   Function:        MainTask
   Description:     Main task function that initializes system and creates all tasks
   Input:           pvParameters - Task parameters (unused)
   Output:          None
   Return:          None
   Others:          Initializes tasks, creates driver and application tasks, and starts power management
 *************************************************/
static void MainTask(void *pvParameters)
{
    TasksManageInit();
    CreateDriverTasks();
    CreateAppTasks(); 
#if(TASK_TEST_ENABLE == 0)
    TaskPowerManage(NULL);
#else
    while (1)
    {
        vTaskDelay(50);
    }    
#endif
}

/*************************************************
   Function:        start_tasks
   Description:     Start the main task and initialize the FreeRTOS scheduler
   Input:           None
   Output:          None
   Return:          None
   Others:          Creates the main task with appropriate priority and starts the scheduler
 *************************************************/
static void start_tasks(void)
{
    xTaskCreate( MainTask, "main_task", configMINIMAL_STACK_SIZE*4, NULL, POWERMANAGE_TASK_PRIORITY, NULL );
    vTaskStartScheduler();
    while(1);
}

