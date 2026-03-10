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
#include "platform_cfg.h"    
#include "common_drv.h"        
#include "peripheralHal.h"
#include "pmu_drv.h"        
#include "scm_drv.h"        
#include "sysctrl_drv.h"    
#include "clock_drv.h"        
#include "flash_drv.h"        
#include "gpio_drv.h"    
#include "wdog_drv.h"        
#include "canHal.h"
#include "serial.h"
#include "mpuHal.h"
#include "flashHal.h"
#include "firmwareUpdateSdk.h"
#include "logHal.h"
#include "timerHal.h"
#include "int_drv.h"

/****************************** Macro Definitions ******************************/
#pragma location=".bootinfo"                                                    //for some boot info
__root const uint8_t hardwareVersion[17] = {"87H6ADE060  H.000"};               //for app search hardware version
/****************************** Type Definitions ******************************/
typedef enum
{
    CLOCK_ERR_NO = 0U,        // No Clock Error
    CLOCK_ERR_FIRC = 1U,    // FIRC Clock Error
    CLOCK_ERR_HSOSC = 2U,    // HSOSC Clock Error
    CLOCK_ERR_PLL = 3U,        // PLL Clock Error
} CLOCK_ERR_Type;

/****************************** Global Variables ******************************/
#ifdef OTA_ON_CAN_UPDATE
const CanConfigure_t g_globalCanfdConfig[] = 
{
    {
        .canChannel = TBOX_CAN_CHANNEL_1,
        // .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },
    {
        .canChannel = TBOX_CAN_CHANNEL_2,
        // .canFdMode = 1,
        .bandrate = E_CAN_500K,
        .dataBandrate = E_CAN_2000K,
        .busOffEventFun = NULL,
    },

};
#endif

//PLL initialization configuration: use FIRC as the PLL clock source. PLL generates 120MHz clock
//((64/4)*30/2)/8 = 120MHz
CLK_PLLConfig_t CLK_PLL_Cfg_FIRC =
{
    .pllPreDivider = PLL_PRE_DIV_VALUE_4,    //PLL clock source pre-division ratio
    .pllPostDivider = PLL_POST_DIV_VALUE_8,    //PLL clock output division ratio
    .pllMultiplier = 30,                //PLL multiplication ratio. Range: 8--255
    .pllRefClock = PLL_FIRC64M_CLK,            //Select FIRC as the PLL clock source
    .pllPreScaler = PLL_SCALER_VALUE_2,        //PLL prescaler division ratio
};

//PLL initialization configuration: use HSOSC(typically 8M) as the PLL clock source. PLL generates 120MHz clock
//((8/1)*60/2)/8 = 120MHz//demo Mcu HSOSC = 40m,So ((8/1)*12)/8 = 120
CLK_PLLConfig_t CLK_PLL_Cfg_HSOSC =
{
    .pllPreDivider = PLL_PRE_DIV_VALUE_1,    //PLL clock source pre-division ratio
    .pllPostDivider = PLL_POST_DIV_VALUE_8,    //PLL clock output division ratio
    .pllMultiplier = 60,                //PLL multiplication ratio. Range: 8--255
    .pllRefClock = PLL_OSC_CLK,            //Select HSOSC as the PLL clock source
    .pllPreScaler = PLL_SCALER_VALUE_2,        //PLL prescaler division ratio
};

/****************************** Function Declarations *************************/
static uint32_t Clock_HSOSC_Int_Cnt;    //HSOSC interrupt counter: increment when failure occurs, need to be cleared manually
static void BootReadyInit(void);
static void BootRunInit(void);
//static CLOCK_ERR_Type Clock_ErrCode;    //Clock error code: record HSOSC and PLL errors
void CLOCK_HSOSCLOC_ISR(void);    //HSOSC clock failure interrupt handler
extern uint32_t __vector_table;    

/****************************** Public Function Implementations ***************/
/*****************************************************************************
 * Function Name: PMU_Init
 * Description  : Initialize Power Management Unit (PMU)
 * Parameters   : None
 * Return Value : None
 * Notes        : 1. PMU module manages the internal power supply, enable/disable, voltage monitoring, and reset of the chip.
 *                2. PMU initialization should be done before initializing other modules.
****************************************************************************/
void PMU_Init(void)
{
    // Clear isolation state flags for IO ports and ADC, CMP, SPLL modules when exiting STANDBY mode
    PMU_IsoClr();    // Clear isolation state flags for IO ports and ADC, CMP, SPLL modules
    PMU_Ctrl(PMU_REF_BUF_1V, ENABLE);        // Enable internal 1V reference voltage
}

/*****************************************************************************
 * Function Name: SCM_Init
 * Description  : Initialize System Control Module (SCM)
 * Parameters   : None
 * Return Value : None
 * Notes        : 1. In Cortex-M4 core, enabling Cache function can improve CPU access efficiency.
****************************************************************************/
void SCM_Init(void)
{
    SCM_CacheClr();            // Clear Cache
    SCM_CacheEnable(ENABLE);    // Enable Cache
    SCM_ParityMissEnable(ENABLE);// Enable Cache parity miss function. Must be enabled when using Cache
}

/*****************************************************************************
 * Function Name: CLOCK_Init
 * Description  : Initialize clock module (SCC).
 * Parameters   : None
 * Return Value : None
 * Note         : 1. Fpll = ((RefClk * PreDiv) * Multi * PreScaler) / PostDiv. When the PLL clock source frequency is within the range (4-16MHz),
 *                   the multiplied frequency should be within the range (0.8-1.2GHz).
 *                2. The system clock is used for FLASH clock. The recommended FLASH clock value is ≤ 8MHz.
 *                3. For system clock introduction, please refer to "Peripheral clock summary".
 *                4. According to the EMC application selection, select the clock source: For stable and high-precision clocks, select internal FIRC as the PLL clock source;
 *                   For industrial fields with high requirements, select external crystal; for general modules, select internal FIRC.
 *                5. When the external crystal frequency is higher than 24MHz, select high-speed mode; when lower than 20MHz, select low-speed mode.
 *                6. Before configuring the PLL, ensure that the system clock is switched to FIRC to prevent system clock from losing clock source during configuration.
 *                7. Before switching the clock source, ensure that the FLASH wait state is configured.
 *                8. The SCC_IRQn interrupt priority should be set to 0 (highest) to ensure timely processing of clock interrupts when configuring multiple clock sources.
****************************************************************************/
void CLOCK_Init(void)
{
    ResultStatus_t retVal = SUCC;
    uint32_t delayCnt = 0u;
    
    /* 设置内核时钟和总线时钟分频系数 */
    CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);   /* 内核时钟1分频 */
    CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);    /* 总线时钟2分频 */

    /* 
     * 使能外部晶振
     * 当外部晶振频率 大于等于24M时 第一个参数传 CLK_OSC_FREQ_MODE_HIGH
     * 当外部晶振频率小于24M时第一个参数传CLK_OSC_FREQ_MODE_LOW
     */
    for (uint8_t i = 0u; i < 3u; i++) {
        retVal = CLK_OSC40MEnable(CLK_OSC_FREQ_MODE_LOW, DISABLE, CLK_OSC_XTAL);
        if (SUCC == retVal) {
            break;
        }
    }
    
    if (SUCC == retVal)
    {
        CLK_PLLConfig(&CLK_PLL_Cfg_HSOSC);       /* 初始化PLL配置 */
        while (ERR == CLK_PLLEnable(DISABLE))    /* 使能PLL */
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }
              
        /* 设置FLASH 等待状态时间 详细配置说明请参考FLASH_FCTRL寄存器描述 */
        FLASH_SetWaitState(4);
              
        /* 等待系统时钟源切换为PLL */
        delayCnt = 0u;
        while (ERR == CLK_SysClkSrc(CLK_SYS_PLL))  /* 内核选择PLL时钟 */
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }

        //Initialize CLOCK interrupt        
        CLK_InstallCallBackFunc(CLK_INT_OSCLOC, &CLOCK_HSOSCLOC_ISR);//Register interrupt callback function
        CLK_OSC40MMonitorEnable(CLK_MON_INT);    //Enable external crystal monitoring (when clock fails, trigger interrupt)
        
        INT_SetPriority(SCC_IRQn, 0x0);    //Set SCC_IRQn interrupt priority (low)0--15(high)
        INT_EnableIRQ(SCC_IRQn);            //Enable SCC_IRQn interrupt

        /* 
         * FLASH 擦写时钟必须设置为 8M 
         * MCU进入stop模式前需将 FLASH 时钟源切换为 SLOW clock
         */
        SYSCTRL_DisableModule(SYSCTRL_FLASH);      /* 切换FLASH 控制器功能时钟之前，需要先关闭FLASH模块，否则时钟切换无效 */
        CLK_SetClkDivider(CLK_SLOW, CLK_DIV_3);    /* CLK_SLOW = 160M / 3 = 40M，CLK_SLOW由内核时钟直接分配过来 */
        delayCnt = 0u;
        while (ERR == CLK_ModuleSrc(CLK_FLASH, CLK_SRC_SLOW))  /* 选择SLOW时钟作为FLASH时钟源 */
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }
        CLK_SetClkDivider(CLK_FLASH, CLK_DIV_5);   /* FLASH时钟源5分频，设置FLASH擦写时钟为 8M。(8M = 40M / 5) */
        SYSCTRL_EnableModule(SYSCTRL_FLASH);       /* 使能 FLASH 控制器模块时钟 */
        delayCnt = 0u;
        while (ERR == FLASH_Init())       /* 初始化FLASH模块 */
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }
    }
    else
    {
        CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);    /* SLOW clock 时钟8分频 */
        
        /* 使能MCU内部 64M RC振荡器时钟 */
        delayCnt = 0u;
        while (ERR == CLK_FIRC64MEnable(ENABLE))
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }
        
        /* 设置FLASH 等待状态时间 详细配置说明请参考FLASH_FCTRL寄存器描述 */
        FLASH_SetWaitState(1);
        
        /* 等待系统时钟切换为内部 64M RC振荡器时钟 */
        delayCnt = 0u;
        while (ERR == CLK_SysClkSrc(CLK_SYS_FIRC64M))
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }

        /* 
         * FLASH 擦写时钟必须设置为 8M 
         * MCU进入stop模式前需将 FLASH 时钟源切换为 SLOW clock
         */
        SYSCTRL_DisableModule(SYSCTRL_FLASH);      /* 切换FLASH 控制器功能时钟之前，需要先关闭FLASH模块，否则时钟切换无效 */
        delayCnt = 0u;
        while (ERR == CLK_ModuleSrc(CLK_FLASH, CLK_SRC_FIRC64M))   /* 选择内部64M RC振荡器时钟作为FLASH时钟源 */
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }

        CLK_SetClkDivider(CLK_FLASH, CLK_DIV_8);    /* FLASH时钟源8分频，设置FLASH擦写时钟为8M。(8M = 64M / 8) */
        SYSCTRL_EnableModule(SYSCTRL_FLASH);        /* 使能 FLASH 控制器模块时钟 */
        delayCnt = 0u;
        while (ERR == FLASH_Init())                  /* 初始化FLASH模块 */
        {
            delayCnt++;
            if (delayCnt >= 50u) {
                break;
            }
        }
    }

}

