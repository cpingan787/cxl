/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: canHal.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "canHal.h"
#include "platform_cfg.h"
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "queue.h"
#include "semphr.h"
#include "can_drv.h"
#include "sysctrl_drv.h"
#include "clock_drv.h"
#include "gpio_drv.h"
#include "logHal.h"
#include <string.h>
#include "int_drv.h"
#include "event_groups.h"
/****************************** Macro Definitions ******************************/
#define CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX  (10) //(sizeof(CanDriverBufferList)/sizeof(P_CanBufferHal_t))//
#define CAN_CHANNEL_NUMBER_MAX              (2)
#define ALL_CAN_RX_BUFFER_SIZE              (64)
#define ALL_CAN_TX_BUFFER_SIZE              (64U)
#define CAN_SEND_MAIL_MAX_NUMBER            (5)
#define CAN_TX_BUFFER_SIZE                  (32)
#define CANFD_ENABLE_CONFIG                 (0)
#define CAN_TX_EVT_INIT_DONE                (1U << 0)
#define CAN0RW                              ((can_reg_w_t *)CAN0_BASE_ADDR) // 定义CAN0模块的寄存器
#define CAN1RW                              ((can_reg_w_t *)CAN1_BASE_ADDR) // 定义CAN1模块的寄存器
#define CAN_NM_WAKEUP_ID_MIN                (0x500)
#define CAN_NM_WAKEUP_ID_MAX                (0x5FF)
#define CAN_TX_ENQUEUE_TIMEOUT_MS           (5U)
#define CAN_TX_BUSY_MAX_RETRY               (2U)
#define CAN_TX_BUSY_RETRY_DELAY_MS          (3U)
/****************************** Type Definitions ******************************/
typedef enum
{
    E_CAN_MODE_STANDBY = 0,
    E_CAN_MODE_NORMAL = 1,
} CanModeType_e;

typedef struct
{
    int8_t txMsgEnable;
    int8_t AppMsgEnable;
    uint8_t BusErrorState;
    uint8_t busOffCount;
    uint8_t transmitFinishedFlag;
    uint8_t busErrorAppDiableFlag;
    uint8_t busNoAckErrorState; // 0:no error,1:ack error
    uint8_t txFailState;
    uint8_t loadHighFlag;
    uint8_t noAckError;
    uint8_t stuffError;
    uint8_t nmNoackState;
    uint32_t noAckTimeCount;
    uint32_t txStartTimeCount;
    uint32_t txTimeOutCount;
    uint32_t loadMsgCount;
    uint32_t loadTimeCount;
    typeCanBusOffEventCallBack busOffEventFun;
    typeCanTxRxHalCallBackPtr canRxCallFun;
    typeCanTxRxHalCallBackPtr canTxCallFun;
    typeCanRxHalFilterCallBackPtr rxFilterFun;
    typeCanNoAckStuffErrorRecoverEvent errorRecoverFun;
} CanManage_t;

typedef struct
{
    uint8_t canUseFlag;
    uint8_t canRxFlag;
    uint8_t enableSendLoopBack;
    CanHalMsg_t *pMsgBufferRx;
    uint16_t msgRxBufferSize;
    uint8_t msgRxIndexIn;
    // uint16_t msgRxIndexOut;
    // uint16_t msgRxCount;
    QueueHandle_t RxQueueHandle;
    CanHalMsgFilter_t filter;
    // typeCanTxRxHalCallBackPtr pRxCallBackFun;
    typeCanTxHalCallBackPtr pTxCallBackFun;
    typeCanRxHalFilterCallBackPtr pFilerFun;
} CanBufferHal_t;

typedef struct
{
    bool canFDFormatBrs;
    bool canFDFormat; /*!< TRUE:CAN FD format, FALSE:Classic CAN format. */
    bool extended;
    uint32_t canId;   /*!< 11- or 29-bit identifier (ID) */
    uint8_t data[64]; /*!< Data and DLC */
    uint8_t dlc;
} stc_canfd_msg_t;

typedef struct
{
    uint8_t msgRxIndexIn;
    QueueHandle_t rxQueueHandle;
    CanHalMsg_t msgRxBuffer[ALL_CAN_RX_BUFFER_SIZE];
} AllCanRxBuffer_t;

typedef struct
{
    uint16_t txIndexIn;
    uint16_t txIndexOut;
    stc_canfd_msg_t canMsg[CAN_TX_BUFFER_SIZE];
} can_tx_msg_buffer_t;

typedef struct
{
    CanHalMsg_t   msgTxBuffer[ALL_CAN_TX_BUFFER_SIZE];

    /* queue item: uint16_t = (ch<<8)|idx */
    QueueHandle_t txQueueHandle;

    /* free idx pool: queue item uint8_t */
    QueueHandle_t freeIdxQueueHandle;

    uint8_t       inited;
} CanHalTxBuffer_t;
/****************************** Global Variables ******************************/
CanManage_t g_driverCanManage[CAN_CHANNEL_NUMBER_MAX];
static uint8_t g_canWakeUpFlag[CAN_CHANNEL_NUMBER_MAX];
static CanBufferHal_t g_can0DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
static CanBufferHal_t g_can1DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
// Mutex for CAN transmit protection
static SemaphoreHandle_t g_canTxMutex[CAN_CHANNEL_NUMBER_MAX];
#if (CAN_CHANNEL_NUMBER_MAX == 6)
static CanBufferHal_t g_can1DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
static CanBufferHal_t g_can2DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
static CanBufferHal_t g_can3DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
static CanBufferHal_t g_can4DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
static CanBufferHal_t g_can5DriverBuffer[CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX];
#endif

static CanBufferHal_t *g_canDriverBufferList[] =
    {
        g_can0DriverBuffer,
        g_can1DriverBuffer,
#if (CAN_CHANNEL_NUMBER_MAX == 6)
        g_can2DriverBuffer,
        g_can3DriverBuffer,
        g_can4DriverBuffer,
        g_can5DriverBuffer,
#endif
};

static AllCanRxBuffer_t g_allCanRxBuffer;
static uint8_t g_canBusOffProcessFlag[CAN_CHANNEL_NUMBER_MAX];
uint8_t g_canTestModeFlag[CAN_CHANNEL_NUMBER_MAX] = {0};
static volatile unsigned int CAN0_BusOffIntFlag = 0U; // 定义CAN0 的BusOff中断进入标志
static volatile unsigned int CAN1_BusOffIntFlag = 0U; // 定义CAN0 的BusOff中断进入标志
static uint32_t g_receiveCanNmFlag = 0U;
#if 0
static const CAN_Config_t g_Can0Config =
{                                                    
    .mbMaxNum = 14,            //使用的邮箱个数。最大值是 14
    .rxFifoEn = DISABLE,    //禁止CAN的FIFO功能。
    .mode = CAN_MODE_NORMAL,//正常工作模式
    .bitTiming =
    {    //建议用智芯提供的工具生成这组参数
       .propSeg = 8,        // Propagation segment
       .phaseSeg1 = 7,        // Phase segment 1
       .phaseSeg2 = 4,        // Phase segment 2
       .preDivider = 2,        // Clock prescaler division factor
       .rJumpwidth = 1        // Resync jump width
    },
    
    .fdEn = DISABLE,        //禁止 CAN FD 功能
    .payload0 = CAN_PAYLOAD_SIZE_8,    //定义 CAN_RAM0 中一帧数据的数据量。
    .payload1 = CAN_PAYLOAD_SIZE_8,    //定义 CAN_RAM1 中一帧数据的数据量。
    .payload2 = CAN_PAYLOAD_SIZE_8,    //定义 CAN_RAM2 中一帧数据的数据量。CAN6、CAN7使用
    .payload3 = CAN_PAYLOAD_SIZE_8,    //定义 CAN_RAM3 中一帧数据的数据量。CAN6、CAN7使用
    .bitTimingFdData =
    {    //建议用智芯提供的工具生成这组参数
       .propSeg = 8,        // Propagation segment
       .phaseSeg1 = 7,        // Phase segment 1
       .phaseSeg2 = 4,        // Phase segment 2
       .preDivider = 2,        // Clock prescaler division factor
       .rJumpwidth = 1        // Resync jump width
    }
};
#else
static const CAN_Config_t g_Can0Config =
    {
        .mbMaxNum = 14,          // 使用的邮箱个数。最大值是 14
        .rxFifoEn = DISABLE,     // 禁止CAN的FIFO功能。
        .mode = CAN_MODE_NORMAL, // 正常工作模式
        .bitTiming =
            {
                // 建议用智芯提供的工具生成这组参数
                .propSeg = 10,   // Propagation segment
                .phaseSeg1 = 5,  // Phase segment 1
                .phaseSeg2 = 4,  // Phase segment 2
                .preDivider = 2, // Clock prescaler division factor
                .rJumpwidth = 1  // Resync jump width
            },

        .fdEn = ENABLE,                  // 禁止 CAN FD 功能
        .payload0 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM0 中一帧数据的数据量。
        .payload1 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM1 中一帧数据的数据量。
        .payload2 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM2 中一帧数据的数据量。CAN6、CAN7使用
        .payload3 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM3 中一帧数据的数据量。CAN6、CAN7使用
        .bitTimingFdData =
            {
                // 建议用智芯提供的工具生成这组参数
                .propSeg = 4,    // Propagation segment
                .phaseSeg1 = 3,  // Phase segment 1
                .phaseSeg2 = 2,  // Phase segment 2
                .preDivider = 1, // Clock prescaler division factor
                .rJumpwidth = 1  // Resync jump width
            }};
#endif

static const CAN_Config_t g_Can1Config =
    {
        .mbMaxNum = 14,          // 使用的邮箱个数。最大值是 14
        .rxFifoEn = DISABLE,     // 禁止CAN的FIFO功能。
        .mode = CAN_MODE_NORMAL, // 正常工作模式
        .bitTiming =
            {
                // 建议用智芯提供的工具生成这组参数
                .propSeg = 10,   // Propagation segment
                .phaseSeg1 = 5,  // Phase segment 1
                .phaseSeg2 = 4,  // Phase segment 2
                .preDivider = 2, // Clock prescaler division factor
                .rJumpwidth = 1  // Resync jump width
            },

        .fdEn = ENABLE,                  // 禁止 CAN FD 功能
        .payload0 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM0 中一帧数据的数据量。
        .payload1 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM1 中一帧数据的数据量。
        .payload2 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM2 中一帧数据的数据量。CAN6、CAN7使用
        .payload3 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM3 中一帧数据的数据量。CAN6、CAN7使用
        .bitTimingFdData =
            {
                // 建议用智芯提供的工具生成这组参数
                .propSeg = 4,    // Propagation segment
                .phaseSeg1 = 3,  // Phase segment 1
                .phaseSeg2 = 2,  // Phase segment 2
                .preDivider = 1, // Clock prescaler division factor
                .rJumpwidth = 1  // Resync jump width
            }};

static const CAN_Config_t g_Can2Config =
    {
        .mbMaxNum = 14,          // 使用的邮箱个数。最大值是 14
        .rxFifoEn = DISABLE,     // 禁止CAN的FIFO功能。
        .mode = CAN_MODE_NORMAL, // 正常工作模式
        .bitTiming =
            {
                // 建议用智芯提供的工具生成这组参数
                .propSeg = 10,   // Propagation segment
                .phaseSeg1 = 5,  // Phase segment 1
                .phaseSeg2 = 4,  // Phase segment 2
                .preDivider = 2, // Clock prescaler division factor
                .rJumpwidth = 1  // Resync jump width
            },

        .fdEn = ENABLE,                  // 禁止 CAN FD 功能
        .payload0 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM0 中一帧数据的数据量。
        .payload1 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM1 中一帧数据的数据量。
        .payload2 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM2 中一帧数据的数据量。CAN6、CAN7使用
        .payload3 = CAN_PAYLOAD_SIZE_64, // 定义 CAN_RAM3 中一帧数据的数据量。CAN6、CAN7使用
        .bitTimingFdData =
            {
                // 建议用智芯提供的工具生成这组参数
                .propSeg = 4,    // Propagation segment
                .phaseSeg1 = 3,  // Phase segment 1
                .phaseSeg2 = 2,  // Phase segment 2
                .preDivider = 1, // Clock prescaler division factor
                .rJumpwidth = 1  // Resync jump width
            }};

// 定义CAN发送使用的附加变量
static CAN_MessageInfo_t g_Can0TxRxInfo =
    {
        .idType = CAN_MSG_ID_STD, // MSG的类型为标准帧类型
        .dataLen = 64,            // 发送数据的长度，接收数据的最大长度
        .remoteFlag = RESET,      // 不是远程帧
        .fdEn = ENABLE,           // 不是是 CAN FD 帧
        .fdPadding = 0,           // 当要使用 FD 发送的数据不足数时，使用 0 对缺少的数据进行填充
        .brsEn = ENABLE           // 禁止切换波特率
};

static CAN_MessageInfo_t g_Can1TxRxInfo =
    {
        .idType = CAN_MSG_ID_STD, // MSG的类型为标准帧类型
        .dataLen = 64,            // 发送数据的长度，接收数据的最大长度
        .remoteFlag = RESET,      // 不是远程帧
        .fdEn = ENABLE,           // 不是是 CAN FD 帧
        .fdPadding = 0,           // 当要使用 FD 发送的数据不足数时，使用 0 对缺少的数据进行填充
        .brsEn = ENABLE           // 禁止切换波特率
};

static CAN_MessageInfo_t g_Can2TxRxInfo =
    {
        .idType = CAN_MSG_ID_STD, // MSG的类型为标准帧类型
        .dataLen = 8,             // 发送数据的长度，接收数据的最大长度
        .remoteFlag = RESET,      // 不是远程帧
        .fdEn = DISABLE,          // 不是是 CAN FD 帧
        .fdPadding = 0,           // 当要使用 FD 发送的数据不足数时，使用 0 对缺少的数据进行填充
        .brsEn = ENABLE           // 禁止切换波特率
};

/* 定义数组，存储每个邮箱的滤波 ID(CAN0_MB_IDConfig[n][0]) 和 独立屏蔽码 RXIMR(CAN0_MB_IDConfig[n][1])。
 * 建议：1，用于发送的邮箱在最前面，减少仲裁查询时间。邮箱的 ID 设为 0x000，邮箱的 RXIMR 设为 0x7FF。
 *         2，不使用的邮箱，邮箱的 ID 设为 0x000， 邮箱的 RXIMR 设为 0x7FF，避免产生接收中断。
 *         3，每个邮箱的 ID 屏蔽寄存器 RXIMR 设为 0x7FF，表示所有的 ID 位都要匹配。
 *            RXIMR 的位(1--检查滤波ID的对应位，0--不检查xxx)
 */
static const unsigned int CAN0_MB_IDConfig[32][2] =
    {
        {0x000, 0x7FF}, // MB0用于发送网络管理报文
        {0x000, 0x7FF}, // MB1用于发送诊断报文
        {0x000, 0x7FF}, // MB2用于发送应用报文
        {0x000, 0x7FF}, // MB3用于发送应用报文
        {0x000, 0x7FF}, // MB4用于发送应用报文

        { 0x000, 0x000 },        
        { 0x100, 0x000 },        
        { 0x200, 0x000 },        
        { 0x300, 0x000 },        
        { 0x400, 0x000 },        
        { 0x500, 0x000 },        
        { 0x600, 0x000 },        
        { 0x700, 0x000 },        
        { 0x800, 0x000 },  
};

static const unsigned int CAN1_MB_IDConfig[32][2] =
    {
        {0x000, 0x7FF}, // MB0用于发送网络管理报文
        {0x000, 0x7FF}, // MB1用于发送诊断报文
        {0x000, 0x7FF}, // MB2用于发送应用报文
        {0x000, 0x7FF}, // MB3用于发送应用报文
        {0x000, 0x7FF}, // MB4用于发送应用报文

        { 0x000, 0x000 },        
        { 0x100, 0x000 },        
        { 0x200, 0x000 },        
        { 0x300, 0x000 },        
        { 0x400, 0x000 },        
        { 0x500, 0x000 },        
        { 0x600, 0x000 },        
        { 0x700, 0x000 },        
        { 0x800, 0x000 },  
};

static const unsigned int CAN2_MB_IDConfig[32][2] =
    {
        {0x000, 0x7FF}, // MB0用于发送网络管理报文
        {0x000, 0x7FF}, // MB1用于发送诊断报文
        {0x000, 0x7FF}, // MB2用于发送应用报文
        {0x000, 0x7FF}, // MB3用于发送应用报文
        {0x000, 0x7FF}, // MB4用于发送应用报文

        {0x400, 0x000}, // MB5用于接收 ID 为 0x400 ~ 0x4FF 的网络管理报文
        {0x500, 0x700}, // MB6用于接收 ID 为 0x500 ~ 0x5FF 的诊断报文
        {0x001, 0x7FF}, // MB7用于接收 ID 为 0x001 的车速报文
        {0x002, 0x7FF}, // MB8用于接收 ID 为 0x002 的解锁、锁车命令报文
        {0x003, 0x7FF}, // MB9用于接收 ID 为 0x003 的危险示警报文
        {0x004, 0x7FF}, // MB10用于接收 ID 为 0x004 的左转向灯开关命令报文
        {0x005, 0x7FF}, // MB11用于接收 ID 为 0x005 的寻车报文
        {0x000, 0x7FF}, // MB12用于接收 ID 为 0 的信息帧
        {0x000, 0x7FF}, // MB13用于接收 ID 为 0 的信息帧
};

static EventGroupHandle_t g_canTxEvt = NULL;
static CanHalTxBuffer_t g_allCanTxBuffer;
/****************************** Function Declarations *************************/
void CanRxInterruptProcessMsg(uint8_t canChannel, stc_canfd_msg_t *pstcCanFDmsg, uint8_t txState);
void CAN0_BUS_OFF_ISR(void); // 声明BUS_OFF中断处理函数
void CAN0_ERR_ISR(void);     // 声明错误中断处理函数。ErrTimer>127
// void CAN0_TXW_ISR(void);            //声明发送报警中断处理函数。96 <ErrTimer<= 127
// void CAN0_RXW_ISR(void);            //声明接收报警中断处理函数。96 <ErrTimer<= 127
void CAN0_BusOffDone_ISR(void); // 声明BusOff事件已经自动/软件恢复中断处理函数
// void CAN0_ERR_FAST_ISR(void);        //声明CAN FD 时，在数据时间段上出现错误中断处理函数
void CAN0_HOST_MEM_ERR_ISR(void);      // 声明被CPU发现的不可矫正错误中断处理函数
void CAN0_CAN_MEM_ERR_ISR(void);       // 声明被CAN模块发现的不可矫正错误中断处理函数
void CAN0_COR_MEM_ERR_ISR(void);       // 声明可矫正错误中断处理函数
void CAN0_MB0TO15_ISR(uint32_t mbIdx); // 声明邮箱0-15的中断处理函数
void CAN1_BUS_OFF_ISR(void); // 声明BUS_OFF中断处理函数
void CAN1_ERR_ISR(void);     // 声明错误中断处理函数。ErrTimer>127
// void CAN1_TXW_ISR(void);            //声明发送报警中断处理函数。96 <ErrTimer<= 127
// void CAN1_RXW_ISR(void);            //声明接收报警中断处理函数。96 <ErrTimer<= 127
void CAN1_BusOffDone_ISR(void); // 声明BusOff事件已经自动/软件恢复中断处理函数
// void CAN1_ERR_FAST_ISR(void);        //声明CAN FD 时，在数据时间段上出现错误中断处理函数
void CAN1_HOST_MEM_ERR_ISR(void);      // 声明被CPU发现的不可矫正错误中断处理函数
void CAN1_CAN_MEM_ERR_ISR(void);       // 声明被CAN模块发现的不可矫正错误中断处理函数
void CAN1_COR_MEM_ERR_ISR(void);       // 声明可矫正错误中断处理函数
void CAN1_MB0TO15_ISR(uint32_t mbIdx); // 声明邮箱0-15的中断处理函数
void CAN2_BUS_OFF_ISR(void); // 声明BUS_OFF中断处理函数
void CAN2_ERR_ISR(void);     // 声明错误中断处理函数。ErrTimer>127
// void CAN2_TXW_ISR(void);            //声明发送报警中断处理函数。96 <ErrTimer<= 127
// void CAN2_RXW_ISR(void);            //声明接收报警中断处理函数。96 <ErrTimer<= 127
void CAN2_BusOffDone_ISR(void); // 声明BusOff事件已经自动/软件恢复中断处理函数
// void CAN2_ERR_FAST_ISR(void);        //声明CAN FD 时，在数据时间段上出现错误中断处理函数
void CAN2_HOST_MEM_ERR_ISR(void);      // 声明被CPU发现的不可矫正错误中断处理函数
void CAN2_CAN_MEM_ERR_ISR(void);       // 声明被CAN模块发现的不可矫正错误中断处理函数
void CAN2_COR_MEM_ERR_ISR(void);       // 声明可矫正错误中断处理函数
void CAN2_MB0TO15_ISR(uint32_t mbIdx); // 声明邮箱0-15的中断处理函数
static void CanHalSetReceiveCanNmFlag(uint32_t canId);
static uint8_t CanHandleToChannel(int16_t canHandle, uint8_t *pOutCh);
static void CanHalTxInit(void);
static int16_t CanHalTxWaitInitDone(TickType_t waitTicks);
/****************************** Public Function Implementations ***************/
/*****************************************************************************
 * Function:        CAN0_Init
 * Description:     Configure and initialize CAN module according to canIndex
 * Input:           canIndex          - CAN instance index (0: CAN0, 1: CAN1, 2: CAN2)
 *                  canfdFlag         - CAN FD enable flag
 *                  idBandrate        - Arbitration(ID) phase baud rate type
 *                  dataBandrateRate  - Data phase baud rate type (CAN FD only)
 * Output:          None
 * Return:          None
 * Others:          1) CAN clock source uses external 40 MHz crystal (PLL derived as configured)
 *                  2) CAN error counter behavior:
 *                     - 96 < error_count <= 127 : Error warning
 *                     - error_count > 127       : Error passive; if transmitting, may enter Bus-Off
 *                     - error_count reaches 255 : Counter wraps to 0
 ****************************************************************************/
