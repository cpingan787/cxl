#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\hal\source\timerHal.c -oDefaultBuild\timerHal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d62c752867e9427e92591a07f49eddaa1zjfcbiq.p2w
#@	compiled at Fri Mar 27 09:51:06 2026

	.file "..\..\Srcode\hal\source\timerHal.c"

	$reg_mode 32
	.dbl_size 8

	.public _TimerHalInterruptCallback
	.public _RtcInit
	.extern _I2cReadRegisterValue
	.extern _LogHalPrint
	.public _TimerHalInit
	.extern _R_RIIC0_Create
	.extern _R_RIIC0_Start
	.public _TimerHalOpen
	.public _TimerHalStartTime
	.public _TimerHalStopTime
	.public _TimerHalIsTimeout
	.public _TimerHalGetRemainder
	.public _RtcToTimestamp
	.public _TimestampToRtcRegisters
	.public _TimerHalSetRtcTime
	.extern _I2cWriteRegisterValue
	.public _TimerHalGetRtcTime
	.public _TimerHalPrepareSleep
	.public _TimerHalGetSleepDuration
	.public _TimerHalGetRtcStatus
	.public _TimerHalClearRtcAlarmFlag
	.public _TimerHalSetMode
	.public _TimerHalTestMain

	.section .text, text
_TimerHalInterruptCallback:
	.stack _TimerHalInterruptCallback = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 60
	mov 0x00000000, r2
	br9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 66
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_g_peripheralTimer.1, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 68
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_g_peripheralTimer.1, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000004[r6]
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	add 0x00000001, r2
.BB.LABEL.1_4:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 64
	andi 0x000000FF, r2, r5
	cmp 0x00000002, r5
	blt9 .BB.LABEL.1_1
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 81
	jmp [r31]
_RtcInit:
	.stack _RtcInit = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 83
	prepare 0x00000061, 0x0000002C
	movea 0x00000014, r0, r2
	mov 0x00000000, r5
	movea 0x00000018, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 86
	add r6, r2
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.2_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; entry
	st.b r0, 0x00000018[r3]
	movea 0x00000064, r0, r20
.BB.LABEL.2_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	movea 0xFFFFFFB2, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 93
	st.b r2, 0x00000017[r3]
	mov 0x00000008, r9
	movea 0x00000018, r3, r8
	movea 0x00000017, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 94
	jarl _I2cReadRegisterValue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 95
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 97
	ld.bu 0x0000001F[r3], r2
	ld.bu 0x0000001E[r3], r5
	ld.bu 0x0000001D[r3], r6
	ld.bu 0x0000001C[r3], r10
	ld.bu 0x0000001B[r3], r11
	ld.bu 0x0000001A[r3], r9
	ld.bu 0x00000019[r3], r8
	ld.bu 0x00000018[r3], r7
	st.w r2, 0x00000010[r3]
	st.w r5, 0x0000000C[r3]
	st.w r6, 0x00000008[r3]
	st.w r10, 0x00000004[r3]
	st.w r11, 0x00000000[r3]
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
.BB.LABEL.2_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 112
	cmp 0x00000000, r21
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 91
	addi 0xFFFFFFFF, r20, r2
	andi 0x000000FF, r20, r0
	mov r2, r20
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_8:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 118
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 120
	mov #.STR.189, r6
	jarl _LogHalPrint, r31
.BB.LABEL.2_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 122
	dispose 0x0000002C, 0x00000061, [r31]
_TimerHalInit:
	.stack _TimerHalInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 132
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 134
	jarl _R_RIIC0_Create, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 135
	jarl _R_RIIC0_Start, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 136
	jarl _RtcInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_TimerHalOpen:
	.stack _TimerHalOpen = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 152
	ei
	mov 0x00000000, r10
	br9 .BB.LABEL.4_4
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 155
	mov r10, r2
	sxh r2
	shl 0x00000003, r2
	mov #_g_peripheralTimer.1, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 157
	mov r10, r2
	sxh r2
	shl 0x00000003, r2
	mov #_g_peripheralTimer.1, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000000[r5]
	br9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	add 0x00000001, r10
