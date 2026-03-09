/**************************************************************************************************/
/**
 * @file     serial.h
 * @brief    Example serial file.
 * @version  V1.0.0
 * @date     December-2022
 * @author   Zhixin Semiconductor
 *
 * @note
 * Copyright (C) 2021-2023 Zhixin Semiconductor Ltd. All rights reserved.
 *
 **************************************************************************************************/
 
#ifndef SERIAL_H
#define SERIAL_H

//包含序需要使用的头文件
#include "platform_cfg.h"	// 包含MCU平台配置信息的头文件
#include "common_drv.h"		// 包含SDK中常用信息的头文件

#include "gpio_drv.h"
#include "uart_drv.h"
#include "clock_drv.h"
#include "sysctrl_drv.h"
#include <stdio.h>

/* Example print function*/
#define Ex_Print    printf

/* UART init for board*/
void Ex_BoardUartInit(void);
#endif /* SERIAL_H */
