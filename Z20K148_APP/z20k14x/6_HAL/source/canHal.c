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
#define CAN_TX_BUSY_RETRY_DELAY_MS          (2U)
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
static volatile unsigned int CAN0_BusOffIntFlag; // 定义CAN0 的BusOff中断进入标志
static volatile unsigned int CAN1_BusOffIntFlag; // 定义CAN0 的BusOff中断进入标志
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
 * 函数:CAN0_Init
 * 功能:配置CAN0模块，
 * 参数:
 * 返回:
 * 说明:1，CAN0的时钟源使用外部40MHz的晶振
 *        2，CAN的错误计数寄存器，大于96小于等于127，产生主动错误；大于127，产生被动错误，如果是发送状态，
 *            产生BusOff；255后，计数归零。
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
        // CAN_BusOffRecoveryScheme(CAN_ID_0, CAN_BUS_OFF_RECOV_AUTO);    //使能BUS_OFF自动恢复功能。

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
        CAN0_BusOffIntFlag = 0; // CAN0的BusOff中断进入标志

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
        CAN1_BusOffIntFlag = 0; // CAN0的BusOff中断进入标志

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
 * 函数: CAN0_BUS_OFF_ISR
 * 功能: CAN0 BUS_OFF中断的处理函数
 * 参数:
 * 返值:
 * 说明:
 ****************************************************************************/
void CAN0_BUS_OFF_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_BUS_OFF, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF中断标志位
    CAN0_BusOffIntFlag = 1;                                                                      // CAN0 的BusOff中断进入标志
    // CAN_RecoverFromBusOffManually(CAN_ID_0);    //手动从 CAN BusOff 状态恢复到正常状态
}

void CAN1_BUS_OFF_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_BUS_OFF, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF中断标志位
    CAN1_BusOffIntFlag = 1;                                                                      // CAN1 的BusOff中断进入标志
}

void CAN2_BUS_OFF_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_BUS_OFF, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF中断标志位
}

/*****************************************************************************
 * 函数: CAN0_ERR_ISR
 * 功能: CAN0 (被动)错误中断处理函数。ErrTimer>127
 * 参数:
 * 返值:
 * 说明: 1，在有些应用中，可以把被动错误作为BUS_OFF
 ****************************************************************************/
void CAN0_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN 错误中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)

    // CAN0_BusOffIntFlag = 1;    //CAN0 的BusOff中断进入标志。
}

void CAN1_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN 错误中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

void CAN2_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN 错误中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * 函数: CAN0_TXW_ISR
 * 功能: CAN0 发送报警中断处理函数。96 <ErrTimer<= 127
 * 参数:
 * 返值:
 * 说明:
 ****************************************************************************/
void CAN0_TXW_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_TXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的发送报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

void CAN1_TXW_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_TXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的发送报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

void CAN2_TXW_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_TXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的发送报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * 函数: CAN0_RXW_ISR
 * 功能: CAN0 接收报警中断处理函数。96 <ErrTimer<= 127
 * 参数:
 * 返值:
 * 说明:
 ****************************************************************************/
void CAN0_RXW_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_RXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的接收报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

void CAN1_RXW_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_RXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的接收报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

void CAN2_RXW_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_RXW, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的接收报警中断标志位
                                                                                             // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
}

/*****************************************************************************
 * 函数: CAN0_BusOffDone_ISR
 * 功能: CAN0 BusOff事件已经自动/软件恢复中断处理函数
 * 参数:
 * 返值:
 * 说明:
 ****************************************************************************/
void CAN0_BusOffDone_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_BUS_OFF_DONE, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF_DONE中断标志位
                                                                                                      // 参数：CAN模块序号、中断代码、MB0-31、MB32-63(中断代码为CAN_INT_MB时有效，1--清除中断标志位)
    CAN0_BusOffIntFlag = 0; // CAN0 的BusOff中断进入标志
}

void CAN1_BusOffDone_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_BUS_OFF_DONE, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF_DONE中断标志位
    CAN1_BusOffIntFlag = 0;                                                                           // CAN0 的BusOff中断进入标志
}

void CAN2_BusOffDone_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_BUS_OFF_DONE, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的BUS_OFF_DONE中断标志位
}

/*****************************************************************************
 * 函数: CAN0_ERR_FAST_ISR
 * 功能: CAN0 CAN FD 时，在数据时间段上出现错误中断处理函数
 * 参数:
 * 返值:
 * 说明:
 ****************************************************************************/