void CAN0_Init(uint8_t canIndex, uint8_t canfdFlag, CanBaudType_e idBandrate, CanBaudType_e dataBandrateRate)
{
    unsigned int i;

    switch (canIndex)
    {
    case 0:
        // 设置 CAN0 模块使用的端口
        PORT_PinmuxConfig(CANFD1_RX_PORT, CANFD1_RX_PIN, CANFD1_RX_MUX);        // 设置 PTB0为CAN0_RX功能
        PORT_PinmuxConfig(CANFD1_TX_PORT, CANFD1_TX_PIN, CANFD1_TX_MUX);        // 设置 PTB1为CAN0_TX功能
        PORT_PinmuxConfig(CAN1FD_STB_PORT, CAN1FD_STB_PIN, CAN1FD_STB_PIN_MUX); // 设置 为GPIO功能。为 TJA1042 的 STB
        GPIO_SetPinDir(CAN1FD_STB_PORT, CAN1FD_STB_PIN, GPIO_OUTPUT);           // 设置 为输出功能，用作TJA1042 的 STB
        GPIO_WritePinOutput(CAN1FD_STB_PORT, CAN1FD_STB_PIN, GPIO_HIGH);        // 设置 输出高电平，STB 设为高电平，JA1042 为 Standby 状态

        // 初始化CAN0模块的时钟源
        SYSCTRL_DisableModule(SYSCTRL_CAN0);
        CLK_ModuleSrc(CLK_CAN0, CLK_SRC_PLL);   // 选择CAN模块的功能时钟源
        CLK_SetClkDivider(CLK_CAN0, CLK_DIV_6); // 设置CAN模块的时钟分频系数
        SYSCTRL_ResetModule(SYSCTRL_CAN0);      // 在系统控制模块中，复位CAN0模块
        SYSCTRL_EnableModule(SYSCTRL_CAN0);     // 在系统控制模块中，使能CAN0模块

        // 初始化CAN0
        CAN_Disable(CAN_ID_0);                               // 禁止CAN模块
        CAN_Init(CAN_ID_0, &g_Can0Config);                   // 初始化CAN0模块
        CAN_SetRxMaskType(CAN_ID_0, CAN_RX_MASK_INDIVIDUAL); // 使用邮箱的独立屏蔽寄存器
        CAN_BusOffRecoveryScheme(CAN_ID_0, CAN_BUS_OFF_RECOV_AUTO);    //使能BUS_OFF自动恢复功能。

        /* 初始化邮箱说明：MB0用于发送网络管理报文，MB1用于发送网络诊断报文，MB2-4用于发送常规报文。MB5-31用于接收报文，
            共有27个邮箱可以用于接收。建议：网络管理数据使用一个邮箱接收，诊断数据使用一个邮箱接收，对重要的报文，
            一个邮箱设置一个固定的ID，每个邮箱接收固定ID的报文。
        */
        // 初始化MB0-4，用于发送报文
        CAN_ConfigTxMb(CAN_ID_0, 0, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
        CAN_ConfigTxMb(CAN_ID_0, 1, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱1用作发送网络诊断报文
        CAN_ConfigTxMb(CAN_ID_0, 2, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱2用作发送常规报文
        CAN_ConfigTxMb(CAN_ID_0, 3, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱3用作发送常规报文
        CAN_ConfigTxMb(CAN_ID_0, 4, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱4用作发送常规报文
                                                                // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

        // 初始化MB5-13，用于接收报文
        for (i = 5; i < 14; i++)
        {
            CAN_MbReceive(CAN_ID_0, i, CAN_MSG_ID_STD, CAN0_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                                // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

            CAN_SetRxMbIndividualMask(CAN_ID_0, CAN_MSG_ID_STD, i, CAN0_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
            // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
        }

        // 初始化CAN0模块的中断
        CAN_IntMask(CAN_ID_0, CAN_INT_ALL, MASK, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU); // 禁止CAN0的所有中断
                                                                                                      // 参数：CAN模块序号、中断代码、中断屏蔽码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--选中邮箱)
        CAN_IntClear(CAN_ID_0, CAN_INT_ALL, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU); // 清除CAN0 的所有中断标志位
                                                                                                 // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)

        /* CAN的错误计数寄存器，大于96小于等于127，产生主动错误；大于127，产生 被动错误，如果是发送状态，产生 BusOff；255后，计数归零。*/
        CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_BUS_OFF, CAN0_BUS_OFF_ISR); // 加载 BUS_OFF中断处理函数
        //CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_ERR, CAN0_ERR_ISR);         // 加载 错误中断处理函数。ErrTimer>127
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_TXW, CAN0_TXW_ISR);                //加载 发送报警中断处理函数。96 <ErrTimer<= 127
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_RXW, CAN0_RXW_ISR);                //加载 接收报警中断处理函数。96 <ErrTimer<= 127
        CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_BUS_OFF_DONE, CAN0_BusOffDone_ISR); // 加载 BusOff事件已经自动/软件恢复中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_ERR_FAST, CAN0_ERR_FAST_ISR);        //加载 CAN FD 时，在数据时间段上出现错误中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_SELF_WAKEUP, CAN0_SELF_WAKEUP_ISR);    //加载 CAN自己唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_RXFIFO_FRAME, CAN0_RXFIFO_FRAME_ISR);        //加载 RX FIFO frame 有效中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_RXFIFO_WARNING, CAN0_RXFIFO_WARNING_ISR);    //加载 RX FIFO 报警中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_RXFIFO_OVERFLOW, CAN0_RXFIFO_OVERFLOW_ISR);    //加载 RX FIFO 溢出中断处理函数
        //CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_HOST_MEM_ERR, CAN0_HOST_MEM_ERR_ISR); // 加载 被CPU发现的不可矫正错误中断处理函数
        //CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_CAN_MEM_ERR, CAN0_CAN_MEM_ERR_ISR);   // 加载 被CAN模块发现的不可矫正错误中断处理函数
        //CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_COR_MEM_ERR, CAN0_COR_MEM_ERR_ISR);   // 加载 可矫正错误中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_PN_WAKEUP_MATCH, CAN0_PN_WAKEUP_MATCH_ISR);    //加载 匹配唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_PN_WAKEUP_TIMEOUT, CAN0_PN_WAKEUP_TIMEOUT_ISR);//加载 超时唤醒中断处理函数
        //  CAN_InstallCallBackFunc(CAN_ID_0, CAN_INT_MB, CAN0_MB_ISR);                //加载 邮箱的发送、接收完成中断处理函数

        CAN05_InstallMbCallBackFunc(CAN_ID_0, CAN05_MB_INT_0TO15, CAN0_MB0TO15_ISR); // 加载邮箱0-15的中断处理函数
        CAN_MbIntMask(CAN_ID_0, 5, UNMASK);                                          // 使能邮箱5的中断
        CAN_MbIntMask(CAN_ID_0, 6, UNMASK);                                          // 使能邮箱6的中断
        CAN_MbIntMask(CAN_ID_0, 7, UNMASK);                                          // 使能邮箱7的中断
        CAN_MbIntMask(CAN_ID_0, 8, UNMASK);                                          // 使能邮箱8的中断
        CAN_MbIntMask(CAN_ID_0, 9, UNMASK);                                          // 使能邮箱9的中断
        CAN_MbIntMask(CAN_ID_0, 10, UNMASK);                                         // 使能邮箱10的中断
        CAN_MbIntMask(CAN_ID_0, 11, UNMASK);                                         // 使能邮箱11的中断
        CAN_MbIntMask(CAN_ID_0, 12, UNMASK);                                         // 使能邮箱12的中断
        CAN_MbIntMask(CAN_ID_0, 13, UNMASK);                                         // 使能邮箱13的中断
                                             // 参数：CAN模块序号、邮箱序号、中断屏蔽码

        CAN_IntMask(CAN_ID_0, CAN_INT_BUS_OFF, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能CAN0的 BUS_OFF 中断
        //CAN_IntMask(CAN_ID_0, CAN_INT_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);     // 使能错误中断。ErrTimer>127
        // CAN_IntMask(CAN_ID_0, CAN_INT_TXW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能发送报警中断。96 <ErrTimer<= 127
        // CAN_IntMask(CAN_ID_0, CAN_INT_RXW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能接收报警中断。96 <ErrTimer<= 127
        CAN_IntMask(CAN_ID_0, CAN_INT_BUS_OFF_DONE, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能BusOff事件已经自动/软件恢复中断
        // CAN_IntMask(CAN_ID_0, CAN_INT_ERR_FAST, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能CAN FD 时，在数据时间段上出现错误中断
        // CAN_IntMask(CAN_ID_0, CAN_INT_SELF_WAKEUP, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能CAN自己唤醒中断
        // CAN_IntMask(CAN_ID_0, CAN_INT_RXFIFO_FRAME, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能RX FIFO frame 有效中断
        // CAN_IntMask(CAN_ID_0, CAN_INT_RXFIFO_WARNING, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);//使能RX FIFO 报警中断
        // CAN_IntMask(CAN_ID_0, CAN_INT_RXFIFO_OVERFLOW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);//使能RX FIFO 溢出中断
        //CAN_IntMask(CAN_ID_0, CAN_INT_HOST_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能被CPU发现的不可矫正错误中断
        //CAN_IntMask(CAN_ID_0, CAN_INT_CAN_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);  // 使能被CAN模块发现的不可矫正错误中断
        //CAN_IntMask(CAN_ID_0, CAN_INT_COR_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);  // 使能可矫正错误中断
        // CAN_IntMask(CAN_ID_0, CAN_INT_PN_WAKEUP_MATCH, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能匹配唤醒中断
        // CAN_IntMask(CAN_ID_0, CAN_INT_PN_WAKEUP_TIMEOUT, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能超时唤醒中断
        CAN_IntMask(CAN_ID_0, CAN_INT_MB, UNMASK, 0x0000001FU, 0x00000000U, 0x00000000U, 0x00000000U); // 使能邮箱的发送、接收完成中断
                                                                                                       // 参数：CAN模块序号、中断代码、中断屏蔽码、MB0-31、MB32-63

        INT_SetPriority(CAN0_BusOff_IRQn, 0x1); // 设置 CAN0_BusOff_IRQn 的中断优先级，包含BUS_OFF_DONE。(高)0--15(低)
        INT_EnableIRQ(CAN0_BusOff_IRQn);        // 使能 CAN0_BusOff_IRQn 中断

        INT_SetPriority(CAN0_TxWarn_IRQn, 0x1); // 设置 CAN0_TxWarn_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_TxWarn_IRQn);       // 禁止 CAN0_TxWarn_IRQn 中断

        INT_SetPriority(CAN0_RxWarn_IRQn, 0x1); // 设置 CAN0_RxWarn_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_RxWarn_IRQn);       // 禁止 CAN0_RxWarn_IRQn 中断

        INT_SetPriority(CAN0_Err_IRQn, 0x1); // 设置 CAN0_Err_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_Err_IRQn);        // 使能 CAN0_Err_IRQn 中断

        INT_SetPriority(CAN0_ErrFd_IRQn, 0x1); // 设置 CAN0_ErrFd_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_ErrFd_IRQn);       // 禁止 CAN0_ErrFd_IRQn 中断

        INT_SetPriority(CAN0_PnWake_IRQn, 0x1); // 设置 CAN0_PnWake_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_PnWake_IRQn);       // 禁止 CAN0_PnWake_IRQn 中断

        INT_SetPriority(CAN0_SelfWakeup_IRQn, 0x1); // 设置 CAN0_SelfWakeup_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_SelfWakeup_IRQn);       // 禁止 CAN0_SelfWakeup_IRQn 中断

        INT_SetPriority(CAN0_Ecc_IRQn, 0x1); // 设置 CAN0_Ecc_IRQn 的中断优先级，包含三个 MEM_ERR。(高)0--15(低)
        INT_DisableIRQ(CAN0_Ecc_IRQn);        // 禁止 CAN0_Ecc_IRQn 中断

        INT_SetPriority(CAN0_Mb0To15_IRQn, 0x1); // 设置 CAN0_Mb0To15_IRQn 的中断优先级。(高)0--15(低)
        INT_EnableIRQ(CAN0_Mb0To15_IRQn);        // 使能 CAN0_Mb0To15_IRQn 的IRQ中断

        INT_SetPriority(CAN0_Mb16To31_IRQn, 0xF); // 设置 CAN0_Mb16To31_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_Mb16To31_IRQn);       // 禁止 CAN0_Mb16To31_IRQn 的IRQ中断

        INT_SetPriority(CAN0_Mb32To47_IRQn, 0xF); // 设置 CAN0_Mb32To47_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_Mb32To47_IRQn);       // 禁止 CAN0_Mb32To47_IRQn 中断

        INT_SetPriority(CAN0_Mb48To63_IRQn, 0xF); // 设置 CAN0_Mb48To63_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN0_Mb48To63_IRQn);       // 禁止 CAN0_Mb48To63_IRQn 中断

        // 初始化全局变量
        //CAN0_BusOffIntFlag = 0; // CAN0的BusOff中断进入标志

        // 使能CAN模块，使其进入工作状态
        CAN_Enable(CAN_ID_0);
        break;
    case 1:
        // 设置 CAN1 模块使用的端口
        PORT_PinmuxConfig(CANFD2_RX_PORT, CANFD2_RX_PIN, CANFD2_RX_MUX);        // 设置 PTA12 为CAN1_RX功能
        PORT_PinmuxConfig(CANFD2_TX_PORT, CANFD2_TX_PIN, CANFD2_TX_MUX);        // 设置 PTA13 为CAN1_TX功能
        PORT_PinmuxConfig(CAN1FD_STB_PORT, CAN1FD_STB_PIN, CAN1FD_STB_PIN_MUX); // 设置 PTA14 为GPIO功能。为 TJA1042 的 STB
        GPIO_SetPinDir(CAN1FD_STB_PORT, CAN1FD_STB_PIN, GPIO_OUTPUT);           // 设置 PTA14 为输出功能，用作TJA1042 的 STB
        GPIO_WritePinOutput(CAN1FD_STB_PORT, CAN1FD_STB_PIN, GPIO_HIGH);        // 设置 PTA14 输出高电平，STB 设为高电平，JA1042 为 Standby 状态

        // 初始化CAN1模块的时钟源
        SYSCTRL_DisableModule(SYSCTRL_CAN1);
        CLK_ModuleSrc(CLK_CAN1, CLK_SRC_PLL);   // 选择CAN模块的功能时钟源
        CLK_SetClkDivider(CLK_CAN1, CLK_DIV_6); // 设置CAN模块的时钟分频系数
        SYSCTRL_ResetModule(SYSCTRL_CAN1);      // 在系统控制模块中，复位CAN1模块
        SYSCTRL_EnableModule(SYSCTRL_CAN1);     // 在系统控制模块中，使能CAN1模块

        // 初始化CAN1
        CAN_Disable(CAN_ID_1);                               // 禁止CAN模块
        CAN_Init(CAN_ID_1, &g_Can1Config);                   // 初始化CAN模块
        CAN_SetRxMaskType(CAN_ID_1, CAN_RX_MASK_INDIVIDUAL); // 使用邮箱的独立屏蔽寄存器
        CAN_BusOffRecoveryScheme(CAN_ID_1, CAN_BUS_OFF_RECOV_MANUAL);    //使能BUS_OFF自动恢复功能。

        /* 初始化邮箱说明：MB0用于发送网络管理报文，MB1用于发送网络诊断报文，MB2-4用于发送常规报文。MB5-31用于接收报文，
            共有27个邮箱可以用于接收。建议：网络管理数据使用一个邮箱接收，诊断数据使用一个邮箱接收，对重要的报文，
            一个邮箱设置一个固定的ID，每个邮箱接收固定ID的报文。
        */
        // 初始化MB0-4，用于发送报文
        CAN_ConfigTxMb(CAN_ID_1, 0, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
        CAN_ConfigTxMb(CAN_ID_1, 1, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱1用作发送网络诊断报文
        CAN_ConfigTxMb(CAN_ID_1, 2, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱2用作发送常规报文
        CAN_ConfigTxMb(CAN_ID_1, 3, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱3用作发送常规报文
        CAN_ConfigTxMb(CAN_ID_1, 4, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱4用作发送常规报文
                                                                // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

        // 初始化MB5-13，用于接收报文
        for (i = 5; i < 14; i++)
        {
            CAN_MbReceive(CAN_ID_1, i, CAN_MSG_ID_STD, CAN1_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                                // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

            CAN_SetRxMbIndividualMask(CAN_ID_1, CAN_MSG_ID_STD, i, CAN1_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
            // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
        }

        // 初始化CAN0模块的中断
        CAN_IntMask(CAN_ID_1, CAN_INT_ALL, MASK, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU); // 禁止CAN0的所有中断
                                                                                                      // 参数：CAN模块序号、中断代码、中断屏蔽码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--选中邮箱)
        CAN_IntClear(CAN_ID_1, CAN_INT_ALL, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU); // 清除CAN0 的所有中断标志位
                                                                                                 // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)

        /* CAN的错误计数寄存器，大于96小于等于127，产生主动错误；大于127，产生 被动错误，如果是发送状态，产生 BusOff；255后，计数归零。*/
        CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_BUS_OFF, CAN1_BUS_OFF_ISR); // 加载 BUS_OFF中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_ERR, CAN1_ERR_ISR);         // 加载 错误中断处理函数。ErrTimer>127
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_TXW, CAN1_TXW_ISR);                //加载 发送报警中断处理函数。96 <ErrTimer<= 127
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_RXW, CAN1_RXW_ISR);                //加载 接收报警中断处理函数。96 <ErrTimer<= 127
        CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_BUS_OFF_DONE, CAN1_BusOffDone_ISR); // 加载 BusOff事件已经自动/软件恢复中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_ERR_FAST, CAN1_ERR_FAST_ISR);        //加载 CAN FD 时，在数据时间段上出现错误中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_SELF_WAKEUP, CAN1_SELF_WAKEUP_ISR);    //加载 CAN自己唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_RXFIFO_FRAME, CAN1_RXFIFO_FRAME_ISR);        //加载 RX FIFO frame 有效中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_RXFIFO_WARNING, CAN1_RXFIFO_WARNING_ISR);    //加载 RX FIFO 报警中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_RXFIFO_OVERFLOW, CAN1_RXFIFO_OVERFLOW_ISR);    //加载 RX FIFO 溢出中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_HOST_MEM_ERR, CAN1_HOST_MEM_ERR_ISR); // 加载 被CPU发现的不可矫正错误中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_CAN_MEM_ERR, CAN1_CAN_MEM_ERR_ISR);   // 加载 被CAN模块发现的不可矫正错误中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_COR_MEM_ERR, CAN1_COR_MEM_ERR_ISR);   // 加载 可矫正错误中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_PN_WAKEUP_MATCH, CAN1_PN_WAKEUP_MATCH_ISR);    //加载 匹配唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_PN_WAKEUP_TIMEOUT, CAN1_PN_WAKEUP_TIMEOUT_ISR);//加载 超时唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_1, CAN_INT_MB, CAN1_MB_ISR);                //加载 邮箱的发送、接收完成中断处理函数

        CAN05_InstallMbCallBackFunc(CAN_ID_1, CAN05_MB_INT_0TO15, CAN1_MB0TO15_ISR); // 加载邮箱0-15的中断处理函数
        CAN_MbIntMask(CAN_ID_1, 5, UNMASK);                                          // 使能邮箱5的中断
        CAN_MbIntMask(CAN_ID_1, 6, UNMASK);                                          // 使能邮箱6的中断
        CAN_MbIntMask(CAN_ID_1, 7, UNMASK);                                          // 使能邮箱7的中断
        CAN_MbIntMask(CAN_ID_1, 8, UNMASK);                                          // 使能邮箱8的中断
        CAN_MbIntMask(CAN_ID_1, 9, UNMASK);                                          // 使能邮箱9的中断
        CAN_MbIntMask(CAN_ID_1, 10, UNMASK);                                         // 使能邮箱10的中断
        CAN_MbIntMask(CAN_ID_1, 11, UNMASK);                                         // 使能邮箱11的中断
        CAN_MbIntMask(CAN_ID_1, 12, UNMASK);                                         // 使能邮箱12的中断
        CAN_MbIntMask(CAN_ID_1, 13, UNMASK);                                         // 使能邮箱13的中断
                                             // 参数：CAN模块序号、邮箱序号、中断屏蔽码

        CAN_IntMask(CAN_ID_1, CAN_INT_BUS_OFF, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能CAN1的 BUS_OFF 中断
        CAN_IntMask(CAN_ID_1, CAN_INT_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);     // 使能错误中断。ErrTimer>127
        // CAN_IntMask(CAN_ID_1, CAN_INT_TXW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能发送报警中断。96 <ErrTimer<= 127
        // CAN_IntMask(CAN_ID_1, CAN_INT_RXW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能接收报警中断。96 <ErrTimer<= 127
        CAN_IntMask(CAN_ID_1, CAN_INT_BUS_OFF_DONE, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能BusOff事件已经自动/软件恢复中断
        // CAN_IntMask(CAN_ID_1, CAN_INT_ERR_FAST, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能CAN FD 时，在数据时间段上出现错误中断
        // CAN_IntMask(CAN_ID_1, CAN_INT_SELF_WAKEUP, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能CAN自己唤醒中断
        // CAN_IntMask(CAN_ID_1, CAN_INT_RXFIFO_FRAME, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能RX FIFO frame 有效中断
        // CAN_IntMask(CAN_ID_1, CAN_INT_RXFIFO_WARNING, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);//使能RX FIFO 报警中断
        // CAN_IntMask(CAN_ID_1, CAN_INT_RXFIFO_OVERFLOW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);//使能RX FIFO 溢出中断
        CAN_IntMask(CAN_ID_1, CAN_INT_HOST_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能被CPU发现的不可矫正错误中断
        CAN_IntMask(CAN_ID_1, CAN_INT_CAN_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);  // 使能被CAN模块发现的不可矫正错误中断
        CAN_IntMask(CAN_ID_1, CAN_INT_COR_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);  // 使能可矫正错误中断
        // CAN_IntMask(CAN_ID_1, CAN_INT_PN_WAKEUP_MATCH, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能匹配唤醒中断
        // CAN_IntMask(CAN_ID_1, CAN_INT_PN_WAKEUP_TIMEOUT, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能超时唤醒中断
        // CAN_IntMask(CAN_ID_1, CAN1_MB_ISR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能邮箱的发送、接收完成中断
        // 参数：CAN模块序号、中断代码、中断屏蔽码、MB0-31、MB32-63

        INT_SetPriority(CAN1_BusOff_IRQn, 0x3); // 设置 CAN1_BusOff_IRQn 的中断优先级，包含BUS_OFF_DONE。(高)0--15(低)
        INT_EnableIRQ(CAN1_BusOff_IRQn);        // 使能 CAN1_BusOff_IRQn 中断

        INT_SetPriority(CAN1_TxWarn_IRQn, 0x3); // 设置 CAN1_TxWarn_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_TxWarn_IRQn);       // 禁止 CAN1_TxWarn_IRQn 中断

        INT_SetPriority(CAN1_RxWarn_IRQn, 0x3); // 设置 CAN1_RxWarn_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_RxWarn_IRQn);       // 禁止 CAN1_RxWarn_IRQn 中断

        INT_SetPriority(CAN1_Err_IRQn, 0x3); // 设置 CAN1_Err_IRQn 的中断优先级。(高)0--15(低)
        INT_EnableIRQ(CAN1_Err_IRQn);        // 使能 CAN1_Err_IRQn 中断

        INT_SetPriority(CAN1_ErrFd_IRQn, 0x3); // 设置 CAN1_ErrFd_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_ErrFd_IRQn);       // 禁止 CAN1_ErrFd_IRQn 中断

        INT_SetPriority(CAN1_PnWake_IRQn, 0x3); // 设置 CAN1_PnWake_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_PnWake_IRQn);       // 禁止 CAN1_PnWake_IRQn 中断

        INT_SetPriority(CAN1_SelfWakeup_IRQn, 0x3); // 设置 CAN1_SelfWakeup_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_SelfWakeup_IRQn);       // 禁止 CAN1_SelfWakeup_IRQn 中断

        INT_SetPriority(CAN1_Ecc_IRQn, 0x3); // 设置 CAN1_Ecc_IRQn 的中断优先级，包含三个 MEM_ERR。(高)0--15(低)
        INT_EnableIRQ(CAN1_Ecc_IRQn);        // 使能 CAN1_Ecc_IRQn 中断

        INT_SetPriority(CAN1_Mb0To15_IRQn, 0x3); // 设置 CAN1_Mb0To15_IRQn 的中断优先级。(高)0--15(低)
        INT_EnableIRQ(CAN1_Mb0To15_IRQn);        // 使能 CAN1_Mb0To15_IRQn 的IRQ中断

        INT_SetPriority(CAN1_Mb16To31_IRQn, 0x3); // 设置 CAN1_Mb16To31_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_Mb16To31_IRQn);       // 禁止 CAN1_Mb16To31_IRQn 的IRQ中断

        INT_SetPriority(CAN1_Mb32To47_IRQn, 0x3); // 设置 CAN1_Mb32To47_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_Mb32To47_IRQn);       // 禁止 CAN1_Mb32To47_IRQn 中断

        INT_SetPriority(CAN1_Mb48To63_IRQn, 0x3); // 设置 CAN1_Mb48To63_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN1_Mb48To63_IRQn);       // 禁止 CAN1_Mb48To63_IRQn 中断

        // 初始化全局变量
        //CAN1_BusOffIntFlag = 0; // CAN0的BusOff中断进入标志

        // 使能CAN模块，使其进入工作状态
        CAN_Enable(CAN_ID_1);
        TBOX_PRINT("CAN1 init successs!\r\n");
        break;
    case 2:
        // 设置 CAN2 模块使用的端口
        PORT_PinmuxConfig(CANFD3_RX_PORT, CANFD3_RX_PIN, CANFD3_RX_MUX);        // 设置 为CAN2_RX功能
        PORT_PinmuxConfig(CANFD3_TX_PORT, CANFD3_TX_PIN, CANFD3_TX_MUX);        // 设置 为CAN2_TX功能
        PORT_PinmuxConfig(CAN2FD_STB_PORT, CAN2FD_STB_PIN, CAN2FD_STB_PIN_MUX); // 设置 为GPIO功能。为 TJA1042 的 STB
        GPIO_SetPinDir(CAN2FD_STB_PORT, CAN2FD_STB_PIN, GPIO_OUTPUT);           // 设置 为输出功能，用作TJA1042 的 STB
        GPIO_WritePinOutput(CAN2FD_STB_PORT, CAN2FD_STB_PIN, GPIO_HIGH);        // 设置 输出高电平，STB 设为高电平，JA1042 为 Standby 状态

        // 初始化CAN2模块的时钟源
        SYSCTRL_DisableModule(SYSCTRL_CAN2);
        CLK_ModuleSrc(CLK_CAN2, CLK_SRC_PLL);   // 选择CAN模块的功能时钟源
        CLK_SetClkDivider(CLK_CAN2, CLK_DIV_6); // 设置CAN模块的时钟分频系数
        SYSCTRL_ResetModule(SYSCTRL_CAN2);      // 在系统控制模块中，复位CAN2模块
        SYSCTRL_EnableModule(SYSCTRL_CAN2);     // 在系统控制模块中，使能CAN2模块

        // 初始化CAN2
        CAN_Disable(CAN_ID_2);                               // 禁止CAN模块
        CAN_Init(CAN_ID_2, &g_Can2Config);                   // 初始化CAN2模块
        CAN_SetRxMaskType(CAN_ID_2, CAN_RX_MASK_INDIVIDUAL); // 使用邮箱的独立屏蔽寄存器
        // CAN_BusOffRecoveryScheme(CAN_ID_2, CAN_BUS_OFF_RECOV_AUTO);    //使能BUS_OFF自动恢复功能。

        /* 初始化邮箱说明：MB0用于发送网络管理报文，MB1用于发送网络诊断报文，MB2-4用于发送常规报文。MB5-31用于接收报文，
            共有27个邮箱可以用于接收。建议：网络管理数据使用一个邮箱接收，诊断数据使用一个邮箱接收，对重要的报文，
            一个邮箱设置一个固定的ID，每个邮箱接收固定ID的报文。
        */
        // 初始化MB0-4，用于发送报文
        CAN_ConfigTxMb(CAN_ID_2, 0, &g_Can2TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
        CAN_ConfigTxMb(CAN_ID_2, 1, &g_Can2TxRxInfo, 0x000, 1); // 设置邮箱1用作发送网络诊断报文
        CAN_ConfigTxMb(CAN_ID_2, 2, &g_Can2TxRxInfo, 0x000, 2); // 设置邮箱2用作发送常规报文
        CAN_ConfigTxMb(CAN_ID_2, 3, &g_Can2TxRxInfo, 0x000, 3); // 设置邮箱3用作发送常规报文
        CAN_ConfigTxMb(CAN_ID_2, 4, &g_Can2TxRxInfo, 0x000, 3); // 设置邮箱4用作发送常规报文
                                                                // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

        // 初始化MB5-13，用于接收报文
        for (i = 5; i < 14; i++)
        {
            CAN_MbReceive(CAN_ID_2, i, CAN_MSG_ID_STD, CAN2_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                                // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

            CAN_SetRxMbIndividualMask(CAN_ID_2, CAN_MSG_ID_STD, i, CAN2_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
            // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
        }

        // 初始化CAN2模块的中断
        CAN_IntMask(CAN_ID_2, CAN_INT_ALL, MASK, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU); // 禁止CAN2的所有中断
                                                                                                      // 参数：CAN模块序号、中断代码、中断屏蔽码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--选中邮箱)
        CAN_IntClear(CAN_ID_2, CAN_INT_ALL, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU); // 清除CAN2 的所有中断标志位
                                                                                                 // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)

        /* CAN的错误计数寄存器，大于96小于等于127，产生主动错误；大于127，产生 被动错误，如果是发送状态，产生 BusOff；255后，计数归零。*/
        CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_BUS_OFF, CAN2_BUS_OFF_ISR); // 加载 BUS_OFF中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_ERR, CAN2_ERR_ISR);         // 加载 错误中断处理函数。ErrTimer>127
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_TXW, CAN2_TXW_ISR);                //加载 发送报警中断处理函数。96 <ErrTimer<= 127
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_RXW, CAN2_RXW_ISR);                //加载 接收报警中断处理函数。96 <ErrTimer<= 127
        CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_BUS_OFF_DONE, CAN2_BusOffDone_ISR); // 加载 BusOff事件已经自动/软件恢复中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_ERR_FAST, CAN2_ERR_FAST_ISR);        //加载 CAN FD 时，在数据时间段上出现错误中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_SELF_WAKEUP, CAN2_SELF_WAKEUP_ISR);    //加载 CAN自己唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_RXFIFO_FRAME, CAN2_RXFIFO_FRAME_ISR);        //加载 RX FIFO frame 有效中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_RXFIFO_WARNING, CAN2_RXFIFO_WARNING_ISR);    //加载 RX FIFO 报警中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_RXFIFO_OVERFLOW, CAN2_RXFIFO_OVERFLOW_ISR);    //加载 RX FIFO 溢出中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_HOST_MEM_ERR, CAN2_HOST_MEM_ERR_ISR); // 加载 被CPU发现的不可矫正错误中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_CAN_MEM_ERR, CAN2_CAN_MEM_ERR_ISR);   // 加载 被CAN模块发现的不可矫正错误中断处理函数
        CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_COR_MEM_ERR, CAN2_COR_MEM_ERR_ISR);   // 加载 可矫正错误中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_PN_WAKEUP_MATCH, CAN2_PN_WAKEUP_MATCH_ISR);    //加载 匹配唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_PN_WAKEUP_TIMEOUT, CAN2_PN_WAKEUP_TIMEOUT_ISR);//加载 超时唤醒中断处理函数
        // CAN_InstallCallBackFunc(CAN_ID_2, CAN_INT_MB, CAN2_MB_ISR);                //加载 邮箱的发送、接收完成中断处理函数

        CAN05_InstallMbCallBackFunc(CAN_ID_2, CAN05_MB_INT_0TO15, CAN2_MB0TO15_ISR); // 加载邮箱0-15的中断处理函数
        CAN_MbIntMask(CAN_ID_2, 5, UNMASK);                                          // 使能邮箱5的中断
        CAN_MbIntMask(CAN_ID_2, 6, UNMASK);                                          // 使能邮箱6的中断
        CAN_MbIntMask(CAN_ID_2, 7, UNMASK);                                          // 使能邮箱7的中断
        CAN_MbIntMask(CAN_ID_2, 8, UNMASK);                                          // 使能邮箱8的中断
        CAN_MbIntMask(CAN_ID_2, 9, UNMASK);                                          // 使能邮箱9的中断
        CAN_MbIntMask(CAN_ID_2, 10, UNMASK);                                         // 使能邮箱10的中断
        CAN_MbIntMask(CAN_ID_2, 11, UNMASK);                                         // 使能邮箱11的中断
        CAN_MbIntMask(CAN_ID_2, 12, UNMASK);                                         // 使能邮箱12的中断
        CAN_MbIntMask(CAN_ID_2, 13, UNMASK);                                         // 使能邮箱13的中断
                                             // 参数：CAN模块序号、邮箱序号、中断屏蔽码

        CAN_IntMask(CAN_ID_2, CAN_INT_BUS_OFF, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能CAN2的 BUS_OFF 中断
        CAN_IntMask(CAN_ID_2, CAN_INT_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);     // 使能错误中断。ErrTimer>127
        // CAN_IntMask(CAN_ID_2, CAN_INT_TXW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能发送报警中断。96 <ErrTimer<= 127
        // CAN_IntMask(CAN_ID_2, CAN_INT_RXW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能接收报警中断。96 <ErrTimer<= 127
        CAN_IntMask(CAN_ID_2, CAN_INT_BUS_OFF_DONE, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能BusOff事件已经自动/软件恢复中断
        // CAN_IntMask(CAN_ID_2, CAN_INT_ERR_FAST, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能CAN FD 时，在数据时间段上出现错误中断
        // CAN_IntMask(CAN_ID_2, CAN_INT_SELF_WAKEUP, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能CAN自己唤醒中断
        // CAN_IntMask(CAN_ID_2, CAN_INT_RXFIFO_FRAME, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能RX FIFO frame 有效中断
        // CAN_IntMask(CAN_ID_2, CAN_INT_RXFIFO_WARNING, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);//使能RX FIFO 报警中断
        // CAN_IntMask(CAN_ID_2, CAN_INT_RXFIFO_OVERFLOW, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);//使能RX FIFO 溢出中断
        CAN_IntMask(CAN_ID_2, CAN_INT_HOST_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 使能被CPU发现的不可矫正错误中断
        CAN_IntMask(CAN_ID_2, CAN_INT_CAN_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);  // 使能被CAN模块发现的不可矫正错误中断
        CAN_IntMask(CAN_ID_2, CAN_INT_COR_MEM_ERR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);  // 使能可矫正错误中断
        // CAN_IntMask(CAN_ID_2, CAN_INT_PN_WAKEUP_MATCH, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能匹配唤醒中断
        // CAN_IntMask(CAN_ID_2, CAN_INT_PN_WAKEUP_TIMEOUT, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能超时唤醒中断
        // CAN_IntMask(CAN_ID_2, CAN2_MB_ISR, UNMASK, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U);    //使能邮箱的发送、接收完成中断
        // 参数：CAN模块序号、中断代码、中断屏蔽码、MB0-31、MB32-63

        INT_SetPriority(CAN2_BusOff_IRQn, 0x1); // 设置 CAN2_BusOff_IRQn 的中断优先级，包含BUS_OFF_DONE。(高)0--15(低)
        INT_EnableIRQ(CAN2_BusOff_IRQn);        // 使能 CAN2_BusOff_IRQn 中断

        INT_SetPriority(CAN2_TxWarn_IRQn, 0x1); // 设置 CAN2_TxWarn_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_TxWarn_IRQn);       // 禁止 CAN2_TxWarn_IRQn 中断

        INT_SetPriority(CAN2_RxWarn_IRQn, 0x1); // 设置 CAN2_RxWarn_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_RxWarn_IRQn);       // 禁止 CAN2_RxWarn_IRQn 中断

        INT_SetPriority(CAN2_Err_IRQn, 0x1); // 设置 CAN2_Err_IRQn 的中断优先级。(高)0--15(低)
        INT_EnableIRQ(CAN2_Err_IRQn);        // 使能 CAN2_Err_IRQn 中断

        INT_SetPriority(CAN2_ErrFd_IRQn, 0x1); // 设置 CAN2_ErrFd_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_ErrFd_IRQn);       // 禁止 CAN2_ErrFd_IRQn 中断

        INT_SetPriority(CAN2_PnWake_IRQn, 0x1); // 设置 CAN2_PnWake_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_PnWake_IRQn);       // 禁止 CAN2_PnWake_IRQn 中断

        INT_SetPriority(CAN2_SelfWakeup_IRQn, 0x1); // 设置 CAN2_SelfWakeup_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_SelfWakeup_IRQn);       // 禁止 CAN2_SelfWakeup_IRQn 中断

        INT_SetPriority(CAN2_Ecc_IRQn, 0x1); // 设置 CAN2_Ecc_IRQn 的中断优先级，包含三个 MEM_ERR。(高)0--15(低)
        INT_EnableIRQ(CAN2_Ecc_IRQn);        // 使能 CAN2_Ecc_IRQn 中断

        INT_SetPriority(CAN2_Mb0To15_IRQn, 0x1); // 设置 CAN2_Mb0To15_IRQn 的中断优先级。(高)0--15(低)
        INT_EnableIRQ(CAN2_Mb0To15_IRQn);        // 使能 CAN2_Mb0To15_IRQn 的IRQ中断

        INT_SetPriority(CAN2_Mb16To31_IRQn, 0xF); // 设置 CAN2_Mb16To31_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_Mb16To31_IRQn);       // 禁止 CAN2_Mb16To31_IRQn 的IRQ中断

        INT_SetPriority(CAN2_Mb32To47_IRQn, 0xF); // 设置 CAN2_Mb32To47_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_Mb32To47_IRQn);       // 禁止 CAN2_Mb32To47_IRQn 中断

        INT_SetPriority(CAN2_Mb48To63_IRQn, 0xF); // 设置 CAN2_Mb48To63_IRQn 的中断优先级。(高)0--15(低)
        INT_DisableIRQ(CAN2_Mb48To63_IRQn);       // 禁止 CAN2_Mb48To63_IRQn 中断

        // 使能CAN模块，使其进入工作状态
        CAN_Enable(CAN_ID_2);
        break;
    default:
        break;
    }
}

/*****************************************************************************
 * Function:        CAN0_BUS_OFF_ISR
 * Description:     CAN0 bus-off interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_BUS_OFF interrupt flag and sets CAN0_BusOffIntFlag
 ****************************************************************************/
void CAN0_BUS_OFF_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_BUS_OFF, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF中断标志位
    CAN0_BusOffIntFlag = 1;                                                                      // CAN0 的BusOff中断进入标志
    // CAN_RecoverFromBusOffManually(CAN_ID_0);    //手动从 CAN BusOff 状态恢复到正常状态
}

/*****************************************************************************
 * Function:        CAN1_BUS_OFF_ISR
 * Description:     CAN1 bus-off interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_BUS_OFF interrupt flag and sets CAN1_BusOffIntFlag
 ****************************************************************************/
void CAN1_BUS_OFF_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_BUS_OFF, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF中断标志位
    CAN1_BusOffIntFlag = 1;                                                                      // CAN1 的BusOff中断进入标志
}

/*****************************************************************************
 * Function:        CAN2_BUS_OFF_ISR
 * Description:     CAN2 bus-off interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_BUS_OFF interrupt flag
 ****************************************************************************/
void CAN2_BUS_OFF_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_BUS_OFF, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF中断标志位
}

/*****************************************************************************
 * Function:        CAN0_ERR_ISR
 * Description:     CAN0 error interrupt service routine (Error Passive), ErrTimer > 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          In some applications, error passive can be treated as bus-off
 ****************************************************************************/
void CAN0_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN 错误中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)

    // CAN0_BusOffIntFlag = 1;    //CAN0 的BusOff中断进入标志。
}

/*****************************************************************************
 * Function:        CAN1_ERR_ISR
 * Description:     CAN1 error interrupt service routine (Error Passive), ErrTimer > 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_ERR interrupt flag
 ****************************************************************************/
void CAN1_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN 错误中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN2_ERR_ISR
 * Description:     CAN2 error interrupt service routine (Error Passive), ErrTimer > 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_ERR interrupt flag
 ****************************************************************************/
void CAN2_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN 错误中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN0_TXW_ISR
 * Description:     CAN0 transmit warning interrupt service routine, 96 < ErrTimer <= 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_TXW interrupt flag
 ****************************************************************************/
void CAN0_TXW_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_TXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的发送报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN1_TXW_ISR
 * Description:     CAN1 transmit warning interrupt service routine, 96 < ErrTimer <= 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_TXW interrupt flag
 ****************************************************************************/
void CAN1_TXW_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_TXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的发送报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN2_TXW_ISR
 * Description:     CAN2 transmit warning interrupt service routine, 96 < ErrTimer <= 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_TXW interrupt flag
 ****************************************************************************/
void CAN2_TXW_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_TXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的发送报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN0_RXW_ISR
 * Description:     CAN0 receive warning interrupt service routine, 96 < ErrTimer <= 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_RXW interrupt flag
 ****************************************************************************/
void CAN0_RXW_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_RXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的接收报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN1_RXW_ISR
 * Description:     CAN1 receive warning interrupt service routine, 96 < ErrTimer <= 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_RXW interrupt flag
 ****************************************************************************/
void CAN1_RXW_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_RXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的接收报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN2_RXW_ISR
 * Description:     CAN2 receive warning interrupt service routine, 96 < ErrTimer <= 127
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_RXW interrupt flag
 ****************************************************************************/
void CAN2_RXW_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_RXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的接收报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * Function:        CAN0_BusOffDone_ISR
 * Description:     CAN0 bus-off recovery done interrupt service routine (auto/software recovery)
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_BUS_OFF_DONE interrupt flag and clears CAN0_BusOffIntFlag
 ****************************************************************************/
void CAN0_BusOffDone_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_BUS_OFF_DONE, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF_DONE中断标志位
                                                                                                      // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
    CAN0_BusOffIntFlag = 0; // CAN0 的BusOff中断进入标志
}

/*****************************************************************************
 * Function:        CAN1_BusOffDone_ISR
 * Description:     CAN1 bus-off recovery done interrupt service routine (auto/software recovery)
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_BUS_OFF_DONE interrupt flag
 ****************************************************************************/
void CAN1_BusOffDone_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_BUS_OFF_DONE, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF_DONE中断标志位
    //CAN1_BusOffIntFlag = 0;                                                                           // CAN0 的BusOff中断进入标志
}

/*****************************************************************************
 * Function:        CAN2_BusOffDone_ISR
 * Description:     CAN2 bus-off recovery done interrupt service routine (auto/software recovery)
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_BUS_OFF_DONE interrupt flag
 ****************************************************************************/
void CAN2_BusOffDone_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_BUS_OFF_DONE, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF_DONE中断标志位
}

/*****************************************************************************
 * Function:        CAN0_ERR_FAST_ISR
 * Description:     CAN0 CAN FD fast error interrupt service routine (data phase error)
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_ERR_FAST interrupt flag
 ****************************************************************************/
void CAN0_ERR_FAST_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_ERR_FAST, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN FD 时，在数据时间段上出现错误中断标志位
}

/*****************************************************************************
 * Function:        CAN1_ERR_FAST_ISR
 * Description:     CAN1 CAN FD fast error interrupt service routine (data phase error)
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_ERR_FAST interrupt flag
 ****************************************************************************/
void CAN1_ERR_FAST_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_ERR_FAST, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN FD 时，在数据时间段上出现错误中断标志位
}

/*****************************************************************************
 * Function:        CAN2_ERR_FAST_ISR
 * Description:     CAN2 CAN FD fast error interrupt service routine (data phase error)
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_ERR_FAST interrupt flag
 ****************************************************************************/
void CAN2_ERR_FAST_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_ERR_FAST, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN FD 时，在数据时间段上出现错误中断标志位
}

/*****************************************************************************
 * Function:        CAN0_HOST_MEM_ERR_ISR
 * Description:     CAN0 host memory uncorrectable error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_HOST_MEM_ERR interrupt flag, clears MB0-13 and re-initializes MB configuration
 ****************************************************************************/
void CAN0_HOST_MEM_ERR_ISR(void)
{
    unsigned int i;

    CAN_IntClear(CAN_ID_0, CAN_INT_HOST_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除被CPU发现的不可矫正错误中断标志位

    // 清空邮箱中的数据
    for (i = 0; i < 14; i++)
    {
        CAN0RW->CAN_MB[i].CS = 0x00000000;
        CAN0RW->CAN_MB[i].ID = 0x00000000;
        CAN0RW->CAN_MB[i].DATA03 = 0x00000000;
        CAN0RW->CAN_MB[i].DATA47 = 0x00000000;
    }

    // 重新初始化邮箱

    // 初始化MB0-4，用于发送报文
    CAN_ConfigTxMb(CAN_ID_0, 0, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
    CAN_ConfigTxMb(CAN_ID_0, 1, &g_Can0TxRxInfo, 0x000, 1); // 设置邮箱1用作发送网络诊断报文
    CAN_ConfigTxMb(CAN_ID_0, 2, &g_Can0TxRxInfo, 0x000, 2); // 设置邮箱2用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_0, 3, &g_Can0TxRxInfo, 0x000, 3); // 设置邮箱3用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_0, 4, &g_Can0TxRxInfo, 0x000, 3); // 设置邮箱4用作发送常规报文
                                                            // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

    // 初始化MB5-13，用于接收报文
    for (i = 5; i < 14; i++)
    {
        CAN_MbReceive(CAN_ID_0, i, CAN_MSG_ID_STD, CAN0_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                            // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

        CAN_SetRxMbIndividualMask(CAN_ID_0, CAN_MSG_ID_STD, i, CAN0_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
        // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
    }
}

/*****************************************************************************
 * Function:        CAN1_HOST_MEM_ERR_ISR
 * Description:     CAN1 host memory uncorrectable error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_HOST_MEM_ERR interrupt flag, clears MB0-13 and re-initializes MB configuration
 ****************************************************************************/
void CAN1_HOST_MEM_ERR_ISR(void)
{
    unsigned int i;

    CAN_IntClear(CAN_ID_1, CAN_INT_HOST_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除被CPU发现的不可矫正错误中断标志位

    // 清空邮箱中的数据
    for (i = 0; i < 14; i++)
    {
        CAN1RW->CAN_MB[i].CS = 0x00000000;
        CAN1RW->CAN_MB[i].ID = 0x00000000;
        CAN1RW->CAN_MB[i].DATA03 = 0x00000000;
        CAN1RW->CAN_MB[i].DATA47 = 0x00000000;
    }

    // 重新初始化邮箱

    // 初始化MB0-4，用于发送报文
    CAN_ConfigTxMb(CAN_ID_1, 0, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
    CAN_ConfigTxMb(CAN_ID_1, 1, &g_Can1TxRxInfo, 0x000, 1); // 设置邮箱1用作发送网络诊断报文
    CAN_ConfigTxMb(CAN_ID_1, 2, &g_Can1TxRxInfo, 0x000, 2); // 设置邮箱2用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_1, 3, &g_Can1TxRxInfo, 0x000, 3); // 设置邮箱3用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_1, 4, &g_Can1TxRxInfo, 0x000, 3); // 设置邮箱4用作发送常规报文
                                                            // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

    // 初始化MB5-13，用于接收报文
    for (i = 5; i < 14; i++)
    {
        CAN_MbReceive(CAN_ID_1, i, CAN_MSG_ID_STD, CAN1_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                            // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

        CAN_SetRxMbIndividualMask(CAN_ID_1, CAN_MSG_ID_STD, i, CAN1_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
        // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
    }
}

void CAN2_HOST_MEM_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_HOST_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除被CPU发现的不可矫正错误中断标志位
}

/*****************************************************************************
 * Function:        CAN0_CAN_MEM_ERR_ISR
 * Description:     CAN0 CAN memory uncorrectable error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_CAN_MEM_ERR interrupt flag, clears MB0-13 and re-initializes MB configuration
 ****************************************************************************/
void CAN0_CAN_MEM_ERR_ISR(void)
{
    unsigned int i;

    CAN_IntClear(CAN_ID_0, CAN_INT_CAN_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除被CAN模块发现的不可矫正错误中断志位

    // 清空邮箱中的数据
    for (i = 0; i < 14; i++)
    {
        CAN0RW->CAN_MB[i].CS = 0x00000000;
        CAN0RW->CAN_MB[i].ID = 0x00000000;
        CAN0RW->CAN_MB[i].DATA03 = 0x00000000;
        CAN0RW->CAN_MB[i].DATA47 = 0x00000000;
    }

    // 重新初始化邮箱

    // 初始化MB0-4，用于发送报文
    CAN_ConfigTxMb(CAN_ID_0, 0, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
    CAN_ConfigTxMb(CAN_ID_0, 1, &g_Can0TxRxInfo, 0x000, 1); // 设置邮箱1用作发送网络诊断报文
    CAN_ConfigTxMb(CAN_ID_0, 2, &g_Can0TxRxInfo, 0x000, 2); // 设置邮箱2用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_0, 3, &g_Can0TxRxInfo, 0x000, 3); // 设置邮箱3用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_0, 4, &g_Can0TxRxInfo, 0x000, 3); // 设置邮箱4用作发送常规报文
                                                            // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

    // 初始化MB5-13，用于接收报文
    for (i = 5; i < 14; i++)
    {
        CAN_MbReceive(CAN_ID_0, i, CAN_MSG_ID_STD, CAN0_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                            // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

        CAN_SetRxMbIndividualMask(CAN_ID_0, CAN_MSG_ID_STD, i, CAN0_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
        // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
    }
}

/*****************************************************************************
 * Function:        CAN1_CAN_MEM_ERR_ISR
 * Description:     CAN1 CAN memory uncorrectable error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_CAN_MEM_ERR interrupt flag, clears MB0-13 and re-initializes MB configuration
 ****************************************************************************/
void CAN1_CAN_MEM_ERR_ISR(void)
{
    unsigned int i;

    CAN_IntClear(CAN_ID_1, CAN_INT_CAN_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除被CAN模块发现的不可矫正错误中断志位

    // 清空邮箱中的数据
    for (i = 0; i < 14; i++)
    {
        CAN1RW->CAN_MB[i].CS = 0x00000000;
        CAN1RW->CAN_MB[i].ID = 0x00000000;
        CAN1RW->CAN_MB[i].DATA03 = 0x00000000;
        CAN1RW->CAN_MB[i].DATA47 = 0x00000000;
    }

    // 重新初始化邮箱

    // 初始化MB0-4，用于发送报文
    CAN_ConfigTxMb(CAN_ID_1, 0, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
    CAN_ConfigTxMb(CAN_ID_1, 1, &g_Can1TxRxInfo, 0x000, 1); // 设置邮箱1用作发送网络诊断报文
    CAN_ConfigTxMb(CAN_ID_1, 2, &g_Can1TxRxInfo, 0x000, 2); // 设置邮箱2用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_1, 3, &g_Can1TxRxInfo, 0x000, 3); // 设置邮箱3用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_1, 4, &g_Can1TxRxInfo, 0x000, 3); // 设置邮箱4用作发送常规报文
                                                            // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

    // 初始化MB5-13，用于接收报文
    for (i = 5; i < 14; i++)
    {
        CAN_MbReceive(CAN_ID_1, i, CAN_MSG_ID_STD, CAN1_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                            // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

        CAN_SetRxMbIndividualMask(CAN_ID_1, CAN_MSG_ID_STD, i, CAN1_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
        // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
    }
}

/*****************************************************************************
 * Function:        CAN2_CAN_MEM_ERR_ISR
 * Description:     CAN2 CAN memory uncorrectable error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_CAN_MEM_ERR interrupt flag
 ****************************************************************************/
void CAN2_CAN_MEM_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_CAN_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除被CAN模块发现的不可矫正错误中断志位
}

/*****************************************************************************
 * Function:        CAN0_COR_MEM_ERR_ISR
 * Description:     CAN0 correctable memory error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_COR_MEM_ERR interrupt flag, clears MB0-13 and re-initializes MB configuration
 ****************************************************************************/
void CAN0_COR_MEM_ERR_ISR(void)
{
    unsigned int i;

    CAN_IntClear(CAN_ID_0, CAN_INT_COR_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的可矫正错误中断标志位

    // 清空邮箱中的数据
    for (i = 0; i < 14; i++)
    {
        CAN0RW->CAN_MB[i].CS = 0x00000000;
        CAN0RW->CAN_MB[i].ID = 0x00000000;
        CAN0RW->CAN_MB[i].DATA03 = 0x00000000;
        CAN0RW->CAN_MB[i].DATA47 = 0x00000000;
    }

    // 重新初始化邮箱

    // 初始化MB0-4，用于发送报文
    CAN_ConfigTxMb(CAN_ID_0, 0, &g_Can0TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
    CAN_ConfigTxMb(CAN_ID_0, 1, &g_Can0TxRxInfo, 0x000, 1); // 设置邮箱1用作发送网络诊断报文
    CAN_ConfigTxMb(CAN_ID_0, 2, &g_Can0TxRxInfo, 0x000, 2); // 设置邮箱2用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_0, 3, &g_Can0TxRxInfo, 0x000, 3); // 设置邮箱3用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_0, 4, &g_Can0TxRxInfo, 0x000, 3); // 设置邮箱4用作发送常规报文
                                                            // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

    // 初始化MB5-13，用于接收报文
    for (i = 5; i < 14; i++)
    {
        CAN_MbReceive(CAN_ID_0, i, CAN_MSG_ID_STD, CAN0_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                            // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

        CAN_SetRxMbIndividualMask(CAN_ID_0, CAN_MSG_ID_STD, i, CAN0_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
        // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
    }
}

/*****************************************************************************
 * Function:        CAN1_COR_MEM_ERR_ISR
 * Description:     CAN1 correctable memory error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_COR_MEM_ERR interrupt flag, clears MB0-13 and re-initializes MB configuration
 ****************************************************************************/
void CAN1_COR_MEM_ERR_ISR(void)
{
    unsigned int i;

    CAN_IntClear(CAN_ID_1, CAN_INT_COR_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的可矫正错误中断标志位

    // 清空邮箱中的数据
    for (i = 0; i < 14; i++)
    {
        CAN1RW->CAN_MB[i].CS = 0x00000000;
        CAN1RW->CAN_MB[i].ID = 0x00000000;
        CAN1RW->CAN_MB[i].DATA03 = 0x00000000;
        CAN1RW->CAN_MB[i].DATA47 = 0x00000000;
    }

    // 重新初始化邮箱

    // 初始化MB0-4，用于发送报文
    CAN_ConfigTxMb(CAN_ID_1, 0, &g_Can1TxRxInfo, 0x000, 0); // 设置邮箱0用作发送网络管理报文
    CAN_ConfigTxMb(CAN_ID_1, 1, &g_Can1TxRxInfo, 0x000, 1); // 设置邮箱1用作发送网络诊断报文
    CAN_ConfigTxMb(CAN_ID_1, 2, &g_Can1TxRxInfo, 0x000, 2); // 设置邮箱2用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_1, 3, &g_Can1TxRxInfo, 0x000, 3); // 设置邮箱3用作发送常规报文
    CAN_ConfigTxMb(CAN_ID_1, 4, &g_Can1TxRxInfo, 0x000, 3); // 设置邮箱4用作发送常规报文
                                                            // 参数：CAN模块序号、邮箱序号、附加信息、报文的ID、本地发送优先级

    // 初始化MB5-13，用于接收报文
    for (i = 5; i < 14; i++)
    {
        CAN_MbReceive(CAN_ID_1, i, CAN_MSG_ID_STD, CAN1_MB_IDConfig[i][0]); // 设置接收邮箱5的滤波信息
                                                                            // 参数：CAN模块序号、邮箱序号、附加信息、滤波 ID

        CAN_SetRxMbIndividualMask(CAN_ID_1, CAN_MSG_ID_STD, i, CAN1_MB_IDConfig[i][1]); // 设置邮箱的 ID 屏蔽寄存器。
        // 参数：CAN模块序号、帧格式、邮箱序号、ID屏蔽码(1--检查滤波ID的对应位，0--不检查xxx)
    }
}

/*****************************************************************************
 * Function:        CAN2_COR_MEM_ERR_ISR
 * Description:     CAN2 correctable memory error interrupt service routine
 * Input:           None
 * Output:          None
 * Return:          None
 * Others:          Clears CAN_INT_COR_MEM_ERR interrupt flag
 ****************************************************************************/
void CAN2_COR_MEM_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_COR_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的可矫正错误中断标志位
}

/*****************************************************************************
 * Function:        CAN0_MB0TO15_ISR
 * Description:     CAN0 mailbox 0-15 interrupt service routine
 * Input:           mbIdx - Mailbox index that triggered the interrupt
 * Output:          None
 * Return:          None
 * Others:          1) For Tx MB (0-4), clears busErrorAppDiableFlag
 *                  2) For Rx MB (5-15), reads message, converts to stc_canfd_msg_t and calls CanRxInterruptProcessMsg()
 ****************************************************************************/
void CAN0_MB0TO15_ISR(uint32_t mbIdx)
{
    CAN_MsgBuf_t can0RxBuf;

    if (mbIdx <= 4)
    {
        g_driverCanManage[0].busErrorAppDiableFlag = 0x00;
    }

    if (mbIdx > 4)
    {
        stc_canfd_msg_t stcCanFDmsg = {0};

        CAN_GetMsgBuff(CAN_ID_0, mbIdx, &can0RxBuf);        // 读取指定邮箱(MB)中的数据，放入 can0RxBuf 中,参数：CAN模块序号、邮箱序号、存储数据的数组

        if (g_canTestModeFlag[0])
        {
            // cy_stc_canfd_msg_t canMsg;
            // memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
            // canMsg.dataConfig.data[1] += 1;
            // Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD1_TYPE,0,&canMsg);
            return;
        }

        stcCanFDmsg.canFDFormatBrs = (can0RxBuf.cs >> 30) & 0x01;
        stcCanFDmsg.canFDFormat = (can0RxBuf.cs >> 3) & 0x01;
        stcCanFDmsg.extended = (can0RxBuf.cs >> 21) & 0x01;
        stcCanFDmsg.canId = can0RxBuf.msgId;
        memcpy(&stcCanFDmsg.data, can0RxBuf.data, sizeof(can0RxBuf.data));

        stcCanFDmsg.dlc = can0RxBuf.dataLen;
        CanRxInterruptProcessMsg(0, &stcCanFDmsg, 0);
    }
}

/*****************************************************************************
 * Function:        CAN1_MB0TO15_ISR
 * Description:     CAN1 mailbox 0-15 interrupt service routine
 * Input:           mbIdx - Mailbox index that triggered the interrupt
 * Output:          None
 * Return:          None
 * Others:          For Rx MB (5-15), reads message, sets NM receive flag and calls CanRxInterruptProcessMsg()
 ****************************************************************************/
void CAN1_MB0TO15_ISR(uint32_t mbIdx)
{
    CAN_MsgBuf_t can1RxBuf;
    if (mbIdx <= 4)
    {
        //g_driverCanManage[1].busErrorAppDiableFlag = 0x00;
    }
    if (mbIdx > 4)
    {
        stc_canfd_msg_t stcCanFDmsg = {0};
        CAN_GetMsgBuff(CAN_ID_1, mbIdx, &can1RxBuf);    // 读取指定邮箱(MB)中的数据，放入 can1RxBuf 中 ,参数：CAN模块序号、邮箱序号、存储数据的数组

        if (g_canTestModeFlag[1])
        {
            // cy_stc_canfd_msg_t canMsg;
            // memcpy(&canMsg,pstcCanFDmsg,sizeof(canMsg));
            // canMsg.dataConfig.data[1] += 1;
            // Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD1_TYPE,0,&canMsg);
            return;
        }

        stcCanFDmsg.canFDFormatBrs = (can1RxBuf.cs >> 30) & 0x01;
        stcCanFDmsg.canFDFormat = (can1RxBuf.cs >> 3) & 0x01;
        stcCanFDmsg.extended = (can1RxBuf.cs >> 21) & 0x01;
        stcCanFDmsg.canId = can1RxBuf.msgId;
        memcpy(&stcCanFDmsg.data, can1RxBuf.data, sizeof(can1RxBuf.data));
        CanHalSetReceiveCanNmFlag(can1RxBuf.msgId);
        stcCanFDmsg.dlc = can1RxBuf.dataLen;
        CanRxInterruptProcessMsg(1, &stcCanFDmsg, 0);
    }
}

/*****************************************************************************
 * Function:        CAN2_MB0TO15_ISR
 * Description:     CAN2 mailbox 0-15 interrupt service routine
 * Input:           mbIdx - Mailbox index that triggered the interrupt
 * Output:          None
 * Return:          None
 * Others:          Reads message, converts to stc_canfd_msg_t and calls CanRxInterruptProcessMsg()
 ****************************************************************************/
void CAN2_MB0TO15_ISR(uint32_t mbIdx)
{
    CAN_MsgBuf_t can2RxBuf;                         // 定义CAN2接收使用的缓存变量
    stc_canfd_msg_t stcCanFDmsg = {0};

    CAN_GetMsgBuff(CAN_ID_2, mbIdx, &can2RxBuf);    // 读取指定邮箱(MB)中的数据，放入 can2RxBuf 中 参数：CAN模块序号、邮箱序号、存储数据的数组
    // CAN2_RxIntFlag = 1;                          //CAN2接收一帧数据完成标志

    stcCanFDmsg.canFDFormatBrs = (can2RxBuf.cs >> 30) & 0x01;
    stcCanFDmsg.canFDFormat = (can2RxBuf.cs >> 3) & 0x01;
    stcCanFDmsg.extended = (can2RxBuf.cs >> 21) & 0x01;
    stcCanFDmsg.canId = can2RxBuf.msgId;
    memcpy(&stcCanFDmsg.data, can2RxBuf.data, sizeof(can2RxBuf.data));

    stcCanFDmsg.dlc = can2RxBuf.dataLen;
    CanRxInterruptProcessMsg(2, &stcCanFDmsg, 0);
}

/*****************************************************************************
 * Function:        CAN0_SendNM
 * Description:     Send one NM (Network Management) message on CAN0 using MB0
 * Input:           msg_id - CAN message identifier
 *                  dataP  - Pointer to payload data
 * Output:          None
 * Return:          SUCC - Message transferred to TX mailbox successfully
 *                  ERR  - Invalid message or transmit failed
 *                  BUSY - TX mailbox full, transmit failed
 * Others:          1) Arbitration selects a transmit mailbox (arbitration winner) when entering arbitration window
 *                  2) Recommended to use transmit mode with repetition when required
 *                  3) At 500 kbps, one normal CAN frame takes about 0.256 ms on the bus (estimated)
 ****************************************************************************/
ResultStatus_t CAN0_SendNM(unsigned int msg_id, unsigned char *dataP)
{
    ResultStatus_t can0_Ret; // 定义CAN0 发送函数的返回变量
    // 发送 CAN 报文
    can0_Ret = CAN_Send(CAN_ID_0, 0, &g_Can0TxRxInfo, msg_id, dataP); // 优先使用MB2发送报文
                                                                      // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级

    return can0_Ret;
}

ResultStatus_t CAN1_SendNM(unsigned int msg_id, unsigned char *dataP)
{
    ResultStatus_t can1_Ret; // 定义CAN1 发送函数的返回变量
    // 发送 CAN 报文
    can1_Ret = CAN_Send(CAN_ID_1, 0, &g_Can1TxRxInfo, msg_id, dataP); // 优先使用MB2发送报文
                                                                      // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级

    return can1_Ret;
}

ResultStatus_t CAN2_SendNM(unsigned int msg_id, unsigned char *dataP)
{
    ResultStatus_t can2_Ret; // 定义CAN2 发送函数的返回变量
    // 发送 CAN 报文
    can2_Ret = CAN_Send(CAN_ID_2, 0, &g_Can2TxRxInfo, msg_id, dataP); // 优先使用MB2发送报文
                                                                      // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级

    return can2_Ret;
}

/*****************************************************************************
 * Function:        CAN0_SendDiag
 * Description:     Send one diagnostic message on CAN0 using MB1
 * Input:           msg_id - CAN message identifier
 *                  dataP  - Pointer to payload data
 * Output:          None
 * Return:          SUCC - Message transferred to TX mailbox successfully
 *                  ERR  - Invalid message or transmit failed
 *                  BUSY - TX mailbox full, transmit failed
 * Others:          Uses CAN_Send() with mailbox 1
 ****************************************************************************/
ResultStatus_t CAN0_SendDiag(unsigned int msg_id, unsigned char *dataP)
{
    ResultStatus_t can0_Ret; // 定义CAN0 发送函数的返回变量
    // 发送 CAN 报文
    can0_Ret = CAN_Send(CAN_ID_0, 1, &g_Can0TxRxInfo, msg_id, dataP); // 优先使用MB2发送报文
                                                                      // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级

    return can0_Ret;
}

/*****************************************************************************
 * Function:        CAN0_SendApp
 * Description:     Send one application message on CAN0 using MB2/MB3/MB4
 * Input:           msg_id - CAN message identifier
 *                  dataP  - Pointer to payload data
 * Output:          None
 * Return:          SUCC - Message transferred to TX mailbox successfully
 *                  ERR  - Invalid message or transmit failed
 *                  BUSY - All TX mailboxes (MB2/MB3/MB4) are busy
 * Others:          Tries MB2 first, then falls back to MB3 and MB4 if BUSY
 ****************************************************************************/
ResultStatus_t CAN0_SendApp(unsigned int msg_id, unsigned char *dataP)
{
    ResultStatus_t can0_Ret; // 定义CAN0 发送函数的返回变量
    // 发送 CAN 报文
    can0_Ret = CAN_Send(CAN_ID_0, 2, &g_Can0TxRxInfo, msg_id, dataP); // 优先使用MB2发送报文
                                                                      // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
    if (can0_Ret == BUSY) // 如果MB2为忙状态，使用MB3发送报文
    {
        can0_Ret = CAN_Send(CAN_ID_0, 3, &g_Can0TxRxInfo, msg_id, dataP); // 使用MB3发送报文
                                                                          // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
    }

    if (can0_Ret == BUSY) // 如果MB3为忙状态，使用MB4发送报文
    {
        can0_Ret = CAN_Send(CAN_ID_0, 4, &g_Can0TxRxInfo, msg_id, dataP); // 使用MB3发送报文
                                                                          // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
    }

    return can0_Ret;
}

/*****************************************************************************
 * Function:        CheckCanIdIsSelfSend
 * Description:     Check whether the CAN ID is in the self-transmit filter list
 * Input:           canId - CAN identifier (standard ID assumed)
 * Output:          None
 * Return:          0 - CAN ID is in self-send list
 *                  1 - CAN ID is NOT in self-send list
 * Others:          Current self-send list includes: 0x316, 0x317, 0x36C, 0x406, 0x425,
 *                  0x536, 0x537, 0x53C, 0x53D, 0x53E, 0x53F, 0x591, 0x686
 ****************************************************************************/
static int16_t CheckCanIdIsSelfSend(uint32_t canId)
{
    if (canId == 0x316)
    {
        return 0;
    }
    if (canId == 0x317)
    {
        return 0;
    }
    if (canId == 0x36C)
    {
        return 0;
    }
    if (canId == 0x406)
    {
        return 0;
    }
    if (canId == 0x425)
    {
        return 0;
    }
    if (canId == 0x536)
    {
        return 0;
    }
    if (canId == 0x537)
    {
        return 0;
    }
    if (canId == 0x53C)
    {
        return 0;
    }
    if (canId == 0x53D)
    {
        return 0;
    }
    if (canId == 0x53E)
    {
        return 0;
    }
    if (canId == 0x53F)
    {
        return 0;
    }
    if (canId == 0x591)
    {
        return 0;
    }
    if (canId == 0x686)
    {
        return 0;
    }
    return 1;
}

/*************************************************
   Function:        CanRxInterruptProcessMsg
   Description:     CAN RX/TX interrupt message processing (ISR context)
   Input:           canChannel   - CAN channel index
                    pstcCanFDmsg - Pointer to received CANFD message structure
                    txState      - 0: RX frame, non-zero: TX event/loopback indication
   Output:          None
   Return:          None
   Others:          Builds unified CAN ID format (bit31 indicates extended ID)
                    Copies payload into local buffer (max 64 bytes)
                    RX path:
                      - Updates load message counter
                      - Applies optional channel RX filter callback
                      - Invokes channel RX callback if registered
                    TX path:
                      - Invokes channel TX callback if registered
                      - Invokes per-handle TX finished callbacks
                    Enqueues message into global RX queue for task dispatching
                    In TX path, self-send frames may be filtered by CheckCanIdIsSelfSend()
 *************************************************/
void CanRxInterruptProcessMsg(uint8_t canChannel, stc_canfd_msg_t *pstcCanFDmsg, uint8_t txState)
{
    uint16_t data;
    uint8_t canData[64];
    uint8_t dlc;
    BaseType_t xHigherPriorityTaskWoken;
    uint32_t canId;
    uint8_t i;
    uint16_t j;

    canId = pstcCanFDmsg->canId;
    if (pstcCanFDmsg->extended)
    {
        canId |= (((uint32_t)0x0000001) << 31);
    }
    {
        dlc = pstcCanFDmsg->dlc;
    }
    for (j = 0; j < pstcCanFDmsg->dlc; j++)
    {
        canData[j] = pstcCanFDmsg->data[j];
    }

    xHigherPriorityTaskWoken = pdFALSE;

    if (txState == 0)
    {
        g_driverCanManage[canChannel].loadMsgCount++;
        if (g_driverCanManage[canChannel].rxFilterFun != NULL)
        {
            if (g_driverCanManage[canChannel].rxFilterFun(canId, canData, dlc) != 0)
            {
                return;
            }
        }

        if (g_driverCanManage[canChannel].canRxCallFun != NULL)
        {
            g_driverCanManage[canChannel].canRxCallFun(canId, canData, dlc);
        }
    }
    else
    {
        // tx call back
        if (g_driverCanManage[canChannel].canTxCallFun != NULL)
        {
            g_driverCanManage[canChannel].canTxCallFun(canId, canData, dlc);
        }
        for (i = 0; i < CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX; i++)
        {
            if (g_canDriverBufferList[canChannel][i].pTxCallBackFun != NULL)
            {
                g_canDriverBufferList[canChannel][i].pTxCallBackFun();
            }
        }
    }
    if (g_allCanRxBuffer.rxQueueHandle != NULL) // rx buffer is  ready
    {
        if (canId == 0x727) return; // SRS
        if (canId == 0x710) return; // BCS
        if (canId == 0x7E0) return; // EMS
        if (canId == 0x765) return; // MFS (您当前遇到的问题ID)
        if (canId == 0x7E1) return; // TCU

        // ACAN Nodes
        if (canId == 0x731) return; // PAS
        if (canId == 0x714) return; // EPS
        if (canId == 0x73E) return; // FR
        if (canId == 0x740) return; // IFC

        // BCAN Nodes
        if (canId == 0x72C) return; // HVACF
        if (canId == 0x72B) return; // AVNT
        if (canId == 0x755) return; // ETC
        if (canId == 0x728) return; // IID
        if (canId == 0x720) return; // IBCM
        if (canId == 0x748) return; // WCM
        if (canId == 0x718) return; // FLDCM
        if (canId == 0x719) return; // FRDCM
        if (canId == 0x73B) return; // HVSM
        if (canId == 0x73A) return; // RCP
        if (canId == 0x724) return; // PLGM

        // TCAN Nodes
        if (canId == 0x72D) return; // TBOX (自测用?)

        // DCAN Nodes
        if (canId == 0x74F) return; // GWM

        // 功能寻址 (必须加，通常用于 0x3E 服务维持会话)
        if (canId == 0x7DF) return;

        if (txState)
        {
            if (CheckCanIdIsSelfSend(canId) != 0)
            {
                return;
            }
        }
        g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].canId = canId;
        g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].dlc = dlc;
        memcpy(g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].canData, canData, dlc);
        g_allCanRxBuffer.msgRxBuffer[g_allCanRxBuffer.msgRxIndexIn].txFlag = txState;
        data = (canChannel << 8) + g_allCanRxBuffer.msgRxIndexIn;
        g_allCanRxBuffer.msgRxIndexIn++;
        if (g_allCanRxBuffer.msgRxIndexIn >= ALL_CAN_RX_BUFFER_SIZE)
        {
            g_allCanRxBuffer.msgRxIndexIn = 0;
        }
        xQueueSendFromISR(g_allCanRxBuffer.rxQueueHandle, &data, &xHigherPriorityTaskWoken);
    }
}

/*************************************************
   Function:        CanHalSetCANMode
   Description:     Set CAN transceiver mode for specified channel
   Input:           u8Channel - CAN channel index
                    mode      - CAN mode (E_CAN_MODE_NORMAL / E_CAN_MODE_STANDBY)
   Output:          None
   Return:          0  - Success
                    -1 - Invalid parameter
   Others:          Controls transceiver standby pin via GPIO
                    Mapping between channel and STB pin is platform dependent
 *************************************************/
static int16_t CanHalSetCANMode(uint8_t u8Channel, uint8_t mode)
{
    // check parameter
    if ((u8Channel > CAN_CHANNEL_NUMBER_MAX) || ((mode != E_CAN_MODE_NORMAL) && (mode != E_CAN_MODE_STANDBY)))
    {
        return -1;
    }

    switch (u8Channel)
    {
    case 0:
    {
        if (mode == E_CAN_MODE_NORMAL)
        {
            GPIO_ClearPinOutput(CAN1FD_STB_PORT, CAN1FD_STB_PIN);
        }
        else
        {
            GPIO_SetPinOutput(CAN1FD_STB_PORT, CAN1FD_STB_PIN); // Go-to-Sleep mode
        }
    }
    break;
    case 1:
    {
        if (mode == E_CAN_MODE_NORMAL)
        {
            GPIO_ClearPinOutput(CAN1FD_STB_PORT, CAN1FD_STB_PIN);
        }
        else
        {
            GPIO_SetPinOutput(CAN1FD_STB_PORT, CAN1FD_STB_PIN); // Go-to-Sleep mode
        }
    }
    break;
#if (CAN_CHANNEL_NUMBER_MAX == 6)
    case 2:
    {
        if (mode == E_CAN_MODE_NORMAL)
        {
            GPIO_ClearPinOutput(CAN2FD_STB_PORT, CAN2FD_STB_PIN);
        }
        else
        {
            GPIO_SetPinOutput(CAN2FD_STB_PORT, CAN2FD_STB_PIN); // Go-to-Sleep mode
        }
    }
    break;
    case 3:
    {
        if (mode == E_CAN_MODE_NORMAL)
        {
            GPIO_ClearPinOutput(CAN3FD_STB_PORT, CAN3FD_STB_PIN);
        }
        else
        {
            GPIO_SetPinOutput(CAN3FD_STB_PORT, CAN3FD_STB_PIN); // Go-to-Sleep mode
        }
    }
    break;
    case 4:
    {
        if (mode == E_CAN_MODE_NORMAL)
        {
            GPIO_ClearPinOutput(CAN4FD_STB_PORT, CAN4FD_STB_PIN);
        }
        else
        {
            GPIO_SetPinOutput(CAN4FD_STB_PORT, CAN4FD_STB_PIN); // Go-to-Sleep mode
        }
    }
    break;
    case 5:
    {
        if (mode == E_CAN_MODE_NORMAL)
        {
            GPIO_ClearPinOutput(CAN5FD_STB_PORT, CAN5FD_STB_PIN);
        }
        else
        {
            GPIO_SetPinOutput(CAN5FD_STB_PORT, CAN5FD_STB_PIN); // Go-to-Sleep mode
        }
    }
    break;
#endif
    default:
        break;
    }
    return 0;
}

/*************************************************
   Function:        CanHalSetSleep
   Description:     Apply CAN transceiver mode to all channels
   Input:           mode - Target mode (E_CAN_MODE_NORMAL / E_CAN_MODE_STANDBY)
   Output:          None
   Return:          0  - Success
                    -1 - One or more channels failed to switch mode
   Others:          Iterates all channels and calls CanHalSetCANMode()
                    Returns aggregated result (does not early-exit on failure)
 *************************************************/
static int16_t CanHalSetSleep(uint8_t mode)
{
    uint8_t i;
    int16_t ret, tem;

    ret = 0;
    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        tem = CanHalSetCANMode(i, mode);
        if (tem != 0)
        {
            ret = -1;
        }
    }
    return ret;
}

/*************************************************
   Function:        SetCanControllerStop
   Description:     Stop CAN controller and disable related interrupts for a channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          None
   Others:          Clears CAN interrupts, disables CAN module clock/power
                    Reconfigures RX pin mux for wake-up interrupt (platform specific)
 *************************************************/
static void SetCanControllerStop(uint8_t canChannel)
{
    switch (canChannel)
    {
    case 0:
        CAN_IntClear(CAN_ID_0, CAN_INT_ALL, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU);
        SYSCTRL_DisableModule(SYSCTRL_CAN0);
        PORT_PinmuxConfig(CANFD1_RX_PORT, CANFD1_RX_PIN, CANFD1_IRQ_MUX);
        break;
    case 1:
        CAN_IntClear(CAN_ID_1, CAN_INT_ALL, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU);
        SYSCTRL_DisableModule(SYSCTRL_CAN1);
        PORT_PinmuxConfig(CANFD2_RX_PORT, CANFD2_RX_PIN, CANFD2_IRQ_MUX);
        break;
    case 2:
        CAN_IntClear(CAN_ID_2, CAN_INT_ALL, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU, 0xFFFFFFFFU);
        SYSCTRL_DisableModule(SYSCTRL_CAN2);
        PORT_PinmuxConfig(CANFD3_RX_PORT, CANFD3_RX_PIN, CANFD3_IRQ_MUX);
        break;
    default:
        break;
    }
}

/*************************************************
   Function:        SetCanControllerStart
   Description:     Start CAN controller and configure pins/modules for a channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          None
   Others:          Configures RX/TX pin mux and disables RX pin interrupt flags
                    Resets and enables CAN module in system controller
                    Enables CAN controller instance (CAN_Enable)
                    Platform-specific initialization for multi-channel variants
 *************************************************/
static void SetCanControllerStart(uint8_t canChannel)
{
    switch (canChannel)
    {
    case 0:
        // 设置 CAN0 模块使用的端口
        PORT_PinmuxConfig(CANFD1_RX_PORT, CANFD1_RX_PIN, CANFD1_RX_MUX); // 设置 PT为CAN0_RX功能
        PORT_PinmuxConfig(CANFD1_TX_PORT, CANFD1_TX_PIN, CANFD1_TX_MUX); // 设置 PT为CAN0_TX功能
        PORT_PinIntConfig(CANFD1_RX_PORT, CANFD1_RX_PIN, PORT_ISF_DISABLED);
        // 初始化CAN0模块的时钟源
        // CLK_ModuleSrc(CLK_CAN0, CLK_SRC_PLL);    //选择CAN模块的功能时钟源
        // CLK_SetClkDivider(CLK_CAN0, CLK_DIV_6);    //设置CAN模块的时钟分频系数
        SYSCTRL_ResetModule(SYSCTRL_CAN0); // 在系统控制模块中，复位CAN0模块
        SYSCTRL_EnableModule(SYSCTRL_CAN0);

        CAN_Enable(CAN_ID_0);
        break;
    case 1:
        // 设置 CAN1 模块使用的端口
        PORT_PinmuxConfig(CANFD2_RX_PORT, CANFD2_RX_PIN, CANFD2_RX_MUX); // 设置 PT为CAN1_RX功能
        PORT_PinmuxConfig(CANFD2_TX_PORT, CANFD2_TX_PIN, CANFD2_TX_MUX); // 设置 PT为CAN1_TX功能
        PORT_PinIntConfig(CANFD2_RX_PORT, CANFD2_RX_PIN, PORT_ISF_DISABLED);
        // 初始化CAN1模块的时钟源
        // CLK_ModuleSrc(CLK_CAN1, CLK_SRC_PLL);    //选择CAN模块的功能时钟源
        // CLK_SetClkDivider(CLK_CAN1, CLK_DIV_6);    //设置CAN模块的时钟分频系数
        SYSCTRL_ResetModule(SYSCTRL_CAN1); // 在系统控制模块中，复位CAN1模块
        SYSCTRL_EnableModule(SYSCTRL_CAN1);

        CAN_Enable(CAN_ID_1);
        break;
    case 2:
        // 设置 CAN2 模块使用的端口
        PORT_PinmuxConfig(CANFD3_RX_PORT, CANFD3_RX_PIN, CANFD3_RX_MUX); // 设置 PT为CAN3_RX功能
        PORT_PinmuxConfig(CANFD3_TX_PORT, CANFD3_TX_PIN, CANFD3_TX_MUX); // 设置 PT为CAN3_TX功能

        // 初始化CAN2模块的时钟源
        // CLK_ModuleSrc(CLK_CAN2, CLK_SRC_PLL);    //选择CAN模块的功能时钟源
        // CLK_SetClkDivider(CLK_CAN2, CLK_DIV_6);    //设置CAN模块的时钟分频系数
        SYSCTRL_ResetModule(SYSCTRL_CAN2); // 在系统控制模块中，复位CAN2模块
        SYSCTRL_EnableModule(SYSCTRL_CAN2);

        CAN_Enable(CAN_ID_2);
        break;
#if (CAN_CHANNEL_NUMBER_MAX == 6)
    case 3:
        pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
        break;
    case 4:
        pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
        break;
    case 5:
        pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
        break;
#endif
    default:
        break;
    }
}

/*************************************************
   Function:        CanHalSetMode
   Description:     Set CAN system mode (sleep or awake) with optional wake-up interrupt
   Input:           mode - 0: sleep, 1: awake
   Output:          None
   Return:          0  - Success
                    -1 - Invalid mode parameter
   Others:          Sleep (mode=0):
                      - Sets transceiver to standby for all channels
                      - Stops CAN controller modules
                      - If wake-up is enabled per channel, configures RX pin as GPIO
                        and enables falling-edge interrupt for wake-up detection
                    Awake (mode=1):
                      - Starts CAN controller modules for all channels
                      - Sets transceiver to normal mode for all channels
 *************************************************/
int16_t CanHalSetMode(uint8_t mode)
{
    int i = 0;
    if (mode == 0)
    {
        CanHalSetSleep(0);
        for (; i < CAN_CHANNEL_NUMBER_MAX; i++)
        {
            SetCanControllerStop(i);
        }

        if (g_canWakeUpFlag[0])
        {
            GPIO_SetPinDir(CANFD1_RX_PORT, CANFD1_RX_PIN, GPIO_INPUT);
            // PORT_PullConfig(CANFD1_RX_PORT, T2G_CANFD1_RX_PIN, PORT_PULL_DOWN);
            PORT_PinIntConfig(CANFD1_RX_PORT, CANFD1_RX_PIN, PORT_ISF_INT_FALLING_EDGE);
            INT_SetPriority(CANFD1_IRQN, 0x3);
            INT_EnableIRQ(CANFD1_IRQN);
        }
        if (g_canWakeUpFlag[1])
        {
            GPIO_SetPinDir(CANFD2_RX_PORT, CANFD2_RX_PIN, GPIO_INPUT);
            // PORT_PullConfig(CANFD2_RX_PORT, T2G_CANFD2_RX_PIN, PORT_PULL_DOWN);
            PORT_PinIntConfig(CANFD2_RX_PORT, CANFD2_RX_PIN, PORT_ISF_INT_FALLING_EDGE);
            INT_SetPriority(CANFD2_IRQN, 0x3);
            INT_EnableIRQ(CANFD2_IRQN);
        }
#if (CAN_CHANNEL_NUMBER_MAX == 6)
        if (g_canWakeUpFlag[3])
        {
            can_irq_port_pin_cfg.hsiom = T2G_CAN3_IRQ_MUX;
            Cy_GPIO_Pin_Init(T2G_CANFD4_RX_PORT, T2G_CANFD4_RX_PIN, &can_irq_port_pin_cfg);
        }
        if (g_canWakeUpFlag[4])
        {
            can_irq_port_pin_cfg.hsiom = T2G_CAN4_IRQ_MUX;
            Cy_GPIO_Pin_Init(T2G_CANFD5_RX_PORT, T2G_CANFD5_RX_PIN, &can_irq_port_pin_cfg);
        }
        if (g_canWakeUpFlag[5])
        {
            can_irq_port_pin_cfg.hsiom = T2G_CAN5_IRQ_MUX;
            Cy_GPIO_Pin_Init(T2G_CANFD6_RX_PORT, T2G_CANFD6_RX_PIN, &can_irq_port_pin_cfg);
        }
#endif
        return 0;
    }
    else if (mode == 1)
    {
        for (; i < CAN_CHANNEL_NUMBER_MAX; i++)
        {
            SetCanControllerStart(i);
        }
        CanHalSetSleep(1);
        return 0;
    }
    else
    {
        return -1;
    }
}

/*************************************************
   Function:        CanInit
   Description:     Initialize CAN controller instance with baudrate and mode
   Input:           u8Channel     - CAN channel index
                    canfdFlag     - CAN FD enable flag
                    u8BaudType    - Arbitration phase baudrate selection
                    dataBandType  - Data phase baudrate selection (CAN FD)
                    mode          - CAN mode (E_CAN_MODE_NORMAL / E_CAN_MODE_STANDBY)
   Output:          None
   Return:          0  - Success
                    -1 - Invalid parameter
   Others:          Calls platform-specific CAN init function per channel
                    Configures transceiver mode via CanHalSetCANMode()
                    Some channels may be not implemented depending on platform
 *************************************************/
static int16_t CanInit(uint8_t u8Channel, uint8_t canfdFlag, CanBaudType_e u8BaudType, CanBaudType_e dataBandType, uint8_t mode)
{
    // check parameter
    if ((u8Channel > CAN_CHANNEL_NUMBER_MAX) || ((u8BaudType != E_CAN_125K) && (u8BaudType != E_CAN_250K) && (u8BaudType != E_CAN_500K) && (u8BaudType != E_CAN_1000K)) || ((mode != E_CAN_MODE_NORMAL) && (mode != E_CAN_MODE_STANDBY)))
    {
        return -1;
    }

    if (u8Channel == 0)
    {
        CAN0_Init(0, canfdFlag, u8BaudType, dataBandType);
        CanHalSetCANMode(0, mode);
    }

    if (u8Channel == 1)
    {
        CAN0_Init(1, canfdFlag, u8BaudType, dataBandType);
        CanHalSetCANMode(1, mode);
    }

    if (u8Channel == 2)
    {
        // CAN0_Init(2,canfdFlag,u8BaudType,dataBandType);
        // CanHalSetCANMode(2, mode);
    }

#if (CAN_CHANNEL_NUMBER_MAX == 6)
    if (u8Channel == 3)
    {
        T2GCanFDInit(3, canfdFlag, u8BaudType, dataBandType);
        CanHalSetCANMode(3, mode);
    }

    if (u8Channel == 4)
    {
        T2GCanFDInit(4, canfdFlag, u8BaudType, dataBandType);
        CanHalSetCANMode(4, mode);
    }

    if (u8Channel == 5)
    {
        T2GCanFDInit(5, canfdFlag, u8BaudType, dataBandType);
        CanHalSetCANMode(5, mode);
    }
#endif
    return 0;
}

/*************************************************
   Function:        CanHalInit
   Description:     Initialize CAN HAL driver management and hardware channels
   Input:           pCanConfig - CAN configuration table (array)
                    CanNum     - Number of CAN configurations in table
   Output:          None
   Return:          0  - Success
                    -1 - Invalid parameter (NULL config or invalid channel)
                    -2 - TX mutex creation failure
   Others:          Initializes per-channel management flags and callback pointers
                    Creates per-channel TX mutex for thread-safe transmission
                    Initializes CAN controller hardware using provided configuration
                    Sets bus-off processing enable flag and bus-off event callback
                    Initializes txStartTimeCount to 0xFFFFFFFF (timer stopped state)
 *************************************************/
int16_t CanHalInit(const CanConfigure_t *pCanConfig, uint8_t CanNum)
{
    uint8_t i;

    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        g_driverCanManage[i].AppMsgEnable = 0;
        g_driverCanManage[i].txMsgEnable = 1;
        g_driverCanManage[i].canRxCallFun = NULL;
        g_driverCanManage[i].rxFilterFun = NULL;
        g_driverCanManage[i].noAckError = 0;
        g_driverCanManage[i].stuffError = 0;
        g_driverCanManage[i].errorRecoverFun = NULL;
        // Initialize CAN transmit mutex
        g_canTxMutex[i] = xSemaphoreCreateMutex();
        if (g_canTxMutex[i] == NULL)
        {
            // Handle mutex creation failure
            return -2;
        }
    }
    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        g_canWakeUpFlag[i] = 0;
    }
    g_allCanRxBuffer.rxQueueHandle = NULL;
    if (pCanConfig == NULL)
    {
        return -1;
    }
    for (i = 0; i < CanNum; i++)
    {
        if (pCanConfig->canChannel > (CAN_CHANNEL_NUMBER_MAX - 1))
        {
            return -1;
        }
        CanInit(pCanConfig[i].canChannel, pCanConfig[i].canFdMode, pCanConfig[i].bandrate, pCanConfig[i].dataBandrate, E_CAN_MODE_NORMAL);
        g_driverCanManage[pCanConfig[i].canChannel].AppMsgEnable = 0;
        g_canBusOffProcessFlag[pCanConfig[i].canChannel] = 0x01;
        g_driverCanManage[pCanConfig[i].canChannel].busOffEventFun = pCanConfig[i].busOffEventFun;
        g_driverCanManage[pCanConfig[i].canChannel].txStartTimeCount = 0xFFFFFFFF;
    }
    return 0;
}

/*************************************************
   Function:        CanHalOpen
   Description:     Open CAN HAL instance and allocate handle for specified channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          >=0 - Valid CAN handle (high byte: channel, low byte: instance index)
                    -1  - Failed (invalid channel or no free instance)
   Others:          Searches free instance in g_canDriverBufferList[canChannel][]
                    Uses critical section to protect instance allocation
                    Initializes instance fields (queue handle, loopback flag, filter callback)
 *************************************************/
int16_t CanHalOpen(uint8_t canChannel)
{
    int16_t canHandle;
    uint16_t i;

    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return -1;
    }
    canHandle = -1;
    COMMON_DISABLE_INTERRUPTS();
    for (i = 0; i < CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX; i++)
    {
        if (g_canDriverBufferList[canChannel][i].canUseFlag == 0)
        {
            g_canDriverBufferList[canChannel][i].canUseFlag = 1;
            g_canDriverBufferList[canChannel][i].RxQueueHandle = NULL;
            g_canDriverBufferList[canChannel][i].enableSendLoopBack = 0x00;
            g_canDriverBufferList[canChannel][i].pFilerFun = NULL;
            canHandle = i + (256 * canChannel);
            break;
        }
    }
    COMMON_ENABLE_INTERRUPTS();
    return canHandle;
}

/*************************************************
   Function:        CanHalSetRxBuffer
   Description:     Configure RX message buffer and RX queue for specified CAN handle
   Input:           canHandle    - CAN driver handle
                    pMsgBuf      - Message buffer array provided by caller
                    bufMsgCount  - Number of messages in buffer
   Output:          None
   Return:          0  - Success
                    -1 - Invalid handle or channel
                    -2 - Invalid buffer size (bufMsgCount == 0)
                    -3 - Queue creation failure
   Others:          Creates per-instance RX queue with item size of uint8_t index token
                    Initializes RX ring buffer index and assigns caller-provided buffer
                    Caller is responsible for ensuring pMsgBuf has bufMsgCount entries
 *************************************************/
int16_t CanHalSetRxBuffer(int16_t canHandle, CanHalMsg_t *pMsgBuf, uint16_t bufMsgCount)
{
    uint8_t canChannel;
    QueueHandle_t queHandle;
    if (canHandle < 0)
    {
        return -1;
    }

    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX) // invalid channel
    {
        return -1;
    }
    if (bufMsgCount == 0)
    {
        return -2;
    }

    queHandle = xQueueCreate(bufMsgCount,      // The number of items the queue can hold.
                             sizeof(uint8_t)); // The buffer that will hold the queue structure.
    if (0 == queHandle)
    {
        return -3;
    }

    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].RxQueueHandle = queHandle;
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].msgRxIndexIn = 0;
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].msgRxBufferSize = bufMsgCount;
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].pMsgBufferRx = pMsgBuf;
    return 0;
}

/*************************************************
   Function:        CanHalSetFilter
   Description:     Set CAN ID filter configuration for specified CAN handle instance
   Input:           canHandle   - CAN driver handle
                    pMsgFilter  - Filter configuration structure
   Output:          None
   Return:          0  - Success
                    -1 - Invalid handle or channel
                    -2 - NULL filter pointer
   Others:          Copies filter configuration into instance context
                    Filtering is applied in dispatch path when no custom filter function is set
 *************************************************/
int16_t CanHalSetFilter(int16_t canHandle, CanHalMsgFilter_t *pMsgFilter)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return -1;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX) // invalid channel
    {
        return -1;
    }
    if (pMsgFilter == NULL)
    {
        return -2;
    }
    memcpy(&(g_canDriverBufferList[canChannel][(canHandle & 0xFF)].filter), pMsgFilter, sizeof(CanHalMsgFilter_t));

    return 0;
}

/*************************************************
   Function:        CanHalSetFilterFun
   Description:     Register custom CAN RX filter callback for specified handle instance
   Input:           canHandle  - CAN driver handle
                    pFilterFun - Filter callback function pointer
   Output:          None
   Return:          0  - Success
                    -1 - Invalid handle or channel
                    -2 - NULL callback pointer
   Others:          When registered, callback is invoked to decide whether to accept message
                    Custom filter has higher priority than static filter range configuration
 *************************************************/
int16_t CanHalSetFilterFun(int16_t canHandle, typeCanRxHalFilterCallBackPtr pFilterFun)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return -1;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX) // invalid channel
    {
        return -1;
    }

    if (pFilterFun == NULL)
    {
        return -2;
    }
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].pFilerFun = pFilterFun;

    return 0;
}

/*************************************************
   Function:        CanHalRegisterTxFinishedCallBackFunction
   Description:     Register TX finished callback for specified CAN handle instance
   Input:           canHandle   - CAN driver handle
                    pCallBackFun - Callback function pointer for TX completion
   Output:          None
   Return:          0  - Success
                    -1 - Invalid handle or channel
   Others:          Stores callback pointer into instance context
                    Callback is expected to be invoked by lower-level TX completion mechanism
 *************************************************/
int16_t CanHalRegisterTxFinishedCallBackFunction(int16_t canHandle, typeCanTxHalCallBackPtr pCallBackFun)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return -1;
    }

    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX) 
    {
        return -1;
    }
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].pTxCallBackFun = pCallBackFun;
    return 0;
}

