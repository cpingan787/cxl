#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\batterySdk.c -oDefaultBuild\batterySdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8d50981992ba46c18b5da86cba5af052masqb3us.ieh
#@	compiled at Fri Mar 27 09:50:41 2026

	.file "..\..\Srcode\sdk\source\batterySdk.c"

	$reg_mode 32
	.dbl_size 8

	.extern _TimerHalStartTime
	.extern _BatteryHalDisableCharge
	.extern _TimerHalIsTimeout
	.extern _TimerHalStopTime
	.extern _BatteryHalEnableCharge
	.public _BatterySdkInit
	.extern _TimerHalOpen
	.extern _xSemaphoreCreateMutex
	.public _BatterySdkCycleProcess
	.extern _BatteryHalGetNtc
	.extern _xSemaphoreTake
	.extern _xSemaphoreGive
	.extern _BatteryHalGetVoltage
	.public _BatterySdkGetVoltage
	.public _BatterySdkGetTemperature
	.public _BatterySdkGetBatteyStatus
	.public _BatterySdkGetBatteySoc
	.public _BatterySdkGetBatteyVoltageAlarm
	.public _BatterySdkGetBatteyTempAlarm
	.public _BatterySdkGetBatteyChargingDuration
	.extern _BatteryHalGetState
	.extern _TimerHalGetRemainder

	.section .text, text
_BatterySdkAdConversion.1:
	.stack _BatterySdkAdConversion.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 189
	movea 0x00000CE3, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 196
	cmp r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 198
	cmov 0x0000000B, r2, r6, r2
	movea 0x00000CE4, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 200
	sub r2, r5
	movea 0x00002710, r0, r6
	mul r6, r2, r0
	divu r5, r2, r0
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 202
	jmp [r31]
_ResisterToTemperature.1:
	.stack _ResisterToTemperature.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 214
	mov 0x0002A490, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 223
	cmp r2, r6
	bl9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.bb91_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0xFFFFEC78, r0, r2
	br9 .BB.LABEL.2_10
.BB.LABEL.2_2:	; entry.bb50_crit_edge
	movea 0x0000008D, r0, r2
	mov 0x00000000, r5
	br9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 239
	add r8, r2
	mov 0x00000002, r9
	divh r9, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 240
	mov r2, r9
	shl 0x00000002, r9
	mov #_g_temperatureRMap.5, r10
	add r9, r10
	ld.w 0x00000000[r10], r9
	cmp r6, r9
	bl9 .BB.LABEL.2_6
.BB.LABEL.2_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 244
	cmp r6, r9
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov r8, r2
.BB.LABEL.2_6:	; bb50
	mov r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 235
	mov r8, r2
	sub r5, r2
	cmp 0x00000001, r2
	mov r5, r2
	bgt9 .BB.LABEL.2_3
.BB.LABEL.2_7:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 254
	cmp r8, r5
	mul 0x00000064, r2, r0
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_else_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 261
	mov r5, r9
	shl 0x00000002, r9
	mov #_g_temperatureRMap.5, r10
	add r10, r9
	ld.w 0x00000000[r9], r9
	subr r8, r5
	shl 0x00000002, r8
	add r8, r10
	ld.w 0x00000000[r10], r8
	subr r9, r8
	sub r6, r9
	mul r9, r5, r0
	mul 0x00000064, r5, r0
	divu r8, r5, r0
	add r5, r2
.BB.LABEL.2_9:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0xFFFFF060, r2, r2
.BB.LABEL.2_10:	; bb91
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 266
	jmp [r31]