/*****************************************************************************
 * Function:CLOCK_HSOSCLOC_ISR
 * Purpose:HSOSC clock failure interrupt handler
 * Input:
 * Output:
 * Note:1. Before reconfiguring PLL, must switch the system clock to FIRC to ensure the system clock has a valid clock source
 *        2. Before switching clock sources, must configure FLASH wait states
****************************************************************************/
void CLOCK_HSOSCLOC_ISR(void)
{
    ResultStatus_t ret;
    
    // First, switch the system clock source to FIRC to ensure system has a clock source
    CLK_SysClkSrc(CLK_SYS_FIRC64M);    //Select FIRC as the system clock source to ensure system clock has a clock source
    
    //Try to enable HSOSC
    ret = CLK_OSC40MEnable(CLK_OSC_FREQ_MODE_LOW, DISABLE, CLK_OSC_XTAL);// HSOSC frequency <=20MHz, STOP mode disabled, external crystal mode
    // ret = CLK_OSC40MEnable(CLK_OSC_FREQ_MODE_HIGH, ENABLE, CLK_OSC_XTAL); // HSOSC frequency >=24MHz, STOP mode enabled, external crystal mode

    if(ret == SUCC)
    {
        //Reinitialize PLL module
        CLK_PLLDisable();            //Disable PLL module
        CLK_PLLConfig(&CLK_PLL_Cfg_HSOSC);    //Configure PLL using parameters in CLK_PLL_Cfg_xx
        CLK_PLLEnable(DISABLE);            //Enable PLL module
        
        //Initialize system clock source, clock division ratio, PLL, and clock interrupt
        if(CLK_WaitClkReady(CLK_SRC_PLL) == SUCC)    //PLL is stable
        {
            //Configure FLASH read speed according to core clock. The FLASH module requires a certain number of wait states to match the core clock.
            //FLASH_SetWaitState(0);    // For 0M<core clock<=32M, set FLASH to wait for 0 clock cycles when reading data.
            //FLASH_SetWaitState(1);    // For 32M<core clock<=64M, set FLASH to wait for 1 clock cycle when reading data.
            //FLASH_SetWaitState(2);    // For 64M<core clock<=96M, set FLASH to wait for 2 clock cycles when reading data.
            FLASH_SetWaitState(3);        // For 96M<core clock<=128M, set FLASH to wait for 3 clock cycles when reading data.
            //FLASH_SetWaitState(4);    // For 128M<core clock<=160M, set FLASH to wait for 4 clock cycles when reading data.
            
            CLK_SysClkSrc(CLK_SYS_PLL);                //Select PLL generated clock as the system clock source
            CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);    //Set core clock division ratio
            CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);    //Set bus clock division ratio. To ensure reliability, the bus clock is 1/2 of the core clock
            CLK_SetClkDivider(CLK_SLOW, CLK_DIV_16);//Set Slow_Clock division ratio
            
            //Clock_ErrCode = CLOCK_ERR_NO;    //Record clock error status
        }
        else    //PLL not stable
        {
            CLK_SysClkSrc(CLK_SYS_FIRC64M);            //Select FIRC as the system clock source
            CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);    //Set core clock division ratio
            CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);    //Set bus clock division ratio. To ensure reliability, the bus clock is 1/2 of the core clock
            CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);    //Set Slow_Clock division ratio
            
            //Configure FLASH read speed according to core clock. The FLASH module requires a certain number of wait states to match the core clock.
            //FLASH_SetWaitState(0);    // For 0M<core clock<=32M, set FLASH to wait for 0 clock cycles when reading data.
            FLASH_SetWaitState(1);        // For 32M<core clock<=64M, set FLASH to wait for 1 clock cycle when reading data.
            //FLASH_SetWaitState(2);    // For 64M<core clock<=96M, set FLASH to wait for 2 clock cycles when reading data.
            //FLASH_SetWaitState(3);    // For 96M<core clock<=128M, set FLASH to wait for 3 clock cycles when reading data.
            //FLASH_SetWaitState(4);    // For 128M<core clock<=160M, set FLASH to wait for 4 clock cycles when reading data.
            
            CLK_PLLDisable();            //Disable PLL
            //Clock_ErrCode = CLOCK_ERR_PLL;    //Record clock error status
        }
    }
    else    //HSOSC startup failed
    {
        CLK_SysClkSrc(CLK_SYS_FIRC64M);    //Select FIRC as the system clock source
        CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);    //Set core clock division ratio
        CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);    //Set bus clock division ratio. To ensure reliability, the bus clock is 1/2 of the core clock
        CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);    //Set Slow_Clock division ratio
        
        //Configure FLASH read speed according to core clock. The FLASH module requires a certain number of wait states to match the core clock.
        //FLASH_SetWaitState(0);    // For 0M<core clock<=32M, set FLASH to wait for 0 clock cycles when reading data.
        FLASH_SetWaitState(1);        // For 32M<core clock<=64M, set FLASH to wait for 1 clock cycle when reading data.
        //FLASH_SetWaitState(2);    // For 64M<core clock<=96M, set FLASH to wait for 2 clock cycles when reading data.
        //FLASH_SetWaitState(3);    // For 96M<core clock<=128M, set FLASH to wait for 3 clock cycles when reading data.
        //FLASH_SetWaitState(4);    // For 128M<core clock<=160M, set FLASH to wait for 4 clock cycles when reading data.
        
        
        /* Disable previously enabled CLOCK interrupts and clear interrupt flags to avoid interference from subsequent operations */
        INT_SetPriority(SCC_IRQn, 0x0);    //Set SCC_IRQn interrupt priority level (highest)0--15(lowest)
        INT_DisableIRQ(SCC_IRQn);        //Disable SCC_IRQn interrupt
        CLK_OSC40MMonitorDisable();        //Disable external crystal monitoring (failure will not trigger interrupt)
        CLK_IntClear(CLK_INT_OSCLOC);    //Clear external crystal interrupt flag
        
        CLK_PLLDisable();        //Disable PLL
        CLK_OSC40MDisable();        //Disable HSOSC 
        //Clock_ErrCode = CLOCK_ERR_HSOSC;    //Record clock error status
    }
    
    /* Safety mechanism: HSOSC failure interrupt counter */
    Clock_HSOSC_Int_Cnt++;        //HSOSC interrupt counter increments
    if(Clock_HSOSC_Int_Cnt > 200)    //Threshold value set according to EMC requirements
    {
        Clock_HSOSC_Int_Cnt = 205;        //HSOSC interrupt counter

        CLK_SysClkSrc(CLK_SYS_FIRC64M);            //Select FIRC as the system clock source
        CLK_SetClkDivider(CLK_CORE, CLK_DIV_1);    //Set core clock division ratio
        CLK_SetClkDivider(CLK_BUS, CLK_DIV_2);    //Set bus clock division ratio. To ensure reliability, the bus clock is 1/2 of the core clock
        CLK_SetClkDivider(CLK_SLOW, CLK_DIV_8);    //Set Slow_Clock division ratio
        
        //Configure FLASH read speed according to core clock. The FLASH module requires a certain number of wait states to match the core clock.
        //FLASH_SetWaitState(0);    // For 0M<core clock<=32M, set FLASH to wait for 0 clock cycles when reading data.
        FLASH_SetWaitState(1);        // For 32M<core clock<=64M, set FLASH to wait for 1 clock cycle when reading data.
        //FLASH_SetWaitState(2);    // For 64M<core clock<=96M, set FLASH to wait for 2 clock cycles when reading data.
        //FLASH_SetWaitState(3);    // For 96M<core clock<=128M, set FLASH to wait for 3 clock cycles when reading data.
        //FLASH_SetWaitState(4);    // For 128M<core clock<=160M, set FLASH to wait for 4 clock cycles when reading data.
        
        CLK_OSC40MMonitorDisable();        //Disable external crystal monitoring (failure will not trigger interrupt)
        CLK_IntClear(CLK_INT_OSCLOC);    //Clear external crystal interrupt flag
        INT_SetPriority(SCC_IRQn, 0x0);//Set SCC_IRQn interrupt priority level (highest)0--15(lowest)
        INT_DisableIRQ(SCC_IRQn);        //Disable SCC_IRQn interrupt
        
        CLK_PLLDisable();        //Disable PLL
        CLK_OSC40MDisable();        //Disable HSOSC
        //Clock_ErrCode = CLOCK_ERR_HSOSC;    //Record clock error status        
    }
}

