/*************************************************
 Copyright © 2026 SiRun (AnHui) . All rights reserved.
 File Name: stateSyncSdk.c
 Author:
 Created Time:
 Description:
 Others:
*************************************************/
/****************************** include ***************************************/
#include "faultSyncSdk.h"
#include "Dem_PBcfg.h"
// #include "taskDtcProcess.h"

/****************************** Macro Definitions ******************************/
/* DTC相关 */
#define MCU_SEND_CPU_FAULT_SUBCOMMAND 0x02 /* 协议子命令0x02，表示McuFault，即MCU发送故障状态给CPU */
#define MCU_SEND_CPU_FAULT_PERIOD_MS 1000  /* 1Hz发送一次 */
#define MCU_SEND_CPU_FAULT_BITMAP_LEN 4    /* 长度为4字节 */
#define MCU_SEND_CPU_FAULT_BIT_COUNT 14    /*共14个bit */
#define MCU_RECV_MPU_FAULT_BITMAP_LEN           4   //DTC诊断固定长度为4字节
#define MCU_RECV_MPU_FAULT_EXT_STATUS_LEN       8   //扩展状态固定长度为8字节
#define MCU_RECV_MPU_FAULT_BE80_SNAPSHOT_LEN    7   //BE80快照固定长度为7字节
#define MCU_RECV_MPU_FAULT_TOTAL_LEN            19  //总长度为19字节
#define MCU_RECV_MPU_FAULT_BIT_COUNT            32  //dtc位数32位 
#define BE80_DEFAULT_U16_VALUE                  0xFFFF //BE80快照默认填充FFFF
#define BE80_DEFAULT_U8_VALUE                   0xFF   //ServiceStatus默认填充FF
#define BE80_SERVICE_STATUS_AVAILABLE           0x00   //BE80可用
#define BE80_SERVICE_STATUS_UNAVAILABLE         0x01   //BE80不可用
#define BE80_SERVICE_STATUS_DEFAULT             0xFF

#define BE80_SOMEIP_RELATED_FAULT_MASK         ( \
    ((uint32_t)1u << E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_S32G_LINUX) |         /* bit6：与S32G_Linux丢失SomeIP通信 */ \
    ((uint32_t)1u << E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_RESPONSE_TIMEOUT) |  /* bit7：S32G_Linux SomeIP应答报文超时 */ \
    ((uint32_t)1u << E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_RESPONSE_TIMEOUT) |         /* bit8：8295_Linux/8155_Android SomeIP应答报文超时 */ \
    ((uint32_t)1u << E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_SERVICE_LOST) |      /* bit9：S32G_Linux SomeIP服务无法发现 */ \
    ((uint32_t)1u << E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_SERVICE_LOST) |              /* bit10：8295_Linux/8155_Android SomeIP服务无法发现 */ \
    ((uint32_t)1u << E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_SOC))
#define MCU_RECV_MPU_FAULT_DEFAULT_CONFIRM_CNT      1     //默认故障成熟计数
#define MCU_RECV_MPU_FAULT_DEFAULT_RECOVER_CNT      1     //默认故障恢复计数
#define MCU_RECV_MPU_FAULT_SPEAKER_CONFIRM_CNT      4     //speaker故障成熟计数
#define MCU_RECV_MPU_FAULT_SPEAKER_RECOVER_CNT      4     //speaker故障恢复计数
#define MCU_RECV_MPU_FAULT_SIM_CONFIRM_CNT          480   //sim卡故障成熟计数
#define MCU_RECV_MPU_FAULT_SIM_RECOVER_CNT          30    //sim卡故障恢复计数
#define MCU_RECV_MPU_FAULT_LOST_ETH_WITH_ICC_CONFIRM_CNT         3     //ICC失去以太网故障成熟计数
#define MCU_RECV_MPU_FAULT_LOST_ETH_WITH_ICC_RECOVER_CNT         3     //ICC失去以太网故障恢复计数
#define MCU_RECV_MPU_FAULT_GAP_RESET_MS             2000  //如果2000ms没有收到1S同步，表示连续性被打断

