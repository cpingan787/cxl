#include "FreeRTOS.h"
//#include "task.h"
//#include "timers.h"
#include "queue.h"
#include "crc8_16_32.h"
#include "cy_project.h"
#include "logHal.h"
#include "mpuHal.h"

#define MPU_COMMUNICATION_USE_SPI               0


#define MPU_HAL_PDMA_DW_TX                      DW1
#define MPU_HAL_PDMA_DW_CHANNEL_TX              14
#define MPU_HAL_PDMA_DW_RX    DW1
#define MPU_HAL_PDMA_DW_CHANNEL_RX              15
#define MPU_HAL_SPI_CHANNEL                    SCB3
#define SCB_SPI_OVERSAMPLING                  8
#define MPU_HAL_HANDLE_INSTANSE_MAX           15
#define MPU_PROTOCAL_HEADER_LEN                8
#define MPU_HAL_TX_BUFFER                     4096
#define MPU_HAL_RX_BUFFER                     4096


#define MPU_HAL_UART_CHANNEL                    SCB4


#define E_UART_RX_INTR_FACTER     (                              \
                                 CY_SCB_UART_RX_TRIGGER      |   \
                               /*CY_SCB_UART_RX_NOT_EMPTY    | */\
                               /*CY_SCB_UART_RX_FULL         | */\
                                 CY_SCB_UART_RX_OVERFLOW     |   \
                                 CY_SCB_UART_RX_UNDERFLOW    |   \
                                 CY_SCB_UART_RX_ERR_FRAME    |   \
                                 CY_SCB_UART_RX_ERR_PARITY   |   \
                                 CY_SCB_UART_RX_BREAK_DETECT |   \
                                 0                               \
                                )

typedef struct 
{
    uint8_t data[2200];
    uint16_t dataCount;
    uint16_t dataLength;
}MpuUartProtocalBuffer_t;
typedef struct
{
    QueueHandle_t txQueueHandle;
    uint8_t buffer[MPU_HAL_TX_BUFFER];
    uint16_t index;
}MpuUartTxBuffer_t;

//static cy_stc_scb_uart_context_t   g_mpuUartContext;
static const cy_stc_scb_uart_config_t    g_mpuUarConfig = {
   .uartMode                   = CY_SCB_UART_STANDARD,
   .oversample                 = 8,
   .dataWidth                  = 8,
   .enableMsbFirst             = false,
   .stopBits                   = CY_SCB_UART_STOP_BITS_1,
   .parity                     = CY_SCB_UART_PARITY_NONE,
   .enableInputFilter          = false,
   .dropOnParityError          = false,
   .dropOnFrameError           = false,
   .enableMutliProcessorMode   = false,
   .receiverAddress            = 0,
   .receiverAddressMask        = 0,
   .acceptAddrInFifo           = false,
   .irdaInvertRx               = false,
   .irdaEnableLowPowerReceiver = false,
   .smartCardRetryOnNack       = false,
   .enableCts                  = false,
   .ctsPolarity                = CY_SCB_UART_ACTIVE_LOW,
   .rtsRxFifoLevel             = 0, //
   .rtsPolarity                = CY_SCB_UART_ACTIVE_LOW,
   .breakWidth                 = 0,
   .rxFifoTriggerLevel         = 0,
   .rxFifoIntEnableMask        = E_UART_RX_INTR_FACTER,
   .txFifoTriggerLevel         = 0,
   .txFifoIntEnableMask        = 0,
};

static cy_stc_scb_uart_context_t   g_mpuUartDevContext;
static MpuUartProtocalBuffer_t     g_mpuUartProtocalBuffer;
static MpuUartTxBuffer_t g_mpuUartTxBuffer;
static int16_t MpuUartTransmit(const uint8_t* pTxData,uint16_t txLength);







typedef struct
{
    uint8_t buffer[MPU_HAL_TX_BUFFER];
    uint16_t txLength;
}MpuTxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_RX_BUFFER];
    uint16_t txLength;
}MpuRxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_RX_BUFFER];
    uint16_t dataCount;
}MpuProtocolBuffer_t;

typedef struct
{
    uint8_t useFlag;
    uint8_t useRxFilter;
    uint8_t* pDataBufferRx;
    uint16_t dataBufferSize;
    uint16_t rxIndexIn;
    QueueHandle_t rxQueueHandle;
    MpuHalFilter_t rxFilterConfig;
}MpuHalHandle_t;

typedef enum
{
    E_MPU_HAL_START_STATE_IDLE = 0,
    E_MPU_HAL_START_STATE_POWER_OFF,
    E_MPU_HAL_START_STATE_OFF_DELAY,
    E_MPU_HAL_START_STATE_POWER_ON,
    E_MPU_HAL_START_STATE_POWER_DELAY,
    E_MPU_HAL_START_STATE_KEY_ON,
    E_MPU_HAL_START_STATE_KEY_ON_DELAY,
    E_MPU_HAL_START_STATE_KEY_OFF,
    E_MPU_HAL_START_STATE_FINISH,
}MpuHalStartState_e;

typedef struct 
{
    uint8_t wakeMode;/*0:MPU power off,1:Mpu sleep,2:Mpu wake*/
    uint8_t wakeoutTimeCount;
    MpuHalStartState_e startState;
    MpuHalHandle_t rxHandle[MPU_HAL_HANDLE_INSTANSE_MAX];
    uint8_t mcuRequest; /*0:no request,1:requested */
    MpuTxBuffer_t txBuffer[2];
    uint8_t txBufferFlag;/*0:tx buffer0 available,1:tx buffer available */
    MpuRxBuffer_t rxBuffer;
}MpuHalManage_t;

