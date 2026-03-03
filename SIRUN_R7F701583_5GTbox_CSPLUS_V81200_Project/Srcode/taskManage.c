#include "FreeRTOS.h"
#include "task.h"

#include "taskManage.h"

#include "batteryHal.h"
#include "bleHal.h"
#include "canHal.h"
#include "gSensorHal.h"
#include "logHal.h"
#include "mpuHal.h"
#include "peripheralHal.h"
#include "timerHal.h"
#include "flashHal.h"
#include "PowerManageHal.h"

#include "mcuMpuSyncTask.h"
#include "remoteDiagnosticTask.h"
#include "taskPowerManage.h"
#include "taskVehicleDataToCpu.h"
#include "taskDiagnostic.h"
#include "taskDtcProcess.h"
#include "canPeriodTask.h"

#define LOWEST_TASK_PRIORITY	        (tskIDLE_PRIORITY+1)
#define REMOTE_UPDATE_TASK_PRIORITY     (tskIDLE_PRIORITY+2)
#define POWERMANAGE_TASK_PRIORITY	(tskIDLE_PRIORITY+3)
#define MCU_CPU_SYNC_TASK_PRIORITY      (tskIDLE_PRIORITY+3)
#define UDS_DIG_TASK_PRIORITY		(tskIDLE_PRIORITY+3)
#define UPLOAD_DATA_TASK_PRIORITY	(tskIDLE_PRIORITY+3)
#define NET_MANAGE_TASK_PRIORITY	(tskIDLE_PRIORITY+4)
#define REMOTE_CONTROL_TASK_PRIORITY	(tskIDLE_PRIORITY+4)
#define CAN_TX_CYCLE_TASK_PRIORITY      (tskIDLE_PRIORITY+4)
#define BLUETOOTH_TASK_PRIORITY         (tskIDLE_PRIORITY+2)
#define DRIVER_TASK_PRIORITY	        (tskIDLE_PRIORITY+6)

#define TASK_TEST_STATIC_SIZE                           256
#define TASK_MPU_HAL_TX_STATIC_SIZE						(configMINIMAL_STACK_SIZE*2)
#define TASK_CAN_HAL_RX_STATIC_SIZE						(configMINIMAL_STACK_SIZE*2)
#define TASK_POWER_MANAGE_STATIC_SIZE					256
#define TASK_NET_MANAGE_STATIC_SIZE     			    200
#define TASK_DIAGNOSTIC_STATIC_SIZE					    (configMINIMAL_STACK_SIZE*4)
#define TASK_DIAGNOSTIC_DTC_STATIC_SIZE				    128
#define TASK_MCU_CPU_SYNC_STATIC_SIZE					(configMINIMAL_STACK_SIZE*4)
#define TASK_CAN_DATA_TO_CPU_STATIC_SIZE			    400
#define TASK_TEST_PRESENT_STATIC_SIZE					200
#define TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE   	        256
#define TASK_CAN_PERIOD_STATIC_SIZE   	                300//(configMINIMAL_STACK_SIZE*2)//(256*2)

StaticTask_t m_mpuHalTxTaskBuffer;
StackType_t m_mpuHalTxTaskStack[TASK_MPU_HAL_TX_STATIC_SIZE];

StaticTask_t m_canHalRxTaskBuffer;
StackType_t m_canHalRxTaskStack[TASK_CAN_HAL_RX_STATIC_SIZE];

StaticTask_t m_powerManageTaskBuffer;
StackType_t m_powerManageTaskStack[TASK_POWER_MANAGE_STATIC_SIZE];

//StaticTask_t m_testTaskBuffer;
//StackType_t m_testTaskStack[TASK_TEST_STATIC_SIZE];

StaticTask_t m_mcuCpuSyncTaskBuffer;
StackType_t m_mcuCpuSyncTaskStack[TASK_MCU_CPU_SYNC_STATIC_SIZE];

StaticTask_t m_canToCpuTaskBuffer;
StackType_t m_canToCpuTaskStack[TASK_CAN_DATA_TO_CPU_STATIC_SIZE];

StaticTask_t m_diagnosticTaskBuffer;
StackType_t m_diagnosticTaskStack[TASK_DIAGNOSTIC_STATIC_SIZE];

StaticTask_t m_dtcTaskBuffer;
StackType_t m_dtcTaskStack[TASK_DIAGNOSTIC_DTC_STATIC_SIZE];

