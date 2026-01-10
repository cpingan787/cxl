#include <stdio.h>
#include "se_hardware.h"

#include "se_phy_interface.h"
extern void gpc_DelayTimerTickException(void);

void task_1ms(void) /*  伪代码，只需要一个1ms的任务或中断 */
{
	gpc_DelayTimerTickException(); /* 只需要将这个接口放在一个1ms任务或中断里就行 */
}

/**
****************************************************************************************
* @name	            		SE_Board_Sleep_ms
* @brief            		Us Delay
****************************************************************************************
*/
void SE_Board_Sleep_us(uint32_t delay_us)
{
	BoardSleepus(delay_us); /* 延迟1us，实现函数名称无限制，“delay_us”只是例子 */
}

/**
****************************************************************************************
* @name	            		SE_Board_Sleep_ms
* @brief            		Ms Delay
****************************************************************************************
*/
void SE_Board_Sleep_ms(uint32_t delay_ms)
{
	BoardSleepms(delay_ms); /* 延迟1ms，实现函数名称无限制，“delay_us”只是例子 */
}

/**
****************************************************************************************
* @name	            		SPI_CSEN
* @brief            		Set CS Pin Low
****************************************************************************************
*/
void SPI_CSEN(void)
{
	SPICsen(); /* CS拉低，CS_Pin指的SE的CS脚，“Dio_WriteChannel”只是例子 */
}

/**
****************************************************************************************
* @name	            		SPI_CSOFF
* @brief            		Set Rst Pin High
****************************************************************************************
*/
void SPI_CSOFF(void)
{
	SPICsoff(); /* CS拉高，CS_Pin指的SE的CS脚，“Dio_WriteChannel”只是例子 */
}

/**
****************************************************************************************
* @name	            		SPI_RESETH
* @brief            		Set Rst Pin High
****************************************************************************************
*/
void SPI_RESETH(void)
{
	SPIReseth(); /* RST拉高，RST_Pin指的SE的RST脚，“Dio_WriteChannel”只是例子 */
}

/**
****************************************************************************************
* @name	            		SPI_RESETL
* @brief            		Set Rst Pin Low
****************************************************************************************
*/
void SPI_RESETL(void)
{
	SPIResetl(); /* RST拉低，RST_Pin指的SE的RST脚，“Dio_WriteChannel”只是例子 */
}

/**
****************************************************************************************
* @name	            		IWall_HAL_SE_GetIntPinState
* @brief            		Get Busy Pin Status
* @return           		Busy Pin Status "1" Or "0"
****************************************************************************************
*/
uint8_t IWall_HAL_SE_GetIntPinState(void)
{
	uint8_t u8Ret = 0;
	u8Ret = HAL_SE_GetIntPinState(); /* 获取BUSY引脚的状态，Busy_Pin指的SE的Busy脚，“Dio_ReadChannel”只是例子 */
	return u8Ret;
}

/**
****************************************************************************************
* @name	            		IWall_HAL_SE_SpiSend
* @brief            		Send Data Drom Spi
* @param *data   			Send Data
* @param datalen   			Send Data Length
****************************************************************************************
*/
uint8_t IWall_HAL_SE_SpiSend(unsigned char *data, unsigned short datalen)
{
	uint8_t u8Ret = 0;
	u8Ret = HAL_SE_SpiSend(data, datalen); /* 向SPI发送数据，“Spi_Send”只是例子 */
	return u8Ret;
}

/**
****************************************************************************************
* @name	            		IWall_HAL_SE_SpiReceive
* @brief            		Receive Data From Spi
* @param *data   			Receive Data
* @param datalen   			Receive Data Length
****************************************************************************************
*/
uint8_t IWall_HAL_SE_SpiReceive(unsigned char *data, unsigned short datalen)
{
	uint8_t u8Ret = 0;
	u8Ret = HAL_SE_SpiReceive(data, datalen); /* 从SPI接收数据，“Spi_Recv”只是例子 */
	return u8Ret;
}

/**
****************************************************************************************
* @name	            		Iwall_SE_NVMRead
* @brief            		Read Data From The BNCM Storage Space
* @param *Address   		Storage Address
* @param *Data   			Read Data
* @param DataLen   			Read Data Length
****************************************************************************************
*/
uint32_t Iwall_SE_NVMRead(uint32_t Address, uint8_t *Data, uint32_t DataLen)
{
	uint32_t u32Ret = 0;
	u32Ret = SENVMRead(Address, Data, DataLen); /* 从Flash读数据，“Flash_Read”只是例子 */
	return u32Ret;
}

