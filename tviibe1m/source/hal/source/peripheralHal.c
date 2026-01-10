#include "cy_project.h"
#include "cy_device_headers.h"

#include "peripheralHal.h"
#include "batteryHal.h"
#include "logHal.h"

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
#define WAKEUP_SOURCE_HPD	       16

typedef enum
{
  PortGpioLow = 0,
  PortGpioHigh,
}en_port_gpio_level_t;

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

#define HPD_DET_IRQ_PORT     GPIO_PRT14
#define HPD_DET_IRQ_PIN      2
#define HPD_DET_IRQ_PIN_MUX  P14_2_GPIO
#define HPD_DET_IRQ_IRQN     ioss_interrupts_gpio_14_IRQn

static const cy_stc_gpio_pin_config_t g_hpdDetPortPinCfg =
{
    .outVal = 0ul, // Pin output state 
    .driveMode = CY_GPIO_DM_HIGHZ, // Drive mode 
    .hsiom = HPD_DET_IRQ_PIN_MUX, // HSIOM selection 
    .intEdge = CY_GPIO_INTR_RISING, // Interrupt Edge type
    .intMask = 1ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
};

static const cy_stc_sysint_irq_t g_hpdDetIrqCfg =
{
    .sysIntSrc  = HPD_DET_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,  // TODO guanyuan why???
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

static const cy_stc_gpio_pin_config_t g_GsmIrqPortPinCfg =
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

static const cy_stc_gpio_pin_config_t g_BleIrqPortPinCfg =
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

static const cy_stc_sysint_irq_t g_Can0IrqCfg =   //P2.1        BCAN
{
    .sysIntSrc  = CAN0_IRQ_IRQN,  //P2.1
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_Can1IrqCfg =   //P14.1       DCAN
{
    .sysIntSrc  = CAN1_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_Can2IrqCfg =   //P6.3        ACAN  
{
    .sysIntSrc  = CAN2_IRQ_IRQN,  //
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_Can3IrqCfg =   //P17.1       ECAN
{
    .sysIntSrc  = CAN3_IRQ_IRQN,  //
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_Can4IrqCfg =   //P18.7        CCAN
{
    .sysIntSrc  = CAN4_IRQ_IRQN,  //
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_Can5IrqCfg =   //P14.1       ����
{
    .sysIntSrc  = CAN5_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_GsmIrqCfg =   //P21.1(4G_RING)
{
    .sysIntSrc  = GSM_IRQ_IRQN,  
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

static const cy_stc_sysint_irq_t g_BlueIrqCfg =   //P18.2(BLE_WAKE_IN)
{
    .sysIntSrc  = BLE_IRQ_IRQN,  
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

static const cy_stc_gpio_pin_config_t g_AmpStbPortPinCfg =
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

#define MUTE_PORT           GPIO_PRT21
#define MUTE_PIN            5
#define MUTE_PIN_MUX        P21_5_GPIO

static const cy_stc_gpio_pin_config_t g_MutePortPinCfg =
{
    .outVal = 1ul, /* Pin output state */
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, /* Drive mode */
    .hsiom = MUTE_PIN_MUX, /* HSIOM selection */
    .intEdge = 0ul, /* Interrupt Edge type */
    .intMask = 0ul, /* Interrupt enable mask */
    .vtrip = 0ul, /* Input buffer voltage trip type */
    .slewRate = 0ul, /* Output buffer slew rate */
    .driveSel = 0ul, /* Drive strength */
};

#define AMP_MUTE_PORT           GPIO_PRT13
#define AMP_MUTE_PIN            5
#define AMP_MUTE_PIN_MUX        P13_5_GPIO

static const cy_stc_gpio_pin_config_t g_AmpMutePortPinCfg =
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

static const cy_stc_gpio_pin_config_t g_FaultzDetPortPinCfg =
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

static cy_stc_gpio_pin_config_t g_LinPortPinCfg =
{
    .outVal = 0ul, // Pin output state 
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, // Drive mode 
    .hsiom = P0_0_GPIO, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
}; 

static void PeripheralHalLinInit()
{
  g_LinPortPinCfg.hsiom = P5_0_GPIO;
  Cy_GPIO_Pin_Init(GPIO_PRT5,0,&g_LinPortPinCfg);
  g_LinPortPinCfg.hsiom = P5_1_GPIO;
  Cy_GPIO_Pin_Init(GPIO_PRT5,1,&g_LinPortPinCfg);
  g_LinPortPinCfg.hsiom = P5_2_GPIO;
  Cy_GPIO_Pin_Init(GPIO_PRT5,2,&g_LinPortPinCfg);
  g_LinPortPinCfg.hsiom = P5_3_GPIO;
  Cy_GPIO_Pin_Init(GPIO_PRT5,3,&g_LinPortPinCfg);
  Cy_GPIO_Clr(GPIO_PRT5,0);
  Cy_GPIO_Clr(GPIO_PRT5,1);
  Cy_GPIO_Clr(GPIO_PRT5,2);
  Cy_GPIO_Clr(GPIO_PRT5,3);
}

static void PeripheralHalAmpInit()
{
  Cy_GPIO_Pin_Init(AMP_STB_PORT,AMP_STB_PIN,&g_AmpStbPortPinCfg);
  Cy_GPIO_Pin_Init(AMP_MUTE_PORT,AMP_MUTE_PIN,&g_AmpMutePortPinCfg);
  Cy_GPIO_Pin_Init(FAULTZ_DET_PORT,FAULTZ_DET_PIN,&g_FaultzDetPortPinCfg);
  Cy_GPIO_Set(AMP_STB_PORT,AMP_STB_PIN);
  Cy_GPIO_Clr(AMP_MUTE_PORT,AMP_MUTE_PIN);

  Cy_GPIO_Pin_Init(MUTE_PORT,MUTE_PIN,&g_MutePortPinCfg);
  Cy_GPIO_Clr(MUTE_PORT,MUTE_PIN);
}

/********************************************
 * 
 * 4G modle power on
 * 
**********************************************/
#define MPU_POWER_ON_PORT     GPIO_PRT12
#define MPU_POWER_ON_PIN      3
#define MPU_POWER_ON_PIN_MUX  P12_3_GPIO

static const cy_stc_gpio_pin_config_t MpuPowerOnPortPinCfg =
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
  Cy_GPIO_Pin_Init(MPU_POWER_ON_PORT,MPU_POWER_ON_PIN,&MpuPowerOnPortPinCfg);
}

void PeripheralHalMpuPowerOn(uint8_t status)
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

typeSetWakeupSourceCallbackPtr g_WakeupSourceFun;
void PeripheralHalRegisterSetWakeupSourceCallback(typeSetWakeupSourceCallbackPtr pCallBackFun)
{
  g_WakeupSourceFun = pCallBackFun;
}


typeSetBatteryModeCallbackPtr g_BatteryModeFun;
void PeripheralHalRegisterSetBatteryModeCallback(typeSetBatteryModeCallbackPtr pCallBackFun)
{
  g_BatteryModeFun = pCallBackFun;
}

static void Port0Handler(void)
{
    uint32_t intStatus;

    intStatus = Cy_GPIO_GetInterruptStatusMasked(CY_CAN1_IRQ_PORT, CY_CAN1_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(CY_CAN1_IRQ_PORT, CY_CAN1_IRQ_PIN);
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_CAN2);
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_CAN1);
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_CAN3);
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
          //PeripheralHalMpuPowerOn(1);
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_KL30);
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_KL15);
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_CAN4);
        }
    }

    intStatus = Cy_GPIO_GetInterruptStatusMasked(HPD_DET_IRQ_PORT, HPD_DET_IRQ_PIN);
    if (intStatus != 0ul)
    {
        Cy_GPIO_ClearInterrupt(HPD_DET_IRQ_PORT, HPD_DET_IRQ_PIN);
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_HPD);
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_CAN5);
        }
    }

    intStatus_BLE = Cy_GPIO_GetInterruptStatusMasked(BLE_IRQ_PORT, BLE_IRQ_PIN);
    if (intStatus_BLE != 0ul)
    {
        Cy_GPIO_ClearInterrupt(BLE_IRQ_PORT, BLE_IRQ_PIN);
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_BLE);
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_CAN6);
        }
    }
}