/****************************** Type Definitions ******************************/
typedef struct                // 协议位号->Dem事件ID的映射结构体
{
    uint8_t bitIndex;        // bitIndex 表示故障在协议中的位号
    Dem_EventIdType eventId; // eventId 表示该位故障对应的 Dem 事件 ID
} McuRecvMpuFaultMap_t;


/****************************** Global Variables ******************************/
/* DTC相关 */
static int16_t g_mcuDtcSyncMpuHandle = -1; /* MPU通信句柄 */
static uint16_t g_mcuDtcSyncCycleTime = 0; /* 当前模块的周期调用时间，5ms */
static uint16_t g_mcuDtcSyncTimeCount = 0; /* 累计到1000ms后触发一次发送 */
static uint8_t g_mcuDtcSyncData[MCU_SEND_CPU_FAULT_BITMAP_LEN] = {0};
static MpuHalDataPack_t g_mcuDtcSyncPack;
static const McuSendCpuFaultMap_t g_mcuSendCpuFaultMap[MCU_SEND_CPU_FAULT_BIT_COUNT] =
    {
        {0, (Dem_EventIdType)EventParameter_0x95A011},
        {1, (Dem_EventIdType)EventParameter_0x95A013},
        {2, (Dem_EventIdType)EventParameter_0x95A111},
        {3, (Dem_EventIdType)EventParameter_0x95A113},
        {4, (Dem_EventIdType)EventParameter_0x95A311},
        {5, (Dem_EventIdType)EventParameter_0x95A313},
        {6, (Dem_EventIdType)EventParameter_0x95A411},
        {7, (Dem_EventIdType)EventParameter_0x95A413},
        {8, (Dem_EventIdType)EventParameter_0x95A711},
        {9, (Dem_EventIdType)EventParameter_0x95A713},
        {10, (Dem_EventIdType)EventParameter_0x953311},
        {11, (Dem_EventIdType)EventParameter_0x953313},
        {12, (Dem_EventIdType)EventParameter_0x953312},
        {13, (Dem_EventIdType)EventParameter_0x951171}
    };
// 移除 static const，改为运行时初始化，避免编译器链接时的静态初始化问题
static McuRecvMpuFaultMap_t g_mcuRecvMpuFaultMap[MCU_RECV_MPU_FAULT_BIT_COUNT];
static MpuFaultDebounceCfg_t g_mpuFaultDebounceCfg[MCU_RECV_MPU_FAULT_BIT_COUNT];
static MpuFaultDebounceState_t g_mpuFaultDebounceState[MCU_RECV_MPU_FAULT_BIT_COUNT];
static uint16_t g_mpuFaultMsgGapMs = 0;

static CpuDtcSync_t g_cpuMpuDtcInfo;                // MPU故障码信息存储
static MpuFaultExtStatusSync_t g_mpuFaultExtStatus; // 保存 MPU 故障同步扩展状态
static Be80SnapshotInfoSync_t g_be80SnapshotInfo;     // 保存 BE80 快照信息

/****************************** Public Function Implementations ******************************/
int16_t StateSyncGetMpuFaultExtStatus(MpuFaultExtStatus_t *extStatus) // 获取 MPU 故障同步扩展状态
{
    uint8_t *pSrc = NULL;
    uint8_t *pDst = NULL;
    uint16_t i = 0;
    if (extStatus == NULL)
    {
        return -1;
    }
    if (g_mpuFaultExtStatus.validity == 0)
    {
        return -1;
    }
    pSrc = (uint8_t *)&g_mpuFaultExtStatus.extStatus;
    pDst = (uint8_t *)extStatus;
    for (i = 0; i < sizeof(MpuFaultExtStatus_t); i++)
    {
        pDst[i] = pSrc[i];
    }
    return 0;
}

static uint8_t McuSendCpuFaultIsFailed(Dem_EventIdType eventId) // 判断某个Dem事件当前是否处于故障状态
{
    Dem_UdsStatusByteType eventStatus = 0;
    if (eventId == 0)
    {
        return 0;
    }
    if (Dem_GetEventStatus(eventId, &eventStatus) != E_OK) // 读取当前事件状态，如果失败
    {
        return 0;
    }
    return ((eventStatus & DEM_UDS_STATUS_TF) != 0) ? 1 : 0;
}

