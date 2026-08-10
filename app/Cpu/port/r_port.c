/*===========================================================================*/
/* Module :  r_port.c                                                        */
/* Target :  RH850/F1K R7F701581                                             */
/* Adapted against iodefine.h V1.20 / Device File R7F701581                  */
/*===========================================================================*/

/*===========================================================================*/
/* Includes                                                                  */
/*===========================================================================*/
#include "iodefine.h"
#include "r_port.h"

/*===========================================================================*/
/* Port register map                                                         */
/*===========================================================================*/
/*
 * Register members below are restricted to members that exist in the supplied
 * R7F701581 iodefine.h.
 *
 * Unsupported legacy ports are retained as zero-filled rows so existing source
 * using enum port_t still compiles. Every public API validates the row before
 * dereferencing a register pointer.
 */
const struct pregs_t PortList[PortCount] =
{
    /* Port0 */
    {
        (volatile uint16_t *)&PORT.P0,
        (volatile uint16_t *)&PORT.PNOT0,
        (volatile uint16_t *)&PORT.PM0,
        (volatile uint16_t *)&PORT.PMC0,
        (volatile uint16_t *)&PORT.PFC0,
        (volatile uint16_t *)&PORT.PFCE0,
        (volatile uint16_t *)&PORT.PFCAE0,
        (volatile uint16_t *)&PORT.PIPC0,
        (volatile uint16_t *)&PORT.PIBC0,
        (volatile const uint16_t *)&PORT.PPR0,
        (volatile uint16_t *)&PORT.PD0,
        (volatile uint16_t *)&PORT.PU0,
        (volatile uint32_t *)&PORT.PODC0,
        (volatile uint32_t *)&PORT.PDSC0,
        (volatile uint32_t *)&PORT.PPROTS0,
        (volatile uint32_t *)&PORT.PPCMD0
    },

    /* Port1: not present in the supplied R7F701581 iodefine.h */
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },

    /* Port8 */
    {
        (volatile uint16_t *)&PORT.P8,
        (volatile uint16_t *)&PORT.PNOT8,
        (volatile uint16_t *)&PORT.PM8,
        (volatile uint16_t *)&PORT.PMC8,
        (volatile uint16_t *)&PORT.PFC8,
        (volatile uint16_t *)&PORT.PFCE8,
        0,
        0,
        (volatile uint16_t *)&PORT.PIBC8,
        (volatile const uint16_t *)&PORT.PPR8,
        (volatile uint16_t *)&PORT.PD8,
        (volatile uint16_t *)&PORT.PU8,
        (volatile uint32_t *)&PORT.PODC8,
        0,
        (volatile uint32_t *)&PORT.PPROTS8,
        (volatile uint32_t *)&PORT.PPCMD8
    },

    /* Port9 */
    {
        (volatile uint16_t *)&PORT.P9,
        (volatile uint16_t *)&PORT.PNOT9,
        (volatile uint16_t *)&PORT.PM9,
        (volatile uint16_t *)&PORT.PMC9,
        (volatile uint16_t *)&PORT.PFC9,
        (volatile uint16_t *)&PORT.PFCE9,
        0,
        0,
        (volatile uint16_t *)&PORT.PIBC9,
        (volatile const uint16_t *)&PORT.PPR9,
        (volatile uint16_t *)&PORT.PD9,
        (volatile uint16_t *)&PORT.PU9,
        (volatile uint32_t *)&PORT.PODC9,
        0,
        (volatile uint32_t *)&PORT.PPROTS9,
        (volatile uint32_t *)&PORT.PPCMD9
    },

    /* Port10 */
    {
        (volatile uint16_t *)&PORT.P10,
        (volatile uint16_t *)&PORT.PNOT10,
        (volatile uint16_t *)&PORT.PM10,
        (volatile uint16_t *)&PORT.PMC10,
        (volatile uint16_t *)&PORT.PFC10,
        (volatile uint16_t *)&PORT.PFCE10,
        (volatile uint16_t *)&PORT.PFCAE10,
        (volatile uint16_t *)&PORT.PIPC10,
        (volatile uint16_t *)&PORT.PIBC10,
        (volatile const uint16_t *)&PORT.PPR10,
        (volatile uint16_t *)&PORT.PD10,
        (volatile uint16_t *)&PORT.PU10,
        (volatile uint32_t *)&PORT.PODC10,
        (volatile uint32_t *)&PORT.PDSC10,
        (volatile uint32_t *)&PORT.PPROTS10,
        (volatile uint32_t *)&PORT.PPCMD10
    },

    /* Port11 */
    {
        (volatile uint16_t *)&PORT.P11,
        (volatile uint16_t *)&PORT.PNOT11,
        (volatile uint16_t *)&PORT.PM11,
        (volatile uint16_t *)&PORT.PMC11,
        (volatile uint16_t *)&PORT.PFC11,
        (volatile uint16_t *)&PORT.PFCE11,
        (volatile uint16_t *)&PORT.PFCAE11,
        (volatile uint16_t *)&PORT.PIPC11,
        (volatile uint16_t *)&PORT.PIBC11,
        (volatile const uint16_t *)&PORT.PPR11,
        (volatile uint16_t *)&PORT.PD11,
        (volatile uint16_t *)&PORT.PU11,
        (volatile uint32_t *)&PORT.PODC11,
        (volatile uint32_t *)&PORT.PDSC11,
        (volatile uint32_t *)&PORT.PPROTS11,
        (volatile uint32_t *)&PORT.PPCMD11
    },

    /* Port12: not present in the supplied R7F701581 iodefine.h */
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },

    /* Port18: not present in the supplied R7F701581 iodefine.h */
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },

    /* Port20: not present in the supplied R7F701581 iodefine.h */
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },

    /* Analog Port0 */
    {
        (volatile uint16_t *)&PORT.AP0,
        (volatile uint16_t *)&PORT.APNOT0,
        (volatile uint16_t *)&PORT.APM0,
        0,
        0,
        0,
        0,
        0,
        (volatile uint16_t *)&PORT.APIBC0,
        (volatile const uint16_t *)&PORT.APPR0,
        0,
        0,
        0,
        0,
        0,
        0
    },

    /* Analog Port1: not present in the supplied R7F701581 iodefine.h */
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
};

