/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: timerHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "timerHal.h"
#include "platform_cfg.h"
#include "peripheralHal.h"
#include "ecallHal.h"
#include "tim_drv.h"
#include "sysctrl_drv.h"
#include "clock_drv.h"
#include "gpio_drv.h"
#include "mpuHal.h"
#include "int_drv.h"
#include "rtc_drv.h"
#include "logHal.h"
#include "wdog_drv.h"

/****************************** Macro Definitions ******************************/
#define TIMER0_KPI_ENABLE                     (0)
#define PERIPHERAL_TIMER_INSTANCE_NUMBER       40
#define SRS_SIGNAL_PROCESS_ENABLE              1
#define AD_CONVERT_CYCLE_TIME                  5

#define RTC_DEBUG_ENABLE                       0
#define RTC_START_YEAR                         (2000U)
#define RTC_OSC32K_READY_TIMEOUT               (10000U)
#define SECONDS_PER_MINUTE                     (60U)
#define SECONDS_PER_HOUR                       (3600U)
#define SECONDS_PER_DAY                        (86400U)
#define DAYS_PER_YEAR                          (365U)
#define DAYS_PER_LEAP_YEAR                     (366U)
#define MONTHS_PER_YEAR                        (12U)
#define IS_LEAP_YEAR(year)       (((year) % 4U == 0U) && ((year) % 100U != 0U)) || ((year) % 400U == 0U)

#if (TIMER0_KPI_ENABLE == 1)
#define TIMER_KPI_SAMPLE_COUNT        (10000U)     // KPI采样次数
#define CoreDebug_BASE (0xE000EDF0UL)
#define CoreDebug ((volatile uint32_t *)CoreDebug_BASE)
#define CoreDebug_DEMCR_TRCENA (1UL << 24)  // 跟踪使能位
#define HZ_TO_NS (1000000000UL)  // 1秒 = 1e9纳秒
#define HZ_TO_US (1000000UL)     // 1秒 = 1e6微秒
#define HZ_TO_MS (1000UL)        // 1秒 = 1e3毫秒
#define CPU_FREQ_HZ (120000000UL) // 120MHz
#endif

/****************************** Type Definitions ******************************/
typedef struct
{
    uint8_t UseFlag;
    uint8_t timerOnFlag;
    uint32_t TimerCount;
    typeTimerCallbackPtr TimerCallback;
}PeripheralTimer_t;

#if (TIMER0_KPI_ENABLE == 1)
typedef struct {
    uint32_t minCycles;     // 最小执行时间(CPU周期)
    uint32_t maxCycles;     // 最大执行时间(CPU周期)
    uint32_t totalCycles;   // 总执行时间(CPU周期)
    uint32_t sampleCount;   // 当前采样次数
    uint32_t avgCycles;     // 平均执行时间(CPU周期)
} TimerIrqKpi_t;
#endif
/****************************** Global Variables ******************************/
#if (TIMER0_KPI_ENABLE == 1)
static TimerIrqKpi_t g_timer0IrqKpi;
#endif
static PeripheralTimer_t g_peripheralTimer[PERIPHERAL_TIMER_INSTANCE_NUMBER];
static uint8_t g_adChannelCount = 0;
static uint32_t g_rtcSCount = 0;
static uint32_t g_rtcMsCount = 0;
static TimeData_t g_currentTime;
static uint32_t g_rtcBaseSeconds = 0U;
static TimeData_t g_baseTime;
static const uint8_t g_monthDays[] = {
    0U,  31U, 28U, 31U, 30U, 31U, 30U, 31U, 31U, 30U, 31U, 30U, 31U
};

/****************************** Function Declarations *************************/
static void DelayRLTUnderFlowCallback(void);
static ResultStatus_t TimerHal_RTCInit(void);
static uint32_t TimerHalTimeToSeconds(const TimeData_t *time);
static void TimerHalSecondsToTime(uint32_t seconds, TimeData_t *time);
static void TimerHalRtcSecCallback(void);
static void TimerHal_RtcTimeUpdate(void);
static ResultStatus_t TimerHal_SetRtcTime(const TimeData_t *time);
static void TimerHal_RtcIrqEnable(void);
static void TimerHal_RtcIrqDisable(void);
#if (RTC_DEBUG_ENABLE == 1)
static void TimerHal_PrintTimeInfo(void);
#endif

