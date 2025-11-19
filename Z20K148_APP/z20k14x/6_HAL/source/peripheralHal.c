/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: peripheralHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "peripheralHal.h"
#include "platform_cfg.h"
#include "sysctrl_drv.h" 
#include "clock_drv.h" 
#include "gpio_drv.h" 
#include "wdog_drv.h" 
#include "tim_drv.h"
#include "adc_drv.h"
#include "batteryHal.h"
#include "logHal.h"
#include "timerHal.h"
#include "gSensorHal.h"
#include "canHal.h"
#include "int_drv.h"
#include "mpuHal.h"
#include "powerManageSdk.h"
#include "scm_drv.h"
/****************************** Macro Definitions ******************************/
#define WAKEUP_SOURCE_NONE            (0U)     
#define WAKEUP_SOURCE_CAN1            (1U)     
#define WAKEUP_SOURCE_CAN2            (2U)     
#define WAKEUP_SOURCE_CAN3            (3U)     
#define WAKEUP_SOURCE_CAN4            (4U)      
#define WAKEUP_SOURCE_CAN5            (5U)     
#define WAKEUP_SOURCE_CAN6            (6U)     
#define WAKEUP_SOURCE_CAN7            (7U)     
#define WAKEUP_SOURCE_CAN8            (8U)     
#define WAKEUP_SOURCE_MPU             (9U)     
#define WAKEUP_SOURCE_KL15            (10U)     
#define WAKEUP_SOURCE_KL30            (11U)  
#define WAKEUP_SOURCE_BLE             (12U)     
#define WAKEUP_SOURCE_RTC             (13U)  
#define WAKEUP_SOURCE_RTC_MCU         (14U)
#define WAKEUP_SOURCE_GSENSOR         (15U)

//Define the value of ADC0_FIFO_WATERMARK according to the number of ADC channels used
#define ADC0_FIFO_WATERMARK           (0U)        			//Define the threshold value of FWM interrupt, use WATERMARK_VALUE + 1 FIFO to trigger FWM interrupt.
#define ADC1_FIFO_WATERMARK           (0U)        			//Define the threshold value of FWM interrupt, use WATERMARK_VALUE + 1 FIFO to trigger FWM interrupt.

#if 0
#define WDOG_TIMEOUT_VALUE            (0x00F42400)      	// Watchdog timer overflow value, 32-bit
#define WDOG_WINDOW_VALUE             (0x00000000)        	// Watchdog timer window value, 32-bit
#define WDOG_CLK_SRC                  WDOG_OSC_CLOCK   		// Select clock source for WDOG module
#else
#define WDOG_TIMEOUT_VALUE            (0x0000FA00)        	// Watchdog timer overflow value, 32-bit
#define WDOG_WINDOW_VALUE             (0x00000000)        	// Watchdog timer window value, 32-bit
#define WDOG_CLK_SRC                  WDOG_LPO_CLOCK    	// Select clock source for WDOG module
#endif

#define KL15_IRQ_PORT                 PORT_E
#define KL15_IRQ_PIN                  GPIO_1
#define KL15_IRQ_PIN_MUX              PTE1_GPIO
#define KL15_IRQ_IRQN                 PORTE_IRQn

#define KL30_IRQ_PORT                 PORT_E
#define KL30_IRQ_PIN                  GPIO_2
#define KL30_IRQ_PIN_MUX              PTE2_GPIO
#define KL30_IRQ_IRQN                 PORTE_IRQn

#define GSM_IRQ_PORT                  PORT_B                    
#define GSM_IRQ_PIN                   GPIO_9
#define GSM_IRQ_PIN_MUX               PTB9_GPIO
#define GSM_IRQ_IRQN                  PORTB_IRQn

#define BTN_IRQ_PORT                  PORT_D                    
#define BTN_IRQ_PIN                   GPIO_3
#define BTN_IRQ_PIN_MUX               PTD3_GPIO
#define BTN_IRQ_IRQN                  PORTD_IRQn

#define SRS_IRQ_PORT                  PORT_D                       
#define SRS_IRQ_PIN                   GPIO_0
#define SRS_IRQ_PIN_MUX               PTD0_GPIO
#define SRS_IRQ_IRQN                  PORTD_IRQn

#define Gsensor_IRQ_PORT              PORT_B
#define Gsensor_IRQ_PIN               GPIO_11
#define Gsensor_IRQ_PIN_MUX           PTB11_GPIO
#define Gsensor_IRQ_IRQN              PORTB_IRQn

#define SYS_ON_PORT                   PORT_D
#define SYS_ON_PIN                    GPIO_10
#define SYS_ON_PIN_MUX                PTD10_GPIO

#define AMP_STB_PORT                  PORT_E
#define AMP_STB_PIN                   GPIO_14
#define AMP_STB_PIN_MUX               PTE14_GPIO

#define AMP_MUTE_PORT                 PORT_E
#define AMP_MUTE_PIN                  GPIO_0
#define AMP_MUTE_PIN_MUX              PTE0_GPIO

#define FAULTZ_DET_PORT               PORT_C
#define FAULTZ_DET_PIN                GPIO_10
#define FAULTZ_DET_PIN_MUX            PTC10_GPIO

#define ADC_KL30_PORT                 PORT_B
#define ADC_KL30_PIN                  GPIO_3
#define ADC_KL30_PIN_MUX              PTB3_ADC0_CH7

#define ADC_BATT_PORT                 PORT_C
#define ADC_BATT_PIN                  GPIO_17
#define ADC_BATT_PIN_MUX              PTC17_ADC0_CH15

#define ADC_NTC_PORT                  PORT_C
#define ADC_NTC_PIN                   GPIO_16
#define ADC_NTC_PIN_MUX               PTC16_ADC0_CH14

#define ADC_BTN_PORT                  PORT_D
#define ADC_BTN_PIN                   GPIO_3
#define ADC_BTN_PIN_MUX               PTD3_ADC1_CH3

#define ADC_MIC_PORT                  PORT_D
#define ADC_MIC_PIN                   GPIO_2
#define ADC_MIC_PIN_MUX               PTD2_ADC1_CH2

#define SYS_LED_PORT                  PORT_D
#define SYS_LED_PIN                   GPIO_11
#define SYS_LED_PIN_MUX               PTD11_GPIO

#define PERIPHERAL_TIMER_CLK          CLK_TIM1
#define PERIPHERAL_TIMER_SYS          SYSCTRL_TIM1
#define PERIPHERAL_TIMER_INDEX        TIM1_ID
#define PERIPHERAL_TIMER_IRQ          TIM1_Ch_IRQn

// 软件定时器相关定义
#define MAX_SOFTWARE_TIMERS           (5U)        // 最大软件定时器数量
#define TIMER_UNUSED                  (0U)        // 定时器未使用状态
#define TIMER_RUNNING                 (1U)        // 定时器运行状态
#define TIMER_STOPPED                 (2U)        // 定时器停止状态

#if (TIMER_KPI_ENABLE == 1U)
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
  uint16_t adValue;
  uint8_t adValid;  
}AdConvertBuffer_t;

typedef struct {
    uint8_t                 state;              // 定时器状态
    uint32_t                interval;           // 定时时间(ms)
    uint32_t                counter;            // 当前计数值
    SoftwareTimerCallback_t callback;           // 定时器回调函数
} SoftwareTimer_t;

#if (TIMER_KPI_ENABLE == 1)
typedef struct {
    uint32_t minCycles;     // 最小执行时间(CPU周期)
    uint32_t maxCycles;     // 最大执行时间(CPU周期)
    uint32_t totalCycles;   // 总执行时间(CPU周期)
    uint32_t sampleCount;   // 当前采样次数
    uint32_t avgCycles;     // 平均执行时间(CPU周期)
} TimerIrqKpi_t;
#endif
/****************************** Global Variables ******************************/
#if (TIMER_KPI_ENABLE == 1)
static TimerIrqKpi_t g_timer1IrqKpi;
#endif
static SoftwareTimer_t g_softwareTimers[MAX_SOFTWARE_TIMERS];
AdConvertBuffer_t g_adBuffer[15];
typeSetWakeupSourceCallbackPtr g_wakeupSourceFun;
static uint8_t g_adcCompletedFlag = 0;
static uint8_t g_ledSleepFlag = 0;
const ADC_Config_t ADC0_Config =
{
    .adcResolution = ADC_RESOLUTION_12BIT,        	// Select 12-bit ADC conversion precision, one ADC conversion takes about 16-20 ADC clocks
    .adcVrefSource = ADC_VREF_EXTERNAL,            	// Select internal VREF, Vref_H--5V, Vref_L--0V
    .adcTriggerMode = ADC_NORMAL_SW_TRIGGER,    	// Select software trigger for ADC conversion
    .adcConversionMode = ADC_CONVERSION_SINGLE,    	// Select single ADC conversion mode, 1 trigger completes one channel ADC conversion (8 times)
    .adcAvgsSelect = ADC_AVGS_16,                	// Select 16 hardware averages, each conversion result is the average of 8 conversions
    .adcSampleTime = 80,                        	// Select the number of clocks for one ADC sampling period, max 1023. Single sampling time must be greater than 700ns
    .adcStableTime = 20                            	// Select the number of clocks for one ADC signal stabilization, max 1023. Single stabilization time must be greater than 700ns
};