/*===========================================================================*/
/* Local helpers                                                             */
/*===========================================================================*/
static uint8_t R_PORT_IsPortPinValid(enum port_t port, uint32_t pin)
{
    uint8_t isValid = 0U;

    if (((uint32_t)port < (uint32_t)PortCount) &&
        (pin < R_PORT_PIN_COUNT) &&
        (PortList[(uint32_t)port].P_Reg != 0))
    {
        isValid = 1U;
    }

    return isValid;
}

static void R_PORT_ModifyBit16(volatile uint16_t *reg, uint32_t pin, uint8_t setBit)
{
    uint16_t mask;

    if ((reg == 0) || (pin >= R_PORT_PIN_COUNT))
    {
        return;
    }

    mask = (uint16_t)(1U << pin);

    if (setBit != 0U)
    {
        *reg |= mask;
    }
    else
    {
        *reg &= (uint16_t)(~mask);
    }
}

static volatile uint8_t *R_PORT_GetAnalogFilterRegister(enum fcla_signal_t inputSignal)
{
    volatile uint8_t *filterReg = 0;

    switch (inputSignal)
    {
        case R_FCLA_INTP0:
            filterReg = &FCLA0.CTL0_INTPL;
            break;

        case R_FCLA_INTP1:
            filterReg = &FCLA0.CTL1_INTPL;
            break;

        case R_FCLA_INTP2:
            filterReg = &FCLA0.CTL2_INTPL;
            break;

        case R_FCLA_INTP3:
            filterReg = &FCLA0.CTL3_INTPL;
            break;

        case R_FCLA_INTP4:
            filterReg = &FCLA0.CTL4_INTPL;
            break;

        case R_FCLA_INTP5:
            filterReg = &FCLA0.CTL5_INTPL;
            break;

        case R_FCLA_INTP6:
            filterReg = &FCLA0.CTL6_INTPL;
            break;

        case R_FCLA_INTP7:
            filterReg = &FCLA0.CTL7_INTPL;
            break;

        case R_FCLA_INTP8:
            filterReg = &FCLA0.CTL0_INTPH;
            break;

        case R_FCLA_INTP10:
            filterReg = &FCLA0.CTL2_INTPH;
            break;

        case R_FCLA_INTP11:
            filterReg = &FCLA0.CTL3_INTPH;
            break;

        case R_FCLA_INTP12:
            filterReg = &FCLA0.CTL4_INTPH;
            break;

        case R_FCLA_INTP13:
            filterReg = &FCLA0.CTL5_INTPH;
            break;

        case R_FCLA_NMI:
            filterReg = &FCLA0.CTL0_NMI;
            break;

        default:
            /* INTP9, INTP14 and INTP15 have no register member. */
            break;
    }

    return filterReg;
}

