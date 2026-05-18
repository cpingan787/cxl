#include "WDG_Test.h"

uint8 WDGCPCount = 1;
uint8 WDGRunMainFuc = 1;
uint8 WDGRunPerformReset = 0;
uint32 WDGInitStartTime = 0;
uint32 WDGInitEndTime = 0;
uint32 WDGInitTotalTime = 0;
uint32 WDGCurrentTime = 0;
uint8 WdgM_FirstRun = 1;

void SendMsg_111(uint8 status)
{
    uint8 msgData[8] = {0};
    Can_PduType pduInfo;
    
    /* 打包报文数据 */
    msgData[0] = WDGCPCount;
    msgData[1] = WDGRunMainFuc;
    msgData[2] = WDGRunPerformReset;
    
    /* 将WDGInitTotalTime的值转换成BCD码的形式 */
    uint32 totalTime = WDGInitTotalTime / 20; // 转换为us
    /* 第3字节：最高位的两位BCD */
    msgData[3] = ((totalTime / 10000000) % 10) << 4 | ((totalTime / 1000000) % 10);
    /* 第4字节：次高位的两位BCD */
    msgData[4] = ((totalTime / 100000) % 10) << 4 | ((totalTime / 10000) % 10);
    /* 第5字节：中间位的两位BCD */
    msgData[5] = ((totalTime / 1000) % 10) << 4 | ((totalTime / 100) % 10);
    /* 第6字节：最低位的两位BCD */
    msgData[6] = ((totalTime / 10) % 10) << 4 | (totalTime % 10);
    
    msgData[7] = status;
    
    /* 配置PDU信息 */
    pduInfo.sdu = msgData;
    pduInfo.id = MSG_ID_111;
    pduInfo.swPduHandle = 0;
    pduInfo.length = 8;
    
    /* 发送报文 */
    Can_Write(CanConf_CanHardwareObject_CanHardwareObject_Tx0, &pduInfo);
}

void SendMsg_112(void)
{
    uint8 msgData[4] = {0};
    Can_PduType pduInfo;
    uint32 timeValue = WDGCurrentTime;
    
    /* 将WDGCurrentTime的值转换成BCD码的形式 */
    /* 第0字节：最高位的两位BCD */
    msgData[0] = ((timeValue / 10000000) % 10) << 4 | ((timeValue / 1000000) % 10);
    /* 第1字节：次高位的两位BCD */
    msgData[1] = ((timeValue / 100000) % 10) << 4 | ((timeValue / 10000) % 10);
    /* 第2字节：中间位的两位BCD */
    msgData[2] = ((timeValue / 1000) % 10) << 4 | ((timeValue / 100) % 10);
    /* 第3字节：最低位的两位BCD */
    msgData[3] = ((timeValue / 10) % 10) << 4 | (timeValue % 10);
    
    /* 配置PDU信息 */
    pduInfo.sdu = msgData;
    pduInfo.id = MSG_ID_112;
    pduInfo.swPduHandle = 0;
    pduInfo.length = 4;
    
    /* 发送报文 */
    Can_Write(CanConf_CanHardwareObject_CanHardwareObject_Tx0, &pduInfo);
}

void ProcessMsg_222(const uint8* data, uint8 length)
{
    if (length >= 3)
    {
        /* 更新参数 */
        WDGCPCount = data[0];
        WDGRunMainFuc = data[1];
        WDGRunPerformReset = data[2];
        
        /* 发送响应报文 */
        SendMsg_111(MSG_STATUS_POSITIVE);
    }
}