/****************************** Public Function Implementations ***************/
static void DelayRLTUnderFlowCallback(void)
{
    static uint32_t adTimeCount = 0;

    for (uint32_t i = 0; i < PERIPHERAL_TIMER_INSTANCE_NUMBER; i++)
    {
        if (g_peripheralTimer[i].TimerCount > 0)
        {
            g_peripheralTimer[i].TimerCount--;
            if (g_peripheralTimer[i].TimerCount == 0) {
                if (g_peripheralTimer[i].TimerCallback != NULL) {
                    g_peripheralTimer[i].TimerCallback();
                }
            }
        }    
    }
    g_rtcMsCount++;
    if (g_rtcMsCount >= 1000)
    {
        g_rtcMsCount = 0;
        g_rtcSCount++;
    }
    adTimeCount++;
    if (adTimeCount >= AD_CONVERT_CYCLE_TIME)
    {
        COMMON_DISABLE_INTERRUPTS();
        PeripheralHalAdcStart(g_adChannelCount);
        COMMON_ENABLE_INTERRUPTS();
        g_adChannelCount++;
        if (g_adChannelCount >= 2)
        {
            g_adChannelCount = 0;
        }
        adTimeCount = 0;
    }

    //EcallHalSosLedTimerCallback();
}

static void Timer0Handler(void)
{
#if (TIMER0_KPI_ENABLE == 1)
    *CoreDebug |= CoreDebug_DEMCR_TRCENA;
    Z20_DWT->CYCCNT = 0UL;
    Z20_DWT->CTRL |= (1UL << 0);
    uint32_t startTime, endTime, cycles;
    startTime = Z20_DWT->CYCCNT;
#endif
    MpuHalUartTimerCallBack();
    DelayRLTUnderFlowCallback();
#if (TIMER0_KPI_ENABLE == 1)
    endTime = Z20_DWT->CYCCNT;
    cycles = ((endTime - startTime)*84); // 除以10000，即是微秒单位，因为一个cpu周期是8.33纳秒
    if (g_timer0IrqKpi.sampleCount < TIMER_KPI_SAMPLE_COUNT) {
        if (g_timer0IrqKpi.sampleCount == 0) {
            g_timer0IrqKpi.maxCycles = cycles;
            g_timer0IrqKpi.minCycles = cycles;
        } else {
            if (cycles > g_timer0IrqKpi.maxCycles) {
                g_timer0IrqKpi.maxCycles = cycles;
            }
            if (cycles < g_timer0IrqKpi.minCycles) {
                g_timer0IrqKpi.minCycles = cycles;
            }
        }
        g_timer0IrqKpi.totalCycles += cycles;
        g_timer0IrqKpi.sampleCount++;
        g_timer0IrqKpi.avgCycles = g_timer0IrqKpi.totalCycles / g_timer0IrqKpi.sampleCount;
    }
    else if (g_timer0IrqKpi.sampleCount == TIMER_KPI_SAMPLE_COUNT) {
        g_timer0IrqKpi.sampleCount++;
        TBOX_PRINT("Timer1Handler: maxCycles=%d, minCycles=%d, avgCycles=%d, totalCycles=%d\n",
                    g_timer0IrqKpi.maxCycles, g_timer0IrqKpi.minCycles, g_timer0IrqKpi.avgCycles, g_timer0IrqKpi.totalCycles);
    }
    else {
        g_timer0IrqKpi.totalCycles = 0;
        g_timer0IrqKpi.sampleCount = 0;
    }
#endif
}