static MpuHalManage_t g_mpuManage;
static cy_stc_pdma_descr_t g_spiRxDmaDescr;
static cy_stc_pdma_descr_t g_spiTxDmaDescr;
static cy_stc_scb_spi_context_t g_mpuSpiDevContext;


static const cy_stc_scb_spi_config_t g_mpuSpiConfig=
{
    .spiMode = CY_SCB_SPI_SLAVE,
    .subMode = CY_SCB_SPI_MOTOROLA,
    .sclkMode = CY_SCB_SPI_CPHA0_CPOL0,
    .oversample = SCB_SPI_OVERSAMPLING,
    .rxDataWidth = 8,
    .txDataWidth = 8,
    .enableMsbFirst = true,
    .enableFreeRunSclk = false,
    .enableInputFilter = false,
    .enableMisoLateSample = true,
    .enableTransferSeperation = true,
    .ssPolarity0 = 0,
    .ssPolarity1 = 0,
    .ssPolarity2 = 0,
    .ssPolarity3 = 0,
    .enableWakeFromSleep = 0,
    .txFifoTriggerLevel = 0,
    .rxFifoTriggerLevel = 255,
    .rxFifoIntEnableMask = 0,
    .txFifoIntEnableMask = 0,
    .masterSlaveIntEnableMask = 0,
    .enableSpiDoneInterrupt = 0,
    .enableSpiBusErrorInterrupt = 0,
};

static const cy_stc_sysint_irq_t g_mpuSpiIrqConfig = 
{
    .sysIntSrc = scb_4_interrupt_IRQn,
    .intIdx = CPUIntIdx5_IRQn,
    .isEnabled = true,
};

static const cy_stc_pdma_chnl_config_t g_mpuRxDmaChanConfig =
{
    .PDMA_Descriptor = &g_spiRxDmaDescr,
    .preemptable = 0,
    .priority = 0,
    .enable = 1,
};

static const cy_stc_pdma_chnl_config_t g_mpuTxDmaChanConfig = 
{
    .PDMA_Descriptor = &g_spiRxDmaDescr,
    .preemptable = 0,
    .priority = 0,
    .enable = 1,    
};

static cy_stc_pdma_descr_config_t g_mpuRxDmaDesConfig =
{
    .deact = 0,
    .intrType = CY_PDMA_INTR_X_LOOP_CMPLT,
    .trigoutType = CY_PDMA_INTR_1ELEMENT_CMPLT,
    .chStateAtCmplt = CY_PDMA_CH_ENABLED,
    .triginType = CY_PDMA_TRIGIN_XLOOP,
    .dataSize = CY_PDMA_BYTE,
    .srcTxfrSize = 1,
    .destTxfrSize = 0,
    .descrType = CY_PDMA_2D_TRANSFER,
    .srcAddr = (uint32_t *)&MPU_HAL_SPI_CHANNEL->unRX_FIFO_RD.u32Register,
    .destAddr = g_mpuManage.rxBuffer.buffer,
    .srcXincr = 0,
    .destXincr = 1,
    .xCount = 1,
    .srcYincr = 0,
    .destYincr = 1,
    .yCount = 4096,
    .descrNext = &g_spiRxDmaDescr, 
};

static cy_stc_pdma_descr_config_t g_mpuTxDmaDesConfig =
{
    .deact = 0,
    .intrType = CY_PDMA_INTR_1ELEMENT_CMPLT,
    .trigoutType = CY_PDMA_TRIGOUT_1ELEMENT_CMPLT,
    .chStateAtCmplt = CY_PDMA_CH_DISABLED,
    .triginType = CY_PDMA_TRIGIN_DESCR,
    .dataSize = CY_PDMA_BYTE,
    .srcTxfrSize = 0,
    .destTxfrSize = 1,
    .descrType = CY_PDMA_1D_TRANSFER,
    .srcAddr = (uint32_t *)&(SCB3->unTX_FIFO_WR.u32Register),
    .destAddr = g_mpuManage.txBuffer[0].buffer,
    .srcXincr = 1,
    .destXincr = 0,
    .xCount = 4096,
    .srcYincr = 0,
    .destYincr = 0u,
    .yCount = 0u,
    .descrNext = 0u, 
};

