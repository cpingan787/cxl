#include "peripheralHal.h"
// #include "batteryHal.h"
#include "logHal.h"
// #include "timerHal.h"
// #include "gSensorHal.h"
#include "r_cg_macrodriver.h"
#include "r_cg_port.h"
#include "r_port.h"
#include "Dio.h"

#if(0)
#define WAKEUP_SOURCE_NONE	       0	 
#define WAKEUP_SOURCE_CAN1	       1	 
#define WAKEUP_SOURCE_CAN2	       2	 
#define WAKEUP_SOURCE_CAN3	       3	 
#define WAKEUP_SOURCE_CAN4	       4 	 
#define WAKEUP_SOURCE_CAN5	       5	 
#define WAKEUP_SOURCE_CAN6	       6	 
#define WAKEUP_SOURCE_CAN7	       7	 
#define WAKEUP_SOURCE_CAN8	       8	 
#define WAKEUP_SOURCE_MPU	         9	 
#define WAKEUP_SOURCE_KL15	       10	 
#define WAKEUP_SOURCE_KL30	       11  
#define WAKEUP_SOURCE_BLE	         12	 
#define WAKEUP_SOURCE_RTC	         13  
#define WAKEUP_SOURCE_RTC_MCU	     14
#define WAKEUP_SOURCE_GSENSOR	     15
#endif
typedef enum
{
  PortGpioLow = 0,
  PortGpioHigh,
}PortGpioLevel_e;
#if(0)
#define KL15_IRQ_PORT     GPIO_PRT12
#define KL15_IRQ_PIN      0
#define KL15_IRQ_PIN_MUX  P12_0_GPIO
#define KL15_IRQ_IRQN     ioss_interrupts_gpio_12_IRQn