void CAN0_ERR_FAST_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_ERR_FAST, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN FD 时，在数据时间段上出现错误中断标志位
}

void CAN1_ERR_FAST_ISR(void)
{
    CAN_IntClear(CAN_ID_1, CAN_INT_ERR_FAST, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN FD 时，在数据时间段上出现错误中断标志位
}

void CAN2_ERR_FAST_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_ERR_FAST, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN FD 时，在数据时间段上出现错误中断标志位
}

/*****************************************************************************
 * 函数: CAN0_HOST_MEM_ERR_ISR
 * 功能: CAN0 被CPU发现的不可矫正错误中断处理函数。清空邮箱中的数据，重新初始化邮箱
 * 参数:
 * 返值:
 * 说明:
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
 * 函数: CAN0_CAN_MEM_ERR_ISR
 * 功能: 被CAN模块发现的不可矫正错误中断处理函数。清空邮箱中的数据，重新初始化邮箱
 * 参数:
 * 返值:
 * 说明:
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

void CAN2_CAN_MEM_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_2, CAN_INT_CAN_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除被CAN模块发现的不可矫正错误中断志位
}

/*****************************************************************************
 * 函数: CAN0_COR_MEM_ERR_ISR
 * 功能: CAN0 可矫正错误中断处理函数。清空邮箱中的数据，重新初始化邮箱
 * 参数:
 * 返值:
 * 说明:
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

void CAN2_COR_MEM_ERR_ISR(void)
{
    CAN_IntClear(CAN_ID_0, CAN_INT_COR_MEM_ERR, 0x00000000U, 0x00000000U, 0x00000000U, 0x00000000U); // 清除CAN的可矫正错误中断标志位
}

/*****************************************************************************
 * 函数: CAN0_MB0TO15_ISR
 * 功能: CAN0 邮箱0-15的中断处理函数
 * 参数:
 * 返值:
 * 说明:
 ****************************************************************************/