const ADC_Config_t ADC1_Config =
{
    .adcResolution = ADC_RESOLUTION_12BIT,        	// Select 12-bit ADC conversion precision, one ADC conversion takes about 16-20 ADC clocks
    .adcVrefSource = ADC_VREF_EXTERNAL,            	// Select internal VREF, Vref_H--5V, Vref_L--0V
    .adcTriggerMode = ADC_NORMAL_SW_TRIGGER,    	// Select software trigger for ADC conversion
    .adcConversionMode = ADC_CONVERSION_SINGLE,    	// Select single ADC conversion mode, 1 trigger completes one channel ADC conversion (8 times)
    .adcAvgsSelect = ADC_AVGS_16,                	// Select 16 hardware averages, each conversion result is the average of 8 conversions
    .adcSampleTime = 80,                        	// Select the number of clocks for one ADC sampling period, max 1023. Single sampling time must be greater than 700ns
    .adcStableTime = 20                            	// Select the number of clocks for one ADC signal stabilization, max 1023. Single stabilization time must be greater than 700ns
};

const ADC_ChannelConfig_t AdcKl30Config =
{
    .adcDifferentialMode = ADC_SINGLE_MODE,    		// Select single-ended signal mode
    .adcChannelP = ADC_P_CH12,                		// Signal P pole channel, CH7
    .adcChannelN = ADC_N_NONE                		// Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t AdcBattConfig =
{
    .adcDifferentialMode = ADC_SINGLE_MODE,    		// Select single-ended signal mode
    .adcChannelP = ADC_P_CH15,                		// Signal P pole channel, CH15
    .adcChannelN = ADC_N_NONE                		// Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t AdcNtcConfig =
{
    .adcDifferentialMode = ADC_SINGLE_MODE,    		// Select single-ended signal mode
    .adcChannelP = ADC_P_CH14,                		// Signal P pole channel, CH14
    .adcChannelN = ADC_N_NONE                		// Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t AdcBtnConfig =
{
    .adcDifferentialMode = ADC_SINGLE_MODE,    		// Select single-ended signal mode
    .adcChannelP = ADC_P_CH3,                		// Signal P pole channel, CH3
    .adcChannelN = ADC_N_NONE                		// Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t AdcMicConfig =
{
    .adcDifferentialMode = ADC_SINGLE_MODE,    		// Select single-ended signal mode
    .adcChannelP = ADC_P_CH2,                		// Signal P pole channel, CH2
    .adcChannelN = ADC_N_NONE                		// Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};
// ADC1
const ADC_ChannelConfig_t AdcModule4GConfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH4,               // Signal P pole channel, CH4
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t AdcCanPowerConfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH5,               // Signal P pole channel, CH5
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};
const ADC_ChannelConfig_t AdcGPSConfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH13,              // Signal P pole channel, CH13
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};
const ADC_ChannelConfig_t AdcGPS1Config =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH9,               // Signal P pole channel, CH9
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t AdcMicFaultConfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH2,               // Signal P pole channel, CH2
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};
// ADC0
const ADC_ChannelConfig_t Bcallconfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH9,               // Signal P pole channel, CH9
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t Ecallconfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH8,               // Signal P pole channel, CH8
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};

const ADC_ChannelConfig_t BcallLightconfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH14,              // Signal P pole channel, CH14
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};
const ADC_ChannelConfig_t EcallLightconfig =
    {
        .adcDifferentialMode = ADC_SINGLE_MODE, // Select single-ended signal mode
        .adcChannelP = ADC_P_CH13,              // Signal P pole channel, CH13
        .adcChannelN = ADC_N_NONE               // Signal N pole channel. No need to configure N pole channel in single-ended signal mode
};
const WDOG_Config_t WDOG_Config =
{
    .clkSource = WDOG_CLK_SRC,            			// Select clock source for WDOG module as internal 32KHz
	.wait = DISABLE,                      			// Disable operation in Wait mode
    .stop = DISABLE,                      			// Enable operation in Stop mode
    .debug = DISABLE,                     			// Disable operation in Debug mode
    .winEnable = DISABLE,                 			// Disable window watchdog mode
    .timeoutValue = WDOG_TIMEOUT_VALUE,   			// Watchdog timer overflow value
    .windowValue = WDOG_WINDOW_VALUE,     			// Watchdog timer window value
    .testMode = WDOG_TST_NORMAL           			// WDOG (watchdog) in normal operation mode
};

static uint8_t g_adcInitSatate = 0;

/****************************** Function Declarations *************************/
#if(0)
static void PeripheralHalAmpInit(void);
#endif
static void PeripheralHalSysOnInit(void);
#if(1)
static void PeripheralHalAdc0Init(void);
#endif
static void PeripheralHalAdc1Init(void);
static void Timer1Handler(void);
static void PeripheralHal1msTimerInit(void);
static void PeripheralStartSysLed(void);
static void PeripheralHalStopSysLed(void);
static void PeripheralHalRestartSysLed(void);
static void MCWDTInit(void);
static void IrqPinInit(void);
static void SoftwareTimerProcess(void);
static void PeripheralHalAdcHalSetMode(uint8_t mode);
static void PeripheralHalAdc0PinDeinit(void);
static void PeripheralHalAdc1PinDeinit(void);
static void Ex_Adc1Workaround2(void);
static void Ex_Adc1Workaround1(void);
static void Ex_Adc0Workaround2(void);
static void Ex_Adc0Workaround1(void);
/****************************** Public Function Implementations ***************/
/*************************************************
  Function:       PeripheralHalRegisterSetWakeupSourceCallback
  Description:    Register callback function for wakeup source notification
  Input:          pCallBackFun - Pointer to callback function
  Output:         none
  Return:         none
  Others:         Stores callback function for later use when wakeup events occur
*************************************************/
void PeripheralHalRegisterSetWakeupSourceCallback(typeSetWakeupSourceCallbackPtr pCallBackFun)
{
    g_wakeupSourceFun = pCallBackFun;
}

/*************************************************
  Function:       PORTA_IRQHandler
  Description:    Interrupt handler for PORT A peripheral
  Input:          none
  Output:         none
  Return:         none
  Others:         Handles CANFD2 RX interrupt and notifies wakeup source
*************************************************/
void PORTA_IRQHandler(void)
{
    uint32_t intStatus;
    intStatus = PORT_GetIntStatus(CANFD2_RX_PORT, CANFD2_RX_PIN);
    if (intStatus != 0ul)
    {
        PORT_ClearPinInt(CANFD2_RX_PORT, CANFD2_RX_PIN);
        if(g_wakeupSourceFun != NULL)
        {
			g_wakeupSourceFun(WAKEUP_SOURCE_CAN2);
        }
    }
}

/*************************************************
  Function:       PORTB_IRQHandler
  Description:    Interrupt handler for PORT B peripheral
  Input:          none
  Output:         none
  Return:         none
  Others:         Handles G-sensor interrupt and notifies wakeup source
*************************************************/
void PORTB_IRQHandler(void)
{
    uint32_t intStatus;
    intStatus = PORT_GetIntStatus(CANFD1_RX_PORT, CANFD1_RX_PIN);
    if (intStatus != 0ul)
    {
        PORT_ClearPinInt(CANFD1_RX_PORT, CANFD1_RX_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_CAN1);
        }
    }

    intStatus = PORT_GetIntStatus(GSM_IRQ_PORT, GSM_IRQ_PIN);
    if (intStatus != 0ul)
    {
        PowerManageSdkSetMpuWakeUpFlag(0x01);
        PORT_ClearPinInt(GSM_IRQ_PORT, GSM_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_MPU);
        }
    }
}

/*************************************************
  Function:       PORTC_IRQHandler
  Description:    Interrupt handler for PORT C peripheral
  Input:          none
  Output:         none
  Return:         none
  Others:         Currently empty implementation
*************************************************/
void PORTC_IRQHandler(void)
{

}

/*************************************************
  Function:       PORTD_IRQHandler
  Description:    Interrupt handler for PORT D peripheral
  Input:          none
  Output:         none
  Return:         none
  Others:         Handles button and SRS interrupts
                  Note: Wakeup source notifications are currently commented out
*************************************************/
void PORTD_IRQHandler(void)
{

}

/*************************************************
  Function:       PORTE_IRQHandler
  Description:    Interrupt handler for PORT E peripheral
  Input:          none
  Output:         none
  Return:         none
  Others:         Handles KL30, KL15, CANFD1 RX and GSM interrupts
                  Controls battery output based on KL30 state
                  Notifies wakeup sources accordingly
*************************************************/
void PORTE_IRQHandler(void)
{
    uint32_t intStatus;
    // 处理MPU SPI REQ引脚中断
    intStatus = PORT_GetIntStatus(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN);
    if (intStatus != 0ul)
    {
        PORT_ClearPinInt(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN);
#if (SPI_DMA_ENABLE == 1)
        MpuHal_SpiIrqCallback();
        if(g_wakeupSourceFun != NULL)
        {
            g_wakeupSourceFun(WAKEUP_SOURCE_MPU);
        }
#endif
    }

    intStatus = PORT_GetIntStatus(KL30_IRQ_PORT, KL30_IRQ_PIN);
    if (intStatus != 0ul)
    {
        PORT_ClearPinInt(KL30_IRQ_PORT, KL30_IRQ_PIN);
        // if(GPIO_ReadPinLevel(KL30_IRQ_PORT,KL30_IRQ_PIN) == 0)
        // {
		// 	BatteryHalDisableOut();
        // }
        // else
        // {
		// 	BatteryHalEnableOut();  
        //   	// PeripheralHalMpuPowerOn(0);
        // }
        if(g_wakeupSourceFun != NULL)
        {
			g_wakeupSourceFun(WAKEUP_SOURCE_KL30);
        }
    }

    intStatus = PORT_GetIntStatus(KL15_IRQ_PORT, KL15_IRQ_PIN);
    if (intStatus != 0ul)
    {
        PORT_ClearPinInt(KL15_IRQ_PORT, KL15_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_KL15);
        }
    }

}

