/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: mpuHal.c
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
/****************************** include ***************************************/
#include "mpuHal.h"
#include "common_drv.h"  
#include "sysctrl_drv.h" 
#include "clock_drv.h"  
#include "gpio_drv.h"  
#include "uart_drv.h"  
#include "dma_drv.h"  
#include "peripheralHal.h"
#include "crc8_16_32.h"
#include "logHal.h"
#include "int_drv.h"
#include "timerHal.h"
#include "sysctrl_drv.h"
#include "spi_drv.h"

/****************************** Macro Definitions ******************************/
#define UART_DMA_ENABLE                     1
#define MPU_HAL_UART2_DEBUG                 0 // 使用UART2调试需要禁用logHal初始化
#define SPI_DMA_ENABLE                      0

#define UART_BAUDRATE                       (115200 * 4)
#define UART_OSC_FREQ                       8000000
#define UART_BUSY_MAX_WAIT                  (5000)
#define UART_TRANS_TIME_OUT_CNT             (500U)
#define MPU_HAL_RING_BUFFER                 (6144U)

#if (UART_DMA_ENABLE == 1)
#define MPU_HAL_UART_DMA_BUFFSIZE           (5120)
#define UART_DMA_TX_TIMEOUT_MS              5000
#define MPU_HAL_UART_DMA_IDLE_TIMER_MS      6 // 实测最少5ms，否则会有数据丢失
/* uart dma tx config */
#define UART_DMA_TX_CHANNEL                 DMA_CHANNEL0
#define UART_DMA_TX_IRQ                     DMA_Ch0_IRQn
#define UART_DMA_TX_CHANNEL_PRIORITY        DMA_CHN_PRIORITY0
#define UART_DMA_TX_IRQ_PRIORITY            0x3
/* uart dma rx config */
#define UART_DMA_RX_CHANNEL                 DMA_CHANNEL12
#define UART_DMA_RX_IRQ                     DMA_Ch12_IRQn
#define UART_DMA_RX_CHANNEL_PRIORITY        DMA_CHN_PRIORITY12
#define UART_DMA_RX_IRQ_PRIORITY            0x3
/* uart idle detect length */
#define UART_IDLE_DETECT_LENGTH             UART_IDLE_DETECT_LENGTH_16
#endif

#if (MPU_HAL_UART2_DEBUG == 0)
#define MPU_HAL_UART_ID                     UART0_ID
#define MPU_HAL_UART_IRQ_PRIORITY           0x3
#define MPU_HAL_UART_IRQ                    UART0_IRQn
#define MPU_HAL_UART_RX_PORT                PORT_C
#define MPU_HAL_UART_RX_PIN                 GPIO_2
#define MPU_HAL_UART_RX_GPIO                PTC2_GPIO
#define MPU_HAL_UART_RX_MUX                 PTC2_UART0_RX
#define MPU_HAL_UART_TX_PORT                PORT_C
#define MPU_HAL_UART_TX_PIN                 GPIO_3 
#define MPU_HAL_UART_TX_GPIO                PTC3_GPIO
#define MPU_HAL_UART_TX_MUX                 PTC3_UART0_TX
/* uart0 dma */
#define UART_DMA_TX_REQ                     DMA_REQ_UART0_TX
#define UART_DMA_RX_REQ                     DMA_REQ_UART0_RX
#define MPU_HAL_UART_ADDR                   UART0_BASE_ADDR
#define MPU_HAL_UART_CLK                    CLK_UART0
#define MPU_HAL_UART_SYSCTRL                SYSCTRL_UART0
#define MPU_HAL_UART_DMA_REQ_TX             DMA_REQ_UART0_TX
#define MPU_HAL_UART_DMA_REQ_RX             DMA_REQ_UART0_RX
#else
#define MPU_HAL_UART_ID                     UART2_ID
#define MPU_HAL_UART_IRQ_PRIORITY           0x3
#define MPU_HAL_UART_IRQ                    UART2_IRQn
#define MPU_HAL_UART_RX_PORT                PORT_A
#define MPU_HAL_UART_RX_PIN                 GPIO_8
#define MPU_HAL_UART_RX_GPIO                PTA8_GPIO
#define MPU_HAL_UART_RX_MUX                 PTA8_UART2_RX
#define MPU_HAL_UART_TX_PORT                PORT_A
#define MPU_HAL_UART_TX_PIN                 GPIO_9
#define MPU_HAL_UART_TX_GPIO                PTA9_GPIO
#define MPU_HAL_UART_TX_MUX                 PTA9_UART2_TX
/* uart2 dma */
#define UART_DMA_TX_REQ                     DMA_REQ_UART2_TX
#define UART_DMA_RX_REQ                     DMA_REQ_UART2_RX
#define MPU_HAL_UART_ADDR                   UART2_BASE_ADDR
#define MPU_HAL_UART_CLK                    CLK_UART2
#define MPU_HAL_UART_SYSCTRL                SYSCTRL_UART2
#define MPU_HAL_UART_DMA_REQ_TX             DMA_REQ_UART2_TX
#define MPU_HAL_UART_DMA_REQ_RX             DMA_REQ_UART2_RX
#endif

#if (SPI_DMA_ENABLE == 1)
/* SPI Configuration */
#define MPU_HAL_SPI_ID                      SPI_ID_0
#define MPU_HAL_SPI_CLK                     CLK_SPI0
#define MPU_HAL_SPI_SYSCTRL                 SYSCTRL_SPI0             
#define MPU_HAL_SPI_DATA_SIZE               8
#define MPU_HAL_SPI_CLK_DIVIDER             2
#define MPU_HAL_SPI_DMA_BUFFSIZE            5120

/* SPI register offsets */
#define MPU_HAL_SPI_TDATA_REG               (SPI0_BASE_ADDR + 0x60U)
#define MPU_HAL_SPI_RDATA_REG               (SPI0_BASE_ADDR + 0x60U)

/* SPI GPIO Configuration */
#define MPU_HAL_SPI_CLK_PORT                    PORT_D
#define MPU_HAL_SPI_CLK_PORT_PIN                GPIO_15
#define MPU_HAL_SPI_CLK_PORT_MUX                PTD15_SPI0_SCK

#define MPU_HAL_SPI_MOSI_PORT                   PORT_B
#define MPU_HAL_SPI_MOSI_PORT_PIN               GPIO_4
#define MPU_HAL_SPI_MOSI_PORT_MUX               PTB4_SPI0_SOUT

#define MPU_HAL_SPI_MISO_PORT                   PORT_D
#define MPU_HAL_SPI_MISO_PORT_PIN               GPIO_16
#define MPU_HAL_SPI_MISO_PORT_MUX               PTD16_SPI0_SIN

#define MPU_HAL_SPI_IEQ_PORT                   PORT_D
#define MPU_HAL_SPI_IEQ_PORT_PIN               GPIO_13
#define MPU_HAL_SPI_IEQ_PORT_MUX               PTD13_GPIO
#define MPU_HAL_SPI_IEQ_IRQ                    PORTD_IRQn
#define MPU_HAL_SPI_IEQ_IRQ_PRIORITY           0x3

#define MPU_HAL_SPI_REQ_PORT                   PORT_E
#define MPU_HAL_SPI_REQ_PORT_PIN               GPIO_8
#define MPU_HAL_SPI_REQ_PORT_MUX               PTE8_GPIO

/* SPI DMA Configuration */
#define SPI_DMA_TX_CHANNEL                  DMA_CHANNEL2
#define SPI_DMA_TX_IRQ                      DMA_Ch2_IRQn
#define SPI_DMA_TX_CHANNEL_PRIORITY         DMA_CHN_PRIORITY2
#define SPI_DMA_TX_IRQ_PRIORITY             0x3
#define SPI_DMA_RX_CHANNEL                  DMA_CHANNEL3
#define SPI_DMA_RX_IRQ                      DMA_Ch3_IRQn
#define SPI_DMA_RX_CHANNEL_PRIORITY         DMA_CHN_PRIORITY11
#define SPI_DMA_RX_IRQ_PRIORITY             0x3
#define SPI_DMA_TX_REQ                      DMA_REQ_SPI0_TX
#define SPI_DMA_RX_REQ                      DMA_REQ_SPI0_RX
#endif

/****************************** Type Definitions ******************************/
typedef struct 
{
    uint8_t data[MPU_HAL_BUFFERSIZE_MAX];
    uint16_t dataCount;
    uint16_t dataLength;
}MpuUartProtocalBuffer_t;

typedef enum {
    PROTOCOL_STATE_IDLE,        // Idle: wait for 1st header byte (0x55)
    PROTOCOL_STATE_WAIT_HEADER2,// Wait for 2nd header byte (0xAA)
    PROTOCOL_STATE_WAIT_AID,    // Wait for valid AID (0x03 / 0x05)
    PROTOCOL_STATE_WAIT_HEADER, // Wait for remaining header fields
    PROTOCOL_STATE_WAIT_DATA    // Wait for payload and checksum
} ProtocolStateType;