static uint8_t R_PORT_GetDigitalFilterRegisters(enum dnfa_signal_t inputSignal,
                                                volatile uint8_t **controlReg,
                                                volatile uint16_t **enableReg,
                                                uint32_t *enableBit)
{
    uint32_t signalValue;
    uint8_t isSupported = 0U;

    signalValue = (uint32_t)inputSignal;
    *controlReg = 0;
    *enableReg = 0;
    *enableBit = 0U;

    if (signalValue <= (uint32_t)R_DNFA_TAUD0I15)
    {
        *controlReg = &DNF.ATAUD0ICTL;
        *enableReg = &DNF.ATAUD0IEN;
        *enableBit = signalValue;
        isSupported = 1U;
    }
    else if ((signalValue >= (uint32_t)R_DNFA_TAUB0I0) &&
             (signalValue <= (uint32_t)R_DNFA_TAUB0I15))
    {
        *controlReg = &DNF.ATAUB0ICTL;
        *enableReg = &DNF.ATAUB0IEN;
        *enableBit = signalValue - (uint32_t)R_DNFA_TAUB0I0;
        isSupported = 1U;
    }
    else if ((signalValue >= (uint32_t)R_DNFA_ENCA0TIN0) &&
             (signalValue <= (uint32_t)R_DNFA_ENCEC))
    {
        *controlReg = &DNF.AENCA0ICTL;
        *enableReg = &DNF.AENCA0IEN;
        *enableBit = signalValue - (uint32_t)R_DNFA_ENCA0TIN0;
        isSupported = 1U;
    }
    else
    {
        /* SENT DNF registers are not present in this iodefine.h. */
    }

    return isSupported;
}

/*===========================================================================*/
/* Public functions                                                          */
/*===========================================================================*/
void R_PORT_SetGpioOutput(enum port_t port, uint32_t pin, enum level_t level)
{
    const struct pregs_t *portRegs;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];

    R_PORT_ModifyBit16(portRegs->P_Reg, pin, (uint8_t)(level == High));
    R_PORT_ModifyBit16(portRegs->PM_Reg, pin, 0U);

    if (portRegs->PMC_Reg != 0)
    {
        R_PORT_ModifyBit16(portRegs->PMC_Reg, pin, 0U);
    }
}

void R_PORT_ToggleGpioOutput(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];
    R_PORT_ModifyBit16(portRegs->PNOT_Reg, pin, 1U);
}

void R_PORT_SetGpioInput(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];

    R_PORT_ModifyBit16(portRegs->PM_Reg, pin, 1U);
    R_PORT_ModifyBit16(portRegs->PIBC_Reg, pin, 1U);

    if (portRegs->PMC_Reg != 0)
    {
        R_PORT_ModifyBit16(portRegs->PMC_Reg, pin, 0U);
    }
}

