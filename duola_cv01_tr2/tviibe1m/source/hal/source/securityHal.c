#include "securityHal.h"

#include "FreeRTOS.h"
#include "task.h"

/* Master Settings */
#define SCB_MISO_DRIVE_MODE CY_GPIO_DM_HIGHZ    // CY_GPIO_DM_HIGHZ   CY_GPIO_DM_OD_DRIVESHIGH
#define SCB_MOSI_DRIVE_MODE CY_GPIO_DM_STRONG_IN_OFF
#define SCB_CLK_DRIVE_MODE  CY_GPIO_DM_STRONG_IN_OFF
#define SCB_SEL_DRIVE_MODE  CY_GPIO_DM_STRONG_IN_OFF    // CY_GPIO_DM_STRONG_IN_OFF  CY_GPIO_DM_PULLUP_IN_OFF

/* User setting value */
#if (CY_USE_PSVP == 1)  
  #define SOURCE_CLOCK_FRQ 24000000ul
  #define CORE_CLOCK_FRQ   24000000ul
#else
  #define SOURCE_CLOCK_FRQ 80000000ul
  #define CORE_CLOCK_FRQ   80000000ul
#endif
#define SCB_SPI_BAUDRATE     1000000ul   // 125000ul /* Please set baudrate value of SPI you want */
#define SCB_SPI_OVERSAMPLING 16ul     /* Please set oversampling of SPI you want */
#define SCB_SPI_CLOCK_FREQ (SCB_SPI_BAUDRATE * SCB_SPI_OVERSAMPLING)

#define DIVIDER_NO_1 (1u)


cy_stc_scb_spi_context_t g_contextSCB;

static cy_stc_gpio_pin_config_t SPI_port_pin_cfg =
{
    .outVal    = 0ul,
    .driveMode = 0ul,            /* Will be updated in runtime */
    .hsiom     = HSIOM_SEL_GPIO, /* Will be updated in runtime */
    .intEdge   = 0ul,
    .intMask   = 0ul,
    .vtrip     = 0ul,
    .slewRate  = 0ul,
    .driveSel  = 0ul,
};

static cy_stc_sysint_irq_t irq_cfg =
{
    .sysIntSrc  = CY_SPI_SCB_IRQN,
    .intIdx     = CPUIntIdx3_IRQn,
    .isEnabled  = true,
};

uint8_t readData[2];

static const cy_stc_scb_spi_config_t SCB_SPI_cfg =
{
    .spiMode                    = CY_SCB_SPI_MASTER,      /*** Specifies the mode of operation    ***/
    .subMode                    = CY_SCB_SPI_MOTOROLA,    /*** Specifies the sub mode of SPI operation    ***/
    .sclkMode                   = CY_SCB_SPI_CPHA0_CPOL0, /*** Clock is active low, data is changed on first edge ***/
    .oversample                 = SCB_SPI_OVERSAMPLING,   /*** SPI_CLOCK divided by SCB_SPI_OVERSAMPLING should be baudrate  ***/
    .rxDataWidth                = 8ul,                   /*** The width of RX data (valid range 4-16). It must be the same as \ref txDataWidth except in National sub-mode. ***/
    .txDataWidth                = 8ul,                   /*** The width of TX data (valid range 4-16). It must be the same as \ref rxDataWidth except in National sub-mode. ***/
    .enableMsbFirst             = true,                   /*** Enables the hardware to shift out the data element MSB first, otherwise, LSB first ***/
    .enableFreeRunSclk          = false,                  /*** Enables the master to generate a continuous SCLK regardless of whether there is data to send  ***/
    .enableInputFilter          = false,                  /*** Enables a digital 3-tap median filter to be applied to the input of the RX FIFO to filter glitches on the line. ***/
    .enableMisoLateSample       = true,                   /*** Enables the master to sample MISO line one half clock later to allow better timings. ***/
    .enableTransferSeperation   = true,                   /*** Enables the master to transmit each data element separated by a de-assertion of the slave select line (only applicable for the master mode) ***/
    .ssPolarity0                = false,                  /*** SS0: active low ***/
    .ssPolarity1                = false,                  /*** SS1: active low ***/
    .ssPolarity2                = false,                  /*** SS2: active low ***/
    .ssPolarity3                = false,                  /*** SS3: active low ***/
    .enableWakeFromSleep        = false,                  /*** When set, the slave will wake the device when the slave select line becomes active. Note that not all SCBs support this mode. Consult the device datasheet to determine which SCBs support wake from deep sleep. ***/
    .rxFifoTriggerLevel         = 255ul,                    /*** Interrupt occurs, when there are more entries of 2 in the RX FIFO */
    .rxFifoIntEnableMask        = 0ul,                    /*** Bits set in this mask will allow events to cause an interrupt  */
    .txFifoTriggerLevel         = 0ul,                    /*** When there are fewer entries in the TX FIFO, then at this level the TX trigger output goes high. This output can be connected to a DMA channel through a trigger mux. Also, it controls the \ref CY_SCB_SPI_TX_TRIGGER interrupt source. */
    .txFifoIntEnableMask        = 0ul,                    /*** Bits set in this mask allow events to cause an interrupt  */
    .masterSlaveIntEnableMask   = 0ul,                    /*** Bits set in this mask allow events to cause an interrupt  */
    .enableSpiDoneInterrupt     = false,
    .enableSpiBusErrorInterrupt = false,
};

