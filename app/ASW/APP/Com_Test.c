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
#include "PowManager.h"
#include "Can_MainServ.h"
#include "stateSyncSdk.h"
#include "taskDtcProcess.h"

#define	StbM_SlaveTimeBaseId	0		/*  StbM Slave time domain ID */

#define	SlaveTimeID0	        0		/*  CanTSyn Slave time domain ID */

#define	SlaveTestCanID	        0x40000000 | 0x666	/*  CanTSyn Slave Test CAN ID */
#define	SlaveTestCanLength	    8	    /*  CanTSyn Slave Test Data Length */
#define	SlaveTestCanHth	        CanConf_CanHardwareObject_CanHardwareObject_Tx0	    /*  CanTSyn Slave Test Can Hth */

#define DV_TEST_ENABLE          0
#if(DV_TEST_ENABLE == 1)
/*  ϵͳ״̬���� CAN IDs */
#define NetworkStatusCanID 0x460                                        /*  �ƶ���������״̬ CAN ID */
#define NetworkStatusCanLength 8                                        /*  �ƶ���������״̬ Data Length */
#define NetworkStatusCanHth CanConf_CanHardwareObject_CanHardwareObject_Tx0 /*  �ƶ���������״̬ Can Hth */

#define SystemStatusCanID 0x461                                         /*  ϵͳӲ��״̬ CAN ID */
#define SystemStatusCanLength 8                                         /*  ϵͳӲ��״̬ Data Length */
#define SystemStatusCanHth CanConf_CanHardwareObject_CanHardwareObject_Tx0 /*  ϵͳӲ��״̬ Can Hth */

#define SystemInfoCanID 0x462                                           /*  ϵͳ��Ϣ CAN ID */
#define SystemInfoCanLength 8                                           /*  ϵͳ��Ϣ Data Length */
#define SystemInfoCanHth CanConf_CanHardwareObject_CanHardwareObject_Tx0 /*  ϵͳ��Ϣ Can Hth */
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
uint8 Test_ComRxSig1 = 0;
uint8 Test_ComRxSig2 = 0;
uint8 Test_ComRxSig3 = 0;
uint8 Test_ComRxSig4 = 0;
uint8 Test_ComRxSig5 = 0;
uint8 Test_ComRxSig6 = 0;
// uint8 Test_ComRxSig[8] = {0};
uint8 testcom[8]={0};

Mcu_ResetType Mcu_ResetReason;
uint8 testE2EResult = 0;

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
    // Com_SendSignal(IP2PExeAvlbl_synthesized_IAM_BKPCANFD_20ms_Fr_CONTROLLER_0_IAM_Tx,&Test_ComTxSig0);
     Com_ReceiveSignalGroup(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx);
    // Com_ReceiveSignal(IRHZCU_50ms_Group01_Reserved5_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx,&Test_ComRxSig0);
    // Com_ReceiveSignal(IRHZCU_50ms_Group01_Reserved6_RHZCU_RHBKBCANFD_50ms_FrP01_CONTROLLER_0_IAM_Rx,&Test_ComRxSig1);


    // Com_ReceiveSignalGroup(ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx);
    Com_ReceiveSignal(IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,&Test_ComRxSig0);
    // Com_ReceiveSignal(IExtrLckLghtRmndr_LHZCU_BKBCANFD_200ms_FrP50_CONTROLLER_0_IAM_Rx,&Test_ComRxSig1);
    // Com_ReceiveSignal(IDschrgTrgtSOCVal_ICB_ZONE_BDCAN_100ms_FrP00_CONTROLLER_0_IAM_Rx,&Test_ComRxSig2);
    // Com_ReceiveSignal(IICB_200ms_Group82_CRC_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx,&Test_ComRxSig3);
    // Com_ReceiveSignal(IFuelTotCapct_ICB_RZCUCANFD_200ms_FrP82_CONTROLLER_0_IAM_Rx,&Test_ComRxSig4);
    // Com_ReceiveSignal(IFLTireTemV_LHZCU_BKBCANFD_400ms_FrP03_CONTROLLER_0_IAM_Rx,&Test_ComRxSig5);
    // Com_ReceiveSignal(IRRTirePrs_LHZCU_BKBCANFD_400ms_FrP01_CONTROLLER_0_IAM_Rx,&Test_ComRxSig6);
    //Com_ReceiveSignal(ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx_ILHZCU_50ms_Group24_Reserved21_ILHZCU_50ms_Group24_LHZCU_BKBCANFD_50ms_FrP24_CONTROLLER_0_IAM_Rx,&E2E_R_TEST[1]);
    
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
    Com_SendSignal(IDTCInfomationIAM_DIAG_DTCInfo_IAM_CONTROLLER_0_IAM_Tx,&Event_TestSig0);
}