static const cy_stc_gpio_pin_config_t g_kl15PortPinCfg =
{
    .outVal    = 0ul,
    .driveMode = CY_GPIO_DM_HIGHZ,
    .hsiom     = KL15_IRQ_PIN_MUX,
    .intEdge   = CY_GPIO_INTR_RISING,
    .intMask   = 1ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

static const cy_stc_sysint_irq_t g_Kl15IrqCfg =  //ʵ����P12.0
{
    .sysIntSrc  = KL15_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

#define KL30_IRQ_PORT     GPIO_PRT8
#define KL30_IRQ_PIN      1
#define KL30_IRQ_PIN_MUX  P8_1_GPIO
#define KL30_IRQ_IRQN     ioss_interrupts_gpio_8_IRQn

static const cy_stc_gpio_pin_config_t g_kl30IrqPortPinCfg =
{
    .outVal    = 0ul,
    .driveMode = CY_GPIO_DM_HIGHZ,
    .hsiom     = KL30_IRQ_PIN_MUX,
    .intEdge   = CY_GPIO_INTR_BOTH,
    .intMask   = 1ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

static const cy_stc_sysint_irq_t g_Kl30IrqCfg =  //P7.4
{
    .sysIntSrc  = KL30_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

/* Setup GPIO for interrupt */
#define CY_CAN0_IRQ_PORT               GPIO_PRT2                        //BCAN
#define CY_CAN0_IRQ_PIN                1
// #define CY_CAN0_IRQ_PIN_MUX            P2_1_GPIO
#define CAN0_IRQ_IRQN               ioss_interrupts_gpio_2_IRQn

#define CY_CAN1_IRQ_PORT               GPIO_PRT0                        //DCAM
#define CY_CAN1_IRQ_PIN                3
// #define CY_CAN1_IRQ_PIN_MUX            P0_3_GPIO
#define CAN1_IRQ_IRQN               ioss_interrupts_gpio_0_IRQn

#define CY_CAN2_IRQ_PORT               GPIO_PRT6                        //ACAN
#define CY_CAN2_IRQ_PIN                3
// #define CY_CAN2_IRQ_PIN_MUX            P6_3_GPIO
#define CAN2_IRQ_IRQN               ioss_interrupts_gpio_6_IRQn

#define CY_CAN3_IRQ_PORT               GPIO_PRT14                       //ECAN
#define CY_CAN3_IRQ_PIN                1
// #define CY_CAN3_IRQ_PIN_MUX            P14_1_GPIO
#define CAN3_IRQ_IRQN               ioss_interrupts_gpio_14_IRQn

#define CY_CAN4_IRQ_PORT               GPIO_PRT17                        //CCAN
#define CY_CAN4_IRQ_PIN                1
// #define CY_CAN4_IRQ_PIN_MUX            P17_1_GPIO
#define CAN4_IRQ_IRQN               ioss_interrupts_gpio_17_IRQn                  

#define CY_CAN5_IRQ_PORT               GPIO_PRT18                       //ICAN
#define CY_CAN5_IRQ_PIN                7
// #define CY_CAN5_IRQ_PIN_MUX            P18_7_GPIO
#define CAN5_IRQ_IRQN               ioss_interrupts_gpio_18_IRQn

#define GSM_IRQ_PORT               GPIO_PRT22                        //4G_RING
#define GSM_IRQ_PIN                3
#define GSM_IRQ_PIN_MUX           P22_3_GPIO
#define GSM_IRQ_IRQN              ioss_interrupts_gpio_22_IRQn

static const cy_stc_gpio_pin_config_t g_gsmIrqPortPinCfg =
{
    .outVal    = 0ul,
    .driveMode = CY_GPIO_DM_HIGHZ,
    .hsiom     = GSM_IRQ_PIN_MUX,
    .intEdge   = CY_GPIO_INTR_FALLING,
    .intMask   = 1ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

#define BLE_IRQ_PORT               GPIO_PRT17                        //BLE_WAKE_IN
#define BLE_IRQ_PIN                2
#define BLE_IRQ_PIN_MUX            P17_2_GPIO
#define BLE_IRQ_IRQN               ioss_interrupts_gpio_17_IRQn

static const cy_stc_gpio_pin_config_t g_bleIrqPortPinCfg =
{
    .outVal    = 0ul,
    .driveMode = CY_GPIO_DM_HIGHZ,
    .hsiom     = BLE_IRQ_PIN_MUX,
    .intEdge   = CY_GPIO_INTR_FALLING,
    .intMask   = 1ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

#define Gsensor_IRQ_PORT               GPIO_PRT19                        //BLE_WAKE_IN
#define Gsensor_IRQ_PIN                0
#define Gsensor_IRQ_PIN_MUX            P19_0_GPIO
#define Gsensor_IRQ_IRQN               ioss_interrupts_gpio_19_IRQn

static const cy_stc_gpio_pin_config_t g_gSensorIrqPortPinCfg =
{
    .outVal    = 0ul,
    .driveMode = CY_GPIO_DM_HIGHZ,
    .hsiom     = Gsensor_IRQ_PIN_MUX,
    .intEdge   = CY_GPIO_INTR_RISING,
    .intMask   = 1ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

static const cy_stc_sysint_irq_t g_can0IrqCfg =   //P2.1        BCAN
{
    .sysIntSrc  = CAN0_IRQ_IRQN,  //P2.1
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_can1IrqCfg =   //P14.1       DCAN
{
    .sysIntSrc  = CAN1_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_can2IrqCfg =   //P6.3        ACAN  
{
    .sysIntSrc  = CAN2_IRQ_IRQN,  //
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_can3IrqCfg =   //P17.1       ECAN
{
    .sysIntSrc  = CAN3_IRQ_IRQN,  //
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_can4IrqCfg =   //P18.7        CCAN
{
    .sysIntSrc  = CAN4_IRQ_IRQN,  //
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_can5IrqCfg =   //P14.1       ����
{
    .sysIntSrc  = CAN5_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_gsmIrqCfg =   //P21.1(4G_RING)
{
    .sysIntSrc  = GSM_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_blueIrqCfg =   //P18.2(BLE_WAKE_IN)
{
    .sysIntSrc  = BLE_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_gSensorIrqCfg =   //P19.0(Gsensor_INT)
{
    .sysIntSrc  = Gsensor_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

#define SYS_ON_PORT    GPIO_PRT7
#define SYS_ON_PIN     0
#define SYS_ON_PIN_MUX P7_0_GPIO

cy_stc_gpio_pin_config_t g_sysOnCfg =
{
    .outVal = 1ul, // Pin output state 
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, // Drive mode 
    .hsiom = SYS_ON_PIN_MUX, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
};  

#define AMP_STB_PORT           GPIO_PRT12
#define AMP_STB_PIN            4
#define AMP_STB_PIN_MUX        P12_4_GPIO

static const cy_stc_gpio_pin_config_t g_ampStbPortPinCfg =
{
    .outVal = 1ul, /* Pin output state */
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, /* Drive mode */
    .hsiom = AMP_STB_PIN_MUX, /* HSIOM selection */
    .intEdge = 0ul, /* Interrupt Edge type */
    .intMask = 0ul, /* Interrupt enable mask */
    .vtrip = 0ul, /* Input buffer voltage trip type */
    .slewRate = 0ul, /* Output buffer slew rate */
    .driveSel = 0ul, /* Drive strength */
};

#define AMP_MUTE_PORT           GPIO_PRT13
#define AMP_MUTE_PIN            5
#define AMP_MUTE_PIN_MUX        P13_5_GPIO

static const cy_stc_gpio_pin_config_t g_ampMutePortPinCfg =
{
    .outVal = 0ul, /* Pin output state */
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, /* Drive mode */
    .hsiom = AMP_MUTE_PIN_MUX, /* HSIOM selection */
    .intEdge = 0ul, /* Interrupt Edge type */
    .intMask = 0ul, /* Interrupt enable mask */
    .vtrip = 0ul, /* Input buffer voltage trip type */
    .slewRate = 0ul, /* Output buffer slew rate */
    .driveSel = 0ul, /* Drive strength */
};

#define FAULTZ_DET_PORT         GPIO_PRT18
#define FAULTZ_DET_PIN          2
#define FAULTZ_DET_PIN_MUX      P18_2_GPIO

static const cy_stc_gpio_pin_config_t g_faultzDetPortPinCfg =
{
    .outVal = 0ul, // Pin output state 
    .driveMode = CY_GPIO_DM_HIGHZ, // Drive mode 
    .hsiom = FAULTZ_DET_PIN_MUX, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
}; 

static void PeripheralHalAmpInit()
{
  Cy_GPIO_Pin_Init(AMP_STB_PORT,AMP_STB_PIN,&g_ampStbPortPinCfg);
  Cy_GPIO_Pin_Init(AMP_MUTE_PORT,AMP_MUTE_PIN,&g_ampMutePortPinCfg);
  Cy_GPIO_Pin_Init(FAULTZ_DET_PORT,FAULTZ_DET_PIN,&g_faultzDetPortPinCfg);
}

/********************************************
 * 
 * 4G modle power on
 * 
**********************************************/
#define MPU_POWER_ON_PORT     GPIO_PRT2
#define MPU_POWER_ON_PIN      3
#define MPU_POWER_ON_PIN_MUX  P2_3_GPIO

static const cy_stc_gpio_pin_config_t g_mpuPowerOnPortPinCfg =
{
    .outVal = 0ul, // Pin output state 
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, // Drive mode 
    .hsiom = MPU_POWER_ON_PIN_MUX, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
}; 

static void PeripheralHalMpuPowerOnInit(void)
{
  Cy_GPIO_Pin_Init(MPU_POWER_ON_PORT,MPU_POWER_ON_PIN,&g_mpuPowerOnPortPinCfg);
}

static void PeripheralHalMpuPowerOn(uint8_t status)
{
  if(status)
  {
    Cy_GPIO_Set(MPU_POWER_ON_PORT,MPU_POWER_ON_PIN);
  }
  else
  {
    Cy_GPIO_Clr(MPU_POWER_ON_PORT,MPU_POWER_ON_PIN);
  }
}

/********************************************
 * 
 * MCU port handle
 * 
**********************************************/
//static void PowerManageHalIsrSetWakeupSource(uint8_t mode)
//{
//  
//}

typeSetWakeupSourceCallbackPtr g_wakeupSourceFun;
void PeripheralHalRegisterSetWakeupSourceCallback(typeSetWakeupSourceCallbackPtr pCallBackFun)
{
  g_wakeupSourceFun = pCallBackFun;
}


// typeSetBatteryModeCallbackPtr g_BatteryModeFun;
// void PeripheralHalRegisterSetBatteryModeCallback(typeSetBatteryModeCallbackPtr pCallBackFun)
// {
//   g_BatteryModeFun = pCallBackFun;
// }

static void Port0Handler(void)
{
    uint32_t intStatus;

    intStatus = Cy_GPIO_GetInterruptStatusMasked(CY_CAN1_IRQ_PORT, CY_CAN1_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(CY_CAN1_IRQ_PORT, CY_CAN1_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_CAN2);
        }
        TBOX_PRINT("-----------2-------------\r\n");
        //PowerManageHalIsrSetWakeupSource(WAKEUP_SOURCE_CAN2);
    }
}

//static void Port1Handler(void)
//{
//    
//}

static void Port2Handler(void)
{
    uint32_t intStatus;

    /* If falling edge detected */
    intStatus = Cy_GPIO_GetInterruptStatusMasked(CY_CAN0_IRQ_PORT, CY_CAN0_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(CY_CAN0_IRQ_PORT, CY_CAN0_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_CAN1);
        }
        TBOX_PRINT("-----------1-------------\r\n");
    }
}

//static void Port3Handler(void)
//{
//    
//}
//
//static void Port4Handler(void)
//{
//    
//}
//
//static void Port5Handler(void)
//{
//    
//}

static void Port6Handler(void)
{
    uint32_t intStatus;

    intStatus = Cy_GPIO_GetInterruptStatusMasked(CY_CAN2_IRQ_PORT, CY_CAN2_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(CY_CAN2_IRQ_PORT, CY_CAN2_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_CAN3);
        }
    }
}

//static void Port7Handler(void)
//{
//    
//}
//uint8_t SYS_ON_flag = 0;
static void Port8Handler(void)
{
    uint32_t intStatus;

    /* If falling edge detected */
    intStatus = Cy_GPIO_GetInterruptStatusMasked(KL30_IRQ_PORT, KL30_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(KL30_IRQ_PORT, KL30_IRQ_PIN);
        if(Cy_GPIO_Read(KL30_IRQ_PORT,KL30_IRQ_PIN) == 0)
        {
          // if(g_BatteryModeFun != NULL)
          // {
          //   g_BatteryModeFun(0);
          // }
          PeripheralHalMpuPowerOn(1);
          BatteryHalDisableOut();
        }
        else
        {
          // if(g_BatteryModeFun != NULL)
          // {
          //   g_BatteryModeFun(1);
          // }
          BatteryHalEnableOut();  
          PeripheralHalMpuPowerOn(0);
        }
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_KL30);
        }
    }
}

//static void Port9Handler(void)
//{
//    
//}
//
//static void Port10Handler(void)
//{
//    
//}
//
//static void Port11Handler(void)
//{
//    
//}

static void Port12Handler(void)
{
    uint32_t intStatus;

    /* If falling edge detected */
    intStatus = Cy_GPIO_GetInterruptStatusMasked(KL15_IRQ_PORT, KL15_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(KL15_IRQ_PORT, KL15_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_KL15);
        }
    }
}

//static void Port13Handler(void)
//{
//    
//}

static void Port14Handler(void)
{
    uint32_t intStatus;

    intStatus = Cy_GPIO_GetInterruptStatusMasked(CY_CAN3_IRQ_PORT, CY_CAN3_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(CY_CAN3_IRQ_PORT, CY_CAN3_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_CAN4);
        }
    }
}

//static void Port15Handler(void)
//{
//    
//}
//
//static void Port16Handler(void)
//{
//    
//}

static void Port17Handler(void)
{
    uint32_t intStatus_CAN4;
    uint32_t intStatus_BLE;

    intStatus_CAN4 = Cy_GPIO_GetInterruptStatusMasked(CY_CAN4_IRQ_PORT, CY_CAN4_IRQ_PIN);
    if (intStatus_CAN4 != 0ul)
    {
        Cy_GPIO_ClearInterrupt(CY_CAN4_IRQ_PORT, CY_CAN4_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_CAN5);
        }
    }

    intStatus_BLE = Cy_GPIO_GetInterruptStatusMasked(BLE_IRQ_PORT, BLE_IRQ_PIN);
    if (intStatus_BLE != 0ul)
    {
        Cy_GPIO_ClearInterrupt(BLE_IRQ_PORT, BLE_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_BLE);
        }
    }
}

static void Port18Handler(void)
{
    uint32_t intStatus;
    
    intStatus = Cy_GPIO_GetInterruptStatusMasked(CY_CAN5_IRQ_PORT, CY_CAN5_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(CY_CAN5_IRQ_PORT, CY_CAN5_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_CAN6);
        }
    }
}

static void Port19Handler(void)
{
    uint32_t intStatus;
    
    intStatus = Cy_GPIO_GetInterruptStatusMasked(Gsensor_IRQ_PORT, Gsensor_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(Gsensor_IRQ_PORT, Gsensor_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_GSENSOR);
        }
    }
}

//static void Port20Handler(void)
//{
//    
//}

//static void Port21Handler(void)
//{
//    
//}
//
static void Port22Handler(void)
{
    uint32_t intStatus;

    intStatus = Cy_GPIO_GetInterruptStatusMasked(GSM_IRQ_PORT, GSM_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(GSM_IRQ_PORT, GSM_IRQ_PIN);
        if(g_wakeupSourceFun != NULL)
        {
          g_wakeupSourceFun(WAKEUP_SOURCE_MPU);
        }
    }
}

//static void Port23Handler(void)
//{
//    
//}
#endif
int16_t PeripheralHalGetKl15Status (void)
{
    if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_ACC_INT_Pin8_5) == PortGpioHigh)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

int16_t PeripheralHalGetKl30Status (void)
{
    if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8) == PortGpioHigh)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}
#if(0)
void PeripheralHalSetSysOn (uint8_t flag)
{
  if(flag)
  {
    Cy_GPIO_Set(SYS_ON_PORT,SYS_ON_PIN);
  }
  else
  {
    //close SYS_ON
    Cy_GPIO_Clr(SYS_ON_PORT,SYS_ON_PIN);
  }
}
#endif
/********************************************
 * 
 * ADC
 * 
**********************************************/

AdConvertBuffer_t g_adBuffer;
#if(0)
/*****************************************************/
#define CY_ADC0_POT_MACRO                PASS0_SAR0   //BATT_DEC
#define CY_ADC0_POT_IN_NO0               (cy_en_adc_pin_address_t)12    //KL30
#define CY_ADC0_POT_PORT0                 GPIO_PRT7
#define CY_ADC0_POT_PIN0                  4
#define CY_ADC0_POT_PIN_MUX0              P7_4_GPIO

#define CY_ADC0_POT_IN_NO1               (cy_en_adc_pin_address_t)10    //BATTERY
#define CY_ADC0_POT_PORT1                 GPIO_PRT7
#define CY_ADC0_POT_PIN1                  2
#define CY_ADC0_POT_PIN_MUX1              P7_2_GPIO

#define CY_ADC0_POT_IN_NO2               (cy_en_adc_pin_address_t)11  //NTC_DEC
#define CY_ADC0_POT_PORT2                 GPIO_PRT7
#define CY_ADC0_POT_PIN2                  3
#define CY_ADC0_POT_PIN_MUX2              P7_3_GPIO

#define CY_ADC0_POT_PCLK                  PCLK_PASS0_CLOCK_SAR0
#define CY_ADC0_POT_IRQN                  pass_0_interrupts_sar_0_IRQn

#define ADC_OPERATION_FREQUENCY_MAX_IN_HZ (26670000ul)
#define ANALOG_IN_SAMPLING_TIME_MIN_IN_NS (40000ul)
#define DIV_ROUND_UP(a,b) (((a) + (b)/2) / (b))

uint16_t g_resultBuff[4][1];
cy_stc_adc_ch_status_t g_statusBuff[4][1];
static uint8_t g_adcCompletedFlag = 0;
void AdcKl30Handler(void)
{
  cy_stc_adc_interrupt_source_t intrSource = { false };

  Cy_Adc_Channel_GetInterruptMaskedStatus(&CY_ADC0_POT_MACRO->CH[2], &intrSource);

  if(intrSource.grpDone)
  {
    Cy_Adc_Channel_GetResult(&CY_ADC0_POT_MACRO->CH[2], &g_resultBuff[0][0], &g_statusBuff[0][0]);
    g_adBuffer[0].adValue = g_resultBuff[0][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC0_POT_MACRO->CH[2], &intrSource);
    g_adcCompletedFlag = 1;
  }
  else
  {
    CY_ASSERT(false);      // Unexpected interrupt
  }
}
/*
void AdcSYS5VntHandler(void)//ADC�жϴ���
{
  cy_stc_adc_interrupt_source_t intrSource = { false };

  Cy_Adc_Channel_GetInterruptMaskedStatus(&CY_ADC1_POT_MACRO->CH[0], &intrSource);

  if(intrSource.grpDone)//ADת�����
  {
    Cy_Adc_Channel_GetResult(&CY_ADC1_POT_MACRO->CH[0], &g_resultBuff[3][0], &g_statusBuff[3][0]);
    g_adBuffer[3].adValue = g_resultBuff[3][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC1_POT_MACRO->CH[0], &intrSource);
  }
  else
  {
    CY_ASSERT(false);      // Unexpected interrupt
  }
}
*/

void AdcBattHandler(void)
{
  cy_stc_adc_interrupt_source_t intrSource = { false };

  Cy_Adc_Channel_GetInterruptMaskedStatus(&CY_ADC0_POT_MACRO->CH[3], &intrSource);

  if(intrSource.grpDone)
  {
    Cy_Adc_Channel_GetResult(&CY_ADC0_POT_MACRO->CH[3], &g_resultBuff[1][0], &g_statusBuff[1][0]);
    g_adBuffer[1].adValue = g_resultBuff[1][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC0_POT_MACRO->CH[3], &intrSource);
  }
  else
  {
    CY_ASSERT(false);      // Unexpected interrupt
  }
}

void AdcNtcHandler(void)
{
  cy_stc_adc_interrupt_source_t intrSource = { false };

  Cy_Adc_Channel_GetInterruptMaskedStatus(&CY_ADC0_POT_MACRO->CH[1], &intrSource);

  if(intrSource.grpDone)
  {
    Cy_Adc_Channel_GetResult(&CY_ADC0_POT_MACRO->CH[1], &g_resultBuff[2][0], &g_statusBuff[2][0]);
    g_adBuffer[2].adValue = g_resultBuff[2][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC0_POT_MACRO->CH[1], &intrSource);
  }
  else
  {
    CY_ASSERT(false);      // Unexpected interrupt
  }
}

static void InitAdcKL30(void)
{
    /* ADC port setting (Note default port setting after reset is just fine),����ΪADC�˿� */
    {
        cy_stc_gpio_pin_config_t adcPinConfig =
        {
            .outVal    = 0ul,
            .driveMode = CY_GPIO_DM_ANALOG,
            .hsiom     = CY_ADC0_POT_PIN_MUX0, //ָ��KL30�˿���ΪADC�˿�
            .intEdge   = 0ul,
            .intMask   = 0ul,
            .vtrip     = 0ul,
            .slewRate  = 0ul,
            .driveSel  = 0ul,
        };
        Cy_GPIO_Pin_Init(CY_ADC0_POT_PORT0, CY_ADC0_POT_PIN0, &adcPinConfig);//�ֱ��Ƕ˿ں�,���ź�,���Ų���,KL30_ADC
    }

    /* ADC clock divider setting */
  uint32_t actualAdcOperationFreq;
  {   
    uint32_t periFreq = 80000000ul;
    uint32_t divNum = DIV_ROUND_UP(periFreq, ADC_OPERATION_FREQUENCY_MAX_IN_HZ);
    actualAdcOperationFreq = periFreq / divNum;
    Cy_SysClk_PeriphAssignDivider(CY_ADC0_POT_PCLK, CY_SYSCLK_DIV_8_BIT, 0ul);
    Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0ul, (divNum - 1ul));
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0ul);
  }

  /* Initialize ADC */
  {
    uint32_t samplingCycle = (uint32_t)DIV_ROUND_UP((ANALOG_IN_SAMPLING_TIME_MIN_IN_NS * (uint64_t)actualAdcOperationFreq), 1000000000ull);

    cy_stc_adc_config_t g_adcConfig =
    {
      .preconditionTime    = 0u,
      .powerupTime         = 0u,
      .enableIdlePowerDown = false,
      .msbStretchMode      = CY_ADC_MSB_STRETCH_MODE_1CYCLE,
      .enableHalfLsbConv   = 0u,
      .sarMuxEnable        = true,
      .adcEnable           = true,
      .sarIpEnable         = true,
    };
    cy_stc_adc_channel_config_t g_adcChannelConfig =
    {
      .triggerSelection          = CY_ADC_TRIGGER_OFF,
      .channelPriority           = 0u,
      .preenptionType            = CY_ADC_PREEMPTION_FINISH_RESUME,
      .isGroupEnd                = true,  
      .doneLevel                 = CY_ADC_DONE_LEVEL_PULSE,
      .pinAddress                = CY_ADC0_POT_IN_NO0, 
      .portAddress               = CY_ADC_PORT_ADDRESS_SARMUX0,
      .extMuxSelect              = 0u,
      .extMuxEnable              = true,
      .preconditionMode          = CY_ADC_PRECONDITION_MODE_OFF,
      .overlapDiagMode           = CY_ADC_OVERLAP_DIAG_MODE_OFF,
      .sampleTime                = samplingCycle,
      .calibrationValueSelect    = CY_ADC_CALIBRATION_VALUE_REGULAR,
      .postProcessingMode        = CY_ADC_POST_PROCESSING_MODE_NONE,
      .resultAlignment           = CY_ADC_RESULT_ALIGNMENT_RIGHT,
      .signExtention             = CY_ADC_SIGN_EXTENTION_UNSIGNED,
      .averageCount              = 0u,
      .rightShift                = 0u,
      .rangeDetectionMode        = CY_ADC_RANGE_DETECTION_MODE_INSIDE_RANGE,
      .rangeDetectionLoThreshold = 0x0000u,
      .rangeDetectionHiThreshold = 0x0FFFu,
      .mask.grpDone              = true,
      .mask.grpCancelled         = false,
      .mask.grpOverflow          = false,
      .mask.chRange              = false,
      .mask.chPulse              = false,
      .mask.chOverflow           = false,
    };
    Cy_Adc_Init(CY_ADC0_POT_MACRO, &g_adcConfig);
    Cy_Adc_Channel_Init(&CY_ADC0_POT_MACRO->CH[2], &g_adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irqCfg;
    irqCfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC0_POT_IRQN + 2),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irqCfg);
    Cy_SysInt_SetSystemIrqVector(irqCfg.sysIntSrc, AdcKl30Handler);//
    NVIC_SetPriority(irqCfg.intIdx, 12ul);
    NVIC_EnableIRQ(irqCfg.intIdx);
  }

  /* Enable ADC ch. */
  Cy_Adc_Channel_Enable(&CY_ADC0_POT_MACRO->CH[2]);
}