/*************************************************
    Function:        CanTransmit
    Description:     Transmit CAN message through specified channel
    Input:           u8Channel - CAN channel number
                     id - CAN message ID
                     u8Len - Data length
                     pu8CmdData - Pointer to data buffer
                     fdFlag - CAN FD configuration flag (bit0: FD enable, bit1: BRS enable)
    Output:          None
    Return:          0 on success, negative error code on failure
    Others:          Uses independent mail counter for each channel
  *************************************************/
static int16_t CanTransmit(uint8_t u8Channel, uint32_t id, uint8_t u8Len,
                           const uint8_t *pu8CmdData, uint8_t fdFlag)
{
    CAN_Id_t pstCanType;
    CAN_MessageInfo_t *pCAN_MessageInfo = NULL;
    CAN_MessageInfo_t txInfoLocal;
    ResultStatus_t canSendRet;
    static uint8_t u8MailNum[CAN_CHANNEL_NUMBER_MAX] = {0};
    int16_t ret = -1;

    if ((pu8CmdData == NULL) || (u8Channel >= CAN_CHANNEL_NUMBER_MAX))
    {
        return -1;
    }

    switch (u8Channel)
    {
    case 0:
        pstCanType = CAN_ID_0;
        pCAN_MessageInfo = &g_Can0TxRxInfo;
        break;
    case 1:
        pstCanType = CAN_ID_1;
        pCAN_MessageInfo = &g_Can1TxRxInfo;
        break;
    default:
        return -1;
    }

    if (pCAN_MessageInfo == NULL)
    {
        return -2;
    }

    txInfoLocal = *pCAN_MessageInfo;
    txInfoLocal.fdEn    = (fdFlag & 0x01U) ? ENABLE : DISABLE;
    txInfoLocal.brsEn   = (fdFlag & 0x02U) ? ENABLE : DISABLE;
    txInfoLocal.idType  = CAN_MSG_ID_STD;
    txInfoLocal.dataLen = u8Len;

    COMMON_DISABLE_INTERRUPTS();
    canSendRet = CAN_Send(pstCanType, u8MailNum[u8Channel], &txInfoLocal, id, pu8CmdData);
    COMMON_ENABLE_INTERRUPTS();

    if (canSendRet == SUCC)
    {
        /* 仅成功才推进 mailbox 索引 */
        if (++u8MailNum[u8Channel] >= CAN_SEND_MAIL_MAX_NUMBER)
        {
            u8MailNum[u8Channel] = 0;
        }

        taskENTER_CRITICAL();
        g_driverCanManage[u8Channel].txTimeOutCount = 0;
        taskEXIT_CRITICAL();

        ret = 0;
    }
    else if (canSendRet == BUSY)
    {
        ret = CAN_ERROR_TX_BUFFER_FULL;             
    }
    else 
    {
        TBOX_PRINT("Can%d send error, driver layer error code:%d\r\n", u8Channel, canSendRet);
        ret = (int16_t)ERR;
    }

    return ret;
}

