/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: powerManageHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "PeripheralHal.h"
#include "powerManageHal.h"
#include "logHal.h"
#include <string.h>
#include "sysctrl_drv.h" 
#include "clock_drv.h" 
#include "wdog_drv.h" 
#include "srmc_drv.h" 
#include "pmu_drv.h" 
#include "flash_drv.h" 
#include "gpio_drv.h" 
#include "int_drv.h"
/****************************** Macro Definitions ******************************/
#define CAN_CHANEL_NUMBER_MAX    8    //can通道最大数量

/****************************** Type Definitions ******************************/
/****************************** Global Variables ******************************/
static uint16_t g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
static uint8_t g_canWakeUpFlag[CAN_CHANEL_NUMBER_MAX];
static uint8_t g_sleepmode = 0;
static uint32_t g_sleeptime = 0;
static uint32_t g_maxvoltage = 0;
static uint32_t g_minvoltage = 0;

/****************************** Function Declarations *************************/
extern void CLOCK_Init(void); // 待整改
static void PmKernelIntoSleepSet(void);
static void PmKernelIntoWakeupSet(void);

/****************************** Public Function Implementations ***************/
static void PmKernelIntoSleepSet(void)
{
    //清除不受系统控制模块控制的功能模块的所有中断标志位。
    PMU_IntClr(PMU_INT_ALL);        //清除PMU的所有中断标志
    CLK_IntClear(CLK_INT_OSCLOC);    //清除外部晶振的中断标志
    CLK_IntClear(CLK_INT_FIRCLOC);    //清除内部FIRC的中断标志

    WDOG_Refresh();    //喂狗
    WDOG_ClearIntStatus();    //清除WDOG的所有中断标志位

    FLASH_IntClear(FLASH_INT_ALL);            //清除FLASH 控制器的所有中断标志位

    PORT_ClearPinsInt(PORT_A, 0xFFFFFFFF);    //清除PORTA的所有中断标志

    PORT_ClearPinsInt(PORT_B, 0xFFFFFFFF);    //清除PORTB的所有中断标志

    PORT_ClearPinsInt(PORT_C, 0xFFFFFFFF);    //清除PORTC的所有中断标志

    PORT_ClearPinsInt(PORT_D, 0xFFFFFFFF);    //清除PORTD的所有中断标志

    PORT_ClearPinsInt(PORT_E, 0xFFFFFFFF);    //清除PORTE的所有中断标志

    SYSCTRL_DisableModule(SYSCTRL_TMU);        //在系统控制模块中，禁止模块

    COMMON_ENABLE_INTERRUPTS();    //使能 IRQ 全局中断。如果产生 IRQ 中断，进入，可清除 IRQ 标志位，避免 IRQ 保持置位，影响 WFI 指令

    CLK_SysClkSrc(CLK_SYS_FIRC64M);    //选择 FIRC 作为系统时钟的时钟源
    CLK_ModuleSrc(CLK_FLASH, CLK_SRC_SLOW);  //设置FLASH控制器的时钟源
    CLK_SetClkDivider(CLK_FLASH, CLK_DIV_1); //设置FLASH控制器时钟的分频器。FLASH控制器时钟的典型值是8Mhz
    
    //清除所有 IRQ 标志位，避免没有使能 IRQ 中断的标志置位，影响 WFI 指令
    for(uint8_t i=0; i<205; i++)
    {
        INT_ClearPendingIRQ((IRQn_Type)i);    //清除 IRQ 标志位
    }

    SRMC_EnterStopMode(50);
}

