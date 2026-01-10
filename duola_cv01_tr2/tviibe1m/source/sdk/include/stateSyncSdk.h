/*************************************************
Copyright ? 2024 SiRun (Beijing) . All rights reserved.
  File Name:       stateSyncSdk.h
  Author:          lei.wang
  Created Time:    2024
  Description:     Synchronize status with CPU
   Others:      // ����˵��
*************************************************/
#ifndef _STATE_SYNC_SDK_H_
#define _STATE_SYNC_SDK_H_

#include "mpuHal.h"
#include "stdint.h"

typedef enum
{
    E_STATE_SYNC_LOCALTION_INFO_MID        = 0x10,
    E_STATE_SYNC_NET_INFO_MID              = 0x11,
    E_STATE_SYNC_HAL_STATE_MID             = 0x16,
    E_STATE_SYNC_TSP_CONNECT_STATE_MID     = 0x17
}StateSyncMid_e;


typedef struct 
{
	uint8_t     moduleState;     //ģ��״̬ 0���������� 1�������쳣
	uint8_t     wireState;		 //����״̬ 0: ���� 1�����߶�· 2�����ߵض�· 3�����ߵ�Դ��·
	uint8_t	    locationState;	 //��λ״̬ Bit0-bit5: GNSS��λ״̬ 0: δ��λ 1: ���㶨λ 2: ���㶨λ 3: RTK��λ
                                    //Bit6: 0-������1-����
                                    //Bit7: 0-��γ��1-��γ
	uint32_t	longitude;       //���ȣ���λ���ȣ����ȣ�10-7
	uint32_t	latitude;	     //γ�ȣ���λ���ȣ����ȣ�10-7
    uint8_t     flongitude[8];
    uint8_t     flatitude[8];
	uint16_t    altitude;	     //�̣߳���λ���ף����ȣ�0.1��
	uint16_t	speed;	         //�ٶȣ���λ��km/h�����ȣ�0.1km/h
	uint16_t	heading;	     //0...360	���򣬵�λ���ȣ����ȣ�0.1��
	uint16_t	accuracy;	     //��λˮƽ����,��λ�����ף����ȣ�1����
	uint8_t	    svsNum;	         //�ɼ���������
	uint8_t     useSvsnum;	     //ʹ����������
	uint32_t	timeStamp;	     //ʱ���
}LocationInfoSync_t;

typedef struct
{
	uint8_t     creg;           //פ��״̬��פ��ʧ��ʱ�������ֶ������壺0���ɹ� 1��ʧ��
	uint8_t     csq;            //�ź�������0-31��Ч
	uint8_t     netType;        //�������ͣ�0��GSM1��LTE
	uint8_t     apnCounter;     //APN���������6·APN
	uint8_t     apnStatus;      //0: δ���ӣ�1�������� Bit0����1·APN bit5����6·APN
  uint8_t     mainAntennaStatus;
  uint8_t     slaveAntennaStatus;
  uint8_t     simCardStatus;
}NetInfoSync_t;

typedef struct
{
	uint8_t     MemUsageStatus;  //cpu�ڴ�ʹ���� ���ٷֱ�
    uint8_t     cpuUsage;        //CPUʹ���ʣ��ٷֱ�
    uint16_t    tmpStatus;       //CPU�¶ȣ�
}HalStateSync_t;

typedef struct
{
    uint8_t      tspStatus;      //tsp�ɼ�ƽ̨����״̬ 0��δ��¼��1����¼
}TspStateSync_t;

typedef struct
{
    uint8_t EMMCStatus;         //
    uint8_t ETHStatus;        //
    uint8_t WIFIStatus;            //
}CpuDevicesStatus_t;

typedef struct
{
    LocationInfoSync_t locationInfo;    
    uint16_t timeCount;         //����ʱ������������ȷ��
    uint16_t failureTime;        //ʧЧʱ��
    uint8_t validity;            //�����Ƿ���Ч 1����Ч 0����Ч
}CpuLocationInfo_t;

typedef struct
{
    NetInfoSync_t netInfo;
    uint16_t timeCount;         //����ʱ������������ȷ��
    uint16_t failureTime;        //ʧЧʱ��
    uint8_t validity;            //�����Ƿ���Ч 1����Ч 0����Ч
}CpuNetInfoSync_t;

typedef struct
{
    HalStateSync_t halState;
    uint16_t timeCount;         //����ʱ������������ȷ��
    uint16_t failureTime;        //ʧЧʱ��
    uint8_t validity;            //�����Ƿ���Ч 1����Ч 0����Ч
}CpuHalStateSync_t;

typedef struct
{
    TspStateSync_t tspState;
    uint16_t timeCount;         //����ʱ������������ȷ��
    uint16_t failureTime;        //ʧЧʱ�� ��λms
    uint8_t validity;            //�����Ƿ���Ч 1����Ч 0����Ч
}CpuTspStateSync_t;

/*************************************************
  Function:       StateSyncSdkInit
  Description:    ״̬ͬ��ģ���ʼ���ӿ�
  Input:          mpuHandle��mpuͨ�ž��
                  cycleTime�����ڵ��ýӿڵ�������
  Output:         ��
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t StateSyncSdkInit(int16_t mpuHandle,uint16_t cycleTime);

/*************************************************
  Function:       StateSyncSdkCycleProcess
  Description:    ״̬ͬ��ģ�����ڵ��ýӿ�
  Input:          pRxData��������յ���CPU����
                  rxLength�����ݳ���
  Output:         ��
  Return:         ��
  Others:         
*************************************************/
void StateSyncSdkCycleProcess(MpuHalDataPack_t *msgData);

void FaultSyncSdkCycleProcess(MpuHalDataPack_t *msgData);

int16_t StateSyncGetDevicesStatus(CpuDevicesStatus_t *cpuDevicesStatus);
/*************************************************
  Function:       StateSyncGetLocationInfo
  Description:    ��ȡCPU��λ��Ϣ�ӿ�
  Input:          ��
  Output:         localtioninfo����λ��Ϣ
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t StateSyncGetLocationInfo(LocationInfoSync_t *localtionInfo);

/*************************************************
  Function:       StateSyncGetNetInfo
  Description:    ��ȡcpu������Ϣ�ӿ�
  Input:          ��
  Output:         netInfo��cpu������Ϣ
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t StateSyncGetNetInfo(NetInfoSync_t *netInfo);

/*************************************************
  Function:       StateSyncGetHalstate
  Description:    ��ȡcpuӲ��״̬
  Input:          ��
  Output:         halState��cpuӲ��״̬
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t StateSyncGetHalstate(HalStateSync_t *halState);

/*************************************************
  Function:       StateSyncGetTspState
  Description:    ��ȡԶ��ƽ̨����״̬
  Input:          ��
  Output:         tspState��ƽ̨����״̬
  Return:         0���ɹ�
                  -1��ʧ��
  Others:         
*************************************************/
int16_t StateSyncGetTspState(TspStateSync_t *tspState);

#endif