static void McuSendCpuFaultSetBit(uint8_t *pData, uint8_t bitIndex)
{
    uint8_t byteIndex;
    uint8_t bitOffset;
    if ((pData == NULL) || (bitIndex >= 32))
    {
        return;
    }
    byteIndex = (uint8_t)(3 - (bitIndex / 8));
    bitOffset = (uint8_t)(bitIndex % 8);
    pData[byteIndex] |= (uint8_t)(1 << bitOffset);
}

static uint32_t McuSendCpuFaultBuildBitmap(uint8_t *pData)
{
    uint32_t i;
    uint32_t bitmap = 0;
    if (pData == NULL)
    {
        return 0;
    }
    memset(pData, 0, MCU_SEND_CPU_FAULT_BITMAP_LEN);

    for (i = 0u; i < MCU_SEND_CPU_FAULT_BIT_COUNT; i++)
    {
        if (McuSendCpuFaultIsFailed(g_mcuSendCpuFaultMap[i].eventId) != 0) // 如果对应Dem事件当前有故障
        {
            McuSendCpuFaultSetBit(pData, g_mcuSendCpuFaultMap[i].bitIndex); // 对应协议bit位置1
        }
    }
    bitmap |= ((uint32_t)pData[0] << 24); // 把第1字节放到uint32最高8位 */
    bitmap |= ((uint32_t)pData[1] << 16);
    bitmap |= ((uint32_t)pData[2] << 8);
    bitmap |= ((uint32_t)pData[3] << 0);
    return bitmap;
}

int16_t McuSendCpuFaultSyncInit(int16_t mpuHandle, uint16_t cycleTime)
{
    if ((mpuHandle < 0) || (cycleTime == 0))
    {
        return -1;
    }
    g_mcuDtcSyncMpuHandle = mpuHandle;
    g_mcuDtcSyncCycleTime = cycleTime;
    g_mcuDtcSyncTimeCount = 0;
    memset(g_mcuDtcSyncData, 0, sizeof(g_mcuDtcSyncData));
    memset(&g_mcuDtcSyncPack, 0, sizeof(g_mcuDtcSyncPack));

    g_cpuMpuDtcInfo.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_cpuMpuDtcInfo.timeCount = 0;
    g_cpuMpuDtcInfo.validity = 0;

    g_mpuFaultExtStatus.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_mpuFaultExtStatus.timeCount = 0;
    g_mpuFaultExtStatus.validity = 0;

    g_be80SnapshotInfo.snapshotInfo.serviceId = 0xFFFF;
    g_be80SnapshotInfo.snapshotInfo.serviceInstanceId = 0xFFFF;
    g_be80SnapshotInfo.snapshotInfo.methodEventId = 0xFFFF;
    g_be80SnapshotInfo.snapshotInfo.serviceStatus = 0xFF;
    g_be80SnapshotInfo.failureTime = CPU_INFO_FAILURE_TIME * 1000;
    g_be80SnapshotInfo.timeCount = 0;
    g_be80SnapshotInfo.validity = 0;
    return 0;
}

