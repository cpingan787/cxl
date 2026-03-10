#include "string.h"
#include "mpuHal.h"
#include "eolTestSyncWithCpu.h"

#define MPU_SYNC_EOL_TEST_AID                 0x05
#define MPU_SYNC_EOL_TEST_MID                 0x10
#define MPU_SYNC_EOL_TEST_SUBCMD_REQ          0x01
#define MPU_SYNC_EOL_TEST_SUBCMD_RESP         0x02

static int16_t g_mpuHandle = -1;                      //MPU通信句柄
static uint8_t g_dataBuffer[200] = {0};
static MpuHalDataPack_t  g_dataPack;
static uint8_t g_recvDataBuffer[200] = {0};

static uint8_t g_mpuDataBuffer[100] = {0} ;                //用来存储MCU请求和响应数据的缓存buffer   
static MpuHalDataPack_t g_mpuDataPack ;                     //用来存储要发送的请求和响应数据的缓存结构体

void EolTestSyncWithCpuInit(void)
{
    MpuHalFilter_t filter;
    g_mpuHandle = MpuHalOpen();

    filter.aid = MPU_SYNC_EOL_TEST_AID;
    filter.midMin = MPU_SYNC_EOL_TEST_MID;
    filter.midMax = MPU_SYNC_EOL_TEST_MID;
    
    MpuHalSetRxFilter(g_mpuHandle,&filter);
    MpuHalSetRxBuffer(g_mpuHandle,g_recvDataBuffer,sizeof(g_recvDataBuffer));
    
    return;
}

static void PackRequestControlCpuInterface(uint8_t controlItem,uint8_t *pControlData,uint16_t ControlDataLength)
{
    uint16_t i = 0;
    uint16_t lenth = 0;
    
    g_mpuDataPack.aid = MPU_SYNC_EOL_TEST_AID;
    g_mpuDataPack.mid = MPU_SYNC_EOL_TEST_MID;
    g_mpuDataPack.subcommand = MPU_SYNC_EOL_TEST_SUBCMD_REQ;
    
    memset(g_mpuDataBuffer,0,sizeof(g_mpuDataBuffer));
    
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = controlItem;
    g_mpuDataBuffer[1] = ControlDataLength&0xFF;
    for(i=0;i<ControlDataLength;i++)
    {
        g_mpuDataBuffer[2+i] = pControlData[i];
    }

    lenth = ControlDataLength+2;
    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = lenth;

    return ;
}

int16_t EolTestSyncWithCpuTransmit(uint8_t item, uint8_t *pData,uint16_t length)
{
    int16_t ret;
    uint16_t repeatCount;
    uint8_t rxSucess;
    ret = 0;
    repeatCount = 0;
    rxSucess = 0;
    //if(CheckControlItemIsValid(item)!=0)
    //{
    //    return -1;
    //}
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
    do
    {
        if(repeatCount>=1)
        {
            ret = 1;
            break;
        }
        //UartDriverHalReceiveWait(m_uartHandle,m_uartRxData,&rxLength,0);
        MpuHalReceive(g_mpuHandle,&g_dataPack,0);
        PackRequestControlCpuInterface(item,pData,length);
        MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
        while(1)
        {
            ret = MpuHalReceive(g_mpuHandle,&g_dataPack,150);
            if(ret==0)
            {
                uint8_t subCommand;
                uint8_t mid;
                mid = g_dataPack.mid;
                subCommand = g_dataPack.subcommand&0x7F;
                if(MPU_SYNC_EOL_TEST_MID==mid)
                {
                    if((MPU_SYNC_EOL_TEST_SUBCMD_RESP==subCommand) && (g_dataPack.pDataBuffer[1] == item))
                    {
                        //check return value is success
                        if(g_dataPack.pDataBuffer[0]!=0 )
                        {
                            ret = 1;//operation failed
                        }
                        rxSucess = 1;
                        break;
                    }          
                }
            }
            else
            {
                repeatCount++;
                break;
            }
        }
        if(rxSucess)
        {
            break;
        }    
    }while(1);
    
    if(rxSucess)
    {
        return 0;
    }  
    else
    {
        return -1;    
    }  
    
}

static void PackRequestGetCpuInfo(uint8_t GetInfoItem)
{
    
    g_mpuDataPack.aid = MPU_SYNC_EOL_TEST_AID;
    g_mpuDataPack.mid = MPU_SYNC_EOL_TEST_MID;
    g_mpuDataPack.subcommand = MPU_SYNC_EOL_TEST_SUBCMD_REQ;
    
    memset(g_mpuDataBuffer,0,sizeof(g_mpuDataBuffer));
    
    g_mpuDataPack.dataBufferSize = sizeof(g_mpuDataBuffer);
    g_mpuDataBuffer[0] = GetInfoItem;

    g_mpuDataPack.pDataBuffer = g_mpuDataBuffer;
    g_mpuDataPack.dataLength = 1;

    return ;
}

int16_t EolTestSyncWithCpuRecv(uint8_t item, uint8_t *pData,uint16_t *pLength)
{
    int16_t ret;
    uint16_t repeatCount;
    uint8_t rxSucess;
    ret = 0;
    repeatCount = 0;
    rxSucess = 0;
    //if(CheckGetItemIsValid(item)!=0)
    //{
    //    return -1;
    //}
    g_dataPack.pDataBuffer = g_dataBuffer;
    g_dataPack.dataBufferSize = sizeof(g_dataBuffer);
    do
    {
        if(repeatCount>=3)
        {
        ret = 1;
        break;
        }
        //clear uart buffer
        while(1)
        {
            //int16_t ret;
            ret = MpuHalReceive(g_mpuHandle,&g_dataPack,0);
            if(ret!=0)
            {
                break;
            }
        }
        
        PackRequestGetCpuInfo(item);
        //UartDriverHalTransmit(m_uartHandle,m_uartTxData,txLength);
        MpuHalTransmit(g_mpuHandle,&g_mpuDataPack);
        while(1)
        {
            ret = MpuHalReceive(g_mpuHandle,&g_dataPack,150);
            if(ret==0)
            {
                uint8_t subCommand;
                uint8_t mid;
                mid = g_dataPack.mid;
                subCommand = g_dataPack.subcommand&0x7F;
                if(MPU_SYNC_EOL_TEST_MID==mid)
                {
                    if(MPU_SYNC_EOL_TEST_SUBCMD_RESP == subCommand)
                    {
                        //check return value is success
                        if((g_dataPack.pDataBuffer[1]==item))
                        {
                            uint16_t length;              
                            length = g_dataPack.pDataBuffer[2];
                            for(uint16_t i=0;i<length;i++)
                            {
                                pData[i] = g_dataPack.pDataBuffer[3+i];
                            }
                            *pLength = length;
                            rxSucess = 1;
                            break;
                        }
            
                    }          
                }
            }
            else
            {
                repeatCount++;
                break;
            }
        }
        if(rxSucess)
        {
            break;
        }    
    }while(1);
    
    if(rxSucess)
    {
        return 0;
    }  
    else
    {
        return -1;    
    }
}