static void MpuHalGpioInit(void)
{
    cy_stc_gpio_pin_config_t portPinCfg =
    {
        .outVal    = 0ul,
        .driveMode = CY_GPIO_DM_STRONG_IN_OFF,
        .hsiom     = P23_7_GPIO,
        .intEdge   = 0ul,
        .intMask   = 0ul,
        .vtrip     = 0ul,
        .slewRate  = 0ul,
        .driveSel  = 0ul,
    };
    /********power en **************************/
    Cy_GPIO_Pin_Init(GPIO_PRT23,7,&portPinCfg);
    /********power key***************************/
    portPinCfg.hsiom  = P12_3_GPIO;
    Cy_GPIO_Pin_Init(GPIO_PRT12,3,&portPinCfg);
    /********vbus***************************/
    portPinCfg.hsiom  = P0_0_GPIO;
    portPinCfg.outVal = 1u;
    Cy_GPIO_Pin_Init(GPIO_PRT0,0,&portPinCfg);
    /********wake  out***************************/
    portPinCfg.hsiom  = P19_3_GPIO;
    portPinCfg.outVal = 0u;
    Cy_GPIO_Pin_Init(GPIO_PRT19,3,&portPinCfg);
#if(MPU_COMMUNICATION_USE_SPI)    
    /********request  out************************/
    portPinCfg.hsiom  = P13_3_GPIO;
    Cy_GPIO_Pin_Init(GPIO_PRT13,3,&portPinCfg);
    /********spi miso***********************/
    portPinCfg.hsiom  = P13_0_SCB3_SPI_MISO;
    Cy_GPIO_Pin_Init(GPIO_PRT13,0,&portPinCfg);
    /********spi mosi***********************/
    portPinCfg.hsiom  = P13_1_SCB3_SPI_MOSI;
    Cy_GPIO_Pin_Init(GPIO_PRT13,1,&portPinCfg);
    /********spi clk***********************/
    portPinCfg.driveMode = CY_GPIO_DM_HIGHZ;
    portPinCfg.hsiom  = P13_2_SCB3_SPI_CLK;
    Cy_GPIO_Pin_Init(GPIO_PRT13,2,&portPinCfg);    
#else /**** *use uart commnication**************/
    
    /********spi miso***********************/
    portPinCfg.driveMode = CY_GPIO_DM_HIGHZ;
    portPinCfg.hsiom  = P6_0_SCB4_UART_RX;
    Cy_GPIO_Pin_Init(GPIO_PRT6,0,&portPinCfg);
    /********spi mosi***********************/
    portPinCfg.driveMode = CY_GPIO_DM_STRONG_IN_OFF;
    portPinCfg.hsiom  = P6_1_SCB4_UART_TX;
    Cy_GPIO_Pin_Init(GPIO_PRT6,1,&portPinCfg);    
#endif
}

static void MpuHalSetPower(uint8_t flag)
{
    if(0==flag)
    {
        Cy_GPIO_Clr(GPIO_PRT23,7);
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT23,7);
    }
}

static void MpuHalSetPowerkey(uint8_t flag)
{
    if(0==flag)
    {
        Cy_GPIO_Clr(GPIO_PRT12,3);
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT12,3);
    }
}

static void MpuHalSetWakeOut(uint8_t flag)
{
    if(0==flag)
    {
        Cy_GPIO_Clr(GPIO_PRT19,3);
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT19,3);
    }
}

static void MpuHalSetVbus(uint8_t flag)
{
    if(0==flag)
    {
        Cy_GPIO_Clr(GPIO_PRT0,0);
    }
    else
    {
        Cy_GPIO_Set(GPIO_PRT0,0);
    }
}

#if(MPU_COMMUNICATION_USE_SPI)
static void MpuSpiDeviceClockInit(void)
{
    uint32_t divSetting;
    uint64_t temp,sourceFreq,targetFreq;
    
    sourceFreq = 80000000ul;
    targetFreq = 8000000*SCB_SPI_OVERSAMPLING;
    temp = ((uint64_t)sourceFreq << 5ull);
    divSetting = (uint32_t)(temp / targetFreq);
    Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, 3, 
                                   (((divSetting >> 5u) & 0x00000FFF) - 1u), 
                                   (divSetting & 0x0000001F));
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, 3u);
}
#endif

static void MpuSpiIrqFun(void)
{
    Cy_SCB_SPI_Interrupt(MPU_HAL_SPI_CHANNEL, &g_mpuSpiDevContext);
}

static void MpuSpiDeviceInit(void)
{
    Cy_SCB_SPI_DeInit(MPU_HAL_SPI_CHANNEL);
    Cy_SysInt_InitIRQ(&g_mpuSpiIrqConfig);
    Cy_SysInt_SetSystemIrqVector(g_mpuSpiIrqConfig.sysIntSrc, MpuSpiIrqFun);
    NVIC_EnableIRQ(g_mpuSpiIrqConfig.intIdx);
    Cy_SCB_SPI_Init(MPU_HAL_SPI_CHANNEL, &g_mpuSpiConfig, &g_mpuSpiDevContext);
    
    Cy_SCB_SPI_SetActiveSlaveSelect(MPU_HAL_SPI_CHANNEL, 0);
    Cy_SCB_SPI_Enable(MPU_HAL_SPI_CHANNEL);
}

static void SetRequestMpuTxRx(uint8_t reqFlag)
{
    if(reqFlag!=0)
    {
        Cy_GPIO_Set(GPIO_PRT7,5);
    }
    else
    {
        Cy_GPIO_Clr(GPIO_PRT7,5);
    }
}

