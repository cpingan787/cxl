#include "timerHal.h"
#include "ecallHal.h"
#include "tim_drv.h"
#include "sysctrl_drv.h"	
#include "clock_drv.h"		
#include "gpio_drv.h"		
#include "int_drv.h"

/*************************************************
  Function:     TimerHalInit
  Description:  Timer init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void Timer0Handler(void)
{
  
}

/*****************************************************************************
 * 函数:TIM0_Init
 * 功能:配置 TIM0 模块为定时中断功能。
 * 参数:
 * 返回:
 * 说明:1，
 * 		2，时钟源选择说明：
 *			TIM_CLK_SOURCE_SYSTEM--系统时钟源
 *			TIM_CLK_SOURCE_FUNCTION--函数“CLK_ModuleSrc”/PARCC选择的时钟源；
 *			TIM_CLK_SOURCE_EXTERNAL--根据函数“TIM_ExternalCounterSelect”的内容，是通过引脚输入的外部时钟源；
 *		3，TIM 模块包含的是一个16位的计数寄存器，每个输出通道有一个16位的比较寄存器。最多8个输出通道，
 *			最多2个故障信号输入通道，最多8个信号输入通道。
****************************************************************************/
void TIM0_Init(void)
{
	// 初始化TIM0模块
    SYSCTRL_DisableModule(SYSCTRL_TIM0);
    CLK_ModuleSrc(CLK_TIM0, CLK_SRC_PLL);		//TIM0模块的时钟源选择 HSOSC
    CLK_SetClkDivider(CLK_TIM0, CLK_DIV_12);		//设置TIM0时钟的分频器，不能高于内核时钟的1/4
    SYSCTRL_ResetModule(SYSCTRL_TIM0);			//在系统控制模块中，复位TIM0模块
    SYSCTRL_EnableModule(SYSCTRL_TIM0);			//在系统控制模块中，使能TIM0模块

    TIM_CountingModeConfig(TIM0_ID, TIM_COUNTING_UP);	//计数器向上计数模式
    TIM_InitCounter(TIM0_ID, 0x0000, 10000);	//设置计数器的初始值和模值

    //初始化中断
	TIM_IntMask(TIM0_ID, TIM_INT_ALL, MASK);	//关闭模块所有的中断
	TIM_IntClear(TIM0_ID, TIM_INT_ALL);			//清除模块所有的中断标志位
	TIM_InstallCallBackFunc(TIM0_ID, TIM_INT_TO, Timer0Handler);	//加载TIM_INT_TO中断函数
    TIM_IntMask(TIM0_ID, TIM_INT_TO, UNMASK);					//使能TIM_INT_TO中断
	INT_SetPriority(TIM0_Overflow_IRQn, 0x7);//设置 TIM0_Oveflow_IRQn 的中断优先级。(高)0--15(低)
	INT_EnableIRQ(TIM0_Overflow_IRQn);		//使能 TIM0_Oveflow_IRQn 中断

	//启动模块，模块开始运行
    TIM_StartCounter(TIM0_ID, TIM_CLK_SOURCE_FUNCTION, TIM_CLK_DIVIDE_1);
		//TIM0的时钟源选择函数CLK_ModuleSrc选择的时钟源，分频系数为1，启动TIM0，TIM0计数器开始计数
}




/*************************************************
  Function:     TimerHalInit
  Description:  Timer init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalInit(void)
{
    TIM0_Init();	//初始化TIM0模块
}

/*************************************************
  Function:     TimerHalOpen
  Description:  Timer open handle
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
int16_t TimerHalOpen(void)
{
    int16_t timerHandle,i;
    timerHandle = -1;
    COMMON_ENABLE_INTERRUPTS();
    for(i=0;i<PERIPHERAL_TIMER_INSTANCE_NUMBER;i++)
    {
        if(g_peripheralTimer[i].UseFlag ==0)
        {
            g_peripheralTimer[i].UseFlag = 1;
            g_peripheralTimer[i].TimerCount = 0;
            g_peripheralTimer[i].timerOnFlag = 0;
            g_peripheralTimer[i].TimerCallback = NULL;
            timerHandle = i;
            break;
        }
    }
    COMMON_ENABLE_INTERRUPTS();
    return timerHandle;  
}

/*************************************************
  Function:     TimerHalStartTime
  Description:  Timer starts the timer
  Input:        timerHandle :timer handle
                time_ms :unit ms
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalStartTime(int16_t timerHandle,uint32_t time_ms)
{
    if(timerHandle<0)
    {
        return -1;    
    }
    if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return -1;    
    }
    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    g_peripheralTimer[timerHandle].TimerCount = time_ms;
    g_peripheralTimer[timerHandle].timerOnFlag = 1;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt
    return 0;
}

/*************************************************
  Function:     TimerHalStopTime
  Description:  Timer stop the timer
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalStopTime(int16_t timerHandle)
{
    if (timerHandle < 0)
    {
        return -1;    
    }
    if (timerHandle >= PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return -1;    
    }
    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    g_peripheralTimer[timerHandle].timerOnFlag = 0;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt
    return 0;
}

/*************************************************
  Function:     TimerHalIsTimeout
  Description:  Timer timeout 
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalIsTimeout(int16_t timerHandle)
{
    uint8_t timerOnFlag;
    uint32_t timerCount;
    if (timerHandle < 0)
    {
        return -1;    
    }
    if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return -1;      
    }

    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    timerOnFlag = g_peripheralTimer[timerHandle].timerOnFlag;
    timerCount = g_peripheralTimer[timerHandle].TimerCount;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt

    if(timerOnFlag==0)//timer stoped
    {
        return -2;
    }
    if(timerCount)
    {
        return 1;
    }
    else
    {
        return 0;   
    }    
}

/*************************************************
  Function:     TimerHalSetCallback
  Description:  Set timer callback function
  Input:        timerHandle :timer handle
                TimerCallback :timer callback function
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
int16_t TimerHalSetCallback(int16_t timerHandle, typeTimerCallbackPtr TimerCallback)
{
    if(timerHandle<0)
    {
        return -1;    
    }
    if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return -1;    
    }
    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    g_peripheralTimer[timerHandle].TimerCallback = TimerCallback;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt
    return 0;
}








