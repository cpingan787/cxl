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
 *  @MCU                : R7F7015813
 *  @file               : Rte_Dem.c
 *  @author             : iSoft
 *  @date               : 2026-06-21 16:50:31
 *  @vendor             : iSoft
 *  @description        : 
 *  @specification(S)   : AUTOSAR Classic Platform R19-11
 *  @toolVersion        : 2.2.0.3
 */
/*==============================================================================*/

#include "Rte_Dem.h"
#include "PeripheralHal.h"
#include "Com.h"
#include "timeSyncSdk.h"
#include "stateSyncSdk.h"
#include "canPeriodTask.h"
#include "faultSyncSdk.h"
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
    if (Buffer == NULL_PTR)
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
    uint32 odometer = 0;            //保存里程原始值
    uint8 odometerValid = 0;        //保存里程有效标志
    Std_ReturnType retOdo = E_NOT_OK;  //保存里程读取结果
    Std_ReturnType retValid = E_NOT_OK;  //保存有效位读取结果
    boolean useCurrentOdometer = FALSE;

    static uint32 s_lastValidOdometer = 0;
    static boolean s_hasLastValidOdometer = FALSE;

    if (Buffer == NULL_PTR)
    {
        return E_NOT_OK;
    }
    (void)Com_ReceiveSignalGroup(                                        
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx);
    retOdo = Com_ReceiveSignal(                                          /* 读取整车里程值信号 */
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,
        &odometer);
    retValid = Com_ReceiveSignal(                                           /* 读取里程有效位信号 */
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,
        &odometerValid);
    if ((retOdo == E_OK) && (retValid == E_OK) && (odometerValid != 0))      /* 判断本次是否成功读取到有效里程：两次读取都成功且有效位不为 0 */
    {
        s_lastValidOdometer = odometer;                                
        s_hasLastValidOdometer = TRUE;
        useCurrentOdometer = TRUE;                                  
    }
    else if (retOdo == E_OK)                            
    {
        useCurrentOdometer = TRUE;                                
    }
    else if (s_hasLastValidOdometer == TRUE)
    {
        odometer = s_lastValidOdometer; 
        useCurrentOdometer = TRUE;                              
    }
    else                                                                
    {
        return E_NOT_OK;                                                
    }

    if (useCurrentOdometer != TRUE)
    {
        return E_NOT_OK;
    }
    Buffer[0] = (uint8)((odometer >> 16) & 0xFF);                   /* 里程高字节，按大端格式存入 byte1 */
    Buffer[1] = (uint8)((odometer >> 8) & 0xFF);                    /* 里程中字节，按大端格式存入 byte2 */
    Buffer[2] = (uint8)(odometer & 0xFF);                           /* 里程低字节，按大端格式存入 byte3 */
    return E_OK;
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
    uint8_t vehYear = 0;                                                             
    uint8_t vehMonth = 0;                                                            
    uint8_t vehDay = 0;                                                              
    uint8_t vehHour = 0;                                                             
    uint8_t vehMinute = 0;                                                           
    uint8_t vehSecond = 0;                                                           
    int8_t timeRet = -1;

    static uint8 s_lastValidTime[6] = {0};
    static boolean s_hasLastValidTime = FALSE;

    if (Buffer == NULL_PTR)
    {
       return E_NOT_OK;
    }
    timeRet = CanPeriodGetVehTime(&vehYear, &vehMonth, &vehDay, &vehHour, &vehMinute, &vehSecond);

    if ((timeRet == 0) &&                                                             
        (vehYear <= 255) &&                                                          
        (vehMonth >= 1) && (vehMonth <= 12) &&                                     
        (vehDay >= 1) && (vehDay <= 31) &&                                          
        (vehHour <= 23) &&                                                           
        (vehMinute <= 59) &&                                                         
        (vehSecond <= 59))                                                           
    {                                                                                 
        s_lastValidTime[0] = vehYear;                                                 
        s_lastValidTime[1] = vehMonth;                                                
        s_lastValidTime[2] = vehDay;                                                  
        s_lastValidTime[3] = vehHour;                                                 
        s_lastValidTime[4] = vehMinute;                                               
        s_lastValidTime[5] = vehSecond;                                               
        s_hasLastValidTime = TRUE;                                                    
    }                                                                                 
    else if (s_hasLastValidTime != TRUE)                                             
    {                                                                                 
        return E_NOT_OK;                                                              
    }                   

    Buffer[0] = s_lastValidTime[0];                                     
    Buffer[1] = s_lastValidTime[1];                                     
    Buffer[2] = s_lastValidTime[2];                                     
    Buffer[3] = s_lastValidTime[3];                                     
    Buffer[4] = s_lastValidTime[4];                                     
    Buffer[5] = s_lastValidTime[5];
    return E_OK;
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
    uint16 vehicleSpeed = 0;       //车速原始值
    uint8 vehicleSpeedValid = 0;   //车速有效位
    Std_ReturnType retSpeed = E_NOT_OK;    //保存车速的读取结果
    Std_ReturnType retValid = E_NOT_OK;    //保存车速的有效位读取结果

    static uint16 s_lastValidVehicleSpeed = 0;
    static boolean s_hasLastValidVehicleSpeed = FALSE;

    if (Buffer == NULL_PTR)
    {
       return E_NOT_OK;
    }

    (void)Com_ReceiveSignalGroup(                                        
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx);

    retSpeed = Com_ReceiveSignal(        //读取速度                                   
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,
        &vehicleSpeed);
    
    retValid = Com_ReceiveSignal(          //读取车速有效信号位                                          
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvgV_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,
        &vehicleSpeedValid);

    if ((retSpeed == E_OK) &&                                                        
        (retValid == E_OK) &&                                                        
        (vehicleSpeedValid == 0))                                                   /* 判断该车速当前是否有效，非 0 表示有效 */
    {                                                                                
        s_lastValidVehicleSpeed = vehicleSpeed;                                      
        s_hasLastValidVehicleSpeed = TRUE;                                           
    }                                                                                
    else if (s_hasLastValidVehicleSpeed == TRUE)                                     
    {                                                                                
        vehicleSpeed = s_lastValidVehicleSpeed;                                      
    }                                                                                
    else                                                                             
    {                                                                                
        return E_NOT_OK;                                                             
    }         

    Buffer[0] = (uint8)(vehicleSpeed >> 8);                          /* 大端高字节放前面 */
    Buffer[1] = (uint8)(vehicleSpeed & 0x00FF);                      /* 大端低字节放后面 */
    return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}
