#ifndef __SE_HARDWARE_H
#define __SE_HARDWARE_H

#include <stdint.h>

//======================================================================================================================
typedef struct
{
	int tm_sec;
	int tm_min;
	int tm_hour;
	int tm_mday;
	int tm_mon;
	int tm_year;
} ST_LOCALTIME;

//======================================================================================================================
#define FLASH_UPDATE_A_ADD_START 	(0x10060000) /* 具体地址由客户决定 */
#define FLASH_UPDATE_A_ADD_LENGTH 	(0x4000)

#define FLASH_UPDATE_B_ADD_START 	(0x10068000) /* 具体地址由客户决定 */
#define FLASH_UPDATE_B_ADD_LENGTH 	(0x4000)

#define FLASH_UPDATE_C_ADD_START 	(0x10070000) /* 具体地址由客户决定 */
#define FLASH_UPDATE_C_ADD_LENGTH 	(32)

//======================================================================================================================
extern void SE_Board_Sleep_us(uint32_t delay_us);
extern void SE_Board_Sleep_ms(uint32_t delay_ms);
void task_1ms(void);
//======================================================================================================================
extern void SPI_CSEN(void);
extern void SPI_CSOFF(void);
extern void SPI_RESETH(void);
extern void SPI_RESETL(void);
extern uint8_t IWall_HAL_SE_GetIntPinState(void);

//======================================================================================================================
extern uint8_t IWall_HAL_SE_SpiSend(unsigned char *data, unsigned short datalen);
extern uint8_t IWall_HAL_SE_SpiReceive(unsigned char *data, unsigned short datalen);

//======================================================================================================================
extern uint32_t Iwall_SE_NVMRead(uint32_t Address, uint8_t *Data, uint32_t DataLen);
extern uint32_t Iwall_SE_NVMWrite(uint32_t Address, uint8_t *Data, uint32_t DataLen);

//======================================================================================================================
extern uint32_t Iwall_SE_ObtainStorageSpaceInformation(uint32_t *AddressMessage, uint32_t *FlashSize);

//======================================================================================================================
extern uint32_t Iwall_BleDataSend(unsigned char *data, unsigned int datalen);
extern uint32_t Iwall_BleDataRecv(unsigned char *data, unsigned int datalen);

//======================================================================================================================
extern uint32_t Iwall_MpuDataSend(unsigned char *data, unsigned int datalen);
extern uint32_t Iwall_MpuDataReceive(unsigned char *data, unsigned int datalen);

//======================================================================================================================
extern uint32_t Iwall_GetSystemTime(ST_LOCALTIME *systime);

//======================================================================================================================

#endif