//static void Port19Handler(void)
//{
//    
//}
//
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
        if(g_WakeupSourceFun != NULL)
        {
          g_WakeupSourceFun(WAKEUP_SOURCE_MPU);
        }
    }
}

//static void Port23Handler(void)
//{
//    
//}

int16_t PeripheralHalGetHpdStatus (void)
{
    if((Cy_GPIO_Read(HPD_DET_IRQ_PORT, HPD_DET_IRQ_PIN)) == PortGpioHigh)
    {
        //TBOX_PRINT("HPD state is error\r\n");
        return 1;
    }
    else
    {
        //TBOX_PRINT("HPD state is ok\r\n");
        return 0;
    }
}


int16_t PeripheralHalGetKl15Status (void)
{
  if((Cy_GPIO_Read(KL15_IRQ_PORT, KL15_IRQ_PIN)) == PortGpioHigh)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

int16_t PeripheralHalGetKl30Status (void)
{
  if((Cy_GPIO_Read(KL30_IRQ_PORT, KL30_IRQ_PIN)) == PortGpioHigh)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

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

/********************************************
 * 
 * ADC
 * 
**********************************************/

typedef struct
{
  uint16_t adValue;
  uint8_t adValid;  
}mcu_ad_convert_buffer_t;

mcu_ad_convert_buffer_t g_AdBuffer[15];
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

#define CY_ADC0_POT_IN_NO3               (cy_en_adc_pin_address_t)9
#define CY_ADC0_POT_PORT3                 GPIO_PRT7
#define CY_ADC0_POT_PIN3                  1
#define CY_ADC0_POT_PIN_MUX3              P7_1_GPIO

#define CY_ADC0_POT_PCLK                  PCLK_PASS0_CLOCK_SAR0
#define CY_ADC0_POT_IRQN                  pass_0_interrupts_sar_0_IRQn

#define CY_ADC1_POT_MACRO                PASS0_SAR1
#define CY_ADC1_POT_IN_NO0               (cy_en_adc_pin_address_t)18
#define CY_ADC1_POT_PORT0                 GPIO_PRT13
#define CY_ADC1_POT_PIN0                  6
#define CY_ADC1_POT_PIN_MUX0              P13_6_GPIO

#define CY_ADC1_POT_PCLK                  PCLK_PASS0_CLOCK_SAR1
#define CY_ADC1_POT_IRQN                  pass_0_interrupts_sar_32_IRQn

#define ADC_OPERATION_FREQUENCY_MAX_IN_HZ (26670000ul)
#define ANALOG_IN_SAMPLING_TIME_MIN_IN_NS (40000ul)
#define DIV_ROUND_UP(a,b) (((a) + (b)/2) / (b))

uint16_t g_Adc0ResultBuff[15][1];
cy_stc_adc_ch_status_t g_Adc0StatusBuff[15][1];
void AdcKl30Handler(void)
{
  cy_stc_adc_interrupt_source_t intrSource = { false };

  Cy_Adc_Channel_GetInterruptMaskedStatus(&CY_ADC0_POT_MACRO->CH[2], &intrSource);

  if(intrSource.grpDone)
  {
    Cy_Adc_Channel_GetResult(&CY_ADC0_POT_MACRO->CH[2], &g_Adc0ResultBuff[0][0], &g_Adc0StatusBuff[0][0]);
    g_AdBuffer[0].adValue = g_Adc0ResultBuff[0][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC0_POT_MACRO->CH[2], &intrSource);
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
    Cy_Adc_Channel_GetResult(&CY_ADC1_POT_MACRO->CH[0], &g_Adc0ResultBuff[3][0], &g_Adc0StatusBuff[3][0]);
    g_AdBuffer[3].adValue = g_Adc0ResultBuff[3][0];
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
    Cy_Adc_Channel_GetResult(&CY_ADC0_POT_MACRO->CH[3], &g_Adc0ResultBuff[1][0], &g_Adc0StatusBuff[1][0]);
    g_AdBuffer[1].adValue = g_Adc0ResultBuff[1][0];
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
    Cy_Adc_Channel_GetResult(&CY_ADC0_POT_MACRO->CH[1], &g_Adc0ResultBuff[2][0], &g_Adc0StatusBuff[2][0]);
    g_AdBuffer[2].adValue = g_Adc0ResultBuff[2][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC0_POT_MACRO->CH[1], &intrSource);
  }
  else
  {
    CY_ASSERT(false);      // Unexpected interrupt
  }
}

void AdcMicHandler(void)
{
  cy_stc_adc_interrupt_source_t intrSource = { false };

  Cy_Adc_Channel_GetInterruptMaskedStatus(&CY_ADC0_POT_MACRO->CH[4], &intrSource);

  if(intrSource.grpDone)
  {
    Cy_Adc_Channel_GetResult(&CY_ADC0_POT_MACRO->CH[4], &g_Adc0ResultBuff[AD_CHANNEL_MICP][0], &g_Adc0StatusBuff[AD_CHANNEL_MICP][0]);
    g_AdBuffer[AD_CHANNEL_MICP].adValue = g_Adc0ResultBuff[AD_CHANNEL_MICP][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC0_POT_MACRO->CH[4], &intrSource);
  }
  else
  {
    CY_ASSERT(false);      // Unexpected interrupt
  }
}

void AdcSosHandler(void)
{
  cy_stc_adc_interrupt_source_t intrSource = { false };

  Cy_Adc_Channel_GetInterruptMaskedStatus(&CY_ADC1_POT_MACRO->CH[0], &intrSource);

  if(intrSource.grpDone)
  {
    Cy_Adc_Channel_GetResult(&CY_ADC1_POT_MACRO->CH[0], &g_Adc0ResultBuff[AD_CHANNEL_SOS_KEY][0], &g_Adc0StatusBuff[AD_CHANNEL_SOS_KEY][0]);
    g_AdBuffer[AD_CHANNEL_SOS_KEY].adValue = g_Adc0ResultBuff[AD_CHANNEL_SOS_KEY][0];
    Cy_Adc_Channel_ClearInterruptStatus(&CY_ADC1_POT_MACRO->CH[0], &intrSource);
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

    cy_stc_adc_config_t adcConfig =
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
    cy_stc_adc_channel_config_t adcChannelConfig =
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
    Cy_Adc_Init(CY_ADC0_POT_MACRO, &adcConfig);
    Cy_Adc_Channel_Init(&CY_ADC0_POT_MACRO->CH[2], &adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irq_cfg;
    irq_cfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC0_POT_IRQN + 2),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irq_cfg);
    Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, AdcKl30Handler);//
    NVIC_SetPriority(irq_cfg.intIdx, 12ul);
    NVIC_EnableIRQ(irq_cfg.intIdx);
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
    cy_stc_adc_config_t adcConfig =
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
    cy_stc_adc_channel_config_t adcChannelConfig =
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
    Cy_Adc_Init(CY_ADC0_POT_MACRO, &adcConfig);//CY_ADC_POT_MACROָ��PASS0->SAR[1],cy_stc_adc_config_t adcConfig
    Cy_Adc_Channel_Init(&CY_ADC0_POT_MACRO->CH[3], &adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irq_cfg;
    irq_cfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC0_POT_IRQN + 3),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irq_cfg);
    Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, AdcBattHandler);//

    NVIC_SetPriority(irq_cfg.intIdx, 10ul);
    NVIC_EnableIRQ(irq_cfg.intIdx);
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

    cy_stc_adc_config_t adcConfig =
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
    cy_stc_adc_channel_config_t adcChannelConfig =
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
    Cy_Adc_Init(CY_ADC0_POT_MACRO, &adcConfig);//CY_ADC_POT_MACROָ��PASS0->SAR[1],cy_stc_adc_config_t adcConfig
    Cy_Adc_Channel_Init(&CY_ADC0_POT_MACRO->CH[1], &adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irq_cfg;
    irq_cfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC0_POT_IRQN + 1),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irq_cfg);
    Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, AdcNtcHandler);//

    NVIC_SetPriority(irq_cfg.intIdx, 11ul);
    NVIC_EnableIRQ(irq_cfg.intIdx);
  }

  /* Enable ADC ch. */
  Cy_Adc_Channel_Enable(&CY_ADC0_POT_MACRO->CH[1]);
}