void McuSendCpuFaultSyncCycleProcess(void)
{
    uint32_t bitmap;

    if ((g_mcuDtcSyncMpuHandle < 0) || (g_mcuDtcSyncCycleTime == 0))
    {
        return;
    }
    if (g_mcuDtcSyncTimeCount < MCU_SEND_CPU_FAULT_PERIOD_MS)
    {
        g_mcuDtcSyncTimeCount = (uint16_t)(g_mcuDtcSyncTimeCount + g_mcuDtcSyncCycleTime);
    }
    if (g_mcuDtcSyncTimeCount < MCU_SEND_CPU_FAULT_PERIOD_MS)
    {
        return;
    }
    g_mcuDtcSyncTimeCount = 0;
    bitmap = McuSendCpuFaultBuildBitmap(g_mcuDtcSyncData);
    g_mcuDtcSyncPack.aid = 0x30;
    g_mcuDtcSyncPack.mid = 0x01;
    g_mcuDtcSyncPack.subcommand = MCU_SEND_CPU_FAULT_SUBCOMMAND;
    g_mcuDtcSyncPack.pDataBuffer = g_mcuDtcSyncData;
    g_mcuDtcSyncPack.dataBufferSize = sizeof(g_mcuDtcSyncData);
    g_mcuDtcSyncPack.dataLength = MCU_SEND_CPU_FAULT_BITMAP_LEN;

    // TBOX_PRINT("TX MCU FAULT HEAD: aid=0x%02X mid=0x%02X sub=0x%02X len=%d bitmap=0x%08X\r\n",   //mcu->mpu发送调试打印
    //            g_mcuDtcSyncPack.aid,
    //            g_mcuDtcSyncPack.mid,
    //            g_mcuDtcSyncPack.subcommand,
    //            g_mcuDtcSyncPack.dataLength,
    //            (unsigned int)bitmap);

    // TBOX_PRINT("TX MCU FAULT RAW: %02X %02X %02X %02X\r\n",    //mcu->mpu发送调试打印
    //            g_mcuDtcSyncData[0],
    //            g_mcuDtcSyncData[1],
    //            g_mcuDtcSyncData[2],
    //            g_mcuDtcSyncData[3]);

    MpuHalTransmit(g_mcuDtcSyncMpuHandle, &g_mcuDtcSyncPack);
}

/*************************************************
  Function:       MpuDtcSyncSdkCycleProcess
  Description:    MPU故障码同步处理函数
  Input:          msgData：MPU数据消息包
  Output:         无
  Return:         无
  Others:         处理AID=0x30, MID=0x01的MPU故障码数据
*************************************************/
static void StateSyncInitMpuFaultDebounce(void)                          
{
    uint8_t i = 0;                                                      

    for (i = 0; i < MCU_RECV_MPU_FAULT_BIT_COUNT; i++)                  
    {
        g_mpuFaultDebounceCfg[i].confirmCnt = MCU_RECV_MPU_FAULT_DEFAULT_CONFIRM_CNT;    
        g_mpuFaultDebounceCfg[i].recoverCnt = MCU_RECV_MPU_FAULT_DEFAULT_RECOVER_CNT;    

        g_mpuFaultDebounceState[i].failCount = 0;                       
        g_mpuFaultDebounceState[i].passCount = 0;                       
        g_mpuFaultDebounceState[i].reportedState = E_MPU_FAULT_REPORTED_UNKNOWN;         
    }

    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_GROUND_SHORT].confirmCnt = MCU_RECV_MPU_FAULT_SPEAKER_CONFIRM_CNT;  
    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_GROUND_SHORT].recoverCnt = MCU_RECV_MPU_FAULT_SPEAKER_RECOVER_CNT;  

    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SPEAKER_OPEN_OR_SHORT].confirmCnt = MCU_RECV_MPU_FAULT_SPEAKER_CONFIRM_CNT;    
    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SPEAKER_OPEN_OR_SHORT].recoverCnt = MCU_RECV_MPU_FAULT_SPEAKER_RECOVER_CNT;    

    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_POWER_SHORT].confirmCnt = MCU_RECV_MPU_FAULT_SPEAKER_CONFIRM_CNT;   
    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_POWER_SHORT].recoverCnt = MCU_RECV_MPU_FAULT_SPEAKER_RECOVER_CNT;
    
    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SIM_OFFLINE].confirmCnt = MCU_RECV_MPU_FAULT_SIM_CONFIRM_CNT;
    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SIM_OFFLINE].recoverCnt = MCU_RECV_MPU_FAULT_SIM_RECOVER_CNT;

    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SIM_INVALID].confirmCnt = MCU_RECV_MPU_FAULT_SIM_CONFIRM_CNT;
    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_SIM_INVALID].recoverCnt = MCU_RECV_MPU_FAULT_SIM_RECOVER_CNT;

    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_LOST_ETH_WITH_ICC].confirmCnt = MCU_RECV_MPU_FAULT_LOST_ETH_WITH_ICC_CONFIRM_CNT;
    g_mpuFaultDebounceCfg[E_STATE_SYNC_DTC_BIT_LOST_ETH_WITH_ICC].recoverCnt = MCU_RECV_MPU_FAULT_LOST_ETH_WITH_ICC_RECOVER_CNT;

    g_mpuFaultMsgGapMs = 0;                                             
}

