#include "peripheralHal.h"
#include "mpuHal.h"
#include "sysctrl_drv.h"	
#include "clock_drv.h"		
#include "gpio_drv.h"		
#include "wdog_drv.h"		
#include "tim_drv.h"
#include "adc_drv.h"
#include "batteryHal.h"
#include "logHal.h"
#include "gSensorHal.h"
#include "firmwareUpdateSdk.h"
#include "int_drv.h"
// #define EVB_BOARD_TEST

#define KL15_IRQ_PORT     PORT_E
#define KL15_IRQ_PIN      GPIO_1
#define KL15_IRQ_PIN_MUX  PTE1_GPIO
#define KL15_IRQ_IRQN     PORTE_IRQn

#define KL30_IRQ_PORT     PORT_E
#define KL30_IRQ_PIN      GPIO_2
#define KL30_IRQ_PIN_MUX  PTE2_GPIO
#define KL30_IRQ_IRQN     PORTE_IRQn

#define SYS_ON_PORT    PORT_D
#define SYS_ON_PIN     GPIO_10
#define SYS_ON_PIN_MUX PTD10_GPIO
/********************************************
 * 
 *  Timer
 * 
**********************************************/
#ifndef EVB_BOARD_TEST
#define SYS_LED_PORT PORT_D
#define SYS_LED_PIN  GPIO_11
#define SYS_LED_PIN_MUX PTD11_GPIO
#else
#define SYS_LED_PORT PORT_B
#define SYS_LED_PIN  GPIO_4
#define SYS_LED_PIN_MUX PTB4_GPIO
#endif

#define PERIPHERAL_TIMER_CLK      CLK_TIM1
#define PERIPHERAL_TIMER_SYS      SYSCTRL_TIM1
#define PERIPHERAL_TIMER_INDEX    TIM1_ID
#define PERIPHERAL_TIMER_IRQ      TIM1_Ch_IRQn

static uint8_t g_ledSleepFlag = 0;
static uint8_t g_ledModeFlag = 0; //0:quick mode  1：normal mode
static uint32_t g_rtcSCount = 0;
static uint32_t g_rtcMsCount = 0;
static uint32_t g_timerDelayCount = 0;
PeripheralTimer_t g_peripheralTimer[PERIPHERAL_TIMER_INSTANCE_NUMBER];
/*****************************************************************************
 * Function    : PeripheralHalGetKl15Status
 * Description : Get the status of KL15 power signal
 * Input       : None
 * Output      : None
 * Return      : int16_t - Status of KL15 signal
 *                - 1 : KL15 is ON (GPIO_HIGH)
 *                - 0 : KL15 is OFF (GPIO_LOW)
 * Others      : In EVB_BOARD_TEST mode, always return 1 (KL15 is ON)
****************************************************************************/
int16_t PeripheralHalGetKl15Status (void)
{
#ifndef EVB_BOARD_TEST
  if((GPIO_ReadPinLevel(KL15_IRQ_PORT, KL15_IRQ_PIN)) == GPIO_HIGH)
  {
    return 1;
  }
  else
  {
    return 0;
  }
#else
  return 1;
#endif
}

/*****************************************************************************
 * Function    : PeripheralHalGetKl30Status
 * Description : Get the status of KL30 power signal
 * Input       : None
 * Output      : None
 * Return      : int16_t - Status of KL30 signal
 *                - 1 : KL30 is ON (GPIO_LOW)
 *                - 0 : KL30 is OFF (GPIO_HIGH)
 * Others      : In EVB_BOARD_TEST mode, always return 1 (KL30 is ON)
****************************************************************************/
int16_t PeripheralHalGetKl30Status (void)
{
#ifndef EVB_BOARD_TEST
  if((GPIO_ReadPinLevel(KL30_IRQ_PORT, KL30_IRQ_PIN)) == GPIO_HIGH)
  {
    return 0;
  }
  else
  {
    return 1;
  }
#else
  return 1;
#endif
}

/*****************************************************************************
 * Function    : PeripheralHalSysOnInit
 * Description : Initialize system ON pin configuration
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Configures SYS_ON pin as output and sets it to high
****************************************************************************/
static void PeripheralHalSysOnInit (void)
{
    PORT_PinmuxConfig(SYS_ON_PORT, SYS_ON_PIN, SYS_ON_PIN_MUX);
    GPIO_SetPinDir(SYS_ON_PORT, SYS_ON_PIN, GPIO_OUTPUT);
    GPIO_SetPinOutput(SYS_ON_PORT, SYS_ON_PIN);
}

