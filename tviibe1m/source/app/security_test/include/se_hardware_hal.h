/*
 * se_hardware_hal.h
 *
 *  Created on: 2021Äê6ÔÂ1ÈÕ
 *      Author: bpf
 */

#ifndef SE_SE_HARDWARE_HAL_H_
#define SE_SE_HARDWARE_HAL_H_

extern int32_t SE_Board_init(void);
extern void SE_Board_deinit(void);
extern void BoardSleepus(uint32_t delay_us);
extern void BoardSleepms(uint32_t delay_ms);
extern void SE_Board_Wakeup_us(uint32_t delay_us);
extern int32_t SE_Board_Event_Pend(uint32_t timeout_ms);
extern uint8_t HAL_SE_SpiSend(uint8_t  *Data, uint16_t  Length);
extern uint8_t HAL_SE_SpiReceive(uint8_t  *Data, uint16_t  Length);

extern void SPICsen(void);
extern void SPICsoff(void);
extern void SPIReseth(void);
extern void SPIResetl(void);


#endif /* SE_SE_HARDWARE_HAL_H_ */
