/**************************************************************************************************/
/**
 * @file     main.c
 * @brief    Freertos example file.
 * @version  V1.0.0
 * @date     December-2022
 * @author   Zhixin Semiconductor
 *
 * @note
 * Copyright (C) 2022 Zhixin Semiconductor Ltd. All rights reserved.
 *
 **************************************************************************************************/

/****************************** include ***************************************/
#include "platform_cfg.h"	// 包含MCU平台配置信息的头文件
#include "common_drv.h"		// 包含SDK中常用信息的头文件
#include "pmu_drv.h"		// 包含电源管理单元(PMU)的头文件
#include "scm_drv.h"		// 包含配置系统控制模块(SCM)的头文件
#include "sysctrl_drv.h"	// 包含系统控制模块的头文件
#include "clock_drv.h"		// 包含时钟模块的头文件
#include "flash_drv.h"		// 包含FLASH控制器模块的头文件
#include "gpio_drv.h"		// 包含 GPIO 模块的头文件
#include "wdog_drv.h"		// 包含 WDOG 模块的头文件
#include "serial.h"
/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "taskManage.h"
#include "int_drv.h"

/****************************** Macro Definitions ******************************/

/****************************** Type Definitions ******************************/
typedef enum
{
	CLOCK_ERR_NO = 0U,		// No Clock Error
    CLOCK_ERR_FIRC = 1U,	// FIRC Clock Error
    CLOCK_ERR_HSOSC = 2U,	// HSOSC Clock Error
    CLOCK_ERR_PLL = 3U,		// PLL Clock Error
} CLOCK_ERR_Type;

//定义 PLL 的初始化参数，以 FIRC 作为 PLL 的时钟源，PLL 输出 120MHz 的时钟
//((64÷4)×30×2)÷8 = 120；
const CLK_PLLConfig_t CLK_PLL_Cfg_FIRC =
{
	.pllPreDivider = PLL_PRE_DIV_VALUE_4,	//PLL时钟源的分频系数
	.pllPostDivider = PLL_POST_DIV_VALUE_8,	//PLL时钟输出前的分频系数
	.pllMultiplier = 30,					//PLL的倍频系数，取值范围是 8--255
	.pllRefClock = PLL_FIRC64M_CLK,			//选择FIRC作为PLL的时钟源
	.pllPreScaler = PLL_SCALER_VALUE_2,		//PLL的预倍频系数
};

//定义 PLL 的初始化参数，以 HSOSC(推荐8M) 作为 PLL 的时钟源，PLL 输出 120MHz 的时钟
//((8÷1)×60×2)÷8 = 120；//demo Mcu HSOSC = 40m,So ((8÷1)×12)÷8 = 120
CLK_PLLConfig_t CLK_PLL_Cfg_HSOSC =
{
	.pllPreDivider = PLL_PRE_DIV_VALUE_1,	//PLL时钟源的分频系数
	.pllPostDivider = PLL_POST_DIV_VALUE_8,	//PLL时钟输出前的分频系数
	.pllMultiplier = 60,					//PLL的倍频系数，取值范围是 8--255
	.pllRefClock = PLL_OSC_CLK,			//选择 HSOSC 作为PLL的时钟源
	.pllPreScaler = PLL_SCALER_VALUE_2,		//PLL的预倍频系数
};

	
/****************************** Global Variables ******************************/
extern uint32_t __vector_table;	//声明中断向量表
static uint32_t Clock_HSOSC_Int_Cnt;	//HSOSC 中断次数计数器。休眠唤醒后，要清零这个变量
static StackType_t g_idleTaskStack[configMINIMAL_STACK_SIZE];
static StackType_t g_timerTaskStack[configTIMER_TASK_STACK_DEPTH];
static StaticTask_t g_idleTaskTcb;
static StaticTask_t g_timerTaskTcb;
/****************************** Function Declarations *************************/
static void PMU_Init(void);
static void SCM_Init(void);
static void CLOCK_HSOSCLOC_ISR(void);
static void PORT_Init(void);
static void GPIO_Init(void);
static void System_Init(void);

