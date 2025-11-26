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
#include "FreeRTOS.h"
#include "queue.h"
#include "crc8_16_32.h"
#include <string.h>
#include "platform_cfg.h"
#include "common_drv.h"
#include "sysctrl_drv.h"
#include "clock_drv.h"
#include "gpio_drv.h"
#include "logHal.h"
#include "int_drv.h"
#include "spi_drv.h"
#include "dma_drv.h"
#include "timerHal.h"
#include "peripheralHal.h"

/****************************** Macro Definitions ******************************/
#define MPU_DEBUG_QUEUE                         0
#define MPU_HAL_HANDLE_INSTANSE_MAX             15
#define MPU_PROTOCAL_HEADER_LEN                 8
#define MPU_PROTOCAL_SPI_HEADER_LEN             6
#define MPU_HAL_PROC_BUFFER_LEN                 4096
#define MPU_HAL_MAX_BUFFSIZE                    (4096*2)
#define MPU_HAL_UART_BUFFSIZE                   (4096)
#define MPU_HAL_PACK_HEADER_BUF_LEN             20
#define MPU_HAL_TXMSG_MAX_LEN                   4000
#define MPU_HAL_8BIT_MASK                       0xFF
#define MPU_HAL_16BIT_MASK                      0xFFFF
#define MPU_HAL_8BIT_SHIFT                      8
#define MPU_HAL_16BIT_SHIFT                     16
#define MPU_HAL_WAKEOUT_TIME_INIT               10
#define MPU_HAL_WAKEOUT_TIME_WAKEVALUE          2
#define MPU_HAL_WAKEOUT_TIME_SLEEPVALUE         0
#define MPU_HAL_UART_DELAY_CNT                  500
#define MPU_HAL_UART_RX_BUF_LEB                 11
#define MPU_HAL_WAKE_MODE_POWER_OFF             0
#define MPU_HAL_WAKE_MODE_MPU_SLEEP             1
#define MPU_HAL_WAKE_MODE_MPU_WAKE              2
#define MPU_HAL_PACK_FIX_HEADER_0X55            0x55
#define MPU_HAL_PACK_FIX_HEADER_0XAA            0xAA
#define MPU_HAL_PACK_FIX_HEADER_0XBB            0xBB // SPI 6字节头帧
#define MPU_HAL_PACK_HEADER_RESERVED            0x00
#define MPU_HAL_CRC_DEFAULT_VALUE               0x0000
#define MPU_HAL_CYC_TIME_CNT_50MS               500 // base cycleTime = 10
#define MPU_HAL_CYC_TIME_CNT_40MS               400 // base cycleTime = 10
#define MPU_HAL_CYC_TIME_CNT_20MS               200 // base cycleTime = 10  
#define MPU_HAL_RX_QUEUE_LEN                    10
#define MPU_HAL_TX_QUEUE_LEN                    40
#define MPU_HAL_UART_TX_ONCE_LEN                40
#define MPU_HAL_UART_TX_TEMP_LEN                50
#define MPU_HAL_UART0_NVIC_PRIORITY             (0x3)
#define MPU_HAL_UART0_RX_CYCLYE                 (1U)
#define MPU_HAL_SEND_IRQ_ENABLE                 (1U) 

#define UART_BAUDRATE                       (115200 * 4)
#define UART_OSC_FREQ                       8000000
#define UART_BUSY_MAX_WAIT                  (5000)
#define UART_TRANS_TIME_OUT_CNT             (500U)
#define MPU_HAL_RING_BUFFER                 (4096 * 2)

#if (UART_DMA_ENABLE == 1)
#define UART_DMA_TX_TIMEOUT_MS              5000
#define MPU_HAL_UART_DMA_IDLE_TIMER_MS      3
/* uart dma tx config */
#define UART_DMA_TX_CHANNEL                 DMA_CHANNEL12
#define UART_DMA_TX_IRQ                     DMA_Ch12_IRQn
#define UART_DMA_TX_CHANNEL_PRIORITY        DMA_CHN_PRIORITY12
#define UART_DMA_TX_IRQ_PRIORITY            0x3
/* uart dma rx config */
#define UART_DMA_RX_CHANNEL                 DMA_CHANNEL13
#define UART_DMA_RX_IRQ                     DMA_Ch13_IRQn
#define UART_DMA_RX_CHANNEL_PRIORITY        DMA_CHN_PRIORITY13
#define UART_DMA_RX_IRQ_PRIORITY            0x3
/* uart idle detect length */
#define UART_IDLE_DETECT_LENGTH             UART_IDLE_DETECT_LENGTH_8
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
#define MPU_HAL_SPI_DMA_BUFFSIZE            2048

/* SPI register offsets */
#define MPU_HAL_SPI_TDATA_REG               (SPI0_BASE_ADDR + 0x60U)
#define MPU_HAL_SPI_RDATA_REG               (SPI0_BASE_ADDR + 0x60U)

/* SPI GPIO Configuration */
#define MPU_HAL_SPI_CLK_PORT                    PORT_D
#define MPU_HAL_SPI_CLK_PORT_PIN                GPIO_15
#define MPU_HAL_SPI_CLK_PORT_MUX                PTD15_SPI0_SCK
#define MPU_HAL_SPI_CLK_PORT_DEINIT             PTD15_GPIO

#define MPU_HAL_SPI_MOSI_PORT                   PORT_B
#define MPU_HAL_SPI_MOSI_PORT_PIN               GPIO_4
#define MPU_HAL_SPI_MOSI_PORT_MUX               PTB4_SPI0_SOUT
#define MPU_HAL_SPI_MOSI_PORT_DEINIT            PTB4_GPIO

#define MPU_HAL_SPI_MISO_PORT                   PORT_D
#define MPU_HAL_SPI_MISO_PORT_PIN               GPIO_16
#define MPU_HAL_SPI_MISO_PORT_MUX               PTD16_SPI0_SIN
#define MPU_HAL_SPI_MISO_PORT_DEINIT            PTD16_GPIO

#define MPU_HAL_SPI_IEQ_PORT                   PORT_D
#define MPU_HAL_SPI_IEQ_PORT_PIN               GPIO_13
#define MPU_HAL_SPI_IEQ_PORT_MUX               PTD13_GPIO

#define MPU_HAL_SPI_CS_PORT                   PORT_B
#define MPU_HAL_SPI_CS_PORT_PIN               GPIO_5
#define MPU_HAL_SPI_CS_PORT_MUX               PTB5_SPI0_PCS0
#define MPU_HAL_SPI_CS_PORT_DEINIT            PTB5_GPIO

/* SPI DMA Configuration */
#define SPI_DMA_TX_CHANNEL                  DMA_CHANNEL14
#define SPI_DMA_TX_IRQ                      DMA_Ch14_IRQn
#define SPI_DMA_TX_CHANNEL_PRIORITY         DMA_CHN_PRIORITY14
#define SPI_DMA_TX_IRQ_PRIORITY             0x3
#define SPI_DMA_RX_CHANNEL                  DMA_CHANNEL15
#define SPI_DMA_RX_IRQ                      DMA_Ch15_IRQn
#define SPI_DMA_RX_CHANNEL_PRIORITY         DMA_CHN_PRIORITY15
#define SPI_DMA_RX_IRQ_PRIORITY             0x3
#define SPI_DMA_TX_REQ                      DMA_REQ_SPI0_TX
#define SPI_DMA_RX_REQ                      DMA_REQ_SPI0_RX

#define MPU_HAL_SPI_HEADER_FIRST_BYTE       (0x55u)
#define MPU_HAL_SPI_HEADER_SECOND_BYTE      (0xBBu)
#define MPU_HAL_SPI_HEADER_SIZE             (6u)  

#endif

/****************************** Type Definitions ******************************/

typedef struct
{
    QueueHandle_t txQueueHandle;
    uint8_t buffer[MPU_HAL_MAX_BUFFSIZE];
    uint16_t index;
} MpuQueueTxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_PROC_BUFFER_LEN];
    uint16_t txLength;
} MpuRxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_PROC_BUFFER_LEN];
    uint16_t dataCount;
} MpuProtocolBuffer_t;

typedef struct
{
    uint8_t useFlag;
    uint8_t useRxFilter;
    uint8_t *pDataBufferRx;
    uint16_t dataBufferSize;
    uint16_t rxIndexIn;
    QueueHandle_t rxQueueHandle;
    MpuHalFilter_t rxFilterConfig;
} MpuHalHandle_t;

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
} MpuHalStartState_e;

typedef struct
{
    uint8_t wakeMode; /* 0:MPU power off,1:Mpu sleep,2:Mpu wake */
    uint8_t wakeoutTimeCount;
    MpuHalStartState_e startState;
    MpuHalHandle_t rxHandle[MPU_HAL_HANDLE_INSTANSE_MAX];
    uint8_t mcuRequest; /* 0:no request,1:requested */
} MpuHalManage_t;

typedef struct 
{
    uint8_t data[MPU_HAL_RX_ONE_FRAME_MAX_SIZE];
    uint16_t dataCount;
    uint16_t dataLength;
}MpuUartProtocalBuffer_t;

