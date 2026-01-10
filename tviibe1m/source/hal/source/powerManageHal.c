#include "cy_syspm.h"
//#include "T2G_gpio.h"
//#include "rtos_api_hal.h"
#include "cy_ipc_pipe.h"
#include "bb_bsp_tviibe1m_revc.h"
#include "PeripheralHal.h"

#include "powerManageHal.h"
#include "logHal.h"

#define CAN_CHANEL_NUMBER_MAX    8    //can通道最大数量

#define IPC_NOTIFY_INT_NUMBER   7   /* Notify interrupt number. This interrup is handled by notifiee (CM0+) */
#define CY_IPC_CHAN_USRPIPE_CM4 7
#define RTC_WAKEUP_NUMBER_MAX    2*24*20

static uint16_t g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
static uint8_t g_canWakeUpFlag[CAN_CHANEL_NUMBER_MAX];

static void PmKernelIntoSleepSet(void)
{
    bool status = true;
    //Notifies CM0 to deepsleep
    Cy_IPC_Drv_SendMsgWord
    (
        Cy_IPC_Drv_GetIpcBaseAddress(CY_IPC_CHAN_USRPIPE_CM4),
        (1u << IPC_NOTIFY_INT_NUMBER),
        1
    );
    /* Wait until the CM0+ get the message and release the lock. */
    do
    {
        status = Cy_IPC_Drv_IsLockAcquired(Cy_IPC_Drv_GetIpcBaseAddress(CY_IPC_CHAN_USRPIPE_CM4));
    } while(status);
    
    Cy_SysPm_DeepSleep((cy_en_syspm_waitfor_t)CY_SYSPM_WAIT_FOR_INTERRUPT);
}

static void PmKernelIntoWakeupSet(void)
{
    bool status = true;
    Cy_IPC_Drv_SendMsgWord
    (
        Cy_IPC_Drv_GetIpcBaseAddress(CY_IPC_CHAN_USRPIPE_CM4),
        (1u << IPC_NOTIFY_INT_NUMBER),
        0
    );

    /* Wait until the CM0+ get the message and release the lock. */
    do
    {
        status = Cy_IPC_Drv_IsLockAcquired(Cy_IPC_Drv_GetIpcBaseAddress(CY_IPC_CHAN_USRPIPE_CM4));
    } while(status);
}


static void PowerManageHalWakeupSourceChangeFun(uint8_t source)
{
    if(source >= PM_HAL_WAKEUP_SOURCE_MAX)
    {
        return;
    }
    g_mcuWakeUpSoureFlag = source;
    return;
}


/*************************************************
  Function:       PowerManageHalInit
  Description:    电源管理模块硬件初始化接口
  Input:          mode : 1 : RTC wakeup 
                         0 : no RTC wakeup
                  time : RTC wake up time ,unit second
                  maxvoltage : If the voltage is greater than this value, it wakes up
                  minvoltage : If the voltage is less than this value, it wakes up
  Output:         无
  Return:         
  Others:         
*************************************************/
static uint8_t g_sleepmode = 0;
static uint32_t g_sleeptime = 0;
static uint32_t g_maxvoltage = 0;
static uint32_t g_minvoltage = 0;
void PowerManageHalInit(uint8_t mode,uint32_t time,uint32_t maxvoltage,uint32_t minvoltage)
{
    memset(g_canWakeUpFlag,0,CAN_CHANEL_NUMBER_MAX);
    PeripheralHalRegisterSetWakeupSourceCallback(PowerManageHalWakeupSourceChangeFun);
    if(mode == 1)
    {
      g_sleepmode = 1;
    }
    else
    {
      g_sleepmode = 0;
    }
    //g_sleeptime = time;
    //g_maxvoltage = maxvoltage;
    //g_minvoltage = minvoltage;
}

/*************************************************
  Function:       PowerManageHalInit
  Description:    Set the maximum and minimum voltage of the RTC wake up
  Input:          maxvoltage : If the voltage is greater than this value, it wakes up
                  minvoltage : If the voltage is less than this value, it wakes up
  Output:         无
  Return:         
  Others:         
*************************************************/
void PowerManageHalSetWakeupVoltage(uint32_t maxvoltage,uint32_t minvoltage)
{
    g_maxvoltage = maxvoltage;
    g_minvoltage = minvoltage;
}
/*************************************************
  Function:       PowerManageHalSleep
  Description:    电源管理接口进入休眠函数
  Input:          无
  Output:         无
  Return:         
  Others:         
*************************************************/
static uint32_t rtcWakeupConut = 0;
void PowerManageHalSleep(void)
{
    //清空唤醒源
    g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
    if(g_sleepmode == 1)
    {
      while(1)
      {
        PmKernelIntoSleepSet();
        PmKernelIntoWakeupSet();
        break;
      }
    }
    else
    {
      PmKernelIntoSleepSet();
       //唤醒流程
      PmKernelIntoWakeupSet();
    }
    //从休眠中唤醒
}

/*************************************************
  Function:       PowerManageHalGetWakeupSource
  Description:    MCU唤醒后获取唤醒源
  Input:          无
  Output:         执行结果
  Return:         唤醒源
  Others:         
*************************************************/
int16_t PowerManageHalGetWakeupSource(void)
{
    return g_mcuWakeUpSoureFlag;
}

/*************************************************
  Function:       PowerManageHalEnableCanWake
  Description:    调用此接口后允许CAN唤醒
  Input:          无
  Output:         执行结果
  Return:         成功：PM_HAL_STATUS_OK
                  失败：PM_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t PowerManageHalEnableCanWake(uint8_t canChannel)
{
   if(canChannel > CAN_CHANEL_NUMBER_MAX)
   {
      return -1;
   }
   g_canWakeUpFlag[canChannel] = 1;
   return 0;
}

/*************************************************
  Function:       PowerManageHalIsrSetWakeUpSource
  Description:    中断唤醒时调用此函数更新唤醒源
  Input:          无
  Output:         执行结果
  Return:         成功：PM_HAL_STATUS_OK
                  失败：PM_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t PowerManageHalIsrSetWakeUpSource(uint8_t wakeupSource)
{
    if(wakeupSource >= PM_HAL_WAKEUP_SOURCE_MAX)
    {
        return -1;
    }
    g_mcuWakeUpSoureFlag = wakeupSource;
    
    return 0;
}

/*************************************************
  Function:       PowerManageHalClearWakeUpSource
  Description:    清空唤醒源操作
  Input:          无
  Output:         执行结果
  Return:         成功：PM_HAL_STATUS_OK
                  失败：PM_HAL_STATUS_ERR
  Others:         
*************************************************/
int16_t PowerManageHalClearWakeUpSource(void)
{
    g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
    return 0;
}


