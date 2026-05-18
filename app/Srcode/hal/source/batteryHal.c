#include "batteryHal.h"
#include "peripheralHal.h"

#include "r_port.h"
#include "r_cg_port.h"
#include "Dio.h"
#include "logHal.h"

/*************************************************
  Function:     BatteryHalInit
  Description:  Battery module init
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
int16_t BatteryHalInit(void)
{
    /******** BUB_BOOST_EN ***********************/
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC10 &= (uint32_t) ~_PORT_PMn15_MODE_UNUSED;
    PORT.PDSC10 |= _PORT_PDSCn15_SLOW_MODE_SELECT;
    PORT.PPCMD10 = _WRITE_PROTECT_COMMAND;
    PORT.PODC10 &= (uint32_t) ~_PORT_PMn15_MODE_UNUSED;
    PORT.PODC10 |= _PORT_PODCn15_PUSH_PULL;
    PORT.PBDC10 &= (uint16_t) ~_PORT_PMn15_MODE_UNUSED;
    PORT.PBDC10 |= _PORT_PBDCn15_PBDC_MODE_DISABLED;
    PORT.P10 &= (uint16_t) ~_PORT_PMn15_MODE_UNUSED;
    PORT.P10 |= _PORT_Pn15_OUTPUT_HIGH;
    PORT.PM10 &= (uint16_t) ~_PORT_PMn15_MODE_UNUSED;
    PORT.PM10 |= _PORT_PMn15_MODE_OUTPUT;

    /******** BUB_CHARGE_EN ***********************/
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC0 &= (uint32_t) ~_PORT_PMn13_MODE_UNUSED;
    PORT.PDSC0 |= _PORT_PDSCn13_SLOW_MODE_SELECT;
    PORT.PPCMD0 = _WRITE_PROTECT_COMMAND;
    PORT.PODC0 &= (uint32_t) ~_PORT_PMn13_MODE_UNUSED;
    PORT.PODC0 |= _PORT_PODCn13_PUSH_PULL;
    PORT.PBDC0 &= (uint16_t) ~_PORT_PMn13_MODE_UNUSED;
    PORT.PBDC0 |= _PORT_PBDCn13_PBDC_MODE_DISABLED;
    PORT.P0 &= (uint16_t) ~_PORT_PMn13_MODE_UNUSED;
    PORT.P0 |= _PORT_Pn13_OUTPUT_LOW;
    PORT.PM0 &= (uint16_t) ~_PORT_PMn13_MODE_UNUSED;
    PORT.PM0 |= _PORT_PMn13_MODE_OUTPUT;

    /******** BUB_DisCharge_EN ***********************/
    PORT.PPCMD20 = _WRITE_PROTECT_COMMAND;
    PORT.PDSC20 &= (uint32_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PDSC20 |= _PORT_PDSCn5_SLOW_MODE_SELECT;
    PORT.PPCMD20 = _WRITE_PROTECT_COMMAND;
    PORT.PODC20 &= (uint32_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PODC20 |= _PORT_PODCn5_PUSH_PULL;
    PORT.PBDC20 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PBDC20 |= _PORT_PBDCn5_PBDC_MODE_DISABLED;
    PORT.P20 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.P20 |= _PORT_Pn5_OUTPUT_LOW;
    PORT.PM20 &= (uint16_t) ~_PORT_PMn5_MODE_UNUSED;
    PORT.PM20 |= _PORT_PMn5_MODE_OUTPUT;

    return 0;
}

void BatteryHalBoostEnable(void)
{
    R_PORT_SetGpioOutput(Port10, 15, 1);
}

void BatteryHalBoostDisable(void)
{
    R_PORT_SetGpioOutput(Port10, 15, 0);
}

/*************************************************
  Function:     BatteryHalEnableOut
  Description:  Battery enable out
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void BatteryHalEnableOut(void)
{
    //R_PORT_SetGpioOutput(Port10, 15, 1);
    R_PORT_SetGpioOutput(Port20, 5, 1);
}

/*************************************************
  Function:     BatteryHalDisableOut
  Description:  Battery disable out
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void BatteryHalDisableOut(void)
{
    //R_PORT_SetGpioOutput(Port10, 15, 0);
    R_PORT_SetGpioOutput(Port20, 5, 0);
}

/*************************************************
  Function:     BatteryHalEnableCharge
  Description:  Battery enable charge
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void BatteryHalEnableCharge(void)
{
    R_PORT_SetGpioOutput(Port0, 13, 1);
}
/*************************************************
  Function:     BatteryHalDisableCharge
  Description:  Battery disable charge
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void BatteryHalDisableCharge(void)
{
    R_PORT_SetGpioOutput(Port0, 13, 0);
}

/*************************************************
  Function:     BatteryHalGetVoltage
  Description:  Get battery voltage
  Input:        None
  Output:       pVoltage : Address of the output voltage value
  Return:       0  : get success
                -1 : get failed
  Others:       None
*************************************************/
int16_t BatteryHalGetVoltage(uint32_t *pVoltage)
{
    int16_t ret = 0;
    uint32_t voltage;
    ret = PeripheralHalAdGet(AD0_CHANNEL_BUB_VOLTAGE_ADC, &voltage);
    //TBOX_PRINT("voltage_adccaiji = %d\n", voltage);

    if(ret == 0)
    {
        *pVoltage = voltage;
        return 0;
    }
    else
    {
        return -1;
    }
}

/*************************************************
  Function:     BatteryHalGetNtc
  Description:  Get NTC AD value
  Input:        None
  Output:       pVoltage : Address of the output voltage value
  Return:       0  : get success
                -1 : get failed
  Others:       None
*************************************************/
int16_t BatteryHalGetNtc(uint32_t *pVoltage)
{
    int16_t ret = 0;
    uint32_t voltage;
    ret = PeripheralHalAdGet(AD0_CHANNEL_BUB_TEMP_ADC, &voltage);
    // TBOX_PRINT("voltage_tempADC = %d\n", voltage);
    if(ret == 0)
    {
        *pVoltage = voltage;
        return 0;
    }
    else
    {
        return -1;
    }
}

/*************************************************
  Function:     BatteryHalEnableCheck
  Description:  Battery enable check 
  Input:        None
  Output:       None
  Return:       None
  Others:       None
*************************************************/
void BatteryHalEnableCheck(uint8_t flag)
{
    
}

/*************************************************
  Function:     BatteryHalGetChargeState
  Description:  Battery enable check 
  Input:        None
  Output:       None
  Return:       0 : idle state
                1 : charge state
                2 : enable state
  Others:       None
*************************************************/
int16_t BatteryHalGetState(void)
{
    if(R_PORT_GetLevel(Port0, 13))
    {
        return 1;
    }
    else if(Dio_ReadChannel(DioConf_DioChannel_DIO_Channel_IG1_INT_Pin1_8) == STD_HIGH)
    {
        return 2;
    }
    else
    {
        return 0;
    }
}