void Com_SecOC_Test(void)
{
    uint8 secocTestData[8];
    Can_PduType secocTestPduInfo ={&secocTestData[0], 0X40000000|0x667,0,8};
    uint32 Fvm_TripCounter = 0;
    uint16 Fvm_ResetCounter = 0;
    /*Event Test*/
    if(Event_Test == 1)
    {
        Com_SendSignal(IIAMTripCntResetResp_IAM_SecOC_ComKeyResp_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x98
        Com_SendSignal(IAPPPlnngPathLongdP1_synthesized_IAM_ZONE_CONNCA_0001_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0xB3
        Com_SendSignal(IAPPPlnngPathLatdP10_synthesized_IAM_ZONE_CONNCA_0000_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x9F
        Com_SendSignal(IAutodDrvngSysCtrlReq_synthesized_IAM_ZONE_CONNCANFD_E_CONTROLLER_0_IAM_Tx,&Event_TestSig0); //0x7D
	    Event_Test = 0;
    }
    

    Fvm_GetTripCounter(&Fvm_TripCounter);
    Fvm_GetResetCounter(&Fvm_ResetCounter);
    secocTestPduInfo.sdu[0] = (uint8)(Fvm_TripCounter >> 16);
    secocTestPduInfo.sdu[1] = (uint8)(Fvm_TripCounter >> 8);
    secocTestPduInfo.sdu[2] = (uint8)Fvm_TripCounter;

    secocTestPduInfo.sdu[3] = (uint8)(Fvm_ResetCounter >> 8);
    secocTestPduInfo.sdu[4] = (uint8)Fvm_ResetCounter ;

    secocTestPduInfo.sdu[5] = 0 ;
    secocTestPduInfo.sdu[6] = 0 ;
    secocTestPduInfo.sdu[7] = 0 ;

    Can_Write(SlaveTestCanHth, &secocTestPduInfo);
    
}

void CanTSyn_SlaveTest(void)
{
    StbM_GetCurrentTime(StbM_SlaveTimeBaseId, &timestamp,&userData);

    // PduInfo.sdu[0] = ((uint8)testE2EResult) ? ((uint8)testE2EResult) : ((uint8)((timestamp.seconds & 0x00ff0000) >> 16));
    // // PduInfo.sdu[0] = (uint8)(0x06);
    PduInfo.sdu[0] = (uint8)((timestamp.seconds & 0xff000000) >> 24);
    PduInfo.sdu[1] = (uint8)((timestamp.seconds & 0x00ff0000) >> 16);
    PduInfo.sdu[2] = (uint8)((timestamp.seconds & 0x0000ff00) >> 8);
    PduInfo.sdu[3] = (uint8)((timestamp.seconds & 0x000000ff));
    PduInfo.sdu[4] = (uint8)((timestamp.nanoseconds & 0xff000000) >> 24);
    PduInfo.sdu[5] = (uint8)((timestamp.nanoseconds & 0x00ff0000) >> 16);
    PduInfo.sdu[6] = (uint8)((timestamp.nanoseconds & 0x0000ff00) >> 8);
    PduInfo.sdu[7] = (uint8)((timestamp.nanoseconds & 0x000000ff));

    Can_Write(SlaveTestCanHth, &PduInfo);
}

void CanNM_RepeatReqTest(void)
{
    #if(CanNM_RepeatMODE_Request == STD_ON)
    uint8 Test_CanNMRxSig0 = FALSE;
    Com_ReceiveSignal(IRRTireSts_SVW_LHZCU_LHBKBCANFDF_400ms_FrP18_CONTROLLER_0_IAM_Rx,&Test_CanNMRxSig0);

    if(Test_CanNMRxSig0 == TRUE)
    {
        Nm_RepeatMessageRequest(0);
    }
    #endif

}

#if(DV_TEST_ENABLE == 1)
/*******************************************************************************
**  ��������: SendNetworkStatusMsg
**  ��������: �����ƶ���������״̬���� (0x460)
**  �������: ��
**  �������: ��
**  ����ֵ:   ��
*******************************************************************************/
void SendNetworkStatusMsg(void)
{
    CpuDtcSync_t dtcInfo = {0};
    uint8 csqValue = 99; /*  Ĭ�����ź� */
    uint8 operatorNetwork = 0x00; /*  Ĭ��UNKNOWN */
    uint8 connState = 0x02; /*  Ĭ��UNKNOWN */

    /*  ��SDK��ȡ����״̬ */
    if (StateSyncGetDtcstate(&dtcInfo) == 0)
    {
        /*  Byte4: �ƶ���������״̬ */
        connState = dtcInfo.dtcState.mobileNetState;
        /*  Byte5: CSQ�ź�ֵ */
        csqValue = ((dtcInfo.dtcState.signalStrength <= 31) || (dtcInfo.dtcState.signalStrength == 99)) ?
            dtcInfo.dtcState.signalStrength : 99;
        /*  Byte6: ��Ӫ������ */
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

    /*  ���ĸ�ʽ: 04 60 0B XX XX XX XX XX */
    NetworkStatusPduInfo.sdu[0] = 0x04;
    NetworkStatusPduInfo.sdu[1] = 0x60;
    NetworkStatusPduInfo.sdu[2] = 0x0B;
    NetworkStatusPduInfo.sdu[3] = 0x00;
    NetworkStatusPduInfo.sdu[4] = connState;
    NetworkStatusPduInfo.sdu[5] = csqValue;
    /*  Byte7-8: ���� */
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
**  ��������: SendSystemStatusMsg
**  ��������: ����ϵͳӲ��״̬���� (0x461)
**  �������: emmcState - EMMC״̬ (0x00=Normal, 0x01=Fault)
**             phyState - PHY״̬ (0x00=Normal, 0x01=Fault)
**             speakerState - ������״̬ (0x00=Normal, 0x01=Fault)
**             hsmState - HSM״̬ (0x00=Normal, 0x01=Fault)
**             gpsState - GPS״̬ (00=not used, 01=Fix not available, 02=Fix in 2D mode, 03=Fix in 3D mode)
**  �������: ��
**  ����ֵ:   ��
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

    /*  ���ĸ�ʽ: 04 61 0B XX XX XX XX XX */
    SystemStatusPduInfo.sdu[0] = 0x04;
    SystemStatusPduInfo.sdu[1] = 0x61;
    SystemStatusPduInfo.sdu[2] = 0x0B;
    /*  Byte4: EMMC״̬ */
    SystemStatusPduInfo.sdu[3] = emmcState;
    /*  Byte5: PHY״̬ */
    SystemStatusPduInfo.sdu[4] = phyState;
    /*  Byte6: ������״̬ */
    SystemStatusPduInfo.sdu[5] = speakerState;
    /*  Byte7: HSM״̬ */
    SystemStatusPduInfo.sdu[6] = hsmState;
    /*  Byte8: GPS״̬ */
    SystemStatusPduInfo.sdu[7] = gpsState;

    Can_Write(SystemStatusCanHth, &SystemStatusPduInfo);
}

/*******************************************************************************
**  ��������: SendSystemInfoMsg
**  ��������: ����ϵͳ��Ϣ���� (0x462)
**  �������: ��
**  �������: ��
**  ����ֵ:   ��
*******************************************************************************/
void SendSystemInfoMsg(void)
{
    HalStateSync_t halState = {0};
    uint8 cpuTemp = 0;    /*  Ĭ��CPU�¶� */
    uint8 cpuUsage = 0;   /*  Ĭ��CPUռ���� */
    uint8 cpuWorkState = 0x00; /*  Ĭ��Normal */
    uint8 keepAliveStatus = 0;
    uint8_t dtcStatus = 0;
    uint8_t micInStatus = 2;

    /*  ��SDK��ȡӲ��״̬ */
    sint16 statusHal = StateSyncGetHalstate(&halState);
    if (statusHal == 0)
    {
        /*  Byte4: CPU�¶� */
        cpuTemp = (uint8)(halState.cpu0Temp / 10);
        /*  Byte5: CPUռ���� */
        cpuUsage = (halState.cpuUsage <= 99) ? halState.cpuUsage : 99;
    }

    /*  ��SDK��ȡ����״̬ */
    keepAliveStatus = MpuPowerSyncSdkGetNadModuleStatus();
    /*  Byte6: CPU����״̬ - ������ʧΪFault������δ��ʧΪNormal */
    cpuWorkState = (keepAliveStatus == 1) ? 0x01 : 0x00;

    dtcStatus = DtcGetObjState(E_DTC_QUERY_MIC_IN);
    if(dtcStatus == E_DTC_QUERY_STATE_UNKNOWN)
    {
        micInStatus = 2;
    }
    else if(dtcStatus == E_DTC_QUERY_STATE_NORMAL)
    {
        micInStatus = 0;
    }
    else
    {
        micInStatus = 1;
    }

    /*  ���ĸ�ʽ: 04 62 0B XX XX XX XX XX */
    SystemInfoPduInfo.sdu[0] = 0x04;
    SystemInfoPduInfo.sdu[1] = 0x62;
    SystemInfoPduInfo.sdu[2] = 0x0B;
    /*  Byte4: CPU�¶� */
    SystemInfoPduInfo.sdu[3] = 0x00;
    /*  Byte5: CPUռ���� */
    SystemInfoPduInfo.sdu[4] = cpuTemp;
    /*  Byte6: CPU����״̬ */
    SystemInfoPduInfo.sdu[5] = cpuUsage;
    /*  Byte7-8: ���� */
    SystemInfoPduInfo.sdu[6] = cpuWorkState;
    SystemInfoPduInfo.sdu[7] = micInStatus;

    Can_Write(SystemInfoCanHth, &SystemInfoPduInfo);
}

void Dv_Test(void)
{
    SendNetworkStatusMsg();
    SendSystemStatusMsg();
    SendSystemInfoMsg();
}
#endif