static void StateSyncResetMpuFaultDebounceCounters(void)                 
{
    uint8_t i = 0;                                                      

    for (i = 0; i < MCU_RECV_MPU_FAULT_BIT_COUNT; i++)                  
    {
        g_mpuFaultDebounceState[i].failCount = 0;                       
        g_mpuFaultDebounceState[i].passCount = 0;                       
    }
}

static void InitMcuRecvMpuFaultMap(void)
{
    uint8_t i = 0;
    for (i = 0; i < MCU_RECV_MPU_FAULT_BIT_COUNT; i++)
    {
        g_mcuRecvMpuFaultMap[i].bitIndex = i;
        g_mcuRecvMpuFaultMap[i].eventId = 0;    // 初始化为0
    }

    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_GROUND_SHORT].eventId = EventParameter_0x953111;          /* bit0 对应 speaker 对地短路 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SPEAKER_OPEN_OR_SHORT].eventId = EventParameter_0x953113;            /* bit1 对应 speaker 开路或两线短接 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SPEAKER_TO_POWER_SHORT].eventId = EventParameter_0x953512;           /* bit2 对应 speaker 对电源短路 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SIM_OFFLINE].eventId = EventParameter_0x954100;                      /* bit3 对应 SIM 不在线 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SIM_INVALID].eventId = EventParameter_0x954200;                      /* bit4 对应 SIM 无效 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_ETH_WITH_ICC].eventId = EventParameter_0xE26200;               /* bit5 对应同 ICC 丢失以太网通信 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_S32G_LINUX].eventId = EventParameter_0xE2A287;     /* bit6 对应与 S32G_Linux 丢失 SomeIP 通信 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_RESPONSE_TIMEOUT].eventId = EventParameter_0xE2A2F0; /* bit7 对应 S32G_Linux SomeIP 应答超时 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_RESPONSE_TIMEOUT].eventId = EventParameter_0xE298F0;     /* bit8 对应 8295/8155 SomeIP 应答超时 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_S32G_LINUX_SOMEIP_SERVICE_LOST].eventId = EventParameter_0xE2A2F1;  /* bit9 对应 S32G_Linux SomeIP 服务无法发现 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_SOC_SOMEIP_SERVICE_LOST].eventId = EventParameter_0xE298F1;         /* bit10 对应 8295/8155 SomeIP 服务无法发现 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_SOMEIP_WITH_SOC].eventId = EventParameter_0xE29887;            /* bit11 对应与 8295/8155 丢失 SomeIP 通信 */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_SYNC_AND_FOLLOWUP_WITH_ICB].eventId = EventParameter_0xE28000; /* bit12 对应与 ICB/ZXD 丢失 Sync 和 Follow_up */
    g_mcuRecvMpuFaultMap[E_STATE_SYNC_DTC_BIT_LOST_PDELAY_RESP_WITH_ICB].eventId = EventParameter_0xE28200;       /* bit13 对应与 ICB/ZXD 丢失 Pdelay_Response 和 Follow_up */
}

static uint32_t McuRecvMpuFaultBitmapToU32(const uint8_t *pData) // 把mcu接收到的4字节MPU故障位转换成uint32_t
{
    uint32_t value = 0;

    if (pData == NULL)                                                          
    {
        return 0;                                                             
    }

    value |= ((uint32_t)pData[0] << 24); // 第 1 个字节放到最高 8 位，按大端格式拼接
    value |= ((uint32_t)pData[1] << 16); // 第 2 个字节放到次高 8 位
    value |= ((uint32_t)pData[2] << 8);  // 第 3 个字节放到次低 8 位
    value |= ((uint32_t)pData[3] << 0);  // 第 4 个字节放到最低 8 位
    return value;
}

static uint16_t StateSyncReadBeUint16(const uint8_t *pData) // 把协议里的2字节大端数据转成uint16
{
    if (pData == NULL)                                      
    {
        return 0xFFFF;                                     
    }

    return (uint16_t)(((uint16_t)pData[0] << 8) | pData[1]); // 按大端格式拼成16位整数，高字节在前低字节在后
}

