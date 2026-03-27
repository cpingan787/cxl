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
//     if (Buffer == NULL)
//     {
//         return E_NOT_OK;
//     }
//     static uint8_t lastVolt = 0;
//     uint32_t kl30Volt = 11726;
//     //uint8 ret = StateSyncGetKl30Volt(&kl30Volt);
//     uint8_t ret =0;
//     if (ret != 0)
//    {
//         if ((!lastVolt))
//         {
//             Buffer[0] = 0xFF;
//             return E_OK;
//         }
//         Buffer[0] = lastVolt;
//     }
//     Buffer[0] = (uint8)(kl30Volt / 100.0);
//     lastVolt = Buffer[0];
//     /* //DEM_UNUSED(Buffer);*/
//     return E_OK;
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
    // if (Buffer == NULL)
    // {
    //     return E_NOT_OK;
    // }
    // static uint32 lastOdometer = 0;
    // uint32 odometer;
    // uint8 odometerVaild;
    // Com_ReceiveSignal(IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx, &odometer);
    // Com_ReceiveSignal(IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx, &odometerVaild);
    // if (!odometerVaild)
    // {
    //     if (!lastOdometer)
    //     {
    //         Buffer[0] = 0xFF;
    //         Buffer[1] = 0xFF;
    //         Buffer[2] = 0xFF;
    //         return E_OK;
    //     }
    //     Buffer[0] = lastOdometer >> 16;
    //     Buffer[1] = lastOdometer >> 8;
    //     Buffer[2] = lastOdometer;
    //     return E_OK;
    // }
    // lastOdometer = odometer;
    // Buffer[0] = odometer >> 16;
    // Buffer[1] = odometer >> 8;
    // Buffer[2] = odometer;
    // /* //DEM_UNUSED(Buffer);*/
    // return E_OK;
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
//     if (Buffer == NULL)
//     {
//        return E_NOT_OK;
//     }
//     static uint8_t lastYear =0, lastMonth = 0, lastDay = 0, lastHour = 0, lastMin = 0, lastSec = 0;
//     uint8_t ret =0;
//     Buffer[0]=25;
//     Buffer[1]=11;
//     Buffer[2]=15;
//     Buffer[3]=12;
//     Buffer[4]=22;
//     Buffer[5]=33;
//     //uint8_t ret = CanPeriodGetVehTime(&Buffer[0], &Buffer[1], &Buffer[2], &Buffer[3], &Buffer[4], &Buffer[5]);
//     if (ret != 0)
//     {
//         if ((!lastYear) && (!lastMonth) && (!lastDay) && (!lastHour) && (!lastMin) && (!lastSec))
//         {
//             Buffer[0] = 0xFF;
//             Buffer[1] = 0xFF;
//             Buffer[2] = 0xFF;
//             Buffer[3] = 0xFF;
//             Buffer[4] = 0xFF;
//             Buffer[5] = 0xFF;
//             return E_OK;
//         }
//         Buffer[0] = lastYear;
//         Buffer[1] = lastMonth;
//         Buffer[2] = lastDay;
//         Buffer[3] = lastHour;
//         Buffer[4] = lastMin;
//         Buffer[5] = lastSec;
//         return E_OK;
//     }
//     lastYear = Buffer[0];
//     lastMonth = Buffer[1];
//     lastDay = Buffer[2];
//     lastHour = Buffer[3];
//     lastMin = Buffer[4];
//     lastSec = Buffer[5];
// TBOX_PRINT(" %d-%d-%d %d:%d:%d\n", Buffer[0], Buffer[1], Buffer[2], Buffer[3], Buffer[4], Buffer[5]);
//     /* //DEM_UNUSED(Buffer);*/
//     return E_OK;
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
//     if (Buffer == NULL)
//     {
//        return E_NOT_OK;
//     }
//    static uint16 lastSpeed = 0;
//     uint16 vehiSpeed;
//     uint8 vehiSpeedVaild;
//     Com_ReceiveSignal(IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx, &vehiSpeed);
//     Com_ReceiveSignal(IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdoV_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx, &vehiSpeedVaild);
//     if (!vehiSpeedVaild)
//     {
//         if (!lastSpeed)
//         {
//             Buffer[0] = 0xFF;
//             Buffer[1] = 0xFF;
//             return E_OK;
//         }
//         Buffer[1] = lastSpeed >> 8;
//         Buffer[2] = lastSpeed;
//         return E_OK;
//     }
//     lastSpeed = vehiSpeed;
//     Buffer[1] = vehiSpeed >> 8;
//     Buffer[2] = vehiSpeed;
//     /* //DEM_UNUSED(Buffer);*/
//     return E_OK;
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
// if (Buffer == NULL)
//     {
//         return E_NOT_OK;
//     }
//     static uint8 lastVehState = 0;
//     uint8 vehicleMode;
//     uint8 vehicleModeVaild;
//     uint8 usageMode;
//     uint8 usageModeVaild;
//     Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &vehicleMode);
//     Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &vehicleModeVaild);
//     Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &usageMode);
//     Com_ReceiveSignal(IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx, &usageModeVaild);
//     if ((!vehicleModeVaild) || (!usageModeVaild))
//     {
//         if (!lastVehState)
//         {
//             Buffer[0] = 0xFF;
//             return E_OK;
//         }
//         Buffer[0] = lastVehState;
//         return E_OK;
//     }
//     Buffer[0] = vehicleMode;
//     Buffer[0] = (Buffer[0] << 4) | (usageMode & 0x0F);
//     lastVehState = Buffer[0];
//     /* //DEM_UNUSED(Buffer);*/
//     return E_OK;
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
    // if (Buffer == NULL)
    // {
    //     return E_NOT_OK;
    // }
    // /* //DEM_UNUSED(Buffer);*/
    // return E_OK;
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