typedef enum {
    PROTOCOL_STATE_IDLE,                // Idle: wait for 1st header byte (0x55)
    PROTOCOL_STATE_WAIT_HEADER2,        // Wait for 2nd header byte (0xAA) or (0xBB)
    PROTOCOL_STATE_WAIT_HEADER,         // Wait for remaining header fields
    PROTOCOL_STATE_WAIT_SPI_HEADER,     // Wait for remaining header fields (SPI)
    PROTOCOL_STATE_WAIT_DATA            // Wait for payload and checksum
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
    uint8_t Buffer[MPU_HAL_UART_BUFFSIZE];
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
static MpuHalManage_t g_mpuManage;

static MpuUartHandleTypeDef g_mpuUartRingBuf = 
{
    .rx_ring_buf = {.head = 0, .tail = 0},
    .proto_state = PROTOCOL_STATE_IDLE,
    .init_success = 0,
    .err_cnt = 0
};

static MpuUartHandleTypeDef g_mpuSpiRingBuf = 
{
    .rx_ring_buf = {.head = 0, .tail = 0},
    .proto_state = PROTOCOL_STATE_IDLE,
    .init_success = 0,
    .err_cnt = 0
};

volatile unsigned char UART0_RxBuf[MPU_HAL_UART_RX_BUF_LEB]; // uart0 rx buffer
volatile unsigned int UART0_RxBufSN;                         // uart0 rx buffer serial number

#if (UART_DMA_ENABLE == 1)
/* DMA定时器句柄 */
static uint32_t g_dmaTimerHandle = 0xFFu;

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
        .minorLoopNum = MPU_HAL_UART_BUFFSIZE,
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
        .transferByteNum = 1,
        .minorLoopNum = MPU_HAL_UART_BUFFSIZE,
        .srcTransferSize = DMA_TRANSFER_SIZE_1B,
        .destTransferSize = DMA_TRANSFER_SIZE_1B,
        .disableRequestAfterDoneCmd = ENABLE
    }
};
#else
// uart0 config data
const UART_Config_t UART0_Config =
    {
        .baudRate = UART_BAUDRATE, // uart baud rate
        .dataBits = UART_DATABITS_8,       // uart data bits length 8 bits
        .parity = UART_PARITY_NONE,        // uart parity none
        .stopBits = UART_STOPBITS_1,       // uart stop bits length 1 bit
        .autoFlowControl = DISABLE,        // disable auto flow control
        .oscFreq = UART_OSC_FREQ        // the frequency of the OSC clock source
};

// 定义UART模块的FIFO配置数据。

const UART_FIFOConfig_t UART0_FifoConfig =
    {
        .fifoEnable = ENABLE,           // enable FIFO function
        .txFifoReset = ENABLE,          // enable reset TX_FIFO
        .rxFifoReset = ENABLE,          // enable reset RX_FIFO
        .fifoTet = UART_TX_FIFO_CHAR_2, // set TX Empty trigger level
        .fifoRt = UART_RX_FIFO_CHAR_1   // set RCVR trigger level
};
#endif

#if (SPI_DMA_ENABLE == 1)
/* SPI DMA初始化配置 */
static SpiDmaInitConfig_t g_spiDmaInitConfig = {
    /* SPI配置 */
    .spiConfig = {
        .mode = SPI_MODE_SLAVE,
        .dataSize = MPU_HAL_SPI_DATA_SIZE,
        .clkPhase = SPI_CLK_PHASE_SECOND,
        .clkPolarity = SPI_CLK_INACTIVE_LOW,
        .transMode = SPI_TMOD_TR,
        .clkDivider = MPU_HAL_SPI_CLK_DIVIDER,
        .transFifoThr = 0U,
        .recvFifoThr = 0U
    },
    /* SPI DMA级别配置 */
    .dmaLvlConfig = {
        .dmaTransReqLevel = 1U,
        .dmaRecvReqLevel = 0U
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
static uint8_t spi_ready = 0u;
#endif
static MpuQueueTxBuffer_t g_mpuTxBuf[MPU_HAL_TX_MODE_MAX];

/****************************** Function Declarations *************************/
static void MpuHalGpioInit(void);
static void MpuHalGpioSetMode(uint8_t mode);
static void MpuHalMainUartInit(void);
static void MpuHalMainUartSleep(void);
static void MpuHalSetPowerkey(uint8_t flag);
static void MpuHalSetWakeOut(uint8_t flag);
static void MpuHalSetVbus(uint8_t flag);
static void MpuHalSetGpio(PORT_Id_t port, PORT_GpioNum_t gpioNum, uint8_t flag);
static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq);
static uint8_t MpuPackHeader(uint8_t headerBuffer[], const MpuHalDataPack_t *pMsg);
static uint16_t MpuPackGetCrc(uint8_t header[], const MpuHalDataPack_t *pMsg);
static uint8_t MpuHalReadRingBuf(RingBufferType *rb, uint8_t *data);
static void UartProtocalProcess(void);
static void MpuHalSetRingBuf(uint8_t *recv_data, uint16_t length, MpuHalTXMode_e txMode);
static int16_t MpuHalQueueSend(MpuQueueTxBuffer_t *pTxBuffer, const uint8_t *pTxData, uint16_t txLength, MpuHalTXMode_e txMode);
static uint32_t MpuHalPacketSend(MpuHalTXMode_e txMode, uint32_t queueData, MpuQueueTxBuffer_t *pTxBuffer);

#if (UART_DMA_ENABLE == 1)
static void MpuHal_UartDmaInit(void);
static void MpuHal_UartDmaRxReStart(void);
static void MpuHal_UartDmaRxDataProcess(uint8_t *buf, uint16_t length);
static void MpuHal_UartDmaRxCallback(void);
static void MpuHal_UartIdleCallback(void);
static void MpuHal_UartDmaTxCallback(void);
static void MpuHalMainDmaSleep(void);
static ResultStatus_t MpuHal_UartDmaSendPacket(const uint8_t* pTxData,uint16_t txLength);
static void MpuHal_UartDmaTransferConfig(void);
static void MpuHal_UartDmaRxDataHandleCallback(void);
#else
static ResultStatus_t UART0_SendData(unsigned char *txdataP, unsigned int dlc);
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
static void MpuHal_SpiDmaRxReStart(void);
static void MpuHal_SpiDmaTxDataHandleCallback(void);
static void MpuHalMainSpiSleep(void);
#endif
static void SpiProtocalProcess(void);
static ResultStatus_t DMA_ChannelEnable(DMA_Channel_t channel);
/****************************** Public Function Implementations ******************************/
/*************************************************
 Function: MpuHalInit
 Description: Initialize the MPU HAL
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalInit(void)
{
    memset(&g_mpuManage, 0, sizeof(g_mpuManage));
    g_mpuManage.wakeoutTimeCount = MPU_HAL_WAKEOUT_TIME_INIT;
    g_mpuManage.wakeMode = MPU_HAL_WAKE_MODE_MPU_SLEEP;
    MpuHalGpioInit();
#if (UART_DMA_ENABLE == 1)
    g_dmaTimerHandle = PeripheralHal_TimerCreate(MpuHal_UartDmaRxDataHandleCallback, MPU_HAL_UART_DMA_IDLE_TIMER_MS);
    MpuHal_UartDmaInit();
#endif
    MpuHalMainUartInit();
#if (SPI_DMA_ENABLE == 1)
    MpuHal_SpiInit();
#endif
    DMA_ChannelEnable(UART_DMA_RX_CHANNEL);
}
/*************************************************
 Function: MpuHalGpioInit
 Description: Initialize the GPIO used by MPU
 Input: void
 Output: void
Return:void
 Others:
*************************************************/
static void MpuHalGpioInit(void)
{
    /********power en **************************/
    PORT_PinmuxConfig(PORT_B, GPIO_10, PTB10_GPIO);
    GPIO_SetPinDir(PORT_B, GPIO_10, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_B, GPIO_10, GPIO_LOW);
    /********power key***************************/
    PORT_PinmuxConfig(PORT_E, GPIO_11, PTE11_GPIO);
    GPIO_SetPinDir(PORT_E, GPIO_11, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_E, GPIO_11, GPIO_LOW);
    /********vbus***************************/
    PORT_PinmuxConfig(PORT_A, GPIO_1, PTA1_GPIO);
    GPIO_SetPinDir(PORT_A, GPIO_1, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_A, GPIO_1, GPIO_HIGH);
    /********wake  out***************************/
    PORT_PinmuxConfig(PORT_B, GPIO_8, PTB8_GPIO);
    GPIO_SetPinDir(PORT_B, GPIO_8, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_B, GPIO_8,GPIO_LOW);
    /********MCU_RESRT_4G***************************/
    PORT_PinmuxConfig(PORT_D, GPIO_1, PTD1_GPIO);
    GPIO_SetPinDir(PORT_D, GPIO_1, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_D, GPIO_1, GPIO_LOW);
    // gps en
    PORT_PinmuxConfig(PORT_D, GPIO_0, PTD0_GPIO);
    GPIO_SetPinDir(PORT_D, GPIO_0, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_D, GPIO_0, GPIO_HIGH);
    // ECALL LED
    PORT_PinmuxConfig(PORT_D, GPIO_5, PTB0_GPIO);
    GPIO_SetPinDir(PORT_D, GPIO_5, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_D, GPIO_5, GPIO_HIGH);
    // BCALL LED
    PORT_PinmuxConfig(PORT_D, GPIO_12, PTB0_GPIO);
    GPIO_SetPinDir(PORT_D, GPIO_12, GPIO_OUTPUT);
    GPIO_WritePinOutput(PORT_D, GPIO_12, GPIO_HIGH);
}

/*************************************************
 Function: MpuHalGpioSetMode
 Description: Set the GPIO mode for MPU
 Input: void
 Output: void
 Return:void
 Others:
*************************************************/
static void MpuHalGpioSetMode(uint8_t mode)
{
    if(mode == 1)
    {
        // gps en 
        GPIO_WritePinOutput(PORT_D, GPIO_0, GPIO_HIGH);
        // ECALL LED
        GPIO_WritePinOutput(PORT_D, GPIO_5, GPIO_HIGH);
        // BCALL LED
        GPIO_WritePinOutput(PORT_D, GPIO_12, GPIO_HIGH);
    }
    else
    {
        // gps en
        GPIO_WritePinOutput(PORT_D, GPIO_0, GPIO_LOW);
        // ECALL LED
        GPIO_WritePinOutput(PORT_D, GPIO_5, GPIO_LOW);
        // BCALL LED
        GPIO_WritePinOutput(PORT_D, GPIO_12, GPIO_LOW);
    }
}

/*************************************************
 Function: MpuHalMainUartInit
 Description: Initialize the main UART interface for MPU communication
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalMainUartInit(void)
{
    MpuUartHandleTypeDef *huart = &g_mpuUartRingBuf;
    huart->init_success = 0;
    PORT_PinmuxConfig(MPU_HAL_UART_RX_PORT, MPU_HAL_UART_RX_PIN, MPU_HAL_UART_RX_GPIO);
    PORT_PinmuxConfig(MPU_HAL_UART_TX_PORT, MPU_HAL_UART_TX_PIN, MPU_HAL_UART_TX_GPIO);

    SYSCTRL_DisableModule(MPU_HAL_UART_SYSCTRL);
    CLK_ModuleSrc(MPU_HAL_UART_CLK, CLK_SRC_PLL); 
    CLK_SetClkDivider(MPU_HAL_UART_CLK, CLK_DIV_3);
    SYSCTRL_ResetModule(MPU_HAL_UART_SYSCTRL);
    SYSCTRL_EnableModule(MPU_HAL_UART_SYSCTRL);

    // Wait for UART module to be ready after reset (prevent init failure)
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

/*************************************************
 Function: MpuHalSetGpio
 Description: Set the GPIO output level
 Input:  PORT_Id_t port: port ID
        PORT_GpioNum_t gpioNum: GPIO number
        uint8_t flag: 0:low level,1:high level
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalSetGpio(PORT_Id_t port, PORT_GpioNum_t gpioNum, uint8_t flag)
{
    if (0u == flag)
    {
        GPIO_WritePinOutput(port, gpioNum, GPIO_LOW);
    }
    else
    {
        GPIO_WritePinOutput(port, gpioNum, GPIO_HIGH);
    }
}

/*************************************************
 Function: MpuHalSetPower
 Description: Set the power output level
 Input:  uint8_t flag: 0:low level,1:high level
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalSetPower(uint8_t flag)
{
    MpuHalSetGpio(PORT_B, GPIO_10, flag); // simon change C6 to B10
}

/*************************************************
 Function: MpuHalSetPowerkey
 Description: Set the powerkey output level
 Input: uint8_t flag: 0:low level,1:high level
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalSetPowerkey(uint8_t flag)
{
    MpuHalSetGpio(PORT_E, GPIO_11, flag); // simon change A15 to E11
}

/*************************************************
 Function: MpuHalSetVbus
 Description: Set the Vbus output level
 Input: uint8_t flag: 0:low level,1:high level
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalSetVbus(uint8_t flag)
{
    MpuHalSetGpio(PORT_A, GPIO_1, flag);
}

/*************************************************
 Function: MpuHalSetWakeOut
 Description: Set the WakeOut output level
 Input: uint8_t flag: 1:low level,0:high level
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalSetWakeOut(uint8_t flag)
{
    MpuHalSetGpio(PORT_B, GPIO_8, flag);
}

/*************************************************
 Function: MpuDataDispatch
 Description: Dispatch the received data to the registered handle
 Input: const uint8_t* pData: pointer to the received data
        uint16_t length: length of the received data
        uint8_t irq: 1: called in IRQ,0: called in task
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuDataDispatch(const uint8_t *pData, uint16_t length, uint8_t irq)
{
    uint16_t i, j, instanceMax;
    uint32_t data;
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    MpuHalHandle_t *pHandleInstance;

    instanceMax = MPU_HAL_HANDLE_INSTANSE_MAX;
    for (i = 0u; i < instanceMax; i++)
    {
        pHandleInstance = g_mpuManage.rxHandle + i;
        if ((pHandleInstance->useFlag == 1u) && (pHandleInstance->pDataBufferRx != NULL))
        {
            if ((pHandleInstance->useRxFilter == 1) && (pData[2] == pHandleInstance->rxFilterConfig.aid))
            {
                if ((pData[3] >= pHandleInstance->rxFilterConfig.midMin) && (pData[3] <= pHandleInstance->rxFilterConfig.midMax))
                {
                    /*  copy data to receive buffer */
                    data = (pHandleInstance->rxIndexIn << 16);
                    for (j = 0u; j < length; j++)
                    {
                        pHandleInstance->pDataBufferRx[pHandleInstance->rxIndexIn] = pData[j];
                        pHandleInstance->rxIndexIn++;
                        if (pHandleInstance->rxIndexIn >= pHandleInstance->dataBufferSize)
                        {
                            pHandleInstance->rxIndexIn = 0;
                        }
                    }
                    /* dispatch data */
                    data += length;
                    if (irq != 0u)
                    {
                        xQueueSendFromISR(pHandleInstance->rxQueueHandle, &data, &xHigherPriorityTaskWoken);
                    }
                    else
                    {
                        xQueueSend(pHandleInstance->rxQueueHandle, &data, 0);
                    }
                }
            }
        }
    }
}