/*****************************************************************************
 * Function    : PeripheralHalSetSysOn
 * Description : Set the state of system ON pin
 * Input       : uint8_t flag - State to set
 *                - 1 : Turn SYS_ON pin ON (set to high)
 *                - 0 : Turn SYS_ON pin OFF (set to low)
 * Output      : None
 * Return      : None
****************************************************************************/
void PeripheralHalSetSysOn (uint8_t flag)
{
  if(flag)
  {
    GPIO_SetPinOutput(SYS_ON_PORT,SYS_ON_PIN);
  }
  else
  {
    // Turn OFF SYS_ON
    GPIO_ClearPinOutput(SYS_ON_PORT,SYS_ON_PIN);
  }
}

/*****************************************************************************
 * Function    : Timer1Handler
 * Description : Timer 1 interrupt handler
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Calls periodic processing functions
****************************************************************************/
static void Timer1Handler(void)
{
    PeripheralHal1msTimerProcess();
    MpuHalUartTimerCallback();
    DelayRLTUnderFlowCallback();
    FirmwareUpdateSdkTimerCallback();
}

/*****************************************************************************
 * Function    : TIM1_Init
 * Description : Configure TIM1 module for timer interrupt functionality
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : 1. Configures TIM1 with system clock source
 *               2. Clock source selection description:
 *                  - TIM_CLK_SOURCE_SYSTEM: System clock source
 *                  - TIM_CLK_SOURCE_FUNCTION: Clock source selected by CLK_ModuleSrc/PARCC
 *                  - TIM_CLK_SOURCE_EXTERNAL: External clock source input via pin
 *               3. TIM module contains a 16-bit counter register, each output channel has a 16-bit compare register
 *                  Up to 8 output channels, up to 2 fault signal input channels, up to 8 signal input channels
****************************************************************************/
void TIM1_Init(void)
{
    SYSCTRL_DisableModule(PERIPHERAL_TIMER_SYS);
    CLK_ModuleSrc(PERIPHERAL_TIMER_CLK, CLK_SRC_PLL);		// TIM module clock source selection: HSOSC
    CLK_SetClkDivider(PERIPHERAL_TIMER_CLK, CLK_DIV_12);		// Set TIM clock divider (must be <= 1/4 of core clock)
    SYSCTRL_ResetModule(PERIPHERAL_TIMER_SYS);			// Reset TIM module in system control module
    SYSCTRL_EnableModule(PERIPHERAL_TIMER_SYS);			// Enable TIM module in system control module

    TIM_CountingModeConfig(PERIPHERAL_TIMER_INDEX, TIM_COUNTING_UP);	// Configure counter to count up mode
    TIM_InitCounter(PERIPHERAL_TIMER_INDEX, 0x0000, 10000);	// Set counter initial value and modulus

    TIM_IntMask(PERIPHERAL_TIMER_INDEX, TIM_INT_ALL, MASK);	// Disable all interrupts for the module
    TIM_IntClear(PERIPHERAL_TIMER_INDEX, TIM_INT_ALL);			// Clear all interrupt flags for the module
    TIM_InstallCallBackFunc(PERIPHERAL_TIMER_INDEX, TIM_INT_TO, Timer1Handler);	// Install TIM_INT_TO interrupt handler
    TIM_IntMask(PERIPHERAL_TIMER_INDEX, TIM_INT_TO, UNMASK);			// Enable TIM_INT_TO interrupt
    INT_SetPriority(TIM1_Overflow_IRQn, 0x7);// Set TIM_Overflow_IRQn interrupt priority (high=0 to low=15)
    INT_EnableIRQ(TIM1_Overflow_IRQn);		// Enable TIM_Overflow_IRQn interrupt

    TIM_StartCounter(PERIPHERAL_TIMER_INDEX, TIM_CLK_SOURCE_FUNCTION, TIM_CLK_DIVIDE_1);		// Start TIM1 counter with clock source selected by CLK_ModuleSrc, divide by 1
}

/*****************************************************************************
 * Function    : TIM1_UpdataDutyData
 * Description : Update TIM1 module channel compare register value (duty cycle)
 * Input       : TIM_ChannelId_t channelId - Channel ID
 *               uint16_t ccvdata - Data to be written to channel compare register CCV
 * Output      : None
 * Return      : None
 * Others      : Writes data to the channel compare register and enables reload synchronization
****************************************************************************/
void TIM1_UpdataDutyData(TIM_ChannelId_t channelId, uint16_t ccvdata)
{
    TIM_SetCCVal(PERIPHERAL_TIMER_INDEX, channelId, ccvdata);	// Write data to channel compare register CCV
    TIM_ReloadSyncCmd(PERIPHERAL_TIMER_INDEX, ENABLE);	// Enable reload synchronization command
}