/****************************** Public Function Implementations ***************/
/*****************************************************************************
 * 函数:CLOCK_Init
 * 功能:配置时钟模块(SCC)。
 * 参数:
 * 返回:
 * 说明:1，Fpll = ((RefClk÷PreDiv)×Multi×PreScaler)÷PostDiv；PLL 的时钟源分频之后的
 * 			时钟频率必须在范围(4-16MHz)内；倍频之后的频率必须在范围(0.8-1.2GHz)内。
 * 		2，读取FLASH时，使用的是内核时钟。FLASH控制器的时钟典型值是8Mhz。
 *		3，系统时钟的说明，参考“Peripheral clock summary”。
 *		4，根据多次 EMC 测试中出现的时钟问题，建议：PLL的时钟源选择内部的 FIRC，确保内核和总线时钟的稳定，PLL的
 *			输出尽量设置到最大；对时钟精度要求高的模块，时钟源选择外部晶振，其他的模块，时钟源选择内部的 FIRC。
 *		5，当外部晶振的频率大于等于24MHz时，晶振的模式选择高频模式。小于等于20MHz时，晶振的模式选择低频模式。
 *		6，在配置 PLL 之前，必须把系统时钟切换成 FIRC，避免系统时钟没有时钟源的情况。
 *		7，在切换时钟源之前，必须先设置适配 FLASH 的时钟。
 *		8，SCC_IRQn 的中断优先级必须设置为0(最高)，其他模块的中断优先级必须大于0，确保第一时间进入时钟中断。
****************************************************************************/
void CLOCK_Init(void)
{	
	ResultStatus_t ret;
	/* 初始化系统时钟为复位默认状态，避免之前的设置在这个工程中产生影响 */
	
	CLK_FIRC64MEnable(ENABLE);			//使能FIRC，允许在STOP模式下运行
	CLK_SysClkSrc(CLK_SYS_FIRC64M);	//选择 FIRC 作为系统时钟的时钟源
	CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);	//设置内核时钟的分频系数
	CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);	//设置总线时钟的分频系数。考虑功能可靠性，总线时钟设为内核时钟的1/2。
	CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);	//设置Slow_Clock的分频系数
	
	CLK_PLLDisable();				//禁止 PLL 模块
	
	//材质物理特性决定 ELASH 的最大读取速度是 32MHz，ELASH 是挂在内核时钟总线上的，时钟要有一个合理的匹配
	//FLASH_SetWaitState(0);	// 当 0M<内核时钟<=32M 时，从 FLASH 中读取数据，增加0个时钟的等待时间。
	FLASH_SetWaitState(1);		// 当 32M<内核时钟<=64M 时，从 FLASH 中读取数据，增加1个时钟的等待时间。
	//FLASH_SetWaitState(2);	// 当 64M<内核时钟<=96M 时，从 FLASH 中读取数据，增加2个时钟的等待时间。
	//FLASH_SetWaitState(3);	// 当 96M<内核时钟<=128M 时，从 FLASH 中读取数据，增加3个时钟的等待时间。
	//FLASH_SetWaitState(4);	// 当 128M<内核时钟<=160M 时，从 FLASH 中读取数据，增加4个时钟的等待时间。
	
	// 关闭之前打开的 CLOCK 的中断，清除中断标志位，避免在这个工程中继续产生影响
	INT_SetPriority(SCC_IRQn, 0x0);	//设置 SCC_IRQn 的中断优先级。(高)0--15(低)
	INT_DisableIRQ(SCC_IRQn);		//禁止 SCC_IRQn 中断
	CLK_FIRC64MMonitorDisable();		//禁止对内部FIRC的监控，失速不产生中断
	CLK_OSC40MMonitorDisable();		//禁止对外部晶振的监控，失速不产生中断
	CLK_IntClear(CLK_INT_FIRCLOC);	//清除内部FIRC的中断标志
	CLK_IntClear(CLK_INT_OSCLOC);	//清除外部晶振的中断标志	
	
	/* 初始化根时钟源，并等待根时钟源稳定 */
	//CLK_FIRC64MEnable(ENABLE);		//使能FIRC，允许在STOP模式下运行
	ret = CLK_OSC40MEnable(CLK_OSC_FREQ_MODE_LOW, DISABLE, CLK_OSC_XTAL);// HSOSC频率<=20M，STOP下运行，外部晶振模式
	// ret = CLK_OSC40MEnable(CLK_OSC_FREQ_MODE_HIGH, ENABLE, CLK_OSC_XTAL); // HSOSC频率>=24M，STOP下运行，外部晶振模式
	
	/* 初始化 PLL 模块，配置系统时钟、内核时钟、总线时钟，配置时钟中断 */
	if(ret == SUCC)	// HSOSC 启动成功
	{
		//初始化 PLL 模块
		CLK_PLLConfig(&CLK_PLL_Cfg_HSOSC);	//使用 CLK_PLL_Cfg_xx 中的数据配置 PLL
		CLK_PLLEnable(DISABLE);				//使能 PLL 模块
		
		//初始化系统时钟的时钟源、分频系数、PLL监控中断
		if(CLK_WaitClkReady(CLK_SRC_PLL) == SUCC)	//PLL已经稳定。
		{
			//材质物理特性决定 ELASH 的最大读取速度是 32MHz，ELASH 是挂在内核时钟总线上的，时钟要有一个合理的匹配
			//FLASH_SetWaitState(0);	// 当 0M<内核时钟<=32M 时，从 FLASH 中读取数据，增加0个时钟的等待时间。
			//FLASH_SetWaitState(1);	// 当 32M<内核时钟<=64M 时，从 FLASH 中读取数据，增加1个时钟的等待时间。
			//FLASH_SetWaitState(2);	// 当 64M<内核时钟<=96M 时，从 FLASH 中读取数据，增加2个时钟的等待时间。
			FLASH_SetWaitState(3);		// 当 96M<内核时钟<=128M 时，从 FLASH 中读取数据，增加3个时钟的等待时间。
			//FLASH_SetWaitState(4);	// 当 128M<内核时钟<=160M 时，从 FLASH 中读取数据，增加4个时钟的等待时间。
			
			CLK_SysClkSrc(CLK_SYS_PLL);				//选择 PLL 输出的时钟作为系统时钟的时钟源
			CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);	//设置内核时钟的分频系数
			CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);	//设置总线时钟的分频系数。考虑功能可靠性，总线时钟设为内核时钟的1/2。
			CLK_SetClkDivider(CLK_SLOW, CLK_DIV_16);//设置Slow_Clock的分频系数
		}
		else
		{
			CLK_PLLDisable();				//禁止 PLL 模块
		}
		
		//初始化 CLOCK 中断				
		CLK_InstallCallBackFunc(CLK_INT_OSCLOC, &CLOCK_HSOSCLOC_ISR);//加载中断处理函数
		CLK_OSC40MMonitorEnable(CLK_MON_INT);	//使能对外部晶振的监控，晶振时钟偏离，产生中断
		
		INT_SetPriority(SCC_IRQn, 0x0);	//设置 SCC_IRQn 的中断优先级。(高)0--15(低)
		INT_EnableIRQ(SCC_IRQn);			//使能 SCC_IRQn 中断
	}
	else	// HSOSC 启动失败
	{		
		CLK_OSC40MDisable();		//禁止 HSOSC
	}
	
	//初始化时钟输出功能
	CLK_ClkOutDisable();		//禁止时钟输出
	
	//初始化变量
	Clock_HSOSC_Int_Cnt = 0;	//HSOSC 中断次数计数器
	
	//启动模块，模块开始运行
}