/*************************************************
 Function: MpuPackHeader
 Description: Pack the protocol header
 Input: uint8_t headerBuffer[]: buffer to store the packed header
        const MpuHalDataPack_t* pMsg: pointer to the message to be packed
 Output: void
 Return: void
 Others:
*************************************************/
static uint8_t MpuPackHeader(uint8_t headerBuffer[], const MpuHalDataPack_t *pMsg)
{
    headerBuffer[0] = MPU_HAL_PACK_FIX_HEADER_0X55;
    headerBuffer[1] = MPU_HAL_PACK_FIX_HEADER_0XAA;
    headerBuffer[2] = pMsg->aid;
    headerBuffer[3] = pMsg->mid;
    headerBuffer[4] = pMsg->subcommand;
    headerBuffer[5] = (pMsg->dataLength >> MPU_HAL_8BIT_SHIFT) & MPU_HAL_8BIT_MASK;
    headerBuffer[6] = pMsg->dataLength & MPU_HAL_8BIT_MASK;
    headerBuffer[7] = MPU_HAL_PACK_HEADER_RESERVED;
    headerBuffer[8] = MPU_HAL_PACK_HEADER_RESERVED;
    return MPU_PROTOCAL_HEADER_LEN;
}

/*************************************************
 Function: MpuPackGetCrc
 Description: Calculate the CRC of the packed message
 Input: uint8_t header[]: pointer to the header
        const MpuHalDataPack_t* pMsg: pointer to the message
 Output: void
 Return: uint16_t: calculated CRC value
 Others:
*************************************************/
static uint16_t MpuPackGetCrc(uint8_t header[], const MpuHalDataPack_t *pMsg)
{
    uint16_t crc = MPU_HAL_CRC_DEFAULT_VALUE;

    crc = CcittCrc16(crc, header, MPU_PROTOCAL_HEADER_LEN);
    crc = CcittCrc16(crc, pMsg->pDataBuffer, pMsg->dataLength);
    return crc;
}

/*************************************************
 Function: MpuHalCycleProcess
 Description: Process the MPU HAL cycle
 Input: uint32_t cycleTime: cycle time in milliseconds
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalCycleProcess(uint32_t cycleTime)
{
    static uint32_t timeCount = 0u;

    if (E_MPU_HAL_START_STATE_IDLE == g_mpuManage.startState)
    {
        /* do nothing */
    }
    else if (E_MPU_HAL_START_STATE_POWER_OFF == g_mpuManage.startState)
    {
        timeCount = 0;
        g_mpuManage.startState = E_MPU_HAL_START_STATE_OFF_DELAY;
    }
    else if (E_MPU_HAL_START_STATE_OFF_DELAY == g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if (timeCount >= MPU_HAL_CYC_TIME_CNT_50MS)
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_ON;
            MpuHalSetPower(1);
        }
    }
    else if (E_MPU_HAL_START_STATE_POWER_ON == g_mpuManage.startState)
    {
        timeCount = 0;
        g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_DELAY;
    }
    else if (E_MPU_HAL_START_STATE_POWER_DELAY == g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if (timeCount >= (MPU_HAL_CYC_TIME_CNT_40MS - cycleTime))
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_ON;
        }
    }
    else if (E_MPU_HAL_START_STATE_KEY_ON == g_mpuManage.startState)
    {
        g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_ON_DELAY;
        MpuHalSetPowerkey(1);
        timeCount = 0;
    }
    else if (E_MPU_HAL_START_STATE_KEY_ON_DELAY == g_mpuManage.startState)
    {
        timeCount += cycleTime;
        if (timeCount > (MPU_HAL_CYC_TIME_CNT_20MS - cycleTime))
        {
            g_mpuManage.startState = E_MPU_HAL_START_STATE_KEY_OFF;
            MpuHalSetPowerkey(0);
        }
    }
    else if (E_MPU_HAL_START_STATE_KEY_OFF == g_mpuManage.startState)
    {
        g_mpuManage.startState = E_MPU_HAL_START_STATE_FINISH;
    }
    else
        ;

    if (g_mpuManage.wakeoutTimeCount < MPU_HAL_WAKEOUT_TIME_WAKEVALUE)
    {
        g_mpuManage.wakeoutTimeCount++;
        if (MPU_HAL_WAKEOUT_TIME_WAKEVALUE == g_mpuManage.wakeoutTimeCount)
        {
            MpuHalSetWakeOut(0);
        }
    }
}

/*************************************************
 Function: MpuHalOpen
 Description: Open a MPU HAL handle
 Input: void
 Output: void
 Return: int16_t: handle index, -1 if no available handle
 Others:
*************************************************/
int16_t MpuHalOpen(void)
{
    int16_t handle = -1, index = 0;

    COMMON_DISABLE_INTERRUPTS();
    for (index = 0; index < MPU_HAL_HANDLE_INSTANSE_MAX; index++)
    {
        if (g_mpuManage.rxHandle[index].useFlag == 0)
        {
            g_mpuManage.rxHandle[index].useFlag = 1;
            handle = index;
            break;
        }
    }
    COMMON_ENABLE_INTERRUPTS();
    return handle;
}