Std_ReturnType  Rte_ReadData_D002( uint8* Buffer )
{
    /** DO NOT CHANGE THIS COMMENT!
    * <USERBLOCK Rte_ReadData_D002>
    */
    /* custom code.... */
    uint8 vehicleMode = 0;                                           //对应bit7-4 
    uint8 vehicleModeValid = 0;                                      //保存Vehicle Mode有效位
    uint8 usageMode = 0;                                             //对应表bit3-0 
    uint8 usageModeValid = 0;                                        //保存Usage Mode有效位
    Std_ReturnType retVehicleMode = E_NOT_OK;                        //保存vehicleMode 读取结果
    Std_ReturnType retVehicleModeValid = E_NOT_OK;                   //保存 vehicleMode valid 读取结果
    Std_ReturnType retUsageMode = E_NOT_OK;                          //保存 usageMode 读取结果
    Std_ReturnType retUsageModeValid = E_NOT_OK;                     //保存 usageMode valid 读取结果

    boolean hasVehicleModeToUse = FALSE;
    boolean hasUsageModeToUse = FALSE;

    static uint8 s_lastValidVehicleMode = 0;
    static boolean s_hasLastValidVehicleMode = FALSE;

    static uint8 s_lastValidUsageMode = 0;
    static boolean s_hasLastValidUsageMode = FALSE;

    if (Buffer == NULL_PTR)
    {
        return E_NOT_OK;
    }

    (void)Com_ReceiveSignalGroup(                                        
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx);

    retVehicleMode = Com_ReceiveSignal(                                         /* 读取 Vehicle Mode */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &vehicleMode);

    retVehicleModeValid = Com_ReceiveSignal(                                        /* 读取 Vehicle Mode 有效位 */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &vehicleModeValid);

    retUsageMode = Com_ReceiveSignal(                                         /* 读取 Usage Mode */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usageMode);

    retUsageModeValid = Com_ReceiveSignal(                                           /* 读取 Usage Mode 有效位 */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usageModeValid);

    if ((retVehicleMode == E_OK) &&                                                  
        (retVehicleModeValid == E_OK) &&                                             
        (vehicleModeValid != 0))                                                    
    {                                                                                
        s_lastValidVehicleMode = (uint8)(vehicleMode & 0x0F);                       
        s_hasLastValidVehicleMode = TRUE;                                            
        vehicleMode = s_lastValidVehicleMode;                                        
        hasVehicleModeToUse = TRUE;                                                  
    }                                                                                
    else if (s_hasLastValidVehicleMode == TRUE)                                      
    {                                                                                
        vehicleMode = s_lastValidVehicleMode;                                        
        hasVehicleModeToUse = TRUE;                                                  
    }                                                                                

    if ((retUsageMode == E_OK) &&                                                    
        (retUsageModeValid == E_OK) &&                                               
        (usageModeValid != 0))                                                      
    {                                                                                
        s_lastValidUsageMode = (uint8)(usageMode & 0x0F);                           
        s_hasLastValidUsageMode = TRUE;                                              
        usageMode = s_lastValidUsageMode;                                            
        hasUsageModeToUse = TRUE;                                                   
    }                                                                                
    else if (s_hasLastValidUsageMode == TRUE)                                        
    {                                                                                
        usageMode = s_lastValidUsageMode;                                            
        hasUsageModeToUse = TRUE;                                                    
    }                                                                               

    if ((hasVehicleModeToUse != TRUE) || (hasUsageModeToUse != TRUE))                
    {                                                                               
        return E_NOT_OK;                                                             
    }                                                                                

    Buffer[0] = (uint8)(((vehicleMode & 0x0F) << 4) |                              
                        (usageMode & 0x0F));
    return E_OK;
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

    if (Buffer == NULL_PTR)
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
    /** DO NOT CHANGE THIS COMMENT!
    * </USERBLOCK>
    */
}

