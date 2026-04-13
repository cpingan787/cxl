/*******************************************************************************
**                                                                            **
**  FILENAME    : Com_Test.c                                                  **
**                                                                            **
**  Created on  :                                                             **
**  Author      :                                                  **
**  Vendor      :                                                             **
**  DESCRIPTION :                                     **
**                                                                            **
**  SPECIFICATION(S) : AUTOSAR Classic Platform 4.2.2 and R19-11              **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Com_Test.h"
#include "Com.h"
#include "CanTSyn.h"
#include "StbM.h"
#include "Can.h"
#include "Mcu.h"
#include "stateSyncSdk.h"

#define	StbM_SlaveTimeBaseId	0		/*  StbM Slave time domain ID */

#define	SlaveTimeID0	        0		/*  CanTSyn Slave time domain ID */

#define	SlaveTestCanID	        0x666	/*  CanTSyn Slave Test CAN ID */
#define	SlaveTestCanLength	    8	    /*  CanTSyn Slave Test Data Length */
#define	SlaveTestCanHth	        CanConf_CanHardwareObject_CanHardwareObject_Tx0	    /*  CanTSyn Slave Test Can Hth */

#define DV_TEST_ENABLE          0
#if(DV_TEST_ENABLE == 1)
/*  系统状态报文 CAN IDs */
#define NetworkStatusCanID 0x460                                        /*  移动网络连接状态 CAN ID */
#define NetworkStatusCanLength 8                                        /*  移动网络连接状态 Data Length */
#define NetworkStatusCanHth CanConf_CanHardwareObject_CanHardwareObject_Tx0 /*  移动网络连接状态 Can Hth */

#define SystemStatusCanID 0x461                                         /*  系统硬件状态 CAN ID */
#define SystemStatusCanLength 8                                         /*  系统硬件状态 Data Length */
#define SystemStatusCanHth CanConf_CanHardwareObject_CanHardwareObject_Tx0 /*  系统硬件状态 Can Hth */

#define SystemInfoCanID 0x462                                           /*  系统信息 CAN ID */
#define SystemInfoCanLength 8                                           /*  系统信息 Data Length */
#define SystemInfoCanHth CanConf_CanHardwareObject_CanHardwareObject_Tx0 /*  系统信息 Can Hth */
#endif
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
uint8 Event_Test = 0;
uint64 Event_TestSig0 = 0;
uint8 Event_TestSig1 = 0;
//uint16 Test_E2ESig0 = 0;
uint8 Test_ComTxSig0 = 0;
uint8 Test_ComRxSig0 = 0;
uint8 testcom[8]={0};

Mcu_ResetType Mcu_ResetReason;

StbM_TimeStampType timestamp;
StbM_UserDataType userData;
uint8 Data[SlaveTestCanLength] = {0};
Can_PduType PduInfo = {&Data[0],SlaveTestCanID,0,SlaveTestCanLength};
#if(DV_TEST_ENABLE == 1)
static uint8 NetworkStatusData[NetworkStatusCanLength] = {0};
static Can_PduType NetworkStatusPduInfo = {&NetworkStatusData[0], NetworkStatusCanID, 0, NetworkStatusCanLength};

static uint8 SystemStatusData[SystemStatusCanLength] = {0};
static Can_PduType SystemStatusPduInfo = {&SystemStatusData[0], SystemStatusCanID, 0, SystemStatusCanLength};