void SetPeripheFracDiv24_5(uint64_t targetFreq, uint64_t sourceFreq, uint8_t divNum)
{
    uint64_t temp = ((uint64_t)sourceFreq << 5ull);
    uint32_t divSetting;

    divSetting = (uint32_t)(temp / targetFreq);
    Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, divNum, 
                                   (((divSetting >> 5ul) & 0x00000FFFul) - 1ul), 
                                   (divSetting & 0x0000001Ful));
}

void irqSCB(void)
{
    Cy_SCB_SPI_Interrupt(CY_SPI_SCB_TYPE, &g_contextSCB);
}

void SecurityGpioInit(void)
{
    cy_stc_gpio_pin_config_t portPinCfg =
    {
        .outVal    = 1ul,
        .driveMode = CY_GPIO_DM_STRONG_IN_OFF,
        .hsiom     = HSE_REST_PIN_MUX,
        .intEdge   = 0ul,
        .intMask   = 0ul,
        .vtrip     = 0ul,
        .slewRate  = 0ul,
        .driveSel  = 0ul,
    };

    /******** RESET ***************************/
    Cy_GPIO_Pin_Init(HSE_REST_PORT, HSE_REST_PIN, &portPinCfg);

    /******** INT ***********************/
    portPinCfg.driveMode = CY_GPIO_DM_HIGHZ;
    portPinCfg.hsiom  = HSE_INT_PIN_MUX;
    Cy_GPIO_Pin_Init(HSE_INT_PORT, HSE_INT_PIN, &portPinCfg);
}

void SpiInit(void)
{
    Cy_SysClk_PeriphAssignDivider(CY_SPI_SCB_PCLK, CY_SYSCLK_DIV_24_5_BIT, DIVIDER_NO_1);
    SetPeripheFracDiv24_5(SCB_SPI_CLOCK_FREQ, SOURCE_CLOCK_FRQ, DIVIDER_NO_1);
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, 1u);

   Cy_SCB_SPI_DeInit(CY_SPI_SCB_TYPE);

    Cy_SysInt_InitIRQ(&irq_cfg);
    Cy_SysInt_SetSystemIrqVector(irq_cfg.sysIntSrc, irqSCB);
    NVIC_EnableIRQ(irq_cfg.intIdx);

    SPI_port_pin_cfg.driveMode = SCB_MISO_DRIVE_MODE;
    SPI_port_pin_cfg.hsiom = CY_SPI_SCB_MISO_MUX;
    Cy_GPIO_Pin_Init(CY_SPI_SCB_MISO_PORT, CY_SPI_SCB_MISO_PIN, &SPI_port_pin_cfg);

    SPI_port_pin_cfg.driveMode = SCB_MOSI_DRIVE_MODE;
    SPI_port_pin_cfg.hsiom = CY_SPI_SCB_MOSI_MUX;
    Cy_GPIO_Pin_Init(CY_SPI_SCB_MOSI_PORT, CY_SPI_SCB_MOSI_PIN, &SPI_port_pin_cfg);

    SPI_port_pin_cfg.driveMode = SCB_CLK_DRIVE_MODE;
    SPI_port_pin_cfg.hsiom = CY_SPI_SCB_CLK_MUX;
    Cy_GPIO_Pin_Init(CY_SPI_SCB_CLK_PORT,CY_SPI_SCB_CLK_PIN, &SPI_port_pin_cfg);

    SPI_port_pin_cfg.outVal = 1ul;
    SPI_port_pin_cfg.driveMode = SCB_SEL_DRIVE_MODE;
    SPI_port_pin_cfg.hsiom = CY_SPI_SCB_SEL_MUX;
    Cy_GPIO_Pin_Init(CY_SPI_SCB_SEL_PORT, CY_SPI_SCB_SEL_PIN, &SPI_port_pin_cfg);

    Cy_SCB_SPI_Init(CY_SPI_SCB_TYPE, &SCB_SPI_cfg, &g_contextSCB);
    Cy_SCB_SPI_SetActiveSlaveSelect(CY_SPI_SCB_TYPE, 0ul);
    Cy_SCB_SPI_Enable(CY_SPI_SCB_TYPE);
}

/*************************************************
  Function:     SecurityHalInit
  Description:  Security module init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
int16_t SecurityHalInit(void)
{
    SecurityGpioInit();
    SpiInit();

    return 0;
}

void SecurityHalSetMode(uint8_t wakeMode)
{   
    if(0 == wakeMode)
    {

    }
    else if(1 == wakeMode)
    {

    }  
}

static void delay_us(uint16_t nus)
{
    while (nus)
    {
        // int n = 23;     // 4us实际测量3.4us
        int n = 27;
        while(n--);
        nus--;
    }
}

static void delay_ms(uint8_t nms)
{
    while (nms)
    {
        delay_us(1000);
        nms--;
    }
}

#if 0
/* 以下为新长城接口 */