/*****************************************************************************
 * Function    : TIM1_FAULT_ISR
 * Description : TIM1_FAULT interrupt handler
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Re-initializes TIM1 module on fault
****************************************************************************/
void TIM1_FAULT_ISR(void)
{
    TIM1_Init();
}

/*****************************************************************************
 * Function    : PeripheralHal1msTimerInit
 * Description : Initialize 1ms timer functionality
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Initializes TIM1 module for 1ms timing
****************************************************************************/
static void PeripheralHal1msTimerInit(void)
{
    TIM1_Init();	
}

/*****************************************************************************
 * Function    : PeripheralHalSetLedMode
 * Description : Set LED blinking mode
 * Input       : uint8_t mode - LED mode
 *                - 0 : Quick blink mode
 *                - 1 : Normal blink mode
 * Output      : None
 * Return      : None
****************************************************************************/
void PeripheralHalSetLedMode(uint8_t mode)
{
    g_ledModeFlag = mode;
}

/*****************************************************************************
 * Function    : PeripheralHal1msTimerProcess
 * Description : Process 1ms timer events and control system LED blinking
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Toggles system LED based on configured mode and sleep flag
 *               - Normal mode: 500ms blink interval (g_ledModeFlag = 1)
 *               - Quick mode: 1000ms blink interval (g_ledModeFlag = 0)
 *               - Sleep mode: LED turned off (g_ledSleepFlag = 1)
****************************************************************************/
void PeripheralHal1msTimerProcess(void)
{
  static uint32_t blinkCounter = 0;
  static uint8_t  ledState = 0;
  uint32_t blinkInterval = (g_ledModeFlag == 1) ? 500 : 1000; // 500ms for normal mode, 1000ms for quick mode

  // Increment counter and check if blink interval has been reached
  blinkCounter++;
  if (blinkCounter < blinkInterval)
  {
    return;
  }

  // Reset counter and toggle LED state if not in sleep mode
  blinkCounter = 0;
  if (!g_ledSleepFlag)
  {
    if (ledState == 0)
    {
      GPIO_ClearPinOutput(SYS_LED_PORT, SYS_LED_PIN); // Turn LED OFF
      ledState = 1;
    }
    else
    {
      GPIO_SetPinOutput(SYS_LED_PORT, SYS_LED_PIN);   // Turn LED ON
      ledState = 0;
    }
  }
}

/*****************************************************************************
 * Function    : DelayRLTUnderFlowCallback
 * Description : Process timer underflow events and update system timing variables
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Updates various timer counters and RTC variables
 *               - Updates peripheral timer instances
 *               - Maintains RTC millisecond and second counters
 *               - Handles delay and cycle timing counters
****************************************************************************/
static void DelayRLTUnderFlowCallback(void)
{
    /* Update peripheral timer instances */
    for (int i = 0; i < PERIPHERAL_TIMER_INSTANCE_NUMBER; i++)
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
    
    /* Update RTC counters */
    g_rtcMsCount++;
    if (g_rtcMsCount >= 1000)
    {
        g_rtcMsCount = 0;
        g_rtcSCount++;
    }

    /* Update delay counter if active */
    if (g_timerDelayCount > 0)
    {
        g_timerDelayCount--;
    }
}

/*****************************************************************************
 * Function    : TimerHalDelayMs
 * Description : Create blocking delay in milliseconds
 * Input       : uint32_t delayMs - Delay time in milliseconds
 * Output      : None
 * Return      : None
 * Others      : Uses g_timerDelayCount variable for timing
 *               Implements a blocking wait using a hardware timer interrupt
****************************************************************************/
void TimerHalDelayMs(uint32_t delayMs)
{
    if (delayMs == 0)
    {
        return; 
    }
    
    g_timerDelayCount = delayMs;
    while (g_timerDelayCount != 0)
    {
        /* Busy wait - timer counter will be decremented by the interrupt handler */
        /* In a more advanced system, this could be replaced with a sleep instruction */
    }
}

/*****************************************************************************
 * Function    : PeripheralStartSysLed
 * Description : Initialize and start system LED functionality
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Configures LED pin and initializes 1ms timer
****************************************************************************/
static void PeripheralStartSysLed(void)
{
    PeripheralHal1msTimerInit();
    PORT_PinmuxConfig(SYS_LED_PORT, SYS_LED_PIN, SYS_LED_PIN_MUX);
    GPIO_SetPinDir(SYS_LED_PORT, SYS_LED_PIN, GPIO_OUTPUT);
    GPIO_SetPinOutput(SYS_LED_PORT, SYS_LED_PIN);
}