static uint8 SystemInfoData[SystemInfoCanLength] = {0};
static Can_PduType SystemInfoPduInfo = {&SystemInfoData[0], SystemInfoCanID, 0, SystemInfoCanLength};
#endif
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/
uint16 E2E_R_TEST[2]={0};
void Com_Test(void)
{

    /*Test Com Tx&*/
    //Com_SendSignal(IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,&Test_ComTxSig0);
    //Com_ReceiveSignal(IBMSChrgSts_GB_ESS_PTCANFD_500ms_FrP60_CONTROLLER_0_IAM_Rx,&Test_ComRxSig0);

    Com_ReceiveSignalGroup(IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx);
    Com_ReceiveSignal(IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrVal_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,&E2E_R_TEST[0]);
    Com_ReceiveSignal(IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx_IBMSBatPrsSnsrV_IESS_100ms_Group32_ESS_PTCANFD_100ms_FrP32_CONTROLLER_0_IAM_Rx,&E2E_R_TEST[1]);
    /*Event Test*/
    if(Event_Test == 1)
    {
        //Com_SendSignal(IAIParkngReqIAM_IAM_CONNCAN_Event_FrS21_CONTROLLER_0_IAM_Tx,&Event_TestSig0);
        Com_SendSignal(IIAMIdentityResp_IAM_CONNCAN_Event_FrS20_CONTROLLER_0_IAM_Tx,&Event_TestSig0);
	    Event_Test = 0;
    }

    // Com_SendSignal(IIAM_NM_RMSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[0]);
    // Com_SendSignal(IIAM_NM_NOSSta_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[1]);
    // Com_SendSignal(IIAM_NM_NOStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[2]);
    // Com_SendSignal(IIAM_NM_RSStoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[3]);
    // Com_SendSignal(IIAM_NM_RSStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[4]);
    // Com_SendSignal(IIAM_NM_RMStoNOS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[5]);
    // Com_SendSignal(IIAM_NM_PBSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[6]);
    // Com_SendSignal(IIAM_NM_BSMtoRMS_CONNCANFD_IAM_CONNCANFD_NM_CONTROLLER_0_IAM_Tx, &testcom[7]);

    // Com_SendSignal(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx_IIAM_100ms_Group18_Reserved1_IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx, &testcom);
	// Com_SendSignalGroup(IIAM_100ms_Group18_IAM_CONNCAN_100ms_FrP18_CONTROLLER_0_IAM_Tx);
}

