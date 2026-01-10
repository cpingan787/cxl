#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "mpuHal.h"
#include "logHal.h"
#include "firmwareUpdateSdk.h"
#include "parameterSyncSdk.h"
#include "stateSyncSdk.h"
#include "timeSyncSdk.h"
#include "mpuPowerSyncSdk.h"
#include "mcuMpuSyncTask.h"

static uint8_t g_syncParamList[]={
    E_ParamId_ICCID,
    E_ParamId_IMEI,
    E_ParamId_IMSI,
    E_ParamId_SN,
    E_ParamId_VIN,
    E_ParamId_TSPAddr,
    E_ParamId_TSPPort,
    E_ParamId_GB32960Addr,
    E_ParamId_GB329060Port,
    E_ParamId_HJ1239Addr,
    E_ParamId_HJ1239Port,
    E_ParamId_ECallNumber,
    E_ParamId_BCallNumber,
    E_ParamId_ICallNumber,
    E_ParamId_SW_Version,
    E_ParamId_HW_Version,
    E_ParamId_CustomSW_Version,
    E_ParamId_CarVersion,
    E_ParamId_ManufactureData,
    E_ParamId_ParatNumber,
    E_ParamId_SupIdentifier
};

static uint16_t g_cycleTime = 10;                     //ms
static int16_t g_mpuHandle = -1;                      //MPUͨ�ž��
static int16_t g_mpuHandleProject = -1;                      //MPUͨ�ž��
static uint8_t g_dataBuffer[1024] = {0};
static MpuHalDataPack_t  g_dataPack;
static MpuHalDataPack_t  g_dataPackProject;
static uint8_t g_recvDataBuffer[1024] = {0};
static uint8_t g_recvDataBufferProject[100] = {0};
static uint8_t g_dataBufferProject[100] = {0};

void mcuMpuSyncTaskMain(void *pvParameters)
{
    int16_t ret = -1;

    MpuHalDataPack_t  *timeSyncPack;
    MpuHalDataPack_t  *powerSyncPack;
    MpuHalDataPack_t  *stateSyncPack;
    MpuHalDataPack_t  *paramSyncPack;
    MpuHalDataPack_t  *faultSyncPack;
    
    MpuHalFilter_t filterProject;
    g_mpuHandleProject = MpuHalOpen();
    filterProject.aid = 0x30;
    filterProject.midMin = 0x01;
    filterProject.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandleProject,&filterProject);
    MpuHalSetRxBuffer(g_mpuHandleProject,g_recvDataBufferProject,sizeof(g_recvDataBufferProject));   
    g_dataPackProject.pDataBuffer = g_dataBufferProject;
    g_dataPackProject.dataBufferSize = sizeof(g_dataBufferProject);
    
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = 0x01;
    filter.midMin = 0x01;
    filter.midMax = 0xFF;
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));


    
    //����ͬ����ʼ��
    ParameterSyncSdkInit(g_mpuHandle,McuParameterRead,McuParameterWrite,g_cycleTime,g_syncParamList,sizeof(g_syncParamList));
    //״̬ͬ����ʼ��
    StateSyncSdkInit(g_mpuHandle,g_cycleTime);
    //������ʼ��
    FirmwareUpdateSdkInit(g_cycleTime);
    //ʱ��ͬ����ʼ��
    TimeSyncSdkInit(g_mpuHandle,g_cycleTime);
    //��Դ״̬ͬ����ʼ��
    MpuPowerSyncSdkInit(g_mpuHandle,g_cycleTime);
    
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
    while(1)
    {
        timeSyncPack  = NULL;
        powerSyncPack = NULL;
        stateSyncPack = NULL;
        paramSyncPack = NULL;
        faultSyncPack = NULL;
        //��������
        ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
        if(ret == MPU_HAL_STATUS_OK)    //���յ����ݣ�
        {
            if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x02) //ͬ��ʱ��
            {
                timeSyncPack = &g_dataPack;
            }
            else if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x03)//����ͬ��
            {
                paramSyncPack = &g_dataPack;
            }
            else if(g_dataPack.aid == 0x01 && (g_dataPack.mid == 0x10 || g_dataPack.mid == 0x16 || g_dataPack.mid == 0x17))//״̬ͬ��
            {
                stateSyncPack = &g_dataPack;
            }
            else if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x04)//��Դ״̬ͬ��
            {
                powerSyncPack = &g_dataPack;
            }
            else if(g_dataPack.aid == 0x01 && g_dataPack.mid == 0x11)//��Դ״̬ͬ��
            {
                stateSyncPack = &g_dataPack;
            }
        }
        
        ret = MpuHalReceive(g_mpuHandleProject,&g_dataPackProject,0);
        if(ret == MPU_HAL_STATUS_OK)    //���յ����ݣ�
        {
            if(g_dataPackProject.aid == 0x30 && g_dataPackProject.mid == 0x01)//��Դ״̬ͬ��
            {
                faultSyncPack = &g_dataPackProject;
            }
        }
        //����ͬ�����ڵ���
        ParameterSyncSdkCycleProcess(paramSyncPack);
        //״̬ͬ�����ڵ���
        StateSyncSdkCycleProcess(stateSyncPack);
        //�������ڵ���
        FirmwareUpdateSdkCycleProcess();
        //ʱ��ͬ�����ڵ���
        TimeSyncSdkCycleProcess(timeSyncPack);
        //��Դ״̬ͬ�����ڵ���
        MpuPowerSyncSdkCycleProcess(powerSyncPack);
        
        FaultSyncSdkCycleProcess(faultSyncPack);
    
        //��ʱ100ms
        vTaskDelay(10);//pdMS_TO_TICKS(100));
    }
    
}