/*************************************************
   Function:        CanHalTransmit
   Description:     Transmit CAN message in task context with mutex protection
   Input:           canHandle - CAN driver handle (high byte: channel, low byte: instance index)
                    canId     - CAN identifier
                    canData   - CAN payload buffer (read-only)
                    dlc       - Data length code (0..64)
                    fdFlag    - CAN FD / TX flag passed to driver
   Output:          None
   Return:          SUCC / 0 - Transmission successful (driver dependent)
                    BUSY      - Driver busy (driver dependent)
                    CAN_ERROR_INVALID_HANDLE   - Invalid handle or channel
                    CAN_ERROR_MUTEX_NOT_INIT   - TX mutex not initialized
                    CAN_ERROR_MUTEX_TIMEOUT    - Failed to acquire TX mutex within timeout
                    CAN_ERROR_TX_DISABLE       - TX disabled by control flag
                    CAN_ERROR_BUS_ERROR        - Bus error / no-ack / bus-off state blocks TX
                    CAN_ERROR_TEST_MODE        - Test mode enabled, TX blocked
                    CAN_ERROR_TX_BUFFER_FULL   - Driver TX buffer full (may retry once)
   Others:          Protects driver transmit with per-channel mutex
                    Retries once when TX buffer is full: releases mutex, delays 10 ms,
                    reacquires mutex and transmits again
                    On successful transmit, starts TX supervision counter (txStartTimeCount)
 *************************************************/
