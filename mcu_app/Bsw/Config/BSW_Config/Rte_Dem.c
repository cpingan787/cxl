/*==============================================================================*/
/**
 *
 * Copyright (C) iSOFT   (2023)
 *
 * All rights reserved.
 *
 * This document contains proprietary information belonging to iSOFT.
 * Passing on and copying of this document, and communication
 * of its contents is not permitted without prior written authorization.
 * 
 ********************************************************************************
 * 
 *  @MCU                : R7F7015833
 *  @file               : Rte_Dem.c
 *  @author             : iSoft
 *  @date               : 2026-01-19 21:44:12
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#include "Rte_Dem.h"
#include "peripheralHal.h"
#include "Com.h"
#include "timeSyncSdk.h"
#include "stateSyncSdk.h"
#define DEM_UNUSED(a) (void)(a)
/** DO NOT CHANGE THIS COMMENT!
 * <USERBLOCK includes>
 */

/* custom code.... */

/** DO NOT CHANGE THIS COMMENT!
 * </USERBLOCK>
 */

Std_ReturnType  Rte_ReadData_0112( uint8* Buffer )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_ReadData_0112>
     */
    /* custom code.... */
    if (Buffer == NULL)
    {
        return E_NOT_OK;
    }
    uint32_t supplyVoltage = 0;
    int16_t adRet = 0;
    adRet = PeripheralHalAdGet(AD0_CHANNEL_KL30, &supplyVoltage);
    if (adRet != 0)
    {
        return E_OK;
    }
    Buffer[0] = (uint8)(supplyVoltage / 100);
    return E_OK;
    /* //DEM_UNUSED(Buffer);*/
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
Std_ReturnType  Rte_ReadData_E101( uint8* Buffer )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_ReadData_E101>
     */
    /* custom code.... */
    if (Buffer == NULL)
    {
        return E_NOT_OK;
    }
     uint32 odometer = 0;

    static uint32 lastOdometer = 0;    //保存里程原始值
    uint8 odometerValid = 0;           //保存里程有效标志
    Std_ReturnType ret1 = E_NOT_OK;    //保存里程读取结果
    Std_ReturnType ret2 = E_NOT_OK;    //保存有效位读取结果
    ret1 = Com_ReceiveSignal(                                          /* 读取整车里程值信号 */
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,
        &odometer);
    ret2 = Com_ReceiveSignal(                                           /* 读取里程有效位信号 */
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,
        &odometerValid);
    if (ret1 != E_OK || ret2 != E_OK)
    {
        return E_NOT_OK;
    }
    if (odometerValid == 0)                                          
    {
        return E_NOT_OK;                                              
    }
    Buffer[0] = (uint8)((odometer >> 16) & 0xFF);                   /* 里程高字节，按大端格式存入 byte1 */
    Buffer[1] = (uint8)((odometer >> 8) & 0xFF);                    /* 里程中字节，按大端格式存入 byte2 */
    Buffer[2] = (uint8)(odometer & 0xFF);                           /* 里程低字节，按大端格式存入 byte3 */
    return E_OK;
    /* //DEM_UNUSED(Buffer);*/
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
Std_ReturnType  Rte_ReadData_010B( uint8* Buffer )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_ReadData_010B>
     */
    /* custom code.... */
    if (Buffer == NULL)
    {
       return E_NOT_OK;
    }
    uint8_t timeSrc = 0;   //保存时间源，0=无效，1=NTP，2=GNSS
    uint32_t year = 0; 
    uint8_t month = 0;
    uint8_t day = 0;
    uint8_t hour = 0;
    uint8_t minute = 0;
    uint8_t second = 0;
    int16_t ret = 0;     //保存时间读取结果
    ret = TimeSyncSdkGetRealTime(&timeSrc, &year, &month, &day, &hour, &minute, &second);
    if (ret != 0)
    {
        return E_NOT_OK;
    }
    if((year < 2000) || (year > 2255))
    {
        return E_NOT_OK;
    }
    Buffer[0] = (uint8_t)(year - 2000u);                              /* 表中Year offset=2000，所以26表示2026 */
    Buffer[1] = month;                                                
    Buffer[2] = day;                                                  
    Buffer[3] = hour;                                                 
    Buffer[4] = minute;                                               
    Buffer[5] = second;  
    return E_OK;                                             
    /* //DEM_UNUSED(Buffer);*/
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
Std_ReturnType  Rte_ReadData_E010( uint8* Buffer )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_ReadData_E010>
     */
    /* custom code.... */
    if (Buffer == NULL)
    {
       return E_NOT_OK;
    }
    uint16 vehicleSpeed = 0;   //车速原始值
    Std_ReturnType ret = E_NOT_OK;    //保存车速读取结果
    ret = Com_ReceiveSignal(        //读取速度                                   
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,
        &vehicleSpeed);
    if(ret != E_OK)
    {
        return E_OK;
    }
    Buffer[0] = (uint8)(vehicleSpeed >> 8);                          /* 大端高字节放前面 */
    Buffer[1] = (uint8)(vehicleSpeed & 0x00FF);                      /* 大端低字节放后面 */
    return E_OK;
    /* //DEM_UNUSED(Buffer);*/
    /** DO NOT CHANGE THIS COMMEN
     * </USERBLOCK>
     */
}
Std_ReturnType  Rte_ReadData_D002( uint8* Buffer )
{
    /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_ReadData_D002>
     */
    /* custom code.... */
if (Buffer == NULL)
    {
        return E_NOT_OK;
    }
    uint8 vehicleMode = 0;                                           //对应bit7-4 
    uint8 vehicleModeValid = 0;                                      //保存Vehicle Mode有效位
    uint8 usageMode = 0;                                             //对应表bit3-0 
    uint8 usageModeValid = 0;                                        //保存Usage Mode有效位
    Std_ReturnType ret1 = E_NOT_OK;                                  //保存vehicleMode 读取结果
    Std_ReturnType ret2 = E_NOT_OK;                                  //保存 vehicleMode valid 读取结果
    Std_ReturnType ret3 = E_NOT_OK;                                  //保存 usageMode 读取结果
    Std_ReturnType ret4 = E_NOT_OK;                                  //保存 usageMode valid 读取结果

    ret1 = Com_ReceiveSignal(                                         /* 读取 Vehicle Mode */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &vehicleMode);

    ret2 = Com_ReceiveSignal(                                        /* 读取 Vehicle Mode 有效位 */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &vehicleModeValid);

    ret3 = Com_ReceiveSignal(                                         /* 读取 Usage Mode */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usageMode);

    ret4 = Com_ReceiveSignal(                                           /* 读取 Usage Mode 有效位 */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usageModeValid);

    if ((ret1 != E_OK) || (ret2 != E_OK) || (ret3 != E_OK) || (ret4 != E_OK))   
    {
        return E_NOT_OK;                                              
    }
    
    if ((vehicleModeValid == 0) || (usageModeValid == 0))           
    {
        return E_NOT_OK;                                              
    }
    Buffer[0] = (uint8)(((vehicleMode & 0x0F) << 4) | (usageMode & 0x0F));
    return E_OK;
    /* //DEM_UNUSED(Buffer);*/
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}
Std_ReturnType  Rte_ReadData_BE80( uint8* Buffer )
{
     /** DO NOT CHANGE THIS COMMENT!
     * <USERBLOCK Rte_ReadData_BE80>
     */
    /* custom code.... */
    Be80SnapshotInfo_t be80Info;   //接收BE80快照缓存信息
    int16_t ret = -1;              //0表示读取到有效数据，非0表示当前无有效缓存数据

    if (Buffer == NULL)
    {
        return E_NOT_OK;
    }

    Buffer[0] = 0xFF;                                            // 默认高字节：ServiceID默认值0xFFFF的高字节
    Buffer[1] = 0xFF;                                            // 默认低字节：ServiceID默认值0xFFFF的低字节
    Buffer[2] = 0xFF;                                            // 默认高字节：ServiceInstanceID默认值0xFFFF的高字节
    Buffer[3] = 0xFF;                                            // 默认低字节：ServiceInstanceID默认值0xFFFF的低字节
    Buffer[4] = 0xFF;                                            // 默认高字节：MethodEventID默认值0xFFFF的高字节
    Buffer[5] = 0xFF;                                            // 默认低字节：MethodEventID默认值0xFFFF的低字节
    Buffer[6] = 0xFF;                                            // 默认字节：ServiceStatus默认值0xFF

    ret = StateSyncGetBe80SnapshotInfo(&be80Info);    //获取同步信息
    if(ret != 0)
    {
        return E_OK;
    }

    Buffer[0] = (uint8_t)((be80Info.serviceId >> 8) & 0xFF);            // 按大端格式填充ServiceID高字节
    Buffer[1] = (uint8_t)(be80Info.serviceId & 0xFF);                   // 按大端格式填充ServiceID低字节
    Buffer[2] = (uint8_t)((be80Info.serviceInstanceId >> 8) & 0xFF);    // 按大端格式填充ServiceInstanceID高字节
    Buffer[3] = (uint8_t)(be80Info.serviceInstanceId & 0xFF);           // 按大端格式填充ServiceInstanceID低字节
    Buffer[4] = (uint8_t)((be80Info.methodEventId >> 8) & 0xFF);        // 按大端格式填充MethodEventID高字节
    Buffer[5] = (uint8_t)(be80Info.methodEventId & 0xFF);               // 按大端格式填充MethodEventID低字节
    Buffer[6] = be80Info.serviceStatus;                                 // 直接填充1字节ServiceStatus
    return E_OK;
    /* //DEM_UNUSED(Buffer);*/
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

