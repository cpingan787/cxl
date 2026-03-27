#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\power_manage\taskPowerManage.c -oDefaultBuild\taskPowerManage.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_cdfc8a79d04b4a0b8e192324172eed52z3yictm5.z5t
#@	compiled at Fri Mar 27 09:50:27 2026

	.file "..\..\Srcode\app\power_manage\taskPowerManage.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvMBlockRamBuffer46
	.extern _NvMBlockRamBuffer48
	.extern _NvM_MultiJob
	.public _g_eepromTest, 1
	.public _time, 4
	.public _g_batterConfig, 32
	.public _g_pmCondg, 16
	.extern _PeripheralHalAdGet
	.public _Diag_CheckUsgMdPrecondition1s
	.extern _Com_ReceiveSignal
	.extern _Dem_GetEventStatus
	.extern _Dem_SetEventStatus
	.public _ANT5G_DIV_DtcInit
	.public _ANT5G_DIV_DetectProcess_200ms
	.public _ANT5GMAIN_DtcInit
	.public _ANT5GMAIN_DetectProcess
	.public _kl30VoltageDTCProcess
	.public _GPS_DtcInit
	.public _GPS_DetectProcess_200ms
	.public _MICIN_DtcInit
	.public _MICIN_DetectProcess_2s
	.public _LED_DtcInit
	.public _LED_DetectProcess_200ms
	.public _BackupBat_DtcInit
	.public _BackupBat_DetectProcess_200ms
	.public _EepromDetect
	.extern _NvM_WriteBlock
	.extern _NvM_MainFunction
	.extern _Fee_MainFunction
	.extern _Fls_MainFunction
	.extern _NvM_ReadBlock
	.extern _CanNm_GetState
	.public _TripCounterDetect
	.public _GetTripCounterDetectEnable
	.public _SyncMsgLossDetect
	.public _SystemTimeMs
	.extern _Dem_GetDTCOfEvent
	.extern _Dem_DcmGetSeverityOfDTC
	.extern _Com_SendSignal
	.public _CheckDtcStatusAndSend709
	.public _GetRvcWakeupDelay
	.extern _MpuPowerSyncSdkGetMpuSubWakeUpSource
	.public _PmDebugPrint
	.extern _PowerManageSdkGetPowerInfo
	.extern _BatterySdkGetVoltage
	.extern _BatterySdkGetBatteySoc
	.public _TaskAntDetect100ms
	.public _TaskKl30Detect100ms
	.public _TaskPowerManageInit
	.extern _PowerManageSdkInit
	.extern _BatterySdkInit
	.extern _PowerManageSdkPowerOn
	.extern _MpuHalStart
	.public _TaskPowerManage
	.extern _PowerManageSdkCycleProcess
	.extern _PowerManageSdkForceWakeupMpu
	.extern _MpuHalCycleProcess
	.extern _BatterySdkCycleProcess
	.public _DtcGpioInit
	.extern _R_PORT_SetGpioOutput

	.section .text, text
_GetAverageAdValue.1:
	.stack _GetAverageAdValue.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 31
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 38
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	cmp 0x00000003, r7
	blt9 .BB.LABEL.1_10
.BB.LABEL.1_2:	; bb.bb64_crit_edge
	mov 0x00000000, r2
	mov 0xFFFFFFFF, r5
	mov r2, r8
	mov r2, r10
	br9 .BB.LABEL.1_8
.BB.LABEL.1_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 45
	andi 0x0000FFFF, r2, r9
	shl 0x00000002, r9
	add r6, r9
	ld.w 0x00000000[r9], r11
	cmp r11, r8
	bnc9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 47
	ld.w 0x00000000[r9], r8
.BB.LABEL.1_5:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 49
	ld.w 0x00000000[r9], r11
	cmp r11, r5
	bnh9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 51
	ld.w 0x00000000[r9], r5
.BB.LABEL.1_7:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 53
	ld.w 0x00000000[r9], r9
	add r9, r10
	add 0x00000001, r2
.BB.LABEL.1_8:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 43
	andi 0x0000FFFF, r2, r9
	cmp r7, r9
	bl9 .BB.LABEL.1_3
.BB.LABEL.1_9:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 55
	sub r8, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 56
	sub r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 57
	add 0xFFFFFFFE, r7
	divu r7, r10, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 58
	jmp [r31]
.BB.LABEL.1_10:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 59
	jmp [r31]