/*************************************************
  Function:       TIM0_Init
  Description:    Initialize TIM0 module for timing interrupt function
  Input:          none
  Output:         none
  Return:         none
  Others:         Configures TIM0 with HSOSC clock source, up-counting mode
                  Sets up overflow interrupt with Timer0Handler callback
                  Enables TIM0 Overflow interrupt with priority level 7
*************************************************/
void TIM0_Init(void)
{
    // 初始化TIM0模块
    SYSCTRL_DisableModule(SYSCTRL_TIM0);
    CLK_ModuleSrc(CLK_TIM0, CLK_SRC_PLL);        //TIM0模块的时钟源选择 HSOSC
    CLK_SetClkDivider(CLK_TIM0, CLK_DIV_12);        //设置TIM0时钟的分频器，不能高于内核时钟的1/4
    SYSCTRL_ResetModule(SYSCTRL_TIM0);            //在系统控制模块中，复位TIM0模块
    SYSCTRL_EnableModule(SYSCTRL_TIM0);            //在系统控制模块中，使能TIM0模块

    TIM_CountingModeConfig(TIM0_ID, TIM_COUNTING_UP);    //计数器向上计数模式
    TIM_InitCounter(TIM0_ID, 0x0000, 10000);    //设置计数器的初始值和模值

    //初始化中断
    TIM_IntMask(TIM0_ID, TIM_INT_ALL, MASK);    //关闭模块所有的中断
    TIM_IntClear(TIM0_ID, TIM_INT_ALL);            //清除模块所有的中断标志位

    TIM_InstallCallBackFunc(TIM0_ID, TIM_INT_TO, Timer0Handler);    //加载TIM_INT_TO中断函数
    TIM_IntMask(TIM0_ID, TIM_INT_TO, UNMASK);                    //使能TIM_INT_TO中断

    INT_SetPriority(TIM0_Overflow_IRQn, 0x7);//设置 TIM0_Oveflow_IRQn 的中断优先级。(高)0--15(低)
    INT_EnableIRQ(TIM0_Overflow_IRQn);        //使能 TIM0_Oveflow_IRQn 中断

    //启动模块，模块开始运行
    TIM_StartCounter(TIM0_ID, TIM_CLK_SOURCE_FUNCTION, TIM_CLK_DIVIDE_1);
        //TIM0的时钟源选择函数CLK_ModuleSrc选择的时钟源，分频系数为1，启动TIM0，TIM0计数器开始计数
}


/*************************************************
  Function:       TIM0_UpdataDutyData
  Description:    Update TIM0 channel compare register value (duty cycle)
  Input:          channelId - Channel ID
                  ccvdata - Data to be written to channel compare register CCV
  Output:         none
  Return:         none
  Others:         Enables reload synchronization command after setting value
*************************************************/
void TIM0_UpdataDutyData(TIM_ChannelId_t channelId, uint16_t ccvdata)
{
    TIM_SetCCVal(TIM0_ID, channelId, ccvdata);    //把数据写入通道比较寄存器CCV中

    TIM_ReloadSyncCmd(TIM0_ID, ENABLE);    //使能重新加载数据的命令
    //TIM_SyncSoftwareTrigger(TIM0_ID); //软件触发，立即执行重新加载数据的命令
}

/*************************************************
  Function:       TIM0_FAULT_ISR
  Description:    TIM0 fault interrupt service routine
  Input:          none
  Output:         none
  Return:         none
  Others:         Reinitializes TIM0 module upon fault detection
*************************************************/
void TIM0_FAULT_ISR(void)
{
    TIM0_Init();
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
    TIM0_Init();    //初始化TIM0模块
    TimerHal_RTCInit();    //初始化RTC模块
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
    //IRQ_DISABLE_LOCAL();
    timerHandle = -1;
    COMMON_ENABLE_INTERRUPTS();
    for(i=0;i<PERIPHERAL_TIMER_INSTANCE_NUMBER;i++)
    {
        if(g_peripheralTimer[i].UseFlag ==0)
        {
            g_peripheralTimer[i].UseFlag = 1;
            g_peripheralTimer[i].timerOnFlag = 0;
            g_peripheralTimer[i].TimerCount = 0;
            g_peripheralTimer[i].TimerCallback = NULL;
            timerHandle = i;
            break;
        }
    }
    COMMON_ENABLE_INTERRUPTS();
    //IRQ_RESTORE();
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
    if(timerHandle<0)
    {
        return -1;    
    }
    if(timerHandle>=PERIPHERAL_TIMER_INSTANCE_NUMBER)
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
    if (timerHandle >= PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return -1;    
    }

    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    timerOnFlag = g_peripheralTimer[timerHandle].timerOnFlag;
    timerCount = g_peripheralTimer[timerHandle].TimerCount;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt

    if (timerOnFlag == 0) //timer stoped
    {
        return -2;
    }
    if (timerCount)
    {
        return 1;   
    }

    return 0;
}