static void InitAdcBatt(void)
{
    /* ADC port setting (Note default port setting after reset is just fine),����ΪADC�˿� */
    {
        cy_stc_gpio_pin_config_t adcPinConfig =
        {
            .outVal    = 0ul,
            .driveMode = CY_GPIO_DM_ANALOG,
            .hsiom     = CY_ADC0_POT_PIN_MUX1, //P7.2
            .intEdge   = 0ul,
            .intMask   = 0ul,
            .vtrip     = 0ul,
            .slewRate  = 0ul,
            .driveSel  = 0ul,
        };
        Cy_GPIO_Pin_Init(CY_ADC0_POT_PORT1, CY_ADC0_POT_PIN1, &adcPinConfig);//�ֱ��Ƕ˿ں�,���ź�,���Ų���,KL30_ADC
    }

  /* ADC clock divider setting */
  uint32_t actualAdcOperationFreq;
  {   
    uint32_t periFreq = 80000000ul;
    uint32_t divNum = DIV_ROUND_UP(periFreq, ADC_OPERATION_FREQUENCY_MAX_IN_HZ);
    actualAdcOperationFreq = periFreq / divNum;
    Cy_SysClk_PeriphAssignDivider(CY_ADC0_POT_PCLK, CY_SYSCLK_DIV_8_BIT, 0ul);
    Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0ul, (divNum - 1ul));
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0ul);
  }

  /* Initialize ADC */
  {
    uint32_t samplingCycle = (uint32_t)DIV_ROUND_UP((ANALOG_IN_SAMPLING_TIME_MIN_IN_NS * (uint64_t)actualAdcOperationFreq), 1000000000ull);
    cy_stc_adc_config_t g_adcConfig =
    {
      .preconditionTime    = 0u,
      .powerupTime         = 0u,
      .enableIdlePowerDown = false,
      .msbStretchMode      = CY_ADC_MSB_STRETCH_MODE_1CYCLE,
      .enableHalfLsbConv   = 0u,
      .sarMuxEnable        = true,
      .adcEnable           = true,
      .sarIpEnable         = true,
    };
    cy_stc_adc_channel_config_t g_adcChannelConfig =
    {
      .triggerSelection          = CY_ADC_TRIGGER_OFF,
      .channelPriority           = 0u,
      .preenptionType            = CY_ADC_PREEMPTION_FINISH_RESUME,
      .isGroupEnd                = true,  //ע��:��ǰ�ǵ�ͨ��ת��
      .doneLevel                 = CY_ADC_DONE_LEVEL_PULSE,
      .pinAddress                = CY_ADC0_POT_IN_NO1, //�����ADCx��ͨ����
      .portAddress               = CY_ADC_PORT_ADDRESS_SARMUX0,
      .extMuxSelect              = 0u,
      .extMuxEnable              = true,
      .preconditionMode          = CY_ADC_PRECONDITION_MODE_OFF,
      .overlapDiagMode           = CY_ADC_OVERLAP_DIAG_MODE_OFF,
      .sampleTime                = samplingCycle,
      .calibrationValueSelect    = CY_ADC_CALIBRATION_VALUE_REGULAR,
      .postProcessingMode        = CY_ADC_POST_PROCESSING_MODE_NONE,
      .resultAlignment           = CY_ADC_RESULT_ALIGNMENT_RIGHT,
      .signExtention             = CY_ADC_SIGN_EXTENTION_UNSIGNED,
      .averageCount              = 0u,
      .rightShift                = 0u,
      .rangeDetectionMode        = CY_ADC_RANGE_DETECTION_MODE_INSIDE_RANGE,
      .rangeDetectionLoThreshold = 0x0000u,
      .rangeDetectionHiThreshold = 0x0FFFu,
      .mask.grpDone              = true,
      .mask.grpCancelled         = false,
      .mask.grpOverflow          = false,
      .mask.chRange              = false,
      .mask.chPulse              = false,
      .mask.chOverflow           = false,
    };
    Cy_Adc_Init(CY_ADC0_POT_MACRO, &g_adcConfig);//CY_ADC_POT_MACROָ��PASS0->SAR[1],cy_stc_adc_config_t g_adcConfig
    Cy_Adc_Channel_Init(&CY_ADC0_POT_MACRO->CH[3], &g_adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irqCfg;
    irqCfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC0_POT_IRQN + 3),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irqCfg);
    Cy_SysInt_SetSystemIrqVector(irqCfg.sysIntSrc, AdcBattHandler);//

    NVIC_SetPriority(irqCfg.intIdx, 10ul);
    NVIC_EnableIRQ(irqCfg.intIdx);
  }

  /* Enable ADC ch. */
  Cy_Adc_Channel_Enable(&CY_ADC0_POT_MACRO->CH[3]);
}