void Com_SecOC_Test(void)
{

    /*Event Test*/
    if(Event_Test == 1)
    {
        Com_SendSignal(IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x98
        Com_SendSignal(IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0xB3
        Com_SendSignal(IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x9F
        Com_SendSignal(IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x7D
	    Event_Test = 0;
    }
    
}

void CanTSyn_SlaveTest(void)
{
    StbM_GetCurrentTime(StbM_SlaveTimeBaseId, &timestamp,&userData);

    PduInfo.sdu[0] = (uint8)((timestamp.seconds & 0xff000000) >> 24);
    PduInfo.sdu[1] = (uint8)((timestamp.seconds & 0x00ff0000) >> 16);
    PduInfo.sdu[2] = (uint8)((timestamp.seconds & 0x0000ff00) >> 8);
    PduInfo.sdu[3] = (uint8)((timestamp.seconds & 0x000000ff));
    PduInfo.sdu[4] = (uint8)((timestamp.nanoseconds & 0xff000000) >> 24);
    PduInfo.sdu[5] = (uint8)((timestamp.nanoseconds & 0x00ff0000) >> 16);
    PduInfo.sdu[6] = (uint8)((timestamp.nanoseconds & 0x0000ff00) >> 8);
    PduInfo.sdu[7] = (uint8)((timestamp.nanoseconds & 0x000000ff));
    PduInfo.sdu[7] = (uint8)(Mcu_ResetReason);

    Can_Write(SlaveTestCanHth, &PduInfo);
}

#if(DV_TEST_ENABLE == 1)
/*******************************************************************************
**  函数名称: SendNetworkStatusMsg
**  功能描述: 发送移动网络连接状态报文 (0x460)
**  输入参数: 无
**  输出参数: 无
**  返回值:   无
*******************************************************************************/
void SendNetworkStatusMsg(void)
{
    CpuDtcSync_t dtcInfo = {0};
    uint8 csqValue = 99; /*  默认无信号 */
    uint8 operatorNetwork = 0x00; /*  默认UNKNOWN */
    uint8 connState = 0x02; /*  默认UNKNOWN */

    /*  从SDK获取网络状态 */
    if (StateSyncGetDtcstate(&dtcInfo) == 0)
    {
        /*  Byte4: 移动网络连接状态 */
        connState = dtcInfo.dtcState.mobileNetState;
        /*  Byte5: CSQ信号值 */
        csqValue = ((dtcInfo.dtcState.signalStrength <= 31) || (dtcInfo.dtcState.signalStrength == 99)) ?
            dtcInfo.dtcState.signalStrength : 99;
        /*  Byte6: 运营商网络 */
        if (dtcInfo.dtcState.networkType == 0)
        {
            operatorNetwork = 0x02; /*  2G */
        }
        else if (dtcInfo.dtcState.networkType == 1)
        {
            operatorNetwork = 0x03; /*  3G */
        }
        else if (dtcInfo.dtcState.networkType == 2)
        {
            operatorNetwork = 0x06; /*  4G */
        }
        else if (dtcInfo.dtcState.networkType == 3)
        {
            operatorNetwork = 0x07; /*  5G */
        }
        else
        {
            operatorNetwork = 0x00; /*  UNKNOWN */
        }
    }

    /*  报文格式: 04 60 0B XX XX XX XX XX */
    NetworkStatusPduInfo.sdu[0] = 0x04;
    NetworkStatusPduInfo.sdu[1] = 0x60;
    NetworkStatusPduInfo.sdu[2] = 0x0B;
    NetworkStatusPduInfo.sdu[3] = 0x00;
    NetworkStatusPduInfo.sdu[4] = connState;
    NetworkStatusPduInfo.sdu[5] = csqValue;
    /*  Byte7-8: 保留 */
    NetworkStatusPduInfo.sdu[6] = operatorNetwork;
    NetworkStatusPduInfo.sdu[7] = 0x00;

    Can_Write(NetworkStatusCanHth, &NetworkStatusPduInfo);
}

static uint8 GetDtcBitState(uint32 dtcBitmap, uint8 bitIndex)
{
    return ((dtcBitmap & ((uint32)1u << bitIndex)) != 0u) ? 0x01u : 0x00u;
}

static uint8 GetSpeakerFaultState(uint32 dtcBitmap)
{
    if ((GetDtcBitState(dtcBitmap, E_STATE_SYNC_DTC_BIT_SPEAKER_TO_GROUND_SHORT) != 0u) ||
        (GetDtcBitState(dtcBitmap, E_STATE_SYNC_DTC_BIT_SPEAKER_OPEN_OR_SHORT) != 0u) ||
        (GetDtcBitState(dtcBitmap, E_STATE_SYNC_DTC_BIT_SPEAKER_TO_POWER_SHORT) != 0u))
    {
        return 0x01u;
    }

    return 0x00u;
}

/*******************************************************************************
**  函数名称: SendSystemStatusMsg
**  功能描述: 发送系统硬件状态报文 (0x461)
**  输入参数: emmcState - EMMC状态 (0x00=Normal, 0x01=Fault)
**             phyState - PHY状态 (0x00=Normal, 0x01=Fault)
**             speakerState - 扬声器状态 (0x00=Normal, 0x01=Fault)
**             hsmState - HSM状态 (0x00=Normal, 0x01=Fault)
**             gpsState - GPS状态 (00=not used, 01=Fix not available, 02=Fix in 2D mode, 03=Fix in 3D mode)
**  输出参数: 无
**  返回值:   无
*******************************************************************************/
void SendSystemStatusMsg(void)
{
    CpuDtcSync_t dtcInfo = {0};
    uint32 dtcBitmap = 0u;
    uint8 emmcState = 0x02u;
    uint8 phyState = 0x02u;
    uint8 speakerState = 0x02u;
    uint8 hsmState = 0x02u;
    uint8 gpsState = 0x02u;

    if (StateSyncGetDtcstate(&dtcInfo) == 0)
    {
        dtcBitmap = dtcInfo.dtcState.dtcBitmap;
        if(dtcInfo.dtcState.emmcState == 0)
        {
            emmcState = 0x1u;
        }
        else
        {
            emmcState = 0x00u;
        }
        phyState = dtcInfo.dtcState.phyState;
        speakerState = GetSpeakerFaultState(dtcBitmap);
        hsmState = dtcInfo.dtcState.hsmState;
        gpsState = dtcInfo.dtcState.gpsLocationState;
    }

    /*  报文格式: 04 61 0B XX XX XX XX XX */
    SystemStatusPduInfo.sdu[0] = 0x04;
    SystemStatusPduInfo.sdu[1] = 0x61;
    SystemStatusPduInfo.sdu[2] = 0x0B;
    /*  Byte4: EMMC状态 */
    SystemStatusPduInfo.sdu[3] = emmcState;
    /*  Byte5: PHY状态 */
    SystemStatusPduInfo.sdu[4] = phyState;
    /*  Byte6: 扬声器状态 */
    SystemStatusPduInfo.sdu[5] = speakerState;
    /*  Byte7: HSM状态 */
    SystemStatusPduInfo.sdu[6] = hsmState;
    /*  Byte8: GPS状态 */
    SystemStatusPduInfo.sdu[7] = gpsState;

    Can_Write(SystemStatusCanHth, &SystemStatusPduInfo);
}

/*******************************************************************************
**  函数名称: SendSystemInfoMsg
**  功能描述: 发送系统信息报文 (0x462)
**  输入参数: 无
**  输出参数: 无
**  返回值:   无
*******************************************************************************/
void SendSystemInfoMsg(void)
{
    HalStateSync_t halState = {0};
    uint8 cpuTemp = 0;    /*  默认CPU温度 */
    uint8 cpuUsage = 0;   /*  默认CPU占用率 */
    uint8 cpuWorkState = 0x00; /*  默认Normal */
    uint8 keepAliveStatus = 0;

    /*  从SDK获取硬件状态 */
    sint16 statusHal = StateSyncGetHalstate(&halState);
    if (statusHal == 0)
    {
        /*  Byte4: CPU温度 */
        cpuTemp = (uint8)(halState.cpu0Temp / 10);
        /*  Byte5: CPU占用率 */
        cpuUsage = (halState.cpuUsage <= 99) ? halState.cpuUsage : 99;
    }

    /*  从SDK获取心跳状态 */
    keepAliveStatus = MpuPowerSyncSdkGetNadModuleStatus();
    /*  Byte6: CPU工作状态 - 心跳丢失为Fault，心跳未丢失为Normal */
    cpuWorkState = (keepAliveStatus == 1) ? 0x01 : 0x00;

    /*  报文格式: 04 62 0B XX XX XX XX XX */
    SystemInfoPduInfo.sdu[0] = 0x04;
    SystemInfoPduInfo.sdu[1] = 0x62;
    SystemInfoPduInfo.sdu[2] = 0x0B;
    /*  Byte4: CPU温度 */
    SystemInfoPduInfo.sdu[3] = 0x00;
    /*  Byte5: CPU占用率 */
    SystemInfoPduInfo.sdu[4] = cpuTemp;
    /*  Byte6: CPU工作状态 */
    SystemInfoPduInfo.sdu[5] = cpuUsage;
    /*  Byte7-8: 保留 */
    SystemInfoPduInfo.sdu[6] = cpuWorkState;
    SystemInfoPduInfo.sdu[7] = 0x00;

    Can_Write(SystemInfoCanHth, &SystemInfoPduInfo);
}

void Dv_Test(void)
{
    SendNetworkStatusMsg();
    SendSystemStatusMsg();
    SendSystemInfoMsg();
}
#endif