void CAN0_MB0TO15_ISR(uint32_t mbIdx)
{
    CAN_MsgBuf_t can0RxBuf; // 定义CAN0接收使用的缓存变量

    if (mbIdx <= 4)
    {
        g_driverCanManage[0].busErrorAppDiableFlag = 0x00;
    }

    if (mbIdx > 4)
    {
        stc_canfd_msg_t stcCanFDmsg = {0};

        CAN_GetMsgBuff(CAN_ID_0, mbIdx, &can0RxBuf); // 读取指定邮箱(MB)中的数据，放入 can0RxBuf 中,参数：CAN模块序号、邮箱序号、存储数据的数组
        // CAN0_RxIntFlag = 1;    //CAN0接收一帧数据完成标志

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

void CAN1_MB0TO15_ISR(uint32_t mbIdx)
{
    CAN_MsgBuf_t can1RxBuf; // 定义CAN1接收使用的缓存变量
    if (mbIdx <= 4)
    {
        //g_driverCanManage[1].busErrorAppDiableFlag = 0x00;
    }
    if (mbIdx > 4)
    {
        stc_canfd_msg_t stcCanFDmsg = {0};
        CAN_GetMsgBuff(CAN_ID_1, mbIdx, &can1RxBuf); // 读取指定邮箱(MB)中的数据，放入 can1RxBuf 中 ,参数：CAN模块序号、邮箱序号、存储数据的数组

        // CAN1_RxIntFlag = 1;    //CAN1接收一帧数据完成标志

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

void CAN2_MB0TO15_ISR(uint32_t mbIdx)
{
    CAN_MsgBuf_t can2RxBuf; // 定义CAN2接收使用的缓存变量
    stc_canfd_msg_t stcCanFDmsg = {0};

    CAN_GetMsgBuff(CAN_ID_2, mbIdx, &can2RxBuf); // 读取指定邮箱(MB)中的数据，放入 can2RxBuf 中 参数：CAN模块序号、邮箱序号、存储数据的数组
    // CAN2_RxIntFlag = 1;    //CAN2接收一帧数据完成标志

    stcCanFDmsg.canFDFormatBrs = (can2RxBuf.cs >> 30) & 0x01;
    stcCanFDmsg.canFDFormat = (can2RxBuf.cs >> 3) & 0x01;
    stcCanFDmsg.extended = (can2RxBuf.cs >> 21) & 0x01;
    stcCanFDmsg.canId = can2RxBuf.msgId;
    memcpy(&stcCanFDmsg.data, can2RxBuf.data, sizeof(can2RxBuf.data));

    stcCanFDmsg.dlc = can2RxBuf.dataLen;
    CanRxInterruptProcessMsg(2, &stcCanFDmsg, 0);
}

/*****************************************************************************
 * 函数:    CAN0_SendNM
 * 功能:    CAN0发送一帧NM网络管理报文。只用MB0 发送NM网络管理报文。
 * 参数:
 * 返回:    SUCC--报文转移到发送邮箱中，ERR--报文错误，发送失败，BUSY--发送邮箱满，发送失败
 * 说明:    1, 发送过程描述：每当模块进入发送仲裁窗口时，都会自动开始一次发送仲裁过程，以找到在下一个发
 *         送请求时，需要发送的邮箱，最终找到的邮箱被称为仲裁胜者。如果全部邮箱的 CODE 域都为非 0xC，那么
 *         本次发送仲裁过程会失败，找不到仲裁胜者。
 *         2，一般的发送，使用带有重复发送功能的发送模式发送。
 *         3，经估算，波特率为500K时，正常发送一帧报文，占用时间大约0.256ms。
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
 * 函数:    CAN0_SendDiag
 * 功能:    CAN0发送一帧诊断报文。只用MB1 发送诊断报文。
 * 参数:
 * 返回:    SUCC--报文转移到发送邮箱中，ERR--报文错误，发送失败，BUSY--发送邮箱满，发送失败
 * 说明:    1, 发送过程描述：每当模块进入发送仲裁窗口时，都会自动开始一次发送仲裁过程，以找到在下一个发
 *         送请求时，需要发送的邮箱，最终找到的邮箱被称为仲裁胜者。如果全部邮箱的 CODE 域都为非 0xC，那么
 *         本次发送仲裁过程会失败，找不到仲裁胜者。
 *         2，一般的发送，使用带有重复发送功能的发送模式发送。
 *         3，经估算，波特率为500K时，正常发送一帧报文，占用时间大约0.256ms。
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
 * 函数:    CAN0_SendApp
 * 功能:    CAN0发送一帧APP应用报文。只用MB2、MB3、MB4 发送APP应用报文。
 * 参数:
 * 返回:    SUCC--报文转移到发送邮箱中，ERR--报文错误，发送失败，BUSY--发送邮箱满，发送失败
 * 说明:    1, 发送过程描述：每当模块进入发送仲裁窗口时，都会自动开始一次发送仲裁过程，以找到在下一个发
 *         送请求时，需要发送的邮箱，最终找到的邮箱被称为仲裁胜者。如果全部邮箱的 CODE 域都为非 0xC，那么
 *         本次发送仲裁过程会失败，找不到仲裁胜者。
 *         2，一般的发送，使用带有重复发送功能的发送模式发送。
 *         3，经估算，波特率为500K时，正常发送一帧报文，占用时间大约0.256ms。
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

#if 0
static void T2GCanPortConfig(void)
{
    for (uint8_t i = 0; i < (sizeof(g_canPinCfg) / sizeof(g_canPinCfg[0])); i++)
    {
        Cy_GPIO_Pin_Init(g_canPinCfg[i].portReg, g_canPinCfg[i].pinNum, &g_canPinCfg[i].cfg);
    }
}


static void CanStbInit(void)
{
    T2GCanPortConfig();
    g_canFDStbPortPinCfg.hsiom = CAN0FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN0FD_STB_PORT,CAN0FD_STB_PIN,&g_canFDStbPortPinCfg);

    g_canFDStbPortPinCfg.hsiom = CAN1FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN1FD_STB_PORT,CAN1FD_STB_PIN,&g_canFDStbPortPinCfg);

    g_canFDStbPortPinCfg.hsiom = CAN2FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN2FD_STB_PORT,CAN2FD_STB_PIN,&g_canFDStbPortPinCfg);

    g_canFDStbPortPinCfg.hsiom = CAN3FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN3FD_STB_PORT,CAN3FD_STB_PIN,&g_canFDStbPortPinCfg);

    g_canFDStbPortPinCfg.hsiom = CAN4FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN4FD_STB_PORT,CAN4FD_STB_PIN,&g_canFDStbPortPinCfg);

    g_canFDStbPortPinCfg.hsiom = CAN5FD_STB_PIN_MUX;
    Cy_GPIO_Pin_Init(CAN5FD_STB_PORT,CAN5FD_STB_PIN,&g_canFDStbPortPinCfg);
}
#endif

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
  Function:     CanHalSetMode
  Description:  set can sleep or awake
  Input:        mode : 0 sleep; 1 awake
  Output:       None
  Return:       None
  Others:       None
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

int16_t CanHalSetFilter(int16_t canHandle, CanHalMsgFilter_t *pMsgFilter)
{
    uint8_t canChannel;
    // int i;
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

int16_t CanHalRegisterTxFinishedCallBackFunction(int16_t canHandle, typeCanTxHalCallBackPtr pCallBackFun)
{
    uint8_t canChannel;
    // int i;

    if (canHandle < 0)
    {
        return -1;
    }

    canChannel = canHandle >> 8;
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX) // invalid channel
    {
        return -1;
    }
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].pTxCallBackFun = pCallBackFun;
    return 0;
}
#if 0
static void FillCanDriverMSgData(cy_stc_canfd_msg_t* pMsg,uint8_t u8Len, const uint8_t* pu8CmdData,uint8_t fdFlag)
{
    uint16_t wordNum,i,tem; 
    wordNum = u8Len/4;
    if((0==fdFlag)&&(u8Len>8))
    {
        u8Len = 8;
    }
    if(u8Len>=64)
    {
        pMsg->dataConfig.dataLengthCode = 15;
    }
    else if(u8Len>=48)
    {
        pMsg->dataConfig.dataLengthCode = 14;
    }
    else if(u8Len>=32)
    {
        pMsg->dataConfig.dataLengthCode = 13;
    }
    else if(u8Len>=24)
    {
        pMsg->dataConfig.dataLengthCode = 12;
    }
    else if(u8Len>=20)
    {
        pMsg->dataConfig.dataLengthCode = 11;
    }
    else if(u8Len>=16)
    {
        pMsg->dataConfig.dataLengthCode = 10;
    }
    else if(u8Len>=12)
    {
        pMsg->dataConfig.dataLengthCode = 9;
    }
    else if(u8Len>=8)
    {
        pMsg->dataConfig.dataLengthCode = 8;
    }
    else
    {
        wordNum = 2;
        pMsg->dataConfig.dataLengthCode = u8Len;
    }
    for(i=0;i<wordNum;i++)
    {
        tem = i*4;
        pMsg->dataConfig.data[i] = pu8CmdData[tem+3]<<24 | pu8CmdData[tem+2]<<16 | pu8CmdData[tem+1]<<8 | pu8CmdData[tem+0];
    }    
}
#endif

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

int16_t CanHalNmReceive(int16_t canHandle, CanHalMsg_t *pMsg, uint32_t timeOut_ms)
{
    uint8_t canChannel;
    uint8_t index;
    // uint8_t canType;
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

int16_t CanHalEnableTransmitLoopBack(int16_t canHandle)
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
    g_canDriverBufferList[canChannel][(canHandle & 0xFF)].enableSendLoopBack = 0x01;
    return 0;
}

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

int16_t CanHalDiagnosticReceive(int16_t canHandle, CanHalMsg_t *pMsg, uint32_t timeOut_ms)
{
    uint8_t canChannel;
    uint8_t index;
    // uint8_t canType;
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
static void CanControllerReset(uint8_t canChannel)
{
    CanInit(canChannel, CANFD_ENABLE_CONFIG, E_CAN_500K, E_CAN_2000K, E_CAN_MODE_NORMAL);
    g_driverCanManage[canChannel].BusErrorState = 0x00;
}

static void CanCancelTransmit(uint8_t canChannel)
{
    //     volatile stc_CANFD_CH_M_TTCAN_t* pstCanType = NULL;
    //     // get can type

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

void CanHalCanBusOffProcessDisalbe(uint8_t canChannel)
{
    if (canChannel > (CAN_CHANNEL_NUMBER_MAX - 1))
    {
        return;
    }
    g_canBusOffProcessFlag[canChannel] = 0;
}

void CanHalCanBusOffProcessEnalbe(uint8_t canChannel)
{
    if (canChannel > (CAN_CHANNEL_NUMBER_MAX - 1))
    {
        return;
    }

    g_canBusOffProcessFlag[canChannel] = 1;
}

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
            /*if(i==0)
             {
               TBOX_PRINT("can load %d \r\n",msgCount);
             }        */
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
void CanHalCanBusOffCycleProcess(uint32_t cycleTime_ms)
{
    uint8_t i;

    uint32_t txTimeOut;
    // uint32_t txFailDelay;

    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        if (g_driverCanManage[i].txFailState)
        {
            txTimeOut = 10;
            // txFailDelay = 200;
        }
        else
        {
            txTimeOut = 90;
            // txFailDelay = 200;
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
                    // uint8_t errorCode;
                    // errorCode = GetCanControllerLastErrorCode(i);
                    /*if(i==CAN_NOACK_DEBUG_CHANNEL)
                    {
                      TBOX_PRINT("g_driverCanManage[i].BusErrorState %d\r\n",i,g_driverCanManage[i].BusErrorState);
                    }*/
                    taskEXIT_CRITICAL();
                    if (0 == g_driverCanManage[i].BusErrorState)
                    {
                        if (g_driverCanManage[i].noAckError) // no ack
                        // if(3==errorCode)
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
                        // else if(1==errorCode)//can not connected
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
            // TBOX_PRINT("can nack01 error txb is %d \r\n",g_can0TxBuffer.txCount);
            // CanCearlTransmitBuf(i);
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
    //
    CanHalCanBusLoadCheck(cycleTime_ms);
    //
    CanHalCanBusOffRecover(cycleTime_ms);
}

void CanHalSetCanTestMode(uint8_t canChannel, uint8_t modeFlag)
{
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return;
    }
    g_canTestModeFlag[canChannel] = modeFlag;
}

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
            // can message dispatch  to app task
            /*if(2==canChannel)
            {
              m_testCount++;
            }*/
            // ע��:�Ƚ��ж����յ��ı��Ĵ���g_allCanRxBuffer.msgRxBuffer[],���ö��з��ͽ�ͨ����,msgIndex����,���н��պ󽫱�������->canMsg
            CanMsgDispatch(&canMsg, g_canDriverBufferList[canChannel], CAN_DRIVER_HAL_HANDLE_INSTANSE_MAX);
        }
        else
        {
            // TBOX_PRINT("can channel error\r\n");
        }
    }
}

void CanHalTimer1msCallBack(void)
{
    uint8_t i;
    // volatile pstc_canfd_type_t pstCanType = NULL;
    //  get can type

    for (i = 0; i < CAN_CHANNEL_NUMBER_MAX; i++)
    {
        if (g_driverCanManage[i].txStartTimeCount < 10000000)
        {
            g_driverCanManage[i].txStartTimeCount++;
        }
    }
}

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

void CanHalEnableCanWakeup(uint8_t canChannel)
{
    if (canChannel >= CAN_CHANNEL_NUMBER_MAX)
    {
        return;
    }
    g_canWakeUpFlag[canChannel] = 1;
}

extern void WDOG_Refresh(void);
void CanHalTestMain(void)
{
    unsigned char CAN0_TxData[64]; // 定义发送使用的数组
    unsigned int i;
    ResultStatus_t can0SendRet;

    // System_Init();    //初始化系统的硬件和全局变量

    for (i = 0; i < 64; i++)
    {
        CAN0_TxData[i] = 0x55;
    }

    // 测试CAN0模块
    //  while(1)
    {
        WDOG_Refresh(); // 喂狗

        CAN0_TxData[0]++;

        // COMMON_Delay_ms(100);    //延时100毫秒

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

        // COMMON_Delay_ms(100);    //延时100毫秒
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

void CanHalClearReceiveCanNmFlag(void)
{
    g_receiveCanNmFlag = 0U;
}

uint8_t CanHalReceiveCanNmFlagCheck(void)
{
    uint8_t ret = 0U;
    if(g_receiveCanNmFlag != 0U)
    {
        ret = 1U;
    }
    return ret;
}

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

uint8_t CanHalTxCanSendHook(uint8_t canChannel)
{
    if (g_driverCanManage[canChannel].txMsgEnable <= 0) return 0U;
    if (g_canTestModeFlag[canChannel] != 0U) return 0U;
    if ((g_driverCanManage[canChannel].busNoAckErrorState != 0U) ||
        (g_driverCanManage[canChannel].busErrorAppDiableFlag != 0U) ||
        (g_driverCanManage[canChannel].BusErrorState != 0U)) return 0U;
    return 1U;
}


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


void CanHalSendTask(void *pvParameters)
{
    uint16_t    queueData;
    uint8_t     canChannel;
    uint8_t     msgIndex;
    CanHalMsg_t txMsg;
    int16_t     ret;
    uint32_t    retry;

    (void)pvParameters;

    /* 1) 事件组 */
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

    /* 2) 你要求：在 while(1) 前初始化队列/空闲池 */
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

        /* 发送 gating：可由工程覆盖 CanHalTxCanSendHook() */
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