/*********************************************************
 * Function : SPIResetl()
 * Brief    : SE reset pin set to low.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPIResetl(void)
{
    Cy_GPIO_Clr(HSE_REST_PORT, HSE_REST_PIN);
}

/*********************************************************
 * Function : SPIReseth()
 * Brief    : SE reset pin set to high.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPIReseth(void)
{
    Cy_GPIO_Set(HSE_REST_PORT, HSE_REST_PIN);
}

/*********************************************************
 * Function : SPICsen()
 * Brief    : SE cs pin set to low.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPICsen(void)
{
    Cy_GPIO_Clr(CY_SPI_SCB_SEL_PORT, CY_SPI_SCB_SEL_PIN);
    delay_us(2);
    // delay_ms(2);
}

/*********************************************************
 * Function : SPICsoff()
 * Brief    : SE cs pin set to high.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPICsoff(void)
{
    delay_us(2);
    // delay_ms(2);
    Cy_GPIO_Set(CY_SPI_SCB_SEL_PORT, CY_SPI_SCB_SEL_PIN);
}

/*********************************************************
 * Function : Iwall_HAL_SE_GetIntPinState()
 * Brief    : Get se busy pin status.
 * Parameter: None
 * ReturnVal: 0  Int pin is low level
 *            1  Int pin is high level
 *********************************************************/
uint8_t Iwall_HAL_SE_GetIntPinState(void)
{
    if((Cy_GPIO_Read(HSE_INT_PORT, HSE_INT_PIN)) == 1)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

/*********************************************************
 * Function : Iwall_HAL_SE_SpiSend()
 * Brief    : SPI transmit data function.
 * Parameter: data      Transmit buffer pointer
 *            datalen   Transmit data length
 * ReturnVal: 0         Transmit successfully
 *            1         Transmit failed
 *********************************************************/
uint8_t Iwall_HAL_SE_SpiSend(unsigned char *data, unsigned short datalen)
{
#if 0
    uint8_t u8Ret = 0;

    SPICsen();
    u8Ret = Cy_SCB_SPI_WriteArray(CY_SPI_SCB_TYPE,(void*)data, datalen);
    SPICsoff();

    if(u8Ret == datalen)
    {
        u8Ret = 0;
    }
    else
    {
        u8Ret = 1;
    }

    return u8Ret;
#else
    uint32_t transferStatus;

    SPICsen();
    // Cy_SCB_SPI_WriteArrayBlocking(CY_SPI_SCB_TYPE,(void*)data, datalen);
    Cy_SCB_SPI_Transfer(CY_SPI_SCB_TYPE, data, NULL, datalen, &g_contextSCB);

    /* Wait for completion by polling the status */
    /* Instead of callbacks, polling can be used for waiting for completion. */
    do
    {
        transferStatus = Cy_SCB_SPI_GetTransferStatus(CY_SPI_SCB_TYPE, &g_contextSCB);
    } while((transferStatus & CY_SCB_SPI_TRANSFER_ACTIVE) != 0u);
    SPICsoff();

    return 0;
#endif
}

/*********************************************************
 * Function : Iwall_HAL_SE_SpiSend()
 * Brief    : SPI transmit data function.
 * Parameter: data      Receive buffer pointer
 *            datalen   Receive data length
 * ReturnVal: 0         Receive successfully
 *            1         Receive failed
 *********************************************************/
uint8_t Iwall_HAL_SE_SpiReceive(unsigned char *data, unsigned short datalen)
{
#if 0
    uint8_t u8Ret = 0;
    uint8_t fillData[16] = {0};

    SPICsen();

    Cy_SCB_SPI_WriteArrayBlocking(CY_SPI_SCB_TYPE, fillData, datalen);
    delay_ms(2);
    u8Ret = Cy_SCB_SPI_ReadArray(CY_SPI_SCB_TYPE, (void*)data, datalen);
    SPICsoff();

    if(u8Ret == datalen)
    {
        u8Ret = 0;
    }
    else
    {
        u8Ret = 1;
    }

    return u8Ret;
#else
    uint32_t transferStatus;

    SPICsen();
    Cy_SCB_SPI_Transfer(CY_SPI_SCB_TYPE, NULL, data, datalen, &g_contextSCB);

    /* Wait for completion by polling the status */
    /* Instead of callbacks, polling can be used for waiting for completion. */
    do
    {
        transferStatus = Cy_SCB_SPI_GetTransferStatus(CY_SPI_SCB_TYPE, &g_contextSCB);
    } while((transferStatus & CY_SCB_SPI_TRANSFER_ACTIVE) != 0u);
    SPICsoff();
    
    return 0;
#endif
}
#endif
/*********************** 以下为测试代码 **********************************/


void SecurityHalTestMain(void)
{

}

