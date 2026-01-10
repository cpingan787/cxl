/*
 *  ======== se_test.c ========
 */
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "include/se_test.h"

#include "logHal.h"

void HexPrint(uint8_t *buf, uint32_t buf_len)
{
    int i = 0;

    for (i = 0; i < buf_len; i++)
    {
        printf("%02X ", buf[i]);
//		DEBUG_PRINT("%02X ", buf[i]);
        //			printf("0x%02X, ", buf[i]);
    }
    printf("\r\n");
//	DEBUG_PRINT("\r\n");
}
uint8_t Check(uint8_t *buf, uint16_t buflen)
{
    uint8_t ret = 0;

    ret = (((uint16_t)buf[buflen - 2]) << 8) | buf[buflen - 1];
    if (ret == 0x9000)
    {
        ret = 0;
    }

    return ret;
}
static uint8_t ver_cmd1[] = {0x00, 0xA4, 0x04, 0x00, 0x08, 0xA0, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};
static uint8_t ver_cmd2[5] = {0x80, 0xCA, 0x9F, 0x7D, 0x00};

uint32_t SE_Version(void)
{
	uint8_t ret=0;
	uint8_t buf[256] = {0};
	uint16_t buf_len = sizeof(buf);

	SE_CmdExecute(ver_cmd1, sizeof(ver_cmd1), buf, &buf_len);
	HexPrint(buf,buf_len);
	
	ret=Check(buf,buf_len);
	if(!ret)
	{    
	SE_CmdExecute(ver_cmd2, sizeof(ver_cmd2), buf, &buf_len);
	HexPrint(buf,buf_len);
	}
	else
	{
	return 1;
	}
}

void se_test(void)
{
	//SPI init first
	SE_Board_init();
	
	SE_Connect();
	SE_Version();
}