/*************************************************
  Function:     TimerHalGetRemainder
  Description:  Get timer remainder
  Input:        timerHandle :timer handle
  Output:       None
  Return:       0 :success
                1 :fail
  Others:       None
*************************************************/
uint32_t TimerHalGetRemainder(int16_t timerHandle)
{
    uint8_t timerOnFlag;
    uint32_t timerCount;
    if (timerHandle < 0)
    {
        return 0;    
    }
    if (timerHandle >= PERIPHERAL_TIMER_INSTANCE_NUMBER)
    {
        return 0;    
    }

    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    timerOnFlag = g_peripheralTimer[timerHandle].timerOnFlag;
    timerCount = g_peripheralTimer[timerHandle].TimerCount;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt

    if (timerOnFlag == 0) //timer stoped
    {
        return 0;
    }
    if (timerCount)
    {
        return timerCount;
    }
    return 0;
}


/*************************************************
  Function:     TimerHalSetRtcTime
  Description:  set rtc time
  Input:        utc :enter the time point
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalSetRtcTime(uint32_t utc)
{
    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    g_rtcMsCount = 0;
    g_rtcSCount = utc;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt
}

/*************************************************
  Function:     TimerHalGetRtcTime
  Description:  Get current time
  Input:        pUtc :the current time obtained
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void TimerHalGetRtcTime(uint32_t *pUtc)
{
    COMMON_DISABLE_INTERRUPTS();//disable interrupt
    *pUtc = g_rtcSCount;
    COMMON_ENABLE_INTERRUPTS();//enable interrupt
}

void TimerHalSetMode(uint8_t mode)
{
    if (mode != 0)
    {
        TimerHal_RtcIrqEnable();
        TIM0_Init();
    }
    else
    {
        TimerHal_RtcIrqDisable();
        TIM_IntMask(TIM0_ID, TIM_INT_ALL, MASK); // 关闭模块所有的中断
        TIM_IntClear(TIM0_ID, TIM_INT_ALL);  // 清除模块所有的中断标志位
        INT_ClearPendingIRQ(TIM0_Overflow_IRQn);
        INT_EnableIRQ(TIM0_Overflow_IRQn);
        SYSCTRL_DisableModule(SYSCTRL_TIM0); // 在系统控制模块中，使能TIM0模块
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
    if (timerHandle < 0)
    {
        return -1;    
    }
    if (timerHandle >= PERIPHERAL_TIMER_INSTANCE_NUMBER)    
    {
        return -1;    
    }
    COMMON_DISABLE_INTERRUPTS(); // disable interrupt
    g_peripheralTimer[timerHandle].TimerCallback = TimerCallback;
    COMMON_ENABLE_INTERRUPTS(); // enable interrupt
    return 0;
}

/*************************************************
  Function:     TimerHalTimeToSeconds
  Description:  Convert time to seconds
  Input:        time :time point
  Output:       None
  Return:       seconds
  Others:       None
*************************************************/
static uint32_t TimerHalTimeToSeconds(const TimeData_t *time)
{
    uint32_t totalSeconds = 0U;
    uint16_t year;
    uint8_t month;
    
    for (year = RTC_START_YEAR; year < time->year; year++)
    {
        if (IS_LEAP_YEAR(year))
        {
            totalSeconds += (uint32_t)DAYS_PER_LEAP_YEAR * SECONDS_PER_DAY;
        }
        else
        {
            totalSeconds += (uint32_t)DAYS_PER_YEAR * SECONDS_PER_DAY;
        }
    }
    
    for (month = 1U; month < time->month; month++)
    {
        if (month == 2U && IS_LEAP_YEAR(time->year))
        {
            totalSeconds += 29U * SECONDS_PER_DAY;
        }
        else
        {
            totalSeconds += (uint32_t)g_monthDays[month] * SECONDS_PER_DAY;
        }
    }
    
    totalSeconds += (uint32_t)(time->day - 1U) * SECONDS_PER_DAY;
    totalSeconds += (uint32_t)time->hour * SECONDS_PER_HOUR;
    totalSeconds += (uint32_t)time->minute * SECONDS_PER_MINUTE;
    totalSeconds += time->second;
    
    return totalSeconds;
}