_BatterySdkTmpErrorProcess.1:
	.stack _BatterySdkTmpErrorProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 268
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 273
	movhi HIGHW1(#_g_batteryTemperature.10), r0, r2
	ld.w LOWW(#_g_batteryTemperature.10)[r2], r2
	mov 0x0002A490, r5
	cmp r5, r2
	movhi HIGHW1(#_g_batteryConnectFlag.21), r0, r2
	bl9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 276
	st.b r6, LOWW(#_g_batteryConnectFlag.21)[r2]
	br9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 280
	ld.bu LOWW(#_g_batteryConnectFlag.21)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_10
.BB.LABEL.3_3:	; if_else_bb.if_break_bb12_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000000, r6
.BB.LABEL.3_4:	; if_break_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 285
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	ld.w LOWW(#_g_BatteryConfigure.9)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_9
.BB.LABEL.3_5:	; if_break_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 294
	ld.h 0x00000002[r2], r5
	shl 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 289
	mov #_g_temperatureRMap.5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 294
	add r7, r5
	ld.w 0x000000A0[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 289
	movhi HIGHW1(#_g_batteryTemperature.10), r0, r8
	ld.w LOWW(#_g_batteryTemperature.10)[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 294
	cmp r5, r8
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 300
	add r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 289
	ld.h 0x00000000[r2], r2
	shl 0x00000002, r2
	add r7, r2
	ld.w 0x000000A0[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 300
	movhi HIGHW1(#_g_batteryTempAlarmFlag.23), r0, r7
	st.b r5, LOWW(#_g_batteryTempAlarmFlag.23)[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 291
	cmp r2, r8
	setf 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 303
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	ld.w LOWW(#_g_BatteryConfigure.9)[r2], r2
	ld.w 0x00000010[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 305
	ld.w 0x00000010[r2], r2
	jarl [r2], r31
.BB.LABEL.3_7:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 307
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	ld.w LOWW(#_g_BatteryConfigure.9)[r2], r2
	ld.w 0x0000000C[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 309
	ld.w 0x0000000C[r2], r2
	mov r20, r6
	jarl [r2], r31
.BB.LABEL.3_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 312
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_10:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 282
	movhi HIGHW1(#_g_batteryConnectFlag.21), r0, r2
	st.b r0, LOWW(#_g_batteryConnectFlag.21)[r2]
	br9 .BB.LABEL.3_3
_BatterySdkVoltageErrorProcess.1:
	.stack _BatterySdkVoltageErrorProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 314
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 319
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	ld.w LOWW(#_g_BatteryConfigure.9)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 325
	ld.hu 0x00000006[r2], r5
	cmp r6, r5
	setf 0x0000000B, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 330
	ld.w 0x00000014[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 332
	ld.w 0x00000014[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 321
	ld.hu 0x00000004[r2], r2
	cmp r6, r2
	setf 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 332
	jarl [r5], r31
.BB.LABEL.4_3:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 334
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	ld.w LOWW(#_g_BatteryConfigure.9)[r2], r2
	ld.w 0x00000018[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 336
	ld.w 0x00000018[r2], r2
	mov r20, r6
	jarl [r2], r31
.BB.LABEL.4_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 340
	dispose 0x00000000, 0x00000041, [r31]
_BatterySdkChargeStateTemperatureCheck.1:
	.stack _BatterySdkChargeStateTemperatureCheck.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 342
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 344
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	ld.bu LOWW(#_g_getTempSuccessFlag.14)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 346
	movhi HIGHW1(#_g_batteryTemperature.10), r0, r2
	ld.w LOWW(#_g_batteryTemperature.10)[r2], r2
	movea 0x000069E5, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0x0000104B, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 348
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 350
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	mov 0x000493E0, r7
	jarl _TimerHalStartTime, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 354
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_5:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 357
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 359
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 360
	jarl _BatteryHalDisableCharge, r31
.BB.LABEL.5_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 362
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateWait5MinDelay.1:
	.stack _BatterySdkChargeStateWait5MinDelay.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 364
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 366
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalIsTimeout, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 368
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalStopTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 369
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 376
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_3:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 379
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	jarl _BatteryHalDisableCharge, r31
.BB.LABEL.6_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 384
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateVoltageCheck.1:
	.stack _BatterySdkChargeStateVoltageCheck.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 386
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 388
	movhi HIGHW1(#_g_getVolSuccessFlag.15), r0, r2
	ld.bu LOWW(#_g_getVolSuccessFlag.15)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 393
	movhi HIGHW1(#_g_cellMaxVoltage.2), r0, r2
	ld.w LOWW(#_g_cellMaxVoltage.2)[r2], r2
	movhi HIGHW1(#_g_cellNumber.1), r0, r5
	ld.w LOWW(#_g_cellNumber.1)[r5], r5
	mul r5, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 396
	movhi HIGHW1(#_g_batteryVoltage.11), r0, r6
	ld.w LOWW(#_g_batteryVoltage.11)[r6], r6
	cmp r2, r6
	bnh9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 398
	movhi HIGHW1(#_g_batteryState.18), r0, r5
	mov 0x0000000A, r6
	st.w r6, LOWW(#_g_batteryState.18)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 394
	movhi HIGHW1(#_g_cellMinVoltage.3), r0, r2
	ld.w LOWW(#_g_cellMinVoltage.3)[r2], r2
	mul r5, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 402
	cmp r2, r6
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 408
	cmov 0x0000000B, 0x00000004, r2, r2
	movhi HIGHW1(#_g_batteryState.18), r0, r5
	st.w r2, LOWW(#_g_batteryState.18)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 411
	movhi HIGHW1(#_g_middleVoltageChargeTime.4), r0, r2
	ld.w LOWW(#_g_middleVoltageChargeTime.4)[r2], r7
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalStartTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 413
	jarl _BatteryHalEnableCharge, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_4:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 416
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 418
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 419
	jarl _BatteryHalDisableCharge, r31
.BB.LABEL.7_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 421
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateMiddleVoltageCharge.1:
	.stack _BatterySdkChargeStateMiddleVoltageCharge.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 423
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 426
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalIsTimeout, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 429
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalStopTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 431
	jarl _BatteryHalDisableCharge, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 432
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000B, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 434
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x0000000E, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 436
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 438
	jarl _BatteryHalDisableCharge, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_4:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 442
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateMiddleVoltageChargeCheckTem.1:
	.stack _BatterySdkChargeStateMiddleVoltageChargeCheckTem.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 446
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 448
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	ld.bu LOWW(#_g_getTempSuccessFlag.14)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_8
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 450
	movhi HIGHW1(#_g_batteryTemperature.10), r0, r2
	ld.w LOWW(#_g_batteryTemperature.10)[r2], r2
	movea 0x000069E5, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0x00000BDC, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.9_5
.BB.LABEL.9_3:	; if_then_bb19
	mov 0x00000006, r5
.BB.LABEL.9_4:	; if_then_bb19
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	jarl _BatteryHalDisableCharge, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 475
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 456
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x0000000E, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 458
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 460
	jarl _BatteryHalDisableCharge, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 462
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalStopTime, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_7:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 466
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_8:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 469
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x0000000E, r5
	br9 .BB.LABEL.9_4
.BB.LABEL.9_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 475
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateLowVoltageCharge.1:
	.stack _BatterySdkChargeStateLowVoltageCharge.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 477
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 479
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalIsTimeout, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 481
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalStopTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 483
	jarl _BatteryHalDisableCharge, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 484
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x00000009, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 486
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x0000000E, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 488
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 490
	jarl _BatteryHalDisableCharge, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_4:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 494
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateLowVoltageChargeCheckTem.1:
	.stack _BatterySdkChargeStateLowVoltageChargeCheckTem.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 498
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 500
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	ld.bu LOWW(#_g_getTempSuccessFlag.14)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 502
	movhi HIGHW1(#_g_batteryTemperature.10), r0, r2
	ld.w LOWW(#_g_batteryTemperature.10)[r2], r2
	movea 0x000069E5, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0x00000BDC, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 504
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 505
	jarl _BatteryHalDisableCharge, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 506
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalStopTime, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 510
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x00000007, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_5:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 513
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 515
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 517
	jarl _BatteryHalDisableCharge, r31
.BB.LABEL.11_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 519
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateChargeFinishCheckTem.1:
	.stack _BatterySdkChargeStateChargeFinishCheckTem.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 521
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 523
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	ld.bu LOWW(#_g_getTempSuccessFlag.14)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 525
	movhi HIGHW1(#_g_batteryTemperature.10), r0, r2
	ld.w LOWW(#_g_batteryTemperature.10)[r2], r2
	movea 0x000069E5, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0x00000BDC, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 527
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000D, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 529
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	mov 0x000927C0, r7
	jarl _TimerHalStartTime, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 531
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 539
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000C, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_6:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 542
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	jarl _BatteryHalDisableCharge, r31
.BB.LABEL.12_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 548
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateChargeFinishDelay10Min.1:
	.stack _BatterySdkChargeStateChargeFinishDelay10Min.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 550
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 552
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalIsTimeout, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 554
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	jarl _TimerHalStopTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 556
	jarl _BatteryHalDisableCharge, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 557
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000C, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 559
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 561
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 563
	jarl _BatteryHalDisableCharge, r31
.BB.LABEL.13_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 565
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateInit.1:
	.stack _BatterySdkChargeStateInit.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 567
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 569
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	ld.bu LOWW(#_g_getTempSuccessFlag.14)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 571
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 573
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 575
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 576
	jarl _BatteryHalDisableCharge, r31
.BB.LABEL.14_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 578
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkChargeStateManage.1:
	.stack _BatterySdkChargeStateManage.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 580
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 582
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	ld.w LOWW(#_g_batteryState.18)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 584
	jarl _BatterySdkChargeStateInit.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 586
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 588
	jarl _BatterySdkChargeStateTemperatureCheck.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_4:	; if_else_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 590
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 592
	jarl _BatterySdkChargeStateWait5MinDelay.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_6:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 594
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.15_8
.BB.LABEL.15_7:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 596
	jarl _BatterySdkChargeStateVoltageCheck.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_8:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 598
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.15_10
.BB.LABEL.15_9:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 600
	jarl _BatterySdkChargeStateMiddleVoltageCharge.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_10:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 602
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.15_12
.BB.LABEL.15_11:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 604
	jarl _BatterySdkChargeStateMiddleVoltageChargeCheckTem.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_12:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 606
	cmp 0x00000006, r2
	bz9 .BB.LABEL.15_18
.BB.LABEL.15_13:	; if_else_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 615
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_14:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 617
	jarl _BatterySdkChargeStateLowVoltageCharge.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_15:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 619
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.15_17
.BB.LABEL.15_16:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 621
	jarl _BatterySdkChargeStateLowVoltageChargeCheckTem.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_17:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 623
	cmp 0x00000009, r2
	bnz9 .BB.LABEL.15_20
.BB.LABEL.15_18:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_31
.BB.LABEL.15_19:	; if_then_bb67
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000E, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	jarl _BatteryHalDisableCharge, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 656
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_20:	; if_else_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 632
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.15_22
.BB.LABEL.15_21:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 634
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000B, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_22:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 636
	cmp 0x0000000B, r2
	bnz9 .BB.LABEL.15_24
.BB.LABEL.15_23:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 638
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	mov 0x0000000C, r5
	st.w r5, LOWW(#_g_batteryState.18)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_24:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 640
	cmp 0x0000000C, r2
	bnz9 .BB.LABEL.15_26
.BB.LABEL.15_25:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 642
	jarl _BatterySdkChargeStateChargeFinishCheckTem.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_26:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 644
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.15_28
.BB.LABEL.15_27:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 646
	jarl _BatterySdkChargeStateChargeFinishDelay10Min.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_28:	; if_else_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 648
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.15_31
.BB.LABEL.15_29:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 651
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	ld.bu LOWW(#_g_sleepState.12)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_31
.BB.LABEL.15_30:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 653
	movhi HIGHW1(#_g_batteryState.18), r0, r2
	st.w r0, LOWW(#_g_batteryState.18)[r2]
.BB.LABEL.15_31:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 656
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkInit:
	.stack _BatterySdkInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 669
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 672
	cmp 0x00000000, r6
	mov r8, r20
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 674
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	st.w r6, LOWW(#_g_BatteryConfigure.9)[r2]
.BB.LABEL.16_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 676
	cmp 0x00000000, r7
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 678
	movhi HIGHW1(#_g_cycleTime.13), r0, r2
	st.h r7, LOWW(#_g_cycleTime.13)[r2]
.BB.LABEL.16_4:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 680
	jarl _TimerHalOpen, r31
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	st.h r10, LOWW(#_g_batterySdkTimerHandle.8)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 682
	movhi HIGHW1(#_g_batteryTpye.22), r0, r2
	st.w r20, LOWW(#_g_batteryTpye.22)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 684
	jarl _xSemaphoreCreateMutex, r31
	movhi HIGHW1(#_g_mutexHandle.20), r0, r2
	st.w r10, LOWW(#_g_mutexHandle.20)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 686
	dispose 0x00000000, 0x00000041, [r31]
_BatterySdkCycleProcess:
	.stack _BatterySdkCycleProcess = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 696
	prepare 0x00000041, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 699
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 700
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 703
	movhi HIGHW1(#_g_testModeFlag.19), r0, r2
	ld.bu LOWW(#_g_testModeFlag.19)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 706
	movhi HIGHW1(#_g_sleepState.12), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_sleepState.12)[r2]
.BB.LABEL.17_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 718
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	ld.bu LOWW(#_g_getTempSuccessFlag.14)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movhi HIGHW1(#_g_adGetStateFlag.17), r0, r2
	ld.bu LOWW(#_g_adGetStateFlag.17)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_6
.BB.LABEL.17_4:	; if_then_bb22
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 721
	jarl _BatteryHalGetNtc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 722
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_6
.BB.LABEL.17_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 725
	movhi HIGHW1(#_g_mutexHandle.20), r0, r20
	ld.w LOWW(#_g_mutexHandle.20)[r20], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 726
	ld.w 0x00000004[r3], r6
	mov #_g_batteryTemperature.10, r7
	jarl _BatterySdkAdConversion.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 727
	ld.w LOWW(#_g_mutexHandle.20)[r20], r6
	jarl _xSemaphoreGive, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 728
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r5
	st.b r2, LOWW(#_g_getTempSuccessFlag.14)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 729
	movhi HIGHW1(#_g_adGetStateFlag.17), r0, r5
	st.b r2, LOWW(#_g_adGetStateFlag.17)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 731
	jarl _BatterySdkTmpErrorProcess.1, r31
.BB.LABEL.17_6:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 734
	movhi HIGHW1(#_g_getVolSuccessFlag.15), r0, r2
	ld.bu LOWW(#_g_getVolSuccessFlag.15)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.17_8
.BB.LABEL.17_7:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movhi HIGHW1(#_g_adGetStateFlag.17), r0, r2
	ld.bu LOWW(#_g_adGetStateFlag.17)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_10
.BB.LABEL.17_8:	; if_then_bb54
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 737
	jarl _BatteryHalGetVoltage, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 738
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_10
.BB.LABEL.17_9:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 740
	movhi HIGHW1(#_g_mutexHandle.20), r0, r20
	ld.w LOWW(#_g_mutexHandle.20)[r20], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 741
	movhi HIGHW1(#_g_batteryVoltage.11), r0, r2
	ld.w 0x00000000[r3], r5
	st.w r5, LOWW(#_g_batteryVoltage.11)[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 742
	movhi HIGHW1(#_g_getVolSuccessFlag.15), r0, r6
	st.b r5, LOWW(#_g_getVolSuccessFlag.15)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 743
	movhi HIGHW1(#_g_adGetStateFlag.17), r0, r6
	st.b r5, LOWW(#_g_adGetStateFlag.17)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 745
	ld.w LOWW(#_g_batteryVoltage.11)[r2], r6
	jarl _BatterySdkVoltageErrorProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 746
	ld.w LOWW(#_g_mutexHandle.20)[r20], r6
	jarl _xSemaphoreGive, r31
.BB.LABEL.17_10:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 750
	movhi HIGHW1(#_g_adGetStateFlag.17), r0, r2
	ld.bu LOWW(#_g_adGetStateFlag.17)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.17_13
.BB.LABEL.17_11:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 752
	movhi HIGHW1(#_g_adGetDelayTimeCount.16), r0, r2
	ld.h LOWW(#_g_adGetDelayTimeCount.16)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_adGetDelayTimeCount.16)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 755
	movhi HIGHW1(#_g_cycleTime.13), r0, r2
	ld.hu LOWW(#_g_cycleTime.13)[r2], r2
	movea 0x000003E8, r0, r6
	divhu r2, r6, r0
	zxh r5
	cmp r6, r5
	ble9 .BB.LABEL.17_13
.BB.LABEL.17_12:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 758
	movhi HIGHW1(#_g_adGetStateFlag.17), r0, r2
	st.b r0, LOWW(#_g_adGetStateFlag.17)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 759
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	st.b r0, LOWW(#_g_getTempSuccessFlag.14)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 760
	movhi HIGHW1(#_g_getVolSuccessFlag.15), r0, r2
	st.b r0, LOWW(#_g_getVolSuccessFlag.15)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 761
	movhi HIGHW1(#_g_adGetDelayTimeCount.16), r0, r2
	st.h r0, LOWW(#_g_adGetDelayTimeCount.16)[r2]
.BB.LABEL.17_13:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 766
	movhi HIGHW1(#_g_testModeFlag.19), r0, r2
	ld.bu LOWW(#_g_testModeFlag.19)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_15
.BB.LABEL.17_14:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 769
	jarl _BatterySdkChargeStateManage.1, r31
.BB.LABEL.17_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 771
	dispose 0x00000008, 0x00000041, [r31]
_BatterySdkGetVoltage:
	.stack _BatterySdkGetVoltage = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 782
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 784
	movhi HIGHW1(#_g_getVolSuccessFlag.15), r0, r2
	ld.bu LOWW(#_g_getVolSuccessFlag.15)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 789
	movhi HIGHW1(#_g_mutexHandle.20), r0, r21
	ld.w LOWW(#_g_mutexHandle.20)[r21], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 790
	movhi HIGHW1(#_g_batteryVoltage.11), r0, r2
	ld.w LOWW(#_g_batteryVoltage.11)[r2], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 792
	ld.w LOWW(#_g_mutexHandle.20)[r21], r6
	jarl _xSemaphoreGive, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 793
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.18_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 794
	dispose 0x00000000, 0x00000061, [r31]
_BatterySdkGetTemperature:
	.stack _BatterySdkGetTemperature = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 805
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 808
	movhi HIGHW1(#_g_getTempSuccessFlag.14), r0, r2
	ld.bu LOWW(#_g_getTempSuccessFlag.14)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 813
	movhi HIGHW1(#_g_mutexHandle.20), r0, r21
	ld.w LOWW(#_g_mutexHandle.20)[r21], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 816
	ld.w LOWW(#_g_mutexHandle.20)[r21], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 814
	movhi HIGHW1(#_g_batteryTemperature.10), r0, r2
	ld.w LOWW(#_g_batteryTemperature.10)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 816
	jarl _xSemaphoreGive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 817
	mov r21, r6
	mov r20, r7
	jarl _ResisterToTemperature.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 818
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 819
	dispose 0x00000000, 0x00000061, [r31]
_BatterySdkGetBatteyStatus:
	.stack _BatterySdkGetBatteyStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 955
	movhi HIGHW1(#_g_batteryConnectFlag.21), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 956
	ld.bu LOWW(#_g_batteryConnectFlag.21)[r2], r10
	jmp [r31]
_BatterySdkGetBatteySoc:
	.stack _BatterySdkGetBatteySoc = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 966
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 973
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 975
	movhi HIGHW1(#_g_batteryTpye.22), r0, r2
	ld.w LOWW(#_g_batteryTpye.22)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; entry.if_break_bb15_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0x00000020, r0, r20
	mov #_g_FDKPercentTable.6, r21
	br9 .BB.LABEL.21_5
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 980
	cmp 0x00000001, r2
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_else_bb.bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.21_13
.BB.LABEL.21_4:	; if_else_bb.if_break_bb15_crit_edge
	movea 0x0000002A, r0, r20
	mov #_g_XYSRPercentTable.7, r21
.BB.LABEL.21_5:	; if_break_bb15
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 991
	jarl _BatterySdkGetVoltage, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 989
	addi 0xFFFFFFFF, r20, r2
	mov 0x000186A0, r5
	divu r2, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 991
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_6:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 995
	ld.w 0x00000000[r21], r2
	ld.w 0x00000000[r3], r6
	cmp r2, r6
	bl9 .BB.LABEL.21_3
.BB.LABEL.21_7:	; if_break_bb26.bb75_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.21_11
.BB.LABEL.21_8:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1001
	mov r10, r2
	shl 0x00000002, r2
	add r21, r2
	ld.w 0x00000000[r2], r7
	add 0xFFFFFFFC, r2
	cmp r7, r6
	bnc9 .BB.LABEL.21_10
.BB.LABEL.21_9:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1002
	ld.w 0x00000000[r3], r6
	subr r7, r6
	mul r5, r10, r0
	mul r6, r5, r0
	ld.w 0x00000000[r2], r6
	sub r6, r7
	divu r7, r5, r0
	sub r5, r10
	movea 0x000003E8, r0, r5
	divhu r5, r10, r0
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.21_10:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	add 0x00000001, r10
.BB.LABEL.21_11:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1000
	cmp r20, r10
	bl9 .BB.LABEL.21_8
.BB.LABEL.21_12:	; bb75.bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	movea 0x00000064, r0, r10
.BB.LABEL.21_13:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1007
	dispose 0x00000004, 0x00000061, [r31]
_BatterySdkGetBatteyVoltageAlarm:
	.stack _BatterySdkGetBatteyVoltageAlarm = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1017
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1019
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	ld.w LOWW(#_g_BatteryConfigure.9)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1021
	jarl _BatterySdkGetBatteySoc, r31
	movhi HIGHW1(#_g_BatteryConfigure.9), r0, r2
	ld.w LOWW(#_g_BatteryConfigure.9)[r2], r2
	ld.bu 0x00000008[r2], r2
	cmp r2, r10
	bl9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1026
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.22_3:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1027
	dispose 0x00000000, 0x00000001, [r31]
_BatterySdkGetBatteyTempAlarm:
	.stack _BatterySdkGetBatteyTempAlarm = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1040
	movhi HIGHW1(#_g_batteryTempAlarmFlag.23), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1041
	ld.bu LOWW(#_g_batteryTempAlarmFlag.23)[r2], r10
	jmp [r31]
_BatterySdkGetBatteyChargingDuration:
	.stack _BatterySdkGetBatteyChargingDuration = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1051
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1054
	jarl _BatteryHalGetState, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1056
	movhi HIGHW1(#_g_batterySdkTimerHandle.8), r0, r2
	ld.h LOWW(#_g_batterySdkTimerHandle.8)[r2], r6
	cmp 0x00000000, r6
	bn9 .BB.LABEL.24_4
.BB.LABEL.24_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1060
	jarl _TimerHalGetRemainder, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1061
	cmp 0x00000000, r10
	bz9 .BB.LABEL.24_4
.BB.LABEL.24_3:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1065
	movhi HIGHW1(#_g_middleVoltageChargeTime.4), r0, r2
	ld.w LOWW(#_g_middleVoltageChargeTime.4)[r2], r2
	subr r2, r10
	movea 0x000003E8, r0, r2
	divhu r2, r10, r0
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_4:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/batterySdk.c", 1068
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
	.align 4
_g_cellNumber.1:
	.dw 0x00000002
	.align 4
_g_cellMaxVoltage.2:
	.dw 0x0000053C
	.align 4
_g_cellMinVoltage.3:
	.dw 0x000004D8
	.align 4
_g_middleVoltageChargeTime.4:
	.dw 0x01B77400
	.align 4
_g_temperatureRMap.5:
	.dw 0x0002A490,0x00028168,0x00026034,0x000240F4,0x000223A8,0x00020850,0x0001EE88,0x0001D650
	.dw 0x0001BF44,0x0001A964,0x00019514,0x000181F0,0x00016FD0,0x00015EAA,0x00014E60,0x00013EFC
	.dw 0x00013060,0x0001228C,0x00011562,0x000108EC,0x0000FD16,0x0000F1EA,0x0000E74A,0x0000DD2C
	.dw 0x0000D386,0x0000CA4E,0x0000C18E,0x0000B932,0x0000B13A,0x0000A9A6,0x0000A262,0x00009B82
	.dw 0x000094F2,0x00008EB2,0x000088AE,0x000082FA,0x00007D82,0x00007846,0x0000733C,0x00006E78
	.dw 0x000069E6,0x00006586,0x00006158,0x00005D5C,0x00005988,0x000055E6,0x0000526C,0x00004F1A
	.dw 0x00004BF0,0x000048E4,0x00004600,0x00004344,0x0000409C,0x00003E12,0x00003BA6,0x00003958
	.dw 0x00003728,0x0000350C,0x00003304,0x00003110,0x00002F3A,0x00002D6E,0x00002BC0,0x00002A1C
	.dw 0x0000288C,0x00002710,0x000025A2,0x00002443,0x000022F2,0x000021AF,0x0000207A,0x00001F51
	.dw 0x00001E35,0x00001D24,0x00001C1E,0x00001B22,0x00001A31,0x0000194A,0x0000186B,0x00001796
	.dw 0x000016C8,0x00001603,0x00001546,0x00001490,0x000013E1,0x00001339,0x00001297,0x000011FB
	.dw 0x00001166,0x000010D6,0x0000104B,0x00000FC5,0x00000F45,0x00000EC9,0x00000E52,0x00000DDF
	.dw 0x00000D70,0x00000D06,0x00000C9F,0x00000C3C,0x00000BDC,0x00000B80,0x00000B27,0x00000AD1
	.dw 0x00000A7E,0x00000A2E,0x000009E1,0x00000996,0x0000094E,0x00000909,0x000008C5,0x00000885
	.dw 0x00000846,0x00000809,0x000007CF,0x00000796,0x0000075F,0x0000072A,0x000006F7,0x000006C6
	.dw 0x00000696,0x00000668,0x0000063B,0x00000610,0x000005E6,0x000005BD,0x00000596,0x00000570
	.dw 0x0000054B,0x00000527,0x00000505,0x000004E3,0x000004C3,0x000004A3,0x00000485,0x00000467
	.dw 0x0000044B,0x0000042F,0x00000414,0x000003FA,0x000003E0
	.align 4
_g_FDKPercentTable.6:
	.dw 0x00000855,0x000008B3,0x00000937,0x0000096B,0x00000989,0x0000099F,0x000009AD,0x000009B9
	.dw 0x000009C4,0x000009CE,0x000009D4,0x000009DD,0x000009E2,0x000009E4,0x000009EE,0x000009F3
	.dw 0x000009F8,0x000009FE,0x00000A03,0x00000A09,0x00000A0F,0x00000A16,0x00000A1C,0x00000A23
	.dw 0x00000A24,0x00000A31,0x00000A4F,0x00000A61,0x00000A77,0x00000A94,0x00000AB9,0x00000AF0
	.align 4
_g_XYSRPercentTable.7:
	.dw 0x00000C1C,0x00000D1E,0x00000D49,0x00000DA6,0x00000DCD,0x00000DE8,0x00000E02,0x00000E16
	.dw 0x00000E28,0x00000E35,0x00000E42,0x00000E4C,0x00000E56,0x00000E60,0x00000E68,0x00000E72
	.dw 0x00000E7A,0x00000E81,0x00000E89,0x00000E92,0x00000E9A,0x00000E9B,0x00000EA2,0x00000EB0
	.dw 0x00000EB1,0x00000EB8,0x00000EB9,0x00000EBF,0x00000EC3,0x00000ED3,0x00000ED9,0x00000EE7
	.dw 0x00000EF0,0x00000EFD,0x00000F0E,0x00000F24,0x00000F46,0x00000F64,0x00000F96,0x00000FBE
	.dw 0x00001004,0x00001068
	.section .data, data
	.align 2
_g_batterySdkTimerHandle.8:
	.dhw 0xFFFF
	.align 4
_g_BatteryConfigure.9:
	.ds (4)
	.align 4
_g_batteryTemperature.10:
	.ds (4)
	.align 4
_g_batteryVoltage.11:
	.ds (4)
_g_sleepState.12:
	.ds (1)
	.align 2
_g_cycleTime.13:
	.dhw 0x000A
_g_getTempSuccessFlag.14:
	.ds (1)
_g_getVolSuccessFlag.15:
	.ds (1)
	.align 2
_g_adGetDelayTimeCount.16:
	.ds (2)
_g_adGetStateFlag.17:
	.ds (1)
	.align 4
_g_batteryState.18:
	.ds (4)
_g_testModeFlag.19:
	.ds (1)
	.align 4
_g_mutexHandle.20:
	.ds (4)
_g_batteryConnectFlag.21:
	.db 0x01
	.align 4
_g_batteryTpye.22:
	.dw 0x00000001
_g_batteryTempAlarmFlag.23:
	.ds (1)