static void InitAdcNtc(void)
{
    /* ADC port setting (Note default port setting after reset is just fine),����ΪADC�˿� */
    {
        cy_stc_gpio_pin_config_t adcPinConfig =
        {
            .outVal    = 0ul,
            .driveMode = CY_GPIO_DM_ANALOG,
            .hsiom     = CY_ADC0_POT_PIN_MUX2, //P8.2
            .intEdge   = 0ul,
            .intMask   = 0ul,
            .vtrip     = 0ul,
            .slewRate  = 0ul,
            .driveSel  = 0ul,
        };
        Cy_GPIO_Pin_Init(CY_ADC0_POT_PORT2, CY_ADC0_POT_PIN2, &adcPinConfig);
    }

  /* ADC clock divider setting */
  uint32_t actualAdcOperationFreq;
  {   
    uint32_t periFreq = 80000000ul;
    //???���ǽ�periFreq�л�ΪMCU��ʵ����Ƶ
    uint32_t divNum = DIV_ROUND_UP(periFreq, ADC_OPERATION_FREQUENCY_MAX_IN_HZ);
    actualAdcOperationFreq = periFreq / divNum;
    //ע��:ADC��ʱ��������PERI->unCLOCK_CTL[CY_ADC0_POT_PCLK].u32Register, Cy_SysClk_PeriphAssignDivider�ĵ�3��������Cy_SysClk_PeriphSetDivider�ĵ�2�������Ǵ洢�Ĵ������
    Cy_SysClk_PeriphAssignDivider(CY_ADC0_POT_PCLK, CY_SYSCLK_DIV_8_BIT, 0ul);
    Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0ul, (divNum - 1ul));
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0ul);
  }

  /* Initialize ADC */
  {
    uint32_t samplingCycle = (uint32_t)DIV_ROUND_UP((ANALOG_IN_SAMPLING_TIME_MIN_IN_NS * (uint64_t)actualAdcOperationFreq), 1000000000ull);

    cy_stc_adc_config_t g_adcConfig =
    {
      .preconditionTime    = 0u,
      .powerupTime         = 0u,
      .enableIdlePowerDown = false,
      .msbStretchMode      = CY_ADC_MSB_STRETCH_MODE_1CYCLE,
      .enableHalfLsbConv   = 0u,
      .sarMuxEnable        = true,
      .adcEnable           = true,
      .sarIpEnable         = true,
    };
    cy_stc_adc_channel_config_t g_adcChannelConfig =
    {
      .triggerSelection          = CY_ADC_TRIGGER_OFF,
      .channelPriority           = 0u,
      .preenptionType            = CY_ADC_PREEMPTION_FINISH_RESUME,
      .isGroupEnd                = true,  //ע��:��ǰ�ǵ�ͨ��ת��
      .doneLevel                 = CY_ADC_DONE_LEVEL_PULSE,
      .pinAddress                = CY_ADC0_POT_IN_NO2, //�����ADCx��ͨ����
      .portAddress               = CY_ADC_PORT_ADDRESS_SARMUX0,
      .extMuxSelect              = 0u,
      .extMuxEnable              = true,
      .preconditionMode          = CY_ADC_PRECONDITION_MODE_OFF,
      .overlapDiagMode           = CY_ADC_OVERLAP_DIAG_MODE_OFF,
      .sampleTime                = samplingCycle,
      .calibrationValueSelect    = CY_ADC_CALIBRATION_VALUE_REGULAR,
      .postProcessingMode        = CY_ADC_POST_PROCESSING_MODE_NONE,
      .resultAlignment           = CY_ADC_RESULT_ALIGNMENT_RIGHT,
      .signExtention             = CY_ADC_SIGN_EXTENTION_UNSIGNED,
      .averageCount              = 0u,
      .rightShift                = 0u,
      .rangeDetectionMode        = CY_ADC_RANGE_DETECTION_MODE_INSIDE_RANGE,
      .rangeDetectionLoThreshold = 0x0000u,
      .rangeDetectionHiThreshold = 0x0FFFu,
      .mask.grpDone              = true,
      .mask.grpCancelled         = false,
      .mask.grpOverflow          = false,
      .mask.chRange              = false,
      .mask.chPulse              = false,
      .mask.chOverflow           = false,
    };
    Cy_Adc_Init(CY_ADC0_POT_MACRO, &g_adcConfig);//CY_ADC_POT_MACROָ��PASS0->SAR[1],cy_stc_adc_config_t g_adcConfig
    Cy_Adc_Channel_Init(&CY_ADC0_POT_MACRO->CH[1], &g_adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irqCfg;
    irqCfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC0_POT_IRQN + 1),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irqCfg);
    Cy_SysInt_SetSystemIrqVector(irqCfg.sysIntSrc, AdcNtcHandler);//

    NVIC_SetPriority(irqCfg.intIdx, 11ul);
    NVIC_EnableIRQ(irqCfg.intIdx);
  }

  /* Enable ADC ch. */
  Cy_Adc_Channel_Enable(&CY_ADC0_POT_MACRO->CH[1]);
}

