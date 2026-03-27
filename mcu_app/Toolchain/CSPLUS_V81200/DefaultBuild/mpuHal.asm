#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\hal\source\mpuHal.c -oDefaultBuild\mpuHal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_50f4114b790045ff948979fa5984fb7150skxyuu.yju
#@	compiled at Fri Mar 27 09:51:04 2026

	.file "..\..\Srcode\hal\source\mpuHal.c"

	$reg_mode 32
	.dbl_size 8

	.public _g_mpuUartReciveCount, 2
	.public _g_mpuUartErrorType, 1
	.public _g_mpuUartErrorFlag, 1
	.public _g_mpuSetRecvErrorFlag, 1
	.public _g_uartReceiveData0, 200
	.public _g_uartReceiveData1, 200
	.public _g_mpuUartRxBufId, 1
	.public _g_mpuUartRxBufCount0, 2
	.public _g_mpuUartRxBufCount1, 2
	.public _g_mpuUartRxBufDealFlag, 1
	.extern _Dio_WriteChannel
	.extern _xQueueSendFromISR
	.extern _xQueueSend
	.extern _CcittCrc16
	.extern _memcpy
	.public _MpuHalCycleProcess
	.public _MpuHalOpen
	.public _MpuHalSetRxFilter
	.public _MpuHalSetRxBuffer
	.extern _xQueueCreate
	.public _MpuHalTransmit
	.public _MpuHalReceive
	.extern _xQueueReceive
	.public _MpuHalStart
	.public _MpuHalStartIsFinished
	.public _MpuHalReset
	.public _MpuHalResetIsFinished
	.public _MpuHalPowerOff
	.public _MpuHalSetMode
	.public _UartProtocalProcess
	.public _MpuHalUartInterruptCallback
	.public _MpuHalUartTimerCallback
	.extern _memset
	.public _MpuHalMainUartInit
	.extern _R_UART5_Create
	.extern _R_UART5_Start
	.public _MpuHalInit
	.public _MpuHalTxTaskInit
	.public _MpuHalTxTask
	.extern _R_UART5_SendStatus
	.extern _R_UART5_Send
	.public _MpuHalUartPrintErrState
	.extern _LogHalPrint

	.section .text, text