_kl30DetectProcess.1:
	.stack _kl30DetectProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 61
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 65
	st.w r0, 0x00000000[r3]
	mov r3, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 66
	jarl _PeripheralHalAdGet, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 68
	movhi HIGHW1(#_adcCount.55.kl30DetectProcess.1), r0, r2
	ld.bu LOWW(#_adcCount.55.kl30DetectProcess.1)[r2], r5
	shl 0x00000002, r5
	mov #_adcValueBuffer.56.kl30DetectProcess.1, r6
	add r5, r6
	ld.w 0x00000000[r3], r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 69
	ld.b LOWW(#_adcCount.55.kl30DetectProcess.1)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_adcCount.55.kl30DetectProcess.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 70
	zxb r5
	cmp 0x00000005, r5
	bl9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 72
	movhi HIGHW1(#_adcCount.55.kl30DetectProcess.1), r0, r2
	st.b r0, LOWW(#_adcCount.55.kl30DetectProcess.1)[r2]
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 73
	mov #_adcValueBuffer.56.kl30DetectProcess.1, r6
	jarl _GetAverageAdValue.1, r31
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	st.h r10, LOWW(#_g_PowerVoltage.1)[r2]
.BB.LABEL.2_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 77
	dispose 0x00000004, 0x00000001, [r31]
_Diag_IsUsgMdRawConditionOk.1:
	.stack _Diag_IsUsgMdRawConditionOk.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 101
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 165
	jmp [r31]
_Diag_CheckUsgMdPrecondition1s:
	.stack _Diag_CheckUsgMdPrecondition1s = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 167
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r6, r20
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 176
	jarl _Diag_IsUsgMdRawConditionOk.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 178
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 180
	ld.bu 0x00000000[r20], r2
	cmp 0x00000005, r2
	bnc9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 182
	add 0x00000001, r2
	st.b r2, 0x00000000[r20]
	br9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 187
	st.b r0, 0x00000000[r20]
	mov 0x00000000, r2
.BB.LABEL.4_5:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 195
	zxb r2
	cmp 0x00000005, r2
	bl9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_break_bb25.bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_break_bb34
	mov 0x00000000, r10
.BB.LABEL.4_8:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 201
	dispose 0x00000000, 0x00000041, [r31]
_ISEPTStCmdOff.1:
	.stack _ISEPTStCmdOff.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 274
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 276
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	movea 0x000001FD, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 278
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 280
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_break_bb
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 285
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.5_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 286
	dispose 0x00000004, 0x00000001, [r31]
_ANT_ReadVoltage.1:
	.stack _ANT_ReadVoltage.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 344
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 346
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 347
	zxb r6
	mov r3, r7
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 349
	ld.hu 0x00000000[r3], r10
	dispose 0x00000004, 0x00000001, [r31]
_ANT_ResetShortState.1:
	.stack _ANT_ResetShortState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 351
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 354
	st.b r0, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 355
	st.b r0, 0x00000004[r6]
	jmp [r31]
_ANT_ResetOpenState.1:
	.stack _ANT_ResetOpenState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 358
	st.b r0, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 361
	st.b r0, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 362
	st.b r0, 0x00000005[r6]
	jmp [r31]
_ANT_SyncStateWithDem.1:
	.stack _ANT_SyncStateWithDem.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 365
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 367
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 368
	ld.bu 0x00000004[r7], r2
	cmp 0x00000001, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 370
	ld.hu 0x00000000[r21], r6
	movea 0x00000003, r3, r7
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 372
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 374
	mov r20, r6
	jarl _ANT_ResetShortState.1, r31
.BB.LABEL.9_4:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 378
	ld.bu 0x00000005[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_5:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 380
	ld.hu 0x00000002[r21], r6
	movea 0x00000003, r3, r7
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_6:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 382
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 384
	mov r20, r6
	jarl _ANT_ResetOpenState.1, r31
.BB.LABEL.9_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 388
	dispose 0x00000004, 0x00000061, [r31]
_ANT_InitOneState.1:
	.stack _ANT_InitOneState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 390
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 393
	st.b r0, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 394
	st.b r0, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 395
	st.b r0, 0x00000003[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 396
	st.b r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 397
	st.b r0, 0x00000005[r6]
	jmp [r31]
_ANT_DetectOneProcess.1:
	.stack _ANT_DetectOneProcess.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 400
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 402
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 403
	jarl _ANT_SyncStateWithDem.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 404
	ld.bu 0x00000003[r21], r2
	cmp 0x00000004, r2
	bgt9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 406
	add 0x00000001, r2
	st.b r2, 0x00000003[r21]
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 408
	addi 0xFFFFDCD8, r23, r0
	blt17 .BB.LABEL.11_32
.BB.LABEL.11_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFC180, r23, r0
	bgt9 .BB.LABEL.11_32
.BB.LABEL.11_4:	; bb31
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.11_32
.BB.LABEL.11_5:	; bb43
	ld.bu 0x00000003[r21], r2
	cmp 0x00000005, r2
	blt9 .BB.LABEL.11_32
.BB.LABEL.11_6:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 413
	addi 0xFFFFFF39, r22, r0
	bgt9 .BB.LABEL.11_10
.BB.LABEL.11_7:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 415
	ld.bu 0x00000000[r21], r22
	addi 0xFFFFFFED, r22, r0
	bgt9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 417
	add 0x00000001, r22
	st.b r22, 0x00000000[r21]
.BB.LABEL.11_9:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	st.b r0, 0x00000001[r21]
	st.b r0, 0x00000002[r21]
	br9 .BB.LABEL.11_20
.BB.LABEL.11_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 423
	addi 0xFFFFFA24, r22, r0
	blt9 .BB.LABEL.11_15
.BB.LABEL.11_11:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFF894, r22, r0
	bgt9 .BB.LABEL.11_15
.BB.LABEL.11_12:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 425
	ld.bu 0x00000001[r21], r22
	addi 0xFFFFFFED, r22, r0
	bgt9 .BB.LABEL.11_14
.BB.LABEL.11_13:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 427
	add 0x00000001, r22
	st.b r22, 0x00000001[r21]
.BB.LABEL.11_14:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 430
	st.b r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 431
	st.b r0, 0x00000002[r21]
	br9 .BB.LABEL.11_20
.BB.LABEL.11_15:	; if_else_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 433
	addi 0xFFFFFF37, r22, r0
	blt9 .BB.LABEL.11_31
.BB.LABEL.11_16:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFFA25, r22, r0
	bgt9 .BB.LABEL.11_31
.BB.LABEL.11_17:	; if_then_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 435
	ld.bu 0x00000002[r21], r2
	addi 0xFFFFFFED, r2, r0
	bgt9 .BB.LABEL.11_19
.BB.LABEL.11_18:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 437
	add 0x00000001, r2
	st.b r2, 0x00000002[r21]
.BB.LABEL.11_19:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 440
	st.b r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 441
	st.b r0, 0x00000001[r21]
.BB.LABEL.11_20:	; if_break_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 450
	ld.bu 0x00000000[r21], r2
	addi 0xFFFFFFEC, r2, r0
	blt9 .BB.LABEL.11_23
.BB.LABEL.11_21:	; bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	ld.bu 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_22:	; if_then_bb184
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 452
	st.b r7, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 453
	ld.hu 0x00000000[r20], r6
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.11_23:	; if_break_bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 456
	ld.bu 0x00000001[r21], r2
	addi 0xFFFFFFEC, r2, r0
	blt9 .BB.LABEL.11_26
.BB.LABEL.11_24:	; bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	ld.bu 0x00000005[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_26
.BB.LABEL.11_25:	; if_then_bb213
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 458
	st.b r7, 0x00000005[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 459
	ld.hu 0x00000002[r20], r6
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.11_26:	; if_break_bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 462
	ld.bu 0x00000002[r21], r2
	addi 0xFFFFFFEC, r2, r0
	blt9 .BB.LABEL.11_33
.BB.LABEL.11_27:	; if_then_bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 464
	ld.bu 0x00000004[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_29
.BB.LABEL.11_28:	; if_then_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 466
	st.b r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 467
	ld.hu 0x00000000[r20], r6
	mov 0x00000000, r7
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.11_29:	; if_break_bb243
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 470
	ld.bu 0x00000005[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_33
.BB.LABEL.11_30:	; if_then_bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 472
	st.b r0, 0x00000005[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 473
	ld.hu 0x00000002[r20], r6
	mov 0x00000000, r7
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.11_31:	; if_else_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 445
	st.b r0, 0x00000000[r21]
	br9 .BB.LABEL.11_9
.BB.LABEL.11_32:	; if_else_bb260
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 479
	st.b r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 480
	st.b r0, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 481
	st.b r0, 0x00000002[r21]
.BB.LABEL.11_33:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 483
	dispose 0x00000000, 0x00000079, [r31]
_ANT5G_DIV_DtcInit:
	.stack _ANT5G_DIV_DtcInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 485
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 504
	andi 0x000000FF, r20, r2
	mul 0x00000006, r2, r0
	mov #_g_antDetectState.3, r6
	add r2, r6
	jarl _ANT_InitOneState.1, r31
	add 0x00000001, r20
.BB.LABEL.12_2:	; bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 502
	andi 0x000000FF, r20, r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 506
	dispose 0x00000000, 0x00000041, [r31]
_ANT5G_DIV_DetectProcess_200ms:
	.stack _ANT5G_DIV_DetectProcess_200ms = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 508
	prepare 0x00000061, 0x00000008
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 511
	jarl _ANT_ReadVoltage.1, r31
	st.h r10, 0x00000002[r3]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 512
	jarl _ANT_ReadVoltage.1, r31
	st.h r10, 0x00000004[r3]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 513
	jarl _ANT_ReadVoltage.1, r31
	st.h r10, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 514
	ld.hu 0x00000002[r3], r8
	mov #_g_antDetectState.3, r20
	mov #_g_antDetectCfg.2, r21
	mov r21, r6
	mov r20, r7
	jarl _ANT_DetectOneProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 515
	ld.hu 0x00000004[r3], r8
	addi 0x00000006, r20, r7
	addi 0x00000006, r21, r6
	jarl _ANT_DetectOneProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 516
	ld.hu 0x00000006[r3], r8
	addi 0x0000000C, r20, r7
	addi 0x0000000C, r21, r6
	jarl _ANT_DetectOneProcess.1, r31
	dispose 0x00000008, 0x00000061, [r31]
_ANT5GMAIN_ResetShortMonitorState.1:
	.stack _ANT5GMAIN_ResetShortMonitorState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 535
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Cnt.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 536
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 537
	movhi HIGHW1(#_ANT5GMAIN_Short_Flag.8), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Flag.8)[r2]
	jmp [r31]
_ANT5GMAIN_ResetOpenMonitorState.1:
	.stack _ANT5GMAIN_ResetOpenMonitorState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 542
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Cnt.5)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 543
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 544
	movhi HIGHW1(#_ANT5GMAIN_Open_Flag.9), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Flag.9)[r2]
	jmp [r31]
_ANT5GMAIN_SyncMonitorStateWithDem.1:
	.stack _ANT5GMAIN_SyncMonitorStateWithDem.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 547
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 549
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 551
	movhi HIGHW1(#_ANT5GMAIN_Short_Flag.8), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Short_Flag.8)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_4
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	movea 0x00000017, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 553
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_4
.BB.LABEL.16_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 555
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 557
	jarl _ANT5GMAIN_ResetShortMonitorState.1, r31
.BB.LABEL.16_4:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 562
	movhi HIGHW1(#_ANT5GMAIN_Open_Flag.9), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Open_Flag.9)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_8
.BB.LABEL.16_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	movea 0x00000018, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 564
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_8
.BB.LABEL.16_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 566
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.16_8
.BB.LABEL.16_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 568
	jarl _ANT5GMAIN_ResetOpenMonitorState.1, r31
.BB.LABEL.16_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 572
	dispose 0x00000004, 0x00000001, [r31]
_ANT5GMAIN_DtcInit:
	.stack _ANT5GMAIN_DtcInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 576
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Cnt.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 577
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Cnt.5)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 578
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 579
	movhi HIGHW1(#_ANT5GMAIN_StartCnt.7), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_StartCnt.7)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 581
	movhi HIGHW1(#_ANT5GMAIN_Short_Flag.8), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Flag.8)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 582
	movhi HIGHW1(#_ANT5GMAIN_Open_Flag.9), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Flag.9)[r2]
	jmp [r31]
_ANT5GMAIN_DetectProcess:
	.stack _ANT5GMAIN_DetectProcess = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 599
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 601
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 602
	jarl _ANT5GMAIN_SyncMonitorStateWithDem.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 604
	movhi HIGHW1(#_ANT5GMAIN_StartCnt.7), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_StartCnt.7)[r2], r2
	cmp 0x00000004, r2
	bgt9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 606
	add 0x00000001, r2
	movhi HIGHW1(#_ANT5GMAIN_StartCnt.7), r0, r5
	st.b r2, LOWW(#_ANT5GMAIN_StartCnt.7)[r5]
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 609
	addi 0xFFFFDCD8, r21, r0
	blt17 .BB.LABEL.18_33
.BB.LABEL.18_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFC180, r21, r0
	bgt17 .BB.LABEL.18_33
.BB.LABEL.18_4:	; bb23
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.18_33
.BB.LABEL.18_5:	; bb36
	movhi HIGHW1(#_ANT5GMAIN_StartCnt.7), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_StartCnt.7)[r2], r2
	cmp 0x00000005, r2
	blt17 .BB.LABEL.18_33
.BB.LABEL.18_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 614
	addi 0xFFFFFF39, r20, r0
	bgt9 .BB.LABEL.18_11
.BB.LABEL.18_7:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 616
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r20
	ld.bu LOWW(#_ANT5GMAIN_Short_Cnt.4)[r20], r20
	addi 0xFFFFFFED, r20, r0
	bgt9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 618
	add 0x00000001, r20
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r2
	st.b r20, LOWW(#_ANT5GMAIN_Short_Cnt.4)[r2]
.BB.LABEL.18_9:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 620
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r20
	st.b r0, LOWW(#_ANT5GMAIN_Open_Cnt.5)[r20]
.BB.LABEL.18_10:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r20
	st.b r0, LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r20]
	br9 .BB.LABEL.18_22
.BB.LABEL.18_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 623
	addi 0xFFFFFA24, r20, r0
	blt9 .BB.LABEL.18_16
.BB.LABEL.18_12:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFF894, r20, r0
	bgt9 .BB.LABEL.18_16
.BB.LABEL.18_13:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 625
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r20
	ld.bu LOWW(#_ANT5GMAIN_Open_Cnt.5)[r20], r20
	addi 0xFFFFFFED, r20, r0
	bgt9 .BB.LABEL.18_15
.BB.LABEL.18_14:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 627
	add 0x00000001, r20
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r2
	st.b r20, LOWW(#_ANT5GMAIN_Open_Cnt.5)[r2]
.BB.LABEL.18_15:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 629
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r20
	st.b r0, LOWW(#_ANT5GMAIN_Short_Cnt.4)[r20]
	br9 .BB.LABEL.18_10
.BB.LABEL.18_16:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 632
	addi 0xFFFFFF37, r20, r0
	blt9 .BB.LABEL.18_21
.BB.LABEL.18_17:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFFA25, r20, r0
	bgt9 .BB.LABEL.18_21
.BB.LABEL.18_18:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 634
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r2], r2
	addi 0xFFFFFFED, r2, r0
	bgt9 .BB.LABEL.18_20
.BB.LABEL.18_19:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 636
	add 0x00000001, r2
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r5
	st.b r2, LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r5]
.BB.LABEL.18_20:	; if_break_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 638
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Cnt.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 639
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Cnt.5)[r2]
	br9 .BB.LABEL.18_22
.BB.LABEL.18_21:	; if_else_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 643
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Cnt.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 644
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Cnt.5)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 645
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r2]
.BB.LABEL.18_22:	; if_break_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 648
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Short_Cnt.4)[r2], r2
	addi 0xFFFFFFEC, r2, r0
	blt9 .BB.LABEL.18_25
.BB.LABEL.18_23:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_ANT5GMAIN_Short_Flag.8), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Short_Flag.8)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_25
.BB.LABEL.18_24:	; if_then_bb141
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 650
	movhi HIGHW1(#_ANT5GMAIN_Short_Flag.8), r0, r2
	st.b r7, LOWW(#_ANT5GMAIN_Short_Flag.8)[r2]
	movea 0x00000017, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 651
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.18_25:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 654
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Open_Cnt.5)[r2], r2
	addi 0xFFFFFFEC, r2, r0
	blt9 .BB.LABEL.18_28
.BB.LABEL.18_26:	; bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_ANT5GMAIN_Open_Flag.9), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Open_Flag.9)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_28
.BB.LABEL.18_27:	; if_then_bb161
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 656
	movhi HIGHW1(#_ANT5GMAIN_Open_Flag.9), r0, r2
	st.b r7, LOWW(#_ANT5GMAIN_Open_Flag.9)[r2]
	movea 0x00000018, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 657
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.18_28:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 660
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r2], r2
	addi 0xFFFFFFEC, r2, r0
	blt9 .BB.LABEL.18_34
.BB.LABEL.18_29:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 662
	movhi HIGHW1(#_ANT5GMAIN_Short_Flag.8), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Short_Flag.8)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_31
.BB.LABEL.18_30:	; if_then_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 664
	movhi HIGHW1(#_ANT5GMAIN_Short_Flag.8), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Flag.8)[r2]
	mov 0x00000000, r7
	movea 0x00000017, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 665
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.18_31:	; if_break_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 668
	movhi HIGHW1(#_ANT5GMAIN_Open_Flag.9), r0, r2
	ld.bu LOWW(#_ANT5GMAIN_Open_Flag.9)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_34
.BB.LABEL.18_32:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 670
	movhi HIGHW1(#_ANT5GMAIN_Open_Flag.9), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Flag.9)[r2]
	mov 0x00000000, r7
	movea 0x00000018, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 671
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.18_33:	; if_else_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 677
	movhi HIGHW1(#_ANT5GMAIN_Short_Cnt.4), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Short_Cnt.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 678
	movhi HIGHW1(#_ANT5GMAIN_Open_Cnt.5), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Open_Cnt.5)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 679
	movhi HIGHW1(#_ANT5GMAIN_Ok_Cnt.6), r0, r2
	st.b r0, LOWW(#_ANT5GMAIN_Ok_Cnt.6)[r2]
.BB.LABEL.18_34:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 681
	dispose 0x00000000, 0x00000061, [r31]
_kl30VoltageDTCProcess:
	.stack _kl30VoltageDTCProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 705
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 707
	movhi HIGHW1(#_g_voltageDiagState.10), r0, r2
	ld.w LOWW(#_g_voltageDiagState.10)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 709
	movhi HIGHW1(#_g_diagMaxVolage.13), r0, r2
	ld.hu LOWW(#_g_diagMaxVolage.13)[r2], r2
	cmp r2, r6
	bnh9 .BB.LABEL.19_6
.BB.LABEL.19_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000001, r5
.BB.LABEL.19_3:	; if_then_bb11
	movhi HIGHW1(#_g_voltageDiagState.10), r0, r2
	st.w r5, LOWW(#_g_voltageDiagState.10)[r2]
.BB.LABEL.19_4:	; if_then_bb11
	movhi HIGHW1(#_g_diagRecoverTimerCount.11), r0, r2
	st.w r0, LOWW(#_g_diagRecoverTimerCount.11)[r2]
.BB.LABEL.19_5:	; if_else_bb120
	movhi HIGHW1(#_g_diagFaultTimerCount.12), r0, r2
	st.w r0, LOWW(#_g_diagFaultTimerCount.12)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 799
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 715
	movhi HIGHW1(#_g_diagMinVolage.14), r0, r2
	ld.hu LOWW(#_g_diagMinVolage.14)[r2], r2
	cmp r2, r6
	bnc17 .BB.LABEL.19_27
.BB.LABEL.19_7:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000002, r5
	br9 .BB.LABEL.19_3
.BB.LABEL.19_8:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 722
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.19_16
.BB.LABEL.19_9:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 724
	movhi HIGHW1(#_g_diagMaxRecoverVolage.15), r0, r2
	ld.hu LOWW(#_g_diagMaxRecoverVolage.15)[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.19_12
.BB.LABEL.19_10:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 726
	movhi HIGHW1(#_g_diagFaultTimerCount.12), r0, r2
	st.w r0, LOWW(#_g_diagFaultTimerCount.12)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 727
	movhi HIGHW1(#_g_diagRecoverTime.17), r0, r2
	ld.w LOWW(#_g_diagRecoverTime.17)[r2], r2
	movea 0x000000C8, r0, r5
	divhu r5, r2, r0
	movhi HIGHW1(#_g_diagRecoverTimerCount.11), r0, r5
	ld.w LOWW(#_g_diagRecoverTimerCount.11)[r5], r5
	cmp r2, r5
	bl9 .BB.LABEL.19_20
.BB.LABEL.19_11:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 729
	movhi HIGHW1(#_g_voltageDiagState.10), r0, r2
	st.w r0, LOWW(#_g_voltageDiagState.10)[r2]
	mov 0x00000000, r7
	br9 .BB.LABEL.19_15
.BB.LABEL.19_12:	; if_else_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 739
	movhi HIGHW1(#_g_diagRecoverTimerCount.11), r0, r2
	st.w r0, LOWW(#_g_diagRecoverTimerCount.11)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 740
	movhi HIGHW1(#_g_diagMaxVolage.13), r0, r2
	ld.hu LOWW(#_g_diagMaxVolage.13)[r2], r2
	cmp r2, r6
	bnh9 .BB.LABEL.19_5
.BB.LABEL.19_13:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 742
	movhi HIGHW1(#_g_diagFaultTime.18), r0, r2
	ld.w LOWW(#_g_diagFaultTime.18)[r2], r2
	movea 0x000000C8, r0, r5
	divhu r5, r2, r0
	movhi HIGHW1(#_g_diagFaultTimerCount.12), r0, r5
	ld.w LOWW(#_g_diagFaultTimerCount.12)[r5], r5
	cmp r2, r5
	bl9 .BB.LABEL.19_25
.BB.LABEL.19_14:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000001, r7
.BB.LABEL.19_15:	; if_then_bb63
	movea 0x0000002D, r0, r6
	jarl _Dem_SetEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 799
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_16:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 757
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.19_26
.BB.LABEL.19_17:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 759
	movhi HIGHW1(#_g_diagMinRecoverVolage.16), r0, r2
	ld.hu LOWW(#_g_diagMinRecoverVolage.16)[r2], r2
	cmp r2, r6
	bl9 .BB.LABEL.19_21
.BB.LABEL.19_18:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 761
	movhi HIGHW1(#_g_diagFaultTimerCount.12), r0, r2
	st.w r0, LOWW(#_g_diagFaultTimerCount.12)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 762
	movhi HIGHW1(#_g_diagRecoverTime.17), r0, r2
	ld.w LOWW(#_g_diagRecoverTime.17)[r2], r2
	movea 0x000000C8, r0, r5
	divhu r5, r2, r0
	movhi HIGHW1(#_g_diagRecoverTimerCount.11), r0, r5
	ld.w LOWW(#_g_diagRecoverTimerCount.11)[r5], r5
	cmp r2, r5
	bl9 .BB.LABEL.19_20
.BB.LABEL.19_19:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 764
	movhi HIGHW1(#_g_voltageDiagState.10), r0, r5
	st.w r0, LOWW(#_g_voltageDiagState.10)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 765
	movhi HIGHW1(#_g_diagRecoverTimerCount.11), r0, r5
	st.w r0, LOWW(#_g_diagRecoverTimerCount.11)[r5]
	mov 0x00000000, r7
	br9 .BB.LABEL.19_24
.BB.LABEL.19_20:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	add 0x00000001, r5
	movhi HIGHW1(#_g_diagRecoverTimerCount.11), r0, r2
	st.w r5, LOWW(#_g_diagRecoverTimerCount.11)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 799
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_21:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 775
	movhi HIGHW1(#_g_diagRecoverTimerCount.11), r0, r2
	st.w r0, LOWW(#_g_diagRecoverTimerCount.11)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 776
	movhi HIGHW1(#_g_diagMinVolage.14), r0, r2
	ld.hu LOWW(#_g_diagMinVolage.14)[r2], r2
	cmp r2, r6
	bnc17 .BB.LABEL.19_5
.BB.LABEL.19_22:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 778
	movhi HIGHW1(#_g_diagFaultTime.18), r0, r2
	ld.w LOWW(#_g_diagFaultTime.18)[r2], r2
	movea 0x000000C8, r0, r5
	divhu r5, r2, r0
	movhi HIGHW1(#_g_diagFaultTimerCount.12), r0, r5
	ld.w LOWW(#_g_diagFaultTimerCount.12)[r5], r5
	cmp r2, r5
	bl9 .BB.LABEL.19_25
.BB.LABEL.19_23:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000001, r7
.BB.LABEL.19_24:	; if_then_bb114
	movea 0x0000002E, r0, r6
	jarl _Dem_SetEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 799
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_25:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	add 0x00000001, r5
	movhi HIGHW1(#_g_diagFaultTimerCount.12), r0, r2
	st.w r5, LOWW(#_g_diagFaultTimerCount.12)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 799
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_26:	; if_else_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 795
	movhi HIGHW1(#_g_voltageDiagState.10), r0, r2
	st.w r0, LOWW(#_g_voltageDiagState.10)[r2]
	jr .BB.LABEL.19_4
.BB.LABEL.19_27:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 799
	dispose 0x00000000, 0x00000001, [r31]
_GPS_ResetShortMonitorState.1:
	.stack _GPS_ResetShortMonitorState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 826
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	st.b r0, LOWW(#_GPS_Short_Cnt.19)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 827
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r2
	st.b r0, LOWW(#_GPS_Ok_Cnt.21)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 828
	movhi HIGHW1(#_GPS_Short_Flag.23), r0, r2
	st.b r0, LOWW(#_GPS_Short_Flag.23)[r2]
	jmp [r31]
_GPS_ResetOpenMonitorState.1:
	.stack _GPS_ResetOpenMonitorState.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 833
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r2
	st.b r0, LOWW(#_GPS_Open_Cnt.20)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 834
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r2
	st.b r0, LOWW(#_GPS_Ok_Cnt.21)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 835
	movhi HIGHW1(#_GPS_Open_Flag.24), r0, r2
	st.b r0, LOWW(#_GPS_Open_Flag.24)[r2]
	jmp [r31]
_GPS_SyncMonitorStateWithDem.1:
	.stack _GPS_SyncMonitorStateWithDem.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 838
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 840
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 841
	movhi HIGHW1(#_GPS_Short_Flag.23), r0, r2
	ld.bu LOWW(#_GPS_Short_Flag.23)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_4
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 843
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_4
.BB.LABEL.22_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 845
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.22_4
.BB.LABEL.22_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 847
	jarl _GPS_ResetShortMonitorState.1, r31
.BB.LABEL.22_4:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 851
	movhi HIGHW1(#_GPS_Open_Flag.24), r0, r2
	ld.bu LOWW(#_GPS_Open_Flag.24)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_8
.BB.LABEL.22_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 853
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_8
.BB.LABEL.22_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 855
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 857
	jarl _GPS_ResetOpenMonitorState.1, r31
.BB.LABEL.22_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 861
	dispose 0x00000004, 0x00000001, [r31]
_GPS_DtcInit:
	.stack _GPS_DtcInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 865
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	st.b r0, LOWW(#_GPS_Short_Cnt.19)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 866
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r2
	st.b r0, LOWW(#_GPS_Open_Cnt.20)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 867
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r2
	st.b r0, LOWW(#_GPS_Ok_Cnt.21)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 868
	movhi HIGHW1(#_GPS_StartCnt.22), r0, r2
	st.b r0, LOWW(#_GPS_StartCnt.22)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 869
	movhi HIGHW1(#_GPS_Short_Flag.23), r0, r2
	st.b r0, LOWW(#_GPS_Short_Flag.23)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 870
	movhi HIGHW1(#_GPS_Open_Flag.24), r0, r2
	st.b r0, LOWW(#_GPS_Open_Flag.24)[r2]
	jmp [r31]
_GPS_DetectProcess_200ms:
	.stack _GPS_DetectProcess_200ms = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 887
	prepare 0x00000041, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 889
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 890
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 891
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 893
	jarl _GPS_SyncMonitorStateWithDem.1, r31
	movea 0x00000004, r3, r7
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 894
	jarl _PeripheralHalAdGet, r31
	mov r3, r7
	mov 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 895
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 900
	movhi HIGHW1(#_GPS_StartCnt.22), r0, r2
	ld.bu LOWW(#_GPS_StartCnt.22)[r2], r2
	cmp 0x00000004, r2
	bgt9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 902
	add 0x00000001, r2
	movhi HIGHW1(#_GPS_StartCnt.22), r0, r5
	st.b r2, LOWW(#_GPS_StartCnt.22)[r5]
.BB.LABEL.24_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 904
	addi 0xFFFFDCD8, r20, r0
	blt17 .BB.LABEL.24_35
.BB.LABEL.24_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFC180, r20, r0
	bgt17 .BB.LABEL.24_35
.BB.LABEL.24_4:	; bb26
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.24_35
.BB.LABEL.24_5:	; bb38
	movhi HIGHW1(#_GPS_StartCnt.22), r0, r2
	ld.bu LOWW(#_GPS_StartCnt.22)[r2], r2
	cmp 0x00000005, r2
	blt17 .BB.LABEL.24_35
.BB.LABEL.24_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 909
	ld.w 0x00000004[r3], r2
	movea 0x0000018F, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.24_12
.BB.LABEL.24_7:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	ld.w 0x00000000[r3], r2
	movea 0x0000018F, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.24_12
.BB.LABEL.24_8:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 912
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	ld.bu LOWW(#_GPS_Short_Cnt.19)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.24_10
.BB.LABEL.24_9:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 914
	add 0x00000001, r2
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r5
	st.b r2, LOWW(#_GPS_Short_Cnt.19)[r5]
.BB.LABEL.24_10:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r2
	st.b r0, LOWW(#_GPS_Open_Cnt.20)[r2]
.BB.LABEL.24_11:	; if_break_bb76
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r2
	st.b r0, LOWW(#_GPS_Ok_Cnt.21)[r2]
	br9 .BB.LABEL.24_23
.BB.LABEL.24_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 919
	ld.w 0x00000004[r3], r2
	movea 0xFFFFF830, r2, r2
	movea 0x0000028A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.24_18
.BB.LABEL.24_13:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	ld.w 0x00000000[r3], r2
	movea 0x000007D0, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.24_18
.BB.LABEL.24_14:	; bb91
	movea 0x00000A5A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.24_18
.BB.LABEL.24_15:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 924
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r2
	ld.bu LOWW(#_GPS_Open_Cnt.20)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.24_17
.BB.LABEL.24_16:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 926
	add 0x00000001, r2
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r5
	st.b r2, LOWW(#_GPS_Open_Cnt.20)[r5]
.BB.LABEL.24_17:	; if_break_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 928
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	st.b r0, LOWW(#_GPS_Short_Cnt.19)[r2]
	br9 .BB.LABEL.24_11
.BB.LABEL.24_18:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 931
	ld.w 0x00000000[r3], r2
	movea 0xFFFFF9C0, r2, r2
	movea 0x00000352, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.24_34
.BB.LABEL.24_19:	; bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	ld.w 0x00000004[r3], r2
	movea 0x0000018F, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.24_34
.BB.LABEL.24_20:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 935
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r2
	ld.bu LOWW(#_GPS_Ok_Cnt.21)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.24_22
.BB.LABEL.24_21:	; if_then_bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 937
	add 0x00000001, r2
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r5
	st.b r2, LOWW(#_GPS_Ok_Cnt.21)[r5]
.BB.LABEL.24_22:	; if_break_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 939
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	st.b r0, LOWW(#_GPS_Short_Cnt.19)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 940
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r2
	st.b r0, LOWW(#_GPS_Open_Cnt.20)[r2]
.BB.LABEL.24_23:	; if_break_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 948
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	ld.bu LOWW(#_GPS_Short_Cnt.19)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.24_26
.BB.LABEL.24_24:	; bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_GPS_Short_Flag.23), r0, r2
	ld.bu LOWW(#_GPS_Short_Flag.23)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_26
.BB.LABEL.24_25:	; if_then_bb182
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 951
	movhi HIGHW1(#_GPS_Short_Flag.23), r0, r2
	st.b r7, LOWW(#_GPS_Short_Flag.23)[r2]
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 952
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.24_26:	; if_break_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 954
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r2
	ld.bu LOWW(#_GPS_Open_Cnt.20)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.24_29
.BB.LABEL.24_27:	; bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_GPS_Open_Flag.24), r0, r2
	ld.bu LOWW(#_GPS_Open_Flag.24)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_29
.BB.LABEL.24_28:	; if_then_bb202
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 957
	movhi HIGHW1(#_GPS_Open_Flag.24), r0, r2
	st.b r7, LOWW(#_GPS_Open_Flag.24)[r2]
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 958
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.24_29:	; if_break_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 960
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r2
	ld.bu LOWW(#_GPS_Ok_Cnt.21)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.24_36
.BB.LABEL.24_30:	; if_then_bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 962
	movhi HIGHW1(#_GPS_Short_Flag.23), r0, r2
	ld.bu LOWW(#_GPS_Short_Flag.23)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.24_32
.BB.LABEL.24_31:	; if_then_bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 964
	movhi HIGHW1(#_GPS_Short_Flag.23), r0, r2
	st.b r0, LOWW(#_GPS_Short_Flag.23)[r2]
	mov 0x00000000, r7
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 965
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.24_32:	; if_break_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 967
	movhi HIGHW1(#_GPS_Open_Flag.24), r0, r2
	ld.bu LOWW(#_GPS_Open_Flag.24)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.24_36
.BB.LABEL.24_33:	; if_then_bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 969
	movhi HIGHW1(#_GPS_Open_Flag.24), r0, r2
	st.b r0, LOWW(#_GPS_Open_Flag.24)[r2]
	mov 0x00000000, r7
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 970
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.24_34:	; if_else_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 944
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	st.b r0, LOWW(#_GPS_Short_Cnt.19)[r2]
	jr .BB.LABEL.24_10
.BB.LABEL.24_35:	; if_else_bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 976
	movhi HIGHW1(#_GPS_Short_Cnt.19), r0, r2
	st.b r0, LOWW(#_GPS_Short_Cnt.19)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 977
	movhi HIGHW1(#_GPS_Open_Cnt.20), r0, r2
	st.b r0, LOWW(#_GPS_Open_Cnt.20)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 978
	movhi HIGHW1(#_GPS_Ok_Cnt.21), r0, r2
	st.b r0, LOWW(#_GPS_Ok_Cnt.21)[r2]
.BB.LABEL.24_36:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 980
	dispose 0x00000008, 0x00000041, [r31]
_MICIN_SyncMonitorStateWithDem.1:
	.stack _MICIN_SyncMonitorStateWithDem.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1015
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1017
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1018
	movhi HIGHW1(#_MICIN_ShortGnd_Flag.30), r0, r2
	ld.bu LOWW(#_MICIN_ShortGnd_Flag.30)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_4
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1020
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_4
.BB.LABEL.25_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1022
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.25_4
.BB.LABEL.25_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1024
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Cnt.25)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1025
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	st.b r0, LOWW(#_MICIN_Ok_Cnt.28)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1026
	movhi HIGHW1(#_MICIN_ShortGnd_Flag.30), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Flag.30)[r2]
.BB.LABEL.25_4:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1030
	movhi HIGHW1(#_MICIN_Open_Flag.31), r0, r2
	ld.bu LOWW(#_MICIN_Open_Flag.31)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_8
.BB.LABEL.25_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1032
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_8
.BB.LABEL.25_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1034
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.25_8
.BB.LABEL.25_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1036
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Cnt.26)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1037
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	st.b r0, LOWW(#_MICIN_Ok_Cnt.28)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1038
	movhi HIGHW1(#_MICIN_Open_Flag.31), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Flag.31)[r2]
.BB.LABEL.25_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1042
	movhi HIGHW1(#_MICIN_ShortBat_Flag.32), r0, r2
	ld.bu LOWW(#_MICIN_ShortBat_Flag.32)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_12
.BB.LABEL.25_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1044
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_12
.BB.LABEL.25_10:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1046
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.25_12
.BB.LABEL.25_11:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1048
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Cnt.27)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1049
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	st.b r0, LOWW(#_MICIN_Ok_Cnt.28)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1050
	movhi HIGHW1(#_MICIN_ShortBat_Flag.32), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Flag.32)[r2]
.BB.LABEL.25_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1054
	dispose 0x00000004, 0x00000001, [r31]
_MICIN_DtcInit:
	.stack _MICIN_DtcInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1058
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Cnt.25)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1059
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Cnt.26)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1060
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Cnt.27)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1061
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	st.b r0, LOWW(#_MICIN_Ok_Cnt.28)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1062
	movhi HIGHW1(#_MICIN_StartCnt.29), r0, r2
	st.b r0, LOWW(#_MICIN_StartCnt.29)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1064
	movhi HIGHW1(#_MICIN_ShortGnd_Flag.30), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Flag.30)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1065
	movhi HIGHW1(#_MICIN_Open_Flag.31), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Flag.31)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1066
	movhi HIGHW1(#_MICIN_ShortBat_Flag.32), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Flag.32)[r2]
	jmp [r31]
_MICIN_DetectProcess_2s:
	.stack _MICIN_DetectProcess_2s = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1069
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1071
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1072
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1074
	jarl _MICIN_SyncMonitorStateWithDem.1, r31
	mov r3, r7
	movea 0x00000014, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1075
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1078
	movhi HIGHW1(#_MICIN_StartCnt.29), r0, r2
	ld.bu LOWW(#_MICIN_StartCnt.29)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1080
	add 0x00000001, r2
	movhi HIGHW1(#_MICIN_StartCnt.29), r0, r5
	st.b r2, LOWW(#_MICIN_StartCnt.29)[r5]
.BB.LABEL.27_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1082
	addi 0xFFFFDCD8, r20, r0
	blt17 .BB.LABEL.27_41
.BB.LABEL.27_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFC180, r20, r0
	bgt17 .BB.LABEL.27_41
.BB.LABEL.27_4:	; bb24
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.27_41
.BB.LABEL.27_5:	; bb36
	movhi HIGHW1(#_MICIN_StartCnt.29), r0, r2
	ld.bu LOWW(#_MICIN_StartCnt.29)[r2], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.27_41
.BB.LABEL.27_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1087
	ld.w 0x00000000[r3], r2
	movea 0x00000031, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.27_12
.BB.LABEL.27_7:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1089
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	ld.bu LOWW(#_MICIN_ShortGnd_Cnt.25)[r2], r2
	cmp 0x00000002, r2
	bgt9 .BB.LABEL.27_9
.BB.LABEL.27_8:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1091
	add 0x00000001, r2
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r5
	st.b r2, LOWW(#_MICIN_ShortGnd_Cnt.25)[r5]
.BB.LABEL.27_9:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Cnt.26)[r2]
.BB.LABEL.27_10:	; if_break_bb63
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Cnt.27)[r2]
.BB.LABEL.27_11:	; if_break_bb63
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	st.b r0, LOWW(#_MICIN_Ok_Cnt.28)[r2]
	br9 .BB.LABEL.27_24
.BB.LABEL.27_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1097
	movea 0xFFFFFE52, r2, r2
	movea 0x00000078, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.27_16
.BB.LABEL.27_13:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1100
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	ld.bu LOWW(#_MICIN_Open_Cnt.26)[r2], r2
	cmp 0x00000002, r2
	bgt9 .BB.LABEL.27_15
.BB.LABEL.27_14:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1102
	add 0x00000001, r2
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r5
	st.b r2, LOWW(#_MICIN_Open_Cnt.26)[r5]
.BB.LABEL.27_15:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1104
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Cnt.25)[r2]
	br9 .BB.LABEL.27_10
.BB.LABEL.27_16:	; if_else_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1108
	ld.w 0x00000000[r3], r2
	movea 0xFFFFFC7C, r2, r5
	movea 0x000000C8, r0, r6
	cmp r6, r5
	bh9 .BB.LABEL.27_20
.BB.LABEL.27_17:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1111
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r2
	ld.bu LOWW(#_MICIN_ShortBat_Cnt.27)[r2], r2
	cmp 0x00000002, r2
	bgt9 .BB.LABEL.27_19
.BB.LABEL.27_18:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1113
	add 0x00000001, r2
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r5
	st.b r2, LOWW(#_MICIN_ShortBat_Cnt.27)[r5]
.BB.LABEL.27_19:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1115
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Cnt.25)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1116
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Cnt.26)[r2]
	br9 .BB.LABEL.27_11
.BB.LABEL.27_20:	; if_else_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1119
	movea 0xFFFFFF9C, r2, r2
	movea 0x00000140, r0, r5
	cmp r5, r2
	bh17 .BB.LABEL.27_40
.BB.LABEL.27_21:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1122
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	ld.bu LOWW(#_MICIN_Ok_Cnt.28)[r2], r2
	cmp 0x00000002, r2
	bgt9 .BB.LABEL.27_23
.BB.LABEL.27_22:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1124
	add 0x00000001, r2
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r5
	st.b r2, LOWW(#_MICIN_Ok_Cnt.28)[r5]
.BB.LABEL.27_23:	; if_break_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1126
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Cnt.25)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1127
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Cnt.26)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1128
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Cnt.27)[r2]
.BB.LABEL.27_24:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1137
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	ld.bu LOWW(#_MICIN_ShortGnd_Cnt.25)[r2], r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.27_27
.BB.LABEL.27_25:	; bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_MICIN_ShortGnd_Flag.30), r0, r2
	ld.bu LOWW(#_MICIN_ShortGnd_Flag.30)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_27
.BB.LABEL.27_26:	; if_then_bb163
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1140
	movhi HIGHW1(#_MICIN_ShortGnd_Flag.30), r0, r2
	st.b r7, LOWW(#_MICIN_ShortGnd_Flag.30)[r2]
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1141
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.27_27:	; if_break_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1143
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	ld.bu LOWW(#_MICIN_Open_Cnt.26)[r2], r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.27_30
.BB.LABEL.27_28:	; bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_MICIN_Open_Flag.31), r0, r2
	ld.bu LOWW(#_MICIN_Open_Flag.31)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_30
.BB.LABEL.27_29:	; if_then_bb183
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1146
	movhi HIGHW1(#_MICIN_Open_Flag.31), r0, r2
	st.b r7, LOWW(#_MICIN_Open_Flag.31)[r2]
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1147
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.27_30:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1149
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r2
	ld.bu LOWW(#_MICIN_ShortBat_Cnt.27)[r2], r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.27_33
.BB.LABEL.27_31:	; bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_MICIN_ShortBat_Flag.32), r0, r2
	ld.bu LOWW(#_MICIN_ShortBat_Flag.32)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_33
.BB.LABEL.27_32:	; if_then_bb203
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1152
	movhi HIGHW1(#_MICIN_ShortBat_Flag.32), r0, r2
	st.b r7, LOWW(#_MICIN_ShortBat_Flag.32)[r2]
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1153
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.27_33:	; if_break_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1155
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	ld.bu LOWW(#_MICIN_Ok_Cnt.28)[r2], r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.27_42
.BB.LABEL.27_34:	; if_then_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1157
	movhi HIGHW1(#_MICIN_ShortGnd_Flag.30), r0, r2
	ld.bu LOWW(#_MICIN_ShortGnd_Flag.30)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_36
.BB.LABEL.27_35:	; if_then_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1159
	movhi HIGHW1(#_MICIN_ShortGnd_Flag.30), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Flag.30)[r2]
	mov 0x00000000, r7
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1160
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.27_36:	; if_break_bb219
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1162
	movhi HIGHW1(#_MICIN_Open_Flag.31), r0, r2
	ld.bu LOWW(#_MICIN_Open_Flag.31)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_38
.BB.LABEL.27_37:	; if_then_bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1164
	movhi HIGHW1(#_MICIN_Open_Flag.31), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Flag.31)[r2]
	mov 0x00000000, r7
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1165
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.27_38:	; if_break_bb227
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1167
	movhi HIGHW1(#_MICIN_ShortBat_Flag.32), r0, r2
	ld.bu LOWW(#_MICIN_ShortBat_Flag.32)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_42
.BB.LABEL.27_39:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1169
	movhi HIGHW1(#_MICIN_ShortBat_Flag.32), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Flag.32)[r2]
	mov 0x00000000, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1170
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.27_40:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1132
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Cnt.25)[r2]
	jr .BB.LABEL.27_9
.BB.LABEL.27_41:	; if_else_bb237
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1176
	movhi HIGHW1(#_MICIN_ShortGnd_Cnt.25), r0, r2
	st.b r0, LOWW(#_MICIN_ShortGnd_Cnt.25)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1177
	movhi HIGHW1(#_MICIN_Open_Cnt.26), r0, r2
	st.b r0, LOWW(#_MICIN_Open_Cnt.26)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1178
	movhi HIGHW1(#_MICIN_ShortBat_Cnt.27), r0, r2
	st.b r0, LOWW(#_MICIN_ShortBat_Cnt.27)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1179
	movhi HIGHW1(#_MICIN_Ok_Cnt.28), r0, r2
	st.b r0, LOWW(#_MICIN_Ok_Cnt.28)[r2]
.BB.LABEL.27_42:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1181
	dispose 0x00000004, 0x00000041, [r31]
_LED_SyncMonitorStateWithDem.1:
	.stack _LED_SyncMonitorStateWithDem.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1210
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1212
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1214
	movhi HIGHW1(#_LED_ShortGnd_Flag.37), r0, r2
	ld.bu LOWW(#_LED_ShortGnd_Flag.37)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_4
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1216
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_4
.BB.LABEL.28_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1218
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1220
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Cnt.33)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1221
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r2
	st.b r0, LOWW(#_LED_Ok_Cnt.35)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1222
	movhi HIGHW1(#_LED_ShortGnd_Flag.37), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Flag.37)[r2]
.BB.LABEL.28_4:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1226
	movhi HIGHW1(#_LED_ShortBat_Flag.38), r0, r2
	ld.bu LOWW(#_LED_ShortBat_Flag.38)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_8
.BB.LABEL.28_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1228
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_8
.BB.LABEL.28_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1230
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.28_8
.BB.LABEL.28_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1232
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Cnt.34)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1233
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r2
	st.b r0, LOWW(#_LED_Ok_Cnt.35)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1234
	movhi HIGHW1(#_LED_ShortBat_Flag.38), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Flag.38)[r2]
.BB.LABEL.28_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1238
	dispose 0x00000004, 0x00000001, [r31]
_LED_DtcInit:
	.stack _LED_DtcInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1242
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Cnt.33)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1243
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Cnt.34)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1244
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r2
	st.b r0, LOWW(#_LED_Ok_Cnt.35)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1245
	movhi HIGHW1(#_LED_StartCnt.36), r0, r2
	st.b r0, LOWW(#_LED_StartCnt.36)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1246
	movhi HIGHW1(#_LED_ShortGnd_Flag.37), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Flag.37)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1247
	movhi HIGHW1(#_LED_ShortBat_Flag.38), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Flag.38)[r2]
	jmp [r31]
_LED_DetectProcess_200ms:
	.stack _LED_DetectProcess_200ms = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1264
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1266
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1267
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1269
	jarl _LED_SyncMonitorStateWithDem.1, r31
	mov r3, r7
	mov 0x0000000E, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1270
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1273
	movhi HIGHW1(#_LED_StartCnt.36), r0, r2
	ld.bu LOWW(#_LED_StartCnt.36)[r2], r2
	cmp 0x00000004, r2
	bgt9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1275
	add 0x00000001, r2
	movhi HIGHW1(#_LED_StartCnt.36), r0, r5
	st.b r2, LOWW(#_LED_StartCnt.36)[r5]
.BB.LABEL.30_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1278
	addi 0xFFFFDCD8, r20, r0
	blt17 .BB.LABEL.30_31
.BB.LABEL.30_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFC180, r20, r0
	bgt17 .BB.LABEL.30_31
.BB.LABEL.30_4:	; bb24
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.30_31
.BB.LABEL.30_5:	; bb36
	movhi HIGHW1(#_LED_StartCnt.36), r0, r2
	ld.bu LOWW(#_LED_StartCnt.36)[r2], r2
	cmp 0x00000005, r2
	blt17 .BB.LABEL.30_31
.BB.LABEL.30_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1283
	ld.w 0x00000000[r3], r2
	movea 0x00000063, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.30_11
.BB.LABEL.30_7:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1285
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	ld.bu LOWW(#_LED_ShortGnd_Cnt.33)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.30_9
.BB.LABEL.30_8:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1287
	add 0x00000001, r2
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r5
	st.b r2, LOWW(#_LED_ShortGnd_Cnt.33)[r5]
.BB.LABEL.30_9:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Cnt.34)[r2]
.BB.LABEL.30_10:	; if_break_bb63
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r2
	st.b r0, LOWW(#_LED_Ok_Cnt.35)[r2]
	br9 .BB.LABEL.30_19
.BB.LABEL.30_11:	; if_else_bb
	movea 0x00000BB9, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1292
	cmp r5, r2
	bl9 .BB.LABEL.30_15
.BB.LABEL.30_12:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1294
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r2
	ld.bu LOWW(#_LED_ShortBat_Cnt.34)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.30_14
.BB.LABEL.30_13:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1296
	add 0x00000001, r2
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r5
	st.b r2, LOWW(#_LED_ShortBat_Cnt.34)[r5]
.BB.LABEL.30_14:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1298
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Cnt.33)[r2]
	br9 .BB.LABEL.30_10
.BB.LABEL.30_15:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1301
	movea 0xFFFFF894, r2, r2
	movea 0x000000C8, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.30_30
.BB.LABEL.30_16:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1304
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r2
	ld.bu LOWW(#_LED_Ok_Cnt.35)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.30_18
.BB.LABEL.30_17:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1306
	add 0x00000001, r2
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r5
	st.b r2, LOWW(#_LED_Ok_Cnt.35)[r5]
.BB.LABEL.30_18:	; if_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1308
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Cnt.33)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1309
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Cnt.34)[r2]
.BB.LABEL.30_19:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1317
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	ld.bu LOWW(#_LED_ShortGnd_Cnt.33)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.30_22
.BB.LABEL.30_20:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_LED_ShortGnd_Flag.37), r0, r2
	ld.bu LOWW(#_LED_ShortGnd_Flag.37)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.30_22
.BB.LABEL.30_21:	; if_then_bb125
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1320
	movhi HIGHW1(#_LED_ShortGnd_Flag.37), r0, r2
	st.b r7, LOWW(#_LED_ShortGnd_Flag.37)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1321
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.30_22:	; if_break_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1323
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r2
	ld.bu LOWW(#_LED_ShortBat_Cnt.34)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.30_25
.BB.LABEL.30_23:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_LED_ShortBat_Flag.38), r0, r2
	ld.bu LOWW(#_LED_ShortBat_Flag.38)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.30_25
.BB.LABEL.30_24:	; if_then_bb145
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1326
	movhi HIGHW1(#_LED_ShortBat_Flag.38), r0, r2
	st.b r7, LOWW(#_LED_ShortBat_Flag.38)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1327
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.30_25:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1329
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r2
	ld.bu LOWW(#_LED_Ok_Cnt.35)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.30_32
.BB.LABEL.30_26:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1331
	movhi HIGHW1(#_LED_ShortGnd_Flag.37), r0, r2
	ld.bu LOWW(#_LED_ShortGnd_Flag.37)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.30_28
.BB.LABEL.30_27:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1333
	movhi HIGHW1(#_LED_ShortGnd_Flag.37), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Flag.37)[r2]
	mov 0x00000000, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1334
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.30_28:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1336
	movhi HIGHW1(#_LED_ShortBat_Flag.38), r0, r2
	ld.bu LOWW(#_LED_ShortBat_Flag.38)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.30_32
.BB.LABEL.30_29:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1338
	movhi HIGHW1(#_LED_ShortBat_Flag.38), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Flag.38)[r2]
	mov 0x00000000, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1339
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.30_30:	; if_else_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1313
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Cnt.33)[r2]
	jr .BB.LABEL.30_9
.BB.LABEL.30_31:	; if_else_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1345
	movhi HIGHW1(#_LED_ShortGnd_Cnt.33), r0, r2
	st.b r0, LOWW(#_LED_ShortGnd_Cnt.33)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1346
	movhi HIGHW1(#_LED_ShortBat_Cnt.34), r0, r2
	st.b r0, LOWW(#_LED_ShortBat_Cnt.34)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1347
	movhi HIGHW1(#_LED_Ok_Cnt.35), r0, r2
	st.b r0, LOWW(#_LED_Ok_Cnt.35)[r2]
.BB.LABEL.30_32:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1349
	dispose 0x00000004, 0x00000041, [r31]
_BackupBat_SyncMonitorStateWithDem.1:
	.stack _BackupBat_SyncMonitorStateWithDem.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1494
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1496
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1498
	movhi HIGHW1(#_BackupBat_High_Flag.43), r0, r2
	ld.bu LOWW(#_BackupBat_High_Flag.43)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.31_4
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1500
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.31_4
.BB.LABEL.31_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1502
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.31_4
.BB.LABEL.31_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1504
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	st.h r0, LOWW(#_BackupBat_High_Cnt.39)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1505
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r2
	st.h r0, LOWW(#_BackupBat_Ok_Cnt.41)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1506
	movhi HIGHW1(#_BackupBat_High_Flag.43), r0, r2
	st.b r0, LOWW(#_BackupBat_High_Flag.43)[r2]
.BB.LABEL.31_4:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1510
	movhi HIGHW1(#_BackupBat_Low_Flag.44), r0, r2
	ld.bu LOWW(#_BackupBat_Low_Flag.44)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.31_8
.BB.LABEL.31_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r7
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1512
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.31_8
.BB.LABEL.31_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1514
	ld.bu 0x00000003[r3], r2
	andi 0x0000002D, r2, r0
	bnz9 .BB.LABEL.31_8
.BB.LABEL.31_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1516
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r2
	st.h r0, LOWW(#_BackupBat_Low_Cnt.40)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1517
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r2
	st.h r0, LOWW(#_BackupBat_Ok_Cnt.41)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1518
	movhi HIGHW1(#_BackupBat_Low_Flag.44), r0, r2
	st.b r0, LOWW(#_BackupBat_Low_Flag.44)[r2]
.BB.LABEL.31_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1522
	dispose 0x00000004, 0x00000001, [r31]
_BackupBat_DtcInit:
	.stack _BackupBat_DtcInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1526
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	st.h r0, LOWW(#_BackupBat_High_Cnt.39)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1527
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r2
	st.h r0, LOWW(#_BackupBat_Low_Cnt.40)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1528
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r2
	st.h r0, LOWW(#_BackupBat_Ok_Cnt.41)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1529
	movhi HIGHW1(#_BackupBat_StartCnt.42), r0, r2
	st.b r0, LOWW(#_BackupBat_StartCnt.42)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1530
	movhi HIGHW1(#_BackupBat_High_Flag.43), r0, r2
	st.b r0, LOWW(#_BackupBat_High_Flag.43)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1531
	movhi HIGHW1(#_BackupBat_Low_Flag.44), r0, r2
	st.b r0, LOWW(#_BackupBat_Low_Flag.44)[r2]
	jmp [r31]
_BackupBat_DetectProcess_200ms:
	.stack _BackupBat_DetectProcess_200ms = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1534
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1536
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1537
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1539
	jarl _BackupBat_SyncMonitorStateWithDem.1, r31
	mov r3, r7
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1540
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1543
	movhi HIGHW1(#_BackupBat_StartCnt.42), r0, r2
	ld.bu LOWW(#_BackupBat_StartCnt.42)[r2], r2
	cmp 0x00000004, r2
	bgt9 .BB.LABEL.33_2
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1545
	add 0x00000001, r2
	movhi HIGHW1(#_BackupBat_StartCnt.42), r0, r5
	st.b r2, LOWW(#_BackupBat_StartCnt.42)[r5]
.BB.LABEL.33_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1547
	addi 0xFFFFDCD8, r20, r0
	blt17 .BB.LABEL.33_31
.BB.LABEL.33_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFC180, r20, r0
	bgt17 .BB.LABEL.33_31
.BB.LABEL.33_4:	; bb24
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.33_31
.BB.LABEL.33_5:	; bb36
	movhi HIGHW1(#_BackupBat_StartCnt.42), r0, r2
	ld.bu LOWW(#_BackupBat_StartCnt.42)[r2], r2
	cmp 0x00000005, r2
	blt17 .BB.LABEL.33_31
.BB.LABEL.33_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1552
	ld.w 0x00000000[r3], r2
	movea 0x00000BB9, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.33_11
.BB.LABEL.33_7:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1554
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	ld.hu LOWW(#_BackupBat_High_Cnt.39)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.33_9
.BB.LABEL.33_8:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1556
	add 0x00000001, r2
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r5
	st.h r2, LOWW(#_BackupBat_High_Cnt.39)[r5]
.BB.LABEL.33_9:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r2
	st.h r0, LOWW(#_BackupBat_Low_Cnt.40)[r2]
.BB.LABEL.33_10:	; if_break_bb63
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r2
	st.h r0, LOWW(#_BackupBat_Ok_Cnt.41)[r2]
	br9 .BB.LABEL.33_19
.BB.LABEL.33_11:	; if_else_bb
	movea 0x0000063F, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1561
	cmp r5, r2
	bh9 .BB.LABEL.33_15
.BB.LABEL.33_12:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1564
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r2
	ld.hu LOWW(#_BackupBat_Low_Cnt.40)[r2], r2
	addi 0xFFFFFB51, r2, r0
	bgt9 .BB.LABEL.33_14
.BB.LABEL.33_13:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1566
	add 0x00000001, r2
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r5
	st.h r2, LOWW(#_BackupBat_Low_Cnt.40)[r5]
.BB.LABEL.33_14:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1568
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	st.h r0, LOWW(#_BackupBat_High_Cnt.39)[r2]
	br9 .BB.LABEL.33_10
.BB.LABEL.33_15:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1571
	movea 0xFFFFF9C0, r2, r2
	movea 0x00000578, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.33_30
.BB.LABEL.33_16:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1574
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r2
	ld.hu LOWW(#_BackupBat_Ok_Cnt.41)[r2], r2
	addi 0xFFFFFFE8, r2, r0
	bgt9 .BB.LABEL.33_18
.BB.LABEL.33_17:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1576
	add 0x00000001, r2
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r5
	st.h r2, LOWW(#_BackupBat_Ok_Cnt.41)[r5]
.BB.LABEL.33_18:	; if_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1578
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	st.h r0, LOWW(#_BackupBat_High_Cnt.39)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1579
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r2
	st.h r0, LOWW(#_BackupBat_Low_Cnt.40)[r2]
.BB.LABEL.33_19:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1587
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	ld.hu LOWW(#_BackupBat_High_Cnt.39)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.33_22
.BB.LABEL.33_20:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_BackupBat_High_Flag.43), r0, r2
	ld.bu LOWW(#_BackupBat_High_Flag.43)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.33_22
.BB.LABEL.33_21:	; if_then_bb125
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1590
	movhi HIGHW1(#_BackupBat_High_Flag.43), r0, r2
	st.b r7, LOWW(#_BackupBat_High_Flag.43)[r2]
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1591
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.33_22:	; if_break_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1593
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r2
	ld.hu LOWW(#_BackupBat_Low_Cnt.40)[r2], r2
	addi 0xFFFFFB50, r2, r0
	blt9 .BB.LABEL.33_25
.BB.LABEL.33_23:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_BackupBat_Low_Flag.44), r0, r2
	ld.bu LOWW(#_BackupBat_Low_Flag.44)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.33_25
.BB.LABEL.33_24:	; if_then_bb145
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1596
	movhi HIGHW1(#_BackupBat_Low_Flag.44), r0, r2
	st.b r7, LOWW(#_BackupBat_Low_Flag.44)[r2]
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1597
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.33_25:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1599
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r2
	ld.hu LOWW(#_BackupBat_Ok_Cnt.41)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.33_32
.BB.LABEL.33_26:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1601
	movhi HIGHW1(#_BackupBat_High_Flag.43), r0, r2
	ld.bu LOWW(#_BackupBat_High_Flag.43)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.33_28
.BB.LABEL.33_27:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1603
	movhi HIGHW1(#_BackupBat_High_Flag.43), r0, r2
	st.b r0, LOWW(#_BackupBat_High_Flag.43)[r2]
	mov 0x00000000, r7
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1604
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.33_28:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1606
	movhi HIGHW1(#_BackupBat_Low_Flag.44), r0, r2
	ld.bu LOWW(#_BackupBat_Low_Flag.44)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.33_32
.BB.LABEL.33_29:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1608
	movhi HIGHW1(#_BackupBat_Low_Flag.44), r0, r2
	st.b r0, LOWW(#_BackupBat_Low_Flag.44)[r2]
	mov 0x00000000, r7
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1609
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.33_30:	; if_else_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1583
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	st.h r0, LOWW(#_BackupBat_High_Cnt.39)[r2]
	jr .BB.LABEL.33_9
.BB.LABEL.33_31:	; if_else_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1615
	movhi HIGHW1(#_BackupBat_High_Cnt.39), r0, r2
	st.h r0, LOWW(#_BackupBat_High_Cnt.39)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1616
	movhi HIGHW1(#_BackupBat_Low_Cnt.40), r0, r2
	st.h r0, LOWW(#_BackupBat_Low_Cnt.40)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1617
	movhi HIGHW1(#_BackupBat_Ok_Cnt.41), r0, r2
	st.h r0, LOWW(#_BackupBat_Ok_Cnt.41)[r2]
.BB.LABEL.33_32:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1619
	dispose 0x00000004, 0x00000041, [r31]
_EepromDetect:
	.stack _EepromDetect = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1633
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1644
	movhi HIGHW1(#_EEPROM_StartCnt.57.EepromDetect), r0, r2
	ld.bu LOWW(#_EEPROM_StartCnt.57.EepromDetect)[r2], r2
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1635
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r5
	ld.hu LOWW(#_g_PowerVoltage.1)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1644
	bgt9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1646
	add 0x00000001, r2
	movhi HIGHW1(#_EEPROM_StartCnt.57.EepromDetect), r0, r6
	st.b r2, LOWW(#_EEPROM_StartCnt.57.EepromDetect)[r6]
.BB.LABEL.34_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1649
	addi 0xFFFFDCD8, r5, r0
	blt9 .BB.LABEL.34_22
.BB.LABEL.34_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	addi 0xFFFFC180, r5, r0
	bgt9 .BB.LABEL.34_22
.BB.LABEL.34_4:	; bb27
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_22
.BB.LABEL.34_5:	; bb39
	movhi HIGHW1(#_EEPROM_StartCnt.57.EepromDetect), r0, r2
	ld.bu LOWW(#_EEPROM_StartCnt.57.EepromDetect)[r2], r2
	cmp 0x00000005, r2
	blt9 .BB.LABEL.34_22
.BB.LABEL.34_6:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1655
	movhi HIGHW1(#_g_eepromTest), r0, r2
	ld.bu LOWW(#_g_eepromTest)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.34_8
.BB.LABEL.34_7:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1657
	mov #_NvMBlockRamBuffer48, r7
	movea 0xFFFFFFAA, r0, r2
	st.b r2, 0x00000000[r7]
	movea 0x00000031, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1658
	jarl _NvM_WriteBlock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1663
	movhi HIGHW1(#_g_eepromTest), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_eepromTest)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1666
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.34_11
.BB.LABEL.34_9:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1670
	movhi HIGHW1(#_NvM_MultiJob+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_MultiJob+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.34_15
.BB.LABEL.34_10:	; if_else_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1678
	movhi HIGHW1(#_g_eepromTest), r0, r2
	mov 0x00000002, r5
	st.b r5, LOWW(#_g_eepromTest)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_11:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1682
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.34_13
.BB.LABEL.34_12:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1685
	mov #_NvMBlockRamBuffer48, r7
	movea 0x00000031, r0, r6
	jarl _NvM_ReadBlock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1690
	movhi HIGHW1(#_g_eepromTest), r0, r2
	mov 0x00000003, r5
	st.b r5, LOWW(#_g_eepromTest)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_13:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1693
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.34_17
.BB.LABEL.34_14:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1697
	movhi HIGHW1(#_NvM_MultiJob+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_MultiJob+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.34_16
.BB.LABEL.34_15:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	jarl _NvM_MainFunction, r31
	jarl _Fee_MainFunction, r31
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1734
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_16:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1705
	movhi HIGHW1(#_g_eepromTest), r0, r2
	mov 0x00000004, r5
	st.b r5, LOWW(#_g_eepromTest)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_17:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1709
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.34_22
.BB.LABEL.34_18:	; if_then_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1712
	movhi HIGHW1(#_NvMBlockRamBuffer48), r0, r2
	ld.bu LOWW(#_NvMBlockRamBuffer48)[r2], r2
	addi 0xFFFFFF56, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1724
	bz9 .BB.LABEL.34_21
.BB.LABEL.34_19:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000001, r7
.BB.LABEL.34_20:	; if_then_bb138
	movea 0x00000030, r0, r6
	jarl _Dem_SetEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1734
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_21:	; if_then_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.34_20
.BB.LABEL.34_22:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1734
	dispose 0x00000000, 0x00000001, [r31]
_IsCanNetworkNormal.1:
	.stack _IsCanNetworkNormal.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1738
	prepare 0x00000001, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1740
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1741
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1743
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1745
	ld.w 0x00000004[r3], r2
	cmp 0x00000006, r2
	setf 0x00000002, r5
	add 0xFFFFFFFC, r2
	cmp 0x00000002, r2
	setf 0x00000001, r2
	or r5, r2
	cmp 0x00000000, r2
	cmov 0x0000000A, 0x00000001, r2, r10
	dispose 0x00000008, 0x00000001, [r31]
_TripCounterDetect:
	.stack _TripCounterDetect = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1754
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1756
	jarl _IsCanNetworkNormal.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.36_6
.BB.LABEL.36_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	jarl _ISEPTStCmdOff.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.36_6
.BB.LABEL.36_2:	; bb13
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r2
	addi 0xFFFFDCD8, r2, r0
	blt9 .BB.LABEL.36_6
.BB.LABEL.36_3:	; bb13
	addi 0xFFFFC180, r2, r0
	bgt9 .BB.LABEL.36_6
.BB.LABEL.36_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1758
	movhi HIGHW1(#_g_wakeKl30NetCount.46), r0, r2
	ld.b LOWW(#_g_wakeKl30NetCount.46)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_g_wakeKl30NetCount.46)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1759
	zxb r5
	cmp 0x00000005, r5
	blt9 .BB.LABEL.36_7
.BB.LABEL.36_5:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1761
	movhi HIGHW1(#_g_wakeKl30NetEnable.45), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_wakeKl30NetEnable.45)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1762
	movhi HIGHW1(#_g_wakeKl30NetCount.46), r0, r2
	st.b r0, LOWW(#_g_wakeKl30NetCount.46)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.36_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1767
	movhi HIGHW1(#_g_wakeKl30NetCount.46), r0, r2
	st.b r0, LOWW(#_g_wakeKl30NetCount.46)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1768
	movhi HIGHW1(#_g_wakeKl30NetEnable.45), r0, r2
	st.b r0, LOWW(#_g_wakeKl30NetEnable.45)[r2]
.BB.LABEL.36_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1770
	dispose 0x00000000, 0x00000001, [r31]
_GetTripCounterDetectEnable:
	.stack _GetTripCounterDetectEnable = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1774
	movhi HIGHW1(#_g_wakeKl30NetEnable.45), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1775
	ld.bu LOWW(#_g_wakeKl30NetEnable.45)[r2], r10
	jmp [r31]
_SyncMsgLossDetect:
	.stack _SyncMsgLossDetect = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1781
	prepare 0x00000001, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1784
	st.b r0, 0x0000000B[r3]
	movea 0x0000000B, r3, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1785
	jarl _Dem_GetEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1789
	movhi HIGHW1(#_g_syncMsgLossEnableCount.47), r0, r2
	ld.b LOWW(#_g_syncMsgLossEnableCount.47)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_g_syncMsgLossEnableCount.47)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1790
	zxb r5
	cmp 0x00000005, r5
	blt9 .BB.LABEL.38_3
.BB.LABEL.38_1:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1792
	movhi HIGHW1(#_g_syncMsgLossEnableCount.47), r0, r2
	mov 0x00000005, r5
	st.b r5, LOWW(#_g_syncMsgLossEnableCount.47)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1793
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	mov r3, r7
	movea 0x0000017B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1794
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1805
	movhi HIGHW1(#_g_syncMsgLossCount5000.48), r0, r2
	ld.h LOWW(#_g_syncMsgLossCount5000.48)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_g_syncMsgLossCount5000.48)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1806
	movhi HIGHW1(#_g_syncMsgLossCount2000.49), r0, r5
	st.h r0, LOWW(#_g_syncMsgLossCount2000.49)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1807
	ld.hu LOWW(#_g_syncMsgLossCount5000.48)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	blt9 .BB.LABEL.38_3
.BB.LABEL.38_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1813
	movhi HIGHW1(#_g_syncMsgLossCount5000.48), r0, r2
	movea 0x00000019, r0, r5
	st.h r5, LOWW(#_g_syncMsgLossCount5000.48)[r2]
	mov 0x00000001, r7
	movea 0x0000002F, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1814
	jarl _Dem_SetEventStatus, r31
.BB.LABEL.38_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1842
	dispose 0x0000000C, 0x00000001, [r31]
_SystemTimeMs:
	.stack _SystemTimeMs = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1851
	movhi HIGHW1(#_time), r0, r2
	ld.w LOWW(#_time)[r2], r5
	movea 0x00000032, r5, r5
	st.w r5, LOWW(#_time)[r2]
	jmp [r31]
_GetSystemTimeMs.1:
	.stack _GetSystemTimeMs.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1856
	movhi HIGHW1(#_time), r0, r2
	ld.w LOWW(#_time)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1857
	jmp [r31]
_Send709Message.1:
	.stack _Send709Message.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1874
	prepare 0x00000041, 0x00000010
	movea 0x0000000C, r3, r8
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1877
	jarl _Dem_GetDTCOfEvent, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1878
	st.b r0, 0x0000000B[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1879
	ld.w 0x0000000C[r3], r6
	movea 0x0000000B, r3, r20
	mov r20, r7
	jarl _Dem_DcmGetSeverityOfDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1882
	ld.b 0x00000000[r20], r2
	shl 0x00000004, r2
	ori 0x0000000F, r2, r2
	ori 0x0000FF00, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1883
	zxh r2
	st.w r2, 0x00000000[r3]
	st.w r0, 0x00000004[r3]
	movhi 0x000000FF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1884
	ld.w 0x0000000C[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1885
	and r5, r6
	or r6, r2
	st.w r2, 0x00000000[r3]
	st.w r0, 0x00000004[r3]
	movhi 0x0000FF00, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1886
	ld.w 0x0000000C[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1892
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1887
	shl 0x00000010, r6
	and r5, r6
	or r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1892
	st.w r2, 0x00000000[r3]
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1896
	jarl _Com_SendSignal, r31
	dispose 0x00000010, 0x00000041, [r31]
_Schedule709Message.1:
	.stack _Schedule709Message.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1912
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1914
	jarl _GetSystemTimeMs.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1917
	movhi HIGHW1(#_g_lastSendTime.52), r0, r2
	ld.w LOWW(#_g_lastSendTime.52)[r2], r2
	subr r10, r2
	movea 0x000003E7, r0, r5
	cmp r5, r2
	mov r10, r22
	bh9 .BB.LABEL.42_6
.BB.LABEL.42_1:	; entry.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.42_5
.BB.LABEL.42_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1925
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_g_send709Queue.50, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.42_4
.BB.LABEL.42_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1928
	zxb r2
	mul 0x0000000C, r2, r0
	mov #_g_send709Queue.50, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1929
	st.h r20, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1930
	st.b r21, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1931
	st.w r22, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1932
	movhi HIGHW1(#_g_send709QueueCount.51), r0, r2
	ld.b LOWW(#_g_send709QueueCount.51)[r2], r20
	add 0x00000001, r20
	st.b r20, LOWW(#_g_send709QueueCount.51)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1933
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.42_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	add 0x00000001, r2
.BB.LABEL.42_5:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1923
	andi 0x000000FF, r2, r5
	cmp 0x00000005, r5
	blt9 .BB.LABEL.42_2
	br9 .BB.LABEL.42_7
.BB.LABEL.42_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1940
	mov r20, r6
	mov r21, r7
	jarl _Send709Message.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1941
	movhi HIGHW1(#_g_lastSendTime.52), r0, r2
	st.w r22, LOWW(#_g_lastSendTime.52)[r2]
.BB.LABEL.42_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1943
	dispose 0x00000000, 0x00000071, [r31]
_CheckPending709Message.1:
	.stack _CheckPending709Message.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1945
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1947
	jarl _GetSystemTimeMs.1, r31
	movea 0x000000FF, r0, r2
	mov 0xFFFFFFFF, r5
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1952
	mov r10, r20
	br9 .BB.LABEL.43_6
.BB.LABEL.43_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1955
	andi 0x000000FF, r6, r7
	mul 0x0000000C, r7, r0
	mov #_g_send709Queue.50, r8
	add r7, r8
	ld.bu 0x00000000[r8], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.43_5
.BB.LABEL.43_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movhi HIGHW1(#_g_lastSendTime.52), r0, r7
	ld.w LOWW(#_g_lastSendTime.52)[r7], r7
	movea 0x000003E8, r7, r7
	cmp r7, r20
	bl9 .BB.LABEL.43_5
.BB.LABEL.43_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1957
	andi 0x000000FF, r6, r7
	mul 0x0000000C, r7, r0
	mov #_g_send709Queue.50, r8
	add r7, r8
	ld.w 0x00000008[r8], r7
	subr r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1958
	cmp r5, r7
	ble9 .BB.LABEL.43_5
.BB.LABEL.43_4:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov r7, r5
	mov r6, r2
.BB.LABEL.43_5:	; if_break_bb41
	add 0x00000001, r6
.BB.LABEL.43_6:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1952
	andi 0x000000FF, r6, r7
	cmp 0x00000005, r7
	blt9 .BB.LABEL.43_1
.BB.LABEL.43_7:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1967
	andi 0x000000FF, r2, r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.43_9
.BB.LABEL.43_8:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1969
	sxb r2
	mulh 0x0000000C, r2
	mov #_g_send709Queue.50, r21
	add r2, r21
	ld.bu 0x00000004[r21], r7
	ld.hu 0x00000002[r21], r6
	jarl _Send709Message.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1970
	movhi HIGHW1(#_g_lastSendTime.52), r0, r2
	st.w r20, LOWW(#_g_lastSendTime.52)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1971
	st.b r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1972
	movhi HIGHW1(#_g_send709QueueCount.51), r0, r2
	ld.b LOWW(#_g_send709QueueCount.51)[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, LOWW(#_g_send709QueueCount.51)[r2]
.BB.LABEL.43_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1974
	dispose 0x00000000, 0x00000061, [r31]
_CheckDtcStatusAndSend709:
	.stack _CheckDtcStatusAndSend709 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1978
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1983
	jarl _CheckPending709Message.1, r31
	mov 0x00000001, r20
	br9 .BB.LABEL.44_7
.BB.LABEL.44_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1992
	andi 0x000000FF, r20, r21
	movea 0x00000003, r3, r7
	mov r21, r6
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.44_6
.BB.LABEL.44_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1995
	andi 0x000000FF, r20, r22
	mov #_g_lastDtcStatus.58.CheckDtcStatusAndSend709, r2
	add r2, r22
	ld.bu 0x00000000[r22], r2
	andi 0x00000008, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1996
	ld.bu 0x00000003[r3], r7
	andi 0x00000008, r7, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1998
	bz9 .BB.LABEL.44_5
.BB.LABEL.44_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.44_5
.BB.LABEL.44_4:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2001
	mov r21, r6
	jarl _Schedule709Message.1, r31
.BB.LABEL.44_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2004
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r22]
.BB.LABEL.44_6:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	add 0x00000001, r20
.BB.LABEL.44_7:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 1986
	andi 0x000000FF, r20, r2
	addi 0xFFFFFFC5, r2, r0
	blt9 .BB.LABEL.44_1
.BB.LABEL.44_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2007
	dispose 0x00000004, 0x00000071, [r31]
_GetRvcWakeupDelay:
	.stack _GetRvcWakeupDelay = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2028
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2032
	mov #_NvMBlockRamBuffer46, r7
	movea 0x0000002E, r0, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.45_2
.BB.LABEL.45_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2037
	mov #_NvMBlockRamBuffer46, r2
	ld.bu 0x00000001[r2], r5
	mulhi 0x000003E8, r5, r5
	movhi HIGHW1(#_g_rvcWakeupDelay.53), r0, r6
	st.w r5, LOWW(#_g_rvcWakeupDelay.53)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2038
	ld.bu 0x00000000[r2], r2
	mulhi 0x000003E8, r2, r2
	movhi HIGHW1(#_g_smsWakeupDelay.54), r0, r5
	st.w r2, LOWW(#_g_smsWakeupDelay.54)[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2039
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.45_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2040
	dispose 0x00000000, 0x00000001, [r31]
_PowerWakeUpProcess.1:
	.stack _PowerWakeUpProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2043
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2048
	cmp 0x00000000, r6
	mov r8, r20
	bz9 .BB.LABEL.46_3
.BB.LABEL.46_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	cmp 0x00000006, r6
	bgt9 .BB.LABEL.46_3
.BB.LABEL.46_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2050
	st.w r0, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.46_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2053
	cmp 0x00000009, r6
	bnz9 .BB.LABEL.46_9
.BB.LABEL.46_4:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2055
	addi 0xFFFFFFDF, r7, r0
	bnz9 .BB.LABEL.46_8
.BB.LABEL.46_5:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2057
	jarl _MpuPowerSyncSdkGetMpuSubWakeUpSource, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2058
	zxb r10
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.46_7
.BB.LABEL.46_6:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2060
	movhi HIGHW1(#_g_rvcWakeupDelay.53), r0, r2
	ld.w LOWW(#_g_rvcWakeupDelay.53)[r2], r2
	st.w r2, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.46_7:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2065
	movhi HIGHW1(#_g_smsWakeupDelay.54), r0, r2
	ld.w LOWW(#_g_smsWakeupDelay.54)[r2], r2
	st.w r2, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.46_8:	; if_else_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	ori 0x0000AFC8, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2071
	st.w r2, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.46_9:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2074
	cmp 0x0000000B, r6
	bnz9 .BB.LABEL.46_11
.BB.LABEL.46_10:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov 0x0001D4C0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2076
	st.w r2, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.46_11:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2081
	st.w r0, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
_PmDebugPrint:
	.stack _PmDebugPrint = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2431
	prepare 0x00000001, 0x00000010
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2438
	movhi HIGHW1(#_count.59.PmDebugPrint), r0, r2
	ld.w LOWW(#_count.59.PmDebugPrint)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_count.59.PmDebugPrint)[r2]
	movea 0x0000000C, r3, r8
	movea 0x0000000A, r3, r7
	movea 0x0000000B, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2439
	jarl _PowerManageSdkGetPowerInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2440
	movhi HIGHW1(#_lastPmState.60.PmDebugPrint), r0, r2
	ld.bu LOWW(#_lastPmState.60.PmDebugPrint)[r2], r2
	ld.bu 0x0000000B[r3], r5
	cmp r2, r5
	bz9 .BB.LABEL.47_2
.BB.LABEL.47_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2443
	movhi HIGHW1(#_lastPmState.60.PmDebugPrint), r0, r2
	st.b r5, LOWW(#_lastPmState.60.PmDebugPrint)[r2]
.BB.LABEL.47_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2445
	movhi HIGHW1(#_count.59.PmDebugPrint), r0, r2
	ld.w LOWW(#_count.59.PmDebugPrint)[r2], r2
	movea 0x000003E8, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.47_4
.BB.LABEL.47_3:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2449
	movhi HIGHW1(#_count.59.PmDebugPrint), r0, r2
	st.w r0, LOWW(#_count.59.PmDebugPrint)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2452
	st.w r0, 0x00000004[r3]
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2453
	jarl _BatterySdkGetVoltage, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2455
	jarl _BatterySdkGetBatteySoc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2456
	st.w r0, 0x00000000[r3]
	mov r3, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2457
	jarl _PeripheralHalAdGet, r31
.BB.LABEL.47_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2464
	dispose 0x00000010, 0x00000001, [r31]
_TaskAntDetect100ms:
	.stack _TaskAntDetect100ms = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2479
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2483
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2485
	movhi HIGHW1(#_cnt.61.TaskAntDetect100ms), r0, r2
	ld.b LOWW(#_cnt.61.TaskAntDetect100ms)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_cnt.61.TaskAntDetect100ms)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2486
	movhi HIGHW1(#_MIC_cnt.62.TaskAntDetect100ms), r0, r5
	ld.b LOWW(#_MIC_cnt.62.TaskAntDetect100ms)[r5], r6
	add 0x00000001, r6
	st.b r6, LOWW(#_MIC_cnt.62.TaskAntDetect100ms)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2487
	ld.bu LOWW(#_cnt.61.TaskAntDetect100ms)[r2], r2
	cmp 0x00000002, r2
	blt9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 0
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2489
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2491
	ld.hu 0x00000000[r3], r6
	jarl _ANT5GMAIN_DetectProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2492
	jarl _ANT5G_DIV_DetectProcess_200ms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2493
	jarl _GPS_DetectProcess_200ms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2494
	jarl _LED_DetectProcess_200ms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2495
	jarl _BackupBat_DetectProcess_200ms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2496
	jarl _EepromDetect, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2497
	jarl _SyncMsgLossDetect, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2498
	jarl _CheckDtcStatusAndSend709, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2502
	movhi HIGHW1(#_cnt.61.TaskAntDetect100ms), r0, r2
	st.b r0, LOWW(#_cnt.61.TaskAntDetect100ms)[r2]
.BB.LABEL.48_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2504
	movhi HIGHW1(#_MIC_cnt.62.TaskAntDetect100ms), r0, r2
	ld.bu LOWW(#_MIC_cnt.62.TaskAntDetect100ms)[r2], r2
	cmp 0x0000000A, r2
	blt9 .BB.LABEL.48_4
.BB.LABEL.48_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2506
	jarl _MICIN_DetectProcess_2s, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2507
	movhi HIGHW1(#_MIC_cnt.62.TaskAntDetect100ms), r0, r2
	st.b r0, LOWW(#_MIC_cnt.62.TaskAntDetect100ms)[r2]
.BB.LABEL.48_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2509
	dispose 0x00000004, 0x00000001, [r31]
_TaskKl30Detect100ms:
	.stack _TaskKl30Detect100ms = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2511
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2514
	movhi HIGHW1(#_cnt.63.TaskKl30Detect100ms), r0, r2
	ld.b LOWW(#_cnt.63.TaskKl30Detect100ms)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_cnt.63.TaskKl30Detect100ms)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2515
	zxb r5
	cmp 0x00000002, r5
	blt9 .BB.LABEL.49_2
.BB.LABEL.49_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2517
	movhi HIGHW1(#_g_PowerVoltage.1), r0, r2
	ld.hu LOWW(#_g_PowerVoltage.1)[r2], r6
	jarl _kl30VoltageDTCProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2518
	movhi HIGHW1(#_cnt.63.TaskKl30Detect100ms), r0, r2
	st.b r0, LOWW(#_cnt.63.TaskKl30Detect100ms)[r2]
.BB.LABEL.49_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2520
	dispose 0x00000000, 0x00000001, [r31]
_TaskPowerManageInit:
	.stack _TaskPowerManageInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2522
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2524
	jarl _GetRvcWakeupDelay, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2525
	mov #_g_pmCondg, r6
	jarl _PowerManageSdkInit, r31
	mov 0x00000000, r8
	mov 0x0000000A, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2526
	mov #_g_batterConfig, r6
	jarl _BatterySdkInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2527
	jarl _PowerManageSdkPowerOn, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2528
	jarl _MpuHalStart, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2529
	jarl _ANT5GMAIN_DtcInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2530
	jarl _ANT5G_DIV_DtcInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2531
	jarl _GPS_DtcInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2532
	jarl _MICIN_DtcInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2533
	jarl _LED_DtcInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2534
	jarl _BackupBat_DtcInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_TaskPowerManage:
	.stack _TaskPowerManage = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2537
	prepare 0x00000041, 0x00000000
	mov 0x00000005, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2541
	mov r20, r6
	jarl _PowerManageSdkCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2542
	mov r20, r6
	jarl _PowerManageSdkForceWakeupMpu, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2546
	movhi HIGHW1(#_timeCount.64.TaskPowerManage), r0, r2
	ld.b LOWW(#_timeCount.64.TaskPowerManage)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_timeCount.64.TaskPowerManage)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2547
	zxb r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.51_2
.BB.LABEL.51_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2549
	movhi HIGHW1(#_timeCount.64.TaskPowerManage), r0, r2
	st.b r0, LOWW(#_timeCount.64.TaskPowerManage)[r2]
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2550
	jarl _MpuHalCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2551
	jarl _BatterySdkCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2553
	jarl _PmDebugPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2554
	jarl _kl30DetectProcess.1, r31
.BB.LABEL.51_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2556
	dispose 0x00000000, 0x00000041, [r31]
_DtcGpioInit:
	.stack _DtcGpioInit = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2558
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2560
	movhi 0x0000FFC1, r0, r20
	movea 0x000000A5, r0, r21
	st.w r21, 0x00004C28[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2561
	ld.w 0x00004628[r20], r2
	movea 0xFFFFFBFF, r0, r22
	and r22, r2
	st.w r2, 0x00004628[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2562
	ld.w 0x00004628[r20], r2
	st.w r2, 0x00004628[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2563
	st.w r21, 0x00004C28[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2564
	ld.w 0x00004528[r20], r2
	and r22, r2
	st.w r2, 0x00004528[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2565
	ld.w 0x00004528[r20], r2
	st.w r2, 0x00004528[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2566
	ld.hu 0x00004128[r20], r2
	andi 0x0000FBFF, r2, r2
	st.h r2, 0x00004128[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2567
	ld.h 0x00004128[r20], r2
	st.h r2, 0x00004128[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2568
	ld.hu 0x00000028[r20], r2
	andi 0x0000FBFF, r2, r2
	st.h r2, 0x00000028[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2569
	ld.h 0x00000028[r20], r2
	st.h r2, 0x00000028[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2570
	ld.hu 0x00000328[r20], r2
	andi 0x0000FBFF, r2, r2
	st.h r2, 0x00000328[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2571
	ld.h 0x00000328[r20], r2
	st.h r2, 0x00000328[r20]
	mov 0x00000001, r23
	mov 0x0000000A, r24
	mov 0x00000004, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2572
	mov r25, r6
	mov r24, r7
	mov r23, r8
	jarl _R_PORT_SetGpioOutput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2574
	st.w r21, 0x00004C28[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2575
	ld.w 0x00004628[r20], r2
	movea 0xFFFFFFDF, r0, r5
	and r5, r2
	st.w r2, 0x00004628[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2576
	ld.w 0x00004628[r20], r2
	st.w r2, 0x00004628[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2577
	st.w r21, 0x00004C28[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2578
	ld.w 0x00004528[r20], r2
	and r5, r2
	st.w r2, 0x00004528[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2579
	ld.w 0x00004528[r20], r2
	st.w r2, 0x00004528[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2580
	ld.hu 0x00004128[r20], r2
	andi 0x0000FFDF, r2, r2
	st.h r2, 0x00004128[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2581
	ld.h 0x00004128[r20], r2
	st.h r2, 0x00004128[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2582
	ld.hu 0x00000028[r20], r2
	andi 0x0000FFDF, r2, r2
	st.h r2, 0x00000028[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2583
	ld.h 0x00000028[r20], r2
	st.h r2, 0x00000028[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2584
	ld.hu 0x00000328[r20], r2
	andi 0x0000FFDF, r2, r2
	st.h r2, 0x00000328[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2585
	ld.h 0x00000328[r20], r2
	st.h r2, 0x00000328[r20]
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2586
	mov r25, r6
	mov r23, r8
	jarl _R_PORT_SetGpioOutput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2588
	st.w r21, 0x00004C00[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2589
	ld.w 0x00004600[r20], r2
	movea 0xFFFFBFFF, r0, r5
	and r5, r2
	st.w r2, 0x00004600[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2590
	ld.w 0x00004600[r20], r2
	st.w r2, 0x00004600[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2591
	st.w r21, 0x00004C00[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2592
	ld.w 0x00004500[r20], r2
	and r5, r2
	st.w r2, 0x00004500[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2593
	ld.w 0x00004500[r20], r2
	st.w r2, 0x00004500[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2594
	ld.hu 0x00004100[r20], r2
	andi 0x0000BFFF, r2, r2
	st.h r2, 0x00004100[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2595
	ld.h 0x00004100[r20], r2
	st.h r2, 0x00004100[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2596
	ld.hu 0x00000000[r20], r2
	andi 0x0000BFFF, r2, r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2597
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2598
	ld.hu 0x00000300[r20], r2
	andi 0x0000BFFF, r2, r2
	st.h r2, 0x00000300[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2599
	ld.h 0x00000300[r20], r2
	st.h r2, 0x00000300[r20]
	mov 0x00000000, r25
	mov 0x0000000E, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2600
	mov r25, r6
	mov r23, r8
	jarl _R_PORT_SetGpioOutput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2602
	st.w r21, 0x00004C04[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2603
	ld.w 0x00004604[r20], r2
	movea 0xFFFFF7FF, r0, r5
	and r5, r2
	st.w r2, 0x00004604[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2604
	ld.w 0x00004604[r20], r2
	st.w r2, 0x00004604[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2605
	st.w r21, 0x00004C04[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2606
	ld.w 0x00004504[r20], r2
	and r5, r2
	st.w r2, 0x00004504[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2607
	ld.w 0x00004504[r20], r2
	st.w r2, 0x00004504[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2608
	ld.hu 0x00004104[r20], r2
	andi 0x0000F7FF, r2, r2
	st.h r2, 0x00004104[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2609
	ld.h 0x00004104[r20], r2
	st.h r2, 0x00004104[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2610
	ld.hu 0x00000004[r20], r2
	andi 0x0000F7FF, r2, r2
	st.h r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2611
	ld.h 0x00000004[r20], r2
	st.h r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2612
	ld.hu 0x00000304[r20], r2
	andi 0x0000F7FF, r2, r2
	st.h r2, 0x00000304[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2613
	ld.h 0x00000304[r20], r2
	st.h r2, 0x00000304[r20]
	mov 0x0000000B, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2614
	mov r23, r6
	mov r23, r8
	jarl _R_PORT_SetGpioOutput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2616
	st.w r21, 0x00004C04[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2617
	ld.w 0x00004604[r20], r2
	and r22, r2
	st.w r2, 0x00004604[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2618
	ld.w 0x00004604[r20], r2
	st.w r2, 0x00004604[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2619
	st.w r21, 0x00004C04[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2620
	ld.w 0x00004504[r20], r2
	and r22, r2
	st.w r2, 0x00004504[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2621
	ld.w 0x00004504[r20], r2
	st.w r2, 0x00004504[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2622
	ld.hu 0x00004104[r20], r2
	andi 0x0000FBFF, r2, r2
	st.h r2, 0x00004104[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2623
	ld.h 0x00004104[r20], r2
	st.h r2, 0x00004104[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2624
	ld.hu 0x00000004[r20], r2
	andi 0x0000FBFF, r2, r2
	st.h r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2625
	ld.h 0x00000004[r20], r2
	st.h r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2626
	ld.hu 0x00000304[r20], r2
	andi 0x0000FBFF, r2, r2
	st.h r2, 0x00000304[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2627
	ld.h 0x00000304[r20], r2
	st.h r2, 0x00000304[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/power_manage/taskPowerManage.c", 2628
	mov r23, r6
	mov r24, r7
	mov r25, r8
	jarl _R_PORT_SetGpioOutput, r31
	dispose 0x00000000, 0x00000679, [r31]
	.section .data, data
	.align 2
_g_PowerVoltage.1:
	.ds (2)
_ANT5GMAIN_Short_Cnt.4:
	.ds (1)
_ANT5GMAIN_Open_Cnt.5:
	.ds (1)
_ANT5GMAIN_Ok_Cnt.6:
	.ds (1)
_ANT5GMAIN_StartCnt.7:
	.ds (1)
_ANT5GMAIN_Short_Flag.8:
	.ds (1)
_ANT5GMAIN_Open_Flag.9:
	.ds (1)
	.align 4
_g_voltageDiagState.10:
	.dw 0x00000002
	.align 4
_g_diagRecoverTimerCount.11:
	.ds (4)
	.align 4
_g_diagFaultTimerCount.12:
	.ds (4)
_GPS_Short_Cnt.19:
	.ds (1)
_GPS_Open_Cnt.20:
	.ds (1)
_GPS_Ok_Cnt.21:
	.ds (1)
_GPS_StartCnt.22:
	.ds (1)
_GPS_Short_Flag.23:
	.ds (1)
_GPS_Open_Flag.24:
	.ds (1)
_MICIN_ShortGnd_Cnt.25:
	.ds (1)
_MICIN_Open_Cnt.26:
	.ds (1)
_MICIN_ShortBat_Cnt.27:
	.ds (1)
_MICIN_Ok_Cnt.28:
	.ds (1)
_MICIN_StartCnt.29:
	.ds (1)
_MICIN_ShortGnd_Flag.30:
	.ds (1)
_MICIN_Open_Flag.31:
	.ds (1)
_MICIN_ShortBat_Flag.32:
	.ds (1)
_LED_ShortGnd_Cnt.33:
	.ds (1)
_LED_ShortBat_Cnt.34:
	.ds (1)
_LED_Ok_Cnt.35:
	.ds (1)
_LED_StartCnt.36:
	.ds (1)
_LED_ShortGnd_Flag.37:
	.ds (1)
_LED_ShortBat_Flag.38:
	.ds (1)
	.align 2
_BackupBat_High_Cnt.39:
	.ds (2)
	.align 2
_BackupBat_Low_Cnt.40:
	.ds (2)
	.align 2
_BackupBat_Ok_Cnt.41:
	.ds (2)
_BackupBat_StartCnt.42:
	.ds (1)
_BackupBat_High_Flag.43:
	.ds (1)
_BackupBat_Low_Flag.44:
	.ds (1)
_g_eepromTest:
	.ds (1)
_g_wakeKl30NetEnable.45:
	.ds (1)
_g_wakeKl30NetCount.46:
	.ds (1)
_g_syncMsgLossEnableCount.47:
	.ds (1)
	.align 2
_g_syncMsgLossCount5000.48:
	.ds (2)
	.align 2
_g_syncMsgLossCount2000.49:
	.ds (2)
	.align 4
_time:
	.ds (4)
	.align 4
_g_send709Queue.50:
	.ds (60)
_g_send709QueueCount.51:
	.ds (1)
	.align 4
_g_lastSendTime.52:
	.ds (4)
	.align 4
_g_rvcWakeupDelay.53:
	.dw 0x00007530
	.align 4
_g_smsWakeupDelay.54:
	.dw 0x0000AFC8
_adcCount.55.kl30DetectProcess.1:
	.ds (1)
_EEPROM_StartCnt.57.EepromDetect:
	.ds (1)
	.align 4
_count.59.PmDebugPrint:
	.ds (4)
_lastPmState.60.PmDebugPrint:
	.ds (1)
_cnt.61.TaskAntDetect100ms:
	.ds (1)
_MIC_cnt.62.TaskAntDetect100ms:
	.ds (1)
_cnt.63.TaskKl30Detect100ms:
	.ds (1)
	.align 4
_adcValueBuffer.56.kl30DetectProcess.1:
	.ds (20)
_g_lastDtcStatus.58.CheckDtcStatusAndSend709:
	.ds (59)
	.section .const, const
	.align 2
_g_antDetectCfg.2:
	.dhw 0x0019
	.dhw 0x001A
	.dhw 0x0003
	.dhw 0x001D
	.dhw 0x001E
	.dhw 0x0001
	.dhw 0x001F
	.dhw 0x0020
	.dhw 0x0002
	.align 2
_g_diagMaxVolage.13:
	.dhw 0x3E80
	.align 2
_g_diagMinVolage.14:
	.dhw 0x2328
	.align 2
_g_diagMaxRecoverVolage.15:
	.dhw 0x3C8C
	.align 2
_g_diagMinRecoverVolage.16:
	.dhw 0x251C
	.align 4
_g_diagRecoverTime.17:
	.dw 0x000003E8
	.align 4
_g_diagFaultTime.18:
	.dw 0x000003E8
	.align 4
_g_batterConfig:
	.dhw 0x0055
	.dhw 0x0046
	.dhw 0x0CE4
	.dhw 0x00C8
	.db 0x1E
	.ds (3)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.align 4
_g_pmCondg:
	.db 0x01
	.db 0x01
	.db 0x14
	.ds (1)
	.dw #_PowerWakeUpProcess.1
	.dw 0x00000258
	.db 0x01
	.db 0x01
	.db 0x01
	.db 0x01
	.section .bss, bss
_g_antDetectState.3:
	.ds (18)
_timeCount.64.TaskPowerManage:
	.ds (1)