/**
 * @brief //ADC[0]_9,P7.1
 * 
 */
static void InitAdcMic(void)
{
    /* ADC port setting (Note default port setting after reset is just fine),配置为ADC端口 */
    {
        cy_stc_gpio_pin_config_t adcPinConfig =
        {
            .outVal    = 0ul,
            .driveMode = CY_GPIO_DM_ANALOG,
            .hsiom     = CY_ADC0_POT_PIN_MUX3,
            .intEdge   = 0ul,
            .intMask   = 0ul,
            .vtrip     = 0ul,
            .slewRate  = 0ul,
            .driveSel  = 0ul,
        };
        Cy_GPIO_Pin_Init(CY_ADC0_POT_PORT3, CY_ADC0_POT_PIN3, &adcPinConfig);
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

    cy_stc_adc_config_t adcConfig =
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
    cy_stc_adc_channel_config_t adcChannelConfig =
    {
      .triggerSelection          = CY_ADC_TRIGGER_OFF,
      .channelPriority           = 0u,
      .preenptionType            = CY_ADC_PREEMPTION_FINISH_RESUME,
      .isGroupEnd                = true,  
      .doneLevel                 = CY_ADC_DONE_LEVEL_PULSE,
      .pinAddress                = CY_ADC0_POT_IN_NO3, 
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
    Cy_Adc_Init(CY_ADC0_POT_MACRO, &adcConfig);
    Cy_Adc_Channel_Init(&CY_ADC0_POT_MACRO->CH[4], &adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irqCfg;
    irqCfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC0_POT_IRQN + 4),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irqCfg);
    Cy_SysInt_SetSystemIrqVector(irqCfg.sysIntSrc, AdcMicHandler);//
    NVIC_SetPriority(irqCfg.intIdx, 9ul);
    NVIC_EnableIRQ(irqCfg.intIdx);
  }

  /* Enable ADC ch. */
  Cy_Adc_Channel_Enable(&CY_ADC0_POT_MACRO->CH[4]);
}