int16_t CanHalTransmit(int16_t canHandle, uint32_t canId, const uint8_t *canData, uint8_t dlc, uint8_t fdFlag)
{
    uint8_t canChannel;
    int16_t ret = -1;
    BaseType_t xResult = pdFALSE;
    uint8_t mutexAcquired = 0;      // Flag to track if mutex is acquired
    uint8_t retryMutexAcquired = 0; // Flag to track if retry mutex is acquired

    if (canHandle < 0)
    {
        ret = CAN_ERROR_INVALID_HANDLE;
    }
    else
    {
        canChannel = canHandle >> 8;
        if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
        {
            ret = CAN_ERROR_INVALID_HANDLE;
        }
        else
        {
            if (g_canTxMutex[canChannel] == NULL)
            {
                ret = CAN_ERROR_MUTEX_NOT_INIT;
            }
            else
            {
                xResult = xSemaphoreTake(g_canTxMutex[canChannel], pdMS_TO_TICKS(20));
                if (xResult != pdTRUE)
                {
                    ret = CAN_ERROR_MUTEX_TIMEOUT;
                }
                else
                {
                    mutexAcquired = 1;
                    if (g_driverCanManage[canChannel].txMsgEnable <= 0)
                    {
                        ret = CAN_ERROR_TX_DISABLE;
                    }
                    else if ((g_driverCanManage[canChannel].busNoAckErrorState != 0) ||
                            (g_driverCanManage[canChannel].busErrorAppDiableFlag) ||
                            (g_driverCanManage[canChannel].BusErrorState))
                    {
                        ret = CAN_ERROR_BUS_ERROR;
                    }
                    // else if(g_driverCanManage[canChannel].AppMsgEnable <= 0)
                    // {
                    //     ret = CAN_ERROR_BUS_OFF_LINE;
                    // }
                    else if (g_canTestModeFlag[canChannel])
                    {
                        ret = CAN_ERROR_TEST_MODE;
                    }
                    else
                    {
                        ret = CanTransmit(canChannel, canId, dlc, canData, fdFlag);
                        if (ret == CAN_ERROR_TX_BUFFER_FULL)
                        {
                            xSemaphoreGive(g_canTxMutex[canChannel]);
                            mutexAcquired = 0;
                            vTaskDelay(pdMS_TO_TICKS(10));
                            xResult = xSemaphoreTake(g_canTxMutex[canChannel], pdMS_TO_TICKS(20));
                            if (xResult == pdTRUE)
                            {
                                retryMutexAcquired = 1;
                                ret = CanTransmit(canChannel, canId, dlc, canData, fdFlag);
                            }
                            else
                            {
                                ret = CAN_ERROR_MUTEX_TIMEOUT;
                            }
                        }
                        if (ret == SUCC)
                        {
                            taskENTER_CRITICAL();
                            if (g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
                            {
                                g_driverCanManage[canChannel].txStartTimeCount = 0x00;
                            }
                            taskEXIT_CRITICAL();
                        }
                    }
                }
            }
        }
    }
    if (mutexAcquired)
    {
        xSemaphoreGive(g_canTxMutex[canChannel]);
    }
    if (retryMutexAcquired)
    {
        xSemaphoreGive(g_canTxMutex[canChannel]);
    }
    if ((ret != SUCC) && (ret != BUSY))
    {
        // TBOX_PRINT("Can hal send error ,can[%d]error code:%d \r\n",canChannel,ret);
    }
    return ret;
}

/*************************************************
   Function:        CanHalReceive
   Description:     Receive CAN message from per-instance RX queue
   Input:           canHandle  - CAN driver handle (high byte: channel, low byte: instance index)
                    timeOut_ms - Receive timeout in milliseconds (portMAX_DELAY for infinite wait)
   Output:          pMsg       - Output buffer for received CAN message
   Return:          0  - Receive successful
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel
                    CAN_ERROR_TIMEOUT        - Timeout or queue not ready
   Others:          Receives an index token from RxQueueHandle, then copies the message
                    from instance RX buffer into pMsg
 *************************************************/
int16_t CanHalReceive(int16_t canHandle, CanHalMsg_t *pMsg, uint32_t timeOut_ms)
{
    uint8_t canChannel, index;
    QueueHandle_t queHandle;
    TickType_t tickWait;
    uint8_t data;
    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    // receive
    index = canHandle & 0xFF;
    queHandle = g_canDriverBufferList[canChannel][index].RxQueueHandle;
    if (queHandle == NULL)
    {
        return CAN_ERROR_TIMEOUT;
    }
    if (timeOut_ms != portMAX_DELAY)
    {
        tickWait = pdMS_TO_TICKS(timeOut_ms);
    }
    else
    {
        tickWait = portMAX_DELAY;
    }

    if (xQueueReceive(queHandle, &data, tickWait) != pdPASS)
    {
        return CAN_ERROR_TIMEOUT;
    }

    memcpy(pMsg, (g_canDriverBufferList[canChannel][index].pMsgBufferRx + data), sizeof(CanHalMsg_t));
    return 0;
}

/*************************************************
   Function:        CanHalSetCanRxCallBack
   Description:     Register CAN receive callback for specified channel
   Input:           canChannel - CAN channel index
                    rxCallBack - Callback function pointer
   Output:          None
   Return:          0  - Success
                    -1 - Invalid parameter (NULL callback or invalid channel)
   Others:          Stores callback into channel management structure
                    Intended to be called during initialization phase
 *************************************************/
int16_t CanHalSetCanRxCallBack(uint8_t canChannel, typeCanTxRxHalCallBackPtr rxCallBack)
{
    if (rxCallBack == NULL)
    {
        return -1;
    }
    if (canChannel > 5)
    {
        return -1;
    }
    // IRQ_DISABLE();
    g_driverCanManage[canChannel].canRxCallFun = rxCallBack;
    // IRQ_ENABLE();
    return 0;
}

/*************************************************
   Function:        CanHalSetCanTxCallBack
   Description:     Register CAN transmit callback for specified channel
   Input:           canChannel - CAN channel index
                    txCallBack - Callback function pointer
   Output:          None
   Return:          0  - Success
                    -1 - Invalid parameter (NULL callback or invalid channel)
   Others:          Stores callback into channel management structure
                    Intended to be called during initialization phase
 *************************************************/
int16_t CanHalSetCanTxCallBack(uint8_t canChannel, typeCanTxRxHalCallBackPtr txCallBack)
{
    if (txCallBack == NULL)
    {
        return -1;
    }
    if (canChannel > 5)
    {
        return -1;
    }
    // IRQ_DISABLE();
    g_driverCanManage[canChannel].canTxCallFun = txCallBack;
    // IRQ_ENABLE();
    return 0;
}

/*************************************************
   Function:        CanHalNmTransmit
   Description:     Transmit CAN Network Management (NM) message with strict gating
   Input:           canHandle - CAN driver handle (high byte: channel, low byte: instance index)
                    canId     - CAN identifier
                    canData   - CAN payload buffer
                    dlc       - Data length code (0..64)
                    fdFlag    - CAN FD / TX flag passed to driver
   Output:          None
   Return:          0  - Transmission successful
                    <0 / CAN_ERROR_* - Transmission rejected or driver error
   Others:          Checks TX enable, bus error state, no-ack error state and test mode
                    Retries once after 2 ms if TX buffer is full
                    On successful transmit, starts TX supervision counter (txStartTimeCount)
 *************************************************/
int16_t CanHalNmTransmit(int16_t canHandle, uint32_t canId, uint8_t *canData, uint8_t dlc, uint8_t fdFlag)
{
    uint8_t canChannel;
    int16_t ret;
    if (canHandle < 0)
    {
        return -1;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return -1;
    }
    if (g_driverCanManage[canChannel].txMsgEnable <= 0)
    {
        return CAN_ERROR_TX_DISABLE;
    }
    if (g_driverCanManage[canChannel].BusErrorState)
    {
        return CAN_ERROR_BUS_ERROR;
    }

    if (g_driverCanManage[canChannel].busNoAckErrorState != 0x00)
    {
        return CAN_ERROR_BUS_ERROR;
    }

    if (g_canTestModeFlag[canChannel])
    {
        return CAN_ERROR_TEST_MODE;
    }
    ret = CanTransmit(canChannel, canId, dlc, canData, fdFlag);
    if (ret == CAN_ERROR_TX_BUFFER_FULL)
    {
        vTaskDelay(pdMS_TO_TICKS(2));
        ret = CanTransmit(canChannel, canId, dlc, canData, fdFlag);
    }
    if (ret == 0)
    {
        taskENTER_CRITICAL(); // disable interrupt
        if (g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
        {
            g_driverCanManage[canChannel].txStartTimeCount = 0x00;
        }
        taskEXIT_CRITICAL(); // enable interrupt
    }
    return ret;
}

/*************************************************
   Function:        CanHalNmReceive
   Description:     Receive CAN Network Management (NM) message
   Input:           canHandle  - CAN driver handle
                    timeOut_ms - Receive timeout in milliseconds
   Output:          pMsg       - Output buffer for received NM message
   Return:          0  - Receive successful
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel
                    CAN_ERROR_TIMEOUT        - Timeout or queue not ready
   Others:          Receives message index from RX queue and copies
                    message from internal RX buffer
 *************************************************/
int16_t CanHalNmReceive(int16_t canHandle, CanHalMsg_t *pMsg, uint32_t timeOut_ms)
{
    uint8_t canChannel;
    uint8_t index;
    QueueHandle_t queHandle;
    TickType_t tickWait;
    uint8_t data;

    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    // receive
    index = canHandle & 0xFF;
    // ��Ӧ֮ǰ������g_canDriverBufferList[canChannel][(canHandle&0xFF)].RxQueueHandle
    queHandle = g_canDriverBufferList[canChannel][index].RxQueueHandle;
    if (queHandle == NULL)
    {
        return CAN_ERROR_TIMEOUT;
    }
    if (timeOut_ms != portMAX_DELAY)
    {
        tickWait = pdMS_TO_TICKS(timeOut_ms);
    }
    else
    {
        tickWait = portMAX_DELAY;
    }
    // ��ȷ��Ӧ�����ݴ��ķ���
    if (xQueueReceive(queHandle, &data, tickWait) != pdPASS)
    {
        return CAN_ERROR_TIMEOUT;
    }
    memcpy(pMsg, &(g_canDriverBufferList[canChannel][index].pMsgBufferRx[data]), sizeof(CanHalMsg_t));
    return 0;
}

/*************************************************
   Function:        CanHalRecieveIsTimeOut
   Description:     Check whether CAN message has been received since last check
   Input:           canHandle - CAN driver handle
   Output:          None
   Return:          1  - Message received
                    0  - No message received
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel
   Others:          Clears internal canRxFlag after detection
                    Typically used for timeout supervision
 *************************************************/
int16_t CanHalRecieveIsTimeOut(int16_t canHandle)
{
    uint8_t canChannel;
    uint8_t index;
    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    index = canHandle & 0xFF;
    if (g_canDriverBufferList[canChannel][index].canRxFlag)
    {
        g_canDriverBufferList[canChannel][index].canRxFlag = 0;
        return 1;
    }
    return 0;
}

/*************************************************
   Function:        CanHalAppMsgEnable
   Description:     Enable application-level CAN message processing
   Input:           canHandle - CAN driver handle
   Output:          None
   Return:          0  - Success
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel
   Others:          Increments AppMsgEnable counter in critical section
                    Supports nested enable/disable usage
 *************************************************/
int16_t CanHalAppMsgEnable(int16_t canHandle)
{
    uint8_t canChannel;
    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    taskENTER_CRITICAL();
    g_driverCanManage[canChannel].AppMsgEnable++;
    taskEXIT_CRITICAL();
    return 0;
}

/*************************************************
   Function:        CanHalAppMsgDisable
   Description:     Disable application-level CAN message processing
   Input:           canHandle - CAN driver handle
   Output:          None
   Return:          0  - Success
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel
   Others:          Decrements AppMsgEnable counter in critical section
 *************************************************/
int16_t CanHalAppMsgDisable(int16_t canHandle)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    taskENTER_CRITICAL();
    g_driverCanManage[canChannel].AppMsgEnable--;
    taskEXIT_CRITICAL();
    return 0;
}

/*************************************************
   Function:        CanHalTxMsgEnable
   Description:     Enable CAN transmit messages for specified channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          0  - Success
                    CAN_ERROR_INVALID_HANDLE - Invalid channel
   Others:          Sets txMsgEnable flag in critical section
 *************************************************/
int16_t CanHalTxMsgEnable(uint8_t canChannel)
{
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    taskENTER_CRITICAL();
    g_driverCanManage[canChannel].txMsgEnable = 1;
    taskEXIT_CRITICAL();
    return 0;
}

/*************************************************
   Function:        CanHalTxMsgDisable
   Description:     Disable CAN transmit messages for specified channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          0  - Success
                    CAN_ERROR_INVALID_HANDLE - Invalid channel
   Others:          Clears txMsgEnable flag in critical section
 *************************************************/
int16_t CanHalTxMsgDisable(uint8_t canChannel)
{
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    taskENTER_CRITICAL();
    g_driverCanManage[canChannel].txMsgEnable = 0;
    taskEXIT_CRITICAL();
    return 0;
}

/*************************************************
   Function:        CanHalGetTimeCountSinceLastCanTx
   Description:     Get time counter since last CAN transmission
   Input:           canHandle - CAN driver handle
   Output:          None
   Return:          Time count value
                    0xFFFFFFFF - Invalid handle or channel
   Others:          Value is read inside critical section
                    Time base depends on periodic timer implementation
 *************************************************/
uint32_t CanHalGetTimeCountSinceLastCanTx(int16_t canHandle)
{
    uint32_t timeCount;
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return 0xFFFFFFFF;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return 0xFFFFFFFF;
    }
    taskENTER_CRITICAL(); // disable interrupt
    timeCount = g_driverCanManage[canChannel].txStartTimeCount;
    taskEXIT_CRITICAL(); // enable interrupt
    return timeCount;
}

