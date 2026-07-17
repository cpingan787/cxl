/*===========================================================================*/
/* Module :  r_port.h                                                        */
/* Target :  RH850/F1K R7F701581                                             */
/* Adapted against iodefine.h V1.20 / Device File R7F701581                  */
/*===========================================================================*/
#ifndef R_PORT_H
#define R_PORT_H

/*===========================================================================*/
/* Includes                                                                  */
/*===========================================================================*/
#include "r_cg_macrodriver.h"

/*===========================================================================*/
/* Defines                                                                   */
/*===========================================================================*/
#define R_PORT_PIN_COUNT                       (16U)

/* Analog filter setting */
#define R_FCLA_LEVEL_DETECTION                 (0x00U)
#define R_FCLA_LOW_LEVEL                       (0x00U)
#define R_FCLA_HIGH_LEVEL                      (0x01U)
#define R_FCLA_EDGE_DETECTION                  (0x04U)
#define R_FCLA_FALLING_EDGE                    (0x02U)
#define R_FCLA_RISING_EDGE                     (0x01U)

/* Digital noise filter setting */
#define R_DNFA_NR_OF_SAMPLES_2                 (0x00U << 5U)
#define R_DNFA_NR_OF_SAMPLES_3                 (0x01U << 5U)
#define R_DNFA_NR_OF_SAMPLES_4                 (0x02U << 5U)
#define R_DNFA_NR_OF_SAMPLES_5                 (0x03U << 5U)

#define R_DNFA_SAMPLING_CLOCK_DEVIDER_1        (0x00U)
#define R_DNFA_SAMPLING_CLOCK_DEVIDER_2        (0x01U)
#define R_DNFA_SAMPLING_CLOCK_DEVIDER_4        (0x02U)
#define R_DNFA_SAMPLING_CLOCK_DEVIDER_8        (0x03U)
#define R_DNFA_SAMPLING_CLOCK_DEVIDER_16       (0x04U)
#define R_DNFA_SAMPLING_CLOCK_DEVIDER_32       (0x05U)
#define R_DNFA_SAMPLING_CLOCK_DEVIDER_64       (0x06U)
#define R_DNFA_SAMPLING_CLOCK_DEVIDER_128      (0x07U)

/*
 * RH850 protected-register write sequence.
 * preg, pstatus and reg must be modifiable lvalue expressions.
 */
#define protected_write(preg, pstatus, reg, value)       \
    do                                                    \
    {                                                     \
        (preg) = 0xA5U;                                   \
        (reg) = (value);                                  \
        (reg) = ~(value);                                 \
        (reg) = (value);                                  \
    } while ((pstatus) == 1U)

/*===========================================================================*/
/* Enumerations                                                              */
/*===========================================================================*/
enum alt_t
{
    Alt1 = 0,
    Alt2,
    Alt3,
    Alt4,
    Alt5,
    Alt6,
    Alt7
};

enum io_t
{
    Input = 0,
    Output
};

enum level_t
{
    Low = 0,
    High = 1
};

/*
 * R7F701581 FCLA0 availability:
 *   INTP0..INTP8, INTP10..INTP13 and NMI are represented by iodefine.h.
 *   INTP9, INTP14 and INTP15 remain in the enum for source compatibility,
 *   but R_PORT_SetAnalogFilter() ignores them.
 */
enum fcla_signal_t
{
    R_FCLA_INTP0 = 0,
    R_FCLA_INTP1,
    R_FCLA_INTP2,
    R_FCLA_INTP3,
    R_FCLA_INTP4,
    R_FCLA_INTP5,
    R_FCLA_INTP6,
    R_FCLA_INTP7,
    R_FCLA_INTP8,
    R_FCLA_INTP9,
    R_FCLA_INTP10,
    R_FCLA_INTP11,
    R_FCLA_INTP12,
    R_FCLA_INTP13,
    R_FCLA_INTP14,
    R_FCLA_INTP15,
    R_FCLA_NMI = 0x10
};

/*
 * R7F701581 DNF availability represented by this legacy API:
 *   TAUD0I0..15, TAUB0I0..15 and ENCA0 inputs.
 * SENT entries are retained for source compatibility, but the latest
 * R7F701581 iodefine.h has no corresponding SENT DNF registers.
 */
enum dnfa_signal_t
{
    R_DNFA_TAUD0I0 = 0x00,
    R_DNFA_TAUD0I1,
    R_DNFA_TAUD0I2,
    R_DNFA_TAUD0I3,
    R_DNFA_TAUD0I4,
    R_DNFA_TAUD0I5,
    R_DNFA_TAUD0I6,
    R_DNFA_TAUD0I7,
    R_DNFA_TAUD0I8,
    R_DNFA_TAUD0I9,
    R_DNFA_TAUD0I10,
    R_DNFA_TAUD0I11,
    R_DNFA_TAUD0I12,
    R_DNFA_TAUD0I13,
    R_DNFA_TAUD0I14,
    R_DNFA_TAUD0I15,