static void MpuDataDispatch(const uint8_t* pData,uint16_t length,uint8_t irq)
{
    uint16_t i,j,instanceMax;
    uint32_t data;
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    MpuHalHandle_t* pHandleInstance;
    
    instanceMax = MPU_HAL_HANDLE_INSTANSE_MAX;
    for(i=0;i<instanceMax;i++)
    {
        pHandleInstance = g_mpuManage.rxHandle+ i;
        if((pHandleInstance->useFlag==1)&&(pHandleInstance->pDataBufferRx!=NULL))
        {
            if((pHandleInstance->useRxFilter==1)&&(pData[2]==pHandleInstance->rxFilterConfig.aid))
            {
                if((pData[3]>=pHandleInstance->rxFilterConfig.midMin)&&(pData[3]<=pHandleInstance->rxFilterConfig.midMax))
                {
                    /***** copy data to receive buffer*****************/
                    data = (pHandleInstance->rxIndexIn<<16);
                    for(j=0;j<length;j++)
                    {
                        pHandleInstance->pDataBufferRx[pHandleInstance->rxIndexIn] = pData[j];
                        pHandleInstance->rxIndexIn++;
                        if(pHandleInstance->rxIndexIn>=pHandleInstance->dataBufferSize)
                        {
                            pHandleInstance->rxIndexIn = 0;
                        }
                    }
                    /******** dispatch data*******************************************/
                    data += length;
                    if(irq)
                    {
                        xQueueSendFromISR(pHandleInstance->rxQueueHandle, &data, &xHigherPriorityTaskWoken );
                    }
                    else
                    {
                        xQueueSend(pHandleInstance->rxQueueHandle, &data,0 );
                    }
                }                                   
            }            
        }
    }
}

static void MpuDmaTxIrqFun(void)
{
    Cy_PDMA_Chnl_ClearInterrupt( MPU_HAL_PDMA_DW_TX, MPU_HAL_PDMA_DW_CHANNEL_TX);
}

static void MpuDmaRxIrqFun(void)
{
    uint16_t length,i,dataCount,packLength,packStart;
    uint8_t *pBuffer;
    
    Cy_PDMA_Chnl_ClearInterrupt( MPU_HAL_PDMA_DW_RX,MPU_HAL_PDMA_DW_CHANNEL_RX);
    dataCount = 0;
    pBuffer = g_mpuManage.rxBuffer.buffer;
    length = 4096;
    for(i = 0;i<length;i++)
    {
        if(0==dataCount)
        {
            if(0x55==pBuffer[i])
            {
                dataCount++;
                packStart = i;
            }
        }
        else if(1==dataCount)
        {
            if(0xAA==pBuffer[i])
            {
                dataCount++;
            }
        }
        else if(dataCount<MPU_PROTOCAL_HEADER_LEN)
        {
            dataCount++;
            if(MPU_PROTOCAL_HEADER_LEN==dataCount)
            {
                packLength = (pBuffer [packStart +5]<<8)+pBuffer [packStart +6];
                if(packLength>4000)
                {
                    dataCount = 0;
                }                
            }
            else if(dataCount>=(packLength+MPU_PROTOCAL_HEADER_LEN))
            {
                MpuDataDispatch(pBuffer+packStart,packLength+MPU_PROTOCAL_HEADER_LEN+2,1);
                dataCount = 0;
                i +=(packLength+MPU_PROTOCAL_HEADER_LEN+2);
            }
        }
    }
}

static void MpuDmaDeviceInit(void)
{
    cy_stc_sysint_irq_t        sysIntIrqCfgDma;
    /**************dma rx*******************************/
    Cy_PDMA_Disable(MPU_HAL_PDMA_DW_RX);
    Cy_PDMA_Chnl_DeInit(MPU_HAL_PDMA_DW_RX, MPU_HAL_PDMA_DW_CHANNEL_RX);
    Cy_PDMA_Descr_Init(&g_spiRxDmaDescr,&g_mpuRxDmaDesConfig);
    Cy_PDMA_Chnl_Init(MPU_HAL_PDMA_DW_RX,MPU_HAL_PDMA_DW_CHANNEL_RX,(const cy_stc_pdma_chnl_config_t*) &g_mpuRxDmaChanConfig);
    Cy_PDMA_Chnl_Enable(MPU_HAL_PDMA_DW_RX,MPU_HAL_PDMA_DW_CHANNEL_RX);
    Cy_PDMA_Chnl_SetInterruptMask(MPU_HAL_PDMA_DW_RX, MPU_HAL_PDMA_DW_CHANNEL_RX);
    Cy_PDMA_Enable(MPU_HAL_PDMA_DW_RX);
    Cy_TrigMux_Connect1To1(TRIG_OUT_1TO1_8_SCB_RX_TO_PDMA13,0u,TRIGGER_TYPE_CPUSS_DW1_TR_IN__EDGE,0u);
    /**************dma tx ***********************************/
    Cy_PDMA_Disable(MPU_HAL_PDMA_DW_TX);
    Cy_PDMA_Chnl_DeInit(MPU_HAL_PDMA_DW_TX, MPU_HAL_PDMA_DW_CHANNEL_TX);
    Cy_PDMA_Descr_Init(&g_spiTxDmaDescr,&g_mpuTxDmaDesConfig);
    Cy_PDMA_Chnl_Init(MPU_HAL_PDMA_DW_TX,MPU_HAL_PDMA_DW_CHANNEL_TX,(const cy_stc_pdma_chnl_config_t*) &g_mpuTxDmaChanConfig);
    Cy_PDMA_Chnl_Enable(MPU_HAL_PDMA_DW_TX, MPU_HAL_PDMA_DW_CHANNEL_TX);
    Cy_PDMA_Chnl_SetInterruptMask(MPU_HAL_PDMA_DW_TX, MPU_HAL_PDMA_DW_CHANNEL_TX);
    Cy_PDMA_Enable(MPU_HAL_PDMA_DW_TX);
    sysIntIrqCfgDma.intIdx    = CPUIntIdx1_IRQn;
    sysIntIrqCfgDma.isEnabled = true;
    sysIntIrqCfgDma.sysIntSrc = cpuss_interrupts_dw1_15_IRQn;
    Cy_SysInt_InitIRQ(&sysIntIrqCfgDma);
    Cy_SysInt_SetSystemIrqVector(sysIntIrqCfgDma.sysIntSrc, MpuDmaRxIrqFun);
    sysIntIrqCfgDma.sysIntSrc = cpuss_interrupts_dw1_15_IRQn;
    Cy_SysInt_InitIRQ(&sysIntIrqCfgDma);
    Cy_SysInt_SetSystemIrqVector(sysIntIrqCfgDma.sysIntSrc, MpuDmaTxIrqFun);
}