typedef enum {
    DMA_BUF_STATE_UNKNOWN = 0,
    DMA_BUF_STATE_IDLE,
    DMA_BUF_STATE_BUSY,
    DMA_BUF_STATE_REV,
    DMA_BUF_STATE_DONE,
    DMA_BUF_STATE_ERROR
} DmaBufStateType;

typedef struct {
    uint8_t buf[MPU_HAL_RING_BUFFER];     // Buffer storage
    volatile uint16_t head;             // Write index (updated by interrupt)
    volatile uint16_t tail;             // Read index (updated by main loop)
} RingBufferType;

typedef struct {
    RingBufferType rx_ring_buf;         // RX ring buffer instance
    ProtocolStateType proto_state;      // Current state of protocol parser
    MpuUartProtocalBuffer_t proto_buf;  // Buffer for storing protocol data
    uint8_t init_success;               // Init status (1 = success, 0 = failure)
    uint16_t err_cnt;                   // Error counter (buffer full, invalid protocol)
} MpuUartHandleTypeDef;

#if (UART_DMA_ENABLE == 1)
typedef struct
{
    UART_Config_t uartConfig;        /* UART配置 */
    UART_FIFOConfig_t fifoConfig;    /* FIFO配置 */
    UART_IdleDetectConfig_t idleDetectConfig; /* 空闲检测配置 */
    DMA_Config_t dmaConfig;          /* DMA控制器配置 */
    DMA_TransferConfig_t rxTransferConfig; /* DMA接收传输配置 */
    DMA_TransferConfig_t txTransferConfig; /* DMA发送传输配置 */
} UartDmaInitConfig_t;

typedef struct
{
    uint16_t BufferLen;
    uint8_t Buffer[MPU_HAL_UART_DMA_BUFFSIZE];
    DmaBufStateType dmaBufStatus;
} UartDmaBuffer_t;
#endif

#if (SPI_DMA_ENABLE == 1)
/* SPI DMA 初始化配置结构体 */
typedef struct
{
    SPI_Config_t spiConfig;             /* SPI配置 */
    SPI_DmaLvl_t dmaLvlConfig;          /* SPI DMA级别配置 */
    DMA_TransferConfig_t rxTransferConfig; /* DMA接收传输配置 */
    DMA_TransferConfig_t txTransferConfig; /* DMA发送传输配置 */
} SpiDmaInitConfig_t;

/* SPI DMA 缓冲区结构体 */
typedef struct
{
    uint16_t BufferLen;
    uint8_t Buffer[MPU_HAL_SPI_DMA_BUFFSIZE];
    DmaBufStateType dmaBufStatus;
} SpiDmaBuffer_t;
#endif
/****************************** Global Variables ******************************/
static MpuUartHandleTypeDef g_mpuUartRingBuf = 
{
    .rx_ring_buf = {.head = 0, .tail = 0},
    .proto_state = PROTOCOL_STATE_IDLE,
    .init_success = 0,
    .err_cnt = 0
};

#if (UART_DMA_ENABLE == 1)
/* DMA定时器句柄 */
static int16_t g_dmaTimerHandle = -1;

/* DMA发送缓冲区 */
static UartDmaBuffer_t g_uartDmaTxBuf = 
{
    .BufferLen = 0U,
    .Buffer = {0},
    .dmaBufStatus = DMA_BUF_STATE_UNKNOWN,
};

/* DMA接收缓冲区 */
static UartDmaBuffer_t g_uartDmaRxBuf = 
{
    .BufferLen = 0U,
    .Buffer = {0},
    .dmaBufStatus = DMA_BUF_STATE_UNKNOWN,
};

/* DMA初始化配置 */
static UartDmaInitConfig_t g_uartDmaInitConfig = {
    /* UART配置 */
    .uartConfig = {
        .baudRate = UART_BAUDRATE,
        .dataBits = UART_DATABITS_8,
        .parity = UART_PARITY_NONE,
        .stopBits = UART_STOPBITS_1,
        .autoFlowControl = DISABLE,
        .oscFreq = UART_OSC_FREQ
    },
    /* FIFO配置 */
    .fifoConfig = {
        .fifoEnable = ENABLE,
        .txFifoReset = ENABLE,
        .rxFifoReset = ENABLE,
        .fifoTet = UART_TX_FIFO_CHAR_2,
        .fifoRt = UART_RX_FIFO_LESS_2
    },
    /* 空闲检测配置 */
    .idleDetectConfig = {
        .Cmd = ENABLE,
        .len = UART_IDLE_DETECT_LENGTH
    },
    /* DMA控制器配置 */
    .dmaConfig = {
        .dmaDebugBehavior = DMA_DEBUG_HALT,
        .dmaPriorityArbitration = DMA_ROUND_ROBIN_ARBITRATION,
        .dmaErrorBehavior = DMA_ERROR_HALT
    },
    /* uart dma rx config */
    .rxTransferConfig = {
        .channel = UART_DMA_RX_CHANNEL,
        .channelPriority = UART_DMA_RX_CHANNEL_PRIORITY,
        .source = UART_DMA_RX_REQ,
        .srcAddr = (uint32_t)MPU_HAL_UART_ADDR,
        .destAddr = 0,
        .minorLoopSrcOffset = 0,
        .minorLoopDestOffset = 1,
        .majorLoopSrcOffset = 0,
        .majorLoopDestOffset = 0,
        .transferByteNum = 1,
        .minorLoopNum = MPU_HAL_UART_DMA_BUFFSIZE,
        .srcTransferSize = DMA_TRANSFER_SIZE_1B,
        .destTransferSize = DMA_TRANSFER_SIZE_1B,
        .disableRequestAfterDoneCmd = DISABLE
    },
    /* uart dma tx config */
    .txTransferConfig = {
        .channel = UART_DMA_TX_CHANNEL,
        .channelPriority = UART_DMA_TX_CHANNEL_PRIORITY,
        .source = UART_DMA_TX_REQ,
        .srcAddr = 0,
        .destAddr = (uint32_t)MPU_HAL_UART_ADDR,
        .minorLoopSrcOffset = 1,
        .minorLoopDestOffset = 0,
        .majorLoopSrcOffset = 0,
        .majorLoopDestOffset = 0,
        .transferByteNum = MPU_HAL_UART_DMA_BUFFSIZE,
        .minorLoopNum = 1,
        .srcTransferSize = DMA_TRANSFER_SIZE_1B,
        .destTransferSize = DMA_TRANSFER_SIZE_1B,
        .disableRequestAfterDoneCmd = ENABLE
    }
};
#else
const UART_Config_t UART0_Config =
{
 .baudRate = UART_BAUDRATE,  // Baud rate
 .dataBits = UART_DATABITS_8, // 8 data bits
 .parity = UART_PARITY_NONE,  // No parity
 .stopBits = UART_STOPBITS_1, // 1 stop bit
 .autoFlowControl = DISABLE,  // Disable flow control mode
 .oscFreq = UART_OSC_FREQ  // HSOSC frequency
};

const UART_FIFOConfig_t UART0_FifoConfig =
{
 .fifoEnable = ENABLE,   // Enable FIFO
    .txFifoReset = ENABLE,   // Enable TX_FIFO reset
    .rxFifoReset = ENABLE,   // Enable RX_FIFO reset
    .fifoTet = UART_TX_FIFO_CHAR_2, // Set TX_Empty threshold
    .fifoRt = UART_RX_FIFO_CHAR_1 // Set RCVR threshold
};
#endif