/*****************************************************************************
 * Function Name: PORT_Init
 * Description  : Initialize all used PORT modules. Each IO pin's initialization should be done in the corresponding IO function module.
 * Parameters   : None
 * Return Value : None
 * Note         : 1. The MCU has multiple PORT modules: PORTA, PORTB, PORTC, PORTD, and PORTE.
 *                2. Each IO pin's initialization should be done in the corresponding IO function module. For example, GPIO function pins
 *                   are initialized in BSP_GPIO.c. Peripheral function pin initialization should be done in the corresponding
 *                   peripheral module. Avoid duplicate initialization of pins to prevent system signal conflicts.
****************************************************************************/
void PORT_Init(void)
{
    /* ***** Initialize PORT modules ***** */
    SYSCTRL_DisableModule(SYSCTRL_PORTA);
    CLK_ModuleSrc(CLK_PORTA, CLK_SRC_FIRC64M);    // Select clock source for PORTA module
    CLK_SetClkDivider(CLK_PORTA, CLK_DIV_4);    // Set PORTA clock divider. Module clock frequency should not exceed CPU system clock
    SYSCTRL_ResetModule(SYSCTRL_PORTA);        // Reset PORTA module in system control module
    SYSCTRL_EnableModule(SYSCTRL_PORTA);    // Enable PORTA module in PARCC

    SYSCTRL_DisableModule(SYSCTRL_PORTB);
    CLK_ModuleSrc(CLK_PORTB, CLK_SRC_FIRC64M);    // Select clock source for PORTB module
    CLK_SetClkDivider(CLK_PORTB, CLK_DIV_4);    // Set PORTB clock divider. Module clock frequency should not exceed CPU system clock
    SYSCTRL_ResetModule(SYSCTRL_PORTB);        // Reset PORTB module in system control module
    SYSCTRL_EnableModule(SYSCTRL_PORTB);    // Enable PORTB module in PARCC

    SYSCTRL_DisableModule(SYSCTRL_PORTC);
    CLK_ModuleSrc(CLK_PORTC, CLK_SRC_FIRC64M);    // Select clock source for PORTC module
    CLK_SetClkDivider(CLK_PORTC, CLK_DIV_4);    // Set PORTC clock divider. Module clock frequency should not exceed CPU system clock
    SYSCTRL_ResetModule(SYSCTRL_PORTC);        // Reset PORTC module in system control module
    SYSCTRL_EnableModule(SYSCTRL_PORTC);    // Enable PORTC module in PARCC
    
    SYSCTRL_DisableModule(SYSCTRL_PORTD);
    CLK_ModuleSrc(CLK_PORTD, CLK_SRC_FIRC64M);    // Select clock source for PORTD module
    CLK_SetClkDivider(CLK_PORTD, CLK_DIV_4);    // Set PORTD clock divider. Module clock frequency should not exceed CPU system clock
    SYSCTRL_ResetModule(SYSCTRL_PORTD);        // Reset PORTD module in system control module
    SYSCTRL_EnableModule(SYSCTRL_PORTD);    // Enable PORTD module in PARCC
    
    SYSCTRL_DisableModule(SYSCTRL_PORTE);
    CLK_ModuleSrc(CLK_PORTE, CLK_SRC_FIRC64M);    // Select clock source for PORTE module
    CLK_SetClkDivider(CLK_PORTE, CLK_DIV_4);    // Set PORTE clock divider. Module clock frequency should not exceed CPU system clock
    SYSCTRL_ResetModule(SYSCTRL_PORTE);        // Reset PORTE module in system control module
    SYSCTRL_EnableModule(SYSCTRL_PORTE);    // Enable PORTE module in PARCC

    // Initialize PORT interrupts
    PORT_ClearPinsInt(PORT_A, 0xFFFFFFFF);    // Clear all interrupt flags of PORTA
    PORT_ClearPinsInt(PORT_B, 0xFFFFFFFF);    // Clear all interrupt flags of PORTB
    PORT_ClearPinsInt(PORT_C, 0xFFFFFFFF);        // Clear all interrupt flags of PORTC
    PORT_ClearPinsInt(PORT_D, 0xFFFFFFFF);        // Clear all interrupt flags of PORTD
    PORT_ClearPinsInt(PORT_E, 0xFFFFFFFF);        // Clear all interrupt flags of PORTE   
    //Complete initialization, module starts running
}