static void StateSyncResetBe80SnapshotInfo(void) 
{
    g_be80SnapshotInfo.snapshotInfo.serviceId = BE80_DEFAULT_U16_VALUE;           
    g_be80SnapshotInfo.snapshotInfo.serviceInstanceId = BE80_DEFAULT_U16_VALUE;   
    g_be80SnapshotInfo.snapshotInfo.methodEventId = BE80_DEFAULT_U16_VALUE;       
    g_be80SnapshotInfo.snapshotInfo.serviceStatus = BE80_DEFAULT_U8_VALUE;        
    g_be80SnapshotInfo.timeCount = 0;                                            
    g_be80SnapshotInfo.validity = 0;                                             
}

static uint8_t StateSyncIsBe80SomeIpFaultActive(uint32_t faultBitmap) /* 判断当前DTC位图里是否存在SomeIP相关故障 */
{
    if ((faultBitmap & BE80_SOMEIP_RELATED_FAULT_MASK) != 0)                     
    {
        return 1;                                                                 
    }

    return 0;                                                                     
}

static void StateSyncUpdateBe80SnapshotInfo(const uint8_t *pData, uint32_t faultBitmap) /* 只有SomeIP相关故障存在时才更新BE80快照 */
{
    uint16_t serviceId = BE80_DEFAULT_U16_VALUE;                                     
    uint16_t serviceInstanceId = BE80_DEFAULT_U16_VALUE;                             
    uint16_t methodEventId = BE80_DEFAULT_U16_VALUE;                                 
    uint8_t serviceStatus = BE80_DEFAULT_U8_VALUE;                                   

    if (pData == NULL)                                                               
    {
        StateSyncResetBe80SnapshotInfo();                                            
        return;                                                                      
    }

    if (StateSyncIsBe80SomeIpFaultActive(faultBitmap) == 0)                         
    {
        StateSyncResetBe80SnapshotInfo();                                            
        return;                                                                      
    }

    serviceId = StateSyncReadBeUint16(&pData[12]);                                   
    serviceInstanceId = StateSyncReadBeUint16(&pData[14]);                           
    methodEventId = StateSyncReadBeUint16(&pData[16]);                               
    serviceStatus = pData[18];                                                       

    if ((serviceStatus != BE80_SERVICE_STATUS_AVAILABLE) &&                          
        (serviceStatus != BE80_SERVICE_STATUS_UNAVAILABLE))                          
    {
        StateSyncResetBe80SnapshotInfo();                                            
        return;                                                                      
    }

    g_be80SnapshotInfo.snapshotInfo.serviceId = serviceId;                           
    g_be80SnapshotInfo.snapshotInfo.serviceInstanceId = serviceInstanceId;           
    g_be80SnapshotInfo.snapshotInfo.methodEventId = methodEventId;                   
    g_be80SnapshotInfo.snapshotInfo.serviceStatus = serviceStatus;                   
    g_be80SnapshotInfo.timeCount = 0;                                               
    g_be80SnapshotInfo.validity = 1;                                                
}

int16_t StateSyncGetBe80SnapshotInfo(Be80SnapshotInfo_t *snapshotInfo) // Rte_ReadData_BE80调用的读取接口
{
    uint8_t *pSrc = NULL;                                              
    uint8_t *pDst = NULL;                                              
    uint16_t i = 0;                                                    

    if (snapshotInfo == NULL)                                          
    {
        return -1;                                                     
    }

    if (g_be80SnapshotInfo.validity == 0)                              
    {
        return -1;                                                     
    }

    pSrc = (uint8_t *)&g_be80SnapshotInfo.snapshotInfo;                
    pDst = (uint8_t *)snapshotInfo;                                    

    for (i = 0; i < sizeof(Be80SnapshotInfo_t); i++)                   // 按字节拷贝整个7字节结构
    {
        pDst[i] = pSrc[i];                                             
    }

    return 0;                                                         
}