#if (SPI_DMA_ENABLE == 1)
/* SPI DMA初始化配置 */
static SpiDmaInitConfig_t g_spiDmaInitConfig = {
    /* SPI配置 */
    .spiConfig = {
        .mode = SPI_MODE_MASTER,
        .dataSize = MPU_HAL_SPI_DATA_SIZE,
        .clkPhase = SPI_CLK_PHASE_FIRST,
        .clkPolarity = SPI_CLK_INACTIVE_LOW,
        .transMode = SPI_TMOD_TR,
        .clkDivider = MPU_HAL_SPI_CLK_DIVIDER,
        .transFifoThr = 0U,
        .recvFifoThr = 0U
    },
    /* SPI DMA级别配置 */
    .dmaLvlConfig = {
        .dmaTransReqLevel = 1U,
        .dmaRecvReqLevel = 1U
    },
    /* SPI DMA rx config */
    .rxTransferConfig = {
        .channel = SPI_DMA_RX_CHANNEL,
        .channelPriority = SPI_DMA_RX_CHANNEL_PRIORITY,
        .source = SPI_DMA_RX_REQ,
        .srcAddr = (uint32_t)MPU_HAL_SPI_RDATA_REG,
        .destAddr = 0,
        .minorLoopSrcOffset = 0,
        .minorLoopDestOffset = 1,
        .majorLoopSrcOffset = 0,
        .majorLoopDestOffset = 0,
        .transferByteNum = 1,
        .minorLoopNum = MPU_HAL_SPI_DMA_BUFFSIZE,
        .srcTransferSize = DMA_TRANSFER_SIZE_1B,
        .destTransferSize = DMA_TRANSFER_SIZE_1B,
        .disableRequestAfterDoneCmd = ENABLE
    },
    /* SPI DMA tx config */
    .txTransferConfig = {
        .channel = SPI_DMA_TX_CHANNEL,
        .channelPriority = SPI_DMA_TX_CHANNEL_PRIORITY,
        .source = SPI_DMA_TX_REQ,
        .srcAddr = 0,
        .destAddr = (uint32_t)MPU_HAL_SPI_TDATA_REG,
        .minorLoopSrcOffset = 1,
        .minorLoopDestOffset = 0,
        .majorLoopSrcOffset = 0,
        .majorLoopDestOffset = 0,
        .transferByteNum = 1,
        .minorLoopNum = MPU_HAL_SPI_DMA_BUFFSIZE,
        .srcTransferSize = DMA_TRANSFER_SIZE_1B,
        .destTransferSize = DMA_TRANSFER_SIZE_1B,
        .disableRequestAfterDoneCmd = ENABLE
    }
};

/* SPI DMA发送缓冲区 */
static SpiDmaBuffer_t g_spiDmaTxBuf = {
    .BufferLen = 0U,
    .Buffer = {0},
    .dmaBufStatus = DMA_BUF_STATE_UNKNOWN,
};

/* SPI DMA接收缓冲区 */
static SpiDmaBuffer_t g_spiDmaRxBuf = {
    .BufferLen = 0U,
    .Buffer = {0},
    .dmaBufStatus = DMA_BUF_STATE_UNKNOWN,
};
#endif

volatile uint8_t g_rxBuffer[MPU_HAL_BUFFERSIZE_MAX];
volatile static UartReceivePackType_t s_mpuUartNewPack = UART_RECEIVE_PACK_OLD;
volatile static uint16_t s_mpuUartRxDateNum = 0U;
volatile static MpuUartProtocalBuffer_t     g_mpuUartProtocalBuffer;
static uint8_t g_uartSendData[MPU_HAL_BUFFERSIZE_MAX];

/****************************** Function Declarations *************************/
#if(0)
static void MpuHalSetPower(uint8_t flag);
#endif
static void MpuDataDispatch(const uint8_t* pData,uint16_t length,uint8_t irq);
static uint16_t MpuHalPackGetCrcArray(uint8_t* data, uint16_t length);
static uint8_t MpuHalReadRingBuf(RingBufferType* rb, uint8_t* data);
static void MpuHalProtocalProcess(void);

static void MpuHalSetRingBuf(uint8_t recv_data);


#if (UART_DMA_ENABLE == 1)
static void MpuHal_UartDmaRxReStart(void);
static void MpuHal_UartDmaRxDataProcess(uint8_t *buf, uint16_t length);
static void MpuHal_UartDmaRxCallback(void);
static void MpuHal_UartIdleCallback(void);
static void MpuHal_UartDmaTxCallback(void);
static ResultStatus_t MpuHal_UartDmaSendPacket(const uint8_t* pTxData,uint16_t txLength);
static void MpuHal_UartDmaTransferConfig(void);
static void MpuHal_UartDmaRxDataHandleCallback(void);
#else
static ResultStatus_t MpuHalUart0_SendData(unsigned char *txdataP, unsigned int dlc);
static void MpuHalUart0_IntCallBack(void);
#endif

#if (SPI_DMA_ENABLE == 1)
static void MpuHal_SpiInit(void);
static void MpuHal_SpiGpioInit(void);
static void MpuHal_SpiDmaTransferConfig(void);
static ResultStatus_t MpuHal_SpiDmaSendPacket(const uint8_t* pTxData, uint16_t txLength);
static void MpuHal_SpiDmaTxCallback(void);
static void MpuHal_SpiDmaRxCallback(void);
static void MpuHal_SpiDmaRxDataHandleCallback(void);
static void MpuHal_SpiDmaRxDataProcess(uint8_t *buf, uint16_t length);
static void MpuHal_SpiIrqCallback(PORT_Id_t portId, PORT_GpioNum_t gpioNum);
static void MpuHal_SpiDmaRxReStart(void);
static void MpuHal_SpiDmaTxDataHandleCallback(void);
#endif
static ResultStatus_t DMA_ChannelEnable(DMA_Channel_t channel);

/****************************** Public Function Implementations ******************************/
/*************************************************
  Function:       MpuHalGpioInit
  Description:    Initialize GPIO pins for MPU communication and control
  Input:          None
  Output:         None
  Return:         None
  Others:         Configures power enable, power key, VBUS, and wake out pins
*************************************************/
void MpuHalGpioInit(void)
{
    /********power en **************************/
    PORT_PinmuxConfig(PORT_B, GPIO_10, PTB10_GPIO);
    GPIO_SetPinDir(PORT_B, GPIO_10, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_B, GPIO_10, GPIO_HIGH);
    /********power key***************************/
    //PORT_PinmuxConfig(PORT_E, GPIO_11, PTE11_GPIO);
    //GPIO_SetPinDir(PORT_E, GPIO_11, GPIO_OUTPUT);
    //GPIO_WritePinOutput(PORT_E, GPIO_11, GPIO_LOW);
    /********vbus***************************/
    PORT_PinmuxConfig(PORT_A, GPIO_1, PTA1_GPIO);
    GPIO_SetPinDir(PORT_A, GPIO_1, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_A, GPIO_1, GPIO_LOW);
    /********wake  out***************************/
    //PORT_PinmuxConfig(PORT_B, GPIO_8, PTB8_GPIO);
    //GPIO_SetPinDir(PORT_B, GPIO_8, GPIO_OUTPUT);
    //GPIO_WritePinOutput(PORT_B, GPIO_8, GPIO_LOW);
}

#if(0)
/*************************************************
  Function:       MpuHalSetPower
  Description:    Control MPU power supply
  Input:          flag: 0 to turn off power, 1 to turn on power
  Output:         None
  Return:         None
  Others:         Controls the power enable pin
*************************************************/
static void MpuHalSetPower(uint8_t flag)
{
    if(0==flag)
    {
        GPIO_WritePinOutput(PORT_B,GPIO_10,GPIO_LOW); //simon change C6 to B10
    }
    else
    {
        GPIO_WritePinOutput(PORT_B,GPIO_10,GPIO_HIGH);
    }
}

/*************************************************
  Function:       MpuHalSetPowerkey
  Description:    Control MPU power key signal
  Input:          flag: 0 to set low, 1 to set high
  Output:         None
  Return:         None
  Others:         Used to trigger MPU power on sequence
*************************************************/
static void MpuHalSetPowerkey(uint8_t flag)
{
    if(0==flag)
    {
        GPIO_WritePinOutput(PORT_E,GPIO_11,GPIO_LOW); //simon change A15 to E11
    }
    else
    {
        GPIO_WritePinOutput(PORT_E,GPIO_11,GPIO_HIGH);
    }
}
#endif

/*************************************************
  Function:       MpuHalSetVbus
  Description:    Control MPU VBUS power supply
  Input:          flag: 0 to turn off VBUS, 1 to turn on VBUS
  Output:         None
  Return:         None
  Others:         Controls the VBUS enable pin (PORT_A, GPIO_1)
*************************************************/
static void MpuHalSetVbus(uint8_t flag)
{
    if(0==flag)
    {
        GPIO_WritePinOutput(PORT_A,GPIO_1,GPIO_LOW); //simon change A15 to E11
    }
    else
    {
        GPIO_WritePinOutput(PORT_A,GPIO_1,GPIO_HIGH);
    }
}
/*************************************************
  Function:       MpuDataDispatch
  Description:    Dispatch received MPU data to appropriate handlers
  Input:          pData: Pointer to received data
                  length: Length of received data
                  irq: Interrupt flag
  Output:         None
  Return:         None
  Others:         Processes specific message types and updates global buffers
*************************************************/
static void MpuDataDispatch(const uint8_t* pData,uint16_t length,uint8_t irq)
{
    if ((pData == NULL) || (length == 0)) 
    {
        TBOX_PRINT("Dispatch err: invalid data/len\n");
    } 
    else 
    {
        if (pData[2] == PROTOCOL_AID_FWUPD) 
        {
            COMMON_DISABLE_INTERRUPTS();
            memcpy((uint8_t*)g_rxBuffer, pData, length);
            s_mpuUartRxDateNum = length; 
            MpuHalSetNewPack(UART_RECEIVE_PACK_NEW);      
            COMMON_ENABLE_INTERRUPTS();
        } 
        else 
        {
            TBOX_PRINT("Dispatch err: invalid AID (0x%02x)\n", pData[2]);
        }
    }
}

