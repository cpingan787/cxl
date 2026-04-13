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

    static uint32 lastOdometer = 0;    //�������ԭʼֵ
    uint8 odometerValid = 0;          //���������Ч��־
    Std_ReturnType ret1 = E_NOT_OK;    //������̶�ȡ���
    Std_ReturnType ret2 = E_NOT_OK;    //������Чλ��ȡ���
    ret1 = Com_ReceiveSignal(                                          /* ��ȡ�������ֵ�ź� */
        IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx_IVehOdo_IICBVC_100ms_Group80_ICBVC_RZCUCANFD_100ms_FrP80_CONTROLLER_0_IAM_Rx,
        &odometer);
    ret2 = Com_ReceiveSignal(                                          /* ��ȡ�����Чλ�ź� */
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
    Buffer[0] = (uint8)((odometer >> 16) & 0xFF);                    /* ��̸��ֽڣ�����˸�ʽ���� byte1 */
    Buffer[1] = (uint8)((odometer >> 8) & 0xFF);                     /* ������ֽڣ�����˸�ʽ���� byte2 */
    Buffer[2] = (uint8)(odometer & 0xFF);                            /* ��̵��ֽڣ�����˸�ʽ���� byte3 */
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
    uint8_t timeSrc = 0;    //����ʱ��Դ��0=��Ч��1=NTP��2=GNSS
    uint32_t year = 0; 
    uint8_t month = 0;
    uint8_t day = 0;
    uint8_t hour = 0;
    uint8_t minute = 0;
    uint8_t second = 0;
    int16_t ret = 0;     //����ʱ���ȡ���
    ret = TimeSyncSdkGetRealTime(&timeSrc, &year, &month, &day, &hour, &minute, &second);
    if (ret != 0)
    {
        return E_NOT_OK;
    }
    if((year < 2000) || (year > 2255))
    {
        return E_NOT_OK;
    }
    Buffer[0] = (uint8_t)(year - 2000u);                              /* ����Year offset=2000������26��ʾ2026 */
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
    uint16 vehicleSpeed = 0;   //����ԭʼֵ
    Std_ReturnType ret = E_NOT_OK;    //���泵�ٶ�ȡ���
    ret = Com_ReceiveSignal(        //��ȡ�ٶ�                                  
        IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx_IVehSpdAvg_IIBS_20ms_Group11_IBS_CHCANFD_20ms_FrP11_CONTROLLER_0_IAM_Rx,
        &vehicleSpeed);
    if(ret != E_OK)
    {
        return E_OK;
    }
    Buffer[0] = (uint8)(vehicleSpeed >> 8);                          /* ��˸��ֽڷ�ǰ�� */
    Buffer[1] = (uint8)(vehicleSpeed & 0x00FF);                      /* ��˵��ֽڷź��� */
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
    uint8 vehicleMode = 0;                                           //��Ӧbit7-4 
    uint8 vehicleModeValid = 0;                                      //����Vehicle Mode��Чλ
    uint8 usageMode = 0;                                             //��Ӧ��bit3-0 
    uint8 usageModeValid = 0;                                        //����Usage Mode��Чλ
    Std_ReturnType ret1 = E_NOT_OK;                                  //����vehicleMode ��ȡ���
    Std_ReturnType ret2 = E_NOT_OK;                                  //���� vehicleMode valid ��ȡ���
    Std_ReturnType ret3 = E_NOT_OK;                                  //���� usageMode ��ȡ���
    Std_ReturnType ret4 = E_NOT_OK;                                  //���� usageMode valid ��ȡ���

    ret1 = Com_ReceiveSignal(                                         /* ��ȡ Vehicle Mode */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &vehicleMode);

    ret2 = Com_ReceiveSignal(                                         /* ��ȡ Vehicle Mode ��Чλ */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IVehMdV_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &vehicleModeValid);

    ret3 = Com_ReceiveSignal(                                         /* ��ȡ Usage Mode */
        IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx_IUsgMd_IICBVC_20ms_Group03_ICBVC_RZCUCANFD_20ms_FrP03_CONTROLLER_0_IAM_Rx,
        &usageMode);

    ret4 = Com_ReceiveSignal(                                         /* ��ȡ Usage Mode ��Чλ */
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
    if (Buffer == NULL)
    {
        return E_NOT_OK;
    }
    return E_OK;
    /* //DEM_UNUSED(Buffer);*/
    /** DO NOT CHANGE THIS COMMENT!
     * </USERBLOCK>
     */
}

