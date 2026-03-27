#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\powerManageSdk.c -oDefaultBuild\powerManageSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_91d53f836b364b1fbecd019918b7a40112rqxcih.ymf
#@	compiled at Fri Mar 27 09:50:50 2026

	.file "..\..\Srcode\sdk\source\powerManageSdk.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvMBlockRamBuffer29
	.extern _NvMBlockRamBuffer49
	.public _closeFlag, 1
	.public _SetListenTimer
	.public _ResetListenTimer
	.extern _NvM_ReadBlock
	.extern _LogHalPrint
	.extern _GetVehicleInfor
	.extern _NvM_WriteBlock
	.public _GetStoredUserMode
	.public _PowerManageSdkSetWakeupSource
	.public _PowerManageSdkInit
	.extern _Dio_ReadChannel
	.extern _APP_RequestNetWork
	.extern _APP_ClearWakeupHold
	.extern _APP_ReleaseNetWork
	.extern _MpuPowerSyncSdkGetNadModuleStatus
	.public _APP_SetWakeupSource
	.public _APP_GotoSleep
	.extern _CanNm_GetState
	.extern _MpuPowerSyncSdkGetSleepDisableState
	.extern _PeripheralHalGetKl30Status
	.extern _PeripheralHalMcuHardReset
	.extern _MpuPowerSyncSdkSetSleep
	.extern _MpuPowerSyncSdkGetSleepStatus
	.extern _MpuHalSetMode
	.extern _PeripheralHalSetMode
	.extern _TimerHalPrepareSleep
	.extern _TimerHalSetMode
	.extern _APP_AllowedGodown
	.extern _APP_SetWakeupHold
	.extern _MpuPowerSyncSdkSetWake
	.extern _TimerHalGetSleepDuration
	.extern _MpuPowerSyncSdkGetWakeStatus
	.public _PowerManageSdkCycleProcess
	.public _PowerManageSdkPowerOn
	.extern _vPortEnterCritical
	.extern _vPortExitCritical
	.public _PowerManageSdkSetWakeDelay
	.public _PowerManageSdkSetTestMode
	.public _PowerManageSdkGetPowerInfo
	.public _PowerManageSdkForceWakeupMpu
	.public _PowerManageSdkTimerDecrement

	.section .text, text
_SetListenTimer:
	.stack _SetListenTimer = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 98
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 102
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00015180, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 104
	mul r2, r6, r0
	br9 .BB.LABEL.1_6
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 106
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 108
	mulhi 0x00000E10, r6, r6
	br9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 110
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 112
	mulhi 0x0000003C, r6, r6
