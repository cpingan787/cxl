#include "cy_project.h"
#include "cy_device_headers.h"

#include "batteryHal.h"
#include "peripheralHal.h"

//CHAR_ON
#define BATTERY_CHARGE_PORT     GPIO_PRT23
#define BATTERY_CHARGE_PIN      4
#define BATTERY_CHARGE_PIN_MUX  P23_4_GPIO
//5V_OUT_ON
#define BATTERY_OUT_PORT        GPIO_PRT2
#define BATTERY_OUT_PIN         3
#define BATTERY_OUT_PIN_MUX     P2_3_GPIO
//BATTERY_ON
#define BATTERY_SWITCHON_PORT       GPIO_PRT6
#define BATTERY_SWITCHON_PIN        5
#define BATTERY_SWITCHON_PIN_MUX    P6_5_GPIO
//CHECK_BATTERY
#define BATTERY_CHECK_PORT      GPIO_PRT12
#define BATTERY_CHECK_PIN       2
#define BATTERY_CHECK_PIN_MUX   P12_2_GPIO

static cy_stc_gpio_pin_config_t g_batteryPortPinCfg =
{
    .outVal = 0ul, // Pin output state 
    .driveMode = CY_GPIO_DM_STRONG_IN_OFF, // Drive mode 
    .hsiom = BATTERY_CHARGE_PIN_MUX, // HSIOM selection 
    .intEdge = 0ul, // Interrupt Edge type
    .intMask = 0ul, // Interrupt enable mask
    .vtrip = 0ul, // Input buffer voltage trip type
    .slewRate = 0ul, // Output buffer slew rate 
    .driveSel = 0ul, // Drive strength 
}; 

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
    //CHAR_ON pin init
    g_batteryPortPinCfg.hsiom = BATTERY_CHARGE_PIN_MUX;
    Cy_GPIO_Pin_Init(BATTERY_CHARGE_PORT,BATTERY_CHARGE_PIN,&g_batteryPortPinCfg);
    //5V_OUT_ON pin init
    g_batteryPortPinCfg.hsiom = BATTERY_OUT_PIN_MUX;
    Cy_GPIO_Pin_Init(BATTERY_OUT_PORT,BATTERY_OUT_PIN,&g_batteryPortPinCfg);
    
    //BATTERY_ON pin init
    g_batteryPortPinCfg.hsiom = BATTERY_SWITCHON_PIN_MUX;
    Cy_GPIO_Pin_Init(BATTERY_SWITCHON_PORT,BATTERY_SWITCHON_PIN,&g_batteryPortPinCfg);
    //CHECK_BATTERY pin init
    g_batteryPortPinCfg.hsiom = BATTERY_CHECK_PIN_MUX;
    Cy_GPIO_Pin_Init(BATTERY_CHECK_PORT,BATTERY_CHECK_PIN,&g_batteryPortPinCfg);
    
    return 0;
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
    //start battery switch
    Cy_GPIO_Set(BATTERY_SWITCHON_PORT,BATTERY_SWITCHON_PIN);
    //start battery boost
    Cy_GPIO_Set(BATTERY_OUT_PORT,BATTERY_OUT_PIN);
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
    //close battery switch
    Cy_GPIO_Clr(BATTERY_SWITCHON_PORT,BATTERY_SWITCHON_PIN);
    //close battery boost
    Cy_GPIO_Clr(BATTERY_OUT_PORT,BATTERY_OUT_PIN);
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
    //start battery charge
    Cy_GPIO_Set(BATTERY_CHARGE_PORT,BATTERY_CHARGE_PIN);
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
    //start battery charge
    Cy_GPIO_Clr(BATTERY_CHARGE_PORT,BATTERY_CHARGE_PIN);
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
    ret = PeripheralHalAdGet(1,&voltage);
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
    ret = PeripheralHalAdGet(2,&voltage);
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
                2 : enabel state
  Others:       None
*************************************************/
int16_t BatteryHalGetState(void)
{
  if(Cy_GPIO_Read(BATTERY_CHARGE_PORT, BATTERY_CHARGE_PIN))     return 1;
  else if(Cy_GPIO_Read(BATTERY_SWITCHON_PORT, BATTERY_SWITCHON_PIN))        return 2;
  else
  {
    return 0;
  }
}