/*************************************************
  Function:     TimerHalSecondsToTime
  Description:  Convert seconds to time
  Input:        seconds :seconds
  Output:       time :time point
  Return:       None
  Others:       None
*************************************************/
static void TimerHalSecondsToTime(uint32_t seconds, TimeData_t *time)
{
    uint32_t remainingSeconds = seconds;
    uint16_t year = RTC_START_YEAR;
    uint8_t month, day;
    uint32_t daySeconds;
    
    while (1)
    {
        uint32_t yearDays = IS_LEAP_YEAR(year) ? DAYS_PER_LEAP_YEAR : DAYS_PER_YEAR;
        uint32_t yearSeconds = (uint32_t)yearDays * SECONDS_PER_DAY;
        
        if (remainingSeconds < yearSeconds)
        {
            break;
        }
        
        remainingSeconds -= yearSeconds;
        year++;
    }
    
    month = 1U;
    while (month <= MONTHS_PER_YEAR)
    {
        uint32_t monthDays;
        
        if (month == 2U && IS_LEAP_YEAR(year))
        {
            monthDays = 29U;
        }
        else
        {
            monthDays = g_monthDays[month];
        }
        
        uint32_t monthSeconds = (uint32_t)monthDays * SECONDS_PER_DAY;
        
        if (remainingSeconds < monthSeconds)
        {
            break;
        }
        
        remainingSeconds -= monthSeconds;
        month++;
    }
    
    daySeconds = remainingSeconds % SECONDS_PER_DAY;
    day = (uint8_t)(remainingSeconds / SECONDS_PER_DAY + 1U);
    
    time->year = year;
    time->month = month;
    time->day = day;
    time->hour = (uint8_t)(daySeconds / SECONDS_PER_HOUR);
    time->minute = (uint8_t)((daySeconds % SECONDS_PER_HOUR) / SECONDS_PER_MINUTE);
    time->second = (uint8_t)(daySeconds % SECONDS_PER_MINUTE);
}

/*************************************************
  Function:     TimerHalRtcSecCallback
  Description:  rtc second callback function
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void TimerHalRtcSecCallback(void)
{
    RTC_ClearIntStatus(RTC_INT_SECOND);
    TimerHal_RtcTimeUpdate();
#if (RTC_DEBUG_ENABLE == 1)
    TimerHal_PrintTimeInfo();
#endif
}

/*************************************************
  Function:     TimerHal_RTCInit
  Description:  Initialize RTC
  Input:        None
  Output:       None
  Return:       ResultStatus_t
  Others:       None
*************************************************/
static ResultStatus_t TimerHal_RTCInit(void)
{
    uint32_t oscReadyCnt = 0U;
    RTC_CompConfig_t compConfig = {
        .delayVal = 0U,
        .compVal = 127U,
        .dir = RTC_COMP_DOWN,
    };
    RTC_SWRest();
    RTC_Disable();
    CLK_OSC32KEnable(CLK_OSC_EXT_SRC);
    while (CLK_WaitClkReady(CLK_SRC_OSC32K) == ERR)
    {
        oscReadyCnt++;
        WDOG_Refresh(); 
        if (oscReadyCnt >= 100U)
        {
            TBOX_PRINT("RTC init fail, OSC32K not ready\n");
            return ERR;
        }
    } 
    if (RTC_ClkConfig(RTC_CLK_OSC32K_EXT) == ERR)
    {
        TBOX_PRINT("RTC init fail, OSC32K not ready\n");
        return ERR;
    }
    RTC_SetAlarmCounter(0U);    
    RTC_SetSecondCounter(0U);
    RTC_CompConfig(&compConfig);
    TimerHal_RtcIrqEnable();
    RTC_Enable();

    g_currentTime.year = RTC_START_YEAR;
    g_currentTime.month = 1U;
    g_currentTime.day = 1U;
    g_currentTime.hour = 0U;
    g_currentTime.minute = 0U;
    g_currentTime.second = 0U;
    g_baseTime = g_currentTime;
    g_rtcBaseSeconds = 0U;
#if (RTC_DEBUG_ENABLE == 1)
    TimeData_t time = {
        .year = 2025U,
        .month = 10U,
        .day = 30U,
        .hour = 15U,
        .minute = 07U,
        .second = 0U,
    };
    TimerHal_RtcRemoteTimeSync(&time);
#endif  
    return SUCC;
}