StaticTask_t m_canPeriodTaskBuffer;
StackType_t m_canPeriodTaskStack[TASK_CAN_PERIOD_STATIC_SIZE];
/*
StaticTask_t m_remoteTestPresetTaskBuffer;
StackType_t m_remoteTestPresetTaskStack[TASK_TEST_PRESENT_STATIC_SIZE];
*/
StaticTask_t m_remoteDiagnostic1TaskBuffer;
StackType_t m_remoteDiagnostic1TaskStack[TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE];





static void start_tasks(void);

uint8_t ExampleStr1[] = "App Project is running...\r\n";


static void CreateDriverTasks(void)
{
    xTaskCreateStatic( MpuHalTxTask, "mpu_tx_t", TASK_MPU_HAL_TX_STATIC_SIZE, NULL, DRIVER_TASK_PRIORITY, m_mpuHalTxTaskStack,&m_mpuHalTxTaskBuffer);
    xTaskCreateStatic( CanHalReceiveTask, "can_rx_t", TASK_CAN_HAL_RX_STATIC_SIZE, NULL, DRIVER_TASK_PRIORITY, m_canHalRxTaskStack,&m_canHalRxTaskBuffer);
    
}




static void CreateAppTasks(void)
{
    //xTaskCreateStatic( TaskTest, "test", TASK_TEST_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_testTaskStack,&m_testTaskBuffer);
    xTaskCreateStatic(TaskVehicleDataToCpu,"ToCpu_task",TASK_CAN_DATA_TO_CPU_STATIC_SIZE, NULL,UPLOAD_DATA_TASK_PRIORITY, m_canToCpuTaskStack, &m_canToCpuTaskBuffer );
    xTaskCreateStatic(McuMpuSyncTaskMain,"mcuMpuSync_task",TASK_MCU_CPU_SYNC_STATIC_SIZE, NULL,MCU_CPU_SYNC_TASK_PRIORITY, m_mcuCpuSyncTaskStack, &m_mcuCpuSyncTaskBuffer );
    xTaskCreateStatic( TaskEcuDiagnostic, "diagnostic_task", TASK_DIAGNOSTIC_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_diagnosticTaskStack,&m_diagnosticTaskBuffer);
    xTaskCreateStatic(canPeriodTaskMain, "canPeriod_task", TASK_CAN_PERIOD_STATIC_SIZE, NULL, CAN_TX_CYCLE_TASK_PRIORITY, m_canPeriodTaskStack,&m_canPeriodTaskBuffer);
    xTaskCreateStatic(TaskDtcProcess, "dtc_task", TASK_DIAGNOSTIC_DTC_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_dtcTaskStack,&m_dtcTaskBuffer);  
    xTaskCreateStatic(RemoteDiagnosticTaskMain, "remoteDiagnostic_task",TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE,NULL,REMOTE_CONTROL_TASK_PRIORITY,m_remoteDiagnostic1TaskStack,&m_remoteDiagnostic1TaskBuffer);
}

const CanConfigure_t g_globalCanfdConfig[] = 
{
    {
        .canChannel = TBOX_CAN_CHANNEL_1,
        .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_2,
        .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_3,
        .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_4,
        .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_5,
        .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_6,
        .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
};

static int16_t  TasksManageInit(void)
{
    FlashHalInit();
    PeripheralHalInit();
    GSensorHalInit(1);
    PeripheralHalInit();
    LogHalInit(3);
    PowerManageHalInit(1,570,15000,9000);
    CanHalInit(g_globalCanfdConfig,sizeof(g_globalCanfdConfig)/sizeof(g_globalCanfdConfig[0]));    
    BatteryHalInit();
    BleHalInit();
    //GSensorHalInit();
    MpuHalInit();
    TimerHalInit(); 
    TBOX_PRINT("Task init complete! \r\n");
    return 0;
}
void MainTask(void *pvParameters)
{
  TasksManageInit();
  CreateDriverTasks();
  CreateAppTasks();  
  TaskPowerManage(NULL);
}

static void start_tasks(void)
{
    xTaskCreate( MainTask, "main_task", configMINIMAL_STACK_SIZE*4, NULL, POWERMANAGE_TASK_PRIORITY, NULL );   
    vTaskStartScheduler();
    while(1);
}

void TasksStart(void)
{

  start_tasks();
}