void PeripheralHalAdcStart(uint8_t sarNo)
{
  switch(sarNo)
  {
  case 0://
    g_adBuffer[AD_CHANNEL_KL30].adValid = 1;
    g_adBuffer[AD_CHANNEL_BATTERY].adValid = 1;
    g_adBuffer[AD_CHANNEL_NTC].adValid = 1;
    g_adBuffer[AD_CHANNEL_SYS_5V].adValid = 1;
    //Cy_Adc_Channel_SoftwareTrigger(&CY_ADC1_POT_MACRO->CH[0]);
    //Cy_Adc_Channel_SoftwareTrigger(&CY_ADC1_POT_MACRO->CH[1]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[0]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[1]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[2]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[3]);
    break;
  case 1:
    break;
  case 2:
    break;
  default:
    break;
  }
  
}
#endif
int16_t PeripheralHalAdGet(uint8_t adChannel,uint32_t *pValue)
{
    uint32_t temData;
    uint16_t adValue;
    uint8_t adValid;
    if( adChannel > AD1_CHANNEL_EXT_1PPS_ADC )
    {
        return -1;
    }
    //IRQ_DISABLE();
    // adValid = g_adBuffer.adValid;  // TODO guanyuan g_adBuffer[adChannel].adValid;
    //g_adBuffer[adChannel].adValid = 0x00;
    // adValue = g_adBuffer.adValue[adChannel];
    //IRQ_ENABLE();
    switch(adChannel)
    {
        case AD0_CHANNEL_MAIN_ANT_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_DIV_ANT_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_MIMO4_ANT_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_MIMO3_ANT_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_CV2X_ANT_TRX1_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_CV2X_ANT_TRX0_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_UWB_ANT1_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;


        case AD0_CHANNEL_VCC_BLE_DET:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_BUB_TEMP_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_BUB_VOLTAGE_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_BATTERY_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;
            
            
        case AD0_CHANNEL_MCU_GPS_ANT_ADC1:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_MCU_GPS_ANT_ADC0:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;
            
        case AD0_CHANNEL_UWB_ANT0_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_KL30:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_KL30_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD0_CHANNEL_beCALL_GenLED_StateDET_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;
            
        case AD0_CHANNEL_ANT_BLE_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

            /*  ADC1  */
        case AD1_CHANNEL_MCU_REV_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD1_CHANNEL_MIC_OUT_ADC_DET:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD1_CHANNEL_CDS_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD1_CHANNEL_MIC_IN_ADC_DET:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD1_CHANNEL_UWB_ANT2_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD1_CHANNEL_ECALL_BUTTON_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        case AD1_CHANNEL_EXT_1PPS_ADC:
            adValue = g_adBuffer.adValue[adChannel];
            adValid = g_adBuffer.adValid;
            if(adValid != 0)
            {
                temData = adValue*AD_REF_VOLTAGE;
                temData = temData/4096;
                temData = temData*AD_CHANNEL_NTC_FACTOR;
                *pValue = temData;
                return 0;
            }
            break;

        default:
            return -1;//invalid channel
            break;
    }
    return -2;
}
#if(0)
/********************************************
 * 
 *  Timer
 * 
**********************************************/
#define SYS_LED_PORT GPIO_PRT18
#define SYS_LED_PIN 3
#define SYS_LED_PIN_MUX P18_3_GPIO

static const cy_stc_gpio_pin_config_t g_sysLedPortPinCfg =
{
    .outVal = 1ul, // Pin output state 
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, // Drive mode 
    .hsiom = SYS_LED_PIN_MUX, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
};

#define TIME1_TCPWM_CNT          TCPWM0_GRP0_CNT1
#define TIME1_PLCK_CLOCKS       PCLK_TCPWM0_CLOCKS1

static cy_stc_tcpwm_counter_config_t const g_myCounterConfig =
{
    .period             = 1000 - 1,                             // 1ms
    .clockPrescaler     = CY_TCPWM_COUNTER_PRESCALER_DIVBY_1,   // 1us  once
    .runMode            = CY_TCPWM_PWM_CONTINUOUS,
    .countDirection     = CY_TCPWM_COUNTER_COUNT_UP,
    .debug_pause        = 0uL,
    .CompareOrCapture   = CY_TCPWM_COUNTER_MODE_COMPARE,
    .compare0           = 0,
    .compare0_buff      = 0,
    .compare1           = 0,
    .compare1_buff      = 0,
    .enableCompare0Swap = false,
    .enableCompare1Swap = false,
    .interruptSources   = 0uL,
    .capture0InputMode  = 3uL,
    .capture0Input      = 0uL,
    .reloadInputMode    = 3uL,
    .reloadInput        = 0uL,
    .startInputMode     = 3uL,
    .startInput         = 0uL,
    .stopInputMode      = 3uL,
    .stopInput          = 0uL,
    .capture1InputMode  = 3uL,
    .capture1Input      = 0uL,
    .countInputMode     = 3uL,
    .countInput         = 1uL,
    .trigger1           = CY_TCPWM_COUNTER_OVERFLOW,
};

static cy_stc_sysint_irq_t g_time1IrqCfg = 
{
    .sysIntSrc  = tcpwm_0_interrupts_1_IRQn,
    .intIdx     = CPUIntIdx3_IRQn,    //�û��ж�������,������ô�����T2G???
    .isEnabled  = true,
};


static uint8_t g_ledSleepFlag = 0;
static uint8_t g_ledModeFlag = 0; //0:nomal模式  1：升级快闪模式

void PeripheralHalSetLedFastFlash(void)
{
    g_ledModeFlag = 1;
}
void PeripheralHalSetLedNomalFlash(void)
{
    g_ledModeFlag = 0;
}

static void PeripheralHal1msTimerProcess(void)
{
  static uint32_t sysCnt = 0;
  static uint8_t  flag = 0;
  uint32_t count = 1000;
  if(g_ledModeFlag == 1)
  {
      count = 500;
  }
#if 1
  sysCnt += 1;

  if (sysCnt < count)
          return;

  sysCnt = 0;
  if(!g_ledSleepFlag)
  {
    if (0 == flag)
    {
      Cy_GPIO_Clr(SYS_LED_PORT,SYS_LED_PIN);
      flag = 1;
    }
    else
    {
      Cy_GPIO_Set(SYS_LED_PORT,SYS_LED_PIN);
      flag = 0;
    }          
  }
#endif	
}

static void Timer1Handler(void)//ms��ʱ��
{
    if(Cy_Tcpwm_Counter_GetTC_IntrMasked(TIME1_TCPWM_CNT) == 1ul)
    {
        Cy_Tcpwm_Counter_ClearTC_Intr(TIME1_TCPWM_CNT);
        /*********user to do******************/
        PeripheralHal1msTimerProcess();
    }
}

static void PeripheralHal1msTimerInit(void)
{
  //uint32_t periFreq = 80000000ul;
  //uint32_t targetFreq = 1000000ul;
  //uint32_t divNum = (periFreq / targetFreq);
  //CY_ASSERT((periFreq % targetFreq) == 0ul);

  Cy_SysClk_PeriphAssignDivider(PCLK_TCPWM0_CLOCKS1, (cy_en_divider_types_t)CY_SYSCLK_DIV_16_BIT, 1); 
  Cy_SysClk_PeriphSetDivider((cy_en_divider_types_t)CY_SYSCLK_DIV_16_BIT, 1, 79); //Divider 0 --> 80MHz / (79+1) = 1MHz
  Cy_SysClk_PeriphEnableDivider((cy_en_divider_types_t)CY_SYSCLK_DIV_16_BIT, 1); 
    
  Cy_SysInt_InitIRQ(&g_time1IrqCfg);
  Cy_SysInt_SetSystemIrqVector(g_time1IrqCfg.sysIntSrc, Timer1Handler); 
  /* Set the Interrupt Priority & Enable the Interrupt */
  NVIC_SetPriority(CPUIntIdx3_IRQn, 3u);  // 8��CPU�ж�������ʹ�������ͬʱʹ��1������Ҳ���ԡ�
  NVIC_ClearPendingIRQ(CPUIntIdx3_IRQn);
  NVIC_EnableIRQ(CPUIntIdx3_IRQn);
    
  /* Initialize TCPWM0_GPR0_CNT0 as Timer/Counter & Enable */
  Cy_Tcpwm_Counter_Init(TCPWM0_GRP0_CNT1, &g_myCounterConfig); 
  Cy_Tcpwm_Counter_Enable(TCPWM0_GRP0_CNT1);
  Cy_Tcpwm_TriggerStart(TCPWM0_GRP0_CNT1);  
  /* Enable Interrupt */
  Cy_Tcpwm_Counter_SetTC_IntrMask(TCPWM0_GRP0_CNT1);
}
#endif

static void PeripheralStartSysLed(void)
{
    // Init Timer with above configuration
    // PeripheralHal1msTimerInit();
    
    PORT.APBDC1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.APBDC1 |= _PORT_APBDCn1_APBDC_MODE_DISABLED;
    PORT.AP1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.AP1 |= _PORT_APn1_OUTPUT_LOW;
    PORT.APM1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.APM1 |= _PORT_APMn1_MODE_OUTPUT;
}

static void PeripheralHalStopSysLed(void)
{
    // g_ledSleepFlag = 1;
    R_PORT_SetGpioOutput(APort1, 1, 1);
}

static void PeripheralHalRestartSysLed(void)
{
    PORT.APBDC1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.APBDC1 |= _PORT_APBDCn1_APBDC_MODE_DISABLED;
    PORT.AP1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.AP1 |= _PORT_APn1_OUTPUT_LOW;
    PORT.APM1 &= (uint16_t) ~_PORT_APMn1_MODE_UNUSED;
    PORT.APM1 |= _PORT_APMn1_MODE_OUTPUT;
    // g_ledSleepFlag = 0;
}