/*************************************************
  Function:       MpuHalTransmit
  Description:    Transmit data to MPU through UART interface
  Input:          AID: Application ID
                  MID: Message ID
                  serviceData: Pointer to service data buffer
                  Servicelength: Length of service data
  Output:         None
  Return:         MPU_HAL_STATUS_OK if success, MPU_HAL_STATUS_ERR if failed
  Others:          
*************************************************/
uint16_t MpuHalTransmit(uint8_t AID, uint8_t MID, const uint8_t *serviceData, uint16_t Servicelength)
{
    uint32_t idx = 0U;
    uint32_t frameLen;
    uint16_t crc;
    uint16_t ret = MPU_HAL_STATUS_OK;  
    uint8_t transmitFailed = 0U;       

    if ((Servicelength > 0U) && (serviceData == NULL)) 
    {
        ret = MPU_HAL_STATUS_ERR;
        transmitFailed = 1U;
        TBOX_PRINT("Mcu  uart hal transmit service data ptr null \r\n");
    }
    else
    {
        frameLen = (uint32_t)MPU_FRAME_FIXED_HDR_LEN + (uint32_t)Servicelength + (uint32_t)MPU_FRAME_CRC_LEN;
        if (frameLen > (uint32_t)MPU_HAL_BUFFERSIZE_MAX) 
        {
            ret = MPU_HAL_STATUS_ERR;
            transmitFailed = 1U;
            TBOX_PRINT("Mcu  uart hal transmit service data too long \r\n");
        }
    }

    if (transmitFailed == 0U) 
    {
        /* ---------- Package fixed header ---------- */
        g_uartSendData[idx++] = 0x55U;
        g_uartSendData[idx++] = 0xAAU;
        g_uartSendData[idx++] = AID;
        g_uartSendData[idx++] = MID;
        g_uartSendData[idx++] = 0x00U;                                 /* RSV1 */
        g_uartSendData[idx++] = (uint8_t)((Servicelength >> 8) & 0xFFU);
        g_uartSendData[idx++] = (uint8_t)(Servicelength & 0xFFU);
        g_uartSendData[idx++] = 0x00U;                                 /* RSV2 */

        if (Servicelength > 0U) 
        {
            (void)memcpy(&g_uartSendData[idx], serviceData, (size_t)Servicelength);
            idx += (uint32_t)Servicelength;
        }

        crc = MpuHalPackGetCrcArray(g_uartSendData, (uint16_t)(Servicelength + (uint16_t)MPU_FRAME_FIXED_HDR_LEN));
        g_uartSendData[idx++] = (uint8_t)((crc >> 8) & 0xFFU);
        g_uartSendData[idx++] = (uint8_t)(crc & 0xFFU);
#if (UART_DMA_ENABLE == 1)
        if (MpuHal_UartDmaSendPacket((unsigned char *)g_uartSendData, (unsigned int)idx) != SUCC)
        {
            ret = MPU_HAL_STATUS_ERR;
            TBOX_PRINT("Mcu dma uart hal transmit driver error \r\n");           
        }
#else
        if (MpuHalUart0_SendData((unsigned char *)g_uartSendData, (unsigned int)idx) != SUCC) 
        {
            ret = MPU_HAL_STATUS_ERR;
            TBOX_PRINT("Mcu  uart hal transmit driver error \r\n");
        }
#endif
#if (SPI_DMA_ENABLE == 1)
        if (MpuHal_SpiDmaSendPacket((unsigned char *)g_uartSendData, (unsigned int)idx) != SUCC)
        {
            ret = MPU_HAL_STATUS_ERR;
            TBOX_PRINT("Mcu dma uart hal transmit driver error \r\n");           
        }
#endif
    }
    return ret;
}

/*************************************************
  Function:       MpuPackGetCrcArray
  Description:    Calculate CRC-16 for data array
  Input:          data: Pointer to data buffer
                  length: Length of data
  Output:         None
  Return:         Calculated CRC-16 value
  Others:         Uses CCITT CRC-16 algorithm
*************************************************/
static uint16_t MpuHalPackGetCrcArray(uint8_t* data, uint16_t length)
{
    uint16_t crc;
    
    crc = 0x0000;
    crc = CcittCrc16(crc, data, length);
    return crc;
}

/*************************************************
  Function: MpuHalReadRingBuf
  Description :Read ring buf 
  Input: 
  Output:
  Return:         
*************************************************/
static uint8_t MpuHalReadRingBuf(RingBufferType* rb, uint8_t* data)
{
    uint8_t read_ok = 0;
    uint16_t current_head = rb->head;
    uint16_t current_tail = rb->tail;
    COMMON_DISABLE_INTERRUPTS();  
    if (current_head != current_tail)  
    { 
        *data = rb->buf[current_tail];  
        current_tail = (current_tail + 1) % MPU_HAL_RING_BUFFER;
        rb->tail = current_tail;  
        read_ok = 1;
    }
    COMMON_ENABLE_INTERRUPTS();
    return read_ok;
}

/*************************************************
  Function:       MpuHalProtocalProcess
  Description:    Process UART protocol data frame
  Input:          pData: Pointer to UART received data
                  dataLength: Length of received data
                  IsrFlag: Interrupt service routine flag
  Output:         None
  Return:         None
  Others:         Implements frame parsing and protocol handling
*************************************************/
static void MpuHalProtocalProcess(void)
{
    MpuUartHandleTypeDef* huart = &g_mpuUartRingBuf;
    uint8_t recv_data = 0;
    uint8_t read_ok = 0;

    if (huart->init_success != 1) 
    {
        TBOX_PRINT(" Mpu hal uart init error,does not support protocal process\r\n");
    } 
    else 
    {
        for (uint8_t i = 0; i < 10; i++) {
            read_ok = MpuHalReadRingBuf(&huart->rx_ring_buf, &recv_data);
            if (read_ok == 0) {
                 return;
            }
            switch (huart->proto_state) 
            {
                case PROTOCOL_STATE_IDLE:
                    // Wait for 1st header byte (0x55)
                    if (recv_data == PROTOCOL_HEADER1) 
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_HEADER2;
                    }
                    break;

                case PROTOCOL_STATE_WAIT_HEADER2:
                    // Wait for 2nd header byte (0xAA)
                    if (recv_data == PROTOCOL_HEADER2) 
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_AID;
                    } 
                    else 
                    {
                        huart->proto_buf.dataCount = 0;
                        huart->proto_state = PROTOCOL_STATE_IDLE;
                        TBOX_PRINT("Proto err: invalid header2 (0x%02x)\n", recv_data);
                        //huart->err_cnt++;
                    }
                    break;

                case PROTOCOL_STATE_WAIT_AID:
                    // Wait for valid AID (0x03)
                    if (recv_data == PROTOCOL_AID_FWUPD)
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_HEADER;
                    } 
                    else 
                    {
                        huart->proto_buf.dataCount = 0;
                        huart->proto_state = PROTOCOL_STATE_IDLE;
                        //TBOX_PRINT("Proto err: invalid AID (0x%02x)\n", recv_data);
                        //huart->err_cnt++;
                    }
                    break;

                case PROTOCOL_STATE_WAIT_HEADER:
                    // Collect remaining header fields until header length is reached
                    huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                    huart->proto_buf.dataCount++;

                    if (huart->proto_buf.dataCount == MPU_PROTOCAL_HEADER_LEN) 
                    {
                        huart->proto_buf.dataLength = ((uint16_t)huart->proto_buf.data[5] << 8) | huart->proto_buf.data[6];
                        // Check if payload length exceeds max buffer size
                        if (huart->proto_buf.dataLength > MPU_HAL_BUFFERSIZE_MAX) 
                        {
                            TBOX_PRINT("Proto err: data len over max (%d > %d)\n", 
                                       huart->proto_buf.dataLength, MPU_HAL_BUFFERSIZE_MAX);
                            huart->proto_buf.dataCount = 0;
                            huart->proto_buf.dataLength = 0;
                            huart->proto_state = PROTOCOL_STATE_IDLE;
                            huart->err_cnt++;
                        } 
                        else 
                        {
                            huart->proto_state = PROTOCOL_STATE_WAIT_DATA;
                        }
                    }
                    break;

                case PROTOCOL_STATE_WAIT_DATA:
                    // Collect payload and checksum (last 2 bytes)
                    huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                    huart->proto_buf.dataCount++;

                    // Check if full packet is received (header + payload + checksum)
                    if (huart->proto_buf.dataCount >= (MPU_PROTOCAL_HEADER_LEN + huart->proto_buf.dataLength + 2)) 
                    {
                        MpuDataDispatch((uint8_t*)huart->proto_buf.data, huart->proto_buf.dataCount, 0);
                        huart->proto_buf.dataCount = 0;
                        huart->proto_buf.dataLength = 0;
                        huart->proto_state = PROTOCOL_STATE_IDLE;
                    }
                    break;

                default:
                    huart->proto_state = PROTOCOL_STATE_IDLE;
                    huart->proto_buf.dataCount = 0;
                    huart->err_cnt++;
                    break;
            }

        }
    }
}