void R_PORT_SetGpioHighZ(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];

    R_PORT_ModifyBit16(portRegs->PIBC_Reg, pin, 0U);
    R_PORT_ModifyBit16(portRegs->PM_Reg, pin, 1U);

    if (portRegs->PMC_Reg != 0)
    {
        R_PORT_ModifyBit16(portRegs->PMC_Reg, pin, 0U);
    }
}

void R_PORT_SetAltFunc(enum port_t port, uint32_t pin, enum alt_t alt, enum io_t io)
{
    const struct pregs_t *portRegs;
    uint32_t altValue;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];
    altValue = (uint32_t)alt;

    if ((altValue > (uint32_t)Alt7) ||
        (portRegs->PM_Reg == 0) ||
        (portRegs->PMC_Reg == 0) ||
        (portRegs->PFC_Reg == 0) ||
        (portRegs->PFCE_Reg == 0))
    {
        return;
    }

    /*
     * Ports without PFCAE only support selections whose PFCAE bit is zero
     * through this legacy 3-bit Alt1..Alt7 interface.
     */
    if (((altValue & 0x04U) != 0U) && (portRegs->PFCAE_Reg == 0))
    {
        return;
    }

    R_PORT_ModifyBit16(portRegs->PFC_Reg, pin, (uint8_t)(altValue & 0x01U));
    R_PORT_ModifyBit16(portRegs->PFCE_Reg, pin, (uint8_t)((altValue >> 1U) & 0x01U));

    if (portRegs->PFCAE_Reg != 0)
    {
        R_PORT_ModifyBit16(portRegs->PFCAE_Reg, pin,
                           (uint8_t)((altValue >> 2U) & 0x01U));
    }

    if (io == Input)
    {
        R_PORT_ModifyBit16(portRegs->PM_Reg, pin, 1U);
    }
    else if (io == Output)
    {
        R_PORT_ModifyBit16(portRegs->PM_Reg, pin, 0U);
    }
    else
    {
        return;
    }

    R_PORT_ModifyBit16(portRegs->PMC_Reg, pin, 1U);
}

uint32_t R_PORT_GetLevel(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;
    uint16_t mask;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return 0U;
    }

    portRegs = &PortList[(uint32_t)port];

    if (portRegs->PPR_Reg == 0)
    {
        return 0U;
    }

    mask = (uint16_t)(1U << pin);

    return (((*portRegs->PPR_Reg) & mask) != 0U) ? 1U : 0U;
}

uint16_t R_PORT_GetPort(enum port_t port)
{
    if (((uint32_t)port >= (uint32_t)PortCount) ||
        (PortList[(uint32_t)port].PPR_Reg == 0))
    {
        return 0U;
    }

    return *PortList[(uint32_t)port].PPR_Reg;
}

void R_PORT_SetOpenDrain(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;
    uint32_t podcValue;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];

    if ((portRegs->PODC_Reg == 0) ||
        (portRegs->PPROTS_Reg == 0) ||
        (portRegs->PPCMD_Reg == 0))
    {
        return;
    }

    podcValue = *portRegs->PODC_Reg;
    podcValue |= (uint32_t)(1UL << pin);

    protected_write(*portRegs->PPCMD_Reg,
                    *portRegs->PPROTS_Reg,
                    *portRegs->PODC_Reg,
                    podcValue);
}

void R_PORT_SetPushPull(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;
    uint32_t podcValue;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];

    if ((portRegs->PODC_Reg == 0) ||
        (portRegs->PPROTS_Reg == 0) ||
        (portRegs->PPCMD_Reg == 0))
    {
        return;
    }

    podcValue = *portRegs->PODC_Reg;
    podcValue &= (uint32_t)(~(uint32_t)(1UL << pin));

    protected_write(*portRegs->PPCMD_Reg,
                    *portRegs->PPROTS_Reg,
                    *portRegs->PODC_Reg,
                    podcValue);
}

void R_PORT_ConnectPullUp(enum port_t port, uint32_t pin)
{
    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    R_PORT_ModifyBit16(PortList[(uint32_t)port].PU_Reg, pin, 1U);
}