/*************************************************
  Function:       PeripheralHalGetKl15Status
  Description:    Read the status of KL15 ignition signal
  Input:          none
  Output:         none
  Return:         1 if KL15 is active , 0 if inactive
  Others:         Returns 1 in EVB board test mode regardless of actual pin state
*************************************************/
int16_t PeripheralHalGetKl15Status (void)
{
	uint8_t kl15Status = 0;
    if((GPIO_ReadPinLevel(KL15_IRQ_PORT, KL15_IRQ_PIN)) == GPIO_HIGH)
    {
        kl15Status = 1;
    }
    else
    {
        kl15Status = 0;
    }
    return kl15Status;
}

/*************************************************
  Function:       PeripheralHalGetKl30Status
  Description:    Read the status of KL30 power supply signal
  Input:          none
  Output:         none
  Return:         1 if KL30 is active (low), 0 if inactive (high)
  Others:         Returns 1 in EVB board test mode regardless of actual pin state
                  Note: KL30 uses active low logic
*************************************************/
int16_t PeripheralHalGetKl30Status (void)
{
	uint8_t kl30Status = 0;
    if((GPIO_ReadPinLevel(KL30_IRQ_PORT, KL30_IRQ_PIN)) == GPIO_HIGH)
    {
        kl30Status = 0;
    }
    else
    {
        kl30Status = 1;
    }
    return kl30Status;
}

/*************************************************
  Function:       PeripheralHalSetSysOn
  Description:    Set the state of SYS_ON pin
  Input:          flag - 1 to set SYS_ON high, 0 to set SYS_ON low
  Output:         none
  Return:         none
  Others:         Controls system power enable signal
*************************************************/
void PeripheralHalSetSysOn (uint8_t flag)
{
    if(flag)
    {
        // PeripheralHalSysOnInit();
        GPIO_SetPinOutput(SYS_ON_PORT,SYS_ON_PIN);
    }
    else
    {
        //close SYS_ON
        GPIO_ClearPinOutput(SYS_ON_PORT,SYS_ON_PIN);
    }
}

/*************************************************
  Function:       ADC0_FWM_ISR
  Description:    ADC0 FIFO Watermark interrupt service routine
  Input:          none
  Output:         none
  Return:         none
  Others:         Reads conversion results from ADC0 FIFO
                  Stores results in global buffer
                  Configures next ADC channel based on current channel
                  Marks KL30 conversion as complete
                  Clears FIFO after reading
*************************************************/
void ADC0_FWM_ISR(void)
{
    volatile uint32_t adc0Data;
    uint8_t adc0Channl;

    adc0Data = ADC_GetConversionResult(ADC0_ID); // Read data from FIFO and put it into ADC_Result
    ADC_IntClear(ADC0_ID, ADC_FWM_INT);          // Clear ADC FWM interrupt flag. Read data first, then clear interrupt flag
    adc0Channl = adc0Data >> 12;
    switch (adc0Channl)
    {
    case ADC_P_CH8:
        g_adBuffer[AD_CHANNEL_ECALL].adValue = adc0Data & 0x0FFF;
        ADC_ChannelConfig(ADC0_ID, &Bcallconfig);
        break;
    case ADC_P_CH9:
        g_adBuffer[AD_CHANNEL_BCALL].adValue = adc0Data & 0x0FFF;
        ADC_ChannelConfig(ADC0_ID, &EcallLightconfig);
        break;
    case ADC_P_CH13:
        g_adBuffer[AD_CHANNEL_ECALL_LIGHT].adValue = adc0Data & 0x0FFF;
        ADC_ChannelConfig(ADC0_ID, &BcallLightconfig);
        break;
    case ADC_P_CH14:
        g_adBuffer[AD_CHANNEL_BCALL_LIGHT].adValue = adc0Data & 0x0FFF;
        ADC_ChannelConfig(ADC0_ID, &AdcKl30Config);
        break;
    default:
        break;
    }
    (void)ADC_GetConversionResult(ADC0_ID);
    __DSB();
    __ISB();
}

/*************************************************
  Function:       ADC1_FWM_ISR
  Description:    ADC1 FIFO Watermark interrupt service routine
  Input:          none
  Output:         none
  Return:         none
  Others:         Reads conversion results from ADC1 FIFO
                  Stores KL30 channel results in global buffer
                  Clears FIFO after reading
                  Includes memory barriers for proper execution order
*************************************************/
void ADC1_FWM_ISR(void)
{
    volatile uint32_t adc1Data;
    uint8_t adc1Channl;

    adc1Data = ADC_GetConversionResult(ADC1_ID); // Read data from FIFO and put it into ADC_Result
    ADC_IntClear(ADC1_ID, ADC_FWM_INT);          // Clear ADC FWM interrupt flag. Read data first, then clear interrupt flag
    adc1Channl = adc1Data >> 12;
    switch (adc1Channl)
    {
    case ADC_P_CH12:
        g_adBuffer[AD_CHANNEL_KL30].adValue = adc1Data & 0x0FFF;
        g_adcCompletedFlag = 1;
        ADC_ChannelConfig(ADC1_ID, &AdcModule4GConfig); // Configure next ADC sampling mode and next selected channel number
        break;
    case ADC_P_CH4:
        g_adBuffer[AD_CHANNEL_4G].adValue = adc1Data & 0x0FFF;
        ADC_ChannelConfig(ADC1_ID, &AdcCanPowerConfig);
        break;
    case ADC_P_CH5:
        g_adBuffer[AD_CHANNEL_CAN_POWER].adValue = adc1Data & 0x0FFF;
        ADC_ChannelConfig(ADC1_ID, &AdcGPSConfig);
        break;
    case ADC_P_CH13:
        g_adBuffer[AD_CHANNEL_GPS].adValue = adc1Data & 0x0FFF;
        ADC_ChannelConfig(ADC1_ID, &AdcGPS1Config);
        break;
    case ADC_P_CH9:
        g_adBuffer[AD_CHANNEL_GPS1].adValue = adc1Data & 0x0FFF;
        ADC_ChannelConfig(ADC1_ID, &AdcMicFaultConfig);
        break;
    case ADC_P_CH2:
        g_adBuffer[AD_CHANNEL_MIC].adValue = adc1Data & 0x0FFF;
        ADC_ChannelConfig(ADC1_ID, &AdcKl30Config);
    default:
        break;
    }
    (void)ADC_GetConversionResult(ADC1_ID);    				//读取FIFO中的数据，清空 RX_FIFO
    __DSB();                                           
    __ISB(); 
}

/*************************************************
  Function:       PeripheralHalAdcStart
  Description:    Start ADC conversion for specified ADC module
  Input:          sarNo - ADC module number (0, 1, 2)
  Output:         none
  Return:         none
  Others:         Triggers ADC conversion and marks corresponding channel as valid
*************************************************/
void PeripheralHalAdcStart(uint8_t sarNo)
{
    if (g_adcInitSatate != 0x3)
    {
        return;
    }
    switch(sarNo)
    {
    case 0:
        g_adBuffer[AD_CHANNEL_BCALL].adValid = 1;
        g_adBuffer[AD_CHANNEL_ECALL].adValid = 1;
        g_adBuffer[AD_CHANNEL_BCALL_LIGHT].adValid = 1;
        g_adBuffer[AD_CHANNEL_ECALL_LIGHT].adValid = 1;
        ADC_SoftwareTrigger(ADC0_ID); // Software generates a trigger signal for ADC
        break;
    case 1:
        g_adBuffer[AD_CHANNEL_KL30].adValid = 1;
        g_adBuffer[AD_CHANNEL_CAN_POWER].adValid = 1;
        g_adBuffer[AD_CHANNEL_4G].adValid = 1;
        g_adBuffer[AD_CHANNEL_GPS].adValid = 1;
        g_adBuffer[AD_CHANNEL_GPS1].adValid = 1;

        ADC_SoftwareTrigger(ADC1_ID); // Software generates a trigger signal for ADC
        break;
    case 2:
        break;
    default:
        break;
    }
}