/*************************************************
 Function: MpuHalSetRxFilter
 Description: Set the RX filter for a given handle
 Input: int16_t handle: handle index
        const MpuHalFilter_t* pFilter: pointer to the filter configuration, NULL to disable filter
 Output: void
 Return: int16_t: MPU_HAL_STATUS_OK if successful, MPU_HAL_STATUS_ERR if error
 Others:
*************************************************/
int16_t MpuHalSetRxFilter(int16_t handle, const MpuHalFilter_t *pFilter)
{
    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if (pFilter != NULL)
        {
            g_mpuManage.rxHandle[handle].useRxFilter = 1;
            memcpy(&(g_mpuManage.rxHandle[handle].rxFilterConfig), pFilter, sizeof(MpuHalFilter_t));
        }
        else
        {
            g_mpuManage.rxHandle[handle].useRxFilter = 0;
        }
        return MPU_HAL_STATUS_OK;
    }

    return MPU_HAL_STATUS_ERR;
}

/*************************************************
 Function: MpuHalSetRxBuffer
 Description: Set the RX buffer for a given handle
 Input: int16_t handle: handle index
        uint8_t* pBuffer: pointer to the RX buffer
        uint32_t bufferSize: size of the RX buffer
 Output: void
 Return: int16_t: MPU_HAL_STATUS_OK if successful, MPU_HAL_STATUS_ERR if error
 Others:
*************************************************/
int16_t MpuHalSetRxBuffer(int16_t handle, uint8_t *pBuffer, uint32_t bufferSize)
{
    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if (pBuffer != NULL)
        {
            g_mpuManage.rxHandle[handle].rxQueueHandle = xQueueCreate(MPU_HAL_RX_QUEUE_LEN, sizeof(uint32_t));
            g_mpuManage.rxHandle[handle].rxIndexIn = 0;
            g_mpuManage.rxHandle[handle].pDataBufferRx = pBuffer;
            g_mpuManage.rxHandle[handle].dataBufferSize = bufferSize;
            return MPU_HAL_STATUS_OK;
        }
        else
        {
            return MPU_HAL_NULL_PTR_ERR;
        }
    }

    return MPU_HAL_STATUS_ERR;
}

/*************************************************
 Function: MpuHalQueueSend
 Description: Transmit data via UART
 Input: const uint8_t* pTxData: pointer to the data to be transmitted
        uint16_t txLength: length of the data to be transmitted
 Output: void
 Return: int16_t: 0 if successful, -1 if error
 Others:
*************************************************/
static int16_t MpuHalQueueSend(MpuQueueTxBuffer_t *pTxBuffer, const uint8_t *pTxData, uint16_t txLength, MpuHalTXMode_e txMode)
{
#if MPU_DEBUG_QUEUE == 1
    static uint32_t queuelevel = 0u;
    static uint32_t queuelevelMax = 0u;
    static uint32_t queuelevelall = 0u;
    static uint32_t cnt = 0u;
#endif
    uint32_t ret = 0u;
    uint32_t data = 0u;
    uint16_t i = 0u;
    uint32_t resnum = 0u;
    do {
        if ((pTxBuffer == NULL) || (pTxData == NULL))
        {
            ret = MPU_HAL_NULL_PTR_ERR;
            break;
        }
        resnum = uxQueueMessagesWaiting(pTxBuffer->txQueueHandle);
#if MPU_DEBUG_QUEUE == 1
        queuelevel = resnum;
        queuelevelall += queuelevel;
        cnt++;
        if (queuelevel > queuelevelMax)
        {
            queuelevelMax = queuelevel;
        }
        if (cnt >= 200)
        {
            TBOX_PRINT("UART Tx Queue Level: %d, Max: %d, Avg: %d\r\n", queuelevel, queuelevelMax, queuelevelall/cnt);
            cnt = 0u;
            queuelevelall = 0u;
            queuelevelMax = 0u;
        }
#endif
        if (resnum >= MPU_HAL_TX_QUEUE_LEN)
        {
            ret = MPU_HAL_QUEUE_ERR;
            if (MPU_HAL_UART_MODE == txMode)
            {
                TBOX_PRINT("UART Tx Send Error, Queue full\r\n");
            } else {
                TBOX_PRINT("SPI Tx Send Error, Queue full\r\n");
            }
            break;
        }
        data = pTxBuffer->index << MPU_HAL_16BIT_SHIFT;
        for (i = 0; i < txLength; i++)
        {
            pTxBuffer->buffer[pTxBuffer->index++] = pTxData[i];
            if (pTxBuffer->index >= MPU_HAL_MAX_BUFFSIZE)
            {
                pTxBuffer->index = 0;
            }
        }
        data |= txLength;
        if (pdPASS != xQueueSend(pTxBuffer->txQueueHandle, &data, 0))
        {
            if (pTxBuffer->index >= txLength)
            {
                pTxBuffer->index -= txLength;
            }
            else
            {
                pTxBuffer->index = MPU_HAL_MAX_BUFFSIZE - (txLength - pTxBuffer->index);
            }
            ret = MPU_HAL_QUEUE_ERR;
            TBOX_PRINT("Queue Send Error\r\n");
        }
    } while (0);
    return ret;
}

/*************************************************
 Function: MpuHalTransmit
 Description: Transmit a data packet via MPU HAL
 Input: int16_t handle: handle index
        const MpuHalDataPack_t* pTxMsg: pointer to the data packet to be transmitted
        MpuHalTXMode_e txMode: transmission mode (UART or SPI)
 Output: void
 Return: int16_t: MPU_HAL_STATUS_OK if successful, MPU_HAL_STATUS_ERR if error
 Others:
*************************************************/
int16_t MpuHalTransmit(int16_t handle, const MpuHalDataPack_t *pTxMsg, MpuHalTXMode_e txMode)
{
    static uint8_t sTxBuffer[MPU_HAL_PROC_BUFFER_LEN];
    uint16_t crc, index;
    uint8_t packHeader[MPU_HAL_PACK_HEADER_BUF_LEN];
    int16_t ret = MPU_HAL_STATUS_ERR;
    if (txMode >= MPU_HAL_TX_MODE_MAX)
    {
        return MPU_HAL_MODE_ERR;
    }

    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        if (pTxMsg != NULL)
        {
            if (pTxMsg->dataLength < MPU_HAL_TXMSG_MAX_LEN)
            {
                COMMON_DISABLE_INTERRUPTS();
                MpuPackHeader(packHeader, pTxMsg);
                crc = MpuPackGetCrc(packHeader, pTxMsg);
                index = 0;
                memcpy(sTxBuffer + index, packHeader, MPU_PROTOCAL_HEADER_LEN);
                index += MPU_PROTOCAL_HEADER_LEN;
                memcpy(sTxBuffer + index, pTxMsg->pDataBuffer, pTxMsg->dataLength);
                index += pTxMsg->dataLength;
                sTxBuffer[index] = (crc >> MPU_HAL_8BIT_SHIFT) & MPU_HAL_8BIT_MASK;
                index++;
                sTxBuffer[index] = crc & MPU_HAL_8BIT_MASK;
                index++;
                ret = MpuHalQueueSend(&g_mpuTxBuf[txMode], sTxBuffer, index, txMode);
                COMMON_ENABLE_INTERRUPTS();
            }
            else
            {
                ret = MPU_HAL_LEN_ERR;
            }
        }
        else
        {
            ret = MPU_HAL_NULL_PTR_ERR;
        }
    }
    return ret;
}

/*************************************************
 Function: MpuHalReceive
 Description: Receive a data packet via MPU HAL
 Input: int16_t handle: handle index
        MpuHalDataPack_t* pRxMsg: pointer to the data packet to be received
        uint32_t waitTime: maximum wait time in ticks
 Output: void
 Return: int16_t: MPU_HAL_STATUS_OK if successful, MPU_HAL_STATUS_ERR if error
 Others:
*************************************************/
int16_t MpuHalReceive(int16_t handle, MpuHalDataPack_t *pRxMsg, uint32_t waitTime)
{
    uint16_t len, crc, crcRx, index, i;
    uint32_t data;
    uint8_t packHeader[MPU_HAL_PACK_HEADER_BUF_LEN];
    QueueHandle_t queHandle;
    int16_t ret = MPU_HAL_STATUS_OK;

    if ((handle >= 0) && (handle < MPU_HAL_HANDLE_INSTANSE_MAX))
    {
        index = handle & MPU_HAL_8BIT_MASK;
        if (pRxMsg != NULL)
        {
            queHandle = g_mpuManage.rxHandle[index].rxQueueHandle;
            if (xQueueReceive(queHandle, &data, waitTime) == pdPASS)
            {
                index = (data >> MPU_HAL_16BIT_SHIFT) & MPU_HAL_16BIT_MASK;
                len = data & MPU_HAL_16BIT_MASK;
                if ((pRxMsg->dataBufferSize + MPU_PROTOCAL_HEADER_LEN + 2) >= len)
                {
                    /****receive header****************************/
                    for (i = 0; i < MPU_PROTOCAL_HEADER_LEN; i++)
                    {
                        packHeader[i] = g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                        index++;
                        if (index >= g_mpuManage.rxHandle[handle].dataBufferSize)
                        {
                            index = 0;
                        }
                    }
                    /*******receive service data**************************************/
                    for (i = 0; i < (len - MPU_PROTOCAL_HEADER_LEN - 2); i++)
                    {
                        pRxMsg->pDataBuffer[i] = g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                        index++;
                        if (index >= g_mpuManage.rxHandle[handle].dataBufferSize)
                        {
                            index = 0;
                        }
                    }
                    pRxMsg->dataLength = len - MPU_PROTOCAL_HEADER_LEN - 2;
                    crcRx = (g_mpuManage.rxHandle[handle].pDataBufferRx[index] << MPU_HAL_8BIT_SHIFT);
                    index++;
                    if (index >= g_mpuManage.rxHandle[handle].dataBufferSize)
                    {
                        index = 0;
                    }
                    crcRx |= g_mpuManage.rxHandle[handle].pDataBufferRx[index];
                    crc = MpuPackGetCrc(packHeader, pRxMsg);
                    if (crcRx == crc)
                    {
                        pRxMsg->aid = packHeader[2];
                        pRxMsg->mid = packHeader[3];
                        pRxMsg->subcommand = packHeader[4];
                        pRxMsg->dataLength = len - (MPU_PROTOCAL_HEADER_LEN + 2);
                    }
                    else
                    {
                        ret = MPU_HAL_CRC_ERR;
                    }
                }
                else
                {
                    ret = MPU_HAL_LEN_ERR;
                }
            }
            else
            {
                ret = MPU_HAL_STATUS_ERR;
            }
        }
        else
        {
            ret = MPU_HAL_NULL_PTR_ERR;
        }
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }

    return ret;
}

