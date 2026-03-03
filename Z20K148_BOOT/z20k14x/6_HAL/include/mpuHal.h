/*************************************************
 Copyright © 2025 SiRun (Beijing) . All rights reserved.
 File Name: mpuHal.h
 Author: 
 Created Time: 
 Description: 
 Others: 
*************************************************/
#ifndef _MPU_HAL_IF_H
#define _MPU_HAL_IF_H
/****************************** include ***************************************/
#include <stdint.h>
#include <string.h>
/****************************** Macro Definitions ******************************/
#define MPU_HAL_STATUS_OK                  (0)
#define MPU_HAL_STATUS_ERR                 (-1)  

// Protocol header bytes (sync bytes)
#define PROTOCOL_HEADER1                    (0x55)  // 1st sync byte of protocol header
#define PROTOCOL_HEADER2                    (0xAA)  // 2nd sync byte of protocol header
#define PROTOCOL_AID_FWUPD                  (0x03) // AID for firmware update
#define MPU_FRAME_FIXED_HDR_LEN             (8U)
#define MPU_FRAME_CRC_LEN                   (2U)
#define MPU_PROTOCAL_HEADER_LEN             (8U)
#define MPU_HAL_BUFFERSIZE_MAX              (4096)


/****************************** Type Definitions ******************************/
typedef enum
{
    UART_RECEIVE_PACK_NEW,
    UART_RECEIVE_PACK_OLD,
}UartReceivePackType_t;

extern volatile uint8_t g_rxBuffer[MPU_HAL_BUFFERSIZE_MAX];   
/****************************** Function Declarations *************************/
/*****************************************************************************
 * Function    : MpuHalInit
 * Description : Initialize MPU communication module
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Initialize UART, GPIO and other resources for MPU communication
****************************************************************************/
void MpuHalInit(void);

/*****************************************************************************
 * Function    : MpuHalTransmit
 * Description : Transmit data to MPU
 * Input       : AID - Application ID
 *               MID - Message ID
 *               serviceData - Pointer to service data
 *               Servicelength - Length of service data
 * Output      : None
 * Return      : Length of transmitted data, or error code if transmission fails
 * Others      : Pack data according to protocol and send via UART
****************************************************************************/
uint16_t MpuHalTransmit(uint8_t AID, uint8_t MID, const uint8_t *serviceData, uint16_t Servicelength);

/*****************************************************************************
 * Function    : MpuHalGetUartRxDataNum
 * Description : Get number of received UART data bytes
 * Input       : None
 * Output      : None
 * Return      : Number of received data bytes in UART buffer
 * Others      : Used to check how much data is available to read
****************************************************************************/
uint16_t MpuHalGetUartRxDataNum(void);

/*****************************************************************************
 * Function    : MpuHalGetNewPack
 * Description : Check if a new packet has been received
 * Input       : None
 * Output      : None
 * Return      : UART_RECEIVE_PACK_NEW if new packet is available, UART_RECEIVE_PACK_OLD otherwise
 * Others      : Used to determine if new data needs to be processed
****************************************************************************/
UartReceivePackType_t MpuHalGetNewPack(void);

/*****************************************************************************
 * Function    : MpuHalGpioInit
 * Description : Initialize GPIO pins for MPU communication
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Configure GPIO direction, pull-up/down, and pin functions
****************************************************************************/
void MpuHalGpioInit(void);

/*****************************************************************************
 * Function    : MpuHalPowerOn
 * Description : Power on MPU module
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Enable power supply to MPU and perform power-on sequence
****************************************************************************/
void MpuHalPowerOn(void);

/*****************************************************************************
 * Function    : MpuHalMainUartInit
 * Description : Initialize main UART for MPU communication
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Configure UART parameters like baud rate, parity, stop bits
****************************************************************************/
void MpuHalMainUartInit(void);

/*****************************************************************************
 * Function    : MpuHalUartTimerCallback
 * Description : UART timer callback function for protocol processing
 * Input       : None
 * Output      : None
 * Return      : None
 * Others      : Called periodically to handle timeouts and protocol state management
****************************************************************************/
void MpuHalUartTimerCallback(void);

/*****************************************************************************
 * Function    : MpuHalSetNewPack
 * Description : Set the new pack flag
 * Input       : newPack - Flag value (1 for new pack, 0 for old pack)
 * Output      : None
 * Return      : None
 * Others      : Used to indicate whether a new packet has been received
****************************************************************************/
void MpuHalSetNewPack(UartReceivePackType_t newPack);
#endif