static void PmKernelIntoWakeupSet(void)
{
    WDOG_Refresh();    

    CLOCK_Init();    //重新初始化时钟
    CLK_ModuleSrc(CLK_FLASH, CLK_SRC_FIRC64M);  //设置FLASH控制器的时钟源
    CLK_SetClkDivider(CLK_FLASH, CLK_DIV_8); //设置FLASH控制器时钟的分频器。FLASH控制器时钟的典型值是8Mhz

    SYSCTRL_EnableModule(SYSCTRL_PORTA);
    SYSCTRL_EnableModule(SYSCTRL_PORTB);
    SYSCTRL_EnableModule(SYSCTRL_PORTC);
    SYSCTRL_EnableModule(SYSCTRL_PORTD);
    SYSCTRL_EnableModule(SYSCTRL_PORTE);
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
  Description:    Power management module hardware initialization interface
  Input:          mode : 1 - RTC wakeup enabled
                         0 - RTC wakeup disabled
                  time : RTC wake up time in seconds
                  maxvoltage : Wakeup threshold when voltage exceeds this value
                  minvoltage : Wakeup threshold when voltage drops below this value
  Output:         none
  Return:         none
  Others:         Registers wakeup source callback function
                  Initializes CAN wakeup flags to zero
*************************************************/
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
    g_sleeptime = time;
    g_maxvoltage = maxvoltage;
    g_minvoltage = minvoltage;
}

/*************************************************
  Function:       PowerManageHalInit
  Description:    Set the maximum and minimum voltage of the RTC wake up
  Input:          maxvoltage : If the voltage is greater than this value, it wakes up
                  minvoltage : If the voltage is less than this value, it wakes up
  Output:         none
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
  Description:    Power management interface sleep entry function
  Input:          none
  Output:         none
  Return:         none
  Others:         Clears wakeup source flag before entering sleep
                  Handles both RTC scheduled wakeup and external wakeup
                  Restores system configuration after wakeup
*************************************************/
void PowerManageHalSleep(void)
{
    //清空唤醒源
    g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
    if (g_sleepmode == 1)
    {
        while(1)
        {
            RtcWakeupInit(g_sleeptime);
            PmKernelIntoSleepSet();
            PmKernelIntoWakeupSet();
            if (PowerManageHalGetWakeupSource() == PM_HAL_WAKEUP_SOURCE_MCURTC)
            {
                if (RtcWakeUpProcess(g_maxvoltage,g_minvoltage))
                {
                    break;
                }
            }
            else
            {
                break;
            }
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
  Description:    Get wakeup source after MCU wakes up
  Input:          none
  Output:         none
  Return:         Wakeup source flag
  Others:         Returns the global wakeup source flag value
*************************************************/
int16_t PowerManageHalGetWakeupSource(void)
{
    return g_mcuWakeUpSoureFlag;
}

/*************************************************
  Function:       PowerManageHalEnableCanWake
  Description:    Enable CAN wakeup functionality for specified channel
  Input:          canChannel - CAN channel number to enable wakeup on
  Output:         none
  Return:         0 (PM_HAL_STATUS_OK) - Success
                  -1 (PM_HAL_STATUS_ERR) - Error, invalid channel
  Others:         Sets the corresponding CAN wakeup flag
                  Valid channels range from 0 to CAN_CHANEL_NUMBER_MAX-1
*************************************************/

int16_t PowerManageHalEnableCanWake(uint8_t canChannel)
{
   if(canChannel >= CAN_CHANEL_NUMBER_MAX)
   {
      return -1;
   }
   g_canWakeUpFlag[canChannel] = 1;
   return 0;
}

/*************************************************
  Function:       PowerManageHalIsrSetWakeUpSource
  Description:    Update wakeup source when waking up from interrupt
  Input:          wakeupSource - Wakeup source identifier
  Output:         none
  Return:         0 (PM_HAL_STATUS_OK) - Success
                  -1 (PM_HAL_STATUS_ERR) - Error, invalid source
  Others:         Valid wakeup sources range from 0 to PM_HAL_WAKEUP_SOURCE_MAX-1
                  Typically called from interrupt service routines
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
  Description:    Clear wakeup source operation
  Input:          none
  Output:         none
  Return:         0 (PM_HAL_STATUS_OK) - Success
  Others:         Resets the global wakeup source flag to PM_HAL_WAKEUP_SOURCE_NONE
                  Always returns success
*************************************************/
int16_t PowerManageHalClearWakeUpSource(void)
{
    g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
    return 0;
}

void PowerManageHalTestMain(void)
{
    // TBOX_PRINT("sleep\r\n");
    // LogHalSetMode(0);
    PowerManageHalSleep();
    // LogHalSetMode(1);
    // TBOX_PRINT("wakeup\r\n");
}