void R_PORT_DisconnectPullUp(enum port_t port, uint32_t pin)
{
    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    R_PORT_ModifyBit16(PortList[(uint32_t)port].PU_Reg, pin, 0U);
}

void R_PORT_ConnectPullDown(enum port_t port, uint32_t pin)
{
    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    R_PORT_ModifyBit16(PortList[(uint32_t)port].PD_Reg, pin, 1U);
}

void R_PORT_DisconnectPullDown(enum port_t port, uint32_t pin)
{
    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    /* Legacy source used '|=' here; disconnect must clear the PD bit. */
    R_PORT_ModifyBit16(PortList[(uint32_t)port].PD_Reg, pin, 0U);
}

void R_PORT_SetAnalogFilter(enum fcla_signal_t inputSignal, uint8_t filterSetting)
{
    volatile uint8_t *filterReg;

    filterReg = R_PORT_GetAnalogFilterRegister(inputSignal);

    if (filterReg != 0)
    {
        *filterReg = filterSetting;
    }
}

void R_PORT_SetDigitalFilter(enum dnfa_signal_t inputSignal, uint8_t filterSetting)
{
    volatile uint8_t *controlReg;
    volatile uint16_t *enableReg;
    uint32_t enableBit;

    if (R_PORT_GetDigitalFilterRegisters(inputSignal,
                                         &controlReg,
                                         &enableReg,
                                         &enableBit) == 0U)
    {
        return;
    }

    *controlReg = filterSetting;
    *enableReg |= (uint16_t)(1U << enableBit);
}

void R_PORT_ResetDigitalFilter(enum port_t port, uint32_t pin)
{
    /*
     * The legacy declaration identifies a DNF channel by port/pin, while the
     * R7F701581 DNF registers identify channels by peripheral input signal.
     * There is no unambiguous port/pin-to-DNF-channel mapping in iodefine.h.
     *
     * Keep this compatibility symbol as a deliberate no-op. Disable a DNF
     * channel through the corresponding DNF.*IEN bit when a signal-based API
     * is added by the application.
     */
    (void)port;
    (void)pin;
}

void R_PORT_EnableIpControl(enum port_t port, uint32_t pin)
{
    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    R_PORT_ModifyBit16(PortList[(uint32_t)port].PIPC_Reg, pin, 1U);
}

void R_PORT_DisableIpControl(enum port_t port, uint32_t pin)
{
    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    R_PORT_ModifyBit16(PortList[(uint32_t)port].PIPC_Reg, pin, 0U);
}

void R_PORT_EnableFastMode(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;
    uint32_t pdscValue;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];

    if ((portRegs->PDSC_Reg == 0) ||
        (portRegs->PPROTS_Reg == 0) ||
        (portRegs->PPCMD_Reg == 0))
    {
        return;
    }

    pdscValue = *portRegs->PDSC_Reg;
    pdscValue |= (uint32_t)(1UL << pin);

    protected_write(*portRegs->PPCMD_Reg,
                    *portRegs->PPROTS_Reg,
                    *portRegs->PDSC_Reg,
                    pdscValue);
}

void R_PORT_DisableFastMode(enum port_t port, uint32_t pin)
{
    const struct pregs_t *portRegs;
    uint32_t pdscValue;

    if (R_PORT_IsPortPinValid(port, pin) == 0U)
    {
        return;
    }

    portRegs = &PortList[(uint32_t)port];

    if ((portRegs->PDSC_Reg == 0) ||
        (portRegs->PPROTS_Reg == 0) ||
        (portRegs->PPCMD_Reg == 0))
    {
        return;
    }

    pdscValue = *portRegs->PDSC_Reg;
    pdscValue &= (uint32_t)(~(uint32_t)(1UL << pin));

    protected_write(*portRegs->PPCMD_Reg,
                    *portRegs->PPROTS_Reg,
                    *portRegs->PDSC_Reg,
                    pdscValue);
}