/**
 * @brief //ADC[1]_18,P13.6
 * 
 */
static void InitAdcSos(void)
{
    /* ADC port setting (Note default port setting after reset is just fine),配置为ADC端口 */
    {
        cy_stc_gpio_pin_config_t adcPinConfig =
        {
            .outVal    = 0ul,
            .driveMode = CY_GPIO_DM_ANALOG,
            .hsiom     = CY_ADC1_POT_PIN_MUX0,
            .intEdge   = 0ul,
            .intMask   = 0ul,
            .vtrip     = 0ul,
            .slewRate  = 0ul,
            .driveSel  = 0ul,
        };
        Cy_GPIO_Pin_Init(CY_ADC1_POT_PORT0, CY_ADC1_POT_PIN0, &adcPinConfig);
    }

    /* ADC clock divider setting */
  uint32_t actualAdcOperationFreq;
  {   
    uint32_t periFreq = 80000000ul;
    uint32_t divNum = DIV_ROUND_UP(periFreq, ADC_OPERATION_FREQUENCY_MAX_IN_HZ);
    actualAdcOperationFreq = periFreq / divNum;
    Cy_SysClk_PeriphAssignDivider(CY_ADC1_POT_PCLK, CY_SYSCLK_DIV_8_BIT, 0ul);
    Cy_SysClk_PeriphSetDivider(CY_SYSCLK_DIV_8_BIT, 0ul, (divNum - 1ul));
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_8_BIT, 0ul);
  }

  /* Initialize ADC */
  {
    uint32_t samplingCycle = (uint32_t)DIV_ROUND_UP((ANALOG_IN_SAMPLING_TIME_MIN_IN_NS * (uint64_t)actualAdcOperationFreq), 1000000000ull);

    cy_stc_adc_config_t adcConfig =
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
    cy_stc_adc_channel_config_t adcChannelConfig =
    {
      .triggerSelection          = CY_ADC_TRIGGER_OFF,
      .channelPriority           = 0u,
      .preenptionType            = CY_ADC_PREEMPTION_FINISH_RESUME,
      .isGroupEnd                = true,  
      .doneLevel                 = CY_ADC_DONE_LEVEL_PULSE,
      .pinAddress                = CY_ADC1_POT_IN_NO0, 
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
    Cy_Adc_Init(CY_ADC1_POT_MACRO, &adcConfig);
    Cy_Adc_Channel_Init(&CY_ADC1_POT_MACRO->CH[0], &adcChannelConfig);
  }

  /* Register ADC interrupt handler and enable interrupt */
  {
    cy_stc_sysint_irq_t irqCfg;
    irqCfg = (cy_stc_sysint_irq_t){
        .sysIntSrc  = (cy_en_intr_t)((uint32_t)CY_ADC1_POT_IRQN + 0),
        .intIdx     = CPUIntIdx6_IRQn,
        .isEnabled  = true,
    };
    Cy_SysInt_InitIRQ(&irqCfg);
    Cy_SysInt_SetSystemIrqVector(irqCfg.sysIntSrc, AdcSosHandler);//
    NVIC_SetPriority(irqCfg.intIdx, 18ul);
    NVIC_EnableIRQ(irqCfg.intIdx);
  }

  /* Enable ADC ch. */
  Cy_Adc_Channel_Enable(&CY_ADC1_POT_MACRO->CH[0]);
}