/*************************************************
   Function:        vApplicationGetIdleTaskMemory
   Description:     Callback function for FreeRTOS to get memory for the idle task
   Input:           ppxIdleTaskTCBBuffer - Pointer to TCB buffer pointer
                    ppxIdleTaskStackBuffer - Pointer to stack buffer pointer
                    pulIdleTaskStackSize - Pointer to stack size
   Output:          Updates the pointers with idle task memory information
   Return:          None
   Others:          Required by FreeRTOS when configSUPPORT_STATIC_ALLOCATION is set to 1
  *************************************************/
void vApplicationGetIdleTaskMemory( StaticTask_t ** ppxIdleTaskTCBBuffer,
                                               StackType_t ** ppxIdleTaskStackBuffer,
                                               uint32_t * pulIdleTaskStackSize )
{
    *ppxIdleTaskTCBBuffer = &g_idleTaskTcb;
    *ppxIdleTaskStackBuffer= g_idleTaskStack;
    *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
}

/*************************************************
   Function:        vApplicationGetTimerTaskMemory
   Description:     Callback function for FreeRTOS to get memory for the timer task
   Input:           ppxTimerTaskTCBBuffer - Pointer to TCB buffer pointer
                    ppxTimerTaskStackBuffer - Pointer to stack buffer pointer
                    pulTimerTaskStackSize - Pointer to stack size
   Output:          Updates the pointers with timer task memory information
   Return:          None
   Others:          Required by FreeRTOS when configSUPPORT_STATIC_ALLOCATION and configUSE_TIMERS are set to 1
  *************************************************/