/*************************************************
  Function:       MpuHalUart0_SendData
  Description:    Send data through UART0 interface
  Input:          txdataP: Pointer to transmit data buffer
                  dlc: Data length to send
  Output:         None
  Return:         SUCC if successful, ERR if failed
  Others:         Implements blocking transmission with timeout
*************************************************/
#if (UART_DMA_ENABLE == 0)
static ResultStatus_t MpuHalUart0_SendData(unsigned char *txdataP, unsigned int dlc)
{
    unsigned int i = 0U;
    unsigned int delayCnt = 0U;

    while(UART_GetLineStatus(MPU_HAL_UART_ID, UART_LINESTA_TEMT) == RESET) // TX_FIFO is not empty, wait
    {
        if(delayCnt > UART_TRANS_TIME_OUT_CNT) // Estimated based on the time needed to send 4 32-bit data in TX_FIFO at 1M baud rate.
        {
            return ERR; 
        }
    }

    for(; i<dlc; i++)
    {
        UART_SendByte(MPU_HAL_UART_ID, txdataP[i]); 

        delayCnt = 0;
        while(UART_GetLineStatus(MPU_HAL_UART_ID, UART_LINESTA_TEMT) == RESET) // TX_FIFO is not empty, wait
        {
            if(delayCnt > UART_TRANS_TIME_OUT_CNT) // Estimated based on the time needed to send 4 32-bit data in TX_FIFO at 1M baud rate.
            {
                return ERR;
            }
            delayCnt++;
        }
    }

    delayCnt = 0;
    while(UART_GetLineStatus(MPU_HAL_UART_ID, UART_LINESTA_TEMT) == RESET) // TX_FIFO is not empty, wait
    {
        if(delayCnt > UART_TRANS_TIME_OUT_CNT) // Estimated based on the time needed to send 4 32-bit data in TX_FIFO at 1M baud rate.
        {
            return ERR;
        }
        delayCnt++;
    }
    return SUCC;
}
#endif

/*************************************************
  Function:       MpuHalSetRingBuf
  Description:    Set data to UART0 ring buffer
  Input:          recv_data: Data byte to be stored in the buffer
  Output:         None
  Return:         None
  Others:         None
*************************************************/
static void MpuHalSetRingBuf(uint8_t recv_data)
{
    MpuUartHandleTypeDef* huart = &g_mpuUartRingBuf;
    uint16_t next_head = (huart->rx_ring_buf.head + 1) % MPU_HAL_RING_BUFFER;

    if (next_head != huart->rx_ring_buf.tail) 
    {
        huart->rx_ring_buf.buf[huart->rx_ring_buf.head] = recv_data;
        huart->rx_ring_buf.head = next_head; // Update write index
    } 
    else 
    {
        TBOX_PRINT("UART0 ring buf full! Err cnt: %d\n", huart->err_cnt);
        huart->err_cnt++; 
    }
}

/*************************************************
  Function:       MpuHalUart0_IntCallBack
  Description:    UART0 Receive Buffer Full Interrupt Service Routine
  Input:          None
  Output:         None
  Return:         None
  Others:         Triggered when data is received, processes incoming bytes
*************************************************/
#if (UART_DMA_ENABLE == 0)
static void MpuHalUart0_IntCallBack(void)
{
    uint8_t recv_data = UART_ReceiveByte(MPU_HAL_UART_ID);
    COMMON_DISABLE_INTERRUPTS();
    MpuHalSetRingBuf(recv_data); 
    COMMON_ENABLE_INTERRUPTS();
}
#endif

#if (UART_DMA_ENABLE == 1)
/*************************************************
 Function: MpuHal_UartDmaRxReStart
 Description: Restart UART DMA receive operation
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHal_UartDmaRxReStart(void)
{
    DMA_SetDestAddr(UART_DMA_RX_CHANNEL, (uint32_t)g_uartDmaRxBuf.Buffer);
    DMA_SetMinorLoopNum(UART_DMA_RX_CHANNEL, MPU_HAL_UART_DMA_BUFFSIZE);
    g_uartDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_REV;
    DMA_ChannelRequestEnable(UART_DMA_RX_CHANNEL);
}

/*************************************************
 Function: MpuHal_UartDmaRxDataProcess
 Description: Process received data from UART DMA buffer
 Input: buf: Pointer to received data buffer
        length: Number of bytes received
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHal_UartDmaRxDataProcess(uint8_t *buf, uint16_t length)
{
    if ((buf == NULL) || (length == 0u) || (length > MPU_HAL_UART_DMA_BUFFSIZE)) {
        return;
    }
    COMMON_DISABLE_INTERRUPTS();
    for (uint16_t i = 0u; i < length; i++) {
        MpuHalSetRingBuf(buf[i]); 
    }
    COMMON_ENABLE_INTERRUPTS();
}

/*************************************************
 Function: MpuHal_UartDmaRxCallback
 Description: Process received data from UART DMA buffer and restart receive operation
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHal_UartDmaRxCallback(void)
{
    g_uartDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_DONE;
    MpuHal_UartDmaRxDataHandleCallback();
}

/*************************************************
 Function: MpuHal_UartIdleCallback
 Description: Process UART idle event, check for received data and send it if available
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHal_UartIdleCallback(void)
{
    TimerHalStartTime(g_dmaTimerHandle, MPU_HAL_UART_DMA_IDLE_TIMER_MS);
}

/*************************************************
 Function: MpuHal_UartDmaTxCallback
 Description: Process UART DMA transmit callback, disable request and clear done status
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHal_UartDmaTxCallback(void)
{
    g_uartDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_DONE;
    DMA_ChannelRequestDisable(UART_DMA_TX_CHANNEL);
    DMA_ClearDoneStatus(UART_DMA_TX_CHANNEL);
#if (MPU_HAL_UART2_DEBUG == 1)
        TBOX_PRINT("UART2 DMA TX: ");
        for (uint16_t i = 0u; i < g_uartDmaTxBuf.BufferLen; i++) {
            TBOX_PRINT("%02X ", g_uartDmaTxBuf.Buffer[i]);
        }
        TBOX_PRINT("\n");
#endif
    memset(g_uartDmaTxBuf.Buffer, 0u, g_uartDmaTxBuf.BufferLen);
    g_uartDmaTxBuf.BufferLen = 0u;
    g_uartDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_IDLE;
}

/*************************************************
  Function:       MpuHal_UartDmaRxDataHandleCallback
  Description:    Handle received data from UART DMA buffer
  Input:          None
  Output:         None
  Return:         None
  Others:         None
*************************************************/
static void MpuHal_UartDmaRxDataHandleCallback(void)
{
    uint16_t maxLen = 0x0u, resLen = 0u;
    COMMON_DISABLE_INTERRUPTS();
    TimerHalStopTime(g_dmaTimerHandle);
    DMA_ChannelRequestDisable(UART_DMA_RX_CHANNEL);
    DMA_ClearDoneStatus(UART_DMA_RX_CHANNEL);
    maxLen = DMA_GetMinorLoopNum(UART_DMA_RX_CHANNEL);

    if (g_uartDmaRxBuf.dmaBufStatus == DMA_BUF_STATE_DONE) {
        g_uartDmaRxBuf.BufferLen = maxLen;
    } else {
        resLen = DMA_GetRestMinorLoopNum(UART_DMA_RX_CHANNEL);
        g_uartDmaRxBuf.BufferLen = (maxLen - resLen);
    }

    if (g_uartDmaRxBuf.BufferLen > 0u) {
#if (MPU_HAL_UART2_DEBUG == 1)
        TBOX_PRINT("UART2 DMA RX: ");
        for (uint16_t i = 0u; i < g_uartDmaRxBuf.BufferLen; i++) {
            TBOX_PRINT("%02X ", g_uartDmaRxBuf.Buffer[i]);
        }
        TBOX_PRINT("\n");
#endif
        MpuHal_UartDmaRxDataProcess(g_uartDmaRxBuf.Buffer, g_uartDmaRxBuf.BufferLen);  
        memset(g_uartDmaRxBuf.Buffer, 0u, g_uartDmaRxBuf.BufferLen);
        g_uartDmaRxBuf.BufferLen = 0u;
    }

    MpuHal_UartDmaRxReStart();
    COMMON_ENABLE_INTERRUPTS();
}