void PeripheralHalAdcStart(uint8_t SAR_No)
{
  switch(SAR_No)
  {
  case 0://
    g_AdBuffer[AD_CHANNEL_KL30].adValid = 1;
    g_AdBuffer[AD_CHANNEL_BATTERY].adValid = 1;
    g_AdBuffer[AD_CHANNEL_NTC].adValid = 1;
    g_AdBuffer[AD_CHANNEL_SYS_5V].adValid = 1;
    g_AdBuffer[AD_CHANNEL_MICP].adValid = 1;
    g_AdBuffer[AD_CHANNEL_SOS_KEY].adValid = 1;
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC1_POT_MACRO->CH[0]);
    //Cy_Adc_Channel_SoftwareTrigger(&CY_ADC1_POT_MACRO->CH[1]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[0]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[1]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[2]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[3]);
    Cy_Adc_Channel_SoftwareTrigger(&CY_ADC0_POT_MACRO->CH[4]);
    break;
  case 1:
    break;
  case 2:
    break;
  default:
    break;
  }
  
}

int16_t PeripheralHalAdGet(uint8_t AdChannel,uint32_t *pValue)
{
  uint32_t TemData;
  uint16_t adValue;
  uint8_t adValid;
  if(AdChannel>=(sizeof(g_AdBuffer)/sizeof(g_AdBuffer[0])))
  {
    return -1;
  }
  //IRQ_DISABLE();
  adValid = g_AdBuffer[AdChannel].adValid;
  //g_AdBuffer[AdChannel].adValid = 0x00;
  adValue = g_AdBuffer[AdChannel].adValue;
  //IRQ_ENABLE();
  if(AD_CHANNEL_KL30==AdChannel)
  {    
      if(adValid != 0)
      {
        //ADC1_bConversionEnd = FALSE;
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_KL30_FACTOR;
        *pValue = TemData;
        return 0;// end
      }
  }
  else if(AD_CHANNEL_BATTERY==AdChannel)
  {
      if(adValid != 0)
      {
        //ADC2_bConversionEnd = FALSE;
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_BATTERY_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }
  else if(AD_CHANNEL_NTC==AdChannel)
  {
      if(adValid != 0)
      {
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_NTC_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }
  else if(AD_CHANNEL_MICP == AdChannel)
  {
      if(adValid != 0)
      {
        TemData = adValue * AD_REF_VOLTAGE;
        TemData = TemData / 4096;
        TemData = TemData * AD_CHANNEL_MICP_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }
  /*else if(AD_CHANNEL_CAN_POWER==AdChannel)
  {
      if(adValid != 0)
      {
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_CAN_POWER_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }
  else if(AD_CHANNEL_SYS_5V==AdChannel)
  {
      if(adValid != 0)
      {
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_CAN_POWER_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }
  else if(AD_CHANNEL_VCC_NAND==AdChannel)
  {
      if(adValid != FALSE)
      {
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_VCC_NAND_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }*/
  /*else if(AD_CHANNEL_V_GSM==AdChannel)
  {
      if(adValid != FALSE)
      {
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_V_GSM_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }*/
  /*else if(AD_CHANNEL_V_BLUE==AdChannel)
  {
      if(adValid != FALSE)
      {
        TemData = adValue*AD_REF_VOLTAGE;
        TemData = TemData/4096;
        TemData = TemData*AD_CHANNEL_V_BLUE_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }  */
  else if(AD_CHANNEL_SOS_KEY == AdChannel)
  {
      if(adValid != 0)
      {
        TemData = adValue * AD_REF_VOLTAGE;
        TemData = TemData / 4096;
        TemData = TemData * AD_CHANNEL_SOS_FACTOR;
        *pValue = TemData;        
        return 0;// end
      }    
  }
  else 
  {
    return -1;//invalid channel
  }
  return -2;
}

/********************************************
 * 
 *  Timer
 * 
**********************************************/
#define SYS_LED_PORT GPIO_PRT14
#define SYS_LED_PIN 0
#define SYS_LED_PIN_MUX P14_0_GPIO

static const cy_stc_gpio_pin_config_t SysLedPortPinCfg =
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

static cy_stc_tcpwm_counter_config_t const MyCounter_config =
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

static cy_stc_sysint_irq_t time1_irq_cfg = 
{
    .sysIntSrc  = tcpwm_0_interrupts_1_IRQn,
    .intIdx     = CPUIntIdx3_IRQn,    //�û��ж�������,������ô�����T2G???
    .isEnabled  = true,
};

static void Timer1_Handler(void)//ms��ʱ��
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
    
  Cy_SysInt_InitIRQ(&time1_irq_cfg);
  Cy_SysInt_SetSystemIrqVector(time1_irq_cfg.sysIntSrc, Timer1_Handler); 
  /* Set the Interrupt Priority & Enable the Interrupt */
  NVIC_SetPriority(CPUIntIdx3_IRQn, 3u);  // 8��CPU�ж�������ʹ�������ͬʱʹ��1������Ҳ���ԡ�
  NVIC_ClearPendingIRQ(CPUIntIdx3_IRQn);
  NVIC_EnableIRQ(CPUIntIdx3_IRQn);
    
  /* Initialize TCPWM0_GPR0_CNT0 as Timer/Counter & Enable */
  Cy_Tcpwm_Counter_Init(TCPWM0_GRP0_CNT1, &MyCounter_config); 
  Cy_Tcpwm_Counter_Enable(TCPWM0_GRP0_CNT1);
  Cy_Tcpwm_TriggerStart(TCPWM0_GRP0_CNT1);  
  /* Enable Interrupt */
  Cy_Tcpwm_Counter_SetTC_IntrMask(TCPWM0_GRP0_CNT1);
}

static uint8_t g_ledSleepFlag = 0;

void PeripheralHal1msTimerProcess(void)
{
  static uint32_t s_sys_cnt = 0;
  static uint8_t  flag = 0;
#if 1
  s_sys_cnt += 1;

  if (s_sys_cnt < 1000)
          return;

  s_sys_cnt = 0;
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

static void PeripheralStartSysLed(void)
{
    // Init Timer with above configuration
    PeripheralHal1msTimerInit();
    
    Cy_GPIO_Pin_Init(SYS_LED_PORT, SYS_LED_PIN, &SysLedPortPinCfg);
}

static void PeripheralHalStopSysLed(void)
{
  g_ledSleepFlag = 1;
  Cy_GPIO_Clr(SYS_LED_PORT,SYS_LED_PIN);
}

void PeripheralHalRestartSysLed(void)
{
  Cy_GPIO_Pin_Init(SYS_LED_PORT, SYS_LED_PIN, &SysLedPortPinCfg);
  g_ledSleepFlag = 0;
}

void PeripheralHalSetMode(uint8_t mode)
{
  if(mode)
  {
    Cy_GPIO_Set(SYS_ON_PORT,SYS_ON_PIN);
    PeripheralHalRestartSysLed();
    Cy_GPIO_Set(AMP_STB_PORT,AMP_STB_PIN);
    Cy_GPIO_Clr(AMP_MUTE_PORT,AMP_MUTE_PIN);
    /* Initialize TCPWM0_GPR0_CNT0 as Timer/Counter & Enable */
    Cy_Tcpwm_Counter_Init(TCPWM0_GRP0_CNT1, &MyCounter_config); 
    Cy_Tcpwm_Counter_Enable(TCPWM0_GRP0_CNT1);
    Cy_Tcpwm_TriggerStart(TCPWM0_GRP0_CNT1);  
    /* Enable Interrupt */
    Cy_Tcpwm_Counter_SetTC_IntrMask(TCPWM0_GRP0_CNT1);

    //Cy_GPIO_Set(FAULTZ_DET_PORT,FAULTZ_DET_PIN);
  }
  else
  {
    //close SYS_ON
    Cy_GPIO_Clr(SYS_ON_PORT,SYS_ON_PIN);
    //close LED
    PeripheralHalStopSysLed();
    //close 
    Cy_GPIO_Clr(AMP_STB_PORT,AMP_STB_PIN);
    Cy_GPIO_Clr(AMP_MUTE_PORT,AMP_MUTE_PIN);
    //Cy_GPIO_Clr(FAULTZ_DET_PORT,FAULTZ_DET_PIN);
  }
  
}

/********************************************
 * 
 * MCU soft reset
 * 
**********************************************/
void PeripheralHalMcuHardReset(void)
{
  NVIC_SystemReset();
}
/*********************************************/

/******************************************************************** 
 *
 *  
 *                      WatchDog
 * 
 * 
*********************************************************************/
static cy_stc_mcwdt_config_t mcwdtConfig =
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

static void MCWDT_Init(void)
{
    Cy_MCWDT_DeInit(MCWDT1);
    Cy_MCWDT_Init(MCWDT1, &mcwdtConfig);
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
  Cy_SysInt_SetSystemIrqVector(g_Can0IrqCfg.sysIntSrc, Port2Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_Can0IrqCfg);
  NVIC_SetPriority(g_Can0IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_Can0IrqCfg.intIdx);

  /*can1-DCAN*/
  Cy_SysInt_SetSystemIrqVector(g_Can1IrqCfg.sysIntSrc, Port0Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_Can1IrqCfg);
  NVIC_SetPriority(g_Can1IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_Can1IrqCfg.intIdx);

  /*CAN2-ACAN(CAN0_2)*/
  Cy_SysInt_SetSystemIrqVector(g_Can2IrqCfg.sysIntSrc, Port6Handler);
  //Cy_GPIO_Pin_Init(irq_gpio_table[irq_index].base, irq_gpio_table[irq_index].pinNum, irq_gpio_table[irq_index].config);
  Cy_SysInt_InitIRQ(&g_Can2IrqCfg);
  NVIC_SetPriority(g_Can2IrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_Can2IrqCfg.intIdx);

  /*MPU_WAKE*/
  Cy_GPIO_Pin_Init(GSM_IRQ_PORT, GSM_IRQ_PIN, &g_GsmIrqPortPinCfg);
  Cy_SysInt_InitIRQ(&g_GsmIrqCfg);
  Cy_SysInt_SetSystemIrqVector(g_GsmIrqCfg.sysIntSrc, Port22Handler);
  NVIC_SetPriority(g_GsmIrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_GsmIrqCfg.intIdx);
  
  /*HTP_DET*/
  Cy_GPIO_Pin_Init(HPD_DET_IRQ_PORT, HPD_DET_IRQ_PIN, &g_hpdDetPortPinCfg);
  Cy_SysInt_InitIRQ(&g_hpdDetIrqCfg);
  Cy_SysInt_SetSystemIrqVector(g_hpdDetIrqCfg.sysIntSrc, Port14Handler);
  NVIC_SetPriority(g_hpdDetIrqCfg.intIdx, 3);
  NVIC_EnableIRQ(g_hpdDetIrqCfg.intIdx);

  /*BLE*/
  //Cy_GPIO_Pin_Init(BLE_IRQ_PORT, BLE_IRQ_PIN, &g_BleIrqPortPinCfg);
  //Cy_SysInt_InitIRQ(&g_BlueIrqCfg);
  //Cy_SysInt_SetSystemIrqVector(g_BlueIrqCfg.sysIntSrc, Port17Handler);
  //NVIC_SetPriority(g_BlueIrqCfg.intIdx, 3);
  //NVIC_EnableIRQ(g_BlueIrqCfg.intIdx);
  
}

void PeripheralHalInit(void)
{
  /*pin init,include KL15 KL30 CAN BLE 4G*/
  IrqPinInit();

  /*4G power init*/
  PeripheralHalMpuPowerOnInit();

  /*AMP init*/
  PeripheralHalAmpInit();

  /*LIN init*/
  // PeripheralHalLinInit();

  /*SYS_ON init */
  Cy_GPIO_Pin_Init(SYS_ON_PORT,SYS_ON_PIN,&g_sysOnCfg);

  /*AD init*/
  InitAdcKL30();
  InitAdcBatt();
  InitAdcNtc();
  InitAdcMic();
  InitAdcSos();

  /*1ms timer init*/
  PeripheralStartSysLed();

  /*watch dog init*/
  MCWDT_Init();
}

void PeripheralHalSetTestMode(uint8_t testMode)
{

}