void vApplicationGetTimerTaskMemory( StaticTask_t ** ppxTimerTaskTCBBuffer,
                                          StackType_t ** ppxTimerTaskStackBuffer,
                                              uint32_t * pulTimerTaskStackSize )
{
    *ppxTimerTaskTCBBuffer = &g_timerTaskTcb;
    *ppxTimerTaskStackBuffer = g_timerTaskStack;
    *pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
}

/*************************************************
   Function:        main
   Description:     Main entry point of the application
   Input:           None
   Output:          None
   Return:          int - Return code (never actually returns in normal execution)
   Others:          Initializes system hardware and global variables, then starts the task scheduler.
                    The while(1) loop should never be reached if the scheduler runs successfully.
  *************************************************/
int main()
{
	System_Init();
	TasksStart();
	/* If all is well, the scheduler will now be running, and the following line will never be reached.*/
	while(1) ;
}

/****************************** Private Function Implementations ***************/
/*****************************************************************************
 * 函数:PMU_Init
 * 功能:配置电源管理模块/Power Management Unit (PMU)。
 * 参数:
 * 返回:
 * 说明:1，电源管理模块 PMU 控制芯片内部电源的使能、监控、低压监控复位 MCU 等，请阅读参考手册
 *		2，初始化 PMU 模块，必须放在初始化其他模块之前。
****************************************************************************/
static void PMU_Init(void)
{	
	//进入 STANDBY 后，IO端口将与ADC、CMP、SPLL模块隔离，退出 STANDBY 后，首先要解除这个隔离状态。参考寄存器 PMU_ISO_CLR
	PMU_IsoClr();	//清除端口与功能模块的隔离状态标志，解除IO端口与ADC、CMP、SPLL模块的隔离状态，必须

	// PMU_Ctrl(PMU_VDD_LVD_LP, ENABLE);		//使能低功耗模式下的低压检测功能，必须
	// PMU_Ctrl(PMU_VDD_LVD_ACT, ENABLE);		//使能运行模式下的低压检测功能，必须
	// PMU_Ctrl(PMU_VDD_LVD_RE, ENABLE);		//使能低压检测复位功能，必须
	//PMU_Ctrl(PMU_VDD_LVW, ENABLE);		//使能低压报警功能，配合 PMU 中断使用
	PMU_Ctrl(PMU_REF_BUF_1V, ENABLE);		//使能内部1V参考电压
	
	//PMU_LdoEnLowDriveStrInLowPower(PMU_LDO_FLASH, ENABLE);	//在STOP模式下，使能这个LDO的低驱动能力模式。
	
	//初始化 PMU 中断	
	PMU_IntMask(PMU_INT_ALL, MASK);		//禁止 PMU 中断
	PMU_IntClr(PMU_INT_ALL);			//清除 PMU 中断标志
	
	//PMU_InstallCallBackFunc(PMU_VDD_LVW_INT, &PMU_VDD_LVW_ISR); //加载 VDD_LVW 低压报警中断处理函数
	//PMU_IntMask(PMU_VDD_LVW_INT, MASK);	//禁止 VDD_LVW 中断
	
	INT_SetPriority(PMU_IRQn, 15);	//设置 PMU_IRQn 的中断优先级。(高)0--15(低)
	INT_DisableIRQ(PMU_IRQn);		//禁止 PMU_IRQn 中断
}

