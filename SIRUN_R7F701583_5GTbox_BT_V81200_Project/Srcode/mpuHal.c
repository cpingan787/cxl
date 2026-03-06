#include "mpuHal.h"
#include "logHal.h"

#include "r_cg_macrodriver.h"
#include "r_cg_port.h"
#include "r_port.h"
#include "r_cg_uart.h"

#include "stdio.h"
#include "Dio.h"

#define MPU_COMMUNICATION_USE_SPI 0


#define MPU_HAL_HANDLE_INSTANSE_MAX 15
#define MPU_PROTOCAL_HEADER_LEN 8
#define MPU_HAL_TX_BUFFER 1072 // 4096
#define MPU_HAL_RX_BUFFER 1096
#define MPU_HAL_UART_INT_RX_BUF_LEN 200


typedef struct
{
    uint8_t data[1200];
    uint16_t dataCount;
    uint16_t dataLength;
} MpuUartProtocalBuffer_t;
typedef struct
{
    uint8_t buffer[MPU_HAL_TX_BUFFER];
    uint16_t index;
} MpuUartTxBuffer_t;

volatile uint8_t g_mpuUartReciveOneByteBuffer[2];
volatile uint16_t g_mpuUartReciveCount = 0;
volatile uint8_t g_mpuUartErrorType = 0;
volatile uint8_t g_mpuUartErrorFlag = 0;
volatile uint8_t g_mpuSetRecvErrorFlag = 0;

volatile uint8_t g_uartReceiveData0[MPU_HAL_UART_INT_RX_BUF_LEN];
volatile uint8_t g_uartReceiveData1[MPU_HAL_UART_INT_RX_BUF_LEN];
volatile uint8_t g_mpuUartRxBufId;
volatile uint16_t g_mpuUartRxBufCount0;
volatile uint16_t g_mpuUartRxBufCount1;
volatile uint8_t g_mpuUartRxBufDealFlag = 0;

static MpuUartProtocalBuffer_t g_mpuUartProtocalBuffer;

static MpuUartTxBuffer_t g_mpuUartTxBuffer;
static int16_t MpuUartTransmit(const uint8_t *pTxData, uint16_t txLength);

typedef struct
{
    uint8_t buffer[MPU_HAL_TX_BUFFER];
    uint16_t txLength;
} MpuTxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_RX_BUFFER];
    uint16_t txLength;
} MpuRxBuffer_t;

typedef struct
{
    uint8_t buffer[MPU_HAL_RX_BUFFER];
    uint16_t dataCount;
} MpuProtocolBuffer_t;

typedef struct
{
    uint8_t useFlag;
    uint8_t useRxFilter;
    uint8_t *pDataBufferRx;
    uint16_t dataBufferSize;
    uint16_t rxIndexIn;
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
    uint8_t wakeMode; /*0:MPU power off,1:Mpu sleep,2:Mpu wake*/
    uint8_t wakeoutTimeCount;
    MpuHalStartState_e startState;
    MpuHalHandle_t rxHandle[MPU_HAL_HANDLE_INSTANSE_MAX];
    uint8_t mcuRequest; /*0:no request,1:requested */
    uint8_t txBufferFlag; /*0:tx buffer0 available,1:tx buffer available */
    MpuRxBuffer_t rxBuffer;
} MpuHalManage_t;

static MpuHalManage_t g_mpuManage;

void MpuHalMainUartInit(uint32_t bandrate)
{
    R_UART5_Create();
    R_UART5_Start();
    // g_mpuSetRecvErrorFlag = R_UART5_Receive(g_mpuUartReciveOneByteBuffer, 1);
}

void MpuHalInit(void)
{
    memset(&g_mpuManage, 0, sizeof(g_mpuManage));
    MpuHalMainUartInit(115200 * 4);

}

void MpuHalUartInterruptCallback(uint8_t data)
{
    if (g_mpuUartRxBufId)
    {
        if (g_mpuUartRxBufCount1 < MPU_HAL_UART_INT_RX_BUF_LEN)
        {
            g_uartReceiveData1[g_mpuUartRxBufCount1] = data;
            g_mpuUartRxBufCount1++;
        }
        if (!g_mpuUartRxBufDealFlag)
        {
            g_mpuUartRxBufId = 0;
            g_mpuUartRxBufCount0 = 0;
            g_mpuUartRxBufDealFlag = 1;
        }
    }
    else
    {
        if (g_mpuUartRxBufCount0 < MPU_HAL_UART_INT_RX_BUF_LEN)
        {
            g_uartReceiveData0[g_mpuUartRxBufCount0] = data;
            g_mpuUartRxBufCount0++;
        }
        if (!g_mpuUartRxBufDealFlag)
        {
            g_mpuUartRxBufId = 1;
            g_mpuUartRxBufCount1 = 0;
            g_mpuUartRxBufDealFlag = 1;
        }
    }
}