/*****************************************************************************
 * Function Name: GPIO_Init
 * Description  : Initialize GPIO module and GPIO function pins. Do not initialize pins with other functions.
 * Parameters   : None
 * Return Value : None
 * Note         : 1. Pins with other functions should be initialized in their corresponding functional modules. Avoid duplicate pin initialization to prevent
 *                   system signal conflicts.
 *                2.
****************************************************************************/
void GPIO_Init(void)
{
    /* ***** Initialize GPIO module ***** */
    SYSCTRL_ResetModule(SYSCTRL_GPIO);        // Reset GPIO module in system control module
    SYSCTRL_EnableModule(SYSCTRL_GPIO);        // Enable GPIO module in PARCC. GPIO is a mandatory item that must be enabled in PARCC
}

/*****************************************************************************
 * Function Name: System_Init
 * Description  : System initialization. Initialize all used MCU modules.
 * Parameters   : None
 * Return Value : None
 * Note         : 
****************************************************************************/
void System_Init(void)
{

    Z20_SCB->VTOR = ((uint32_t)&__vector_table) & 0xFFFFFF80U;    // Set core vector table VTOR's lower 7 bits
    COMMON_DSB();    // Data Synchronization Barrier to ensure all memory accesses before this instruction are complete
    
    COMMON_DISABLE_INTERRUPTS();    // Disable all IRQ interrupts
    PMU_Init();        // Initialize PMU module. Must be initialized before other modules
    SCM_Init();        // Initialize SCM module
    CLOCK_Init();    // Initialize system clock source
    PORT_Init();    // Initialize all used PORT modules
    GPIO_Init();    // Initialize GPIO module    
    
    COMMON_ENABLE_INTERRUPTS();    // Enable all IRQ interrupts
}