static void StateSyncUpdateDtcInfo(const uint8_t *pData)
{
    if (pData == NULL)                                                          
    {
        return;                                                                
    }

    g_cpuMpuDtcInfo.dtcState.dtcBitmap = McuRecvMpuFaultBitmapToU32(pData);       //把前4个字节DTC故障位保存
    g_cpuMpuDtcInfo.dtcState.mobileNetState = pData[4];
    g_cpuMpuDtcInfo.dtcState.networkType = pData[5];
    g_cpuMpuDtcInfo.dtcState.signalStrength = pData[6];
    g_cpuMpuDtcInfo.dtcState.emmcState = pData[7];
    g_cpuMpuDtcInfo.dtcState.phyState = pData[8];
    g_cpuMpuDtcInfo.dtcState.hsmState = pData[9];
    g_cpuMpuDtcInfo.dtcState.nadState = pData[10];
    g_cpuMpuDtcInfo.dtcState.gpsLocationState = pData[11];              
}

static void StateSyncHandleOneMpuFaultBit(uint32_t faultBitmap, uint8_t bitIndex) // 处理单个故障 bit，对应置故障或清故障
{
    uint32_t mask = 0;                                                        // 当前 bit 的掩码
    uint8_t bitValue = 0;                                                     // 当前 bit 的值，1 表示故障，0 表示正常
    Dem_EventIdType eventId = 0;                                              // 当前 bit 对应的 Dem 事件 ID
    MpuFaultDebounceCfg_t *pCfg = NULL;
    MpuFaultDebounceState_t *pState = NULL;

    if (bitIndex >= MCU_RECV_MPU_FAULT_BIT_COUNT)                              
    {
        return;                                                                
    }

    eventId = g_mcuRecvMpuFaultMap[bitIndex].eventId;                          //获取当前bit对应的Dem EventId

    if (eventId == 0)                                                         
    {
        return;                                                                
    }

    pCfg = &g_mpuFaultDebounceCfg[bitIndex];
    pState = &g_mpuFaultDebounceState[bitIndex];

    mask = ((uint32_t)1 << bitIndex);                                         
    bitValue = ((faultBitmap & mask) != 0) ? 1 : 0; 

    if (bitValue == 1)                                                              
    {
        if (pState->failCount < pCfg->confirmCnt)                                    
        {
            pState->failCount++;                                                     
        }

        pState->passCount = 0;                                                      

        if ((pState->failCount >= pCfg->confirmCnt) &&                               
            (pState->reportedState != E_MPU_FAULT_REPORTED_FAILED))                  
        {
            Dem_SetEventStatus(eventId, DEM_EVENT_STATUS_FAILED);              
            pState->reportedState = E_MPU_FAULT_REPORTED_FAILED;                     
        }
    }
    else                                                                             
    {
        if (pState->passCount < pCfg->recoverCnt)                                    
        {
            pState->passCount++;                                                     
        }

        pState->failCount = 0;                                                      

        if ((pState->passCount >= pCfg->recoverCnt) &&                               
            (pState->reportedState != E_MPU_FAULT_REPORTED_PASSED))                  
        {
            Dem_SetEventStatus(eventId, DEM_EVENT_STATUS_PASSED);              
            pState->reportedState = E_MPU_FAULT_REPORTED_PASSED;                     
        }
    }
}             