/*************************************************
  Function:       PeripheralHalAdGet
  Description:    Get ADC converted value from specified channel
  Input:          adChannel - ADC channel number (0-13)
                  pValue - Pointer to store converted voltage value
  Output:         Voltage value stored in pValue (unit: mV)
  Return:         0 - Success
                  -1 - Invalid channel number or other error
                  -2 - ADC conversion not valid
  Others:         Handles multiple ADC channels including KL30, battery, NTC, MICP and SOS key
                  Implements channel-specific voltage conversion calculations
                  Uses critical section to protect shared data access
                  Provides test mode with fixed return values
*************************************************/
int16_t PeripheralHalAdGet(uint8_t adChannel, uint32_t *pValue)
{
    uint32_t temData = 0;
    uint16_t adValue = 0;
    uint8_t adValid = 0;
    int16_t result = -2; // Default return value
    
    if(adChannel >= (sizeof(g_adBuffer)/sizeof(g_adBuffer[0])))
    {
        result = -1;
    }
    else
    {
        COMMON_DISABLE_INTERRUPTS();
        adValid = g_adBuffer[adChannel].adValid;
        adValue = g_adBuffer[adChannel].adValue;
        COMMON_ENABLE_INTERRUPTS();     
        if(adValid != 0)
        {
            // Common calculation for all valid channels
            temData = adValue * AD_REF_VOLTAGE;
            temData = temData / 4096;
            
            // Apply channel-specific factor
            if(AD_CHANNEL_KL30 == adChannel)
            {
                temData = temData * AD_CHANNEL_KL30_FACTOR;
                *pValue = temData;
                result = 0;
            }
            //            else if (AD_CHANNEL_BATTERY == adChannel)
            //            {
            //                temData = temData * AD_CHANNEL_BATTERY_FACTOR;
            //                *pValue = temData;
            //                result = 0;
            //            }
            //            else if (AD_CHANNEL_NTC == adChannel)
            //            {
            //                temData = temData * AD_CHANNEL_NTC_FACTOR;
            //                *pValue = temData;
            //                result = 0;
            //            }
            //            else if (AD_CHANNEL_MICP == adChannel)
            //            {
            //                temData = temData * AD_CHANNEL_MICP_FACTOR;
            //                *pValue = temData;
            //                result = 0;
            //            }
            //            else if (AD_CHANNEL_SOS_KEY == adChannel)
            //            {
            //                temData = temData * AD_CHANNEL_SOS_FACTOR;
            //                *pValue = temData;
            //                result = 0;
            //            }

            else if (AD_CHANNEL_4G == adChannel)
            {
                temData = temData * AD_CHANNEL_4G_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_CAN_POWER == adChannel)
            {
                temData = temData * AD_CHANNEL_CAN_POWER_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_GPS == adChannel)
            {
                temData = temData * AD_CHANNEL_GPS_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_GPS1 == adChannel)
            {
                temData = temData * AD_CHANNEL_GPS1_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_MIC == adChannel)
            {
                temData = temData * AD_CHANNEL_MIC_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_BCALL == adChannel)
            {
                temData = temData * AD_CHANNEL_BCALL_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_ECALL == adChannel)
            {
                temData = temData * AD_CHANNEL_ECALL_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_BCALL_LIGHT == adChannel)
            {
                temData = temData * AD_CHANNEL_BCALL_LIGHT_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_ECALL_LIGHT == adChannel)
            {
                temData = temData * AD_CHANNEL_ECALL_LIGHT_FACTOR;
                *pValue = temData;
                result = 0;
            }
            else if (AD_CHANNEL_BCALL == adChannel || AD_CHANNEL_ECALL == adChannel ||
                     AD_CHANNEL_BCALL_LIGHT == adChannel || AD_CHANNEL_ECALL_LIGHT == adChannel)
            {
                *pValue = temData;
                result = 0;
            }
            else 
            {
                result = -1;
            }
        }
        else 
        {
            result = -1;
        }
    }
    return result;
}

/*************************************************
  Function:       PeripheralHal1msTimerProcess
  Description:    1ms timer callback function for system operations
  Input:          none
  Output:         none
  Return:         none
  Others:         Toggles system LED every second when not in sleep mode
                  Uses static counters to track time intervals
                  Controlled by g_ledSleepFlag
*************************************************/
void PeripheralHal1msTimerProcess(void)
{
	static uint32_t sysCnt = 0;
	static uint8_t  flag = 0;
	sysCnt += 1;
	if (sysCnt < 1000)
			return;
	sysCnt = 0;
	if(!g_ledSleepFlag)
	{
		if (0 == flag)
		{
			GPIO_ClearPinOutput(SYS_LED_PORT,SYS_LED_PIN);
			flag = 1;
		}
		else
		{
			GPIO_SetPinOutput(SYS_LED_PORT,SYS_LED_PIN);
			flag = 0;
		}          
	}   
}

/*****************************************************************************
 * Function:TIM1_Init
 * Description:Configure TIM1 module for timer interrupt function.
 * Input:
 * Output:
 * Others:1,
 *         2, Clock source selection description:
 *            TIM_CLK_SOURCE_SYSTEM--System clock source
 *            TIM_CLK_SOURCE_FUNCTION--Clock source selected by function "CLK_ModuleSrc"/PARCC;
 *            TIM_CLK_SOURCE_EXTERNAL--According to the content of function "TIM_ExternalCounterSelect", it is the external clock source input through pins;
 *        3, TIM module contains a 16-bit counter register, each output channel has a 16-bit comparison register. Up to 8 output channels,
 *            up to 2 fault signal input channels, up to 8 signal input channels.
****************************************************************************/
void TIM1_Init(void)
{
    SYSCTRL_DisableModule(PERIPHERAL_TIMER_SYS); 
    CLK_ModuleSrc(PERIPHERAL_TIMER_CLK, CLK_SRC_PLL);        						//Select HSOSC as clock source for TIM module
    CLK_SetClkDivider(PERIPHERAL_TIMER_CLK, CLK_DIV_12);        					//Set TIM clock prescaler, cannot be higher than 1/4 of core clock
    SYSCTRL_ResetModule(PERIPHERAL_TIMER_SYS);            							//Reset TIM module in system control module
    SYSCTRL_EnableModule(PERIPHERAL_TIMER_SYS);            							//Enable TIM module in system control module

    TIM_CountingModeConfig(PERIPHERAL_TIMER_INDEX, TIM_COUNTING_UP);    			//Counter counting up mode
    TIM_InitCounter(PERIPHERAL_TIMER_INDEX, 0x0000, 10000);    						//Set counter initial value and modulus

    TIM_IntMask(PERIPHERAL_TIMER_INDEX, TIM_INT_ALL, MASK);    						//Disable all interrupts of the module
    TIM_IntClear(PERIPHERAL_TIMER_INDEX, TIM_INT_ALL);            					//Clear all interrupt flags of the module

	TIM_InstallCallBackFunc(PERIPHERAL_TIMER_INDEX, TIM_INT_TO, Timer1Handler);    	//Load TIM_INT_TO interrupt function
    TIM_IntMask(PERIPHERAL_TIMER_INDEX, TIM_INT_TO, UNMASK);                    	//Enable TIM_INT_TO interrupt

    INT_SetPriority(TIM1_Overflow_IRQn, 0x7);										//Set TIM_Oveflow_IRQn interrupt priority. (High)0--15(Low)
    INT_EnableIRQ(TIM1_Overflow_IRQn);        										//Enable TIM_Oveflow_IRQn interrupt

    TIM_StartCounter(PERIPHERAL_TIMER_INDEX, TIM_CLK_SOURCE_FUNCTION, TIM_CLK_DIVIDE_1);
}

/*************************************************
  Function:       TIM1_UpdataDutyData
  Description:    Update TIM1 module channel compare register value
  Input:          channelId - Timer channel ID
                  ccvdata - Value to be written to channel compare register
  Output:         none
  Return:         none
  Others:         Updates duty cycle for specified timer channel
                  Enables reload synchronization command
                  Software trigger is currently commented out
*************************************************/
void TIM1_UpdataDutyData(TIM_ChannelId_t channelId, uint16_t ccvdata)
{
    TIM_SetCCVal(PERIPHERAL_TIMER_INDEX, channelId, ccvdata);    					//Write data into channel compare register CCV
    TIM_ReloadSyncCmd(PERIPHERAL_TIMER_INDEX, ENABLE);    							//Enable command to reload data
}

/*************************************************
  Function:       TIM1_FAULT_ISR
  Description:    TIM1 fault interrupt service routine
  Input:          none
  Output:         none
  Return:         none
  Others:         Reinitializes TIM1 module upon fault detection
*************************************************/
void TIM1_FAULT_ISR(void)
{
    TIM1_Init();
}

/*************************************************
  Function:       PeripheralHalSetMode
  Description:    Set peripheral operating mode (normal or low power)
  Input:          mode - Operating mode (non-zero for normal mode, zero for low power mode)
  Output:         none
  Return:         none
  Others:         In normal mode: enables system power, restarts system LED, enables audio amp, initializes timer
                  In low power mode: disables system power, stops system LED, disables audio amp, disables timer and clears interrupts
*************************************************/
void PeripheralHalSetMode(uint8_t mode)
{
	if(mode)
	{
		PeripheralHalSetSysOn(1);
		PeripheralHalRestartSysLed();
		GPIO_SetPinOutput(AMP_STB_PORT,AMP_STB_PIN);
		GPIO_SetPinOutput(AMP_MUTE_PORT,AMP_MUTE_PIN);
		TIM1_Init();
        PeripheralHalAdcHalSetMode(1);
	}
	else
	{
		PeripheralHalSetSysOn(0);
		PeripheralHalStopSysLed();
		GPIO_ClearPinOutput(AMP_STB_PORT,AMP_STB_PIN);
		GPIO_ClearPinOutput(AMP_MUTE_PORT,AMP_MUTE_PIN);
		TIM_IntClear(PERIPHERAL_TIMER_INDEX, TIM_INT_ALL);            		//清除模块所有的中断标志位
		SYSCTRL_DisableModule(PERIPHERAL_TIMER_SYS);            			//在系统控制模块中，使能TIM模块
        PeripheralHalAdcHalSetMode(0);
	}
}