/*************************************************
  Function:     TimerHal_GetRtcTime
  Description:  Get rtc time
  Input:        time :time point
  Output:       None
  Return:       ResultStatus_t
  Others:       None
*************************************************/
ResultStatus_t TimerHal_GetRtcTime(TimeData_t *time)
{
    if (time == NULL)
    {
        return ERR;
    } 
    TimerHal_RtcTimeUpdate();
    *time = g_currentTime;
    return SUCC;
}

/*************************************************
  Function:     TimerHal_SetRtcTime
  Description:  Set system time
  Input:        time :time point
  Output:       None
  Return:       ResultStatus_t
  Others:       None
*************************************************/
static ResultStatus_t TimerHal_SetRtcTime(const TimeData_t *time)
{
    ResultStatus_t ret = SUCC;
    uint32_t totalSeconds;
    
    if ((time->month < 1U) || (time->month > 12U) || 
        (time->day < 1U) || (time->day > 31U) ||
        (time->hour > 23U) || (time->minute > 59U) || (time->second > 59U))
    {
        return ERR;
    }
    
    totalSeconds = TimerHalTimeToSeconds(time);
    RTC_Disable();
    RTC_SetAlarmCounter(totalSeconds);
    RTC_Enable();
    g_baseTime = *time;
    g_rtcBaseSeconds = totalSeconds;
    g_currentTime = *time;
    
    return ret;
}

/*************************************************
  Function:     TimerHal_RtcTimeUpdate
  Description:  Update rtc time
  Input:        None
  Output:       None
  Return:       ResultStatus_t
  Others:       None
*************************************************/
static void TimerHal_RtcTimeUpdate(void)
{
    uint32_t currentRtcSeconds;
    uint32_t elapsedSeconds;
    uint32_t totalSeconds;

    currentRtcSeconds = RTC_GetAlarmCounter();
    elapsedSeconds = currentRtcSeconds - g_rtcBaseSeconds;
    totalSeconds = TimerHalTimeToSeconds(&g_baseTime) + elapsedSeconds;
    TimerHalSecondsToTime(totalSeconds, &g_currentTime);
}

/*************************************************
  Function:     TimerHal_RtcRemoteTimeSync
  Description:  Remote time sync
  Input:        time :time point
  Output:       None
  Return:       ResultStatus_t
  Others:       None
*************************************************/
ResultStatus_t TimerHal_RtcRemoteTimeSync(const TimeData_t *time)
{
    ResultStatus_t ret = SUCC;
    COMMON_DISABLE_INTERRUPTS();
    ret = TimerHal_SetRtcTime(time);
    COMMON_ENABLE_INTERRUPTS();
    return ret;
}

/*************************************************
  Function:     TimerHal_RtcIrqEnable
  Description:  Enable rtc second interrupt
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void TimerHal_RtcIrqEnable(void)
{
    RTC_FreqMuxConfig(RTC_SECOND_1);
    RTC_InstallCallBackFunc(RTC_INT_SECOND, TimerHalRtcSecCallback);
    RTC_ClearIntStatus(RTC_INT_SECOND);
    RTC_IntMask(RTC_INT_SECOND, UNMASK);
    INT_SetPriority(RTC_Second_IRQn, 0x3);
    INT_EnableIRQ(RTC_Second_IRQn);
}

/*************************************************
  Function:     TimerHal_RtcIrqDisable
  Description:  Disable rtc second interrupt
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
static void TimerHal_RtcIrqDisable(void)
{
    RTC_IntMask(RTC_INT_SECOND, MASK);
    INT_DisableIRQ(RTC_Second_IRQn);
}

/*************************************************
  Function:     TimerHal_PrintTimeInfo
  Description:  Print rtc time
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
#if (RTC_DEBUG_ENABLE == 1)
static void TimerHal_PrintTimeInfo(void)
{
    TBOX_PRINT("Current time: %04u-%02u-%02u %02u:%02u:%02u\n", 
           g_currentTime.year, g_currentTime.month, g_currentTime.day,
           g_currentTime.hour, g_currentTime.minute, g_currentTime.second);
}
#endif