/*************************************************
 Function: MpuHalStart
 Description: Start the MPU HAL
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalStart(void)
{
    g_mpuManage.wakeoutTimeCount = MPU_HAL_WAKEOUT_TIME_INIT;
    MpuHalSetWakeOut(0);
    MpuHalSetPower(1);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_ON;
}

/*************************************************
 Function: MpuHalStartIsFinished
 Description: Check if the MPU HAL start process is finished
 Input: void
 Output: void
 Return: int16_t: MPU_HAL_STATUS_OK if finished, MPU_HAL_STATUS_ERR if not finished
 Others:
*************************************************/
int16_t MpuHalStartIsFinished(void)
{
    int16_t ret;
    if (E_MPU_HAL_START_STATE_FINISH == g_mpuManage.startState)
    {
        ret = MPU_HAL_STATUS_OK;
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}

/*************************************************
 Function: MpuHalReset
 Description: Reset the MPU HAL
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalReset(void)
{
    MpuHalSetPower(0);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_POWER_OFF;
}

/*************************************************
 Function: MpuHalResetIsFinished
 Description: Check if the MPU HAL reset process is finished
 Input: void
 Output: void
 Return: int16_t: MPU_HAL_STATUS_OK if finished, MPU_HAL_STATUS_ERR if not finished
 Others:
*************************************************/
int16_t MpuHalResetIsFinished(void)
{
    int16_t ret;
    if (E_MPU_HAL_START_STATE_FINISH == g_mpuManage.startState)
    {
        ret = MPU_HAL_STATUS_OK;
    }
    else
    {
        ret = MPU_HAL_STATUS_ERR;
    }
    return ret;
}

/*************************************************
 Function: MpuHalPowerOff
 Description: Power off the MPU HAL
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalPowerOff(void)
{
    MpuHalSetPower(0);
    g_mpuManage.startState = E_MPU_HAL_START_STATE_IDLE;
}

/*************************************************
 Function: MpuHalSetMode
 Description: Set the MPU HAL mode (wake or sleep)
 Input: uint8_t wakeMode: 0 for sleep mode, 1 for wake mode
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalSetMode(uint8_t wakeMode)
{
    if (MPU_HAL_WAKE_MODE_POWER_OFF == wakeMode)
    {
        MpuUartHandleTypeDef *huart = &g_mpuUartRingBuf;
        huart->init_success = 0;
        spi_ready = spi_ready & 1;
        MpuHalMainDmaSleep();
        MpuHalMainUartSleep();
#if (SPI_DMA_ENABLE == 1)
        MpuHalMainSpiSleep();
#endif
        MpuHalGpioSetMode(0u);
        /*Vbus off**/
        MpuHalSetVbus(0);
        g_mpuManage.wakeMode = wakeMode;
    }
    else if (MPU_HAL_WAKE_MODE_MPU_SLEEP == wakeMode)
    {
        MpuHal_UartDmaInit();
        MpuHalMainUartInit();
#if (SPI_DMA_ENABLE == 1)
        MpuHal_SpiInit();
#endif
        DMA_ChannelEnable(UART_DMA_RX_CHANNEL);
        MpuHalGpioSetMode(1u);
        /*Vbus on***/
        MpuHalSetVbus(1);
        /*wake up mpu*/
        g_mpuManage.wakeoutTimeCount = MPU_HAL_WAKEOUT_TIME_SLEEPVALUE;
        MpuHalSetWakeOut(1);
        g_mpuManage.wakeMode = wakeMode;
    }
}

/*************************************************
 Function: MpuHalGetWakeMode
 Description: Get the current MPU HAL mode (wake or sleep)
 Input: void
 Output: void
 Return: int16_t: 0 for sleep mode, 1 for wake mode
 Others:
*************************************************/
int16_t MpuHalGetWakeMode(void)
{
    return g_mpuManage.wakeMode;
}

