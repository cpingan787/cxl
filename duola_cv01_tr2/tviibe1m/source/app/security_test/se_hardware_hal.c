/*
 * se_hardware.c
 *
 *  Created on: 20210601
 *      Author: bpf
 */
//#include "Spi.h"
//#include "S32K146.h"
//#include "Types.h"
//#include "delay.h"
//#include "Gpt.h"
//#include "Dio_Cfg.h"
//#include "Std_Types.h"
//#include "WdgM.h"
#include "securityHal.h"

#include "FreeRTOS.h"
#include "task.h"

/*
 *  ======== SE_API ========
 */
 
/**************
*	this file is complete SE hardware
*************/
 


int32_t SE_Board_init(void)
{
	/* Initialize SPI1 here,  TBOX implementation	*/
	SecurityHalInit();

	return 0;
}

void SE_Board_deinit(void)
{
	/* deInitialize SPI1 here,  TBOX implementation	*/
	//Spi_DeInit();

	return;
}


void BoardSleepus(uint32_t delay_us)
{
	/* delay us,  TBOX implementation	*/
	//delay_us(us);
    while (delay_us)
    {
        // int n = 23;     // 4us实际测量3.4us
        int n = 27;
        while(n--);
        delay_us--;
    }

	return;
}

void BoardSleepms(uint32_t delay_ms)
{
	/* delay ms,  TBOX implementation	*/
	//delay_us(ms * 1000);
	vTaskDelay(pdMS_TO_TICKS(delay_ms));

	return;
}



uint8_t HAL_SE_SpiSend(uint8_t  *Data, uint16_t  Length) {
	/* SPI send,  TBOX implementation	*/

	//return () ? 1 : 0;		//if success, return 0
    uint32_t transferStatus;

    SPICsen();
    // Cy_SCB_SPI_WriteArrayBlocking(CY_SPI_SCB_TYPE,(void*)data, datalen);
    Cy_SCB_SPI_Transfer(CY_SPI_SCB_TYPE, Data, NULL, Length, &g_contextSCB);

    /* Wait for completion by polling the status */
    /* Instead of callbacks, polling can be used for waiting for completion. */
    do
    {
        transferStatus = Cy_SCB_SPI_GetTransferStatus(CY_SPI_SCB_TYPE, &g_contextSCB);
    } while((transferStatus & CY_SCB_SPI_TRANSFER_ACTIVE) != 0u);
    SPICsoff();

    return 0;
}

uint8_t HAL_SE_SpiReceive(uint8_t  *Data, uint16_t  Length) {
	/* SPI receive ,  TBOX implementation	*/

	//return (StatusSetup | StatusTransmit | JobResult) ? 1 : 0;
    uint32_t transferStatus;

    SPICsen();
    Cy_SCB_SPI_Transfer(CY_SPI_SCB_TYPE, NULL, Data, Length, &g_contextSCB);

    /* Wait for completion by polling the status */
    /* Instead of callbacks, polling can be used for waiting for completion. */
    do
    {
        transferStatus = Cy_SCB_SPI_GetTransferStatus(CY_SPI_SCB_TYPE, &g_contextSCB);
    } while((transferStatus & CY_SCB_SPI_TRANSFER_ACTIVE) != 0u);
    SPICsoff();
    
    return 0;
}

void SPICsen(void)
{
	/* SPI CS valid ,  TBOX implementation	*/
	//Dio_WriteChannel(DioConf_DioChannel_DioChannel_PTB_5_7816_CS, 0);
	Cy_GPIO_Clr(CY_SPI_SCB_SEL_PORT, CY_SPI_SCB_SEL_PIN);

	return;
}

void SPICsoff(void)
{
	/* SPI CS invalid ,  TBOX implementation	*/
	//Dio_WriteChannel(DioConf_DioChannel_DioChannel_PTB_5_7816_CS, 1);
	Cy_GPIO_Set(CY_SPI_SCB_SEL_PORT, CY_SPI_SCB_SEL_PIN);

	return;
}

void SPIReseth(void)
{
	/* SE reset high ,  TBOX implementation	*/
	//Dio_WriteChannel(DioConf_DioChannel_DioChannel_PTD_13_7816_RST, 1);
	Cy_GPIO_Set(HSE_REST_PORT, HSE_REST_PIN);

	return;
}

void SPIResetl(void)
{
	/* SE reset low ,  TBOX implementation	*/
	//Dio_WriteChannel(DioConf_DioChannel_DioChannel_PTD_13_7816_RST, 0);
	Cy_GPIO_Clr(HSE_REST_PORT, HSE_REST_PIN);

	return;
}


uint8_t HAL_SE_GetIntPinState(void)
{
	//reserve
	/* SE busy read ,  TBOX implementation	*/
	if((Cy_GPIO_Read(HSE_INT_PORT, HSE_INT_PIN)) == 1)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