_MpuHalGpioInit.1:
	.stack _MpuHalGpioInit.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 114
	prepare 0x00000061, 0x00000000
	mov 0x00000001, r20
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 116
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 117
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	mov 0x00000000, r21
	movea 0x00000016, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 118
	mov r21, r7
	jarl _Dio_WriteChannel, r31
	movea 0x0000001A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 119
	mov r21, r7
	jarl _Dio_WriteChannel, r31
	movea 0x00000017, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 146
	mov r21, r7
	jarl _Dio_WriteChannel, r31
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 147
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	dispose 0x00000000, 0x00000061, [r31]
_MpuHalSetPower.1:
	.stack _MpuHalSetPower.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 150
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 152
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r20
.BB.LABEL.2_2:	; if_then_bb
	movea 0x00000013, r0, r6
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	movea 0x00000015, r0, r6
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 162
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.2_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.2_2
_MpuHalSetPowerkey.1:
	.stack _MpuHalSetPowerkey.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 164
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 166
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r7
.BB.LABEL.3_2:	; if_then_bb
	movea 0x00000016, r0, r6
	jarl _Dio_WriteChannel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 174
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.3_2
_MpuHalSetWakeOut.1:
	.stack _MpuHalSetWakeOut.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 176
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 178
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r7
.BB.LABEL.4_2:	; if_then_bb
	movea 0x0000001A, r0, r6
	jarl _Dio_WriteChannel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 186
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.4_2
_MpuDataDispatch.1:
	.stack _MpuDataDispatch.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 234
	prepare 0x00000079, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 238
	st.w r0, 0x00000000[r3]
	mov 0x00000000, r20
	mov r8, r21
	mov r7, r22
	mov r6, r23
	jr .BB.LABEL.5_16
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 244
	andi 0x0000FFFF, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 245
	mov r2, r5
	shl 0x00000004, r5
	mov #_g_mpuManage.3, r6
	add r5, r6
	ld.bu 0x00000008[r6], r5
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.5_15
.BB.LABEL.5_2:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov r2, r5
	shl 0x00000004, r5
	mov #_g_mpuManage.3, r6
	add r5, r6
	ld.w 0x0000000C[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_15
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 247
	mov r2, r5
	shl 0x00000004, r5
	mov #_g_mpuManage.3, r6
	add r5, r6
	ld.bu 0x00000009[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov r2, r5
	shl 0x00000004, r5
	mov #_g_mpuManage.3, r6
	add r5, r6
	ld.bu 0x00000015[r6], r5
	ld.bu 0x00000002[r23], r6
	cmp r5, r6
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 249
	mov r2, r5
	shl 0x00000004, r5
	mov #_g_mpuManage.3, r6
	add r5, r6
	ld.bu 0x00000016[r6], r5
	ld.bu 0x00000003[r23], r6
	cmp r5, r6
	bl9 .BB.LABEL.5_15
.BB.LABEL.5_6:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov r2, r5
	shl 0x00000004, r5
	mov #_g_mpuManage.3, r7
	add r5, r7
	ld.bu 0x00000017[r7], r5
	cmp r5, r6
	bh9 .BB.LABEL.5_15
.BB.LABEL.5_7:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 252
	mov r2, r5
	shl 0x00000004, r5
	mov #_g_mpuManage.3, r6
	add r5, r6
	ld.hu 0x00000012[r6], r5
	mov r5, r7
	shl 0x00000010, r7
	st.w r7, 0x00000004[r3]
	movea 0x00000012, r6, r6
	mov 0x00000000, r7
	br9 .BB.LABEL.5_11
.BB.LABEL.5_8:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 255
	mov r2, r8
	shl 0x00000004, r8
	mov #_g_mpuManage.3, r9
	add r8, r9
	ld.w 0x0000000C[r9], r8
	zxh r5
	add r5, r8
	andi 0x0000FFFF, r7, r5
	add r23, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 256
	ld.h 0x00000000[r6], r5
	add 0x00000001, r5
	st.h r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 257
	ld.hu 0x00000010[r9], r8
	andi 0x0000FFFF, r5, r9
	cmp r8, r9
	bl9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 259
	st.h r0, 0x00000000[r6]
	mov 0x00000000, r5
.BB.LABEL.5_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	add 0x00000001, r7
.BB.LABEL.5_11:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 253
	andi 0x0000FFFF, r7, r8
	cmp r22, r8
	bl9 .BB.LABEL.5_8
.BB.LABEL.5_12:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 263
	ld.w 0x00000004[r3], r5
	add r22, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 264
	shl 0x00000004, r2
	mov #_g_mpuManage.3, r5
	add r2, r5
	ld.bu 0x00000014[r5], r6
	movea 0x00000004, r3, r7
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_14
.BB.LABEL.5_13:	; if_then_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 266
	jarl _xQueueSendFromISR, r31
	br9 .BB.LABEL.5_15
.BB.LABEL.5_14:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 270
	jarl _xQueueSend, r31
.BB.LABEL.5_15:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	add 0x00000001, r20
.BB.LABEL.5_16:	; bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 242
	andi 0x0000FFFF, r20, r2
	cmp 0x0000000F, r2
	blt17 .BB.LABEL.5_1
.BB.LABEL.5_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 276
	dispose 0x00000008, 0x00000079, [r31]
_MpuPackHeader.1:
	.stack _MpuPackHeader.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 360
	movea 0x00000055, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 362
	st.b r2, 0x00000000[r6]
	movea 0xFFFFFFAA, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 363
	st.b r2, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 364
	ld.b 0x00000000[r7], r2
	st.b r2, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 365
	ld.b 0x00000001[r7], r2
	st.b r2, 0x00000003[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 366
	ld.b 0x00000002[r7], r2
	st.b r2, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 367
	ld.hu 0x00000006[r7], r2
	shr 0x00000008, r2
	st.b r2, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 368
	ld.b 0x00000006[r7], r2
	st.b r2, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 369
	st.b r0, 0x00000007[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 370
	st.b r0, 0x00000008[r6]
	mov 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 372
	jmp [r31]
_MpuPackGetCrc.1:
	.stack _MpuPackGetCrc.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 374
	prepare 0x00000041, 0x00000000
	mov r6, r2
	mov r7, r20
	mov 0x00000008, r8
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 379
	mov r2, r7
	jarl _CcittCrc16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 380
	ld.hu 0x00000006[r20], r8
	ld.w 0x00000008[r20], r7
	mov r10, r6
	jarl _CcittCrc16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 382
	dispose 0x00000000, 0x00000041, [r31]
_MpuUartRingCopyOut.1:
	.stack _MpuUartRingCopyOut.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 384
	prepare 0x00000071, 0x00000000
	mov r8, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 388
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 394
	mov #_g_mpuUartTxBuffer.2, r2
	add r7, r2
	add 0x00000001, r2
	movea 0x00000800, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 393
	sub r7, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 394
	andi 0x0000FFFF, r22, r5
	mov r21, r6
	mov r2, r7
	cmp r20, r5
	bl9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 396
	mov r20, r8
	jarl _memcpy, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.8_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 400
	zxh r22
	mov r22, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 401
	mov r20, r8
	sub r22, r8
	mov r21, r6
	add r22, r6
	mov #_g_mpuUartTxBuffer.2, r7
	add 0x00000001, r7
	jarl _memcpy, r31
.BB.LABEL.8_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 403
	dispose 0x00000000, 0x00000071, [r31]
_MpuHalCycleProcess:
	.stack _MpuHalCycleProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 405
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 409
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	ld.w LOWW(#_g_mpuManage.3+0x00000004)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_19
.BB.LABEL.9_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 412
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 414
	movhi HIGHW1(#_timeCount.4.MpuHalCycleProcess), r0, r2
	st.w r0, LOWW(#_timeCount.4.MpuHalCycleProcess)[r2]
	mov 0x00000002, r5
	br9 .BB.LABEL.9_18
.BB.LABEL.9_3:	; if_else_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 417
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 419
	movhi HIGHW1(#_timeCount.4.MpuHalCycleProcess), r0, r2
	ld.w LOWW(#_timeCount.4.MpuHalCycleProcess)[r2], r5
	add r6, r5
	st.w r5, LOWW(#_timeCount.4.MpuHalCycleProcess)[r2]
	movea 0x000001F4, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 420
	cmp r2, r5
	bl9 .BB.LABEL.9_19
.BB.LABEL.9_5:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 422
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_g_mpuManage.3+0x00000004)[r2]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 423
	jarl _MpuHalSetPower.1, r31
	br9 .BB.LABEL.9_19
.BB.LABEL.9_6:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 426
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 428
	movhi HIGHW1(#_timeCount.4.MpuHalCycleProcess), r0, r2
	st.w r0, LOWW(#_timeCount.4.MpuHalCycleProcess)[r2]
	mov 0x00000004, r5
	br9 .BB.LABEL.9_18
.BB.LABEL.9_8:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 431
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_9:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 433
	movhi HIGHW1(#_timeCount.4.MpuHalCycleProcess), r0, r2
	ld.w LOWW(#_timeCount.4.MpuHalCycleProcess)[r2], r5
	add r6, r5
	st.w r5, LOWW(#_timeCount.4.MpuHalCycleProcess)[r2]
	movea 0x00000190, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 434
	sub r6, r2
	cmp r2, r5
	bl9 .BB.LABEL.9_19
.BB.LABEL.9_10:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000005, r5
	br9 .BB.LABEL.9_18
.BB.LABEL.9_11:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 439
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.9_13
.BB.LABEL.9_12:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 441
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	mov 0x00000006, r5
	st.w r5, LOWW(#_g_mpuManage.3+0x00000004)[r2]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 442
	jarl _MpuHalSetPowerkey.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 443
	movhi HIGHW1(#_timeCount.4.MpuHalCycleProcess), r0, r2
	st.w r0, LOWW(#_timeCount.4.MpuHalCycleProcess)[r2]
	br9 .BB.LABEL.9_19
.BB.LABEL.9_13:	; if_else_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 445
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.9_16
.BB.LABEL.9_14:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 447
	movhi HIGHW1(#_timeCount.4.MpuHalCycleProcess), r0, r2
	ld.w LOWW(#_timeCount.4.MpuHalCycleProcess)[r2], r5
	add r6, r5
	st.w r5, LOWW(#_timeCount.4.MpuHalCycleProcess)[r2]
	movea 0x000001F4, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 448
	sub r6, r2
	cmp r2, r5
	bnh9 .BB.LABEL.9_19
.BB.LABEL.9_15:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 450
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	mov 0x00000007, r5
	st.w r5, LOWW(#_g_mpuManage.3+0x00000004)[r2]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 451
	jarl _MpuHalSetPowerkey.1, r31
	br9 .BB.LABEL.9_19
.BB.LABEL.9_16:	; if_else_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 454
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_17:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000008, r5
.BB.LABEL.9_18:	; if_then_bb74
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	st.w r5, LOWW(#_g_mpuManage.3+0x00000004)[r2]
.BB.LABEL.9_19:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 458
	movhi HIGHW1(#_g_mpuManage.3+0x00000001), r0, r2
	ld.bu LOWW(#_g_mpuManage.3+0x00000001)[r2], r2
	cmp 0x00000001, r2
	bgt9 .BB.LABEL.9_22
.BB.LABEL.9_20:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 460
	add 0x00000001, r2
	movhi HIGHW1(#_g_mpuManage.3+0x00000001), r0, r5
	st.b r2, LOWW(#_g_mpuManage.3+0x00000001)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 461
	zxb r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.9_22
.BB.LABEL.9_21:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 463
	jarl _MpuHalSetWakeOut.1, r31
.BB.LABEL.9_22:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 466
	dispose 0x00000000, 0x00000001, [r31]
_MpuHalOpen:
	.stack _MpuHalOpen = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 475
	di
	mov 0x00000000, r10
	br9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 478
	mov r10, r2
	sxh r2
	shl 0x00000004, r2
	mov #_g_mpuManage.3, r5
	add r2, r5
	ld.bu 0x00000008[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 480
	mov r10, r2
	sxh r2
	shl 0x00000004, r2
	mov #_g_mpuManage.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000008[r5]
	br9 .BB.LABEL.10_6
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	add 0x00000001, r10
.BB.LABEL.10_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 476
	mov r10, r2
	sxh r2
	cmp 0x0000000F, r2
	blt9 .BB.LABEL.10_1
.BB.LABEL.10_5:	; bb18.bb25_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	ori 0x0000FFFF, r0, r10
.BB.LABEL.10_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 485
	ei
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 487
	sxh r10
	jmp [r31]
_MpuHalSetRxFilter:
	.stack _MpuHalSetRxFilter = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 489
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 491
	andi 0x0000FFFF, r6, r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.11_4
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 493
	mov r6, r2
	shl 0x00000004, r2
	mov #_g_mpuManage.3, r5
	add r2, r5
	add 0x00000009, r5
	cmp 0x00000000, r7
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 495
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 496
	shl 0x00000004, r6
	mov #_g_mpuManage.3, r5
	add r6, r5
	movea 0x00000015, r5, r6
	mov 0x00000003, r8
	jarl _memcpy, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 500
	st.b r0, 0x00000000[r5]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_4:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 508
	dispose 0x00000000, 0x00000001, [r31]
_MpuHalSetRxBuffer:
	.stack _MpuHalSetRxBuffer = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 510
	prepare 0x00000071, 0x00000000
	mov r8, r20
	addi 0x00000000, r7, r21
	mov r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 512
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	andi 0x0000FFFF, r22, r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb22
	mov 0x00000004, r7
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 516
	jarl _xQueueCreate, r31
	shl 0x00000004, r22
	mov #_g_mpuManage.3, r2
	add r22, r2
	st.b r10, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 517
	st.h r0, 0x00000012[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 518
	st.w r21, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 519
	st.h r20, 0x00000010[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 520
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.12_3:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 531
	dispose 0x00000000, 0x00000071, [r31]
_MpuHalTransmit:
	.stack _MpuHalTransmit = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 585
	prepare 0x00000079, 0x00000014
	addi 0x00000000, r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 592
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	zxh r6
	cmp 0x0000000E, r6
	bh9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 596
	ld.hu 0x00000006[r20], r2
	addi 0xFFFFF061, r2, r0
	bgt9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 599
	di
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 600
	mov r21, r6
	mov r20, r7
	jarl _MpuPackHeader.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 601
	mov r21, r6
	mov r20, r7
	jarl _MpuPackGetCrc.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 604
	mov #_sTxBuffer.5.MpuHalTransmit, r23
	mov 0x00000008, r8
	mov r23, r6
	mov r21, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 606
	ld.hu 0x00000006[r20], r8
	ld.w 0x00000008[r20], r7
	addi 0x00000008, r23, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 607
	ld.hu 0x00000006[r20], r7
	addi 0x00000008, r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 608
	zxh r2
	add r23, r2
	mov r22, r5
	shr 0x00000008, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 609
	addi 0x00000009, r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 610
	zxh r2
	add r23, r2
	st.b r22, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 611
	add 0x0000000A, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 612
	zxh r7
	mov r23, r6
	jarl _MpuUartTransmit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 617
	ei
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 612
	cmp 0x00000000, r10
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 614
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 617
	dispose 0x00000014, 0x00000079, [r31]
.BB.LABEL.13_4:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 634
	dispose 0x00000014, 0x00000079, [r31]
_MpuHalReceive:
	.stack _MpuHalReceive = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 637
	prepare 0x00000079, 0x00000010
	addi 0x00000000, r7, r20
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 645
	bz17 .BB.LABEL.14_12
.BB.LABEL.14_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	andi 0x0000FFFF, r21, r2
	cmp 0x0000000E, r2
	bh17 .BB.LABEL.14_12
.BB.LABEL.14_2:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 650
	andi 0x000000FF, r21, r2
	shl 0x00000004, r2
	mov #_g_mpuManage.3, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 651
	ld.bu 0x00000014[r5], r6
	movea 0x0000000C, r3, r7
	jarl _xQueueReceive, r31
	cmp 0x00000001, r10
	bnz17 .BB.LABEL.14_12
.BB.LABEL.14_3:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 653
	ld.w 0x0000000C[r3], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 655
	andi 0x0000FFFF, r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 653
	mov r22, r5
	shr 0x00000010, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 655
	ld.hu 0x00000004[r20], r6
	add 0x0000000A, r6
	cmp r2, r6
	blt17 .BB.LABEL.14_12
.BB.LABEL.14_4:	; if_then_bb47.bb97_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 660
	andi 0x0000FFFF, r2, r6
	movea 0x00000002, r3, r7
	add r6, r7
	mov r21, r6
	shl 0x00000004, r6
	mov #_g_mpuManage.3, r8
	add r6, r8
	ld.w 0x0000000C[r8], r6
	andi 0x0000FFFF, r5, r9
	add r9, r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 662
	ld.hu 0x00000010[r8], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 661
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 662
	andi 0x0000FFFF, r5, r7
	cmp r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 664
	cmov 0x00000009, 0x00000000, r5, r5
	add 0x00000001, r2
.BB.LABEL.14_6:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 658
	andi 0x0000FFFF, r2, r6
	cmp 0x00000008, r6
	blt9 .BB.LABEL.14_5
.BB.LABEL.14_7:	; bb97.bb137_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 670
	ld.w 0x00000008[r20], r6
	andi 0x0000FFFF, r2, r7
	add r7, r6
	mov r21, r7
	shl 0x00000004, r7
	mov #_g_mpuManage.3, r8
	add r7, r8
	ld.w 0x0000000C[r8], r7
	andi 0x0000FFFF, r5, r9
	add r7, r9
	ld.b 0x00000000[r9], r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 672
	ld.hu 0x00000010[r8], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 671
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 672
	andi 0x0000FFFF, r5, r7
	cmp r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 674
	cmov 0x00000009, 0x00000000, r5, r5
	add 0x00000001, r2
.BB.LABEL.14_9:	; bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 668
	andi 0x0000FFFF, r22, r6
	add 0xFFFFFFF6, r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	blt9 .BB.LABEL.14_8
.BB.LABEL.14_10:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 677
	addi 0xFFFFFFF6, r22, r2
	st.h r2, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 678
	shl 0x00000004, r21
	mov #_g_mpuManage.3, r2
	add r21, r2
	ld.w 0x0000000C[r2], r6
	andi 0x0000FFFF, r5, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 680
	ld.hu 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 679
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 680
	andi 0x0000FFFF, r5, r8
	cmp r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 682
	cmov 0x00000009, 0x00000000, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 684
	zxh r2
	add r2, r6
	ld.bu 0x00000000[r6], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 678
	ld.b 0x00000000[r7], r23
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 685
	mov r20, r7
	jarl _MpuPackGetCrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 684
	shl 0x00000008, r23
	or r21, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 686
	zxh r23
	cmp r10, r23
	bnz9 .BB.LABEL.14_12
.BB.LABEL.14_11:	; if_then_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	movea 0x00000002, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 688
	ld.b 0x00000002[r2], r5
	st.b r5, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 689
	ld.b 0x00000003[r2], r5
	st.b r5, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 690
	ld.b 0x00000004[r2], r2
	st.b r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 691
	add 0xFFFFFFF6, r22
	st.h r22, 0x00000006[r20]
	mov 0x00000000, r10
	dispose 0x00000010, 0x00000079, [r31]
.BB.LABEL.14_12:	; if_break_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 719
	dispose 0x00000010, 0x00000079, [r31]
_MpuHalStart:
	.stack _MpuHalStart = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 721
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 723
	mov #_g_mpuManage.3, r20
	mov 0x0000000A, r2
	st.b r2, 0x00000001[r20]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 724
	jarl _MpuHalSetWakeOut.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 725
	jarl _MpuHalSetPower.1, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 726
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_MpuHalStartIsFinished:
	.stack _MpuHalStartIsFinished = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 732
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	ld.w LOWW(#_g_mpuManage.3+0x00000004)[r2], r2
	cmp 0x00000008, r2
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 738
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 741
	jmp [r31]
_MpuHalReset:
	.stack _MpuHalReset = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 743
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 745
	jarl _MpuHalSetPower.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 746
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_mpuManage.3+0x00000004)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_MpuHalResetIsFinished:
	.stack _MpuHalResetIsFinished = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 752
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	ld.w LOWW(#_g_mpuManage.3+0x00000004)[r2], r2
	cmp 0x00000008, r2
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 758
	cmov 0x00000002, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 761
	jmp [r31]
_MpuHalPowerOff:
	.stack _MpuHalPowerOff = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 763
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 765
	jarl _MpuHalSetPower.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 766
	movhi HIGHW1(#_g_mpuManage.3+0x00000004), r0, r2
	st.w r0, LOWW(#_g_mpuManage.3+0x00000004)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_MpuHalSetMode:
	.stack _MpuHalSetMode = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 769
	prepare 0x00000071, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 771
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 774
	movhi HIGHW1(#_g_mpuManage.3), r0, r2
	st.b r20, LOWW(#_g_mpuManage.3)[r2]
	mov 0x00000000, r7
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 775
	jarl _Dio_WriteChannel, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.20_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 777
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.20_4
.BB.LABEL.20_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 781
	mov #_g_mpuManage.3, r21
	st.b r0, 0x00000001[r21]
	mov 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 782
	mov r22, r6
	jarl _MpuHalSetWakeOut.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 783
	st.b r20, 0x00000000[r21]
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 784
	mov r22, r7
	jarl _Dio_WriteChannel, r31
.BB.LABEL.20_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 786
	dispose 0x00000000, 0x00000071, [r31]
_UartProtocalProcess:
	.stack _UartProtocalProcess = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 824
	prepare 0x00000479, 0x00000000
	mov 0x00000000, r20
	mov r8, r21
	mov r7, r22
	mov r6, r23
	br9 .BB.LABEL.21_15
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 833
	movhi HIGHW1(#_g_mpuUartProtocalBuffer.1+0x000004B0), r0, r2
	ld.hu LOWW(#_g_mpuUartProtocalBuffer.1+0x000004B0)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 835
	andi 0x0000FFFF, r20, r5
	add r23, r5
	ld.bu 0x00000000[r5], r6
	addi 0xFFFFFFAB, r6, r0
	bz9 .BB.LABEL.21_5
	br9 .BB.LABEL.21_14
.BB.LABEL.21_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 841
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_4:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 843
	andi 0x0000FFFF, r20, r5
	add r23, r5
	ld.bu 0x00000000[r5], r6
	addi 0xFFFFFF56, r6, r0
	bnz9 .BB.LABEL.21_6
.BB.LABEL.21_5:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov #_g_mpuUartProtocalBuffer.1, r6
	add r6, r2
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r2]
	ld.h 0x000004B0[r6], r2
	add 0x00000001, r2
	st.h r2, 0x000004B0[r6]
	br9 .BB.LABEL.21_14
.BB.LABEL.21_6:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 848
	ld.bu 0x00000000[r5], r2
	addi 0xFFFFFFAB, r2, r0
	bnz9 .BB.LABEL.21_11
.BB.LABEL.21_7:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 851
	ld.b 0x00000000[r5], r2
	mov #_g_mpuUartProtocalBuffer.1, r5
	st.b r2, 0x00000000[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 852
	st.h r2, 0x000004B0[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 853
	st.h r0, 0x000004B2[r5]
	br9 .BB.LABEL.21_14
.BB.LABEL.21_8:	; if_else_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 861
	mov #_g_mpuUartProtocalBuffer.1, r5
	mov r2, r6
	add r5, r6
	andi 0x0000FFFF, r20, r7
	add r23, r7
	ld.b 0x00000000[r7], r7
	st.b r7, 0x00000000[r6]
	ld.h 0x000004B0[r5], r7
	add 0x00000001, r7
	st.h r7, 0x000004B0[r5]
	cmp 0x00000007, r2
	bgt9 .BB.LABEL.21_12
.BB.LABEL.21_9:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 865
	zxh r7
	cmp 0x00000008, r7
	bnz9 .BB.LABEL.21_14
.BB.LABEL.21_10:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 867
	mov #_g_mpuUartProtocalBuffer.1, r2
	ld.bu 0x00000006[r2], r5
	ld.b 0x00000005[r2], r6
	shl 0x00000008, r6
	or r5, r6
	st.h r6, 0x000004B2[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 868
	zxh r6
	movea 0x000004A7, r0, r2
	cmp r2, r6
	bl9 .BB.LABEL.21_14
.BB.LABEL.21_11:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov #_g_mpuUartProtocalBuffer.1, r2
	st.h r0, 0x000004B0[r2]
	st.h r0, 0x000004B2[r2]
	br9 .BB.LABEL.21_14
.BB.LABEL.21_12:	; if_else_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 879
	movhi HIGHW1(#_g_mpuUartProtocalBuffer.1+0x000004B2), r0, r2
	ld.hu LOWW(#_g_mpuUartProtocalBuffer.1+0x000004B2)[r2], r2
	add 0x0000000A, r2
	andi 0x0000FFFF, r7, r5
	cmp r2, r5
	blt9 .BB.LABEL.21_14
.BB.LABEL.21_13:	; if_then_bb201
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 882
	zxh r7
	mov #_g_mpuUartProtocalBuffer.1, r24
	mov r24, r6
	mov r21, r8
	jarl _MpuDataDispatch.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 883
	st.h r0, 0x000004B2[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 884
	st.h r0, 0x000004B0[r24]
.BB.LABEL.21_14:	; if_break_bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	add 0x00000001, r20
.BB.LABEL.21_15:	; bb219
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 831
	andi 0x0000FFFF, r20, r2
	cmp r22, r2
	bl9 .BB.LABEL.21_1
.BB.LABEL.21_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 888
	dispose 0x00000000, 0x00000479, [r31]
_MpuHalUartInterruptCallback:
	.stack _MpuHalUartInterruptCallback = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 890
	movhi HIGHW1(#_g_mpuUartRxBufId), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 892
	ld.bu LOWW(#_g_mpuUartRxBufId)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 894
	movhi HIGHW1(#_g_mpuUartRxBufCount1), r0, r2
	ld.hu LOWW(#_g_mpuUartRxBufCount1)[r2], r2
	addi 0xFFFFFF39, r2, r0
	bgt9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 896
	movhi HIGHW1(#_g_mpuUartRxBufCount1), r0, r2
	ld.hu LOWW(#_g_mpuUartRxBufCount1)[r2], r5
	mov #_g_uartReceiveData1, r7
	add r5, r7
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 897
	ld.h LOWW(#_g_mpuUartRxBufCount1)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_mpuUartRxBufCount1)[r2]
.BB.LABEL.22_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 899
	movhi HIGHW1(#_g_mpuUartRxBufDealFlag), r0, r2
	ld.bu LOWW(#_g_mpuUartRxBufDealFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_9
.BB.LABEL.22_4:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 901
	movhi HIGHW1(#_g_mpuUartRxBufId), r0, r2
	st.b r0, LOWW(#_g_mpuUartRxBufId)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 902
	movhi HIGHW1(#_g_mpuUartRxBufCount0), r0, r2
	st.h r0, LOWW(#_g_mpuUartRxBufCount0)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 903
	movhi HIGHW1(#_g_mpuUartRxBufDealFlag), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_mpuUartRxBufDealFlag)[r2]
	jmp [r31]
.BB.LABEL.22_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 908
	movhi HIGHW1(#_g_mpuUartRxBufCount0), r0, r2
	ld.hu LOWW(#_g_mpuUartRxBufCount0)[r2], r2
	addi 0xFFFFFF39, r2, r0
	bgt9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 910
	movhi HIGHW1(#_g_mpuUartRxBufCount0), r0, r2
	ld.hu LOWW(#_g_mpuUartRxBufCount0)[r2], r5
	mov #_g_uartReceiveData0, r7
	add r5, r7
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 911
	ld.h LOWW(#_g_mpuUartRxBufCount0)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_mpuUartRxBufCount0)[r2]
.BB.LABEL.22_7:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 913
	movhi HIGHW1(#_g_mpuUartRxBufDealFlag), r0, r2
	ld.bu LOWW(#_g_mpuUartRxBufDealFlag)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_9
.BB.LABEL.22_8:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 915
	movhi HIGHW1(#_g_mpuUartRxBufId), r0, r5
	st.b r2, LOWW(#_g_mpuUartRxBufId)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 916
	movhi HIGHW1(#_g_mpuUartRxBufCount1), r0, r5
	st.h r0, LOWW(#_g_mpuUartRxBufCount1)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 917
	movhi HIGHW1(#_g_mpuUartRxBufDealFlag), r0, r5
	st.b r2, LOWW(#_g_mpuUartRxBufDealFlag)[r5]
.BB.LABEL.22_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 920
	jmp [r31]
_MpuHalUartTimerCallback:
	.stack _MpuHalUartTimerCallback = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 922
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 924
	movhi HIGHW1(#_g_mpuUartRxBufId), r0, r2
	ld.bu LOWW(#_g_mpuUartRxBufId)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	movhi HIGHW1(#_g_mpuUartRxBufCount0), r0, r2
	ld.hu LOWW(#_g_mpuUartRxBufCount0)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 926
	movhi HIGHW1(#_g_mpuUartRxBufCount0), r0, r20
	ld.hu LOWW(#_g_mpuUartRxBufCount0)[r20], r7
	mov #_g_uartReceiveData0, r21
	mov 0x00000001, r8
	mov r21, r6
	jarl _UartProtocalProcess, r31
	movea 0x000000C8, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 927
	mov r21, r6
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 928
	st.h r0, LOWW(#_g_mpuUartRxBufCount0)[r20]
	br9 .BB.LABEL.23_6
.BB.LABEL.23_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 930
	movhi HIGHW1(#_g_mpuUartRxBufId), r0, r2
	ld.bu LOWW(#_g_mpuUartRxBufId)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_4:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	movhi HIGHW1(#_g_mpuUartRxBufCount1), r0, r2
	ld.hu LOWW(#_g_mpuUartRxBufCount1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 932
	movhi HIGHW1(#_g_mpuUartRxBufCount1), r0, r20
	ld.hu LOWW(#_g_mpuUartRxBufCount1)[r20], r7
	mov #_g_uartReceiveData1, r21
	mov 0x00000001, r8
	mov r21, r6
	jarl _UartProtocalProcess, r31
	movea 0x000000C8, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 933
	mov r21, r6
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 934
	st.h r0, LOWW(#_g_mpuUartRxBufCount1)[r20]
.BB.LABEL.23_6:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 936
	movhi HIGHW1(#_g_mpuUartRxBufDealFlag), r0, r2
	st.b r0, LOWW(#_g_mpuUartRxBufDealFlag)[r2]
	dispose 0x00000000, 0x00000061, [r31]
_MpuHalMainUartInit:
	.stack _MpuHalMainUartInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 939
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 941
	jarl _R_UART5_Create, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 942
	jarl _R_UART5_Start, r31
	dispose 0x00000000, 0x00000001, [r31]
_MpuHalInit:
	.stack _MpuHalInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 945
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 947
	mov #_g_mpuManage.3, r20
	movea 0x00001904, r0, r8
	mov 0x00000000, r7
	mov r20, r6
	jarl _memset, r31
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 948
	st.b r2, 0x00000001[r20]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 949
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 950
	jarl _MpuHalGpioInit.1, r31
	mov 0x00070800, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 955
	jarl _MpuHalMainUartInit, r31
	dispose 0x00000000, 0x00000041, [r31]
_MpuHalTxTaskInit:
	.stack _MpuHalTxTaskInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 959
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 961
	mov #_g_mpuUartTxBuffer.2, r20
	st.h r0, 0x00000C02[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 962
	st.h r0, 0x00000C04[r20]
	mov 0x00000004, r7
	movea 0x00000014, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 963
	jarl _xQueueCreate, r31
	st.b r10, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
_MpuHalTxTask:
	.stack _MpuHalTxTask = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 967
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 975
	jarl _R_UART5_SendStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_7
.BB.LABEL.27_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 981
	movhi HIGHW1(#_g_mpuUartTxBuffer.2), r0, r2
	ld.bu LOWW(#_g_mpuUartTxBuffer.2)[r2], r6
	mov 0x00000000, r8
	mov r3, r7
	jarl _xQueueReceive, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.27_7
.BB.LABEL.27_2:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 986
	ld.w 0x00000000[r3], r20
	mov r20, r7
	shr 0x00000010, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 988
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.27_7
.BB.LABEL.27_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	andi 0x0000FFFF, r20, r2
	addi 0xFFFFF800, r2, r0
	bgt9 .BB.LABEL.27_7
.BB.LABEL.27_4:	; bb38
	movhi HIGHW1(#_g_mpuUartTxBuffer.2+0x00000C04), r0, r2
	ld.hu LOWW(#_g_mpuUartTxBuffer.2+0x00000C04)[r2], r2
	andi 0x0000FFFF, r20, r5
	cmp r2, r5
	bh9 .BB.LABEL.27_7
.BB.LABEL.27_5:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 996
	mov #_g_mpuUartTxBuffer.2, r2
	movea 0x00000801, r2, r21
	andi 0x0000FFFF, r20, r22
	mov r21, r6
	mov r22, r8
	jarl _MpuUartRingCopyOut.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 997
	mov r21, r6
	mov r22, r7
	jarl _R_UART5_Send, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 999
	movhi HIGHW1(#_g_mpuUartTxBuffer.2+0x00000C04), r0, r2
	ld.h LOWW(#_g_mpuUartTxBuffer.2+0x00000C04)[r2], r5
	sub r20, r5
	st.h r5, LOWW(#_g_mpuUartTxBuffer.2+0x00000C04)[r2]
.BB.LABEL.27_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1007
	dispose 0x00000004, 0x00000071, [r31]
_MpuUartTransmit.1:
	.stack _MpuUartTransmit.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1009
	prepare 0x00000079, 0x00000004
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1015
	bz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; entry.bb118_crit_edge
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.28_10
.BB.LABEL.28_3:	; bb18
	addi 0xFFFFF800, r20, r0
	bgt9 .BB.LABEL.28_2
.BB.LABEL.28_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1020
	movhi HIGHW1(#_g_mpuUartTxBuffer.2+0x00000C04), r0, r2
	ld.hu LOWW(#_g_mpuUartTxBuffer.2+0x00000C04)[r2], r2
	movea 0x00000800, r0, r5
	sub r2, r5
	cmp r5, r20
	bgt9 .BB.LABEL.28_2
.BB.LABEL.28_5:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1025
	mov #_g_mpuUartTxBuffer.2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1026
	ld.hu 0x00000C02[r6], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1028
	add r22, r6
	movea 0x00000800, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1027
	sub r22, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1026
	mov r22, r2
	shl 0x00000010, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1028
	add 0x00000001, r6
	andi 0x0000FFFF, r23, r2
	mov r21, r7
	cmp r20, r2
	bl9 .BB.LABEL.28_7
.BB.LABEL.28_6:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1030
	mov r20, r8
	br9 .BB.LABEL.28_8
.BB.LABEL.28_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1034
	zxh r23
	mov r23, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1035
	mov r20, r8
	sub r23, r8
	mov r21, r7
	add r23, r7
	mov #_g_mpuUartTxBuffer.2, r6
	add 0x00000001, r6
.BB.LABEL.28_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1037
	mov r22, r2
	add r20, r2
	andi 0x000007FF, r2, r2
	mov #_g_mpuUartTxBuffer.2, r5
	st.h r2, 0x00000C02[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1038
	ld.h 0x00000C04[r5], r2
	add r20, r2
	st.h r2, 0x00000C04[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1039
	ld.w 0x00000000[r3], r2
	or r20, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1040
	ld.bu 0x00000000[r5], r6
	mov 0x00000000, r8
	mov r3, r7
	jarl _xQueueSend, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.28_11
.BB.LABEL.28_9:	; if_break_bb83.bb118_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 0
	mov 0x00000000, r10
.BB.LABEL.28_10:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1047
	sxh r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.28_11:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1042
	mov #_g_mpuUartTxBuffer.2, r2
	st.h r22, 0x00000C02[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1043
	ld.h 0x00000C04[r2], r5
	sub r20, r5
	st.h r5, 0x00000C04[r2]
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1044
	dispose 0x00000004, 0x00000079, [r31]
_MpuHalUartPrintErrState:
	.stack _MpuHalUartPrintErrState = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1049
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1054
	movhi HIGHW1(#_timeCount.7.MpuHalUartPrintErrState), r0, r2
	ld.w LOWW(#_timeCount.7.MpuHalUartPrintErrState)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_timeCount.7.MpuHalUartPrintErrState)[r2]
	movea 0x000003E8, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1055
	divhu r6, r2, r0
	cmp r2, r5
	bl9 .BB.LABEL.29_3
.BB.LABEL.29_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1059
	movhi HIGHW1(#_timeCount.7.MpuHalUartPrintErrState), r0, r2
	st.w r0, LOWW(#_timeCount.7.MpuHalUartPrintErrState)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1061
	movhi HIGHW1(#_g_mpuUartErrorFlag), r0, r2
	ld.bu LOWW(#_g_mpuUartErrorFlag)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1063
	movhi HIGHW1(#_g_mpuUartErrorType), r0, r20
	ld.bu LOWW(#_g_mpuUartErrorType)[r20], r7
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1064
	movhi HIGHW1(#_g_mpuUartErrorFlag), r0, r2
	st.b r0, LOWW(#_g_mpuUartErrorFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1065
	st.b r0, LOWW(#_g_mpuUartErrorType)[r20]
.BB.LABEL.29_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/mpuHal.c", 1067
	dispose 0x00000000, 0x00000041, [r31]
	.section .data, data
	.align 2
_g_mpuUartReciveCount:
	.ds (2)
_g_mpuUartErrorType:
	.ds (1)
_g_mpuUartErrorFlag:
	.ds (1)
_g_mpuSetRecvErrorFlag:
	.ds (1)
_g_mpuUartRxBufDealFlag:
	.ds (1)
	.align 4
_timeCount.4.MpuHalCycleProcess:
	.ds (4)
_errCount.6.MpuHalUartPrintErrState:
	.ds (1)
	.align 4
_timeCount.7.MpuHalUartPrintErrState:
	.ds (4)
	.section .bss, bss
_g_uartReceiveData0:
	.ds (200)
_g_uartReceiveData1:
	.ds (200)
_g_mpuUartRxBufId:
	.ds (1)
	.align 2
_g_mpuUartRxBufCount0:
	.ds (2)
	.align 2
_g_mpuUartRxBufCount1:
	.ds (2)
	.align 2
_g_mpuUartProtocalBuffer.1:
	.ds (1204)
	.align 2
_g_mpuUartTxBuffer.2:
	.ds (3078)
	.align 4
_g_mpuManage.3:
	.ds (6404)
_sTxBuffer.5.MpuHalTransmit:
	.ds (2048)
	.section .const, const
.STR.1:
	.db 0x6D,0x70,0x75,0x20,0x75,0x61,0x72,0x74,0x3A,0x20,0x30,0x78,0x25,0x30,0x32,0x58
	.db 0x0D,0x0A
	.ds (1)