/*************************************************
 Function: UartProtocalProcess
 Description: Process the received UART data and extract complete protocol packets
 Input: uint8_t *pData: pointer to the received data
        uint16_t dataLength: length of the received data
        uint8_t IsrFlag: 1 if called in ISR, 0 if called in task
 Output: void
 Return: void
 Others:
*************************************************/
static void UartProtocalProcess(void)
{
    MpuUartHandleTypeDef *huart = &g_mpuUartRingBuf;
    uint8_t recv_data = 0U;
    uint8_t read_ok = 0U;

    if (huart->init_success != 1)
    {
        //TBOX_PRINT(" Mpu hal uart init error,does not support protocal process\r\n");   //1ms print maybe reultl over loading
    }
    else
    {
        for (uint8_t i = 0; i < 10; i++)
        {
            read_ok = MpuHalReadRingBuf(&huart->rx_ring_buf, &recv_data);
            if (read_ok == 0) {
                return;
            }
            switch (huart->proto_state)
            {
                case PROTOCOL_STATE_IDLE:
                    // Wait for 1st header byte (0x55)
                    if (recv_data == MPU_HAL_PACK_FIX_HEADER_0X55)
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_HEADER2;
                    }
                    break;

                case PROTOCOL_STATE_WAIT_HEADER2:
                    // Wait for 2nd header byte (0xAA)
                    if (recv_data == MPU_HAL_PACK_FIX_HEADER_0XAA)
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_HEADER;
                    }
                    else if (recv_data == MPU_HAL_PACK_FIX_HEADER_0XBB)
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_SPI_HEADER;
                    }
                    else
                    {
                        huart->proto_buf.dataCount = 0;
                        huart->proto_state = PROTOCOL_STATE_IDLE;
                        TBOX_PRINT("Proto err: invalid header2 (0x%02x)\n", recv_data);
                        // huart->err_cnt++;
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
                        if (huart->proto_buf.dataLength > MPU_HAL_RX_ONE_FRAME_MAX_SIZE)
                        {
                            TBOX_PRINT("Proto err: data len over max (%d > %d)\n",
                                    huart->proto_buf.dataLength, MPU_HAL_RX_ONE_FRAME_MAX_SIZE);
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

                case PROTOCOL_STATE_WAIT_SPI_HEADER:
                    huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                    huart->proto_buf.dataCount++;

                    if (huart->proto_buf.dataCount == MPU_PROTOCAL_SPI_HEADER_LEN)
                    {
                        huart->proto_buf.dataLength = ((uint16_t)huart->proto_buf.data[2] << 8) | huart->proto_buf.data[3];
                        if (huart->proto_buf.dataLength > MPU_HAL_RX_ONE_FRAME_MAX_SIZE)
                        {
                            TBOX_PRINT("Proto err: data len over max (%d > %d)\n",
                                    huart->proto_buf.dataLength, MPU_HAL_RX_ONE_FRAME_MAX_SIZE);
                            huart->err_cnt++;
                        }
                        /* SPI头帧对于SPI SLAVE，只做故障后处理，不对接业务，此处重置数据 */
                        huart->proto_buf.dataCount = 0;
                        huart->proto_buf.dataLength = 0;
                        huart->proto_state = PROTOCOL_STATE_IDLE;
                    }
                    break;

                case PROTOCOL_STATE_WAIT_DATA:
                    // Collect payload and checksum (last 2 bytes)
                    huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                    huart->proto_buf.dataCount++;

                    // Check if full packet is received (header + payload + checksum)
                    if (huart->proto_buf.dataCount >= (MPU_PROTOCAL_HEADER_LEN + huart->proto_buf.dataLength + 2))
                    {
                        MpuDataDispatch((uint8_t *)huart->proto_buf.data, huart->proto_buf.dataCount, MPU_HAL_SEND_IRQ_ENABLE);
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

static void SpiProtocalProcess(void)
{
    MpuUartHandleTypeDef *huart = &g_mpuSpiRingBuf;
    uint8_t recv_data = 0U;
    uint8_t read_ok = 0U;

    if (huart->init_success != 1)
    {
        //TBOX_PRINT(" Mpu hal uart init error,does not support protocal process\r\n");   //1ms print maybe reultl over loading
    }
    else
    {
        for (uint8_t i = 0; i < 5; i++)
        {
            read_ok = MpuHalReadRingBuf(&huart->rx_ring_buf, &recv_data);
            if (read_ok == 0) {
                return;
            }
            switch (huart->proto_state)
            {
                case PROTOCOL_STATE_IDLE:
                    // Wait for 1st header byte (0x55)
                    if (recv_data == MPU_HAL_PACK_FIX_HEADER_0X55)
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_HEADER2;
                    }
                    break;

                case PROTOCOL_STATE_WAIT_HEADER2:
                    // Wait for 2nd header byte (0xAA)
                    if (recv_data == MPU_HAL_PACK_FIX_HEADER_0XAA)
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_HEADER;
                    }
                    else if (recv_data == MPU_HAL_PACK_FIX_HEADER_0XBB)
                    {
                        huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                        huart->proto_buf.dataCount++;
                        huart->proto_state = PROTOCOL_STATE_WAIT_SPI_HEADER;
                    }
                    else
                    {
                        huart->proto_buf.dataCount = 0;
                        huart->proto_state = PROTOCOL_STATE_IDLE;
                        TBOX_PRINT("Proto err: invalid header2 (0x%02x)\n", recv_data);
                        // huart->err_cnt++;
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
                        if (huart->proto_buf.dataLength > MPU_HAL_RX_ONE_FRAME_MAX_SIZE)
                        {
                            TBOX_PRINT("Proto err: data len over max (%d > %d)\n",
                                    huart->proto_buf.dataLength, MPU_HAL_RX_ONE_FRAME_MAX_SIZE);
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

                case PROTOCOL_STATE_WAIT_SPI_HEADER:
                    huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                    huart->proto_buf.dataCount++;

                    if (huart->proto_buf.dataCount == MPU_PROTOCAL_SPI_HEADER_LEN)
                    {
                        huart->proto_buf.dataLength = ((uint16_t)huart->proto_buf.data[2] << 8) | huart->proto_buf.data[3];
                        if (huart->proto_buf.dataLength > MPU_HAL_RX_ONE_FRAME_MAX_SIZE)
                        {
                            TBOX_PRINT("Proto err: data len over max (%d > %d)\n",
                                    huart->proto_buf.dataLength, MPU_HAL_RX_ONE_FRAME_MAX_SIZE);
                            huart->err_cnt++;
                        }
                        /* SPI头帧对于SPI SLAVE，只做故障后处理，不对接业务，此处重置数据 */
                        huart->proto_buf.dataCount = 0;
                        huart->proto_buf.dataLength = 0;
                        huart->proto_state = PROTOCOL_STATE_IDLE;
                    }
                    break;

                case PROTOCOL_STATE_WAIT_DATA:
                    // Collect payload and checksum (last 2 bytes)
                    huart->proto_buf.data[huart->proto_buf.dataCount] = recv_data;
                    huart->proto_buf.dataCount++;

                    // Check if full packet is received (header + payload + checksum)
                    if (huart->proto_buf.dataCount >= (MPU_PROTOCAL_HEADER_LEN + huart->proto_buf.dataLength + 2))
                    {
                        MpuDataDispatch((uint8_t *)huart->proto_buf.data, huart->proto_buf.dataCount, MPU_HAL_SEND_IRQ_ENABLE);
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
  Function:       MpuHalSetRingBuf
  Description:    Set data to UART0 ring buffer
  Input:          recv_data: Data byte to be stored in the buffer
  Output:         None
  Return:         None
  Others:         None
*************************************************/
static void MpuHalSetRingBuf(uint8_t *recv_data, uint16_t length, MpuHalTXMode_e txMode)
{

    MpuUartHandleTypeDef* huart = NULL;
    uint16_t next_head = 0u;
    if (MPU_HAL_UART_MODE == txMode)
    {
        huart = &g_mpuUartRingBuf;
    }
    else if (MPU_HAL_SPI_MODE == txMode)
    {
        huart = &g_mpuSpiRingBuf;
    }
    else
    {
        TBOX_PRINT("MpuHalSetRingBuf: invalid txMode %d\n", txMode);
        return;
    }

    COMMON_DISABLE_INTERRUPTS();
    for (uint16_t i = 0u; i < length; i++)
    {
        next_head = (huart->rx_ring_buf.head + 1) % MPU_HAL_RING_BUFFER;
        if (next_head != huart->rx_ring_buf.tail) 
        {
            huart->rx_ring_buf.buf[huart->rx_ring_buf.head] = recv_data[i];
            huart->rx_ring_buf.head = next_head; // Update write index
        }
        else 
        {
            huart->err_cnt++;
            if (MPU_HAL_UART_MODE == txMode)
            {
                TBOX_PRINT("Uart ring buf full! Err cnt: %d\n", huart->err_cnt);
            }
            else if (MPU_HAL_SPI_MODE == txMode)
            {
                TBOX_PRINT("Spi ring buf full! Err cnt: %d\n", huart->err_cnt);
            } else ;
            break;
        }
    }
    COMMON_ENABLE_INTERRUPTS();
}

/*************************************************
  Function: MpuHalReadRingBuf
  Description: Read data from ring buffer
  Input: RingBufferType* rb: pointer to the ring buffer structure
         uint8_t* data: pointer to store the read data
  Output: data: contains the read data if successful
  Return: 1 if read successfully, 0 if buffer is empty or parameters invalid
*************************************************/
static uint8_t MpuHalReadRingBuf(RingBufferType* rb, uint8_t* data)
{
    uint8_t read_ok = 0;
    
    if (rb != NULL && data != NULL)
    {
        COMMON_DISABLE_INTERRUPTS();
        uint16_t current_head = rb->head;
        uint16_t current_tail = rb->tail;
        
        if (current_head != current_tail)
        {
            if (current_tail < MPU_HAL_RING_BUFFER)
            {
                *data = rb->buf[current_tail];
                current_tail = (current_tail + 1) % MPU_HAL_RING_BUFFER;
                rb->tail = current_tail;
                read_ok = 1;
            }
        }
        COMMON_ENABLE_INTERRUPTS();
    }
    return read_ok;
}

/*************************************************
 Function: MpuHalMainUartSleep
 Description: Put the main UART interface for MPU communication into sleep mode
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalMainUartSleep(void)
{
    MpuUartHandleTypeDef *huart = &g_mpuUartRingBuf;
    huart->init_success = 0;
    UART_IntMask(MPU_HAL_UART_ID, UART_INT_ALL, MASK);
    INT_ClearPendingIRQ(MPU_HAL_UART_IRQ);
    INT_EnableIRQ(MPU_HAL_UART_IRQ);
    SYSCTRL_DisableModule(SYSCTRL_UART0);

    PORT_PinmuxConfig(PORT_C, GPIO_2, PTC2_GPIO);
    GPIO_SetPinDir(PORT_C, GPIO_2, GPIO_INPUT);
    PORT_PinmuxConfig(PORT_C, GPIO_3, PTC3_GPIO);
    GPIO_SetPinDir(PORT_C, GPIO_3, GPIO_INPUT);
}

#if (UART_DMA_ENABLE == 1)
/*************************************************
 Function: MpuHalMainDmaSleep
 Description: Put the main UART DMA interface for MPU communication into sleep mode
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalMainDmaSleep(void)
{
    g_uartDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_UNKNOWN;
    g_uartDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_UNKNOWN;
    DMA_ChannelRequestDisable(UART_DMA_RX_CHANNEL);
    DMA_ChannelRequestDisable(UART_DMA_TX_CHANNEL);

    DMA_IntMask(UART_DMA_RX_CHANNEL, DMA_INT_ALL, MASK);
    DMA_IntMask(UART_DMA_TX_CHANNEL, DMA_INT_ALL, MASK);

    INT_ClearPendingIRQ(UART_DMA_RX_IRQ);
    INT_ClearPendingIRQ(UART_DMA_TX_IRQ);

    INT_EnableIRQ(UART_DMA_RX_IRQ);
    INT_EnableIRQ(UART_DMA_TX_IRQ);

#if (SPI_DMA_ENABLE == 1)
    DMA_ChannelRequestDisable(SPI_DMA_RX_CHANNEL);
    DMA_ChannelRequestDisable(SPI_DMA_TX_CHANNEL);

    DMA_IntMask(SPI_DMA_RX_CHANNEL, DMA_INT_ALL, MASK);
    DMA_IntMask(SPI_DMA_TX_CHANNEL, DMA_INT_ALL, MASK);

    INT_ClearPendingIRQ(SPI_DMA_RX_IRQ);
    INT_ClearPendingIRQ(SPI_DMA_TX_IRQ);

    INT_EnableIRQ(SPI_DMA_RX_IRQ);
    INT_EnableIRQ(SPI_DMA_TX_IRQ);
#endif
    SYSCTRL_DisableModule(SYSCTRL_DMA);
    SYSCTRL_DisableModule(SYSCTRL_DMAMUX);
}

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
    DMA_HaltControl(ENABLE);
    while(SET==DMA_GetDmaBusyStatus());
    DMA_SetDestAddr(UART_DMA_RX_CHANNEL, (uint32_t)g_uartDmaRxBuf.Buffer);
    DMA_SetMinorLoopNum(UART_DMA_RX_CHANNEL, MPU_HAL_UART_BUFFSIZE);
    g_uartDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_REV;
    DMA_ChannelRequestEnable(UART_DMA_RX_CHANNEL);
    DMA_HaltControl(DISABLE);
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
    if ((buf == NULL) || (length == 0u) || (length > MPU_HAL_UART_BUFFSIZE)) {
        return;
    }
    MpuHalSetRingBuf(buf, length, MPU_HAL_UART_MODE);
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
    PeripheralHal_TimerStart(g_dmaTimerHandle);
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
    PeripheralHal_TimerStop(g_dmaTimerHandle);
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
        TBOX_PRINT("UART DMA RX: ");
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
    if (txLength == 0u || (pTxData == NULL)) {
        return ERR;     
    }
    if (g_uartDmaTxBuf.dmaBufStatus == DMA_BUF_STATE_UNKNOWN) {
        return ERR; 
    }
    memcpy(g_uartDmaTxBuf.Buffer, pTxData, txLength);
    g_uartDmaTxBuf.BufferLen = txLength;
    DMA_HaltControl(ENABLE);
    while(SET==DMA_GetDmaBusyStatus());
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

/*************************************************
 Function: MpuHalUartTxTask
 Description: Task to handle UART transmission for MPU HAL
 Input: void *pvParameters: task parameters (not used)
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalUartTxTask(void *pvParameters)
{
    uint32_t ret = MPU_HAL_STATUS_OK;
    uint32_t queueData = 0u;
    MpuUartHandleTypeDef *huart = &g_mpuUartRingBuf;

    g_mpuTxBuf[MPU_HAL_UART_MODE].txQueueHandle = xQueueCreate(MPU_HAL_TX_QUEUE_LEN, sizeof(uint32_t));

    while (1)
    {
        if(huart->init_success == 0)
        {
            vTaskDelay(pdMS_TO_TICKS(100));
            continue;
        }
        if (g_uartDmaTxBuf.dmaBufStatus != DMA_BUF_STATE_IDLE) {
            continue;            
        }
        if (xQueueReceive(g_mpuTxBuf[MPU_HAL_UART_MODE].txQueueHandle, &queueData, 0xFFFFFFFF) != pdPASS)
        {
            continue;
        }
        ret = MpuHalPacketSend(MPU_HAL_UART_MODE, queueData, &g_mpuTxBuf[MPU_HAL_UART_MODE]);
        if (ret != MPU_HAL_STATUS_OK) {
            TBOX_PRINT("UART PacketSend failed, ret = 0x%X\n", ret);
        }
    }
}

/*************************************************
 Function: MpuHalPacketSend
 Description: Send a packet of data via UART or SPI DMA
 Input: MpuHalTXMode_e txMode: transmission mode (UART or SPI)
        uint32_t queueData: data to be sent (start address and length)
        MpuQueueTxBuffer_t *pTxBuffer: pointer to the transmission buffer
 Output: void
 Return: uint32_t: status code (OK or error code)
 Others:
*************************************************/
static uint32_t MpuHalPacketSend(MpuHalTXMode_e txMode, uint32_t queueData, MpuQueueTxBuffer_t *pTxBuffer)
{
    uint32_t ret = MPU_HAL_STATUS_OK;
    static uint8_t pTxData[MPU_HAL_MAX_BUFFSIZE] = {0};
    uint16_t startAddress = 0u;
    uint16_t length = 0u;
    do {
        if (txMode >= MPU_HAL_TX_MODE_MAX)
        {
            ret = MPU_HAL_MODE_ERR;
            break;
        }
        COMMON_DISABLE_INTERRUPTS();
        startAddress = (queueData >> MPU_HAL_16BIT_SHIFT) & MPU_HAL_16BIT_MASK;
        length = queueData & MPU_HAL_16BIT_MASK;
        for (uint16_t i = 0u; i < length; i++)
        {
            pTxData[i] = pTxBuffer->buffer[startAddress++];
            if (startAddress >= MPU_HAL_MAX_BUFFSIZE)
            {
                startAddress = 0;
            }
        }
        if (txMode == MPU_HAL_UART_MODE)
        {
            ret = MpuHal_UartDmaSendPacket(pTxData, length);
        }
        else
        {
            ret = MpuHal_SpiDmaSendPacket(pTxData, length);
        }
        COMMON_ENABLE_INTERRUPTS();
    } while (0);
    return ret;
}

#else
/*************************************************
 Function: MpuHalUart0_IntCallBack
 Description: UART0 Receive Buffer Full Interrupt Service Routine
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalUart0_IntCallBack(void)
{
    uint8_t recv_data = UART_ReceiveByte(MPU_HAL_UART_ID);
    MpuHalSetRingBuf(&recv_data, 1u, MPU_HAL_UART_MODE);
}

/*************************************************
 Function:       UART0_SendData
 Description:    Send data via UART0 interface
 Input:          txdataP - Pointer to the data to be sent
                 dlc - Length of the data to be sent
 Output:         none
 Return:         SUCC - Send successful
                 ERR - Send error
 Others:         Uses blocking transmission with timeout
                 Estimated timeout based on 1Mbps baud rate
                 Sends one byte at a time with individual delay
*************************************************/
static ResultStatus_t UART0_SendData(unsigned char *txdataP, unsigned int dlc)
{
    uint32_t i = 0u, delayCnt = 0u;

    while (UART_GetLineStatus(UART0_ID, UART_LINESTA_TEMT) == RESET)
    { // Wait for TX_FIFO to empty
        if (delayCnt > 500)
        { // Timeout based on estimated transmission time for 4x32-bit data at 1Mbps
            return ERR;
        }
    }

    // Start sending data operation
    for (i = 0u; i < dlc; i++)
    {
        UART_SendByte(UART0_ID, txdataP[i]); // Send data byte

        delayCnt = 0;
        while (UART_GetLineStatus(UART0_ID, UART_LINESTA_TEMT) == RESET)
        {
            if (delayCnt > MPU_HAL_UART_DELAY_CNT)
            {
                return ERR;
            }
            delayCnt++;
        }
    }

    // Wait for all data in TX_FIFO to be transmitted
    delayCnt = 0;
    while (UART_GetLineStatus(UART0_ID, UART_LINESTA_TEMT) == RESET)
    {
        if (delayCnt > MPU_HAL_UART_DELAY_CNT)
        {
            return ERR;
        }
        delayCnt++;
    }

    return SUCC;
}

/*************************************************
 Function: MpuHalUartTxTask
 Description: Task to handle UART transmission for MPU HAL
 Input: void *pvParameters: task parameters (not used)
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalUartTxTask(void *pvParameters)
{
    uint8_t temp[MPU_HAL_UART_TX_TEMP_LEN] = {
        0,
    },
            j = 0u;
    uint32_t queueData = 0u, remain = 0u, i = 0u;
    uint16_t startAddress = 0u;
    uint16_t length = 0u;

    g_mpuUartTxBuffer.txQueueHandle = xQueueCreate(MPU_HAL_TX_QUEUE_LEN, sizeof(uint32_t));

    while (1)
    {
        if (xQueueReceive(g_mpuUartTxBuffer.txQueueHandle, &queueData, 0xFFFFFFFF) != pdPASS)
        {
            continue;
        }
        // send fifo data
        i = 0;
        startAddress = (queueData >> MPU_HAL_16BIT_SHIFT) & MPU_HAL_16BIT_MASK;
        remain = length = queueData & MPU_HAL_16BIT_MASK;
        while (i < length)
        {
            if (remain > MPU_HAL_UART_TX_ONCE_LEN)
            {
                for (j = 0u; j < MPU_HAL_UART_TX_ONCE_LEN; j++)
                {
                    temp[j] = g_mpuUartTxBuffer.buffer[startAddress++];
                    if (startAddress >= MPU_HAL_MAX_BUFFSIZE)
                    {
                        startAddress = 0;
                    }
                }
                UART0_SendData(temp, MPU_HAL_UART_TX_ONCE_LEN);
                vTaskDelay(1);
                i = i + MPU_HAL_UART_TX_ONCE_LEN;
                remain = remain - MPU_HAL_UART_TX_ONCE_LEN;
            }
            else
            {
                for (j = 0; j < remain; j++)
                {
                    temp[j] = g_mpuUartTxBuffer.buffer[startAddress++];
                    if (startAddress >= MPU_HAL_MAX_BUFFSIZE)
                    {
                        startAddress = 0;
                    }
                }
                UART0_SendData(temp, remain);
                i = i + remain;
                vTaskDelay(1);
            }
        }
    }
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
    DMA_HaltControl(ENABLE);
    DMA_SetDestAddr(SPI_DMA_RX_CHANNEL, (uint32_t)g_spiDmaRxBuf.Buffer);
    DMA_SetMinorLoopNum(SPI_DMA_RX_CHANNEL, MPU_HAL_SPI_DMA_BUFFSIZE);
    g_spiDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_REV;
    DMA_ChannelRequestEnable(SPI_DMA_RX_CHANNEL);
    DMA_HaltControl(DISABLE);
}

/*************************************************
 Function: MpuHal_SpiIrqCallback
 Description: Handle SPI interrupts for IEQ and REQ signals
 Input: PORT_Id_t portId, PORT_GpioNum_t gpioNum
 Output: None
 Return: None
 Others:
*************************************************/
void MpuHal_SpiIrqCallback(void)
{
    static uint8_t cnt = 0;
    if ((cnt == 0u) && (GPIO_ReadPinLevel(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN) == GPIO_LOW))
    {
        GPIO_WritePinOutput(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, GPIO_LOW);
        spi_ready = spi_ready | 1;
        cnt++;
        TBOX_PRINT("MPU Spi INIT OK\n"); // MCU上电后等待MPU启动完成，REQ有一个下降沿，标志SPI可以正常通信
        return;
    }
    if (GPIO_ReadPinLevel(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN) == GPIO_LOW) // 传输完成
    {
        MpuHal_SpiDmaRxDataHandleCallback();
        return;
    }
    MpuHal_SpiDmaRxReStart();
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
    // 定义引脚配置结构体
    PORT_PinConfig_t pinConfig;
    pinConfig.pullConfig = PORT_PULL_DOWN;
    pinConfig.slewRateConfig = PORT_FAST_RATE;
    pinConfig.passiveFilterConfig = ENABLE;
    pinConfig.openDrainConfig = DISABLE;
    pinConfig.filterEnable = ENABLE;
    pinConfig.filterConfig = 0x10;
    /* Configure SPI SCK pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_CLK_PORT, MPU_HAL_SPI_CLK_PORT_PIN, MPU_HAL_SPI_CLK_PORT_MUX);
    /* Configure SPI MISO pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_MISO_PORT, MPU_HAL_SPI_MISO_PORT_PIN, MPU_HAL_SPI_MISO_PORT_MUX);
    /* Configure SPI MOSI pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_MOSI_PORT, MPU_HAL_SPI_MOSI_PORT_PIN, MPU_HAL_SPI_MOSI_PORT_MUX);
    PORT_PinmuxConfig(MPU_HAL_SPI_CS_PORT, MPU_HAL_SPI_CS_PORT_PIN, MPU_HAL_SPI_CS_PORT_MUX);
    /* Configure SPI CS pin */
    PORT_PinmuxConfig(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, MPU_HAL_SPI_IEQ_PORT_MUX);
    PORT_PinmuxConfig(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, MPU_HAL_SPI_REQ_PORT_MUX);
    
    /* IEQ and REQ int config */
    PORT_PinInit(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, &pinConfig);
    GPIO_SetPinDir(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, GPIO_INPUT);
    PORT_PinIntConfig(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, PORT_ISF_INT_BOTH_EDGE);
    INT_EnableIRQ(MPU_HAL_SPI_REQ_IRQ);

    GPIO_SetPinDir(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, GPIO_OUTPUT);
    GPIO_WritePinOutput(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, GPIO_LOW);
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
    MpuUartHandleTypeDef *huart = &g_mpuSpiRingBuf;
    huart->init_success = 0;
    SYSCTRL_DisableModule(MPU_HAL_SPI_SYSCTRL);
    ret =  CLK_ModuleSrc(MPU_HAL_SPI_CLK, CLK_SRC_PLL);
    if (ret != SUCC) {
        TBOX_PRINT("MPU Spi CLK Config FAIL\n");
        return;
    }
    CLK_SetClkDivider(MPU_HAL_SPI_CLK, CLK_DIV_3);
    SYSCTRL_ResetModule(MPU_HAL_SPI_SYSCTRL);
    SYSCTRL_EnableModule(MPU_HAL_SPI_SYSCTRL);

    MpuHal_SpiGpioInit();
    SPI_Init(MPU_HAL_SPI_ID, &g_spiDmaInitConfig.spiConfig);
    SPI_DmaConfig(MPU_HAL_SPI_ID, &g_spiDmaInitConfig.dmaLvlConfig);
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

    spi_ready = spi_ready | 2;
    huart->init_success = 1;
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
    uint16_t crc = MPU_HAL_CRC_DEFAULT_VALUE;

    if ((pTxData == NULL) || (txLength == 0)) {
        TBOX_PRINT("SPI pTxData is NULL or txLength is 0\n");
        return ERR;
    }
    
    /* Check if data length exceeds buffer size */
    if (txLength > MPU_HAL_SPI_DMA_BUFFSIZE) {
        TBOX_PRINT("SPI txLength exceeds buffer size\n");
        return ERR;
    }

    if (spi_ready != 3) {
        TBOX_PRINT("SPI Send Error, SPI no ready status is 0x%X\n", spi_ready);
        return ERR;
    }
    /* Copy data to TX buffer */
    g_spiDmaTxBuf.Buffer[0] = MPU_HAL_SPI_HEADER_FIRST_BYTE;
    g_spiDmaTxBuf.Buffer[1] = MPU_HAL_SPI_HEADER_SECOND_BYTE;
    g_spiDmaTxBuf.Buffer[2] = (uint8_t)(txLength >> 8);
    g_spiDmaTxBuf.Buffer[3] = (uint8_t)(txLength & 0xFF);
    crc = CcittCrc16(crc, pTxData, txLength);
    g_spiDmaTxBuf.Buffer[4] = (uint8_t)(crc >> 8);
    g_spiDmaTxBuf.Buffer[5] = (uint8_t)(crc & 0xFF);
    memcpy(&g_spiDmaTxBuf.Buffer[MPU_HAL_SPI_HEADER_SIZE], pTxData, txLength);
    g_spiDmaTxBuf.BufferLen = txLength + MPU_HAL_SPI_HEADER_SIZE;
    
    /* Update buffer state */
    g_spiDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_BUSY;

    GPIO_WritePinOutput(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, GPIO_HIGH); // 拉高片选，请求发送数据
    DMA_HaltControl(ENABLE);
    while(SET==DMA_GetDmaBusyStatus());
    DMA_SetSrcAddr(SPI_DMA_TX_CHANNEL, (uint32_t)g_spiDmaTxBuf.Buffer);
    DMA_SetMinorLoopNum(SPI_DMA_TX_CHANNEL, g_spiDmaTxBuf.BufferLen);
    DMA_ChannelRequestEnable(SPI_DMA_TX_CHANNEL);
    DMA_HaltControl(DISABLE);
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
    MpuHalSetRingBuf(buf, length, MPU_HAL_SPI_MODE);
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
#if (SPI_TEST_ENABLE == 1)
        TBOX_PRINT("SPI DMA RX: ");
        for (uint16_t i = 0u; i < g_spiDmaRxBuf.BufferLen; i++) {
            TBOX_PRINT("%02X ", g_spiDmaRxBuf.Buffer[i]);
        }
#endif
        MpuHal_SpiDmaRxDataProcess(g_spiDmaRxBuf.Buffer, g_spiDmaRxBuf.BufferLen);
        memset(g_spiDmaRxBuf.Buffer, 0u, g_spiDmaRxBuf.BufferLen);
        g_spiDmaRxBuf.BufferLen = 0u;
    }

    g_spiDmaRxBuf.dmaBufStatus = DMA_BUF_STATE_IDLE;
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
    memset(g_spiDmaTxBuf.Buffer, 0u, g_spiDmaTxBuf.BufferLen);
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
    GPIO_WritePinOutput(MPU_HAL_SPI_IEQ_PORT, MPU_HAL_SPI_IEQ_PORT_PIN, GPIO_LOW);
    g_spiDmaTxBuf.dmaBufStatus = DMA_BUF_STATE_DONE;
#if (SPI_TEST_ENABLE == 1)
    TBOX_PRINT("SPI DMA TX: ");
    for (uint16_t i = 0u; i < g_spiDmaTxBuf.BufferLen; i++) {
        TBOX_PRINT("%02X ", g_spiDmaTxBuf.Buffer[i]);
    }
#endif
    MpuHal_SpiDmaTxDataHandleCallback();
}

/*************************************************
 Function:       MpuHalMainSpiSleep
 Description: Put the main SPI interface for MPU communication into sleep mode
 Input: void
 Output: void
 Return: void
 Others:
*************************************************/
static void MpuHalMainSpiSleep(void)
{
    MpuUartHandleTypeDef *huart = &g_mpuSpiRingBuf;
    huart->init_success = 0;
    spi_ready = spi_ready & 1;
    SPI_Disable(MPU_HAL_SPI_ID);
    SYSCTRL_DisableModule(MPU_HAL_SPI_SYSCTRL);
    /* SPI pin deinit */
    PORT_PinIntConfig(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN, PORT_ISF_DISABLED);
    PORT_PinmuxConfig(MPU_HAL_SPI_CLK_PORT, MPU_HAL_SPI_CLK_PORT_PIN, MPU_HAL_SPI_CLK_PORT_DEINIT);
    GPIO_SetPinDir(MPU_HAL_SPI_CLK_PORT, MPU_HAL_SPI_CLK_PORT_PIN, GPIO_INPUT);
    PORT_PinmuxConfig(MPU_HAL_SPI_MISO_PORT, MPU_HAL_SPI_MISO_PORT_PIN, MPU_HAL_SPI_MISO_PORT_DEINIT);
    GPIO_SetPinDir(MPU_HAL_SPI_MISO_PORT, MPU_HAL_SPI_MISO_PORT_PIN, GPIO_INPUT);
    PORT_PinmuxConfig(MPU_HAL_SPI_MOSI_PORT, MPU_HAL_SPI_MOSI_PORT_PIN, MPU_HAL_SPI_MOSI_PORT_DEINIT);
    GPIO_SetPinDir(MPU_HAL_SPI_MOSI_PORT, MPU_HAL_SPI_MOSI_PORT_PIN, GPIO_INPUT);
    PORT_PinmuxConfig(MPU_HAL_SPI_CS_PORT, MPU_HAL_SPI_CS_PORT_PIN, MPU_HAL_SPI_CS_PORT_DEINIT);
    GPIO_SetPinDir(MPU_HAL_SPI_CS_PORT, MPU_HAL_SPI_CS_PORT_PIN, GPIO_INPUT);
}


/*************************************************
 Function: MpuHalSpiTxTask
 Description: Task to handle SPI transmission for MPU HAL
 Input: void *pvParameters: task parameters (not used)
 Output: void
 Return: void
 Others:
*************************************************/
void MpuHalSpiTxTask(void *pvParameters)
{
    uint32_t ret = MPU_HAL_STATUS_OK;
    uint32_t queueData = 0u;

    g_mpuTxBuf[MPU_HAL_SPI_MODE].txQueueHandle = xQueueCreate(MPU_HAL_TX_QUEUE_LEN, sizeof(uint32_t));

    while (1)
    {
        if (spi_ready != 3) {
            vTaskDelay(pdMS_TO_TICKS(500));
            continue;
        }
        /* Check if buffer is available */
        if (g_spiDmaTxBuf.dmaBufStatus != DMA_BUF_STATE_IDLE) {
            vTaskDelay(pdMS_TO_TICKS(10));
            continue;
        }
        if (GPIO_ReadPinLevel(MPU_HAL_SPI_REQ_PORT, MPU_HAL_SPI_REQ_PORT_PIN) == GPIO_HIGH) {
            // TBOX_PRINT("SPI req pin is high\n"); // REQ拉高表示MPU正在发送数据过来，此时禁止发送
            vTaskDelay(pdMS_TO_TICKS(100));
            continue;
        }
        if (xQueueReceive(g_mpuTxBuf[MPU_HAL_SPI_MODE].txQueueHandle, &queueData, 0xFFFFFFFF) != pdPASS)
        {
            continue;
        }
        ret = MpuHalPacketSend(MPU_HAL_SPI_MODE, queueData, &g_mpuTxBuf[MPU_HAL_SPI_MODE]);
        if (ret != MPU_HAL_STATUS_OK) {
            TBOX_PRINT("SPi PacketSend failed, ret = 0x%X\n", ret);
        }
    }
}
#endif

/*************************************************
 Function:       MpuHalUartTimerCallBack
 Description:    Timer callback function for MPU UART communication
 Input:          None
 Output:         None
 Return:         None
 Others:         Calls UartProtocalProcess to handle received data in timer interrupt context
*************************************************/
void MpuHalUartTimerCallBack(void)
{
    UartProtocalProcess();
}

/*************************************************
 Function:       MpuHalUartTimerCallBack
 Description:    Timer callback function for MPU UART communication
 Input:          None
 Output:         None
 Return:         None
 Others:         Calls UartProtocalProcess to handle received data in timer interrupt context
*************************************************/
void MpuHalSpiTimerCallBack(void)
{
    SpiProtocalProcess();
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
        
    while(SET==DMA_GetDmaBusyStatus() && (timeOutCounter > 0U)) 
    {
        timeOutCounter--;
    }

    if(timeOutCounter > 0U)
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