/*************************************************
 Function: MpuHal_UartDmaSendPacket
 Description: MpuHal_UartDmaSendPacket
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static ResultStatus_t MpuHal_UartDmaSendPacket(const uint8_t* pTxData, uint16_t txLength)
{
    uint32_t delayCnt = UART_DMA_TX_TIMEOUT_MS;
    while (g_uartDmaTxBuf.dmaBufStatus != DMA_BUF_STATE_IDLE)
    {
        delayCnt--;
        if (delayCnt == 0u) {
            return ERR;        
        }
    }
    if (txLength == 0u || (pTxData == NULL)) {
        return ERR;     
    }
    COMMON_DISABLE_INTERRUPTS();
    memcpy(g_uartDmaTxBuf.Buffer, pTxData, txLength);
    g_uartDmaTxBuf.BufferLen = txLength;
    DMA_HaltControl(ENABLE);
    DMA_SetSrcAddr(UART_DMA_TX_CHANNEL, (uint32_t)g_uartDmaTxBuf.Buffer);

    if ((txLength % 2) == 1) {
        DMA_SetMinorLoopNum(UART_DMA_TX_CHANNEL, txLength);
        DMA_SetTransferByteNum(UART_DMA_TX_CHANNEL, 1);   
    } else {
        DMA_SetMinorLoopNum(UART_DMA_TX_CHANNEL, txLength/2);
        DMA_SetTransferByteNum(UART_DMA_TX_CHANNEL, 2);   
    }
    g_uartDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_BUSY;
    DMA_ChannelRequestEnable(UART_DMA_TX_CHANNEL);
    DMA_HaltControl(DISABLE);
    COMMON_ENABLE_INTERRUPTS();
    return SUCC;
}

/*************************************************
 Function: MpuHal_UartDmaTransferConfig
 Description: Configure the DMA transfer for MPU communication
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHal_UartDmaTransferConfig(void)
{
    ResultStatus_t ret = SUCC;
    do {
        ret = DMA_ConfigTransfer(&g_uartDmaInitConfig.txTransferConfig);
        if (ret != SUCC) {
            break;
        }
        DMA_SetSrcAddr(UART_DMA_TX_CHANNEL, (uint32_t)g_uartDmaTxBuf.Buffer);
        DMA_SetDestAddr(UART_DMA_TX_CHANNEL, (uint32_t)MPU_HAL_UART_ADDR);

        ret = DMA_ConfigTransfer(&g_uartDmaInitConfig.rxTransferConfig);
        if (ret != SUCC) {
            break;
        }
        DMA_SetSrcAddr(UART_DMA_RX_CHANNEL, (uint32_t)MPU_HAL_UART_ADDR);
        DMA_SetDestAddr(UART_DMA_RX_CHANNEL, (uint32_t)g_uartDmaRxBuf.Buffer);
    } while (0);

    if (ret != SUCC) {
        return;
    }
}

/*************************************************
  Function:       MpuHal_UartDmaInit
  Description:    Initialize UART DMA for communication
  Input:          None
  Output:         None
  Return:         None
  Others:         None
*************************************************/
static void MpuHal_UartDmaInit(void)
{
    SYSCTRL_ResetModule(SYSCTRL_DMA);        /* 复位DMA模块 */
    SYSCTRL_ResetModule(SYSCTRL_DMAMUX);     /* 复位DMAMUX模块 */
    SYSCTRL_EnableModule(SYSCTRL_DMA);       /* 使能DMA模块时钟 */
    SYSCTRL_EnableModule(SYSCTRL_DMAMUX);    /* 使能DMAMUX模块时钟 */

    DMA_Init(&g_uartDmaInitConfig.dmaConfig);
    MpuHal_UartDmaTransferConfig();

    DMA_InstallCallBackFunc(UART_DMA_RX_CHANNEL, DMA_INT_DONE, MpuHal_UartDmaRxCallback);
    DMA_IntMask(UART_DMA_RX_CHANNEL, DMA_INT_DONE, UNMASK);
    INT_SetPriority(UART_DMA_RX_IRQ, UART_DMA_RX_IRQ_PRIORITY);
    INT_EnableIRQ(UART_DMA_RX_IRQ);

    DMA_InstallCallBackFunc(UART_DMA_TX_CHANNEL, DMA_INT_DONE, MpuHal_UartDmaTxCallback);        
    DMA_IntMask(UART_DMA_TX_CHANNEL, DMA_INT_DONE, UNMASK);
    INT_SetPriority(UART_DMA_TX_IRQ, UART_DMA_TX_IRQ_PRIORITY);
    INT_EnableIRQ(UART_DMA_TX_IRQ);
    g_uartDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_IDLE;
    g_uartDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_REV;
}
#endif

#if (SPI_DMA_ENABLE == 1)
/*************************************************
 Function: MpuHal_SpiDmaRxReStart
 Description: Restart SPI DMA receive operation
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHal_SpiDmaRxReStart(void)
{
    DMA_SetDestAddr(SPI_DMA_RX_CHANNEL, (uint32_t)g_spiDmaRxBuf.Buffer);
    DMA_SetMinorLoopNum(SPI_DMA_RX_CHANNEL, MPU_HAL_SPI_DMA_BUFFSIZE);
    g_spiDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_REV;
    DMA_ChannelRequestEnable(SPI_DMA_RX_CHANNEL);
}

/*************************************************
 Function: MpuHal_SpiIrqCallback
 Description: Handle SPI interrupts for IEQ and REQ signals
 Input: PORT_Id_t portId, PORT_GpioNum_t gpioNum
 Output: None
 Return: None
 Others:
*************************************************/
static void MpuHal_SpiIrqCallback(PORT_Id_t portId, PORT_GpioNum_t gpioNum)
{
    PORT_ClearPinInt(portId, gpioNum);
    if ((portId == MPU_HAL_SPI_IEQ_PORT) && (gpioNum == MPU_HAL_SPI_IEQ_PORT_PIN))
    {
        if (GPIO_ReadPinLevel(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN) == GPIO_LOW) // 传输完成
        {
            GPIO_WritePinOutput(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, GPIO_LOW);
            MpuHal_SpiDmaRxDataHandleCallback();
            MpuHal_SpiDmaTxDataHandleCallback();
            return;
        }
        if (GPIO_ReadPinLevel(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN) == GPIO_LOW) // 接收数据
        {
            GPIO_WritePinOutput(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, GPIO_HIGH);
            DMA_SetSrcAddr(SPI_DMA_TX_CHANNEL, (uint32_t)g_spiDmaTxBuf.Buffer);
            DMA_SetMinorLoopNum(SPI_DMA_TX_CHANNEL, 4096);
        }
        DMA_ChannelRequestEnable(SPI_DMA_TX_CHANNEL);
        MpuHal_SpiDmaRxReStart();
    }

}

/*************************************************
  Function:       MpuHal_SpiGpioInit
  Description:    Initialize SPI GPIO pins
  Input:          None
  Output:         None
  Return:         None
  Others:         Configures SPI GPIO direction, pull-up/down, and pin functions
*************************************************/
static void MpuHal_SpiGpioInit(void)
{
    /* Configure SPI SCK pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_CLK_PORT, MPU_HAL_SPI_CLK_PORT_PIN, MPU_HAL_SPI_CLK_PORT_MUX);
    /* Configure SPI MISO pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_MISO_PORT, MPU_HAL_SPI_MISO_PORT_PIN, MPU_HAL_SPI_MISO_PORT_MUX);
    /* Configure SPI MOSI pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_MOSI_PORT, MPU_HAL_SPI_MOSI_PORT_PIN, MPU_HAL_SPI_MOSI_PORT_MUX);
    PORT_PinmuxConfig(PORT_A, GPIO_26, PTA26_SPI0_PCS0);
    /* Configure SPI CS pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, MPU_HAL_SPI_IEQ_PORT_MUX);
    PORT_PinmuxConfig(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, MPU_HAL_SPI_REQ_PORT_MUX);
    
    /* IEQ and REQ int config */
    GPIO_SetPinDir(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, GPIO_INPUT);
    PORT_PinIntConfig(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, PORT_ISF_INT_BOTH_EDGE);
    PORT_InstallCallbackFunc(MpuHal_SpiIrqCallback);
    INT_SetPriority(MPU_HAL_SPI_IEQ_IRQ, MPU_HAL_SPI_IEQ_IRQ_PRIORITY);
    INT_EnableIRQ(MPU_HAL_SPI_IEQ_IRQ);

    GPIO_SetPinDir(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, GPIO_OUTPUT);
    GPIO_WritePinOutput(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, GPIO_LOW);
}

