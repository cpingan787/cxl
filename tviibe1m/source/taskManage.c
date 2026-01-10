#include "FreeRTOS.h"
#include "task.h"

#include "taskManage.h"
#include "remoteControl.h"

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
#include "hsmHal.h"

#include "mcuMpuSyncTask.h"
#include "taskPowerManage.h"
#include "taskVehicleDataToCpu.h"
#include "taskDiagnostic.h"
#include "taskDtcProcess.h"
#include "taskEcallProcess.h"
#include "canPeriodTask.h"
#include "remoteDiagnosticTask.h"

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
#define TASK_NET_MANAGE_STATIC_SIZE     			    128
#define TASK_DIAGNOSTIC_STATIC_SIZE					    (configMINIMAL_STACK_SIZE*2)
#define TASK_DIAGNOSTIC_DTC_STATIC_SIZE				    128
#define TASK_ECALL_STATIC_SIZE				            (configMINIMAL_STACK_SIZE*2)
#define TASK_MCU_CPU_SYNC_STATIC_SIZE					(configMINIMAL_STACK_SIZE*4)
#define TASK_CAN_DATA_TO_CPU_STATIC_SIZE			    400
#define TASK_TEST_PRESENT_STATIC_SIZE					(configMINIMAL_STACK_SIZE*2) // 200
#define TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE   	        256
#define TASK_CAN_PERIOD_STATIC_SIZE   	                (configMINIMAL_STACK_SIZE*4)

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

StaticTask_t m_ecallTaskBuffer;
StackType_t m_ecallTaskStack[TASK_ECALL_STATIC_SIZE];

StaticTask_t m_canPeriodTaskBuffer;
StackType_t m_canPeriodTaskStack[TASK_CAN_PERIOD_STATIC_SIZE];

StaticTask_t m_remoteTestPresetTaskBuffer;
StackType_t m_remoteTestPresetTaskStack[TASK_TEST_PRESENT_STATIC_SIZE];

StaticTask_t m_nmTaskBuffer;
StackType_t m_nmTaskStack[TASK_NET_MANAGE_STATIC_SIZE];

StaticTask_t m_remoteDiagnostic1TaskBuffer;
StackType_t m_remoteDiagnostic1TaskStack[TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE];

/*
StaticTask_t m_remoteDiagnostic1TaskBuffer;
StackType_t m_remoteDiagnostic1TaskStack[TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE];
*/




static void start_tasks(void);

uint8_t ExampleStr1[] = "App Project is running...\r\n";
extern const unsigned char g_softwareVersion[];

static void CreateDriverTasks(void)
{
    xTaskCreateStatic( MpuHalTxTask, "mpu_tx_t", TASK_MPU_HAL_TX_STATIC_SIZE, NULL, DRIVER_TASK_PRIORITY, m_mpuHalTxTaskStack,&m_mpuHalTxTaskBuffer);
    xTaskCreateStatic( CanHalReceiveTask, "can_rx_t", TASK_CAN_HAL_RX_STATIC_SIZE, NULL, DRIVER_TASK_PRIORITY, m_canHalRxTaskStack,&m_canHalRxTaskBuffer);
    
}




static void CreateAppTasks(void)
{
    xTaskCreateStatic(TaskVehicleDataToCpu,"ToCpu_task",TASK_CAN_DATA_TO_CPU_STATIC_SIZE, NULL,UPLOAD_DATA_TASK_PRIORITY, m_canToCpuTaskStack, &m_canToCpuTaskBuffer );
    xTaskCreateStatic(mcuMpuSyncTaskMain,"mcuMpuSync_task",TASK_MCU_CPU_SYNC_STATIC_SIZE, NULL,MCU_CPU_SYNC_TASK_PRIORITY, m_mcuCpuSyncTaskStack, &m_mcuCpuSyncTaskBuffer );
    xTaskCreateStatic( TaskEcuDiagnostic, "diagnostic", TASK_DIAGNOSTIC_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_diagnosticTaskStack,&m_diagnosticTaskBuffer);
    xTaskCreateStatic(canPeriodTaskMain, "canPeriod_task", TASK_CAN_PERIOD_STATIC_SIZE, NULL, CAN_TX_CYCLE_TASK_PRIORITY, m_canPeriodTaskStack,&m_canPeriodTaskBuffer);
    xTaskCreateStatic(TaskDtcProcess, "dtc_task", TASK_DIAGNOSTIC_DTC_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_dtcTaskStack,&m_dtcTaskBuffer);  
    xTaskCreateStatic(TaskNetManage, "nm_task", TASK_NET_MANAGE_STATIC_SIZE, NULL, NET_MANAGE_TASK_PRIORITY, m_nmTaskStack,&m_nmTaskBuffer);  
    xTaskCreateStatic( TaskVehicleRemoteControl, "remoteControl", TASK_TEST_PRESENT_STATIC_SIZE, NULL, REMOTE_CONTROL_TASK_PRIORITY, m_remoteTestPresetTaskStack,&m_remoteTestPresetTaskBuffer);
    xTaskCreateStatic(TaskEcallProcess, "ecall_task", TASK_ECALL_STATIC_SIZE, NULL, UDS_DIG_TASK_PRIORITY, m_ecallTaskStack,&m_ecallTaskBuffer);
	xTaskCreateStatic(remoteDiagnosticTaskMain, "remoteDiagnostic_task",TASK_REMOTE_DIAGNOSTIC_STATIC_SIZE,NULL,REMOTE_CONTROL_TASK_PRIORITY,m_remoteDiagnostic1TaskStack,&m_remoteDiagnostic1TaskBuffer);

	//xTaskCreate( TaskCanGwRemoteDiagnostic, "RemoteGwAuth", configMINIMAL_STACK_SIZE, NULL, CAN_TX_CYCLE_TASK_PRIORITY, NULL );

}

const CanConfigure_t g_globalCanfdConfig[] = 
{
    {
        .canChannel = TBOX_CAN_CHANNEL_1,
        .canFdMode = 0,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_2,
        .canFdMode = 0,
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
};

static int16_t  TasksManageInit(void)
{
    FlashHalInit();
    PeripheralHalInit();
    LogHalInit(1);
    PowerManageHalInit(1,30*60,18000,12670);
    CanHalInit(g_globalCanfdConfig,sizeof(g_globalCanfdConfig)/sizeof(g_globalCanfdConfig[0]));    
    BatteryHalInit();
    //BleHalInit();
    EcallHalInit();
    //GSensorHalInit();
    MpuHalInit();
    TimerHalInit();   
    HsmHalInit();
    //SecurityHalInit();

    TBOX_PRINT("APP VERSION = V %s\r\n", g_softwareVersion);

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

