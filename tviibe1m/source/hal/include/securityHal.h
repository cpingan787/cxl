#ifndef _SECURITYHAL_H
#define _SECURITYHAL_H

#include <stdint.h>

#include "cy_project.h"
#include "cy_device_headers.h"

/* Device Specific Settings */
#define CY_SPI_SCB_TYPE      SCB6
#define CY_SPI_SCB_PCLK      PCLK_SCB6_CLOCK
#define CY_SPI_SCB_IRQN      scb_6_interrupt_IRQn

#define CY_SPI_SCB_MISO_PORT GPIO_PRT22
#define CY_SPI_SCB_MISO_PIN  0ul
#define CY_SPI_SCB_MISO_MUX  P22_0_SCB6_SPI_MISO

#define CY_SPI_SCB_MOSI_PORT GPIO_PRT22
#define CY_SPI_SCB_MOSI_PIN  1ul
#define CY_SPI_SCB_MOSI_MUX  P22_1_SCB6_SPI_MOSI

#define CY_SPI_SCB_CLK_PORT  GPIO_PRT22
#define CY_SPI_SCB_CLK_PIN   2ul
#define CY_SPI_SCB_CLK_MUX   P22_2_SCB6_SPI_CLK

#define CY_SPI_SCB_SEL_PORT GPIO_PRT14
#define CY_SPI_SCB_SEL_PIN  3ul
#define CY_SPI_SCB_SEL_MUX  P14_3_GPIO // P14_3_GPIO P14_3_SCB2_SPI_SELECT0

#define HSE_REST_PORT         GPIO_PRT17
#define HSE_REST_PIN          1ul
#define HSE_REST_PIN_MUX      P17_1_GPIO

#define HSE_INT_PORT         GPIO_PRT23
#define HSE_INT_PIN          3ul
#define HSE_INT_PIN_MUX      P23_3_GPIO

extern cy_stc_scb_spi_context_t g_contextSCB;

int16_t SecurityHalInit(void);
void SecurityHalSetMode(uint8_t wakeMode);
void SecurityHalTestMain(void);


/* 以下为信长城接口 */

/*********************************************************
 * Function : SPIResetl()
 * Brief    : SE reset pin set to low.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPIResetl(void);

/*********************************************************
 * Function : SPIReseth()
 * Brief    : SE reset pin set to high.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPIReseth(void);

/*********************************************************
 * Function : SPICsen()
 * Brief    : SE cs pin set to low.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPICsen(void);

/*********************************************************
 * Function : SPICsoff()
 * Brief    : SE cs pin set to high.
 * Parameter: None
 * ReturnVal: None
 *********************************************************/
void SPICsoff(void);

/*********************************************************
 * Function : Iwall_HAL_SE_GetIntPinState()
 * Brief    : Get se busy pin status.
 * Parameter: None
 * ReturnVal: 0  Int pin is low level
 *            1  Int pin is high level
 *********************************************************/
uint8_t Iwall_HAL_SE_GetIntPinState(void);

/*********************************************************
 * Function : Iwall_HAL_SE_SpiSend()
 * Brief    : SPI transmit data function.
 * Parameter: data      Transmit buffer pointer
 *            datalen   Transmit data length
 * ReturnVal: 0         Transmit successfully
 *            1         Transmit failed
 *********************************************************/
uint8_t Iwall_HAL_SE_SpiSend(unsigned char *data, unsigned short datalen);

/*********************************************************
 * Function : Iwall_HAL_SE_SpiSend()
 * Brief    : SPI transmit data function.
 * Parameter: data      Receive buffer pointer
 *            datalen   Receive data length
 * ReturnVal: 0         Receive successfully
 *            1         Receive failed
 *********************************************************/
uint8_t Iwall_HAL_SE_SpiReceive(unsigned char *data, unsigned short datalen);

#endif  // _SECURITYHAL_H