static uint8_t MpuPackHeader(uint8_t headerBuffer[],const MpuHalDataPack_t* pMsg)
{
    headerBuffer[0] = 0x55;
    headerBuffer[1] = 0xAA;    
    headerBuffer[2] = pMsg->aid;
    headerBuffer[3] = pMsg->mid; 
    headerBuffer[4] = pMsg->subcommand;
    headerBuffer[5] = (pMsg->dataLength>>8)&0xFF; 
    headerBuffer[6] = pMsg->dataLength&0xFF;
    headerBuffer[7] = 0x00;    /*reserved*/ 
    headerBuffer[8] = 0x00;    /*reserved*/ 
    return MPU_PROTOCAL_HEADER_LEN;
}

static uint16_t MpuPackGetCrc(uint8_t header[],const MpuHalDataPack_t* pMsg)
{
    uint16_t crc;
    
    crc = 0x0000;
    crc = CcittCrc16(crc,header,MPU_PROTOCAL_HEADER_LEN);
    crc = CcittCrc16(crc,pMsg->pDataBuffer,pMsg->dataLength);    
    return crc;
}

void MpuHalCycleProcess(uint32_t cycleTime)
{
    static uint32_t timeCount = 0;

    if(E_MPU_HAL_START_STATE_IDLE==g_mpuManage.startState)
    {
        
    }
    else if(E_MPU_HAL_START_STATE_POWER_OFF==g_mpuManage.startState)
    {
        timeCount = 0;
        g_mpuManage.startState = E_MPU_HAL_START_STATE_OFF_DELAY;
    }
    else if(E_MPU_HAL_START_STATE_OFF_DELAY==g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if(timeCount>=500)
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_ON;
            MpuHalSetPower(1);
        }
    }
    else if(E_MPU_HAL_START_STATE_POWER_ON==g_mpuManage.startState)
    {
        timeCount= 0;
        g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_DELAY;
    }
    else if(E_MPU_HAL_START_STATE_POWER_DELAY==g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if(timeCount>=500)
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_ON;
        }
    }
    else if(E_MPU_HAL_START_STATE_KEY_ON==g_mpuManage.startState)
    {
        g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_ON_DELAY;
        MpuHalSetPowerkey(1);
        timeCount = 0;
    }
    else if(E_MPU_HAL_START_STATE_KEY_ON_DELAY==g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if(timeCount>=500)
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_OFF;
            MpuHalSetPowerkey(0);
        }
    }
    else if(E_MPU_HAL_START_STATE_KEY_OFF==g_mpuManage.startState)
    {
        g_mpuManage.startState = E_MPU_HAL_START_STATE_FINISH;
    }
    if(g_mpuManage.wakeoutTimeCount<2)
    {
        g_mpuManage.wakeoutTimeCount++;
        if(2==g_mpuManage.wakeoutTimeCount)
        {
            MpuHalSetWakeOut(0);
        }
    }       
}

int16_t MpuHalOpen(void)
{
    int16_t handle,index;
    
    handle = -1;
    index = 0;
    
    __disable_irq();
    for(index=0;index<MPU_HAL_HANDLE_INSTANSE_MAX;index++)
    {
        if(g_mpuManage.rxHandle[index].useFlag==0)
        {
            g_mpuManage.rxHandle[index].useFlag = 1;
            handle = index;
            break;
        }
    }
    __enable_irq();
    return handle;
}

int16_t MpuHalSetRxFilter(int16_t handle,const MpuHalFilter_t* pFilter)
{
    if((handle>=0)&&(handle<MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if(pFilter!=NULL)
        {
            g_mpuManage.rxHandle[handle].useRxFilter = 1;
            memcpy(&(g_mpuManage.rxHandle[handle].rxFilterConfig),pFilter,sizeof(MpuHalFilter_t));
        }
        else
        {
            g_mpuManage.rxHandle[handle].useRxFilter = 0;
        }
        return MPU_HAL_STATUS_OK;
    }
    else
    {
        return MPU_HAL_STATUS_ERR;
    }
}

int16_t MpuHalSetRxBuffer(int16_t handle,uint8_t* pBuffer,uint32_t bufferSize)
{
    if((handle>=0)&&(handle<MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if(pBuffer!=NULL)
        {
            g_mpuManage.rxHandle[handle].rxQueueHandle = xQueueCreate(10,sizeof(uint32_t));
            g_mpuManage.rxHandle[handle].rxIndexIn = 0;
            g_mpuManage.rxHandle[handle].pDataBufferRx = pBuffer;
            g_mpuManage.rxHandle[handle].dataBufferSize = bufferSize;
            return MPU_HAL_STATUS_OK;
        }
        else
        {
            return MPU_HAL_STATUS_ERR;
        }        
    }
    else
    {
        return MPU_HAL_STATUS_ERR;
    }
}

#if(MPU_COMMUNICATION_USE_SPI)
int16_t MpuHalTransmit(int16_t handle,const MpuHalDataPack_t* pTxMsg)
{
    uint16_t crc,index;
    uint8_t packHeader[20];
    int16_t ret = MPU_HAL_STATUS_OK;
    
    if((handle>=0)&&(handle<MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if(pTxMsg!=NULL)
        {
            if(pTxMsg->dataLength<4000)
            {
                MpuPackHeader(packHeader,pTxMsg);
                crc = MpuPackGetCrc(packHeader,pTxMsg);
                __disable_irq();
                if((g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].txLength+pTxMsg->dataLength)<(MPU_HAL_TX_BUFFER-MPU_PROTOCAL_HEADER_LEN-2))
                {
                    index = g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].txLength;
                    memcpy(g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].buffer+index,packHeader,MPU_PROTOCAL_HEADER_LEN);
                    index += MPU_PROTOCAL_HEADER_LEN;
                    memcpy(g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].buffer+index,pTxMsg->pDataBuffer,pTxMsg->dataLength);
                    index += pTxMsg->dataLength;
                    g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].buffer[index] = (crc>>8)&0xFF;
                    index++;
                    g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].buffer[index] = crc&0xFF;
                    g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].txLength = index;
                    MpuHalRequestIrqFun();
                } 
                else
                {
                    ret = MPU_HAL_STATUS_ERR;
                }
                __enable_irq();
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR;
            }
        }
        else
        {
            ret = MPU_HAL_STATUS_ERR;
        }        
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}