/*************************************************
  Function:       MpuHal_SpiInit
  Description:    Initialize SPI module
  Input:          None
  Output:         None
  Return:         None
  Others:         Configures SPI parameters and enables DMA
*************************************************/
static void MpuHal_SpiInit(void)
{
    ResultStatus_t ret = SUCC;
    /* Reset SPI module */
    SYSCTRL_ResetModule(MPU_HAL_SPI_SYSCTRL);
    /* Enable SPI clock */
    ret =  CLK_ModuleSrc(MPU_HAL_SPI_CLK, CLK_SRC_PLL);
    if (ret != SUCC) {
        return;
    }
    CLK_SetClkDivider(MPU_HAL_SPI_CLK, CLK_DIV_3);
    SYSCTRL_EnableModule(MPU_HAL_SPI_SYSCTRL);
    
    /* Initialize SPI GPIO */
    MpuHal_SpiGpioInit();
    
    /* Configure SPI parameters */
    SPI_Init(MPU_HAL_SPI_ID, &g_spiDmaInitConfig.spiConfig);
    
    /* Configure SPI DMA level */
    SPI_DmaConfig(MPU_HAL_SPI_ID, &g_spiDmaInitConfig.dmaLvlConfig);
    
    /* Configure DMA transfer */
    MpuHal_SpiDmaTransferConfig();
    
    /* Install DMA callbacks and enable interrupts */
    DMA_InstallCallBackFunc(SPI_DMA_RX_CHANNEL, DMA_INT_DONE, MpuHal_SpiDmaRxCallback);
    DMA_IntMask(SPI_DMA_RX_CHANNEL, DMA_INT_DONE, UNMASK);
    INT_SetPriority(SPI_DMA_RX_IRQ, SPI_DMA_RX_IRQ_PRIORITY);
    INT_EnableIRQ(SPI_DMA_RX_IRQ);
    
    DMA_InstallCallBackFunc(SPI_DMA_TX_CHANNEL, DMA_INT_DONE, MpuHal_SpiDmaTxCallback);
    DMA_IntMask(SPI_DMA_TX_CHANNEL, DMA_INT_DONE, UNMASK);
    INT_SetPriority(SPI_DMA_TX_IRQ, SPI_DMA_TX_IRQ_PRIORITY);
    INT_EnableIRQ(SPI_DMA_TX_IRQ);
    
    /* Initialize buffer states */
    g_spiDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_IDLE;
    g_spiDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_IDLE;

    SPI_SelectSlave(MPU_HAL_SPI_ID, SPI_SS_PCS0);   
    SPI_DmaCmd(MPU_HAL_SPI_ID, ENABLE, ENABLE);
    SPI_Enable(MPU_HAL_SPI_ID);
    
    TBOX_PRINT("SPI0 init success!\n");
}

/*************************************************
  Function:       MpuHal_SpiDmaTransferConfig
  Description:    Configure SPI DMA transfer parameters
  Input:          None
  Output:         None
  Return:         None
  Others:         Sets up DMA channels for SPI communication
*************************************************/
static void MpuHal_SpiDmaTransferConfig(void)
{
    ResultStatus_t ret = SUCC;
    do {
        /* Configure TX DMA transfer */
        ret = DMA_ConfigTransfer(&g_spiDmaInitConfig.txTransferConfig);
        if (ret != SUCC) {
            break;
        }
        DMA_SetSrcAddr(SPI_DMA_TX_CHANNEL, (uint32_t)g_spiDmaTxBuf.Buffer);
        DMA_SetDestAddr(SPI_DMA_TX_CHANNEL, (uint32_t)MPU_HAL_SPI_TDATA_REG);
        
        /* Configure RX DMA transfer */
        ret = DMA_ConfigTransfer(&g_spiDmaInitConfig.rxTransferConfig);
        if (ret != SUCC) {
            break;
        }
        DMA_SetSrcAddr(SPI_DMA_RX_CHANNEL, (uint32_t)MPU_HAL_SPI_RDATA_REG);
        DMA_SetDestAddr(SPI_DMA_RX_CHANNEL, (uint32_t)g_spiDmaRxBuf.Buffer);
        
    } while (0);
    
    if (ret != SUCC) {
        return;
    }
}

/*************************************************
  Function:       MpuHal_SpiDmaSendPacket
  Description:    Send data via SPI using DMA
  Input:          pTxData - Pointer to data to be transmitted
                  txLength - Length of data to be transmitted
  Output:         None
  Return:         Status code indicating success or failure
  Others:         Uses DMA for efficient data transfer
*************************************************/
static ResultStatus_t MpuHal_SpiDmaSendPacket(const uint8_t* pTxData, uint16_t txLength)
{
    ResultStatus_t ret = SUCC;
    
    /* Check if parameters are valid */
    if ((pTxData == NULL) || (txLength == 0)) {
        return ERR;
    }
    
    /* Check if buffer is available */
    if (g_spiDmaTxBuf.dmaBufStatus != DMA_BUF_STATE_IDLE) {
        return ERR;
    }
    
    /* Check if data length exceeds buffer size */
    if (txLength > MPU_HAL_SPI_DMA_BUFFSIZE) {
        return ERR;
    }
    
    /* Copy data to TX buffer */
    memcpy(g_spiDmaTxBuf.Buffer, pTxData, txLength);
    g_spiDmaTxBuf.BufferLen = txLength;
    
    /* Update buffer state */
    g_spiDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_BUSY;

    GPIO_WritePinOutput(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, GPIO_HIGH); // 拉高片选，请求发送数据

    DMA_SetSrcAddr(SPI_DMA_TX_CHANNEL, (uint32_t)g_spiDmaTxBuf.Buffer);
    DMA_SetMinorLoopNum(SPI_DMA_TX_CHANNEL, txLength);

    return ret;
}

/*************************************************
  Function:       MpuHal_SpiDmaRxDataProcess
  Description:    Process received SPI DMA data
  Input:          buf - Pointer to received data buffer
                  length - Length of received data
  Output:         None
  Return:         None
  Others:         Handles received data processing
*************************************************/
static void MpuHal_SpiDmaRxDataProcess(uint8_t *buf, uint16_t length)
{
    if ((buf == NULL) || (length == 0u) || (length > MPU_HAL_SPI_DMA_BUFFSIZE)) {
        return;
    }
    COMMON_DISABLE_INTERRUPTS();
    for (uint16_t i = 0u; i < length; i++) {
        MpuHalSetRingBuf(buf[i]); 
    }
    COMMON_ENABLE_INTERRUPTS();
}

/*************************************************
  Function:       MpuHal_SpiDmaRxDataHandleCallback
  Description:    SPI DMA receive data handle callback
  Input:          None
  Output:         None
  Return:         None
  Others:         Called to handle received SPI data
*************************************************/
static void MpuHal_SpiDmaRxDataHandleCallback(void)
{
    uint16_t maxLen = 0x0u, resLen = 0u;
    COMMON_DISABLE_INTERRUPTS();
    DMA_ChannelRequestDisable(SPI_DMA_RX_CHANNEL);
    DMA_ClearDoneStatus(SPI_DMA_RX_CHANNEL);
    maxLen = DMA_GetMinorLoopNum(SPI_DMA_RX_CHANNEL);

    if (g_spiDmaRxBuf.dmaBufStatus == DMA_BUF_STATE_DONE) {
        g_spiDmaRxBuf.BufferLen = maxLen;
    } else {
        resLen = DMA_GetRestMinorLoopNum(SPI_DMA_RX_CHANNEL);
        g_spiDmaRxBuf.BufferLen = (maxLen - resLen);
    }

    if (g_spiDmaRxBuf.BufferLen > 0u) {
        MpuHal_SpiDmaRxDataProcess(g_spiDmaRxBuf.Buffer, g_spiDmaRxBuf.BufferLen);
        memset(g_spiDmaRxBuf.Buffer, 0u, g_spiDmaRxBuf.BufferLen);
        g_spiDmaRxBuf.BufferLen = 0u;
    }

    g_spiDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_IDLE;
    COMMON_ENABLE_INTERRUPTS();
}

/*************************************************
  Function:       MpuHal_SpiDmaRxCallback
  Description:    SPI DMA receive callback function
  Input:          None
  Output:         None
  Return:         None
  Others:         Called when SPI DMA receive operation is complete
*************************************************/
static void MpuHal_SpiDmaRxCallback(void)
{
    g_spiDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_DONE;
    MpuHal_SpiDmaRxDataHandleCallback();
}

/*************************************************
  Function:       MpuHal_SpiDmaTxDataHandleCallback
  Description:    SPI DMA transmit data handle callback
  Input:          None
  Output:         None
  Return:         None
  Others:         Called to handle transmitted SPI data
*************************************************/
static void MpuHal_SpiDmaTxDataHandleCallback(void)
{
    DMA_ChannelRequestDisable(SPI_DMA_TX_CHANNEL);
    DMA_ClearDoneStatus(SPI_DMA_TX_CHANNEL); 
    memset(g_spiDmaTxBuf.Buffer, 0u, MPU_HAL_SPI_DMA_BUFFSIZE);
    g_spiDmaTxBuf.BufferLen = 0u;
    g_spiDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_IDLE;
}