/*************************************************
  Function:       PeripheralHalMcuHardReset
  Description:    Perform MCU hardware reset
  Input:          none
  Output:         none
  Return:         none
  Others:         Triggers system reset through NVIC
                  Execution does not return from this function
*************************************************/
void PeripheralHalMcuHardReset(void)
{
	COMMON_SystemReset();
}

/*************************************************
  Function:       PeripheralHalFeedWatchDog
  Description:    Feed system watchdog to prevent reset
  Input:          none
  Output:         none
  Return:         none
  Others:         Calls WDOG_Refresh() to reset watchdog counter
*************************************************/
void PeripheralHalFeedWatchDog(void)
{
	WDOG_Refresh();    
}

/*************************************************
  Function:       PeripheralHalInit
  Description:    Initialize all system peripherals
  Input:          none
  Output:         none
  Return:         none
  Others:         Calls initialization functions for:
                  - Interrupt pins (KL15, KL30, GSM)
                  - Audio amplifier
                  - System power control
                  - ADC1 module
                  - System LED and 1ms timer
                  - Watchdog module
                  Contains commented-out ADC channel initialization functions
*************************************************/
void PeripheralHalInit(void)
{
    IrqPinInit();
    //PeripheralHalAmpInit();
    PeripheralHalSysOnInit();
    PeripheralHalAdc0Init();
    PeripheralHalAdc1Init();
    PeripheralStartSysLed();
    MCWDTInit();
}

/*************************************************
  Function:       PeripheralHalSetTestMode
  Description:    Set device test mode
  Input:          testMode - Test mode configuration
  Output:         none
  Return:         none
  Others:         Currently an empty implementation
*************************************************/
void PeripheralHalSetTestMode(uint8_t testMode)
{

}

/*************************************************
  Function:       RtcWakeupInit
  Description:    RTC wake initialization
  Input:          time : RTC wake up time ,unit second
  Output:         none
  Return:         none
  Others:         none
*************************************************/
void RtcWakeupInit(uint32_t time)
{

}

/*************************************************
  Function:       RtcWakeUpProcess
  Description:    After waking up, handle according to the voltage value
  Input:          maxVoltage : Maximum wake-up voltage
                  minVoltage : Minimum wake-up voltage
  Output:         none
  Return:         1 : wake up
                  2 : keep sleep
  Others:         none
*************************************************/
int16_t RtcWakeUpProcess(uint32_t maxVoltage, uint32_t minVoltage)
{
	uint32_t adValue;
	uint32_t timeCount = 100000;
	int16_t result = 0; 
	g_adcCompletedFlag = 0;
	TimerHalSetMode(1);
	while(g_adcCompletedFlag == 0)
	{
		timeCount --;
		if(timeCount == 0)
		{
			break;
		}
	}
	if(g_adcCompletedFlag == 0)
	{
		TimerHalSetMode(0);
		result = 0;
	}
	else
	{
		TBOX_PRINT("KL30 voltage conversion complete!\r\n");
		PeripheralHalAdGet(AD_CHANNEL_KL30, &adValue);
		TBOX_PRINT("KL30 voltage is : %d \r\n", adValue);
		if(adValue > maxVoltage || adValue < minVoltage)
		{
			result = 1;
		}
		else
		{
			TimerHalSetMode(0);
			result = 0;
		}
	}
	return result;
}

/*************************************************
  Function:       PeripheralHalTestMain
  Description:    Peripheral hardware test main function
  Input:          none
  Output:         none
  Return:         none
  Others:         Contains watchdog feeding and test code for peripherals
                  Implements execution frequency control with static counter
                  Includes commented-out ADC test code for various channels
                  Includes KL15 and KL30 status monitoring
*************************************************/
void PeripheralHalTestMain(void)
{
    static uint8_t count = 0;
    PeripheralHalFeedWatchDog();    
    if(count++ < 10)
    {
        return;
    }
    count = 0;
}
/****************************** Private Function Implementations ***************/
/*************************************************
 Function:        PeripheralHalAmpInit
 Description:     Initialize the audio amplifier control pins
 Input:           None
 Output:          None
 Return:          None
 Others:          Configures AMP_STB, AMP_MUTE and FAULTZ_DET pins
 *************************************************/
#if(0)
static void PeripheralHalAmpInit()
{
	PORT_PinmuxConfig(AMP_STB_PORT, AMP_STB_PIN, AMP_STB_PIN_MUX);
	GPIO_SetPinDir(AMP_STB_PORT, AMP_STB_PIN, GPIO_OUTPUT);
	GPIO_ClearPinOutput(AMP_STB_PORT, AMP_STB_PIN);

	PORT_PinmuxConfig(AMP_MUTE_PORT, AMP_MUTE_PIN, AMP_MUTE_PIN_MUX);
	GPIO_SetPinDir(AMP_MUTE_PORT, AMP_MUTE_PIN, GPIO_OUTPUT);
	GPIO_ClearPinOutput(AMP_MUTE_PORT, AMP_MUTE_PIN);

	PORT_PinmuxConfig(FAULTZ_DET_PORT, FAULTZ_DET_PIN, FAULTZ_DET_PIN_MUX);
	GPIO_SetPinDir(FAULTZ_DET_PORT, FAULTZ_DET_PIN, GPIO_INPUT);
	GPIO_ClearPinOutput(FAULTZ_DET_PORT, FAULTZ_DET_PIN);
}
#endif
/*************************************************
  Function:       PeripheralHalSysOnInit
  Description:    Initialize SYS_ON pin configuration
  Input:          none
  Output:         none
  Return:         none
  Others:         Configures SYS_ON pin as output and sets it high
*************************************************/
static void PeripheralHalSysOnInit (void)
{
	PORT_PinmuxConfig(SYS_ON_PORT, SYS_ON_PIN, SYS_ON_PIN_MUX);
	GPIO_SetPinDir(SYS_ON_PORT, SYS_ON_PIN, GPIO_OUTPUT);
	GPIO_SetPinOutput(SYS_ON_PORT, SYS_ON_PIN);
}

/*************************************************
  Function:       PeripheralHalAdc0PinConfig
  Description:    Configure all ADC0 related pins
  Input:          none
  Output:         none
  Return:         none
  Others:         none
*************************************************/
static void PeripheralHalAdc0PinConfig(void)
{
    // B_call 按键粘合故障
    PORT_PinmuxConfig(PORT_C, GPIO_1, PTC1_ADC0_CH9);
    // E_call 按键粘合故障
    PORT_PinmuxConfig(PORT_C, GPIO_0, PTC0_ADC0_CH8);
    // E_call 指示灯短路到地
    PORT_PinmuxConfig(PORT_C, GPIO_15, PTC15_ADC0_CH13);
    // B_call 指示灯短路到地
    PORT_PinmuxConfig(PORT_C, GPIO_14, PTC14_ADC0_CH12);
}

/*************************************************
  Function:       PeripheralHalAdc0PinDeinit
  Description:    Deinitialize SYS_ON pin configuration
  Input:          none
  Output:         none
  Return:         none
  Others:         none
*************************************************/
static void PeripheralHalAdc0PinDeinit(void)
{
    // B_call 按键粘合故障
    PORT_PinmuxConfig(PORT_C, GPIO_1, PTC1_GPIO);
    // E_call 按键粘合故障
    PORT_PinmuxConfig(PORT_C, GPIO_0, PTC0_GPIO);
    // E_call 指示灯短路到地
    PORT_PinmuxConfig(PORT_C, GPIO_15, PTC15_GPIO);
    // B_call 指示灯短路到地
    PORT_PinmuxConfig(PORT_C, GPIO_14, PTC14_GPIO);
}

/*************************************************
  Function:       PeripheralHalAdc1PinConfig
  Description:    Configure all ADC1 related pins
  Input:          none
  Output:         none
*************************************************/
static void PeripheralHalAdc1PinConfig(void)
{
    // KL30 电压通道
    PORT_PinmuxConfig(PORT_A, GPIO_15, PTA15_ADC1_CH12);

    // 4G 电源通道
    PORT_PinmuxConfig(PORT_C, GPIO_6, PTC6_ADC1_CH4);

    // CAN 电源通道
    PORT_PinmuxConfig(PORT_C, GPIO_7, PTC7_ADC1_CH5);

    // GPS 电源通道
    PORT_PinmuxConfig(PORT_A, GPIO_16, PTA16_ADC1_CH13);

    // 麦克风信号故障通道
    PORT_PinmuxConfig(PORT_D, GPIO_2, PTD2_ADC1_CH2);
}