/*****************************************************************************
 * Function Name: main
 * Description:   Main function entry point of the bootloader program
 *                Performs system initialization, boot preparation, application
 *                jump check, and enters the main loop for firmware update
 *                and watchdog feeding operations.
 * Parameters:    None
 * Return:        None
****************************************************************************/
int main(void)
{
    System_Init();    
    BootReadyInit();
    FlashHalJumpToAppCheck();
    BootRunInit();
    while(1)
    {
#ifdef OTA_ON_CAN_UPDATE
        //TaskEcuDiagnostic();          //uds update serrvice
#endif
#ifdef OTA_ON_UART_UPDATE
        FirmwareUpdateSdkCycleProcess();
#endif
        PeripheralHalFeedWatchDog();  
    }
}

/*****************************************************************************
 * Function Name: BootReadyInit
 * Description  : Initialize modules required for bootloader readiness
 * Parameters   : None
 * Return Value : None
 * Note         : This function initializes GPIO, Flash, and Log modules needed for basic bootloader functionality
****************************************************************************/
static void BootReadyInit(void)
{
    MpuHalGpioInit();
    FlashHalInit();
    LogHalInit(3);
}

/*****************************************************************************
 * Function Name: BootRunInit
 * Description  : Initialize modules required for bootloader operation
 * Parameters   : None
 * Return Value : None
 * Note         : This function initializes peripherals, MPU and other modules needed for bootloader operation
****************************************************************************/
static void BootRunInit()
{
    PeripheralHalInit();
#ifdef OTA_ON_CAN_UPDATE
    CanHalInit(g_globalCanfdConfig,sizeof(g_globalCanfdConfig)/sizeof(g_globalCanfdConfig[0]));   //for uds update
    TaskEcuDiagnosticInit(); //for uds update
#endif
#ifdef OTA_ON_UART_UPDATE
    MpuHalInit();
#endif
    MpuHalPowerOn();

}