.BB.LABEL.1_6:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 119
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r2
	st.w r6, LOWW(#_g_pmManage.1+0x0000017C)[r2]
.BB.LABEL.1_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 120
	jmp [r31]
_ResetListenTimer:
	.stack _ResetListenTimer = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 123
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 127
	mov #_NvMBlockRamBuffer29, r7
	movea 0x0000001D, r0, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 129
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r2
	mov 0x00127500, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000017C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 130
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 133
	mov #_NvMBlockRamBuffer29, r2
	ld.bu 0x00000000[r2], r5
	cmp 0x00000000, r5
	mov 0x00127500, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 135
	cmov 0x00000002, 0x00000000, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 138
	ld.bu 0x00000005[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00015180, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 140
	mul r2, r5, r0
	br9 .BB.LABEL.2_9
.BB.LABEL.2_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 142
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 144
	movhi HIGHW1(#_NvMBlockRamBuffer29), r0, r2
	ld.bu LOWW(#_NvMBlockRamBuffer29)[r2], r2
	mulhi 0x00000E10, r2, r5
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 146
	cmp 0x00000002, r2
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_else_bb32.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov r6, r5
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 148
	movhi HIGHW1(#_NvMBlockRamBuffer29), r0, r5
	ld.bu LOWW(#_NvMBlockRamBuffer29)[r5], r5
	mulhi 0x0000003C, r5, r5
.BB.LABEL.2_9:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 151
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r2
	st.w r5, LOWW(#_g_pmManage.1+0x0000017C)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_GetListenTimerParam.1:
	.stack _GetListenTimerParam.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 155
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 159
	mov #_NvMBlockRamBuffer49, r7
	movea 0x00000031, r0, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 165
	mov #_NvMBlockRamBuffer49, r2
	ld.bu 0x00000001[r2], r5
	ld.b 0x00000000[r2], r20
	ld.bu 0x00000002[r2], r6
	ld.bu 0x00000003[r2], r2
	shl 0x00000018, r20
	shl 0x00000010, r5
	or r5, r20
	shl 0x00000008, r6
	or r6, r20
	or r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 170
	mov #.STR.1, r6
	mov r20, r7
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 171
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00127500, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 172
	dispose 0x00000000, 0x00000041, [r31]
_SaveListenTimerParam.1:
	.stack _SaveListenTimerParam.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 174
	prepare 0x00000001, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 180
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x0000017C)[r2], r5
	shr 0x00000018, r5
	mov #_NvMBlockRamBuffer49, r6
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 181
	ld.w LOWW(#_g_pmManage.1+0x0000017C)[r2], r5
	shr 0x00000010, r5
	st.b r5, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 182
	ld.w LOWW(#_g_pmManage.1+0x0000017C)[r2], r5
	shr 0x00000008, r5
	st.b r5, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 183
	ld.w LOWW(#_g_pmManage.1+0x0000017C)[r2], r2
	st.b r2, 0x00000003[r6]
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 185
	jarl _GetVehicleInfor, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 187
	ld.bu 0x00000004[r3], r2
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov #_NvMBlockRamBuffer49, r7
	st.b r2, 0x00000004[r7]
	movea 0x00000031, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 194
	jarl _NvM_WriteBlock, r31
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000001, [r31]
_GetStoredUserMode:
	.stack _GetStoredUserMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 201
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 205
	mov #_NvMBlockRamBuffer49, r7
	movea 0x00000031, r0, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 207
	movhi HIGHW1(#_NvMBlockRamBuffer49+0x00000004), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 209
	ld.bu LOWW(#_NvMBlockRamBuffer49+0x00000004)[r2], r10
	cmp 0x00000006, r10
	ble9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000001, r10
.BB.LABEL.5_3:	; if_break_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 216
	dispose 0x00000000, 0x00000001, [r31]
_PowerManageSdkSetWakeupSource:
	.stack _PowerManageSdkSetWakeupSource = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 218
	movhi HIGHW1(#_g_pmManage.1+0x00000160), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 220
	st.b r6, LOWW(#_g_pmManage.1+0x00000160)[r2]
	jmp [r31]
_PowerManageSdkInit:
	.stack _PowerManageSdkInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 223
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 225
	cmp 0x00000000, r6
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 233
	ld.bu 0x00000002[r6], r2
	mov #_g_pmManage.1, r20
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 234
	st.w r6, 0x00000184[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 235
	st.w r0, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 236
	st.b r0, 0x00000160[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 237
	st.w r0, 0x00000164[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 238
	st.b r0, 0x0000015E[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 239
	st.b r0, 0x0000015F[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 240
	st.b r0, 0x0000015D[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 241
	st.b r0, 0x0000016C[r20]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 242
	st.b r2, 0x00000011[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 243
	st.b r0, 0x00000161[r20]
	mov 0x0001D4C0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 244
	st.w r2, 0x00000178[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 245
	jarl _GetListenTimerParam.1, r31
	st.w r10, 0x0000017C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 246
	st.b r0, 0x00000180[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 248
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 254
	dispose 0x00000000, 0x00000041, [r31]
_WakeDelayProcess.1:
	.stack _WakeDelayProcess.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 256
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 262
	movhi HIGHW1(#_g_pmManage.1+0x00000008), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x00000008)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 264
	jarl [r2], r31
.BB.LABEL.8_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 266
	dispose 0x00000000, 0x00000001, [r31]
_PmAwakeInitProcess.1:
	.stack _PmAwakeInitProcess.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 268
	movhi HIGHW1(#_g_pmManage.1+0x00000011), r0, r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 270
	st.b r5, LOWW(#_g_pmManage.1+0x00000011)[r2]
	jmp [r31]
_PmDetectWakeupSourceByIo.1:
	.stack _PmDetectWakeupSourceByIo.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 278
	prepare 0x00000001, 0x00000000
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 280
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_2:	; if_break_bb
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 290
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_break_bb.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_4:	; if_break_bb12
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 295
	jarl _Dio_ReadChannel, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_break_bb12.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	movea 0x00000011, r0, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_6:	; if_break_bb20
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 300
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; if_break_bb20.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x0000000F, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_8:	; if_break_bb28
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 305
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_9:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 310
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_12
.BB.LABEL.10_10:	; if_break_bb36.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x0000000E, r10
.BB.LABEL.10_11:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 316
	zxb r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_12:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 315
	dispose 0x00000000, 0x00000001, [r31]
_PmNmAllStart.1:
	.stack _PmNmAllStart.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 318
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 320
	jarl _APP_RequestNetWork, r31
	dispose 0x00000000, 0x00000001, [r31]
_PmNmGotoSleepMode.1:
	.stack _PmNmGotoSleepMode.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 323
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 325
	jarl _APP_ClearWakeupHold, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 326
	jarl _APP_ReleaseNetWork, r31
	dispose 0x00000000, 0x00000001, [r31]
_PmMpuStartIsFinished.1:
	.stack _PmMpuStartIsFinished.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 398
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 404
	jarl _MpuPowerSyncSdkGetNadModuleStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 408
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 410
	dispose 0x00000000, 0x00000001, [r31]
_APP_SetWakeupSource:
	.stack _APP_SetWakeupSource = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 471
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 473
	jarl _PowerManageSdkSetWakeupSource, r31
	dispose 0x00000000, 0x00000001, [r31]
_APP_GotoSleep:
	.stack _APP_GotoSleep = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 479
	movhi HIGHW1(#_closeFlag), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_closeFlag)[r2]
	jmp [r31]
_PmStatePowerOnProcess.1:
	.stack _PmStatePowerOnProcess.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 482
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 484
	movhi HIGHW1(#_g_pmManage.1+0x00000168), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x00000168)[r2], r5
	add r6, r5
	st.w r5, LOWW(#_g_pmManage.1+0x00000168)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 485
	cmp 0x0000000A, r5
	bl9 .BB.LABEL.16_4
.BB.LABEL.16_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 489
	movhi HIGHW1(#_g_pmManage.1+0x00000168), r0, r2
	st.w r0, LOWW(#_g_pmManage.1+0x00000168)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 490
	jarl _PmMpuStartIsFinished.1, r31
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 495
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 500
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
.BB.LABEL.16_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 502
	dispose 0x00000000, 0x00000001, [r31]
_PmStateNmpuSleep.1:
	.stack _PmStateNmpuSleep.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 504
	prepare 0x00000001, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 506
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 507
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 509
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 510
	ld.w 0x00000004[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 512
	mov #_g_pmManage.1, r2
	mov 0x00000004, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 513
	st.w r0, 0x00000168[r2]
	dispose 0x00000008, 0x00000001, [r31]
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 515
	jarl _PmMpuStartIsFinished.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 517
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x0000000A, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
.BB.LABEL.17_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 519
	dispose 0x00000008, 0x00000001, [r31]
_PmStateNmpuWake.1:
	.stack _PmStateNmpuWake.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 521
	prepare 0x00000001, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 523
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 524
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 526
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 527
	ld.w 0x00000004[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 529
	mov #_g_pmManage.1, r2
	mov 0x00000005, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 530
	st.w r0, 0x00000168[r2]
	dispose 0x00000008, 0x00000001, [r31]
.BB.LABEL.18_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 532
	jarl _PmMpuStartIsFinished.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 534
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x00000007, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
.BB.LABEL.18_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 536
	dispose 0x00000008, 0x00000001, [r31]
_PmStateNmpuDelay.1:
	.stack _PmStateNmpuDelay.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 538
	prepare 0x00000041, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 540
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 541
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 543
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 544
	ld.w 0x00000004[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 546
	mov #_g_pmManage.1, r8
	mov 0x00000004, r20
	st.w r20, 0x0000000C[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 547
	add 0x00000004, r8
	mov 0x00000000, r7
	mov 0x0000000A, r6
	jarl _WakeDelayProcess.1, r31
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.19_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 549
	jarl _PmMpuStartIsFinished.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 551
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r20
	mov 0x00000007, r2
	st.w r2, LOWW(#_g_pmManage.1+0x0000000C)[r20]
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.19_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 553
	mov #_g_pmManage.1, r2
	ld.w 0x00000168[r2], r5
	ld.w 0x00000004[r2], r2
	cmp r2, r5
	bl9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 555
	jarl _PmNmGotoSleepMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 556
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r5
	mov 0x00000002, r20
	st.w r20, LOWW(#_g_pmManage.1+0x0000000C)[r5]
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.19_6:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 560
	add r20, r5
	movhi HIGHW1(#_g_pmManage.1+0x00000168), r0, r2
	st.w r5, LOWW(#_g_pmManage.1+0x00000168)[r2]
	dispose 0x00000008, 0x00000041, [r31]
_PmStateWakeProcess.1:
	.stack _PmStateWakeProcess.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 611
	prepare 0x00000001, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 613
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 614
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 616
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 617
	movhi HIGHW1(#_g_pmManage.1+0x0000015E), r0, r2
	ld.bu LOWW(#_g_pmManage.1+0x0000015E)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.20_4
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 619
	movhi HIGHW1(#_g_pmManage.1+0x0000015F), r0, r2
	ld.bu LOWW(#_g_pmManage.1+0x0000015F)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.20_7
.BB.LABEL.20_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x0000000A, r5
.BB.LABEL.20_3:	; if_then_bb13
	mov #_g_pmManage.1, r2
	st.w r5, 0x0000000C[r2]
	st.w r0, 0x00000168[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 640
	dispose 0x00000008, 0x00000001, [r31]
.BB.LABEL.20_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 625
	jarl _MpuPowerSyncSdkGetSleepDisableState, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_6
.BB.LABEL.20_5:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 627
	jarl _PmNmAllStart.1, r31
	dispose 0x00000008, 0x00000001, [r31]
.BB.LABEL.20_6:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000008, r5
	br9 .BB.LABEL.20_3
.BB.LABEL.20_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 640
	dispose 0x00000008, 0x00000001, [r31]
_PmStateWakeDelayProcess.1:
	.stack _PmStateWakeDelayProcess.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 642
	prepare 0x00000041, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 644
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 645
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 647
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 648
	jarl _MpuPowerSyncSdkGetSleepDisableState, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 650
	mov #_g_pmManage.1, r2
	mov 0x00000007, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 651
	st.w r0, 0x00000168[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 652
	jarl _PmNmAllStart.1, r31
	br9 .BB.LABEL.21_8
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 672
	jarl _PeripheralHalGetKl30Status, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 674
	mov #_g_pmManage.1, r2
	ld.w 0x00000170[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000170[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 675
	ld.w 0x00000184[r2], r2
	ld.w 0x00000008[r2], r2
	cmp r2, r5
	bl9 .BB.LABEL.21_8
.BB.LABEL.21_4:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 677
	jarl _PmNmGotoSleepMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 678
	mov #_g_pmManage.1, r2
	st.w r0, 0x00000168[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 679
	st.w r0, 0x00000170[r2]
	mov 0x00000009, r5
	br9 .BB.LABEL.21_7
.BB.LABEL.21_5:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 683
	ld.w 0x00000004[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 685
	jarl _PmNmGotoSleepMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 686
	mov #_g_pmManage.1, r2
	st.w r0, 0x00000168[r2]
	mov 0x0000000A, r5
.BB.LABEL.21_7:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	st.w r5, 0x0000000C[r2]
.BB.LABEL.21_8:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 690
	mov #_g_pmManage.1, r2
	ld.w 0x00000168[r2], r5
	ld.w 0x00000004[r2], r2
	cmp r2, r5
	bl9 .BB.LABEL.21_10
.BB.LABEL.21_9:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 692
	jarl _PmNmGotoSleepMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 693
	mov #_g_pmManage.1, r5
	st.w r0, 0x00000168[r5]
	mov 0x00000009, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 694
	st.w r20, 0x0000000C[r5]
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.21_10:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 698
	add r20, r5
	movhi HIGHW1(#_g_pmManage.1+0x00000168), r0, r2
	st.w r5, LOWW(#_g_pmManage.1+0x00000168)[r2]
	dispose 0x00000008, 0x00000041, [r31]
_PmStateCheckNmStatusProcess.1:
	.stack _PmStateCheckNmStatusProcess.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 702
	prepare 0x00000001, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 706
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 707
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 709
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 710
	ld.w 0x00000004[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 712
	mov #_g_pmManage.1, r2
	mov 0x0000000A, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 713
	st.w r0, 0x00000168[r2]
	dispose 0x00000008, 0x00000001, [r31]
.BB.LABEL.22_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 725
	jarl _MpuPowerSyncSdkGetSleepDisableState, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.22_4
.BB.LABEL.22_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 727
	mov #_g_pmManage.1, r2
	mov 0x00000007, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 728
	st.w r0, 0x00000168[r2]
	mov 0x00000009, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 729
	st.b r5, 0x00000160[r2]
.BB.LABEL.22_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 772
	dispose 0x00000008, 0x00000001, [r31]
_PmStatePreSleepNoticeProcess.1:
	.stack _PmStatePreSleepNoticeProcess.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 810
	prepare 0x00000041, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 812
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 813
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 815
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 816
	jarl _MpuPowerSyncSdkGetSleepDisableState, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 818
	mov #_g_pmManage.1, r2
	mov 0x00000007, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 819
	st.w r0, 0x00000168[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 820
	jarl _PmNmAllStart.1, r31
.BB.LABEL.23_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 825
	mov #_g_pmManage.1, r2
	st.b r0, 0x00000011[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 826
	st.w r0, 0x00000168[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 828
	ld.w 0x00000178[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 830
	jarl _SaveListenTimerParam.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 831
	mov #.STR.1739, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 832
	mov #.STR.1740, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 833
	mov #.STR.1741, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 834
	jarl _PeripheralHalMcuHardReset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 835
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.23_4:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 847
	mov #_g_pmManage.1, r20
	st.b r0, 0x00000180[r20]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 849
	jarl _MpuPowerSyncSdkSetSleep, r31
	mov 0x0000000B, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 850
	st.w r2, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 851
	mov #.STR.1742, r6
	jarl _LogHalPrint, r31
	dispose 0x00000008, 0x00000041, [r31]
_PmStatePreSleepWaitProcess.1:
	.stack _PmStatePreSleepWaitProcess.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 855
	prepare 0x00000061, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 863
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 864
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 869
	jarl _MpuPowerSyncSdkGetSleepStatus, r31
	mov r10, r21
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 871
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 872
	movhi HIGHW1(#_g_pmManage.1+0x00000168), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x00000168)[r2], r5
	add r20, r5
	st.w r5, LOWW(#_g_pmManage.1+0x00000168)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 873
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 886
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x0000000C, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
.BB.LABEL.24_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 890
	jarl _MpuPowerSyncSdkGetSleepDisableState, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.24_4
.BB.LABEL.24_3:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 892
	mov #_g_pmManage.1, r20
	mov 0x00000001, r2
	st.b r2, 0x00000011[r20]
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 894
	st.b r6, 0x00000160[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 897
	jarl _PmAwakeInitProcess.1, r31
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 898
	st.w r2, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 900
	st.w r0, 0x00000168[r20]
.BB.LABEL.24_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 943
	dispose 0x00000008, 0x00000061, [r31]
_PmStateMcuSleepProcess.1:
	.stack _PmStateMcuSleepProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 945
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 948
	mov r20, r6
	jarl _MpuHalSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 950
	mov r20, r6
	jarl _PeripheralHalSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 952
	mov #_g_pmManage.1, r2
	st.w r0, 0x00000168[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 953
	st.w r0, 0x00000170[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 954
	st.b r0, 0x00000160[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 955
	ld.bu 0x00000180[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 957
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x0000017C)[r2], r6
	jarl _TimerHalPrepareSleep, r31
.BB.LABEL.25_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 959
	jarl _TimerHalSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 964
	jarl _APP_AllowedGodown, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 965
	movhi HIGHW1(#_closeFlag), r0, r2
	st.b r0, LOWW(#_closeFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 966
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x0000000D, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
	dispose 0x00000000, 0x00000041, [r31]
_PmStateCheckWakeupSourceProcess.1:
	.stack _PmStateCheckWakeupSourceProcess.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 969
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 976
	movhi HIGHW1(#_g_pmManage.1+0x00000160), r0, r2
	ld.bu LOWW(#_g_pmManage.1+0x00000160)[r2], r10
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 978
	jarl _PmDetectWakeupSourceByIo.1, r31
	movhi HIGHW1(#_g_pmManage.1+0x00000160), r0, r2
	st.b r10, LOWW(#_g_pmManage.1+0x00000160)[r2]
.BB.LABEL.26_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 981
	cmp 0x00000000, r10
	bz9 .BB.LABEL.26_13
.BB.LABEL.26_3:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 985
	jarl _APP_SetWakeupHold, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 989
	movhi HIGHW1(#_g_pmManage.1+0x00000160), r0, r20
	ld.bu LOWW(#_g_pmManage.1+0x00000160)[r20], r7
	mov #.STR.1797, r6
	jarl _LogHalPrint, r31
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 990
	mov r21, r6
	jarl _TimerHalSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 992
	mov r21, r6
	jarl _MpuHalSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 994
	mov r21, r6
	jarl _PeripheralHalSetMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 996
	ld.bu LOWW(#_g_pmManage.1+0x00000160)[r20], r6
	cmp 0x00000009, r6
	bnz9 .BB.LABEL.26_5
.BB.LABEL.26_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 999
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x0000000F, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1000
	jarl _MpuPowerSyncSdkSetWake, r31
	br9 .BB.LABEL.26_9
.BB.LABEL.26_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1002
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.26_7
.BB.LABEL.26_6:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1004
	mov #_g_pmManage.1, r2
	mov 0x0000000E, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1005
	st.w r0, 0x00000168[r2]
	br9 .BB.LABEL.26_9
.BB.LABEL.26_7:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1010
	jarl _PmAwakeInitProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1011
	mov #_g_pmManage.1, r20
	mov 0x00000008, r2
	st.w r2, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1012
	ld.bu 0x00000160[r20], r6
	jarl _MpuPowerSyncSdkSetWake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1013
	ld.bu 0x00000161[r20], r7
	ld.bu 0x00000160[r20], r6
	addi 0x00000004, r20, r8
	jarl _WakeDelayProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1014
	st.w r0, 0x00000168[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1015
	ld.bu 0x00000160[r20], r2
	cmp 0x0000000E, r2
	bz9 .BB.LABEL.26_9
.BB.LABEL.26_8:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1017
	jarl _APP_RequestNetWork, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1018
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x00000007, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
.BB.LABEL.26_9:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1022
	movhi HIGHW1(#_g_pmManage.1+0x00000180), r0, r2
	ld.bu LOWW(#_g_pmManage.1+0x00000180)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.26_13
.BB.LABEL.26_10:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1025
	jarl _TimerHalGetSleepDuration, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1026
	mov #.STR.1798, r6
	mov r20, r7
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1029
	mov #_g_pmManage.1, r2
	ld.w 0x00000178[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1035
	mov r5, r6
	sub r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1029
	cmp r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1035
	cmov 0x0000000B, 0x00000000, r6, r5
	st.w r5, 0x00000178[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1038
	ld.w 0x0000017C[r2], r2
	cmp r2, r20
	bnh9 .BB.LABEL.26_12
.BB.LABEL.26_11:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1040
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r2
	st.w r0, LOWW(#_g_pmManage.1+0x0000017C)[r2]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.26_12:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1044
	sub r20, r2
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r5
	st.w r2, LOWW(#_g_pmManage.1+0x0000017C)[r5]
.BB.LABEL.26_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1047
	dispose 0x00000000, 0x00000061, [r31]
_PmStatePreCheckCanProcess.1:
	.stack _PmStatePreCheckCanProcess.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1049
	prepare 0x00000041, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1055
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1056
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000004, r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1066
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1067
	jarl _MpuPowerSyncSdkGetSleepDisableState, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.27_3
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000007, r2
.BB.LABEL.27_2:	; if_then_bb
	mov #_g_pmManage.1, r20
	st.w r2, 0x0000000C[r20]
	ld.bu 0x00000160[r20], r6
	jarl _MpuPowerSyncSdkSetWake, r31
	st.w r0, 0x00000168[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1104
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.27_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1077
	ld.w 0x00000004[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0x00000008, r2
	br9 .BB.LABEL.27_2
.BB.LABEL.27_5:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1093
	movhi HIGHW1(#_g_pmManage.1+0x00000168), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x00000168)[r2], r2
	movea 0x000001F3, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1096
	add r20, r2
	movhi HIGHW1(#_g_pmManage.1+0x00000168), r0, r5
	st.w r2, LOWW(#_g_pmManage.1+0x00000168)[r5]
	dispose 0x00000008, 0x00000041, [r31]
.BB.LABEL.27_7:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1101
	jarl _APP_ClearWakeupHold, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1102
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x0000000C, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
	dispose 0x00000008, 0x00000041, [r31]
_PmStateGetMpuWakeSourceProcess.1:
	.stack _PmStateGetMpuWakeSourceProcess.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1106
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1111
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1115
	jarl _MpuPowerSyncSdkGetWakeStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1117
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1120
	ld.b 0x00000000[r2], r2
	mov #_g_pmManage.1, r20
	st.b r2, 0x00000161[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1123
	jarl _APP_RequestNetWork, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1126
	ld.bu 0x00000160[r20], r6
	jarl _PmAwakeInitProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1127
	ld.bu 0x00000161[r20], r7
	ld.bu 0x00000160[r20], r6
	addi 0x00000004, r20, r8
	jarl _WakeDelayProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1128
	st.w r0, 0x00000168[r20]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1129
	st.w r2, 0x0000000C[r20]
.BB.LABEL.28_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1131
	dispose 0x00000004, 0x00000041, [r31]
_PowerManageSdkCycleProcess:
	.stack _PowerManageSdkCycleProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1133
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1135
	mov #_g_pmManage.1, r2
	ld.w 0x00000178[r2], r5
	add r6, r5
	st.w r5, 0x00000178[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1136
	ld.w 0x0000017C[r2], r5
	add r6, r5
	st.w r5, 0x0000017C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1138
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.29_28
.BB.LABEL.29_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1142
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1144
	jarl _PmStatePowerOnProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_3:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1146
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1148
	jarl _PmStateNmpuSleep.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_5:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1150
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.29_7
.BB.LABEL.29_6:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1152
	jarl _PmStateNmpuWake.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_7:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1154
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.29_9
.BB.LABEL.29_8:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1156
	jarl _PmStateNmpuDelay.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_9:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1158
	cmp 0x00000006, r2
	bz9 .BB.LABEL.29_28
.BB.LABEL.29_10:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1166
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.29_12
.BB.LABEL.29_11:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1168
	jarl _PmStateWakeProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_12:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1170
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.29_14
.BB.LABEL.29_13:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1172
	jarl _PmStateWakeDelayProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1174
	cmp 0x00000009, r2
	bnz9 .BB.LABEL.29_16
.BB.LABEL.29_15:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1176
	jarl _PmStateCheckNmStatusProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_16:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1178
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.29_18
.BB.LABEL.29_17:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1180
	jarl _PmStatePreSleepNoticeProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_18:	; if_else_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1182
	cmp 0x0000000B, r2
	bnz9 .BB.LABEL.29_20
.BB.LABEL.29_19:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1184
	jarl _PmStatePreSleepWaitProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_20:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1186
	cmp 0x0000000C, r2
	bnz9 .BB.LABEL.29_22
.BB.LABEL.29_21:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1188
	jarl _PmStateMcuSleepProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_22:	; if_else_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1190
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.29_24
.BB.LABEL.29_23:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1192
	jarl _PmStateCheckWakeupSourceProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_24:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1194
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.29_26
.BB.LABEL.29_25:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1196
	jarl _PmStatePreCheckCanProcess.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_26:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1198
	cmp 0x0000000F, r2
	bnz9 .BB.LABEL.29_28
.BB.LABEL.29_27:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1200
	jarl _PmStateGetMpuWakeSourceProcess.1, r31
.BB.LABEL.29_28:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1206
	dispose 0x00000000, 0x00000001, [r31]
_PowerManageSdkPowerOn:
	.stack _PowerManageSdkPowerOn = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1208
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1211
	jarl _vPortEnterCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1213
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_pmManage.1+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1215
	jarl _vPortExitCritical, r31
	dispose 0x00000000, 0x00000001, [r31]
_PowerManageSdkSetWakeDelay:
	.stack _PowerManageSdkSetWakeDelay = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1218
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1221
	jarl _vPortEnterCritical, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1223
	movhi HIGHW1(#_g_pmManage.1+0x00000004), r0, r2
	st.w r20, LOWW(#_g_pmManage.1+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1225
	jarl _vPortExitCritical, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1227
	dispose 0x00000000, 0x00000041, [r31]
_PowerManageSdkSetTestMode:
	.stack _PowerManageSdkSetTestMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1293
	cmp 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1295
	bgt9 .BB.LABEL.32_2
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1298
	movhi HIGHW1(#_g_pmManage.1+0x0000015E), r0, r2
	st.b r6, LOWW(#_g_pmManage.1+0x0000015E)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1299
	jmp [r31]
.BB.LABEL.32_2:	; bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1305
	jmp [r31]
_PowerManageSdkGetPowerInfo:
	.stack _PowerManageSdkGetPowerInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1321
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1323
	bz9 .BB.LABEL.33_2
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1326
	movhi HIGHW1(#_g_pmManage.1+0x0000000C), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x0000000C)[r2], r2
	st.b r2, 0x00000000[r6]
.BB.LABEL.33_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1328
	cmp 0x00000000, r7
	bz9 .BB.LABEL.33_4
.BB.LABEL.33_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1331
	movhi HIGHW1(#_g_pmManage.1+0x00000160), r0, r2
	ld.b LOWW(#_g_pmManage.1+0x00000160)[r2], r2
	st.b r2, 0x00000000[r7]
.BB.LABEL.33_4:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1333
	cmp 0x00000000, r8
	bz9 .BB.LABEL.33_6
.BB.LABEL.33_5:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1336
	movhi HIGHW1(#_g_pmManage.1+0x00000164), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x00000164)[r2], r2
	st.w r2, 0x00000000[r8]
.BB.LABEL.33_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1338
	jmp [r31]
_PowerManageSdkForceWakeupMpu:
	.stack _PowerManageSdkForceWakeupMpu = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1340
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1345
	movhi HIGHW1(#_count.3.PowerManageSdkForceWakeupMpu), r0, r2
	ld.b LOWW(#_count.3.PowerManageSdkForceWakeupMpu)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_count.3.PowerManageSdkForceWakeupMpu)[r2]
	movea 0x000003E8, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1346
	divhu r6, r2, r0
	zxb r5
	cmp r2, r5
	blt9 .BB.LABEL.34_4
.BB.LABEL.34_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1350
	movhi HIGHW1(#_count.3.PowerManageSdkForceWakeupMpu), r0, r2
	st.b r0, LOWW(#_count.3.PowerManageSdkForceWakeupMpu)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1351
	movhi HIGHW1(#_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu), r0, r2
	ld.bu LOWW(#_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu)[r2], r2
	cmp 0x00000004, r2
	bgt9 .BB.LABEL.34_3
.BB.LABEL.34_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1353
	movhi HIGHW1(#_g_pmManage.1+0x00000160), r0, r2
	ld.bu LOWW(#_g_pmManage.1+0x00000160)[r2], r6
	jarl _MpuPowerSyncSdkSetWake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1354
	movhi HIGHW1(#_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu), r0, r2
	ld.b LOWW(#_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1358
	movhi HIGHW1(#_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu), r0, r2
	mov 0x0000000A, r5
	st.b r5, LOWW(#_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu)[r2]
.BB.LABEL.34_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1360
	dispose 0x00000000, 0x00000001, [r31]
_PowerManageSdkTimerDecrement:
	.stack _PowerManageSdkTimerDecrement = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1372
	movhi HIGHW1(#_g_timerMsAccumulator.2), r0, r2
	ld.w LOWW(#_g_timerMsAccumulator.2)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_g_timerMsAccumulator.2)[r2]
	movea 0x000003E8, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1374
	cmp r2, r5
	bl9 .BB.LABEL.35_5
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1376
	movhi HIGHW1(#_g_timerMsAccumulator.2), r0, r2
	st.w r0, LOWW(#_g_timerMsAccumulator.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1379
	movhi HIGHW1(#_g_pmManage.1+0x00000178), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x00000178)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.35_3
.BB.LABEL.35_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1381
	add 0xFFFFFFFF, r2
	movhi HIGHW1(#_g_pmManage.1+0x00000178), r0, r5
	st.w r2, LOWW(#_g_pmManage.1+0x00000178)[r5]
.BB.LABEL.35_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1385
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r2
	ld.w LOWW(#_g_pmManage.1+0x0000017C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.35_5
.BB.LABEL.35_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1387
	add 0xFFFFFFFF, r2
	movhi HIGHW1(#_g_pmManage.1+0x0000017C), r0, r5
	st.w r2, LOWW(#_g_pmManage.1+0x0000017C)[r5]
.BB.LABEL.35_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/powerManageSdk.c", 1390
	jmp [r31]
	.section .bss, bss
	.align 4
_g_pmManage.1:
	.ds (392)
	.section .data, data
	.align 4
_g_timerMsAccumulator.2:
	.ds (4)
_closeFlag:
	.ds (1)
_count.3.PowerManageSdkForceWakeupMpu:
	.ds (1)
_wakeupMpuTimes.4.PowerManageSdkForceWakeupMpu:
	.ds (1)
	.section .const, const
.STR.1:
	.db 0x47,0x65,0x74,0x20,0x6C,0x69,0x73,0x74,0x65,0x6E,0x20,0x74,0x69,0x6D,0x65,0x72
	.db 0x20,0x66,0x72,0x6F,0x6D,0x20,0x66,0x6C,0x61,0x73,0x68,0x3A,0x20,0x25,0x75,0x20
	.db 0x73,0x65,0x63,0x6F,0x6E,0x64,0x73,0x0A
	.ds (1)
.STR.1739:
	.db 0x32,0x34,0x48,0x20,0x74,0x69,0x6D,0x65,0x72,0x20,0x65,0x78,0x70,0x69,0x72,0x65
	.db 0x64,0x2C,0x20,0x73,0x79,0x73,0x74,0x65,0x6D,0x20,0x72,0x65,0x73,0x65,0x74,0x0D
	.db 0x0A
	.ds (1)
.STR.1740:
	.db 0x32,0x34,0x48,0x20,0x74,0x69,0x6D,0x65,0x72,0x20,0x65,0x78,0x70,0x69,0x72,0x65
	.db 0x64,0x2C,0x20,0x73,0x79,0x73,0x74,0x65,0x6D,0x20,0x72,0x65,0x73,0x65,0x74,0x0D
	.db 0x0A
	.ds (1)
.STR.1741:
	.db 0x32,0x34,0x48,0x20,0x74,0x69,0x6D,0x65,0x72,0x20,0x65,0x78,0x70,0x69,0x72,0x65
	.db 0x64,0x2C,0x20,0x73,0x79,0x73,0x74,0x65,0x6D,0x20,0x72,0x65,0x73,0x65,0x74,0x0D
	.db 0x0A
	.ds (1)
.STR.1742:
	.db 0x73,0x65,0x74,0x20,0x4E,0x41,0x44,0x20,0x73,0x6C,0x65,0x65,0x70,0x0D,0x0A
	.ds (1)
.STR.1797:
	.db 0x57,0x61,0x6B,0x65,0x75,0x70,0x20,0x73,0x6F,0x75,0x72,0x63,0x65,0x20,0x69,0x73
	.db 0x20,0x3A,0x20,0x25,0x64,0x0D,0x0A
	.ds (1)
.STR.1798:
	.db 0x73,0x6C,0x65,0x65,0x70,0x20,0x74,0x69,0x6D,0x65,0x20,0x3D,0x20,0x25,0x64,0x20
	.db 0x73,0x65,0x63,0x0D,0x0A
	.ds (1)