void PeripheralHalSetMode(uint8_t mode)
{
    if(mode)
    {
        // Cy_GPIO_Set(SYS_ON_PORT,SYS_ON_PIN);
        // PeripheralHalRestartSysLed();
        // AMP_STB
        R_PORT_SetGpioOutput(Port1, 11, 1);
        // AMP_MUTE
        R_PORT_SetGpioOutput(Port1, 10, 0);
        // //Cy_GPIO_Set(FAULTZ_DET_PORT,FAULTZ_DET_PIN);
        // KL30_VOLTAGE _DET_EN
        R_PORT_SetGpioOutput(Port0, 12, 1);
        // KL30_DOWEN _DET_EN
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6, STD_HIGH);
        // GNSS_ANT_PWR_EN
        R_PORT_SetGpioOutput(Port10, 5, 1);
        // ANT_DET_PWR_EN
        R_PORT_SetGpioOutput(Port10, 10, 1);
        // beCALL_LED_EN
        R_PORT_SetGpioOutput(Port0, 14, 1);
        // DeepSleep_PWR_EN
        // R_PORT_SetGpioOutput(Port8, 0, 1);
    }
    else
    {
        // //close SYS_ON
        // Cy_GPIO_Clr(SYS_ON_PORT,SYS_ON_PIN);
        // KL30_VOLTAGE _DET_EN
        R_PORT_SetGpioOutput(Port0, 12, 0);
        // KL30_DOWEN _DET_EN
        Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6, STD_LOW);
        // GNSS_ANT_PWR_EN
        R_PORT_SetGpioOutput(Port10, 5, 0);
        // ANT_DET_PWR_EN
        R_PORT_SetGpioOutput(Port10, 10, 0);
        //close LED
        PeripheralHalStopSysLed();
        // AMP_STB
        R_PORT_SetGpioOutput(Port1, 11, 0);
        // AMP_MUTE
        R_PORT_SetGpioOutput(Port1, 10, 0);
        // //Cy_GPIO_Clr(FAULTZ_DET_PORT,FAULTZ_DET_PIN);
        // beCALL_LED_EN
        R_PORT_SetGpioOutput(Port0, 14, 0);
        // DeepSleep_PWR_EN
        // R_PORT_SetGpioOutput(Port8, 0, 0);
    }
}

/********************************************
 * 
 * MCU soft reset
 * 
**********************************************/
void PeripheralHalMcuHardReset(void)
{
    uint32_t reg32_value;

    do
    {
        reg32_value         = 0x00000001UL;
        WPROTR.PROTCMD0     = 0x000000A5UL;             /* Protection release the MOSCE register */
        RESCTL.SWRESA       = reg32_value;
        RESCTL.SWRESA       = ~reg32_value;
        RESCTL.SWRESA       = reg32_value;
    } while( PORT.PPROTS0 != 0x00000000UL );
}
/*********************************************/
#if(0)
/******************************************************************** 
 *
 *  
 *                      WatchDog
 * 
 * 
*********************************************************************/
static cy_stc_mcwdt_config_t g_mcwdtConfig =
{
    .coreSelect       = CY_MCWDT_PAUSED_BY_DPSLP_CM4_CM7_0,
    .c0LowerLimit     = 0,
    .c0UpperLimit     = 64000, /* 2sec when clk_lf = 32KHz */
    .c0WarnLimit      = 0,
    .c0LowerAction    = CY_MCWDT_ACTION_NONE,
    .c0UpperAction    = CY_MCWDT_ACTION_FAULT_THEN_RESET, /* Note */
    .c0WarnAction     = CY_MCWDT_WARN_ACTION_NONE,
    .c0AutoService    = CY_MCWDT_DISABLE,
    .c0SleepDeepPause = CY_MCWDT_ENABLE,
    .c0DebugRun       = CY_MCWDT_ENABLE,
    .c1LowerLimit     = 100,
    .c1UpperLimit     = 64000, /* 2sec when clk_lf = 32KHz */
    .c1WarnLimit      = 0,
    .c1LowerAction    = CY_MCWDT_ACTION_NONE,
    .c1UpperAction    = CY_MCWDT_ACTION_NONE,
    .c1WarnAction     = CY_MCWDT_WARN_ACTION_NONE,
    .c1AutoService    = CY_MCWDT_DISABLE,
    .c1SleepDeepPause = CY_MCWDT_ENABLE,
    .c1DebugRun       = CY_MCWDT_ENABLE,
    .c2ToggleBit      = CY_MCWDT_CNT2_MONITORED_BIT15,
    .c2Action         = CY_MCWDT_CNT2_ACTION_INT,
    .c2SleepDeepPause = CY_MCWDT_ENABLE,
    .c2DebugRun       = CY_MCWDT_ENABLE,
};

static void MCWDTInit(void)
{
    Cy_MCWDT_DeInit(MCWDT1);
    Cy_MCWDT_Init(MCWDT1, &g_mcwdtConfig);
    Cy_MCWDT_Unlock(MCWDT1);
    Cy_MCWDT_SetInterruptMask(MCWDT1, CY_MCWDT_CTR_Msk);
    Cy_MCWDT_Enable(MCWDT1,
                    CY_MCWDT_CTR_Msk,  // enable all counter
                    0);
    Cy_MCWDT_Lock(MCWDT1);
}

void PeripheralHalFeedWatchDog(void)
{
    Cy_MCWDT_ClearWatchdog(MCWDT1, CY_MCWDT_COUNTER0);
    Cy_MCWDT_WaitForCounterReset(MCWDT1, CY_MCWDT_COUNTER0);
}

/******************************************************************** 
 *
 *  
 *                      IRQ
 * 
 * 
*********************************************************************/