/**
****************************************************************************************
* @name	            		Iwall_SE_NVMWrite
* @brief            		Write Data To The Storage Space
* @param *Address   		Storage Address
* @param *Data   			Write Data
* @param DataLen   			Write Data Length
****************************************************************************************
*/
uint32_t Iwall_SE_NVMWrite(uint32_t Address, uint8_t *Data, uint32_t DataLen)
{
	uint32_t u32Ret = 0;

	if (FLASH_UPDATE_A_ADD_START == Address)
	{
		SENVMErase(FLASH_UPDATE_A_ADD_START) /* 擦除Flash数据，“Flash_Erase”只是例子 */
	}
	else if (FLASH_UPDATE_B_ADD_START == Address)
	{
		SENVMErase(FLASH_UPDATE_B_ADD_START) /* 擦除Flash数据，“Flash_Erase”只是例子 */
	}
	else if (FLASH_UPDATE_C_ADD_START == Address)
	{
		SENVMErase(FLASH_UPDATE_C_ADD_START) /* 擦除Flash数据，“Flash_Erase”只是例子 */
	}

	u32Ret = SENVMWrite(Address, Data, DataLen); /* 向Flash写数据，“Flash_Write”只是例子 */
	return u32Ret;
}

/**
****************************************************************************************
* @name	            		Iwall_SE_ObtainStorageSpaceInformation
* @brief            		Configure The Given Storage Space
* @param *AddressMessage   	Get The Address Of The Storage Space
* @param *FlashSize   		Get The Size Of The Storage Space
****************************************************************************************
*/
uint32_t Iwall_SE_ObtainStorageSpaceInformation(uint32_t *AddressMessage, uint32_t *FlashSize)
{
	uint32_t u32Ret = 0;
	uint32_t u32FlashAddress = FLASH_UPDATE_A_ADD_START;
	uint32_t u32FlashSize = FLASH_UPDATE_A_ADD_LENGTH + FLASH_UPDATE_B_ADD_LENGTH + 32;

	if (AddressMessage == NULL || FlashSize == NULL)
	{
		u32Ret = 1;
		return u32Ret;
	}

	*AddressMessage = u32FlashAddress;
	*FlashSize = u32FlashSize;

	return u32Ret;
}

/**
****************************************************************************************
* @name	            		Iwall_BleDataSend
* @brief            		Send Data From Ble
* @param *data   			Send Data
* @param datalen   			Send Data Length
****************************************************************************************
*/
uint32_t Iwall_BleDataSend(unsigned char *data, unsigned int datalen)
{
	uint32_t u32Ret = 0;
	u32Ret = BleDataSend(data, datalen); /* 向Ble中发送数据，“Ble_Send”只是例子 */
	return u32Ret;
}

/**
****************************************************************************************
* @name	            		Iwall_BleDataRecv
* @brief            		Receive Data From Ble
* @param *data   			Receive Data
* @param datalen   			Receive Data Length
****************************************************************************************
*/
uint32_t Iwall_BleDataRecv(unsigned char *data, unsigned int datalen)
{
	uint32_t u32Ret = 0;
	u32Ret = BleDataRecv(data, datalen); /* 从Ble中接收数据，“Ble_Recv”只是例子 */
	return u32Ret;
}

/**
****************************************************************************************
* @name	            		Iwall_MpuDataSend
* @brief            		Send Data From Tsp
* @param *data   			Send Data
* @param datalen   			Send Data Length
****************************************************************************************
*/
uint32_t Iwall_MpuDataSend(unsigned char *data, unsigned int datalen)
{
	uint32_t u32Ret = 0;
	u32Ret = MpuDataSend(data, datalen); /* 向TSP中发送数据，“Tsp_Send”只是例子 */
	return u32Ret;
}
/**
****************************************************************************************
* @name	            		Iwall_MpuDataReceive
* @brief            		Receive Data From Tsp
* @param *data   			Receive Data
* @param datalen   			Receive Data Length
****************************************************************************************
*/
uint32_t Iwall_MpuDataReceive(unsigned char *data, unsigned int datalen)
{
	uint32_t u32Ret = 0;
	u32Ret = MpuDataReceive(data, datalen); /* 从TSP中接收数据，“Tsp_Recv”只是例子 */
	return u32Ret;
}

/**
****************************************************************************************
* @name	            		Iwall_GetSystemTime
* @brief            		Get System Time
* @param *systime   		Systime Data
****************************************************************************************
*/
uint32_t Iwall_GetSystemTime(ST_LOCALTIME *systime)
{
	uint32_t u32Ret = 0;
	u32Ret = GetSystemTime(systime); /* 获取系统时间，“Get_Time”只是例子 */
	return u32Ret;
}