    R_DNFA_TAUB0I0 = 0x10,
    R_DNFA_TAUB0I1,
    R_DNFA_TAUB0I2,
    R_DNFA_TAUB0I3,
    R_DNFA_TAUB0I4,
    R_DNFA_TAUB0I5,
    R_DNFA_TAUB0I6,
    R_DNFA_TAUB0I7,
    R_DNFA_TAUB0I8,
    R_DNFA_TAUB0I9,
    R_DNFA_TAUB0I10,
    R_DNFA_TAUB0I11,
    R_DNFA_TAUB0I12,
    R_DNFA_TAUB0I13,
    R_DNFA_TAUB0I14,
    R_DNFA_TAUB0I15,

    R_DNFA_ENCA0TIN0 = 0x30,
    R_DNFA_ENCA0TIN1,
    R_DNFA_ENCE0,
    R_DNFA_ENCE1,
    R_DNFA_ENCEC,

    R_DNFA_SENT0RX = 0x40,
    R_DNFA_SENT1RX
};

/*
 * The enum order is intentionally kept compatible with the legacy project.
 * R7F701581 only exposes Port0, Port8, Port9, Port10, Port11 and APort0 in
 * the supplied iodefine.h. Unsupported entries map to an empty register row.
 */
enum port_t
{
    Port0 = 0,
    Port1,
    Port8,
    Port9,
    Port10,
    Port11,
    Port12,
    Port18,
    Port20,
    APort0,
    APort1,
    PortCount
};

/*===========================================================================*/
/* Port register table                                                       */
/*===========================================================================*/
struct pregs_t
{
    volatile uint16_t       *P_Reg;
    volatile uint16_t       *PNOT_Reg;
    volatile uint16_t       *PM_Reg;
    volatile uint16_t       *PMC_Reg;
    volatile uint16_t       *PFC_Reg;
    volatile uint16_t       *PFCE_Reg;
    volatile uint16_t       *PFCAE_Reg;
    volatile uint16_t       *PIPC_Reg;
    volatile uint16_t       *PIBC_Reg;
    volatile const uint16_t *PPR_Reg;
    volatile uint16_t       *PD_Reg;
    volatile uint16_t       *PU_Reg;
    volatile uint32_t       *PODC_Reg;
    volatile uint32_t       *PDSC_Reg;
    volatile uint32_t       *PPROTS_Reg;
    volatile uint32_t       *PPCMD_Reg;
};

extern const struct pregs_t PortList[PortCount];

/*===========================================================================*/
/* API declarations                                                          */
/*===========================================================================*/
void R_PORT_SetGpioOutput(enum port_t port, uint32_t pin, enum level_t level);
void R_PORT_ToggleGpioOutput(enum port_t port, uint32_t pin);
void R_PORT_SetGpioInput(enum port_t port, uint32_t pin);
void R_PORT_SetGpioHighZ(enum port_t port, uint32_t pin);
void R_PORT_SetAltFunc(enum port_t port, uint32_t pin, enum alt_t alt, enum io_t io);
uint32_t R_PORT_GetLevel(enum port_t port, uint32_t pin);
uint16_t R_PORT_GetPort(enum port_t port);
void R_PORT_SetOpenDrain(enum port_t port, uint32_t pin);
void R_PORT_SetPushPull(enum port_t port, uint32_t pin);
void R_PORT_ConnectPullUp(enum port_t port, uint32_t pin);
void R_PORT_DisconnectPullUp(enum port_t port, uint32_t pin);
void R_PORT_ConnectPullDown(enum port_t port, uint32_t pin);
void R_PORT_DisconnectPullDown(enum port_t port, uint32_t pin);
void R_PORT_SetAnalogFilter(enum fcla_signal_t inputSignal, uint8_t filterSetting);
void R_PORT_SetDigitalFilter(enum dnfa_signal_t inputSignal, uint8_t filterSetting);
void R_PORT_ResetDigitalFilter(enum port_t port, uint32_t pin);
void R_PORT_EnableIpControl(enum port_t port, uint32_t pin);
void R_PORT_DisableIpControl(enum port_t port, uint32_t pin);
void R_PORT_EnableFastMode(enum port_t port, uint32_t pin);
void R_PORT_DisableFastMode(enum port_t port, uint32_t pin);

#endif /* R_PORT_H */