/*************************************************
   Function:        CanControllerBusOffError
   Description:     Check CAN controller bus-off error status
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          0 - Bus-off error detected
                    1 - No bus-off error
   Others:          Reads platform-specific BusOff interrupt flags
                    Sets BusErrorState and disables app messages on error
 *************************************************/
static int16_t CanControllerBusOffError(uint8_t canChannel)
{
    uint8_t busErr = 0x00;

    switch (canChannel)
    {
    case 0:
        busErr = CAN0_BusOffIntFlag;
        //CAN0_BusOffIntFlag = 0;
        break;
    case 1:
        busErr = CAN1_BusOffIntFlag;
        //CAN1_BusOffIntFlag = 0;
        break;
    case 2:
        // busErr = (CAN_GetESR1BufForCbf(CAN_ID_2) >> 2) & 0x01;
        break;
#if (CAN_CHANNEL_NUMBER_MAX == 6)
    case 3: // ECAN
        pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
        break;
    case 4: // CCAN
        pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
        break;
    case 5:
        pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
        break;
#endif
    default:
        break;
    }
    if (busErr)
    {
        g_driverCanManage[canChannel].busErrorAppDiableFlag = 0x01;
        g_driverCanManage[canChannel].BusErrorState = 0x01;
        return 0;
    }
    return 1;
}