/*************************************************
  Function:       MpuHal_SpiDmaTxCallback
  Description:    SPI DMA transmit callback function
  Input:          None
  Output:         None
  Return:         None
  Others:         Called when SPI DMA transmit operation is complete
*************************************************/
static void MpuHal_SpiDmaTxCallback(void)
{
    g_spiDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_DONE;
    MpuHal_SpiDmaTxDataHandleCallback();
}

#endif

/*************************************************
  Function:       MpuHalMainUartInit
  Description:    Initialize UART0 for MPU communication
  Input:          None
  Output:         None
  Return:         None
  Others:         Configures GPIO, clock, UART registers and interrupts
*************************************************/
void MpuHalMainUartInit(void)
{
    uint32_t delayCnt = 0U;
    MpuUartHandleTypeDef* huart = &g_mpuUartRingBuf;
    huart->init_success = 0; // Default to init failure (update on success)
    PORT_PinmuxConfig(MPU_HAL_UART_RX_PORT, MPU_HAL_UART_RX_PIN, MPU_HAL_UART_RX_GPIO);
    PORT_PinmuxConfig(MPU_HAL_UART_TX_PORT, MPU_HAL_UART_TX_PIN, MPU_HAL_UART_TX_GPIO);

    SYSCTRL_DisableModule(MPU_HAL_UART_SYSCTRL);
    CLK_ModuleSrc(MPU_HAL_UART_CLK, CLK_SRC_PLL); 
    CLK_SetClkDivider(MPU_HAL_UART_CLK, CLK_DIV_3); 
    SYSCTRL_ResetModule(MPU_HAL_UART_SYSCTRL); 
    SYSCTRL_EnableModule(MPU_HAL_UART_SYSCTRL);

    // Wait for UART module to be ready after reset (prevent init failure)
    delayCnt = 0U;
    while ((UART_GetBusyStatus(MPU_HAL_UART_ID) == SET) && (delayCnt < UART_BUSY_MAX_WAIT))
    {
        (void)UART_ReceiveByte(MPU_HAL_UART_ID);     
        delayCnt++;  
    }
    if (delayCnt >= UART_BUSY_MAX_WAIT)
    {
        TBOX_PRINT("UART0 busy timeout! Waited %d times\n", delayCnt);
        huart->err_cnt++; // Record reset timeout error
    }
    else 
    {
#if (UART_DMA_ENABLE == 1)
        UART_Init(MPU_HAL_UART_ID, &g_uartDmaInitConfig.uartConfig);
        UART_FIFOConfig(MPU_HAL_UART_ID, &g_uartDmaInitConfig.fifoConfig);
        UART_IdleDetectConfig(MPU_HAL_UART_ID, &g_uartDmaInitConfig.idleDetectConfig);
        UART_InstallCallBackFunc(MPU_HAL_UART_ID, UART_INT_ASYNC, MpuHal_UartIdleCallback);
        UART_IntMask(MPU_HAL_UART_ID, UART_INT_ASYNC, UNMASK);
        INT_SetPriority(MPU_HAL_UART_IRQ, MPU_HAL_UART_IRQ_PRIORITY);
        INT_EnableIRQ(MPU_HAL_UART_IRQ);
#else
        //Initialize UART core and interrupts
        UART_Init(MPU_HAL_UART_ID, &UART0_Config);
        UART_FIFOConfig(MPU_HAL_UART_ID, &UART0_FifoConfig); // Configure RX/TX FIFO
        UART_IntMask(MPU_HAL_UART_ID, UART_INT_ALL, MASK);   // Mask all interrupts first
        // Install RX buffer full interrupt callback
        UART_InstallCallBackFunc(MPU_HAL_UART_ID, UART_INT_RBFI, MpuHalUart0_IntCallBack);
        UART_IntMask(MPU_HAL_UART_ID, UART_INT_RBFI, UNMASK); // Unmask RX buffer full interrupt
        // Configure NVIC for UART0 interrupt
        INT_SetPriority(MPU_HAL_UART_IRQ, MPU_HAL_UART_IRQ_PRIORITY);
        INT_EnableIRQ(MPU_HAL_UART_IRQ);
#endif
        PORT_PinmuxConfig(MPU_HAL_UART_RX_PORT, MPU_HAL_UART_RX_PIN, MPU_HAL_UART_RX_MUX);
        PORT_PinmuxConfig(MPU_HAL_UART_TX_PORT, MPU_HAL_UART_TX_PIN, MPU_HAL_UART_TX_MUX);
        huart->init_success = 1; // Mark init as successful
        TBOX_PRINT("UART0 init success!\n");
    }
}

/*************************************************
  Function:       MpuHalInit
  Description:    Initialize MPU HAL module
  Input:          None
  Output:         None
  Return:         None
  Others:         Initializes global variables and hardware interfaces
*************************************************/
void MpuHalInit(void)
{
    //MpuHalGpioInit();
#if (UART_DMA_ENABLE == 1)
    g_dmaTimerHandle = TimerHalOpen();
    TimerHalSetCallback(g_dmaTimerHandle, MpuHal_UartDmaRxDataHandleCallback);
    MpuHal_UartDmaInit();
#endif
    MpuHalMainUartInit();
#if (SPI_DMA_ENABLE == 1)
    MpuHal_SpiInit();
#endif
    DMA_ChannelEnable(UART_DMA_RX_CHANNEL);
}

/*************************************************
  Function:       MpuHalPowerOn
  Description:    Execute MPU power on sequence
  Input:          None
  Output:         None
  Return:         None
  Others:         Controls power and power key signals to power up MPU
*************************************************/
void MpuHalPowerOn(void)
{
    //MpuHalSetPowerkey(0);
    //MpuHalSetPower(1);
    MpuHalSetVbus(1);
    //TimerHalDelayMs(1000);
    //MpuHalSetPowerkey(1);
    //TimerHalDelayMs(120);
    //MpuHalSetPowerkey(0);
}

/*************************************************
  Function:       MpuHalGetUartRxDataNum
  Description:    Get the number of received UART data bytes
  Input:          None
  Output:         None
  Return:         Number of received data bytes in UART buffer
  Others:         Returns the current count of received MPU UART data
*************************************************/
uint16_t MpuHalGetUartRxDataNum(void)
{
    return s_mpuUartRxDateNum;
}

/*************************************************
  Function:       MpuHalGetNewPack
  Description:    Get the new packet flag status
  Input:          None
  Output:         None
  Return:         New packet flag value (0 = no new packet, non-zero = new packet available)
  Others:         Used to check if a new MPU communication packet has been received
*************************************************/
UartReceivePackType_t MpuHalGetNewPack(void)
{
    return s_mpuUartNewPack;
}

/*************************************************
  Function:       MpuHalSetNewPack
  Description:    Set the new packet flag status
  Input:          None
  Output:         None
  Return:         None
  Others:         Used to set the new packet flag status
*************************************************/
void MpuHalSetNewPack(UartReceivePackType_t newPack)
{
    s_mpuUartNewPack = newPack;
}

/*************************************************
  Function:       MpuHalUartTimerCallback
  Description:    None
  Input:          None
  Output:         None
  Return:         None
  Others:         None
*************************************************/
void MpuHalUartTimerCallback(void)
{
    MpuHalProtocalProcess();
}

/*************************************************
 Function:       DMA_ChannelEnable
 Description:    Enable DMA channel with timeout handling
 Input:          DMA_Channel_t channel: DMA channel to enable
 Output:         None
 Return:         ResultStatus_t: SUCC if successful, ERR otherwise
 Others:         Disables interrupts, halts DMA, waits for channel to become idle, then enables channel
*************************************************/
static ResultStatus_t DMA_ChannelEnable(DMA_Channel_t channel)
{
    ResultStatus_t ret = SUCC;
    uint32_t timeOutCounter = 0xFFFF;
    uint32_t Primask;
    ASMV_KEYWORD( "MRS %0, PRIMASK " : "=r"(Primask));
    if (0U == Primask)
    {
        COMMON_DISABLE_INTERRUPTS();
    }
    
    DMA_HaltControl(ENABLE);
        
    while (SET == DMA_GetDmaBusyStatus() && (timeOutCounter > 0U)) 
    {
        timeOutCounter--;
    }

    if (timeOutCounter > 0U)
    {
       DMA_ChannelRequestEnable(channel);  // 使能DMA通道
    }
    else
    {
        ret = ERR;
    }
  
    DMA_HaltControl(DISABLE);
    
    if (0U == Primask)
    {
        COMMON_ENABLE_INTERRUPTS();
    }
    if (ret != SUCC)
    {
        TBOX_PRINT("DMA_ChannelEnable failed\n");
    }
    
    return ret;
}