/*****************************************************************************
 * 函数:SCM_Init
 * 功能:配置系统控制模块/System Control Module(SCM)。
 * 参数:
 * 返回:
 * 说明:1，在 Coretex-M4 内核中，使能 Cache 功能，能够大幅提高 CPU 的使用效率。
****************************************************************************/
static void SCM_Init(void)
{
	SCM_CacheClr();				//清除 Cache
	SCM_CacheEnable(ENABLE);	//使能 Cache
	SCM_ParityMissEnable(ENABLE);//使能 Cache parity miss 功能。使能 Cache 功能时，要使能这个功能
}

/*****************************************************************************
 * 函数:CLOCK_HSOSCLOC_ISR
 * 功能:HSOSC 丢失中断执行函数。
 * 参数:
 * 返回:
 * 说明:1，在配置 PLL 之前，必须把系统时钟切换成 FIRC，避免系统时钟没有时钟源的情况。
 *		2，在切换时钟源之前，必须先设置适配 FLASH 的时钟。
****************************************************************************/
static void CLOCK_HSOSCLOC_ISR(void)
{
	ResultStatus_t ret;
	// 第一时间把系统时钟源切换成 FIRC，确保系统有时钟源
	CLK_SysClkSrc(CLK_SYS_FIRC64M);	//选择 FIRC 作为系统时钟的时钟源，确保系统时钟有时钟源
	
	//重新使能 HSOSC
	ret = CLK_OSC40MEnable(CLK_OSC_FREQ_MODE_LOW, DISABLE, CLK_OSC_XTAL);// HSOSC频率<=20M，STOP下运行，外部晶振模式
	// ret = CLK_OSC40MEnable(CLK_OSC_FREQ_MODE_HIGH, ENABLE, CLK_OSC_XTAL); // HSOSC频率>=24M，STOP下运行，外部晶振模式

	if(ret == SUCC)
	{
		//重新初始化 PLL模块
		CLK_PLLDisable();				//禁止 PLL 模块
		CLK_PLLConfig(&CLK_PLL_Cfg_HSOSC);	//使用 CLK_PLL_Cfg_xx 中的数据配置 PLL
		CLK_PLLEnable(DISABLE);			//使能 PLL 模块
		
		//初始化系统时钟的时钟源、分频系数、PLL监控中断
		if(CLK_WaitClkReady(CLK_SRC_PLL) == SUCC)	//PLL已经稳定。
		{
			//材质物理特性决定 ELASH 的最大读取速度是 32MHz，ELASH 是挂在内核时钟总线上的，时钟要有一个合理的匹配
			//FLASH_SetWaitState(0);	// 当 0M<内核时钟<=32M 时，从 FLASH 中读取数据，增加0个时钟的等待时间。
			//FLASH_SetWaitState(1);	// 当 32M<内核时钟<=64M 时，从 FLASH 中读取数据，增加1个时钟的等待时间。
			//FLASH_SetWaitState(2);	// 当 64M<内核时钟<=96M 时，从 FLASH 中读取数据，增加2个时钟的等待时间。
			FLASH_SetWaitState(3);		// 当 96M<内核时钟<=128M 时，从 FLASH 中读取数据，增加3个时钟的等待时间。
			//FLASH_SetWaitState(4);	// 当 128M<内核时钟<=160M 时，从 FLASH 中读取数据，增加4个时钟的等待时间。
			
			CLK_SysClkSrc(CLK_SYS_PLL);				//选择 PLL 输出的时钟作为系统时钟的时钟源
			CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);	//设置内核时钟的分频系数
			CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);	//设置总线时钟的分频系数。考虑功能可靠性，总线时钟设为内核时钟的1/2。
			CLK_SetClkDivider(CLK_SLOW, CLK_DIV_16);//设置Slow_Clock的分频系数
			
		}
		else	//PLL没有稳定。
		{
			CLK_SysClkSrc(CLK_SYS_FIRC64M);			//选择 FIRC 作为系统时钟的时钟源
			CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);	//设置内核时钟的分频系数
			CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);	//设置总线时钟的分频系数。考虑功能可靠性，总线时钟设为内核时钟的1/2。
			CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);	//设置Slow_Clock的分频系数
			
			//材质物理特性决定 ELASH 的最大读取速度是 32MHz，ELASH 是挂在内核时钟总线上的，时钟要有一个合理的匹配
			//FLASH_SetWaitState(0);	// 当 0M<内核时钟<=32M 时，从 FLASH 中读取数据，增加0个时钟的等待时间。
			FLASH_SetWaitState(1);		// 当 32M<内核时钟<=64M 时，从 FLASH 中读取数据，增加1个时钟的等待时间。
			//FLASH_SetWaitState(2);	// 当 64M<内核时钟<=96M 时，从 FLASH 中读取数据，增加2个时钟的等待时间。
			//FLASH_SetWaitState(3);	// 当 96M<内核时钟<=128M 时，从 FLASH 中读取数据，增加3个时钟的等待时间。
			//FLASH_SetWaitState(4);	// 当 128M<内核时钟<=160M 时，从 FLASH 中读取数据，增加4个时钟的等待时间。
			
			CLK_PLLDisable();			//禁止 PLL
		}
	}
	else	// HSOSC 启动失败
	{
		CLK_SysClkSrc(CLK_SYS_FIRC64M);	//选择 FIRC 作为系统时钟的时钟源
		CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);	//设置内核时钟的分频系数
		CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);	//设置总线时钟的分频系数。考虑功能可靠性，总线时钟设为内核时钟的1/2。
		CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);	//设置Slow_Clock的分频系数
		
		//材质物理特性决定 ELASH 的最大读取速度是 32MHz，ELASH 是挂在内核时钟总线上的，时钟要有一个合理的匹配
		//FLASH_SetWaitState(0);	// 当 0M<内核时钟<=32M 时，从 FLASH 中读取数据，增加0个时钟的等待时间。
		FLASH_SetWaitState(1);		// 当 32M<内核时钟<=64M 时，从 FLASH 中读取数据，增加1个时钟的等待时间。
		//FLASH_SetWaitState(2);	// 当 64M<内核时钟<=96M 时，从 FLASH 中读取数据，增加2个时钟的等待时间。
		//FLASH_SetWaitState(3);	// 当 96M<内核时钟<=128M 时，从 FLASH 中读取数据，增加3个时钟的等待时间。
		//FLASH_SetWaitState(4);	// 当 128M<内核时钟<=160M 时，从 FLASH 中读取数据，增加4个时钟的等待时间。
		
		
		/* 关闭之前打开的 CLOCK 的中断，清除中断标志位，避免在这个工程中继续产生影响 */
		INT_SetPriority(SCC_IRQn, 0x0);	//设置 SCC_IRQn 的中断优先级。(高)0--15(低)
		INT_DisableIRQ(SCC_IRQn);		//禁止 SCC_IRQn 中断
		CLK_OSC40MMonitorDisable();		//禁止对外部晶振的监控，失速不产生中断
		CLK_IntClear(CLK_INT_OSCLOC);	//清除外部晶振的中断标志
		
		CLK_PLLDisable();		//禁止 PLL
		CLK_OSC40MDisable();		//禁止 HSOSC 
	}
	
	/* 避免频繁进入 HSOSC 错误中断的设置  */
	Clock_HSOSC_Int_Cnt++;		//HSOSC 中断次数计数器
	if(Clock_HSOSC_Int_Cnt > 200)	//这个值建议根据 EMC 测试的情况设定
	{
		Clock_HSOSC_Int_Cnt = 205;		//HSOSC 中断次数计数器

		CLK_SysClkSrc(CLK_SYS_FIRC64M);			//选择 FIRC 作为系统时钟的时钟源
		CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);	//设置内核时钟的分频系数
		CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);	//设置总线时钟的分频系数。考虑功能可靠性，总线时钟设为内核时钟的1/2。
		CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);	//设置Slow_Clock的分频系数
		
		//材质物理特性决定 ELASH 的最大读取速度是 32MHz，ELASH 是挂在内核时钟总线上的，时钟要有一个合理的匹配
		//FLASH_SetWaitState(0);	// 当 0M<内核时钟<=32M 时，从 FLASH 中读取数据，增加0个时钟的等待时间。
		FLASH_SetWaitState(1);		// 当 32M<内核时钟<=64M 时，从 FLASH 中读取数据，增加1个时钟的等待时间。
		//FLASH_SetWaitState(2);	// 当 64M<内核时钟<=96M 时，从 FLASH 中读取数据，增加2个时钟的等待时间。
		//FLASH_SetWaitState(3);	// 当 96M<内核时钟<=128M 时，从 FLASH 中读取数据，增加3个时钟的等待时间。
		//FLASH_SetWaitState(4);	// 当 128M<内核时钟<=160M 时，从 FLASH 中读取数据，增加4个时钟的等待时间。
		
		CLK_OSC40MMonitorDisable();		//禁止对外部晶振的监控，失速不产生中断
		CLK_IntClear(CLK_INT_OSCLOC);	//清除外部晶振的中断标志
		INT_SetPriority(SCC_IRQn, 0x0);//设置 SCC_IRQn 的中断优先级。(高)0--15(低)
		INT_DisableIRQ(SCC_IRQn);		//禁止 SCC_IRQn 中断
		
		CLK_PLLDisable();		//禁止 PLL
		CLK_OSC40MDisable();		//禁止 HSOSC		
	}
}