/*************************************************
   Function:        CanHalClearBusoffAppDisableFlag
   Description:     Clear application disable flag caused by bus-off error
   Input:           canHandle - CAN driver handle
   Output:          None
   Return:          0  - Success
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel
   Others:          Clears busErrorAppDiableFlag for the channel
 *************************************************/
uint8_t CanHalClearBusoffAppDisableFlag(int16_t canHandle)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    g_driverCanManage[canChannel].busErrorAppDiableFlag = 0x00;
    return 0;
}

/*************************************************
   Function:        CanHalGetIsBusOffError
   Description:     Check whether CAN bus-off error exists
   Input:           canHandle - CAN driver handle
   Output:          None
   Return:          0 - Bus-off error detected
                    1 - No bus-off error
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel
   Others:          Internally calls CanControllerBusOffError()
 *************************************************/
int16_t CanHalGetIsBusOffError(int16_t canHandle)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }

    return CanControllerBusOffError(canChannel);
}

/*************************************************
   Function:        CanHalEnableTransmitLoopBack
   Description:     Enable transmit loopback for specified CAN handle instance
   Input:           canHandle - CAN driver handle (high byte: channel, low byte: instance index)
   Output:          None
   Return:          0  - Success
                    -1 - Invalid handle or channel out of range
   Others:          Enables send-loopback mode for the target CAN buffer instance
                    Loopback frames can be dispatched to local RX path depending on configuration
 *************************************************/
int16_t CanHalEnableTransmitLoopBack(int16_t canHandle)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return -1;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX) 
    {
        return -1;
    }
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].enableSendLoopBack = 0x01;
    return 0;
}

/*************************************************
   Function:        CanHalDiagnosticTransmit
   Description:     Transmit diagnostic CAN message with basic gating and retry
   Input:           canHandle - CAN driver handle (high byte: channel, low byte: instance index)
                    canId     - CAN identifier (standard/extended as encoded by upper layer)
                    canData   - CAN payload buffer
                    dlc       - Data length code (0..64)
                    fdFlag    - CAN FD flag / transmit flag passed to driver
   Output:          None
   Return:          0  - Transmission successful
                    <0 / CAN_ERROR_* - Transmission rejected or driver error
   Others:          Checks TX enable, bus error state and test mode before transmission
                    Retries once after 10 ms if driver reports TX buffer full
                    On successful transmission, starts TX timeout counter (txStartTimeCount) if stopped
 *************************************************/
int16_t CanHalDiagnosticTransmit(int16_t canHandle, uint32_t canId, uint8_t *canData, uint8_t dlc, uint8_t fdFlag)
{
    uint8_t canChannel;
    int16_t ret;
    
    if (canHandle < 0)
    {
        return -1;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return -1;
    }
    if (g_driverCanManage[canChannel].txMsgEnable <= 0)
    {
        return CAN_ERROR_TX_DISABLE;
    }
    if (g_driverCanManage[canChannel].BusErrorState)
    {
        return CAN_ERROR_BUS_ERROR;
    }
    if (g_canTestModeFlag[canChannel])
    {
        return CAN_ERROR_TEST_MODE;
    }
    ret = CanTransmit(canChannel, canId, dlc, canData, fdFlag);
    if (ret == CAN_ERROR_TX_BUFFER_FULL)
    {
        vTaskDelay(pdMS_TO_TICKS(10));
        ret = CanTransmit(canChannel, canId, dlc, canData, fdFlag);
    }
    if (ret == 0)
    {
        taskENTER_CRITICAL(); // disable interrupt
        if (g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
        {
            g_driverCanManage[canChannel].txStartTimeCount = 0x00;
        }
        taskEXIT_CRITICAL(); // enable interrupt
    }
    return ret;
}

/*************************************************
   Function:        CanHalDiagnosticReceive
   Description:     Receive diagnostic CAN message from per-instance RX queue
   Input:           canHandle  - CAN driver handle (high byte: channel, low byte: instance index)
                    timeOut_ms - Receive timeout in milliseconds (portMAX_DELAY for infinite wait)
   Output:          pMsg       - Output buffer for received CAN message
   Return:          0  - Receive successful
                    CAN_ERROR_INVALID_HANDLE - Invalid handle or channel out of range
                    CAN_ERROR_TIMEOUT        - Timeout or queue not ready
   Others:          Receives an index token from RxQueueHandle, then copies the message
                    from the instance RX buffer (ring) into pMsg
 *************************************************/
int16_t CanHalDiagnosticReceive(int16_t canHandle, CanHalMsg_t *pMsg, uint32_t timeOut_ms)
{
    uint8_t canChannel;
    uint8_t index;
    QueueHandle_t queHandle;
    TickType_t tickWait;
    uint8_t data;

    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }

    index = canHandle & 0xFF;
    queHandle = g_canDriverBufferList[canChannel][index].RxQueueHandle;
    if (queHandle == NULL)
    {
        return CAN_ERROR_TIMEOUT;
    }
    if (timeOut_ms != portMAX_DELAY)
    {
        tickWait = pdMS_TO_TICKS(timeOut_ms);
    }
    else
    {
        tickWait = portMAX_DELAY;
    }

    if (xQueueReceive(queHandle, &data, tickWait) != pdPASS)
    {
        return CAN_ERROR_TIMEOUT;
    }

    memcpy(pMsg, &(g_canDriverBufferList[canChannel][index].pMsgBufferRx[data]), sizeof(CanHalMsg_t));
    return 0;
}

#if 0
static int16_t CanTransmitFromIsr(uint8_t u8Channel, uint32_t id, uint8_t u8Len, uint8_t* pu8CmdData,uint8_t fdFlag)
{
    cy_pstc_canfd_type_t pstCanType=NULL;
    cy_stc_canfd_msg_t stcMsg;
    if(fdFlag&0x01)
    {
        stcMsg.canFDFormat = true;
        if(fdFlag&(0x01<<1))
        {
            stcMsg.canFDFormatBrs = true;
        }
        else
        {
            stcMsg.canFDFormatBrs = false;
        }
    }
    else
    {
        stcMsg.canFDFormat = false;
        stcMsg.canFDFormatBrs = false;
    }    
    stcMsg.idConfig.extended = false;
    stcMsg.idConfig.identifier = id;
    stcMsg.dataConfig.dataLengthCode = u8Len;
    stcMsg.dataConfig.data[0] = pu8CmdData[3]<<24 | pu8CmdData[2]<<16 | pu8CmdData[1]<<8 | pu8CmdData[0];
    stcMsg.dataConfig.data[1] = pu8CmdData[7]<<24 | pu8CmdData[6]<<16 | pu8CmdData[5]<<8 | pu8CmdData[4];
    //cy_en_canfd_status_t cantxstate;
    
    switch(u8Channel)
    {
    case 0:
      pstCanType = T2G_CANFD1_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD1_TYPE, TBufIndex[0], &stcMsg);
      break;
    case 1:
      pstCanType = T2G_CANFD2_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD2_TYPE, TBufIndex[1], &stcMsg);
      break;
    case 2:
      pstCanType = T2G_CANFD3_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD3_TYPE, TBufIndex[2], &stcMsg);
      break;
    case 3:
      pstCanType = T2G_CANFD4_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD4_TYPE, TBufIndex[3], &stcMsg);
      break;
    case 4:
      pstCanType = T2G_CANFD5_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD5_TYPE, TBufIndex[4], &stcMsg);
      break;
    case 5:
      pstCanType = T2G_CANFD6_TYPE;
      //cantxstate = Cy_CANFD_UpdateAndTransmitMsgBuffer(T2G_CANFD6_TYPE, TBufIndex[5], &stcMsg);
      break;
    }
    //COMMON_DISABLE_INTERRUPTS();
    if(0 != (pstCanType->M_TTCAN.unTXBRP.u32Register & (0x00000001<<g_canControllerTxBufferIndex1[u8Channel])))
    {
      COMMON_ENABLE_INTERRUPTS();
      return CAN_ERROR_TX_BUFFER_FULL;
    }    
    Cy_CANFD_UpdateAndTransmitMsgBuffer(pstCanType, g_canControllerTxBufferIndex1[u8Channel], &stcMsg);
     pstCanType->M_TTCAN.unIE.stcField.u1PEAE  = 1;
    g_canControllerTxBufferIndex1[u8Channel]++;
    if(g_canControllerTxBufferIndex1[u8Channel]>=32)
    {
      g_canControllerTxBufferIndex1[u8Channel] = 16;
    }
    g_u16CanTransmitCnt[u8Channel] += 1;
    g_driverCanManage[u8Channel].txTimeOutCount = 0;
    //COMMON_ENABLE_INTERRUPTS();
    
    return 0;    
}

int16_t CanHalTransmitFromIsr(uint8_t canChannel,uint32_t canId,uint8_t *canData,uint8_t dlc,uint8_t fdFlag)
{
    int16_t ret;

    if(g_driverCanManage[canChannel].txMsgEnable<=0)
    {
        return CAN_ERROR_TX_DISABLE;
    }
    if(g_driverCanManage[canChannel].busNoAckErrorState!=0)
    {
      return CAN_ERROR_BUS_ERROR;
    }
    if((g_driverCanManage[canChannel].AppMsgEnable<=0)&&(canId<0x600))
    {
      return CAN_ERROR_BUS_OFF_LINE;
    }  
    if(g_driverCanManage[canChannel].busErrorAppDiableFlag)
    {
      return CAN_ERROR_BUS_ERROR;
    }
    if(g_canTestModeFlag[canChannel])
    {
      return CAN_ERROR_TEST_MODE;
    }
    //T2G???,�滻ΪT2G����
    ret = CanTransmitFromIsr(canChannel, canId, dlc,canData,fdFlag);
    if(ret==0)
    {
      COMMON_DISABLE_INTERRUPTS();//disable interrupt
      if(g_driverCanManage[canChannel].txStartTimeCount == 0xffffffff)
      {
          g_driverCanManage[canChannel].txStartTimeCount = 0x00;
      }
      COMMON_ENABLE_INTERRUPTS();//enable interrupt
    }
    return ret;
}
#endif
/*************************************************
   Function:        CanControllerReset
   Description:     Reset and re-initialize CAN controller after error recovery
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          None
   Others:          Re-initializes CAN controller with configured bitrates and mode
                    Clears bus-off interrupt flag (platform-specific)
                    Resets BusErrorState for the specified channel
                    Uploads "BusoffRecover" log for traceability
 *************************************************/
static void CanControllerReset(uint8_t canChannel)
{
    CanInit(canChannel, CANFD_ENABLE_CONFIG, E_CAN_500K, E_CAN_2000K, E_CAN_MODE_NORMAL);
    CAN1_BusOffIntFlag = 0U;
    g_driverCanManage[canChannel].BusErrorState = 0x00;
    LogHalUpLoadLog("BusoffRecover");
}

/*************************************************
   Function:        CanCancelTransmit
   Description:     Cancel all pending CAN transmit requests for specified channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          None
   Others:          Intended to abort all TX buffers/mailboxes of the target CAN controller
                    Platform-dependent register mapping is currently commented out
                    If enabled, TXBCR (Transmit Buffer Cancellation Request) would be set
                    to cancel all pending transmit buffers
 *************************************************/
static void CanCancelTransmit(uint8_t canChannel)
{
    switch (canChannel)
    {
//     case 0:
//             pstCanType = &T2G_CANFD1_TYPE->M_TTCAN;
//             break;
//     case 1:
//             pstCanType = &T2G_CANFD2_TYPE->M_TTCAN;
//             break;
//     case 2:
//             pstCanType = &T2G_CANFD3_TYPE->M_TTCAN;
//             break;
#if (CAN_CHANNEL_NUMBER_MAX == 6)
//     case 3:
//             pstCanType = &T2G_CANFD4_TYPE->M_TTCAN;
//             break;
//     case 4:
//             pstCanType = &T2G_CANFD5_TYPE->M_TTCAN;
//             break;
//     case 5:
//             pstCanType = &T2G_CANFD6_TYPE->M_TTCAN;
//             break;
#endif
    default:
        break;
    }
    //     pstCanType->unTXBCR.u32Register = 0xFFFFFFFFul;
}

/*************************************************
   Function:        CanHalCanBusOffProcessDisalbe
   Description:     Disable CAN bus-off recovery processing for specified channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          None
   Others:          Clears bus-off process enable flag
                    Channel boundary is checked internally
 *************************************************/
void CanHalCanBusOffProcessDisalbe(uint8_t canChannel)
{
    if (canChannel > (CAN_CHANNEL_NUMBER_MAX - 1))
    {
        return;
    }
    g_canBusOffProcessFlag[canChannel] = 0;
}

/*************************************************
   Function:        CanHalCanBusOffProcessEnalbe
   Description:     Enable CAN bus-off recovery processing for specified channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          None
   Others:          Sets bus-off process enable flag
                    Used by CAN error management logic
 *************************************************/
void CanHalCanBusOffProcessEnalbe(uint8_t canChannel)
{
    if (canChannel > (CAN_CHANNEL_NUMBER_MAX - 1))
    {
        return;
    }

    g_canBusOffProcessFlag[canChannel] = 1;
}

/*************************************************
   Function:        CanHalCanBusOffRecover
   Description:     Periodic CAN bus-off recovery handler
   Input:           cycleTime_ms - Periodic task cycle time in milliseconds
   Output:          None
   Return:          None
   Others:          Performs CAN controller reset on bus-off
                    Counts bus-off occurrences and reports events
                    Triggers user callback when threshold is exceeded
 *************************************************/
static void CanHalCanBusOffRecover(uint32_t cycleTime_ms)
{
    static uint32_t cycleTimeCount = 0;
    static uint8_t busOffEvent[6];
    uint8_t i;
    cycleTimeCount += cycleTime_ms;
    if (cycleTimeCount >= 100)
    {
        return;
    }
    cycleTimeCount = 0;
    for (i = 1; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        if (g_canBusOffProcessFlag[i])
        {
            if (CanControllerBusOffError(i) == 0)
            {
                if (g_driverCanManage[i].busOffCount < 100)
                {
                    g_driverCanManage[i].busOffCount++;
                }
                CanControllerReset(i);
                g_driverCanManage[i].busErrorAppDiableFlag = 0x00;
            }
            if (g_driverCanManage[i].busOffCount >= 4)
            {
                if (busOffEvent[i] == 0x00)
                {
                    busOffEvent[i] = 0x01;
                    if (g_driverCanManage[i].busOffEventFun != NULL)
                    {
                        g_driverCanManage[i].busOffEventFun(0x01);
                    }
                }
            }
            else
            {
                if (busOffEvent[i] == 0x01)
                {
                    busOffEvent[i] = 0x00;
                    if (g_driverCanManage[i].busOffEventFun != NULL)
                    {
                        g_driverCanManage[i].busOffEventFun(0x00);
                    }
                }
            }
        }
    }
}

/*************************************************
   Function:        CanHalCanBusLoadCheck
   Description:     Monitor CAN bus load and detect overload condition
   Input:           cycleTime_ms - Periodic task cycle time in milliseconds
   Output:          None
   Return:          None
   Others:          Counts received messages within 100 ms window
                    Sets loadHighFlag when message count exceeds threshold
 *************************************************/
static void CanHalCanBusLoadCheck(uint32_t cycleTime_ms)
{
    uint8_t i;
    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        uint32_t msgCount;
        g_driverCanManage[i].loadTimeCount += cycleTime_ms;
        if (g_driverCanManage[i].loadTimeCount >= 100)
        {
            g_driverCanManage[i].loadTimeCount = 0;
            taskENTER_CRITICAL();
            msgCount = g_driverCanManage[i].loadMsgCount;
            g_driverCanManage[i].loadMsgCount = 0;
            taskEXIT_CRITICAL();

            if (msgCount > 300)
            {
                g_driverCanManage[i].loadHighFlag = 1;
            }
            else
            {
                g_driverCanManage[i].loadHighFlag = 0;
            }
        }
    }
}

/*************************************************
   Function:        CanHalCanBusOffCycleProcess
   Description:     Periodic CAN error state machine processing
   Input:           cycleTime_ms - Periodic task cycle time in milliseconds
   Output:          None
   Return:          None
   Others:          Handles no-ACK, stuff error and overload conditions
                    Controls TX cancel, timeout and recovery callbacks
                    Integrates bus load and bus-off recovery logic
 *************************************************/
void CanHalCanBusOffCycleProcess(uint32_t cycleTime_ms)
{
    uint8_t i;
    uint32_t txTimeOut;

    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        if (g_driverCanManage[i].txFailState)
        {
            txTimeOut = 10;
        }
        else
        {
            txTimeOut = 90;
        }
        if (g_driverCanManage[i].busNoAckErrorState == 0x00) // 无错误
        {
            taskENTER_CRITICAL();
            if (g_driverCanManage[i].txTimeOutCount != 0xFFFFFFFF)
            {
                if (g_driverCanManage[i].txTimeOutCount < txTimeOut)
                {
                    g_driverCanManage[i].txTimeOutCount += cycleTime_ms;
                    taskEXIT_CRITICAL();
                }
                else
                {
                    taskEXIT_CRITICAL();
                    if (0 == g_driverCanManage[i].BusErrorState)
                    {
                        if (g_driverCanManage[i].noAckError) // no ack
                        {
                            g_driverCanManage[i].noAckError = 0x00;

                            g_driverCanManage[i].busErrorAppDiableFlag = 0x00;
                            g_driverCanManage[i].busNoAckErrorState = 0x01;
                            g_driverCanManage[i].noAckTimeCount = 0x00;
                            g_driverCanManage[i].txFailState = 0x01;
                            g_driverCanManage[0].nmNoackState = 0x01;
                            CanCancelTransmit(i);
                        }
                        else if (g_driverCanManage[i].stuffError) // can not connected
                        {
                            g_driverCanManage[i].busErrorAppDiableFlag = 0x00;
                            g_driverCanManage[i].stuffError = 0x00;
                            g_driverCanManage[i].busNoAckErrorState = 0x03;
                            g_driverCanManage[i].noAckTimeCount = 0x00;
                            g_driverCanManage[i].txFailState = 0x01;
                            CanCancelTransmit(i);
                        }
                        else if (g_driverCanManage[i].loadHighFlag)
                        {
                            g_driverCanManage[i].busNoAckErrorState = 0x01;
                            g_driverCanManage[i].noAckTimeCount = 0x00;
                            g_driverCanManage[i].txFailState = 0x01;
                            CanCancelTransmit(i);
                            TBOX_PRINT("can load high txb\r\n");
                        }
                    }
                }
            }
            else
            {
                taskEXIT_CRITICAL();
            }
        }
        else if (g_driverCanManage[i].busNoAckErrorState == 0x01) // error
        {
            if (g_driverCanManage[i].noAckTimeCount < 100)
            {
                g_driverCanManage[i].noAckTimeCount += cycleTime_ms;
            }
            else
            {
                g_driverCanManage[i].txTimeOutCount = 0xFFFFFFFF;
                g_driverCanManage[i].busNoAckErrorState = 0x00;
                if (g_driverCanManage[i].loadHighFlag == 0)
                {
                    if ((g_driverCanManage[i].errorRecoverFun != NULL) && (g_driverCanManage[i].AppMsgEnable > 0))
                    {

                        g_driverCanManage[i].errorRecoverFun();
                    }
                }
            }
        }
        else if (3 == g_driverCanManage[i].busNoAckErrorState) // recover delay
        {
            if (g_driverCanManage[i].noAckTimeCount < 100)
            {
                g_driverCanManage[i].noAckTimeCount += cycleTime_ms;
            }
            else
            {
                g_driverCanManage[i].txTimeOutCount = 0xFFFFFFFF;
                g_driverCanManage[i].busNoAckErrorState = 0x00;
                if ((g_driverCanManage[i].errorRecoverFun != NULL) && (g_driverCanManage[i].AppMsgEnable > 0))
                {
                    g_driverCanManage[i].errorRecoverFun();
                }
            }
        }
        else
        {
            g_driverCanManage[i].busNoAckErrorState = 0;
        }
    }
    CanHalCanBusLoadCheck(cycleTime_ms);
    CanHalCanBusOffRecover(cycleTime_ms);
}

/*************************************************
   Function:        CanHalSetCanTestMode
   Description:     Enable or disable CAN test mode for specified channel
   Input:           canChannel - CAN channel index
                    modeFlag   - Test mode flag (0:disable, 1:enable)
   Output:          None
   Return:          None
   Others:          Test mode disables normal CAN TX gating logic
 *************************************************/
void CanHalSetCanTestMode(uint8_t canChannel, uint8_t modeFlag)
{
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return;
    }
    g_canTestModeFlag[canChannel] = modeFlag;
}

/*************************************************
   Function:        CanMsgDispatch
   Description:     Dispatch received CAN message to registered handlers
   Input:           pMsg              - Received CAN message
                    pCanDriverBuffer  - CAN driver buffer list
                    maxCanInstanse    - Number of instances
   Output:          None
   Return:          None
   Others:          Supports standard and extended ID filtering
                    Optional user filter callback supported
                    Copies message into RX ring buffer and notifies task
 *************************************************/