/*************************************************
  Function:       PeripheralHalAdc1PinDeinit
  Description:    Deinitialize all ADC1 related pins
  Input:          none
  Output:         none
*************************************************/
static void PeripheralHalAdc1PinDeinit(void)
{
    // KL30 电压通道
    PORT_PinmuxConfig(PORT_A, GPIO_15, PTA15_GPIO);

    // 4G 电源通道
    PORT_PinmuxConfig(PORT_C, GPIO_6, PTC6_GPIO);

    // CAN 电源通道
    PORT_PinmuxConfig(PORT_C, GPIO_7, PTC7_GPIO);

    // GPS 电源通道
    PORT_PinmuxConfig(PORT_A, GPIO_16, PTA16_GPIO);

    // 麦克风信号故障通道
    PORT_PinmuxConfig(PORT_D, GPIO_2, PTD2_GPIO);
}

/*************************************************
  Function:       PeripheralHalAdc0Init
  Description:    Initialize ADC0 module for multiple analog inputs (KL30, battery, NTC)
  Input:          none
  Output:         none
  Return:         none
  Others:         Configures ADC0 hardware with FIFO and interrupt settings
*************************************************/
static void PeripheralHalAdc0Init(void)
{
    PeripheralHalAdc0PinConfig();
    Ex_Adc0Workaround1();
    SYSCTRL_DisableModule(SYSCTRL_ADC0);
    CLK_ModuleSrc(CLK_ADC0, CLK_SRC_FIRC64M);    						//Select internal 64M as clock source for ADC module
    CLK_SetClkDivider(CLK_ADC0, CLK_DIV_16);    					//Set ADC clock prescaler. Module clock cannot be higher than CPU bus clock
    SYSCTRL_ResetModule(SYSCTRL_ADC0);            					//Reset ADC module in system control module
    SYSCTRL_EnableModule(SYSCTRL_ADC0);            					//Enable ADC module in system control module
    
    ADC_SoftwareReset(ADC0_ID);
	Ex_Adc0Workaround2(); 
    ADC_Init(ADC0_ID, &ADC0_Config);            					//Initialize ADC module

    ADC_ChannelConfig(ADC0_ID, &Bcallconfig); // Configure current ADC sampling mode and selected channel number

    ADC_FifoDepthRedefine(ADC0_ID, 16);        						//Redefine FIFO depth to 16, range: 1-16
    ADC_FifoWatermarkConfig(ADC0_ID, ADC0_FIFO_WATERMARK);			//Set FIFO Watermark value

    //Initialize ADC interrupt
    ADC_IntMask(ADC0_ID, ADC_INT_ALL, MASK);    					//Disable all ADC interrupts
    ADC_IntClear(ADC0_ID, ADC_INT_ALL);            					//Clear all ADC interrupt flags

    ADC_InstallCallBackFunc(ADC0_ID, ADC_FWM_INT, ADC0_FWM_ISR);    //Load FWM interrupt function
    ADC_IntMask(ADC0_ID, ADC_FWM_INT, UNMASK);    					//Enable ADC FWM interrupt

    INT_SetPriority(ADC0_IRQn, 0x3);    							//Set ADC0_IRQ interrupt priority. (High)0--15(Low)
    INT_EnableIRQ(ADC0_IRQn);            							//Enable ADC0 IRQ interrupt

    ADC_Enable(ADC0_ID);    										//Enable ADC module internally, ADC module starts working
    g_adcInitSatate |= 0x1;
}

/*************************************************
  Function:       PeripheralHalAdc1Init
  Description:    Initialize ADC1 module for KL30 voltage measurement
  Input:          none
  Output:         none
  Return:         none
  Others:         Configures ADC1 hardware with FIFO and interrupt settings
*************************************************/
static void PeripheralHalAdc1Init(void)
{
    PeripheralHalAdc1PinConfig();
    Ex_Adc1Workaround1();
    SYSCTRL_DisableModule(SYSCTRL_ADC1);
    CLK_ModuleSrc(CLK_ADC1, CLK_SRC_FIRC64M);    						//Select internal 64M as clock source for ADC module
    CLK_SetClkDivider(CLK_ADC1, CLK_DIV_16);    					//Set ADC clock prescaler. Module clock cannot be higher than CPU bus clock
    SYSCTRL_ResetModule(SYSCTRL_ADC1);            					//Reset ADC module in system control module
    SYSCTRL_EnableModule(SYSCTRL_ADC1);            					//Enable ADC module in system control module

    ADC_SoftwareReset(ADC1_ID); 
    Ex_Adc1Workaround2();
    ADC_Init(ADC1_ID, &ADC1_Config);            					//Initialize ADC module

    ADC_ChannelConfig(ADC1_ID, &AdcKl30Config);						//Configure current ADC sampling mode and selected channel number

    ADC_FifoDepthRedefine(ADC1_ID, 16);        						//Redefine FIFO depth to 16, range: 1-16
    ADC_FifoWatermarkConfig(ADC1_ID, ADC1_FIFO_WATERMARK);			//Set FIFO Watermark value

    ADC_IntMask(ADC1_ID, ADC_INT_ALL, MASK);    					//Disable all ADC interrupts
    ADC_IntClear(ADC1_ID, ADC_INT_ALL);            					//Clear all ADC interrupt flags

    ADC_InstallCallBackFunc(ADC1_ID, ADC_FWM_INT, ADC1_FWM_ISR);    //Load FWM interrupt function
    ADC_IntMask(ADC1_ID, ADC_FWM_INT, UNMASK);    					//Enable ADC FWM interrupt

    INT_SetPriority(ADC1_IRQn, 0x3);    							//Set ADC1_IRQ interrupt priority. (High)0--15(Low)
    INT_EnableIRQ(ADC1_IRQn);            							//Enable ADC1 IRQ interrupt

    ADC_Enable(ADC1_ID);    										//Enable ADC module internally, ADC module starts working
    g_adcInitSatate |= 0x2;

}

/*************************************************
  Function:       PeripheralHalAdcHalSetMode
  Description:    Initialize or disable ADC0 and ADC1 modules
  Input:          none
  Output:         none
  Return:         none
  Others:         Enables ADC0 and ADC1 modules if mode is non-zero, otherwise disables and resets them
*************************************************/
static void PeripheralHalAdcHalSetMode(uint8_t mode)
{
    if(mode!=0)
    {
        PeripheralHalAdc0Init();
        PeripheralHalAdc1Init();
    }
    else
    {
        ADC_Disable(ADC0_ID);
        ADC_IntMask(ADC0_ID, ADC_INT_ALL, MASK);
        ADC_IntClear(ADC0_ID, ADC_INT_ALL);
        INT_ClearPendingIRQ(ADC0_IRQn);
        INT_EnableIRQ(ADC0_IRQn);
        PeripheralHalAdc0PinDeinit();
        SYSCTRL_DisableModule(SYSCTRL_ADC0);
        
        ADC_Disable(ADC1_ID);
        ADC_IntMask(ADC1_ID, ADC_INT_ALL, MASK);
        ADC_IntClear(ADC1_ID, ADC_INT_ALL);
        INT_ClearPendingIRQ(ADC1_IRQn);
        INT_EnableIRQ(ADC1_IRQn);    
        PeripheralHalAdc1PinDeinit();
        SYSCTRL_DisableModule(SYSCTRL_ADC1);
        g_adcInitSatate = 0;
    }        
}

/*****************************************************************************
 * Function:Timer1Handler
 * Description:TIM1 timer interrupt handler function, performs 1ms timing related processing
 * Input:
 * Output:
 * Others:1, Timer 1 interrupt handler function
 *     2, Calls PeripheralHal1msTimerProcess function to handle timing related tasks
****************************************************************************/
static void Timer1Handler(void)
{
#if (TIMER_KPI_ENABLE == 1)
    *CoreDebug |= CoreDebug_DEMCR_TRCENA;
    Z20_DWT->CYCCNT = 0UL;
    Z20_DWT->CTRL |= (1UL << 0);
    TickType_t startTime, endTime, cycles;
    startTime = Z20_DWT->CYCCNT;
#endif
    PeripheralHal1msTimerProcess();
    MpuHalSpiTimerCallBack();
    SoftwareTimerProcess();
#if (TIMER_KPI_ENABLE == 1)
    endTime = Z20_DWT->CYCCNT;
    cycles = (endTime - startTime) * HZ_TO_NS / CPU_FREQ_HZ;
    if (g_timer1IrqKpi.sampleCount < TIMER_KPI_SAMPLE_COUNT) {
        if (g_timer1IrqKpi.sampleCount == 0) {
            g_timer1IrqKpi.maxCycles = cycles;
            g_timer1IrqKpi.minCycles = cycles;
        } else {
            if (cycles > g_timer1IrqKpi.maxCycles) {
                g_timer1IrqKpi.maxCycles = cycles;
            }
            if (cycles < g_timer1IrqKpi.minCycles) {
                g_timer1IrqKpi.minCycles = cycles;
            }
        }
        g_timer1IrqKpi.totalCycles += cycles;
        g_timer1IrqKpi.sampleCount++;
        g_timer1IrqKpi.avgCycles = g_timer1IrqKpi.totalCycles / g_timer1IrqKpi.sampleCount;
    }
    else if (g_timer1IrqKpi.sampleCount == TIMER_KPI_SAMPLE_COUNT) {
        g_timer1IrqKpi.sampleCount++;
        TBOX_PRINT("Timer1Handler: maxCycles=%d, minCycles=%d, avgCycles=%d, totalCycles=%d\n",
                    g_timer1IrqKpi.maxCycles, g_timer1IrqKpi.minCycles, g_timer1IrqKpi.avgCycles, g_timer1IrqKpi.totalCycles);
    }
    else {
        g_timer1IrqKpi.totalCycles = 0;
        g_timer1IrqKpi.sampleCount = 0;
    }
#endif

}