/*****************************************************************************
 * 函数:PORT_Init
 * 功能:配置所有使用到的PORT模块。具体每个IO的初始化，在应用该IO的模块中处理。
 * 参数:
 * 返回:
 * 说明:1，MCU有个PORT模块，包括 PORTA、PORTB、PORTC、PORTD、PORTE模块；
 * 		2，具体每个IO的初始化，在应用该IO的模块中处理。比如，用作GPIO功能的IO，
 * 			在“BSP_GPIO.c”中完成初始化；用做附件功能的端口的初始化，在对应的功
 * 			能模块中完成；避免重复初始化端口，对软件系统产生干扰和风险。
****************************************************************************/
static void PORT_Init(void)
{
	/* ***** 初始化PORT模块 ***** */
	CLK_ModuleSrc(CLK_PORTA, CLK_SRC_FIRC64M);	//选择PORTA模块的时钟源
	CLK_SetClkDivider(CLK_PORTA, CLK_DIV_4);	//设置PORTA时钟的分频器。模块的时钟不能高于CPU的总线时钟
	SYSCTRL_ResetModule(SYSCTRL_PORTA);			//在系统控制模块中，复位PORTA模块
    SYSCTRL_EnableModule(SYSCTRL_PORTA);		//在PARCC中，使能PORTA模块

	CLK_ModuleSrc(CLK_PORTB, CLK_SRC_FIRC64M);	//选择PORTB模块的时钟源
	CLK_SetClkDivider(CLK_PORTB, CLK_DIV_4);	//设置PORTB时钟的分频器。模块的时钟不能高于CPU的总线时钟
	SYSCTRL_ResetModule(SYSCTRL_PORTB);			//在系统控制模块中，复位PORTB模块
    SYSCTRL_EnableModule(SYSCTRL_PORTB);		//在PARCC中，使能PORTB模块

	CLK_ModuleSrc(CLK_PORTC, CLK_SRC_FIRC64M);	//选择PORTC模块的时钟源
	CLK_SetClkDivider(CLK_PORTC, CLK_DIV_4);	//设置PORTC时钟的分频器。模块的时钟不能高于CPU的总线时钟
	SYSCTRL_ResetModule(SYSCTRL_PORTC);			//在系统控制模块中，复位PORTC模块
    SYSCTRL_EnableModule(SYSCTRL_PORTC);		//在PARCC中，使能PORTC模块
	
	CLK_ModuleSrc(CLK_PORTD, CLK_SRC_FIRC64M);	//选择PORTD模块的时钟源
	CLK_SetClkDivider(CLK_PORTD, CLK_DIV_4);	//设置PORTD时钟的分频器。模块的时钟不能高于CPU的总线时钟
	SYSCTRL_ResetModule(SYSCTRL_PORTD);			//在系统控制模块中，复位PORTD模块
    SYSCTRL_EnableModule(SYSCTRL_PORTD);		//在PARCC中，使能PORTD模块
	
	CLK_ModuleSrc(CLK_PORTE, CLK_SRC_FIRC64M);	//选择PORTE模块的时钟源
	CLK_SetClkDivider(CLK_PORTE, CLK_DIV_4);	//设置PORTE时钟的分频器。模块的时钟不能高于CPU的总线时钟
	SYSCTRL_ResetModule(SYSCTRL_PORTE);			//在系统控制模块中，复位PORTE模块
    SYSCTRL_EnableModule(SYSCTRL_PORTE);		//在PARCC中，使能PORTE模块

	//初始化PORT中断
	PORT_ClearPinsInt(PORT_A, 0xFFFFFFFF);		//清除PORTA所有的中断标志
	PORT_ClearPinsInt(PORT_B, 0xFFFFFFFF);		//清除PORTB所有的中断标志
	PORT_ClearPinsInt(PORT_C, 0xFFFFFFFF);		//清除PORTC所有的中断标志
	PORT_ClearPinsInt(PORT_D, 0xFFFFFFFF);		//清除PORTD所有的中断标志
	PORT_ClearPinsInt(PORT_E, 0xFFFFFFFF);		//清除PORTE所有的中断标志
		
	//PORT_InstallCallBackFunc(&PORT_ISR);	//加载中断处理函数
	
	INT_SetPriority(PORTA_IRQn, 15);	//设置 PORTA_IRQn 的中断优先级。(高)0--15(低)
	INT_DisableIRQ(PORTA_IRQn);		//禁止 PORTA_IRQn 中断
	
	INT_SetPriority(PORTB_IRQn, 15);	//设置 PORTB_IRQn 的中断优先级。(高)0--15(低)
	INT_DisableIRQ(PORTB_IRQn);		//禁止 PORTB_IRQn 中断
	
	INT_SetPriority(PORTC_IRQn, 15);	//设置 PORTC_IRQn 的中断优先级。(高)0--15(低)
	INT_DisableIRQ(PORTC_IRQn);		//禁止 PORTC_IRQn 中断
	
	INT_SetPriority(PORTD_IRQn, 15);	//设置 PORTD_IRQn 的中断优先级。(高)0--15(低)
	INT_DisableIRQ(PORTD_IRQn);		//禁止 PORTD_IRQn 中断
	
	INT_SetPriority(PORTE_IRQn, 3);	//设置 PORTE_IRQn 的中断优先级。(高)0--15(低)
	INT_DisableIRQ(PORTE_IRQn);		//禁止 PORTE_IRQn 中断	

}