// /*****************************************************************************
//  * Function    : PeripheralHalStopSysLed
//  * Description : Stop system LED blinking
//  * Input       : None
//  * Output      : None
//  * Return      : None
//  * Others      : Sets sleep flag and turns off LED
// ****************************************************************************/
// static void PeripheralHalStopSysLed(void)
// {
//     g_ledSleepFlag = 1;
//     GPIO_ClearPinOutput(SYS_LED_PORT,SYS_LED_PIN);
// }

// /*****************************************************************************
//  * Function    : PeripheralHalRestartSysLed
//  * Description : Restart system LED functionality
//  * Input       : None
//  * Output      : None
//  * Return      : None
//  * Others      : Reconfigures LED pin and clears sleep flag
// ****************************************************************************/
// static void PeripheralHalRestartSysLed(void)
// {
//     PORT_PinmuxConfig(SYS_LED_PORT, SYS_LED_PIN, SYS_LED_PIN_MUX);
//     GPIO_SetPinDir(SYS_LED_PORT, SYS_LED_PIN, GPIO_OUTPUT);
//     GPIO_SetPinOutput(SYS_LED_PORT, SYS_LED_PIN);
//     g_ledSleepFlag = 0;
// }

/*****************************************************************************
 * Function    : PeripheralHalMcuHardReset
 * Description : Perform a hard reset of the microcontroller
 * Input       : None
 * Output      : None
 * Return      : None (function does not return as it triggers a system reset)
 * Others      : Uses COMMON_SystemReset to trigger reset
****************************************************************************/
void PeripheralHalMcuHardReset(void)
{
  COMMON_SystemReset();
}

/******************************************************************** 
 *
 *  
 *                      WatchDog
 * 
 * 
*********************************************************************/
#if 0
#define WDOG_TIMEOUT_VALUE  0x00F42400    // Watchdog timer timeout value, 32-bit
#define WDOG_WINDOW_VALUE   0x00000000    // Watchdog timer window value, 32-bit

const WDOG_Config_t WDOG_Config =
{
    .clkSource = WDOG_OSC_CLOCK,          // Select WDOG module clock source as internal 32KHz
    .wait = DISABLE,                      // Disable operation in Wait mode
    .stop = DISABLE,                      // Enable operation in Stop mode
    .debug = DISABLE,                     // Disable operation in Debug mode
    .winEnable = DISABLE,                 // Disable window watchdog mode
    .timeoutValue = WDOG_TIMEOUT_VALUE,   // Watchdog timer timeout value
    .windowValue = WDOG_WINDOW_VALUE,     // Watchdog timer window value
    .testMode = WDOG_TST_NORMAL           // WDOG operates in normal mode
};
#else
#define WDOG_TIMEOUT_VALUE  0x0000FA00    //看门狗定时器的溢出值，32位的
#define WDOG_WINDOW_VALUE   0x00000000    //看门狗定时器的窗口值，32位的，

const WDOG_Config_t WDOG_Config =
{
    .clkSource = WDOG_LPO_CLOCK,          // 选择 WDOG 模块的时钟源为内部 32KHz
    .wait = DISABLE,                      // 禁止在 Wait 模式下运行
    .stop = DISABLE,                      // 使能在 Stop 模式下运行
    .debug = DISABLE,                     // 禁止在 Debug 模式下运行
    .winEnable = DISABLE,                 // 禁止窗口看门狗模式
    .timeoutValue = WDOG_TIMEOUT_VALUE,   // 看门狗定时器的溢出值
    .windowValue = WDOG_WINDOW_VALUE,     // 看门狗定时器的窗口值
    .testMode = WDOG_TST_NORMAL           // WDOG(看门狗)处在正常运行模式
};
#endif

/*****************************************************************************
 * Function    : MCWDTInit
 * Description : Initialize the Multi-Counter Watchdog Timer
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Configures watchdog with preset configuration, initializes interrupts,
 *               and starts watchdog operation
****************************************************************************/
static void MCWDTInit(void)
{
    WDOG_Init(&WDOG_Config);
    WDOG_Refresh();	// Refresh watchdog
}

/*****************************************************************************
 * Function    : PeripheralHalFeedWatchDog
 * Description : Reset (feed) the watchdog timer to prevent system reset
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Calls WDOG_Refresh to reset the watchdog counter
****************************************************************************/
void PeripheralHalFeedWatchDog(void)
{
    WDOG_Refresh();	//喂狗
}

/*****************************************************************************
 * Function    : PeripheralHalInit
 * Description : Initialize all peripheral hardware components
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Initializes system power pin, LED functionality, and watchdog
****************************************************************************/
void PeripheralHalInit(void)
{
    PeripheralHalSysOnInit();
    PeripheralStartSysLed();
    PeripheralHalSetLedMode(1);
    MCWDTInit();
}