/*************************************************
  Function:       PeripheralHal1msTimerInit
  Description:    Initialize 1ms timer for system operations
  Input:          none
  Output:         none
  Return:         none
  Others:         Initializes TIM1 module for timing operations
*************************************************/
static void PeripheralHal1msTimerInit(void)
{
    for (uint8_t i = 0; i < MAX_SOFTWARE_TIMERS; i++) {
        g_softwareTimers[i].state = TIMER_UNUSED;
        g_softwareTimers[i].interval = 0;
        g_softwareTimers[i].counter = 0;
        g_softwareTimers[i].callback = NULL;
    }
#if (TIMER_KPI_ENABLE == 1U)
    g_timer1IrqKpi.minCycles = 0;
    g_timer1IrqKpi.maxCycles = 0;
    g_timer1IrqKpi.totalCycles = 0;
    g_timer1IrqKpi.sampleCount = 0;
    g_timer1IrqKpi.avgCycles = 0;
#endif
    TIM1_Init();  
}

/*************************************************
  Function:     SoftwareTimerCreate
  Description:  Create a software timer
  Input:        callback: Timer callback function
                interval: Timer interval in milliseconds
  Output:       None
  Return:       Timer ID (0-4) on success, -1 on failure
  Others:       None
*************************************************/
uint32_t PeripheralHal_TimerCreate(SoftwareTimerCallback_t callback, uint32_t interval)
{
    if (callback == NULL) {
        return PERIPHERALHAL_ERR_INVALID_PARAM;
    }

    for (uint8_t i = 0; i < MAX_SOFTWARE_TIMERS; i++) {
        if (g_softwareTimers[i].state == TIMER_UNUSED) {
            g_softwareTimers[i].state = TIMER_STOPPED;
            g_softwareTimers[i].interval = interval;
            g_softwareTimers[i].counter = 0;
            g_softwareTimers[i].callback = callback;
            return i;  // 返回定时器ID
        }
    }
    return PERIPHERALHAL_ERR_NO_RESOURCE;
}

/*************************************************
  Function:     PeripheralHal_TimerStart
  Description:  Start a software timer
  Input:        timerId: Timer ID
  Output:       None
  Return:       PERIPHERALHAL_OK on success, PERIPHERALHAL_ERR_INVALID_PARAM on failure
  Others:       None
*************************************************/
uint32_t PeripheralHal_TimerStart(uint8_t timerId)
{
    if (timerId >= MAX_SOFTWARE_TIMERS || g_softwareTimers[timerId].state == TIMER_UNUSED) {
        return PERIPHERALHAL_ERR_INVALID_PARAM;  // 无效的定时器ID
    }
    
    g_softwareTimers[timerId].counter = g_softwareTimers[timerId].interval;
    g_softwareTimers[timerId].state = TIMER_RUNNING;
    return PERIPHERALHAL_OK;
}

/*************************************************
  Function:     PeripheralHal_TimerStop
  Description:  Stop a software timer
  Input:        timerId: Timer ID
  Output:       None
  Return:       PERIPHERALHAL_OK on success, PERIPHERALHAL_ERR_INVALID_PARAM on failure
  Others:       None
*************************************************/
uint32_t PeripheralHal_TimerStop(uint8_t timerId)
{
    if (timerId >= MAX_SOFTWARE_TIMERS || g_softwareTimers[timerId].state == TIMER_UNUSED) {
        return PERIPHERALHAL_ERR_INVALID_PARAM;  // 无效的定时器ID
    }
    g_softwareTimers[timerId].state = TIMER_STOPPED;
    return PERIPHERALHAL_OK;
}

/*************************************************
  Function:       PeripheralHal_SetTimerVal
  Description:    Set the interval of a software timer
  Input:          timerId - Timer ID (0-4)
                  interval - New interval in milliseconds
  Output:         none
  Return:         0 - Success
                 -1 - Invalid timer ID
  Others:         none
*************************************************/
uint32_t PeripheralHal_SetTimerVal(uint8_t timerId, uint32_t interval)
{
    if (timerId >= MAX_SOFTWARE_TIMERS || g_softwareTimers[timerId].state == TIMER_UNUSED) {
        return PERIPHERALHAL_ERR_INVALID_PARAM;
    }
    
    g_softwareTimers[timerId].interval = interval;
    
    // 如果定时器正在运行，重置计数器
    if (g_softwareTimers[timerId].state == TIMER_RUNNING) {
        g_softwareTimers[timerId].counter = interval;
    }
    
    return PERIPHERALHAL_OK;
}

/*************************************************
  Function:       SoftwareTimerProcess
  Description:    Process software timers, handling counting and timeouts
  Input:          none
  Output:         none
  Return:         none
  Others:         none
*************************************************/
static void SoftwareTimerProcess(void)
{
    for (uint8_t i = 0; i < MAX_SOFTWARE_TIMERS; i++) {
        if (g_softwareTimers[i].state == TIMER_RUNNING) {
            if (g_softwareTimers[i].counter > 0) {
                g_softwareTimers[i].counter--;
            }
            if (g_softwareTimers[i].counter == 0) {
                if (g_softwareTimers[i].callback != NULL) {
                    g_softwareTimers[i].callback();
                }
            }
        }
    }
}

/*************************************************
  Function:       PeripheralStartSysLed
  Description:    Initialize and start system LED operation
  Input:          none
  Output:         none
  Return:         none
  Others:         Initializes 1ms timer for LED control
                  Configures LED pin muxing and direction
                  Sets LED to initial state (ON)
*************************************************/
static void PeripheralStartSysLed(void)
{
    PeripheralHal1msTimerInit();
    PORT_PinmuxConfig(SYS_LED_PORT, SYS_LED_PIN, SYS_LED_PIN_MUX);
    GPIO_SetPinDir(SYS_LED_PORT, SYS_LED_PIN, GPIO_OUTPUT);
    GPIO_SetPinOutput(SYS_LED_PORT, SYS_LED_PIN);
}

/*************************************************
  Function:       PeripheralHalStopSysLed
  Description:    Stop system LED operation
  Input:          none
  Output:         none
  Return:         none
  Others:         Sets sleep flag to disable LED blinking
                  Turns off system LED
*************************************************/
static void PeripheralHalStopSysLed(void)
{
	g_ledSleepFlag = 1;
	GPIO_ClearPinOutput(SYS_LED_PORT,SYS_LED_PIN);
}

/*************************************************
  Function:       PeripheralHalRestartSysLed
  Description:    Restart system LED operation
  Input:          none
  Output:         none
  Return:         none
  Others:         Reconfigures LED pin muxing and direction
                  Sets LED to ON state
                  Clears sleep flag to enable LED blinking
*************************************************/
static void PeripheralHalRestartSysLed(void)
{
    PORT_PinmuxConfig(SYS_LED_PORT, SYS_LED_PIN, SYS_LED_PIN_MUX);
    GPIO_SetPinDir(SYS_LED_PORT, SYS_LED_PIN, GPIO_OUTPUT);
    GPIO_SetPinOutput(SYS_LED_PORT, SYS_LED_PIN);
    g_ledSleepFlag = 0;
}

/*************************************************
  Function:       MCWDTInit
  Description:    Initialize watchdog module
  Input:          none
  Output:         none
  Return:         none
  Others:         Resets and enables watchdog module
                  Configures watchdog settings using WDOG_Config
                  Disables watchdog interrupts and clears status flags
                  Sets watchdog interrupt priority
                  Enables watchdog and performs initial refresh
*************************************************/
static void MCWDTInit(void)
{
	WDOG_Init(&WDOG_Config);
	WDOG_Refresh();
}

/*************************************************
  Function:       IrqPinInit
  Description:    Initialize interrupt pins for various system peripherals
  Input:          none
  Output:         none
  Return:         none
  Others:         Configures KL15, KL30 and GSM interrupt pins
                  Sets pin muxing, direction and interrupt configuration
                  Enables NVIC interrupts with priority level 3
                  Contains commented-out code for CAN, Bluetooth, button, SRS and G-sensor interrupts
*************************************************/
static void IrqPinInit(void)
{
	/*KL15*/
	PORT_PinmuxConfig(KL15_IRQ_PORT, KL15_IRQ_PIN, KL15_IRQ_PIN_MUX);
	GPIO_SetPinDir(KL15_IRQ_PORT, KL15_IRQ_PIN, GPIO_INPUT);
	// PORT_PullConfig(KL15_IRQ_PORT, KL15_IRQ_PIN, PORT_PULL_DOWN);
	PORT_PinIntConfig(KL15_IRQ_PORT, KL15_IRQ_PIN, PORT_ISF_INT_RISING_EDGE);
	INT_SetPriority(KL15_IRQ_IRQN, 0x3);
	INT_EnableIRQ(KL15_IRQ_IRQN);
	// PORT_InstallCallbackFunc();

	/*kl30*/
	PORT_PinmuxConfig(KL30_IRQ_PORT, KL30_IRQ_PIN, KL30_IRQ_PIN_MUX);
	GPIO_SetPinDir(KL30_IRQ_PORT, KL30_IRQ_PIN, GPIO_INPUT);
	// PORT_PullConfig(KL30_IRQ_PORT, KL30_IRQ_PIN, PORT_PULL_DOWN);
	PORT_PinIntConfig(KL30_IRQ_PORT, KL30_IRQ_PIN, PORT_ISF_INT_FALLING_EDGE);
	INT_SetPriority(KL30_IRQ_IRQN, 0x3);
	INT_EnableIRQ(KL30_IRQ_IRQN);
  	// PORT_InstallCallbackFunc();

	/*GSM*/
	PORT_PinmuxConfig(GSM_IRQ_PORT, GSM_IRQ_PIN, GSM_IRQ_PIN_MUX);
	GPIO_SetPinDir(GSM_IRQ_PORT, GSM_IRQ_PIN, GPIO_INPUT);
	// PORT_PullConfig(GSM_IRQ_PORT, GSM_IRQ_PIN, PORT_PULL_DOWN);
	PORT_PinIntConfig(GSM_IRQ_PORT, GSM_IRQ_PIN, PORT_ISF_INT_RISING_EDGE);
	INT_SetPriority(GSM_IRQ_IRQN, 0x3);
	INT_EnableIRQ(GSM_IRQ_IRQN);
	// PORT_InstallCallbackFunc();

}