/*****************************************************************************
 * 函数:GPIO_Init
 * 功能:配置GPIO模块，初始化GPIO功能的端口。不包括用做附加功能的端口。
 * 参数:
 * 返回:
 * 说明:1，用做附件功能的端口的初始化，在对应的功能模块中完成，避免重复初始化端口，对软件
 * 			系统产生干扰和风险。
 * 		2，
****************************************************************************/
static void GPIO_Init(void)
{
	SYSCTRL_ResetModule(SYSCTRL_GPIO);			//在系统控制模块中，复位GPIO模块
    SYSCTRL_EnableModule(SYSCTRL_GPIO);			//在PARCC中，使能GPIO模块。在PARCC中，GPIO有一个单独的控制寄存器
}

/*****************************************************************************
 * 函数:System_Init
 * 功能:初始化系统，初始所有使用的MCU集成外设。
 * 参数:
 * 返回:
 * 说明:
****************************************************************************/
static void System_Init(void)
{
    Z20_SCB->VTOR = ((uint32_t)&__vector_table) & 0xFFFFFF80U;	//清除内核寄存器VTOR的后7位
    COMMON_DSB();	//数据同步，在这个指令之前，完成所有的就存储器处理工作。

	COMMON_DISABLE_INTERRUPTS();	//禁止 IRQ 全局中断
	
	PMU_Init();		//初始化 PMU 模块。必须放在初始化其他模块之前
	SCM_Init();		//初始化 SCM 模块。
	CLOCK_Init();	//初始化系统的时钟源
	PORT_Init();	//初始化所有使用到的 PORT 模块
	GPIO_Init();	//初始化 GPIO 模块
	
	COMMON_ENABLE_INTERRUPTS();	//使能 IRQ 全局中断
}