.BB.LABEL.4_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 153
	mov r10, r2
	sxh r2
	cmp 0x00000002, r2
	blt9 .BB.LABEL.4_1
.BB.LABEL.4_5:	; bb18.bb25_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	ori 0x0000FFFF, r0, r10
.BB.LABEL.4_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 162
	ei
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 165
	sxh r10
	jmp [r31]
_TimerHalStartTime:
	.stack _TimerHalStartTime = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 177
	andi 0x0000FFFF, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 179
	cmp 0x00000001, r2
	bh9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 187
	di
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 188
	shl 0x00000003, r6
	mov #_g_peripheralTimer.1, r2
	add r6, r2
	st.w r7, 0x00000004[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 189
	st.b r5, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 190
	ei
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 191
	jmp [r31]
.BB.LABEL.5_2:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 192
	jmp [r31]
_TimerHalStopTime:
	.stack _TimerHalStopTime = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 203
	andi 0x0000FFFF, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 205
	cmp 0x00000001, r2
	bh9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 213
	di
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 214
	shl 0x00000003, r6
	mov #_g_peripheralTimer.1, r2
	add r6, r2
	st.b r0, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 215
	ei
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 216
	jmp [r31]
.BB.LABEL.6_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 217
	jmp [r31]
_TimerHalIsTimeout:
	.stack _TimerHalIsTimeout = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 228
	andi 0x0000FFFF, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 232
	cmp 0x00000002, r2
	bl9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.bb42_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.7_6
.BB.LABEL.7_2:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 241
	di
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 242
	shl 0x00000003, r6
	mov #_g_peripheralTimer.1, r2
	add r6, r2
	ld.bu 0x00000001[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 243
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 244
	ei
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 246
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_break_bb15.bb42_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	ori 0x0000FFFE, r0, r10
	br9 .BB.LABEL.7_6
.BB.LABEL.7_4:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 250
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_5:	; if_break_bb33.bb42_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000001, r10
.BB.LABEL.7_6:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 258
	sxh r10
	jmp [r31]
.BB.LABEL.7_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 256
	jmp [r31]
_TimerHalGetRemainder:
	.stack _TimerHalGetRemainder = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 269
	andi 0x0000FFFF, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 273
	cmp 0x00000001, r2
	bh9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 282
	di
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 283
	shl 0x00000003, r6
	mov #_g_peripheralTimer.1, r2
	add r6, r2
	ld.bu 0x00000001[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 284
	ld.w 0x00000004[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 285
	ei
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 287
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 291
	jmp [r31]
.BB.LABEL.8_3:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 299
	jmp [r31]
_bcd2dec.1:
	.stack _bcd2dec.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 306
	andi 0x0000000F, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 308
	shr 0x00000004, r6
	mulh 0x0000000A, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 309
	andi 0x000000FF, r6, r10
	jmp [r31]
_IsLeapYear.1:
	.stack _IsLeapYear.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 316
	movea 0x00000190, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 318
	mov r6, r5
	divhu r2, r5, r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	andi 0x00000003, r6, r0
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; bb11
	movea 0x00000064, r0, r2
	divhu r2, r6, r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; bb24
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 319
	jmp [r31]
.BB.LABEL.10_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 319
	jmp [r31]
_RtcToTimestamp:
	.stack _RtcToTimestamp = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 332
	prepare 0x000007F9, 0x0000000C
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 336
	jarl _bcd2dec.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 337
	mov r20, r6
	jarl _bcd2dec.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 338
	mov r21, r6
	jarl _bcd2dec.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 339
	mov r22, r6
	jarl _bcd2dec.1, r31
	mov r10, r22
	ld.w 0x00000030[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 340
	jarl _bcd2dec.1, r31
	mov r10, r24
	ld.w 0x00000034[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 341
	jarl _bcd2dec.1, r31
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 344
	mov #.STR.1241, r5
	mov r3, r6
	add r6, r2
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.11_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 336
	movea 0x000007D0, r23, r23
	movea 0x000007B2, r0, r25
	mov 0x00000000, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 349
	mov r10, r27
	br9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 350
	andi 0x0000FFFF, r25, r6
	jarl _IsLeapYear.1, r31
	cmp 0x00000000, r10
	movea 0x0000016E, r0, r2
	movea 0x0000016D, r0, r5
	cmov 0x00000002, r5, r2, r2
	add r2, r26
	add 0x00000001, r25
.BB.LABEL.11_5:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 349
	andi 0x0000FFFF, r25, r2
	andi 0x0000FFFF, r23, r5
	cmp r5, r2
	bl9 .BB.LABEL.11_4
.BB.LABEL.11_6:	; bb45.bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.11_11
.BB.LABEL.11_7:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 355
	andi 0x000000FF, r25, r2
	mov r3, r5
	add r2, r5
	ld.bu 0xFFFFFFFF[r5], r5
	add r5, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 356
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_8:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	andi 0x0000FFFF, r23, r6
	jarl _IsLeapYear.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 357
	add 0x00000001, r26
.BB.LABEL.11_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	add 0x00000001, r25
.BB.LABEL.11_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 354
	andi 0x000000FF, r25, r2
	cmp r20, r2
	bl9 .BB.LABEL.11_7
.BB.LABEL.11_12:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 362
	add r26, r21
	mov 0x00015180, r2
	mul r2, r21, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 365
	mulhi 0x00000E10, r22, r2
	add r2, r21
	mulhi 0x0000003C, r24, r2
	add r2, r21
	add r27, r21
	mov 0xFFFEAE80, r2
	mov r21, r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 371
	dispose 0x0000000C, 0x000007F9, [r31]
_dec2bcd.1:
	.stack _dec2bcd.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 378
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 379
	divhu r2, r6, r2
	shl 0x00000004, r6
	or r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 380
	andi 0x000000FF, r6, r10
	jmp [r31]
_TimerHalWeekdayToRtcMask.1:
	.stack _TimerHalWeekdayToRtcMask.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 404
	add 0x00000004, r6
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 412
	divhu r2, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 414
	add 0xFFFFFFFF, r6
	cmp 0x00000005, r6
	bh9 .BB.LABEL.13_8
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.13_9[r6]
.SWITCH.LABEL.13_9:
	br9 .BB.LABEL.13_2
	br9 .BB.LABEL.13_3
	br9 .BB.LABEL.13_4
	br9 .BB.LABEL.13_5
	br9 .BB.LABEL.13_6
	br9 .BB.LABEL.13_7
.SWITCH.LABEL.13_9.END:
.BB.LABEL.13_2:	; switch_clause_bb9
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 417
	jmp [r31]
.BB.LABEL.13_3:	; switch_clause_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 418
	jmp [r31]
.BB.LABEL.13_4:	; switch_clause_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 419
	jmp [r31]
.BB.LABEL.13_5:	; switch_clause_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 420
	jmp [r31]
.BB.LABEL.13_6:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	movea 0x00000020, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 421
	jmp [r31]
.BB.LABEL.13_7:	; switch_clause_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	movea 0x00000040, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 422
	jmp [r31]
.BB.LABEL.13_8:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 425
	jmp [r31]
_TimestampToRtcRegisters:
	.stack _TimestampToRtcRegisters = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 435
	prepare 0x00000779, 0x0000000C
	mov 0x00015180, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 436
	mov r6, r20
	divu r2, r20, r21
	movea 0x000007B2, r0, r22
	mov r7, r23
	mov r6, r24
	br9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 449
	andi 0x0000016F, r2, r2
	sub r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 450
	add 0x00000001, r22
.BB.LABEL.14_2:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 447
	andi 0x0000FFFF, r22, r6
	jarl _IsLeapYear.1, r31
	cmp 0x00000000, r10
	movea 0x0000016E, r0, r2
	movea 0x0000016D, r0, r5
	cmov 0x00000002, r5, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 448
	cmp r2, r20
	bnc9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 454
	mov #.STR.1306, r5
	mov r3, r6
	add r6, r2
	br9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; bb41
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.14_5:	; bb41
	cmp r6, r2
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_6:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 456
	andi 0x0000FFFF, r22, r6
	jarl _IsLeapYear.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; bb41.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.14_10
.BB.LABEL.14_8:	; if_then_bb48
	movea 0x0000001D, r0, r25
	st.b r25, 0x00000001[r3]
	mov 0x00000001, r25
	br9 .BB.LABEL.14_10
.BB.LABEL.14_9:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 460
	ld.bu 0x00000000[r2], r2
	sub r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 461
	add 0x00000001, r25
.BB.LABEL.14_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 459
	andi 0x000000FF, r25, r2
	mov r3, r5
	add r5, r2
	ld.bu 0xFFFFFFFF[r2], r5
	add 0xFFFFFFFF, r2
	cmp r5, r20
	bnc9 .BB.LABEL.14_9
.BB.LABEL.14_11:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	movea 0x00000E10, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 466
	divhu r2, r21, r26
	movea 0x0000003C, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 468
	divhu r2, r26, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 472
	jarl _dec2bcd.1, r31
	st.b r10, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 473
	mov r26, r6
	jarl _dec2bcd.1, r31
	st.b r10, 0x00000001[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 474
	andi 0x000000FF, r21, r6
	jarl _dec2bcd.1, r31
	st.b r10, 0x00000002[r23]
	mov 0x00015180, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 475
	mov r24, r6
	divu r2, r6, r0
	jarl _TimerHalWeekdayToRtcMask.1, r31
	st.b r10, 0x00000003[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 463
	add 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 476
	andi 0x000000FF, r20, r6
	jarl _dec2bcd.1, r31
	st.b r10, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 477
	andi 0x000000FF, r25, r6
	jarl _dec2bcd.1, r31
	st.b r10, 0x00000005[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 478
	movea 0x00000030, r22, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 479
	zxb r6
	jarl _dec2bcd.1, r31
	st.b r10, 0x00000006[r23]
	dispose 0x0000000C, 0x00000779, [r31]
_TimerHalSetRtcTime:
	.stack _TimerHalSetRtcTime = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 490
	prepare 0x00000061, 0x0000002C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 496
	st.b r0, 0x0000002B[r3]
	st.b r0, 0x0000002A[r3]
	st.b r0, 0x00000029[r3]
	st.b r0, 0x00000028[r3]
	st.b r0, 0x00000027[r3]
	st.b r0, 0x00000026[r3]
	st.b r0, 0x00000025[r3]
	st.b r0, 0x00000025[r3]
	movea 0x00000011, r3, r20
	movea 0x00000014, r0, r2
	mov 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 497
	add r20, r2
	mov r20, r7
	br9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry
	st.b r5, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.15_2:	; entry
	cmp r7, r2
	bnz9 .BB.LABEL.15_1
.BB.LABEL.15_3:	; entry
	st.b r0, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 499
	st.b r0, 0x00000010[r3]
	movea 0x00000025, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 502
	mov r21, r7
	jarl _TimestampToRtcRegisters, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 505
	ld.bu 0x00000025[r3], r2
	ld.bu 0x00000026[r3], r5
	ld.bu 0x00000027[r3], r6
	ld.bu 0x00000028[r3], r10
	ld.bu 0x00000029[r3], r9
	ld.bu 0x0000002A[r3], r8
	ld.bu 0x0000002B[r3], r7
	st.w r2, 0x0000000C[r3]
	st.w r5, 0x00000008[r3]
	st.w r6, 0x00000004[r3]
	st.w r10, 0x00000000[r3]
	mov #.STR.1333, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 509
	ld.b 0x00000000[r21], r2
	st.b r2, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 510
	ld.b 0x00000001[r21], r2
	st.b r2, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 511
	ld.b 0x00000002[r21], r2
	st.b r2, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 512
	ld.b 0x00000003[r21], r2
	st.b r2, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 513
	ld.b 0x00000004[r21], r2
	st.b r2, 0x00000015[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 514
	ld.b 0x00000005[r21], r2
	st.b r2, 0x00000016[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 515
	ld.b 0x00000006[r21], r2
	st.b r2, 0x00000017[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 516
	st.b r0, 0x00000010[r3]
	mov 0x00000007, r9
	movea 0x00000010, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 517
	mov r20, r8
	jarl _I2cWriteRegisterValue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 523
	dispose 0x0000002C, 0x00000061, [r31]
_TimerHalGetRtcTime:
	.stack _TimerHalGetRtcTime = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 533
	prepare 0x00000061, 0x00000020
	mov r6, r20
	movea 0x0000000C, r3, r8
	movea 0x00000014, r0, r2
	mov 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 538
	add r8, r2
	mov r8, r6
	br9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.16_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.16_1
.BB.LABEL.16_3:	; entry
	st.b r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 542
	st.b r0, 0x0000000B[r3]
	mov 0x00000007, r9
	movea 0x0000000B, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 543
	jarl _I2cReadRegisterValue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 544
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 546
	mov #.STR.1353, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 547
	mov r21, r10
	dispose 0x00000020, 0x00000061, [r31]
.BB.LABEL.16_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 549
	ld.bu 0x0000000C[r3], r2
	ld.bu 0x0000000D[r3], r5
	ld.bu 0x0000000E[r3], r9
	ld.bu 0x00000010[r3], r8
	ld.bu 0x00000011[r3], r7
	ld.bu 0x00000012[r3], r6
	st.w r2, 0x00000004[r3]
	st.w r5, 0x00000000[r3]
	jarl _RtcToTimestamp, r31
	st.w r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 550
	dispose 0x00000020, 0x00000061, [r31]
_TimerHalConfigDateAlarm.1:
	.stack _TimerHalConfigDateAlarm.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 553
	prepare 0x00000001, 0x00000010
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 555
	st.b r0, 0x0000000F[r3]
	st.b r0, 0x0000000E[r3]
	st.b r0, 0x0000000D[r3]
	st.b r0, 0x0000000C[r3]
	st.b r0, 0x0000000B[r3]
	st.b r0, 0x0000000A[r3]
	st.b r0, 0x00000009[r3]
	st.b r0, 0x00000009[r3]
	movea 0x00000009, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 561
	jarl _TimestampToRtcRegisters, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 564
	ld.bu 0x0000000A[r3], r2
	andi 0x0000007F, r2, r2
	st.b r2, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 567
	ld.bu 0x0000000B[r3], r2
	andi 0x0000007F, r2, r2
	st.b r2, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 570
	ld.bu 0x0000000D[r3], r2
	andi 0x0000007F, r2, r2
	st.b r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 573
	jarl _TimerHalClearRtcAlarmFlag, r31
	mov 0x0000000D, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 576
	st.b r2, 0x00000005[r3]
	mov 0x00000001, r9
	movea 0x00000004, r3, r8
	movea 0x00000005, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 577
	jarl _I2cReadRegisterValue, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 579
	mov #.STR.1382, r6
	br9 .BB.LABEL.17_8
.BB.LABEL.17_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 582
	set1 0x00000006, 0x00000004[r3]
	mov 0x0000000D, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 583
	st.b r2, 0x00000005[r3]
	mov 0x00000001, r9
	movea 0x00000004, r3, r8
	movea 0x00000005, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 584
	jarl _I2cWriteRegisterValue, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 586
	mov #.STR.1383, r6
	br9 .BB.LABEL.17_8
.BB.LABEL.17_4:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 591
	st.b r2, 0x00000005[r3]
	mov 0x00000003, r9
	movea 0x00000006, r3, r8
	movea 0x00000005, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 592
	jarl _I2cWriteRegisterValue, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_6
.BB.LABEL.17_5:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 594
	mov #.STR.1384, r6
	br9 .BB.LABEL.17_8
.BB.LABEL.17_6:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x0000000F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 599
	st.b r2, 0x00000005[r3]
	mov 0x00000001, r9
	movea 0x00000003, r3, r8
	movea 0x00000005, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 600
	jarl _I2cReadRegisterValue, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_9
.BB.LABEL.17_7:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 602
	mov #.STR.1385, r6
.BB.LABEL.17_8:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	jarl _LogHalPrint, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 614
	dispose 0x00000010, 0x00000001, [r31]
.BB.LABEL.17_9:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 605
	set1 0x00000003, 0x00000003[r3]
	mov 0x0000000F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 606
	st.b r2, 0x00000005[r3]
	mov 0x00000001, r9
	movea 0x00000003, r3, r8
	movea 0x00000005, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 607
	jarl _I2cWriteRegisterValue, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_11
.BB.LABEL.17_10:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 609
	mov #.STR.1386, r6
	br9 .BB.LABEL.17_8
.BB.LABEL.17_11:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 614
	dispose 0x00000010, 0x00000001, [r31]
_TimerHalPrepareSleep:
	.stack _TimerHalPrepareSleep = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 616
	prepare 0x00000061, 0x00000004
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 621
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 626
	jarl _TimerHalGetRtcTime, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 628
	mov #.STR.1402, r6
	jarl _LogHalPrint, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 629
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.18_3:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 632
	ld.w 0x00000000[r3], r2
	movhi HIGHW1(#_g_sleepStartUtc.2), r0, r5
	st.w r2, LOWW(#_g_sleepStartUtc.2)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 633
	ld.w 0x00000000[r3], r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 635
	mov r21, r6
	jarl _TimerHalConfigDateAlarm.1, r31
	mov r20, r8
	mov r21, r9
	cmp 0x00000000, r10
	ld.w 0x00000000[r3], r7
	bz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 637
	mov #.STR.1403, r6
	jarl _LogHalPrint, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 641
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.18_5:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 644
	mov #.STR.1404, r6
	jarl _LogHalPrint, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 649
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.18_6:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 650
	dispose 0x00000004, 0x00000061, [r31]
_TimerHalGetSleepDuration:
	.stack _TimerHalGetSleepDuration = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 652
	prepare 0x00000001, 0x00000004
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 656
	jarl _TimerHalGetRtcTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 658
	movhi HIGHW1(#_g_sleepStartUtc.2), r0, r2
	ld.w LOWW(#_g_sleepStartUtc.2)[r2], r2
	ld.w 0x00000000[r3], r10
	cmp r2, r10
	bl9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 661
	sub r2, r10
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.19_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 662
	dispose 0x00000004, 0x00000001, [r31]
_TimerHalGetRtcStatus:
	.stack _TimerHalGetRtcStatus = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 664
	prepare 0x00000001, 0x00000004
	mov 0x0000000E, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 667
	st.b r2, 0x00000002[r3]
	mov 0x00000001, r9
	movea 0x00000003, r3, r8
	movea 0x00000002, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 669
	jarl _I2cReadRegisterValue, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 674
	ld.b 0x00000000[r2], r2
	shr 0x00000003, r2
	andi 0x00000001, r2, r10
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.20_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 675
	dispose 0x00000004, 0x00000001, [r31]
_TimerHalClearRtcAlarmFlag:
	.stack _TimerHalClearRtcAlarmFlag = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 677
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 679
	st.b r0, 0x00000003[r3]
	mov 0x0000000E, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 680
	st.b r2, 0x00000002[r3]
	mov 0x00000001, r9
	movea 0x00000003, r3, r8
	movea 0x00000002, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 682
	jarl _I2cReadRegisterValue, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 684
	mov #.STR.1434, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 685
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.21_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 688
	clr1 0x00000003, 0x00000003[r3]
	mov 0x0000000E, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 690
	st.b r2, 0x00000002[r3]
	mov 0x00000001, r9
	movea 0x00000003, r3, r8
	movea 0x00000002, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 691
	jarl _I2cWriteRegisterValue, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 693
	mov #.STR.1435, r6
	jarl _LogHalPrint, r31
.BB.LABEL.21_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 695
	dispose 0x00000004, 0x00000001, [r31]
_TimerHalSetMode:
	.stack _TimerHalSetMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 697
	jmp [r31]
_TimerHalTestMain:
	.stack _TimerHalTestMain = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 711
	prepare 0x00000001, 0x00000028
	movea 0x00000014, r0, r2
	mov 0x00000000, r5
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 714
	add r7, r2
	br9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; entry
	st.b r5, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.23_2:	; entry
	cmp r7, r2
	bnz9 .BB.LABEL.23_1
.BB.LABEL.23_3:	; entry
	st.b r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 715
	st.b r0, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 720
	movhi HIGHW1(#_count.3.TimerHalTestMain), r0, r2
	ld.hu LOWW(#_count.3.TimerHalTestMain)[r2], r5
	addi 0x00000001, r5, r7
	st.h r7, LOWW(#_count.3.TimerHalTestMain)[r2]
	movea 0x00001388, r0, r2
	divhu r6, r2, r0
	cmp r2, r5
	blt9 .BB.LABEL.23_7
.BB.LABEL.23_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 724
	movhi HIGHW1(#_count.3.TimerHalTestMain), r0, r2
	st.h r0, LOWW(#_count.3.TimerHalTestMain)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 728
	mov #.STR.1474, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 729
	st.b r0, 0x00000013[r3]
	mov 0x00000007, r9
	movea 0x00000014, r3, r8
	movea 0x00000013, r3, r7
	movea 0x00000032, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 730
	jarl _I2cReadRegisterValue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 731
	cmp 0x00000000, r10
	bz9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 733
	mov #.STR.1475, r6
	jarl _LogHalPrint, r31
.BB.LABEL.23_6:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 735
	ld.bu 0x00000014[r3], r2
	ld.bu 0x00000015[r3], r5
	ld.bu 0x00000016[r3], r6
	ld.bu 0x00000017[r3], r10
	ld.bu 0x00000018[r3], r9
	ld.bu 0x00000019[r3], r8
	ld.bu 0x0000001A[r3], r7
	st.w r2, 0x0000000C[r3]
	st.w r5, 0x00000008[r3]
	st.w r6, 0x00000004[r3]
	st.w r10, 0x00000000[r3]
	mov #.STR.1476, r6
	jarl _LogHalPrint, r31
.BB.LABEL.23_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/timerHal.c", 763
	dispose 0x00000028, 0x00000001, [r31]
	.section .bss, bss
	.align 4
_g_peripheralTimer.1:
	.ds (16)
	.section .data, data
	.align 4
_g_sleepStartUtc.2:
	.ds (4)
	.align 2
_count.3.TimerHalTestMain:
	.ds (2)
_setAlarmFlag.4.TimerHalTestMain:
	.ds (1)
	.section .const, const
.STR.1:
	.db 0x72,0x74,0x63,0x20,0x72,0x65,0x61,0x64,0x20,0x49,0x44,0x2C,0x20,0x72,0x65,0x67
	.db 0x20,0x76,0x61,0x6C,0x75,0x65,0x20,0x3D,0x20,0x25,0x30,0x32,0x58,0x2D,0x25,0x30
	.db 0x32,0x58,0x2D,0x25,0x30,0x32,0x58,0x2C,0x20,0x25,0x30,0x32,0x58,0x2C,0x20,0x25
	.db 0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58,0x2C,0x20,0x25,0x30,0x32,0x58,0x20,0x25
	.db 0x30,0x32,0x58,0x0D,0x0A
	.ds (1)
.STR.189:
	.db 0x72,0x74,0x63,0x20,0x69,0x6E,0x69,0x74,0x20,0x66,0x61,0x69,0x6C,0x0D,0x0A
	.ds (1)
.STR.1241:
	.db 0x1F,0x1C,0x1F,0x1E,0x1F,0x1E,0x1F,0x1F,0x1E,0x1F,0x1E,0x1F
.STR.1306:
	.db 0x1F,0x1C,0x1F,0x1E,0x1F,0x1E,0x1F,0x1F,0x1E,0x1F,0x1E,0x1F
.STR.1333:
	.db 0x72,0x65,0x67,0x73,0x20,0x3D,0x20,0x25,0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58
	.db 0x20,0x25,0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58,0x20
	.db 0x25,0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58,0x0A
	.ds (1)
.STR.1353:
	.db 0x72,0x74,0x63,0x20,0x72,0x65,0x61,0x64,0x20,0x74,0x69,0x6D,0x65,0x20,0x66,0x61
	.db 0x69,0x6C,0x0D,0x0A
	.ds (1)
.STR.1382:
	.db 0x72,0x65,0x61,0x64,0x20,0x43,0x54,0x52,0x31,0x20,0x66,0x61,0x69,0x6C,0x0D,0x0A
	.ds (1)
.STR.1383:
	.db 0x77,0x72,0x69,0x74,0x65,0x20,0x43,0x54,0x52,0x31,0x20,0x66,0x61,0x69,0x6C,0x0D
	.db 0x0A
	.ds (1)
.STR.1384:
	.db 0x77,0x72,0x69,0x74,0x65,0x20,0x61,0x6C,0x61,0x72,0x6D,0x20,0x74,0x69,0x6D,0x65
	.db 0x20,0x66,0x61,0x69,0x6C,0x0D,0x0A
	.ds (1)
.STR.1385:
	.db 0x72,0x65,0x61,0x64,0x20,0x43,0x54,0x52,0x32,0x20,0x66,0x61,0x69,0x6C,0x0D,0x0A
	.ds (1)
.STR.1386:
	.db 0x77,0x72,0x69,0x74,0x65,0x20,0x43,0x54,0x52,0x32,0x20,0x66,0x61,0x69,0x6C,0x0D
	.db 0x0A
	.ds (1)
.STR.1402:
	.db 0x67,0x65,0x74,0x20,0x72,0x74,0x63,0x20,0x74,0x69,0x6D,0x65,0x20,0x66,0x61,0x69
	.db 0x6C,0x0D,0x0A
	.ds (1)
.STR.1403:
	.db 0x70,0x72,0x65,0x70,0x61,0x72,0x65,0x20,0x73,0x6C,0x65,0x65,0x70,0x20,0x61,0x6C
	.db 0x61,0x72,0x6D,0x20,0x66,0x61,0x69,0x6C,0x2C,0x20,0x6E,0x6F,0x77,0x3D,0x25,0x6C
	.db 0x75,0x20,0x73,0x6C,0x65,0x65,0x70,0x3D,0x25,0x6C,0x75,0x20,0x61,0x6C,0x61,0x72
	.db 0x6D,0x3D,0x25,0x6C,0x75,0x0D,0x0A
	.ds (1)
.STR.1404:
	.db 0x70,0x72,0x65,0x70,0x61,0x72,0x65,0x20,0x73,0x6C,0x65,0x65,0x70,0x20,0x6F,0x6B
	.db 0x2C,0x20,0x6E,0x6F,0x77,0x3D,0x25,0x6C,0x75,0x20,0x73,0x6C,0x65,0x65,0x70,0x3D
	.db 0x25,0x6C,0x75,0x20,0x61,0x6C,0x61,0x72,0x6D,0x3D,0x25,0x6C,0x75,0x0D,0x0A
	.ds (1)
.STR.1434:
	.db 0x72,0x65,0x61,0x64,0x20,0x46,0x4C,0x41,0x47,0x31,0x20,0x66,0x61,0x69,0x6C,0x0D
	.db 0x0A
	.ds (1)
.STR.1435:
	.db 0x63,0x6C,0x65,0x61,0x72,0x20,0x49,0x4E,0x54,0x41,0x46,0x20,0x66,0x61,0x69,0x6C
	.db 0x0D,0x0A
	.ds (1)
.STR.1474:
	.db 0x72,0x74,0x63,0x20,0x72,0x65,0x61,0x64,0x20,0x74,0x69,0x6D,0x65,0x2C,0x20
	.ds (1)
.STR.1475:
	.db 0x72,0x74,0x63,0x20,0x72,0x65,0x61,0x64,0x20,0x74,0x69,0x6D,0x65,0x20,0x66,0x61
	.db 0x69,0x6C,0x0D,0x0A
	.ds (1)
.STR.1476:
	.db 0x72,0x65,0x67,0x20,0x76,0x61,0x6C,0x75,0x65,0x20,0x3D,0x20,0x25,0x30,0x32,0x58
	.db 0x2D,0x25,0x30,0x32,0x58,0x2D,0x25,0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58,0x20
	.db 0x25,0x30,0x32,0x58,0x3A,0x25,0x30,0x32,0x58,0x3A,0x25,0x30,0x32,0x58,0x0D,0x0A
	.ds (1)