static void IrqPinInit(void)
{
  /*KL15*/
  Cy_GPIO_Pin_Init(KL15_IRQ_PORT, KL15_IRQ_PIN, &g_kl15PortPinCfg);
  Cy_SysInt_InitIRQ(&g_Kl15IrqCfg);
  Cy_SysInt_SetSystemIrqVector(g_Kl15IrqCfg.sysIntSrc, Port12Handler);
  NVIC_SetPriority(g_Kl15IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_Kl15IrqCfg.intIdx);

  /*kl30*/
  Cy_GPIO_Pin_Init(KL30_IRQ_PORT, KL30_IRQ_PIN, &g_kl30IrqPortPinCfg);
  Cy_SysInt_InitIRQ(&g_Kl30IrqCfg);
  Cy_SysInt_SetSystemIrqVector(g_Kl30IrqCfg.sysIntSrc, Port8Handler);
  NVIC_SetPriority(g_Kl30IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_Kl30IrqCfg.intIdx);

  /*can0-BCAN(CAN0_0)*/
  Cy_SysInt_SetSystemIrqVector(g_can0IrqCfg.sysIntSrc, Port2Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_can0IrqCfg);
  NVIC_SetPriority(g_can0IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_can0IrqCfg.intIdx);

  /*can1-DCAN*/
  Cy_SysInt_SetSystemIrqVector(g_can1IrqCfg.sysIntSrc, Port0Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_can1IrqCfg);
  NVIC_SetPriority(g_can1IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_can1IrqCfg.intIdx);

  /*CAN2-ACAN(CAN0_2)*/
  Cy_SysInt_SetSystemIrqVector(g_can2IrqCfg.sysIntSrc, Port6Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_can2IrqCfg);
  NVIC_SetPriority(g_can2IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_can2IrqCfg.intIdx);

  /*CAN3-ECAN(CAN1_0)*/
  Cy_SysInt_SetSystemIrqVector(g_can3IrqCfg.sysIntSrc, Port14Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_can3IrqCfg);
  NVIC_SetPriority(g_can3IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_can3IrqCfg.intIdx);

  /*CAN4-CCAN(CAN1_1)*/
  Cy_SysInt_SetSystemIrqVector(g_can4IrqCfg.sysIntSrc, Port17Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_can4IrqCfg);
  NVIC_SetPriority(g_can4IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_can4IrqCfg.intIdx);

  /*CAN5*/
  Cy_SysInt_SetSystemIrqVector(g_can5IrqCfg.sysIntSrc, Port18Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_can5IrqCfg);
  NVIC_SetPriority(g_can5IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_can5IrqCfg.intIdx);

  /*GSM*/
  Cy_GPIO_Pin_Init(GSM_IRQ_PORT, GSM_IRQ_PIN, &g_gsmIrqPortPinCfg);
  Cy_SysInt_InitIRQ(&g_gsmIrqCfg);
  Cy_SysInt_SetSystemIrqVector(g_gsmIrqCfg.sysIntSrc, Port22Handler);
  NVIC_SetPriority(g_gsmIrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_gsmIrqCfg.intIdx);

  /*BLE*/
  Cy_GPIO_Pin_Init(BLE_IRQ_PORT, BLE_IRQ_PIN, &g_bleIrqPortPinCfg);
  Cy_SysInt_InitIRQ(&g_blueIrqCfg);
  Cy_SysInt_SetSystemIrqVector(g_blueIrqCfg.sysIntSrc, Port17Handler);
  NVIC_SetPriority(g_blueIrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_blueIrqCfg.intIdx);
  
  if(GSensorHalGetWakeupFlag())
  {
    /*GSensor Irq*/
    Cy_GPIO_Pin_Init(Gsensor_IRQ_PORT, Gsensor_IRQ_PIN, &g_gSensorIrqPortPinCfg);
    Cy_SysInt_InitIRQ(&g_gSensorIrqCfg);
    Cy_SysInt_SetSystemIrqVector(g_gSensorIrqCfg.sysIntSrc, Port19Handler);
    NVIC_SetPriority(g_gSensorIrqCfg.intIdx, 3);
    NVIC_EnableIRQ(g_gSensorIrqCfg.intIdx);
    Cy_GPIO_ClearInterrupt(Gsensor_IRQ_PORT, Gsensor_IRQ_PIN);
  }
}
#endif
void PeripheralHalInit(void)
{
//   /*pin init,include KL15 KL30 CAN BLE 4G*/
//   IrqPinInit();

//   /*4G power init*/
//   PeripheralHalMpuPowerOnInit();

//   /*AMP init*/
//   PeripheralHalAmpInit();

//   /*SYS_ON init */
//   Cy_GPIO_Pin_Init(SYS_ON_PORT,SYS_ON_PIN,&g_sysOnCfg);

//   /*AD init*/
//   InitAdcKL30();
//   InitAdcBatt();
//   InitAdcNtc();

    // CAN1_STBY Receiver mode
    PORT.PPCMD11 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC11 &= (uint32_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PDSC11 |= _PORT_PDSCn12_SLOW_MODE_SELECT;
    PORT.PPCMD11 = _WRITE_PROTECT_COMMAND;
    PORT.PODC11 &= (uint32_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PODC11 |= _PORT_PODCn12_PUSH_PULL;
    PORT.PBDC11 &= (uint16_t)~_PORT_PMn12_MODE_UNUSED;
    PORT.PBDC11 |= _PORT_PBDCn12_PBDC_MODE_DISABLED;
    PORT.P11 &= (uint16_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.P11 |= _PORT_Pn12_OUTPUT_HIGH;
    PORT.PM11 &= (uint16_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PM11 |= _PORT_PMn12_MODE_OUTPUT;
    
    // CAN3_STBY Receiver mode
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC1 &= (uint32_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn1_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn1_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t)~_PORT_PMn1_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn1_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn1_OUTPUT_HIGH;
    PORT.PM1 &= (uint16_t) ~_PORT_PMn1_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn1_MODE_OUTPUT;

    // MCU_HSM_WAKE_UP
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC0 &= (uint32_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PDSC0 |= _PORT_PDSCn5_SLOW_MODE_SELECT;
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    PORT.PODC0 &= (uint32_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PODC0 |= _PORT_PODCn5_PUSH_PULL;
    PORT.PBDC0 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    PORT.PBDC0 |= _PORT_PBDCn5_PBDC_MODE_DISABLED;
    PORT.P0 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.P0 |= _PORT_Pn5_OUTPUT_LOW;
    PORT.PM0 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PM0 |= _PORT_PMn5_MODE_OUTPUT;

    // DeepSleep_PWR_EN
    PORT.PODC8 &= (uint32_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PODC8 |= _PORT_PODCn0_PUSH_PULL;
    PORT.PBDC8 &= (uint16_t)~_PORT_PMn0_MODE_UNUSED;
    PORT.PBDC8 |= _PORT_PBDCn0_PBDC_MODE_DISABLED;
    PORT.P8 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.P8 |= _PORT_Pn0_OUTPUT_HIGH;
    PORT.PM8 &= (uint16_t) ~_PORT_PMn0_MODE_UNUSED;
    PORT.PM8 |= _PORT_PMn0_MODE_OUTPUT;

    // MCU_HSM_SPI_CS
    PORT.PODC8 &= (uint32_t) ~_PORT_PMn7_MODE_UNUSED;
    PORT.PODC8 |= _PORT_PODCn7_PUSH_PULL;
    PORT.PBDC8 &= (uint16_t)~_PORT_PMn7_MODE_UNUSED;
    PORT.PBDC8 |= _PORT_PBDCn7_PBDC_MODE_DISABLED;
    PORT.P8 &= (uint16_t) ~_PORT_PMn7_MODE_UNUSED;
    PORT.P8 |= _PORT_Pn7_OUTPUT_LOW;
    PORT.PM8 &= (uint16_t) ~_PORT_PMn7_MODE_UNUSED;
    PORT.PM8 |= _PORT_PMn7_MODE_OUTPUT;

    // KL30_VOLTAGE _DET_EN 
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC0 &= (uint32_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PDSC0 |= _PORT_PDSCn12_SLOW_MODE_SELECT;
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    PORT.PODC0 &= (uint32_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PODC0 |= _PORT_PODCn12_PUSH_PULL;
    PORT.PBDC0 &= (uint16_t)~_PORT_PMn12_MODE_UNUSED;
    PORT.PBDC0 |= _PORT_PBDCn12_PBDC_MODE_DISABLED;
    PORT.P0 &= (uint16_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.P0 |= _PORT_Pn12_OUTPUT_HIGH;
    PORT.PM0 &= (uint16_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PM0 |= _PORT_PMn12_MODE_OUTPUT;

    // KL30_DOWEN _DET_EN
    Dio_WriteChannel(DioConf_DioChannel_DIO_Channel_KL30_DOWEN_DET_EN_Pin1_6, STD_HIGH);

    // GNSS_ANT_PWR_EN
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC10 &= (uint32_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PDSC10 |= _PORT_PDSCn5_SLOW_MODE_SELECT;
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PODC10 &= (uint32_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PODC10 |= _PORT_PODCn5_PUSH_PULL;
    PORT.PBDC10 &= (uint16_t)~_PORT_PMn5_MODE_UNUSED;
    PORT.PBDC10 |= _PORT_PBDCn5_PBDC_MODE_DISABLED;
    PORT.P10 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.P10 |= _PORT_Pn5_OUTPUT_HIGH;
    PORT.PM10 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PM10 |= _PORT_PMn5_MODE_OUTPUT;

    // ANT_DET_PWR_EN
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC10 &= (uint32_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.PDSC10 |= _PORT_PDSCn10_SLOW_MODE_SELECT;
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PODC10 &= (uint32_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.PODC10 |= _PORT_PODCn10_PUSH_PULL;
    PORT.PBDC10 &= (uint16_t)~_PORT_PMn10_MODE_UNUSED;
    PORT.PBDC10 |= _PORT_PBDCn10_PBDC_MODE_DISABLED;
    PORT.P10 &= (uint16_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.P10 |= _PORT_Pn10_OUTPUT_HIGH;
    PORT.PM10 &= (uint16_t) ~_PORT_PMn10_MODE_UNUSED;
    PORT.PM10 |= _PORT_PMn10_MODE_OUTPUT;

    // AMP_STB
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC1 &= (uint32_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.PDSC1 |= _PORT_PDSCn11_SLOW_MODE_SELECT;
    PORT.PPCMD1 = _WRITE_PROTECT_COMMAND;
    PORT.PODC1 &= (uint32_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.PODC1 |= _PORT_PODCn11_PUSH_PULL;
    PORT.PBDC1 &= (uint16_t)~_PORT_PMn11_MODE_UNUSED;
    PORT.PBDC1 |= _PORT_PBDCn11_PBDC_MODE_DISABLED;
    PORT.P1 &= (uint16_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.P1 |= _PORT_Pn11_OUTPUT_HIGH;
    PORT.PM1 &= (uint16_t) ~_PORT_PMn11_MODE_UNUSED;
    PORT.PM1 |= _PORT_PMn11_MODE_OUTPUT;

    // BLE_UART_RX
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC10 &= (uint32_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PDSC10 |= _PORT_PDSCn12_SLOW_MODE_SELECT;
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PODC10 &= (uint32_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PODC10 |= _PORT_PODCn12_PUSH_PULL;
    PORT.PBDC10 &= (uint16_t)~_PORT_PMn12_MODE_UNUSED;
    PORT.PBDC10 |= _PORT_PBDCn12_PBDC_MODE_DISABLED;
    PORT.P10 &= (uint16_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.P10 |= _PORT_Pn12_OUTPUT_LOW;
    PORT.PM10 &= (uint16_t) ~_PORT_PMn12_MODE_UNUSED;
    PORT.PM10 |= _PORT_PMn12_MODE_OUTPUT;

  /*1ms timer init*/
  PeripheralStartSysLed();

//   /*watch dog init*/
//   MCWDTInit();
}
#if(0)
//static uint8_t g_testModeFlag = 0;
void PeripheralHalSetTestMode(uint8_t testMode)
{

}

#define BB_POTI_ANALOG_MACRO       CY_ADC_POT_MACRO
#define BB_POTI_ANALOG_CHANNEL_NR  ((cy_en_adc_pin_address_t)CY_ADC_POT_IN_NO)
#define BB_POTI_ANALOG_PCLK        CY_ADC_POT_PCLK

#define ADC_LOGICAL_CHANNEL 2

#define MAX_ANALOG_VALUE   ((1UL << 12) - 1UL)  // 12-bit ADC

/* ADC regarding definitions */
static uint16_t g_resultBuffer[16];
static cy_stc_adc_ch_status_t  g_statusBuffer[16];
static uint8_t g_resultIdx;

static const cy_stc_adc_config_t g_adcConfig =
{
    .preconditionTime          = 0u,
    .powerupTime               = 0u,
    .enableIdlePowerDown       = false,
    .msbStretchMode            = CY_ADC_MSB_STRETCH_MODE_1CYCLE,
    .enableHalfLsbConv         = 0u,
    .sarMuxEnable              = true,
    .adcEnable                 = true,
    .sarIpEnable               = true,
};

static const cy_stc_adc_channel_config_t g_adcChannelConfig =
{
    .triggerSelection          = CY_ADC_TRIGGER_GENERIC0,    /* Select HW trigger, SAR0 generic input 0 */
    .channelPriority           = 0,
    .preenptionType            = CY_ADC_PREEMPTION_FINISH_RESUME,
    .isGroupEnd                = true,
    .doneLevel                 = CY_ADC_DONE_LEVEL_PULSE,
    .pinAddress                = (cy_en_adc_pin_address_t)CY_ADC_POT_IN_NO,
    .portAddress               = CY_ADC_PORT_ADDRESS_SARMUX0,
    .extMuxSelect              = 0,
    .extMuxEnable              = true,
    .preconditionMode          = CY_ADC_PRECONDITION_MODE_OFF,
    .overlapDiagMode           = CY_ADC_OVERLAP_DIAG_MODE_OFF,
    .sampleTime                = 60,
    .calibrationValueSelect    = CY_ADC_CALIBRATION_VALUE_REGULAR,
    .postProcessingMode        = CY_ADC_POST_PROCESSING_MODE_NONE,
    .resultAlignment           = CY_ADC_RESULT_ALIGNMENT_RIGHT,
    .signExtention             = CY_ADC_SIGN_EXTENTION_UNSIGNED,
    .averageCount              = 0,
    .rightShift                = 0,
    .rangeDetectionMode        = CY_ADC_RANGE_DETECTION_MODE_INSIDE_RANGE,
    .rangeDetectionLoThreshold = 0x0000,
    .rangeDetectionHiThreshold = 0x0FFF,
    .mask.grpDone              = true,
    .mask.grpCancelled         = false,
    .mask.grpOverflow          = false,
    .mask.chRange              = false,
    .mask.chPulse              = false,
    .mask.chOverflow           = false,
};

static const cy_stc_sysint_irq_t g_irqCfgAdc =
{
    .sysIntSrc  = CY_ADC_POT_IRQN,
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_irqCfgEvtgen =
{
    .sysIntSrc  = evtgen_0_interrupt_dpslp_IRQn,
    .intIdx     = CPUIntIdx4_IRQn,
    .isEnabled  = true,
};

static const cy_stc_evtgen_config_t g_evtgenTestConfig =
{
  #if (CY_USE_PSVP == 1)
    .frequencyRef          = 24000000, // clk_ref = clk_hf1 = CLK_PATH0 -> 24,000,000 for PSVP test.
    .frequencyLf           = 32000,    // clk_lf = 32,000 for PSVP test
  #else
    .frequencyRef          = 8000000,  //  clk_ref = clk_hf1 = CLK_PATH2 (IMO) -> 8,000,000 for silicon
    .frequencyLf           = 32000,    // clk_lf = 32,000 for silicon
  #endif
    .frequencyTick         = 1000000,  // Setting 1,000,000 Hz for event generator clock (clk_ref_div)
    .ratioControlMode      = CY_EVTGEN_RATIO_CONTROL_HW,
    .ratioValueDynamicMode = CY_EVTGEN_RATIO_DYNAMIC_MODE0,
};

static cy_stc_evtgen_struct_config_t g_evtgenTestStructureConfig =
{
    .functionalitySelection   = CY_EVTGEN_DEEPSLEEP_FUNCTIONALITY,
    .triggerOutEdge           = CY_EVTGEN_EDGE_SENSITIVE,
    .valueDeepSleepComparator = 10 * 1000000, // It wake CPU up after 1s.
    .valueActiveComparator    = 0.02 * 1000000, // It triggers ADC after 1.5s. means 0.5s after CPU being waked up.
    .userIsr = NULL,
};

static cy_stc_evtgen_struct_context_t g_evtgenStruct0Context;

static void AdcIntHandler(void)
{
   cy_stc_adc_interrupt_source_t intrSource = { false };
   Cy_Adc_Channel_GetInterruptMaskedStatus(&BB_POTI_ANALOG_MACRO->CH[ADC_LOGICAL_CHANNEL], &intrSource);
   
   if(intrSource.grpDone)
   {
     /* Get the result(s) */
     Cy_Adc_Channel_GetResult(&BB_POTI_ANALOG_MACRO->CH[ADC_LOGICAL_CHANNEL], &g_resultBuffer[g_resultIdx], &g_statusBuffer[g_resultIdx]);
     /* Clear inerrupt source */
     Cy_Adc_Channel_ClearInterruptStatus(&BB_POTI_ANALOG_MACRO->CH[ADC_LOGICAL_CHANNEL], &intrSource);
     g_adcCompletedFlag = 1;
   }
   else
   {
     CY_ASSERT(false);
   }
}

static void IrqEVTGENSleep(void)
{
    Cy_Evtgen_ClearStructInterruptDeepSleep(EVTGEN0,0);
    if(g_wakeupSourceFun != NULL)
    {
      g_wakeupSourceFun(WAKEUP_SOURCE_RTC_MCU);
    }
}

/*************************************************
  Function:       RtcWakeupInit
  Description:    RTC wake initialization
  Input:          time : RTC wake up time ,unit second
  Output:         none
  Return:         none
  Others:         none
*************************************************/
//static uint32_t g_rtcWakeupTime = 0;
void RtcWakeupInit(uint32_t time)
{
    /* ADC clock divider setting */
    Cy_SysClk_PeriphAssignDivider(BB_POTI_ANALOG_PCLK, CY_SYSCLK_DIV_16_BIT, 0u);
  #if (CY_USE_PSVP == 1)
    Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_16_BIT, 0u, 1u);
  #else
    Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_16_BIT, 0u, 5u);
  #endif
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_16_BIT, 0u);

    /*********************/
    /*  Enable clk_hf1   */
    /*********************/
  #if (CY_USE_PSVP == 1)
    Cy_SysClk_HfClkEnable(CY_SYSCLK_HFCLK_1);
    Cy_SysClk_HfClockSetSource(CY_SYSCLK_HFCLK_1, CY_SYSCLK_HFCLK_IN_CLKPATH0);  
  #else
    Cy_SysClk_ClkPathSetSource(2u, CY_SYSCLK_CLKPATH_IN_IMO);
    Cy_SysClk_HfClkEnable(CY_SYSCLK_HFCLK_1);
    Cy_SysClk_HfClockSetSource(CY_SYSCLK_HFCLK_1, CY_SYSCLK_HFCLK_IN_CLKPATH2);
  #endif

    /* Initialize ADC */
    /* Use tr_sar_gen_in[0] as the generic input 0 for SAR0 */
    Cy_Adc_SetGenericTriggerInput(PASS0_EPASS_MMIO, ADC_LOGICAL_CHANNEL, 0u, 0u);
    Cy_Adc_Init(BB_POTI_ANALOG_MACRO, &g_adcConfig);
    Cy_Adc_Channel_Init(&BB_POTI_ANALOG_MACRO->CH[ADC_LOGICAL_CHANNEL], &g_adcChannelConfig);

    /* Register ADC interrupt handler and enable interrupt */
    Cy_SysInt_InitIRQ(&g_irqCfgAdc);
    Cy_SysInt_SetSystemIrqVector(g_irqCfgAdc.sysIntSrc, AdcIntHandler);
    NVIC_SetPriority(CPUIntIdx3_IRQn, 3);
    NVIC_EnableIRQ(CPUIntIdx3_IRQn);

    /*******************************************/
    /*        Deinitialize peripherals         */
    /*******************************************/
    Cy_Evtgen_DeinitializeCompStruct(EVTGEN0, 0);
    Cy_Evtgen_Deinitialize(EVTGEN0);
    
    /*******************************************/
    /*  Interrupt setting for Event Generator  */
    /*******************************************/
    Cy_SysInt_InitIRQ(&g_irqCfgEvtgen);
    Cy_SysInt_SetSystemIrqVector(g_irqCfgEvtgen.sysIntSrc, IrqEVTGENSleep);
    NVIC_SetPriority(CPUIntIdx4_IRQn, 4);
    NVIC_EnableIRQ(CPUIntIdx4_IRQn);
    
    /*******************************************/
    /*  Initialize and start Event generator   */
    /*******************************************/
    Cy_Evtgen_Initialize(EVTGEN0,&g_evtgenTestConfig);

    /* Select trigger mux */
    Cy_TrigMux_Connect(TRIG_IN_MUX_6_EVTGEN_TR_OUT0,
                       TRIG_OUT_MUX_6_PASS_GEN_TR_IN0,
                       0u,
                       TRIGGER_TYPE_PASS_TR_SAR_GEN_IN__EDGE,
                       0u);

    /* Enable ADC ch. */
    Cy_Adc_Channel_Enable(&BB_POTI_ANALOG_MACRO->CH[ADC_LOGICAL_CHANNEL]);
        
    /*******************************************/
    /*  Initialize comparator structure 0      */
    /*******************************************/
    g_evtgenTestStructureConfig.valueDeepSleepComparator = time * 1000000;
    g_evtgenTestStructureConfig.valueActiveComparator =  time * 1000000 + 20 * 1000;
    Cy_Evtgen_InitializeCompStruct(EVTGEN0, 0, &g_evtgenTestStructureConfig, &g_evtgenStruct0Context);

    //g_rtcWakeupTime = time; 
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
int16_t RtcWakeUpProcess(uint32_t maxVoltage,uint32_t minVoltage)
{
#if 0
  Cy_Evtgen_DeinitializeCompStruct(EVTGEN0, 0);
#else
  uint32_t adValue;
  uint32_t timeCount = 100000;
  //uint8_t adValid;
  //Cy_Evtgen_InitializeCompStruct(EVTGEN0, 0, &g_evtgenTestStructureConfig, &g_evtgenStruct0Context);
  //Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[2]);
//  while(g_adcCompletedFlag == 0);
//  g_adcCompletedFlag = 0;
  
  Cy_Evtgen_DeinitializeCompStruct(EVTGEN0, 0);
  g_adcCompletedFlag = 0;
  //InitAdcKL30();
  TimerHalSetMode(1);
  //Cy_SysTick_DelayInUs(10000);
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
    return 0;
  }
  TBOX_PRINT("KL30 voltage conversion complete!\r\n");
  PeripheralHalAdGet(AD_CHANNEL_KL30,&adValue);
  TBOX_PRINT("KL30 voltage is : %d \r\n",adValue);
  if(adValue > maxVoltage || adValue < minVoltage)
  {
    return 1;
  }
  else
  {
    TimerHalSetMode(0);
    return 0;
  }
  
#endif
}
#endif
