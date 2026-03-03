#include "PeripheralHal.h"
#include "powerManageHal.h"
#include "logHal.h"

#include <string.h>

#include "sysctrl_drv.h"	// 包含系统控制模块的头文件
#include "clock_drv.h"		// 包含时钟模块的头文件
#include "wdog_drv.h"		// 包含 WDOG 模块的头文件
#include "srmc_drv.h"		// 包含 SRMC 模块的头文件
#include "pmu_drv.h"		// 包含电源管理单元(PMU)的头文件
#include "flash_drv.h"		// 包含FLASH控制器模块的头文件
#include "gpio_drv.h"		// 包含 GPIO 模块的头文件

#define CAN_CHANEL_NUMBER_MAX    8    //can通道最大数量

static uint16_t g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
static uint8_t g_canWakeUpFlag[CAN_CHANEL_NUMBER_MAX];

extern void CLOCK_Init(void);

static void PmKernelIntoSleepSet(void)
{
    //清除不受系统控制模块控制的功能模块的所有中断标志位。
    PMU_IntClr(PMU_INT_ALL);		//清除PMU的所有中断标志
    CLK_IntClear(CLK_INT_OSCLOC);	//清除外部晶振的中断标志
    CLK_IntClear(CLK_INT_FIRCLOC);	//清除内部FIRC的中断标志

    WDOG_Refresh();	//喂狗
    WDOG_ClearIntStatus(WDOG_INT_ALL);	//清除WDOG的所有中断标志位

    FLASH_IntClear(FLASH_INT_ALL);			//清除FLASH 控制器的所有中断标志位

    PORT_ClearPinsInt(PORT_A, 0xFFFFFFFF);	//清除PORTA的所有中断标志
    // SYSCTRL_DisableModule(SYSCTRL_PORTA);	//在系统控制模块中，禁止模块

    PORT_ClearPinsInt(PORT_B, 0xFFFFFFFF);	//清除PORTB的所有中断标志
    // SYSCTRL_DisableModule(SYSCTRL_PORTB);	//在系统控制模块中，禁止模块

    PORT_ClearPinsInt(PORT_C, 0xFFFFFFFF);	//清除PORTC的所有中断标志
    // SYSCTRL_DisableModule(SYSCTRL_PORTC);	//在系统控制模块中，禁止模块

    PORT_ClearPinsInt(PORT_D, 0xFFFFFFFF);	//清除PORTD的所有中断标志
    // SYSCTRL_DisableModule(SYSCTRL_PORTD);	//在系统控制模块中，禁止模块

    PORT_ClearPinsInt(PORT_E, 0xFFFFFFFF);	//清除PORTE的所有中断标志
    // SYSCTRL_DisableModule(SYSCTRL_PORTE);	//在系统控制模块中，禁止模块

    SYSCTRL_DisableModule(SYSCTRL_TMU);		//在系统控制模块中，禁止模块

    COMMON_ENABLE_INTERRUPTS();	//使能 IRQ 全局中断。如果产生 IRQ 中断，进入，可清除 IRQ 标志位，避免 IRQ 保持置位，影响 WFI 指令

    CLK_SysClkSrc(CLK_SYS_FIRC64M);	//选择 FIRC 作为系统时钟的时钟源
    CLK_ModuleSrc(CLK_FLASH, CLK_SRC_SLOW);  //设置FLASH控制器的时钟源
    CLK_SetClkDivider(CLK_FLASH, CLK_DIV_1); //设置FLASH控制器时钟的分频器。FLASH控制器时钟的典型值是8Mhz
    
    //清除所有 IRQ 标志位，避免没有使能 IRQ 中断的标志置位，影响 WFI 指令
    for(uint8_t i=0; i<205; i++)
    {
        NVIC_ClearPendingIRQ(i);	//清除 IRQ 标志位
    }

    SRMC_EnterStopMode(50);
}

static void PmKernelIntoWakeupSet(void)
{
    WDOG_Refresh();	

    CLOCK_Init();	//重新初始化时钟
    CLK_ModuleSrc(CLK_FLASH, CLK_SRC_FIRC64M);  //设置FLASH控制器的时钟源
    CLK_SetClkDivider(CLK_FLASH, CLK_DIV_8); //设置FLASH控制器时钟的分频器。FLASH控制器时钟的典型值是8Mhz

	  // CLK_ModuleSrc(CLK_PORTA, CLK_SRC_OSC40M);
    SYSCTRL_EnableModule(SYSCTRL_PORTA);
    // CLK_ModuleSrc(CLK_PORTB, CLK_SRC_OSC40M);
    SYSCTRL_EnableModule(SYSCTRL_PORTB);
    // CLK_ModuleSrc(CLK_PORTC, CLK_SRC_OSC40M);
    SYSCTRL_EnableModule(SYSCTRL_PORTC);
    // CLK_ModuleSrc(CLK_PORTD, CLK_SRC_OSC40M);
    SYSCTRL_EnableModule(SYSCTRL_PORTD);
	  // CLK_ModuleSrc(CLK_PORTE, CLK_SRC_OSC40M);
    SYSCTRL_EnableModule(SYSCTRL_PORTE);

    // SYSCTRL_EnableModule(SYSCTRL_GPIO);
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
    g_sleeptime = time;
    g_maxvoltage = maxvoltage;
    g_minvoltage = minvoltage;
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
void PowerManageHalSleep(void)
{
    //清空唤醒源
    g_mcuWakeUpSoureFlag = PM_HAL_WAKEUP_SOURCE_NONE;
    if(g_sleepmode == 1)
    {
      while(1)
      {
        RtcWakeupInit(g_sleeptime);
        PmKernelIntoSleepSet();
        PmKernelIntoWakeupSet();
        if(PowerManageHalGetWakeupSource() == PM_HAL_WAKEUP_SOURCE_MCURTC)
        {
          if(RtcWakeUpProcess(g_maxvoltage,g_minvoltage))
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
   if(canChannel >= CAN_CHANEL_NUMBER_MAX)
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

void PowerManageHalTestMain(void)
{
    // TBOX_PRINT("sleep\r\n");
    // LogHalSetMode(0);
    PowerManageHalSleep();
    // LogHalSetMode(1);
    // TBOX_PRINT("wakeup\r\n");
}