/*************************************************
  Function:       Ex_Adc0Workaround1
  Description:    Workaround for Errata ADC.0
  Input:          none
  Output:         none
  Return:         none
  Others:         none
*************************************************/
static void Ex_Adc0Workaround1(void)
{
    /* Before normal sampling, use a software trigger to perform the first conversion on any
    channel and discard the conversion result. This is a workaround for Errata ADC.1, please
    refer to Errata doc for more information. */

    /* ADC configure parameter */
    ADC_Config_t Ex_adc0Config = 
    {
        .adcResolution = ADC_RESOLUTION_12BIT,
        .adcVrefSource = ADC_VREF_EXTERNAL,
        .adcTriggerMode = ADC_NORMAL_SW_TRIGGER,
        .adcConversionMode = ADC_CONVERSION_SINGLE,
        .adcAvgsSelect = ADC_AVGS_DISABLED,
        .adcSampleTime = 120U,
        .adcStableTime = 120U
    };

    /* ADC channel configure parameter */
    ADC_ChannelConfig_t Ex_adc0ChannelConfig = 
    {
        .adcDifferentialMode = ADC_SINGLE_MODE,
        .adcChannelP = ADC_P_CH1,
        .adcChannelN = ADC_N_NONE
    };
    SCM_AdcChannelMuxSelect(SCM_ADC0CH8_TYPE, SCM_ADCMUX1_TYPE);
    SCM_AdcChannelMuxSelect(SCM_ADC0CH9_TYPE, SCM_ADCMUX1_TYPE);
    /* Select clock source for ADC */
    while(ERR == CLK_ModuleSrc(CLK_ADC0, CLK_SRC_OSC40M))
    {
        /* User or application must add logic code to tackle this situation. */
    }
    /* Set clock for ADC , make sure it is not greater than bus clock */
    CLK_SetClkDivider(CLK_ADC0, CLK_DIV_2);
    /* Reset ADC */
    SYSCTRL_ResetModule(SYSCTRL_ADC0);
    /* Enable ADC clock */
    SYSCTRL_EnableModule(SYSCTRL_ADC0); 
    /* Initialize ADC */
    ADC_Init(ADC0_ID, &Ex_adc0Config);
    /* Channel configuration */
    ADC_ChannelConfig(ADC0_ID, &Ex_adc0ChannelConfig);
    /* Unmask interrupt */
    ADC_IntMask(ADC0_ID, ADC_TCOMP_INT, UNMASK);
    /* Disable ADC interrupt */
    INT_DisableIRQ(ADC0_IRQn);
    /* Enable ADC */
    ADC_Enable(ADC0_ID);
    /* Software trigger */
    ADC_SoftwareTrigger(ADC0_ID);
    /* Wait conversion complate interrupt */
    while(RESET == ADC_GetStatus(ADC0_ID, ADC_STATUS_TCOMP_INT))
    {
        /* User or application must add logic code to tackle this situation. */
    }
    /* Reading FIFO, and discard the conversion result */
    (void)ADC_GetConversionResult(ADC0_ID);
    /* Clear interrupt status */
    ADC_IntClear(ADC0_ID, ADC_TCOMP_INT);
    /* Mask interrupt */
    ADC_IntMask(ADC0_ID, ADC_TCOMP_INT, MASK);
    /* Disable ADC */
    ADC_Disable(ADC0_ID);
}

/*************************************************
  Function:       Ex_Adc0Workaround2
  Description:    Workaround for Errata ADC.0
  Input:          none
  Output:         none
  Return:         none
  Others:         none
*************************************************/
static void Ex_Adc0Workaround2(void)
{
    /* After software reset, the result FIFO may be not empty, user should make sure to clear the 
    FIFO by reading the FIFO. This is a workaround for Errata ADC.2, please refer to Errata doc for 
    more information. */

    uint32_t fifoCount = 0U;
    uint32_t iter      = 0U;

    /* Get the FIFO count */
    fifoCount = ADC_GetNumOfFifoData(ADC0_ID);
    /* Clear the FIFO */
    for (iter = 0U; iter < fifoCount; iter++)
    {
        (void)ADC_GetConversionResult(ADC0_ID);
    }
}

/*************************************************
  Function:       Ex_Adc1Workaround1
  Description:    Workaround for Errata ADC.1
  Input:          none
  Output:         none
  Return:         none
  Others:         none
*************************************************/
static void Ex_Adc1Workaround1(void)
{
    /* Before normal sampling, use a software trigger to perform the first conversion on any
    channel and discard the conversion result. This is a workaround for Errata ADC.1, please
    refer to Errata doc for more information. */

    /* ADC configure parameter */
    ADC_Config_t Ex_adc0Config = 
    {
        .adcResolution = ADC_RESOLUTION_12BIT,
        .adcVrefSource = ADC_VREF_EXTERNAL,
        .adcTriggerMode = ADC_NORMAL_SW_TRIGGER,
        .adcConversionMode = ADC_CONVERSION_SINGLE,
        .adcAvgsSelect = ADC_AVGS_DISABLED,
        .adcSampleTime = 120U,
        .adcStableTime = 120U
    };

    /* ADC channel configure parameter */
    ADC_ChannelConfig_t Ex_adc0ChannelConfig = 
    {
        .adcDifferentialMode = ADC_SINGLE_MODE,
        .adcChannelP = ADC_P_CH1,
        .adcChannelN = ADC_N_NONE
    };

    /* Select clock source for ADC */
    while(ERR == CLK_ModuleSrc(CLK_ADC1, CLK_SRC_OSC40M))
    {
        /* User or application must add logic code to tackle this situation. */
    }
    /* Set clock for ADC , make sure it is not greater than bus clock */
    CLK_SetClkDivider(CLK_ADC1, CLK_DIV_2);
    /* Reset ADC */
    SYSCTRL_ResetModule(SYSCTRL_ADC1);
    /* Enable ADC clock */
    SYSCTRL_EnableModule(SYSCTRL_ADC1); 
    /* Initialize ADC */
    ADC_Init(ADC1_ID, &Ex_adc0Config);
    /* Channel configuration */
    ADC_ChannelConfig(ADC1_ID, &Ex_adc0ChannelConfig);
    /* Unmask interrupt */
    ADC_IntMask(ADC1_ID, ADC_TCOMP_INT, UNMASK);
    /* Disable ADC interrupt */
    INT_DisableIRQ(ADC1_IRQn);
    /* Enable ADC */
    ADC_Enable(ADC1_ID);
    /* Software trigger */
    ADC_SoftwareTrigger(ADC1_ID);
    /* Wait conversion complate interrupt */
    while(RESET == ADC_GetStatus(ADC1_ID, ADC_STATUS_TCOMP_INT))
    {
        /* User or application must add logic code to tackle this situation. */
    }
    /* Reading FIFO, and discard the conversion result */
    (void)ADC_GetConversionResult(ADC1_ID);
    /* Clear interrupt status */
    ADC_IntClear(ADC1_ID, ADC_TCOMP_INT);
    /* Mask interrupt */
    ADC_IntMask(ADC1_ID, ADC_TCOMP_INT, MASK);
    /* Disable ADC */
    ADC_Disable(ADC1_ID);
}

/*************************************************
  Function:       Ex_Adc1Workaround2
  Description:    Workaround for Errata ADC.1
  Input:          none
  Output:         none
  Return:         none
  Others:         none
*************************************************/
static void Ex_Adc1Workaround2(void)
{
    /* After software reset, the result FIFO may be not empty, user should make sure to clear the 
    FIFO by reading the FIFO. This is a workaround for Errata ADC.2, please refer to Errata doc for 
    more information. */

    uint32_t fifoCount = 0U;
    uint32_t iter      = 0U;

    /* Get the FIFO count */
    fifoCount = ADC_GetNumOfFifoData(ADC1_ID);
    /* Clear the FIFO */
    for (iter = 0U; iter < fifoCount; iter++)
    {
        (void)ADC_GetConversionResult(ADC1_ID);
    }
}