void MpuDtcSyncSdkCycleProcess(MpuHalDataPack_t *msgData)
{
    uint32_t faultBitmap = 0;       // 保存解析后的32位故障位图
    uint8_t i = 0;
    static uint8_t s_faultMapInitialized = 0;   // 标志位：映射表是否已初始化
    static uint8_t s_faultDebounceInitialized = 0; // 标志位：去抖状态是否已初始化

    // 首次调用时初始化故障映射表
    if (s_faultMapInitialized == 0)
    {
        InitMcuRecvMpuFaultMap();
        s_faultMapInitialized = 1;
    }

    if (s_faultDebounceInitialized == 0)
    {
        StateSyncInitMpuFaultDebounce();
        s_faultDebounceInitialized = 1;
    }

    if (msgData == NULL)
    {
        if (g_mcuDtcSyncCycleTime > 0)                                                   
        {
            if (g_mpuFaultMsgGapMs < MCU_RECV_MPU_FAULT_GAP_RESET_MS)                  
            {
                g_mpuFaultMsgGapMs = (uint16_t)(g_mpuFaultMsgGapMs + g_mcuDtcSyncCycleTime); 
            }
            else                                                                       
            {
                StateSyncResetMpuFaultDebounceCounters();                              
            }
        }

        return;
    }
    if ((msgData->aid != 0x30) || (msgData->mid != 0x01))
    {
        return;
    }
    if ((msgData->subcommand & 0x7F) != 0x01)                                //只处理子命令0x01，
    {
        return;                                                                
    }
    if (msgData->dataLength < MCU_RECV_MPU_FAULT_TOTAL_LEN)      // 判断消息长度是否至少有12字节
    {
        return;
    }

    g_mpuFaultMsgGapMs = 0;

    faultBitmap = McuRecvMpuFaultBitmapToU32(msgData->pDataBuffer);   //DTC故障4字节
    StateSyncUpdateDtcInfo(msgData->pDataBuffer);      //其他8字节状态缓存到g_cpuMpuDtcInfo中
    StateSyncUpdateBe80SnapshotInfo(msgData->pDataBuffer, faultBitmap);   //解析BE80快照信息

    // TBOX_PRINT("RX MPU FAULT PARSE: bitmap=0x%08X mobileNet=%d netType=%d csq=%d emmc=%d phy=%d hsm=%d nad=%d gps=%d\r\n",
    //            (unsigned int)faultBitmap,
    //            g_cpuMpuDtcInfo.dtcState.mobileNetState,
    //            g_cpuMpuDtcInfo.dtcState.networkType,
    //            g_cpuMpuDtcInfo.dtcState.signalStrength,
    //            g_cpuMpuDtcInfo.dtcState.emmcState,
    //            g_cpuMpuDtcInfo.dtcState.phyState,
    //            g_cpuMpuDtcInfo.dtcState.hsmState,
    //            g_cpuMpuDtcInfo.dtcState.nadState,
    //            g_cpuMpuDtcInfo.dtcState.gpsLocationState);      //解析后各状态位状态调试打印

    for (i = 0; i < MCU_RECV_MPU_FAULT_BIT_COUNT; i++) 
    {
        StateSyncHandleOneMpuFaultBit(faultBitmap, i);
    }

    g_cpuMpuDtcInfo.timeCount = 0; // 收到新的故障同步报文后，把超时计数清零
    g_cpuMpuDtcInfo.validity = 1;  // 标记当前故障同步数据有效
    
    if ((g_cpuMpuDtcInfo.validity == 1) && (g_cpuMpuDtcInfo.timeCount++ > (g_cpuMpuDtcInfo.failureTime) / g_mcuDtcSyncCycleTime))
    {
        g_cpuMpuDtcInfo.validity = 0;
    }

    if ((g_mpuFaultExtStatus.validity == 1) &&
        (g_mpuFaultExtStatus.timeCount++ >
         (g_mpuFaultExtStatus.failureTime / g_mcuDtcSyncCycleTime)))
    {
        g_mpuFaultExtStatus.validity = 0;
    }

    if ((g_be80SnapshotInfo.validity == 1) &&
        (g_be80SnapshotInfo.timeCount++ > (g_be80SnapshotInfo.failureTime / g_mcuDtcSyncCycleTime)))
    {
        g_be80SnapshotInfo.validity = 0; 
    }
}

int16_t StateSyncGetDtcstate(CpuDtcSync_t *dtcInfo)
{
    uint8_t *pSrc = NULL;
    uint8_t *pDes = NULL;
    uint16_t i = 0;

    if (dtcInfo == NULL)
    {
        return -1;
    }

    if (g_cpuMpuDtcInfo.validity == 0)
    {
        return -1;
    }

    pSrc = (uint8_t *)&g_cpuMpuDtcInfo;
    pDes = (uint8_t *)dtcInfo;

    for (i = 0; i < sizeof(CpuDtcSync_t); i++)
    {
        pDes[i] = pSrc[i];
    }

    return 0;
}  