static void CanMsgDispatch(CanHalMsg_t *pMsg, CanBufferHal_t *pCanDriverBuffer, uint16_t maxCanInstanse)
{
    uint16_t i;
    uint8_t data;
    uint8_t extended;
    uint32_t canId;

    extended = (pMsg->canId >> 31) & 0x01;
    canId = pMsg->canId & 0x7FFFFFFF;

    for (i = 0; i < maxCanInstanse; i++)
    {
        if ((0 == pCanDriverBuffer[i].enableSendLoopBack) && pMsg->txFlag)
        {
            continue;
        }
        if (pCanDriverBuffer[i].pFilerFun != NULL) // ע��,����m_netManageSgmwGWConfigure[]��wakeUPMsgCheckFun,����EcanWakeupMsgCheck
        {                                          // �����ǿ��յ���CAN��ID�Ƿ���g_canWakeMsgList[],�ڵĻ�����0,�˳�ѭ��;���򷵻�1
            if (pCanDriverBuffer[i].pFilerFun(pMsg->canId, pMsg->canData, pMsg->dlc) != 0)
            {
                continue;
            }
        }
        else
        {
            if (extended)
            {
                // filter process
                if (pCanDriverBuffer[i].filter.useExdtFilter)
                {
                    if (canId < pCanDriverBuffer[i].filter.canIdExtdMin)
                    {
                        continue;
                    }
                    if (canId > pCanDriverBuffer[i].filter.canIdExtdMax)
                    {
                        continue;
                    }
                }
                else
                {
                    continue;
                }
            }
            else // ��׼CAN ID
            {
                if (pCanDriverBuffer[i].filter.useStdFilter)
                {
                    if (canId < pCanDriverBuffer[i].filter.canIdStdMin)
                    {
                        continue;
                    }
                    if (canId > pCanDriverBuffer[i].filter.canIdStdMax)
                    {
                        continue;
                    }
                }
                else
                {
                    continue;
                }
            }
        }

        // dispatch data
        if (pCanDriverBuffer[i].canUseFlag)
        {
            pCanDriverBuffer[i].canRxFlag = 1;
            if (pCanDriverBuffer[i].pMsgBufferRx == NULL) //
            {
                continue;
            }
            memcpy(&(pCanDriverBuffer[i].pMsgBufferRx[pCanDriverBuffer[i].msgRxIndexIn]), pMsg, sizeof(CanHalMsg_t)); // ���յ��ı���
            data = pCanDriverBuffer[i].msgRxIndexIn;
            pCanDriverBuffer[i].msgRxIndexIn++;
            if (pCanDriverBuffer[i].msgRxIndexIn >= pCanDriverBuffer[i].msgRxBufferSize)
            {
                pCanDriverBuffer[i].msgRxIndexIn = 0;
            }
            xQueueSend(pCanDriverBuffer[i].RxQueueHandle, &data, 0);
        }
    }
}

/*************************************************
   Function:        CanHalReceiveTask
   Description:     CAN receive task for message dispatching
   Input:           pvParameters - FreeRTOS task parameter (unused)
   Output:          None
   Return:          None
   Others:          Receives messages from RX queue
                    Copies data from ISR buffer
                    Dispatches messages to application buffers
 *************************************************/
void CanHalReceiveTask(void *pvParameters)
{
    uint8_t canChannel;
    uint8_t msgIndex;
    CanHalMsg_t canMsg;
    uint16_t queueData;

    g_allCanRxBuffer.msgRxIndexIn = 0;
    g_allCanRxBuffer.rxQueueHandle = xQueueCreate(ALL_CAN_RX_BUFFER_SIZE, // The number of items the queue can hold.
                                                  sizeof(uint16_t));
    while (1)
    {
        if (xQueueReceive(g_allCanRxBuffer.rxQueueHandle, &queueData, 0xFFFFFFFF) != pdPASS)
        {
            continue;
        }
        canChannel = queueData >> 8;
        msgIndex = queueData & 0xFF;
        // receive from can interrupt
        memcpy(&canMsg, &(g_allCanRxBuffer.msgRxBuffer[msgIndex]), sizeof(CanHalMsg_t));

        if (canChannel < CAN_CHANNEL_NUMBER_MAX)
        {
            CanMsgDispatch(&canMsg, g_canDriverBufferList[canChannel], CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX);
        }
        else
        {

        }
    }
}

/*************************************************
   Function:        CanHalTimer1msCallBack
   Description:     1 ms periodic timer callback for CAN timing statistics
   Input:           None
   Output:          None
   Return:          None
   Others:          Increments TX start time counters for all channels
 *************************************************/
void CanHalTimer1msCallBack(void)
{
    uint8_t i;

    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        if (g_driverCanManage[i].txStartTimeCount < 10000000)
        {
            g_driverCanManage[i].txStartTimeCount++;
        }
    }
}

/*************************************************
   Function:        CanHalResetHardware
   Description:     Reset CAN controller hardware by handle
   Input:           canHandle - CAN driver handle
   Output:          None
   Return:          0  - Reset successful
                    CAN_ERROR_INVALID_HANDLE - Invalid handle
   Others:          Extracts CAN channel from handle internally
 *************************************************/
int16_t CanHalResetHardware(int16_t canHandle)
{
    uint8_t canChannel;

    if (canHandle < 0)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return CAN_ERROR_INVALID_HANDLE;
    }
    CanControllerReset(canChannel);
    return 0;
}

/*************************************************
   Function:        CanHalEnableCanWakeup
   Description:     Enable CAN wake-up detection for specified channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          None
   Others:          Sets internal wake-up enable flag
 *************************************************/
void CanHalEnableCanWakeup(uint8_t canChannel)
{
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return;
    }
    g_canWakeUpFlag[canChannel] = 1;
}

extern void WDOG_Refresh(void);
/*************************************************
   Function:        CanHalTestMain
   Description:     CAN transmission test routine
   Input:           None
   Output:          None
   Return:          None
   Others:          Demonstrates CAN send with retry on BUSY
                    Used for validation and bring-up testing
                    Not intended for production build
 *************************************************/
void CanHalTestMain(void)
{
    unsigned char CAN0_TxData[64]; // 定义发送使用的数组
    unsigned int i;
    ResultStatus_t can0SendRet;

    // System_Init();               //初始化系统的硬件和全局变量

    for (i = 0; i < 64; i++)
    {
        CAN0_TxData[i] = 0x55;
    }

    // 测试CAN0模块
    //  while(1)
    {
        WDOG_Refresh(); // 喂狗
        CAN0_TxData[0]++;

        // 发送 CAN 报文的举例
        can0SendRet = CAN_Send(CAN_ID_0, 2, &g_Can0TxRxInfo, 0x389, CAN0_TxData); // 使用邮箱2发送报文
                                                                                  // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
        if (can0SendRet == BUSY) // CAN0 发送函数的返回变量
        {
            can0SendRet = CAN_Send(CAN_ID_0, 3, &g_Can0TxRxInfo, 0x389, CAN0_TxData); // 使用邮箱3发送报文
                                                                                      // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
        }
        if (can0SendRet == BUSY) // CAN0 发送函数的返回变量
        {
            can0SendRet = CAN_Send(CAN_ID_0, 4, &g_Can0TxRxInfo, 0x389, CAN0_TxData); // 使用邮箱4发送报文
                                                                                      // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
        }

        can0SendRet = CAN_Send(CAN_ID_0, 3, &g_Can0TxRxInfo, 0x589, CAN0_TxData); // 使用邮箱3发送报文
                                                                                  // 参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
#if 0
        if(CAN0_RxIntFlag > 0x00)    //CAN0接收一帧数据完成标志
        {
            CAN0_RxIntFlag = 0x00;    //CAN0接收一帧数据完成标志
            TBOX_PRINT("recv a frame can data\r\n");

            // COMMON_Delay_ms(100);    //延时100毫秒
            can0SendRet = CAN_Send(CAN_ID_0, 4, &g_Can0TxRxInfo, 0x456, CAN0_RxBuf.data, 4);//使用邮箱4发送报文
                            //参数：CAN模块序号、邮箱序号、信息类型数组、信息ID、存储数据的数组、本地优先级
        }
#endif
        if (CAN0_BusOffIntFlag > 0) // CAN0 的BusOff中断进入标志
        {
            CAN0_Init(0, 0, E_CAN_500K, E_CAN_500K); // 初始化CAN0模块
        }
    }
}

/*************************************************
   Function:        CanHalSetReceiveCanNmFlag
   Description:     Set CAN Network Management receive flag according to CAN ID
   Input:           canId - Received CAN message identifier
   Output:          None
   Return:          None
   Others:          If the received CAN ID falls within the NM wake-up ID range,
                    the global NM receive flag will be set.
                    Otherwise, the flag will be cleared.
                    This flag is typically used to indicate reception of
                    CAN NM wake-up or management frames.
 *************************************************/
static void CanHalSetReceiveCanNmFlag(uint32_t canId)
{
    if((canId >= CAN_NM_WAKEUP_ID_MIN) && (canId <= CAN_NM_WAKEUP_ID_MAX))
    {
        g_receiveCanNmFlag = 1U;
    }
    else
    {
        g_receiveCanNmFlag = 0U;
    }
}

/*************************************************
 Function:        CanHalClearReceiveCanNmFlag
 Description:     Clears the CAN NM (Network Management) receive flag
 Input:           None
 Output:          None
 Return:          None
 Others:          Resets the global flag g_receiveCanNmFlag to 0, typically used after processing NM messages to avoid repeated handling
 *************************************************/
void CanHalClearReceiveCanNmFlag(void)
{
    g_receiveCanNmFlag = 0U;
}

/*************************************************
   Function:        CanHalReceiveCanNmFlagCheck
   Description:     Check whether CAN NM message has been received
   Input:           None
   Output:          None
   Return:          1 - CAN NM message received
                    0 - No CAN NM message received
   Others:          Reads global CAN NM receive flag
                    Typically used by NM state machine or wake-up logic
 *************************************************/
uint8_t CanHalReceiveCanNmFlagCheck(void)
{
    uint8_t ret = 0U;

    if(g_receiveCanNmFlag != 0U)
    {
        ret = 1U;
    }
    return ret;
}

/*************************************************
   Function:        CanHandleToChannel
   Description:     Convert CAN driver handle to CAN channel index
   Input:           canHandle - CAN driver handle
   Output:          pOutCh    - Output CAN channel index
   Return:          1 - Conversion successful
                    0 - Invalid handle or channel out of range
   Others:          CAN handle high byte represents channel number
                    Used for TX/RX path channel resolution
 *************************************************/
static uint8_t CanHandleToChannel(int16_t canHandle, uint8_t *pOutCh)
{
    uint8_t ch;

    if (canHandle < 0)
    {
        return 0U;
    }

    ch = (uint8_t)(((uint16_t)canHandle) >> 8);
    if (ch >= (uint8_t)CAN_CHANNEL_NUMBER_MAX)
    {
        return 0U;
    }

    *pOutCh = ch;
    return 1U;
}

/*************************************************
   Function:        CanHalTxCanSendHook
   Description:     Check whether CAN transmission is allowed for the channel
   Input:           canChannel - CAN channel index
   Output:          None
   Return:          1 - Transmission allowed
                    0 - Transmission forbidden
   Others:          Checks TX enable flag, test mode and bus error states
                    Can be overridden by project-specific logic
 *************************************************/
uint8_t CanHalTxCanSendHook(uint8_t canChannel)
{
    if (g_driverCanManage[canChannel].txMsgEnable <= 0) return 0U;
    if (g_canTestModeFlag[canChannel] != 0U) return 0U;
    if ((g_driverCanManage[canChannel].busNoAckErrorState != 0U) ||
        (g_driverCanManage[canChannel].busErrorAppDiableFlag != 0U) ||
        (g_driverCanManage[canChannel].BusErrorState != 0U)) return 0U;
    return 1U;
}

/*************************************************
   Function:        CanHalTxInit
   Description:     Initialize CAN transmit buffer pool and queues
   Input:           None
   Output:          None
   Return:          None
   Others:          Creates TX message queue and free index pool
                    Ensures one-time initialization
 *************************************************/
static void CanHalTxInit(void)
{
    uint8_t i;

    if (g_allCanTxBuffer.inited != 0U)
    {
        return;
    }

    g_allCanTxBuffer.txQueueHandle = xQueueCreate(ALL_CAN_TX_BUFFER_SIZE, sizeof(uint16_t));
    g_allCanTxBuffer.freeIdxQueueHandle = xQueueCreate(ALL_CAN_TX_BUFFER_SIZE, sizeof(uint8_t));

    /* 填充 free idx 池 */
    for (i = 0U; i < (uint8_t)ALL_CAN_TX_BUFFER_SIZE; i++)
    {
        (void)xQueueSend(g_allCanTxBuffer.freeIdxQueueHandle, &i, 0U);
    }

    g_allCanTxBuffer.inited = 1U;
}

/*************************************************
   Function:        CanHalTxWaitInitDone
   Description:     Wait for CAN TX task initialization completion
   Input:           waitTicks - Maximum wait ticks
   Output:          None
   Return:          0  - Initialization done
                    -1 - Timeout or failure
   Others:          Uses event group synchronization
 *************************************************/
static int16_t CanHalTxWaitInitDone(TickType_t waitTicks)
{
    EventBits_t bits;

    if (g_canTxEvt == NULL)
    {
        g_canTxEvt = xEventGroupCreate();
        if (g_canTxEvt == NULL)
        {
            return -1;
        }
    }

    bits = xEventGroupWaitBits(g_canTxEvt,
                              CAN_TX_EVT_INIT_DONE,
                              pdFALSE,
                              pdTRUE,
                              waitTicks);

    if ((bits & CAN_TX_EVT_INIT_DONE) == 0U)
    {
        return -1;
    }

    return 0;
}

/*************************************************
   Function:        CanHalTransmitQueued
   Description:     Enqueue CAN message for transmission (task context)
   Input:           canHandle - CAN driver handle
                    canId     - CAN identifier
                    canData   - CAN payload data
                    dlc       - Data length
                    txFlag    - TX attribute flags
                    prio      - Transmission priority
   Output:          None
   Return:          0  - Enqueue successful
                    <0 - Parameter or initialization error
                    CAN_ERROR_TX_BUFFER_FULL - Buffer exhausted
   Others:          Supports priority-based queue insertion
                    Blocks until TX task initialization completed
 *************************************************/
int16_t CanHalTransmitQueued(int16_t canHandle,
                             uint32_t canId,
                             const uint8_t *canData,
                             uint8_t dlc,
                             uint8_t txFlag,
                             CanTxPrio_e prio)
{
    uint8_t  ch;
    uint8_t  idx;
    uint16_t queueData;
    BaseType_t qret;

    if ((canData == NULL) || (dlc > 64U))
    {
        return -1;
    }

    if (CanHandleToChannel(canHandle, &ch) == 0U)
    {
        return -1;
    }

    if (CanHalTxWaitInitDone(pdMS_TO_TICKS(CAN_TX_ENQUEUE_TIMEOUT_MS)) != 0)
    {
        return -1;
    }

    if ((g_allCanTxBuffer.txQueueHandle == NULL) || (g_allCanTxBuffer.freeIdxQueueHandle == NULL))
    {
        return -1;
    }

    if (xQueueReceive(g_allCanTxBuffer.freeIdxQueueHandle,
                      &idx,
                      pdMS_TO_TICKS(CAN_TX_ENQUEUE_TIMEOUT_MS)) != pdPASS)
    {
        return CAN_ERROR_TX_BUFFER_FULL;
    }

    g_allCanTxBuffer.msgTxBuffer[idx].canId  = canId;
    g_allCanTxBuffer.msgTxBuffer[idx].dlc    = dlc;
    g_allCanTxBuffer.msgTxBuffer[idx].txFlag = txFlag;
    (void)memset(g_allCanTxBuffer.msgTxBuffer[idx].canData, 0, sizeof(g_allCanTxBuffer.msgTxBuffer[idx].canData));
    (void)memcpy(g_allCanTxBuffer.msgTxBuffer[idx].canData, canData, dlc);

    queueData = (uint16_t)(((uint16_t)ch << 8) | (uint16_t)idx);

    if (prio == CAN_TX_PRIO_HIGH)
    {
        qret = xQueueSendToFront(g_allCanTxBuffer.txQueueHandle,
                                 &queueData,
                                 pdMS_TO_TICKS(CAN_TX_ENQUEUE_TIMEOUT_MS));
    }
    else
    {
        qret = xQueueSendToBack(g_allCanTxBuffer.txQueueHandle,
                                &queueData,
                                pdMS_TO_TICKS(CAN_TX_ENQUEUE_TIMEOUT_MS));
    }

    if (qret != pdPASS)
    {
        (void)xQueueSend(g_allCanTxBuffer.freeIdxQueueHandle, &idx, 0U);
        return CAN_ERROR_TX_BUFFER_FULL;
    }

    return 0;
}

/*************************************************
   Function:        CanHalTransmitQueuedFromIsr
   Description:     Enqueue CAN message for transmission (ISR context)
   Input:           canHandle  - CAN driver handle
                    canId      - CAN identifier
                    canData    - CAN payload data
                    dlc        - Data length
                    txFlag     - TX attribute flags
                    prio       - Transmission priority
                    pHigherPriorityTaskWoken - Task wake flag
   Output:          None
   Return:          0  - Enqueue successful
                    <0 - Initialization or parameter error
                    CAN_ERROR_TX_BUFFER_FULL - Buffer exhausted
   Others:          Non-blocking, ISR-safe implementation
 *************************************************/
int16_t CanHalTransmitQueuedFromIsr(int16_t canHandle,
                                   uint32_t canId,
                                   const uint8_t *canData,
                                   uint8_t dlc,
                                   uint8_t txFlag,
                                   CanTxPrio_e prio,
                                   BaseType_t *pHigherPriorityTaskWoken)
{
    uint8_t  ch;
    uint8_t  idx;
    uint16_t queueData;
    BaseType_t qret;

    if ((canData == NULL) || (dlc > 64U))
    {
        return -1;
    }

    if (CanHandleToChannel(canHandle, &ch) == 0U)
    {
        return -1;
    }

    /* ISR：不阻塞等待 INIT_DONE */
    if ((g_canTxEvt == NULL) ||
        ((xEventGroupGetBitsFromISR(g_canTxEvt) & CAN_TX_EVT_INIT_DONE) == 0U) ||
        (g_allCanTxBuffer.txQueueHandle == NULL) ||
        (g_allCanTxBuffer.freeIdxQueueHandle == NULL))
    {
        return -1;
    }

    if (xQueueReceiveFromISR(g_allCanTxBuffer.freeIdxQueueHandle, &idx, pHigherPriorityTaskWoken) != pdPASS)
    {
        return CAN_ERROR_TX_BUFFER_FULL;
    }

    g_allCanTxBuffer.msgTxBuffer[idx].canId  = canId;
    g_allCanTxBuffer.msgTxBuffer[idx].dlc    = dlc;
    g_allCanTxBuffer.msgTxBuffer[idx].txFlag = txFlag;
    (void)memcpy(g_allCanTxBuffer.msgTxBuffer[idx].canData, canData, dlc);

    queueData = (uint16_t)(((uint16_t)ch << 8) | (uint16_t)idx);

    if (prio == CAN_TX_PRIO_HIGH)
    {
        qret = xQueueSendToFrontFromISR(g_allCanTxBuffer.txQueueHandle, &queueData, pHigherPriorityTaskWoken);
    }
    else
    {
        qret = xQueueSendToBackFromISR(g_allCanTxBuffer.txQueueHandle, &queueData, pHigherPriorityTaskWoken);
    }

    if (qret != pdPASS)
    {
        (void)xQueueSendToBackFromISR(g_allCanTxBuffer.freeIdxQueueHandle, &idx, pHigherPriorityTaskWoken);
        return CAN_ERROR_TX_BUFFER_FULL;
    }

    return 0;
}

/*************************************************
 Function:        CanHalSendTask
 Description:     CAN bus transmit task for handling message sending
 Input:           pvParameters - FreeRTOS task parameter (not used)
 Output:          None
 Return:          None
 Others:          Uses queue-based message management
                  Initializes event group and transmit buffer pool
                  Handles message transmission with retry mechanism
                  Manages free buffer index recycling
 *************************************************/
void CanHalSendTask(void *pvParameters)
{
    uint16_t    queueData;
    uint8_t     canChannel;
    uint8_t     msgIndex;
    CanHalMsg_t txMsg;
    int16_t     ret;
    uint32_t    retry;

    (void)pvParameters;

    /* 1) 初始化事件组 */
    if (g_canTxEvt == NULL)
    {
        g_canTxEvt = xEventGroupCreate();
        if (g_canTxEvt == NULL)
        {
            for (;;)
            {
                vTaskDelay(pdMS_TO_TICKS(1000U));
            }
        }
    }

    /* 2) 初始化队列/空闲池 */
    CanHalTxInit();

    /* 3) 通知初始化完成 */
    (void)xEventGroupSetBits(g_canTxEvt, CAN_TX_EVT_INIT_DONE);

    while (1)
    {
        if (xQueueReceive(g_allCanTxBuffer.txQueueHandle, &queueData, portMAX_DELAY) != pdPASS)
        {
            continue;
        }

        canChannel = (uint8_t)(queueData >> 8);
        msgIndex   = (uint8_t)(queueData & 0xFFU);

        if ((canChannel >= CAN_CHANNEL_NUMBER_MAX) || (msgIndex >= ALL_CAN_TX_BUFFER_SIZE))
        {
            /* 归还 idx，避免泄露 */
            (void)xQueueSend(g_allCanTxBuffer.freeIdxQueueHandle, &msgIndex, 0U);
            continue;
        }

        /* memcpy 到局部变量（与 RX 同风格，避免槽位被覆盖） */
        (void)memcpy(&txMsg, &g_allCanTxBuffer.msgTxBuffer[msgIndex], sizeof(CanHalMsg_t));

        /* 发送条件检测 */
        if (CanHalTxCanSendHook(canChannel) == 0U)
        {
            (void)xQueueSend(g_allCanTxBuffer.freeIdxQueueHandle, &msgIndex, 0U);
            continue;
        }

        /* BUSY(-6) 重试发送 */
        retry = 0U;
        for (;;)
        {
            ret = CanTransmit(canChannel, txMsg.canId, txMsg.dlc, txMsg.canData, txMsg.txFlag);

            if (ret == 0)
            {
                break;
            }
            else if (ret == (int16_t)CAN_ERROR_TX_BUFFER_FULL)
            {
                retry++;
                if (retry >= (uint32_t)CAN_TX_BUSY_MAX_RETRY)
                {
                    /* 超限丢弃 */
                    break;
                }
                vTaskDelay(pdMS_TO_TICKS(CAN_TX_BUSY_RETRY_DELAY_MS));
            }
            else
            {
                /* 其他错误：丢弃 */
                break;
            }
        }

        /* 归还槽位 idx（关键：否则很快耗尽导致“队列满/丢帧”） */
        (void)xQueueSend(g_allCanTxBuffer.freeIdxQueueHandle, &msgIndex, 0U);
    }
}