#else
int16_t MpuHalTransmit(int16_t handle,const MpuHalDataPack_t* pTxMsg)
{
    static uint8_t sTxBuffer[MPU_HAL_TX_BUFFER];
    uint16_t crc,index;
    uint8_t packHeader[20];
    int16_t ret = MPU_HAL_STATUS_OK;

    if((handle>=0)&&(handle<MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if(pTxMsg!=NULL)
        {
            if(pTxMsg->dataLength<4000)
            {
                //taskENTER_CRITICAL(); 
                __disable_irq();
                MpuPackHeader(packHeader,pTxMsg);
                crc = MpuPackGetCrc(packHeader,pTxMsg);

                index = 0;
                memcpy(sTxBuffer+index,packHeader,MPU_PROTOCAL_HEADER_LEN);
                index += MPU_PROTOCAL_HEADER_LEN;
                memcpy(sTxBuffer+index,pTxMsg->pDataBuffer,pTxMsg->dataLength);
                index += pTxMsg->dataLength;
                sTxBuffer[index] = (crc>>8)&0xFF;
                index++;
                sTxBuffer[index] = crc&0xFF;
                index++;
                MpuUartTransmit(sTxBuffer,index);
                //taskEXIT_CRITICAL(); 
                __enable_irq();
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR;
            }
        }
        else
        {
            ret = MPU_HAL_STATUS_ERR;
        }        
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}
#endif

int16_t MpuHalReceive(int16_t handle,MpuHalDataPack_t* pRxMsg,uint32_t waitTime )
{
    uint16_t len,crc,crcRx,index,i;
    uint32_t data;
    uint8_t packHeader[MPU_PROTOCAL_HEADER_LEN];
    QueueHandle_t queHandle;
    int16_t ret = MPU_HAL_STATUS_OK;
    
    if((handle>=0)&&(handle<MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        index = handle&0xFF;
        if(pRxMsg!=NULL)
        {
            queHandle = g_mpuManage.rxHandle[index].rxQueueHandle;
            if(xQueueReceive( queHandle, &data, waitTime)== pdPASS)
            {
                index = (data>>16)&0xFFFF;
                len = data&0xFFFF;
                if((pRxMsg->dataBufferSize+MPU_PROTOCAL_HEADER_LEN+2)>=len)
                {
                    /****receive header****************************/
                    for(i=0;i<MPU_PROTOCAL_HEADER_LEN;i++)
                    {
                         packHeader[i] = g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                         index++;
                          if(index>=g_mpuManage.rxHandle[handle].dataBufferSize)
                          {
                              index = 0;
                          }
                    }
                    /*******receive service data**************************************/
                    for(i=0;i<(len-MPU_PROTOCAL_HEADER_LEN-2);i++)
                    {
                         pRxMsg->pDataBuffer[i] = g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                         index++;
                          if(index>=g_mpuManage.rxHandle[handle].dataBufferSize)
                          {
                              index = 0;
                          }
                    }
                    pRxMsg->dataLength = len-MPU_PROTOCAL_HEADER_LEN-2;
                    crcRx = (g_mpuManage.rxHandle[handle].pDataBufferRx[index]<<8);
                    index++;
                    if(index>=g_mpuManage.rxHandle[handle].dataBufferSize)
                    {
                        index = 0;
                    }
                    crcRx |= g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                    crc =MpuPackGetCrc(packHeader,pRxMsg);
                    if(crcRx==crc)
                    {
                        pRxMsg->aid = packHeader[2];
                        pRxMsg->mid = packHeader[3];
                        pRxMsg->subcommand = packHeader[4];
                        pRxMsg->dataLength = len - (MPU_PROTOCAL_HEADER_LEN+2);
                    }
                    else
                    {
                        ret = MPU_HAL_STATUS_ERR;
                    }
                }
                else
                {
                    ret = MPU_HAL_STATUS_ERR;
                }
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR;
            }
        }
        else
        {
            ret = MPU_HAL_STATUS_ERR;
        }
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    
    return ret;
}

void MpuHalStart(void)
{
    g_mpuManage.wakeoutTimeCount = 10;
    MpuHalSetWakeOut(0);
    MpuHalSetPower(1);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_ON;
}

int16_t MpuHalStartIsFinished(void)
{
    int16_t ret;
    if(E_MPU_HAL_START_STATE_FINISH==g_mpuManage.startState)
    {
        ret = MPU_HAL_STATUS_OK;
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}

void MpuHalReset(void)
{
    MpuHalSetPower(0);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_OFF;
}

int16_t MpuHalResetIsFinished(void)
{
    int16_t ret;
    if(E_MPU_HAL_START_STATE_FINISH==g_mpuManage.startState)
    {
        ret = MPU_HAL_STATUS_OK;
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}

void MpuHalPowerOff(void)
{
    MpuHalSetPower(0);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_IDLE;
}

void MpuHalSetMode(uint8_t wakeMode)
{   
    if(0==wakeMode)
    {
        Cy_SCB_UART_Disable(MPU_HAL_UART_CHANNEL, &g_mpuUartDevContext);
        /*Vbus off**/
         MpuHalSetVbus(0);
         g_mpuManage.wakeMode = wakeMode;
    }
    else if(1==wakeMode)
    {
        Cy_SCB_UART_Enable(MPU_HAL_UART_CHANNEL);
        /*Vbus on***/
        MpuHalSetVbus(1);
        /*wake up mpu*/
        g_mpuManage.wakeoutTimeCount = 0;
        MpuHalSetWakeOut(1); 
        g_mpuManage.wakeMode = wakeMode;
    }  
}

int16_t MpuHalGetWakeMode(void)
{
    return g_mpuManage.wakeMode;
}

void MpuHalRequestIrqFun(void)
{
    uint16_t length;
    uint8_t *pBuffer;
    
    if(g_mpuManage.mcuRequest==0)
    {
        if(g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].txLength>0)
        {
            /***switch dma tx buffer*******************/
            g_mpuTxDmaDesConfig.destAddr = g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].buffer;
            /****DMA buffer not used is filled with 0*/
            pBuffer = g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].buffer;
            length= g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].txLength;
            pBuffer[length] = 0x00;
            pBuffer[length+1] = 0x00;
            /******swtich tx buffe not used by dma to ready to write r*********************/
            g_mpuManage.txBufferFlag++;
            if(g_mpuManage.txBufferFlag>=2)
            {
               g_mpuManage.txBufferFlag = 0;
            }
            g_mpuManage.txBuffer[g_mpuManage.txBufferFlag].txLength = 0;
            MpuSpiDeviceInit();
            MpuDmaDeviceInit();
            SetRequestMpuTxRx(1);
            g_mpuManage.mcuRequest=1;
        }
    }
}

static void UartProtocalProcess(uint8_t *pData,uint16_t dataLength,uint8_t IsrFlag)
{
    //int pos;
    uint16_t i;
    MpuUartProtocalBuffer_t* pProtocalData;

    pProtocalData = &g_mpuUartProtocalBuffer;
    for(i=0;i<dataLength;i++)
    {
        if(0==pProtocalData->dataCount)
        {
            if(0x55==pData[i])
            {
            pProtocalData->data[pProtocalData->dataCount] = pData[i];
            pProtocalData->dataCount++;
            }      
        }
        else if(1==pProtocalData->dataCount)
        {
            if(0xAA==pData[i])
            {
                pProtocalData->data[pProtocalData->dataCount] = pData[i];
                pProtocalData->dataCount++;
            }
            else
            {
                pProtocalData->dataCount = 0;
            }
        }
        else if(pProtocalData->dataCount<MPU_PROTOCAL_HEADER_LEN)
        {
            pProtocalData->data[pProtocalData->dataCount] = pData[i];
            pProtocalData->dataCount++;
            if(MPU_PROTOCAL_HEADER_LEN==pProtocalData->dataCount)
            {
                pProtocalData->dataLength = ((uint16_t)(pProtocalData->data[5])<<8)+pProtocalData->data[6];
                if(pProtocalData->dataLength>(sizeof(pProtocalData->data)-(MPU_PROTOCAL_HEADER_LEN+2)))
                {
                    pProtocalData->dataCount = 0;
                    pProtocalData->dataLength = 0;
                }
            }
        }
        else
        {
            pProtocalData->data[pProtocalData->dataCount] = pData[i];
            pProtocalData->dataCount++;
            if(pProtocalData->dataCount>=(pProtocalData->dataLength+(MPU_PROTOCAL_HEADER_LEN+2)))
            {
                //check sum and dispatch
                
                MpuDataDispatch(pProtocalData->data,pProtocalData->dataCount,IsrFlag);
                //
                pProtocalData->dataLength = 0;
                pProtocalData->dataCount = 0;
            }
        }
    }
}

static void MpuUartIntrISR(void)
{
    static uint8_t temData[128];
    uint32_t num ;
    
    num = Cy_SCB_UART_GetArray(MPU_HAL_UART_CHANNEL, temData, 64);
    /* UART interrupt handler */
    Cy_SCB_UART_Interrupt(MPU_HAL_UART_CHANNEL, &g_mpuUartDevContext);
    UartProtocalProcess(temData,num,1);
    NVIC_ClearPendingIRQ(CPUIntIdx4_IRQn);
}

static void MpuUartDeviceClockInit(uint32_t bandrate)
{
    uint32_t divSetting;
    uint64_t temp,sourceFreq,targetFreq;
    
    sourceFreq = 80000000ul;
    /*targetFreq = (115200*4);*/
    targetFreq = bandrate*8;//bandrate*sampletime
    temp = ((uint64_t)sourceFreq << 5ull);
    //temp = sourceFreq;
    divSetting = (uint32_t)(temp / targetFreq);
    Cy_SysClk_PeriphAssignDivider(PCLK_SCB4_CLOCK, CY_SYSCLK_DIV_24_5_BIT, 3u);
    Cy_SysClk_PeriphSetFracDivider(CY_SYSCLK_DIV_24_5_BIT, 3, 
                                   (((divSetting >> 5u) & 0x00000FFF) - 1u), 
                                   (divSetting & 0x0000001F));
    Cy_SysClk_PeriphEnableDivider(CY_SYSCLK_DIV_24_5_BIT, 3u);
}
void MpuScbUartEvent(uint32_t locEvents)
{
    
}

void MpuHalMainUartInit(uint32_t bandrate)
{
    cy_stc_sysint_irq_t         irqCfgUart;
    
    MpuUartDeviceClockInit(bandrate);    
    irqCfgUart.sysIntSrc = scb_4_interrupt_IRQn;
    irqCfgUart.intIdx    = CPUIntIdx4_IRQn;
    irqCfgUart.isEnabled = true;
    Cy_SysInt_InitIRQ(&irqCfgUart);//开启UART接收中断
    Cy_SysInt_SetSystemIrqVector(irqCfgUart.sysIntSrc, MpuUartIntrISR);//Scb_UART_IntrISR:uart中断处理函数
    //
    Cy_SCB_UART_DeInit(MPU_HAL_UART_CHANNEL);
    Cy_SCB_UART_Init(MPU_HAL_UART_CHANNEL, &g_mpuUarConfig, &g_mpuUartDevContext);
    Cy_SCB_UART_RegisterCallback(MPU_HAL_UART_CHANNEL, (scb_uart_handle_events_t)MpuScbUartEvent, &g_mpuUartDevContext);
    Cy_SCB_ClearTxInterrupt(MPU_HAL_UART_CHANNEL, CY_SCB_TX_INTR_LEVEL);
    Cy_SCB_UART_Enable(MPU_HAL_UART_CHANNEL);
    NVIC_SetPriority(CPUIntIdx4_IRQn, 4);
    NVIC_EnableIRQ(CPUIntIdx4_IRQn);
}

void MpuHalInit(void)
{
    memset(&g_mpuManage,0,sizeof(g_mpuManage));
    g_mpuManage.wakeoutTimeCount = 10;
    g_mpuManage.wakeMode = 1;
    MpuHalGpioInit();
#if(MPU_COMMUNICATION_USE_SPI)    
    MpuSpiDeviceClockInit();
#else
    MpuHalMainUartInit(115200*4);
#endif
}

void MpuHalTxTask(void *pvParameters)
{
    uint32_t queueData,remain,i;
    uint16_t startAddress;
    uint16_t length;
    //长度2
    //ucountSemaphore = xSemaphoreCreateCounting(3000,0);
    g_mpuUartTxBuffer.txQueueHandle = xQueueCreate( 20, // The number of items the queue can hold.
                              sizeof(uint32_t));
    uint8_t temp[50],j;
    
    while(1)
    {
        if(xQueueReceive(g_mpuUartTxBuffer.txQueueHandle, &queueData, 0xFFFFFFFF)!= pdPASS)
        {
          continue;
        }
      //发送FIFO中的数据;
        i=0;
        startAddress = (queueData>>16)&0xFFFF;
        remain = length = queueData&0xFFFF;         
        while(i<length)
        {
            if(remain>40)
            {
                for(j=0; j<40; j++)
                {                    
                    temp[j] = g_mpuUartTxBuffer.buffer[startAddress++];
                    if(startAddress>=MPU_HAL_TX_BUFFER)
                    {
                        startAddress = 0;
                    }
                    
                }
                Cy_SCB_UART_PutArray(MPU_HAL_UART_CHANNEL, temp, 40);//debug
                vTaskDelay(1);
                i = i+40;
                remain = remain - 40;
            }
            else
            {              
                for(j=0; j<remain; j++)
                {                    
                    temp[j] = g_mpuUartTxBuffer.buffer[startAddress++];
                    if(startAddress>=MPU_HAL_TX_BUFFER)
                    {
                        startAddress = 0;
                    }                    
                }
                Cy_SCB_UART_PutArray(MPU_HAL_UART_CHANNEL, temp, remain);//debug
                i = i+ remain;
                vTaskDelay(1);
            }
        }
    }    
}

static int16_t MpuUartTransmit(const uint8_t* pTxData,uint16_t txLength)
{
    uint16_t i;
    uint32_t data;
    data =  g_mpuUartTxBuffer.index<<16;
    for(i=0; i<txLength; i++)
    {
        g_mpuUartTxBuffer.buffer[g_mpuUartTxBuffer.index++] = pTxData[i];
        if(g_mpuUartTxBuffer.index>=MPU_HAL_TX_BUFFER)
        {
            g_mpuUartTxBuffer.index = 0;
        }
    }
    data |= txLength;
    xQueueSend(g_mpuUartTxBuffer.txQueueHandle,&data,0);
    return 0;
}

