#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\mpuPowerSyncSdk.c -oDefaultBuild\mpuPowerSyncSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_97ee27b423a6462c9870805e055c18df5sh5kdna.nvo
#@	compiled at Fri Mar 27 09:50:48 2026

	.file "..\..\Srcode\sdk\source\mpuPowerSyncSdk.c"

	$reg_mode 32
	.dbl_size 8

	.extern _memset
	.extern _MpuHalTransmit
	.extern _PeripheralHalGetKl15Status
	.extern _PeripheralHalAdGet
	.extern _BatteryHalGetState
	.extern _BatterySdkGetVoltage
	.extern _BatterySdkGetTemperature
	.extern _BatterySdkGetBatteySoc
	.extern _BatterySdkGetBatteyVoltageAlarm
	.extern _BatterySdkGetBatteyTempAlarm
	.extern _BatterySdkGetBatteyStatus
	.extern _BatterySdkGetBatteyChargingDuration
	.extern _xSemaphoreTake
	.extern _xSemaphoreGive
	.public _MpuPowerSyncSdkInit
	.extern _xSemaphoreCreateMutex
	.public _MpuPowerSyncSdkCycleProcess
	.extern _LogHalPrint
	.extern _MpuHalReset
	.public _MpuPowerSyncSdkSetSleep
	.public _MpuPowerSyncSdkGetSleepStatus
	.public _MpuPowerSyncSdkSetWake
	.public _MpuPowerSyncSdkSetDeepSleepFlag
	.public _MpuPowerSyncSdkGetWakeStatus
	.public _MpuPowerSyncSdkGetSleepDisableState
	.public _MpuPowerSyncSdkSetRkMode
	.public _MpuPowerSyncSdkRegisteMpuErrorCb
	.public _MpuPowerSyncSdkGetNadModuleStatus
	.public _MpuPowerSyncSdkGetMpuWakeUpSource
	.public _MpuPowerSyncSdkGetMpuSubWakeUpSource

	.section .text, text
_MpuPowerSyncSdkRequstSleep.1:
	.stack _MpuPowerSyncSdkRequstSleep.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 51
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 53
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bn9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 58
	mov #_g_powerSyncPack.6, r21
	mov 0x00000001, r2
	st.b r2, 0x00000000[r21]
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 59
	st.b r5, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 60
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 62
	mov #_g_packData.5, r22
	movea 0x00000040, r0, r23
	mov 0x00000000, r24
	mov r22, r6
	mov r24, r7
	mov r23, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 64
	st.h r23, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 65
	movhi HIGHW1(#_g_reqIndex.7), r0, r2
	ld.bu LOWW(#_g_reqIndex.7)[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 71
	addi 0x00000001, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 65
	addi 0xFFFFFF01, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 71
	cmov 0x00000002, 0x00000000, r6, r5
	st.b r5, LOWW(#_g_reqIndex.7)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 73
	st.b r5, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 74
	st.b r20, 0x00000001[r22]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 76
	st.h r2, 0x00000006[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 77
	st.w r22, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 79
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r6
	mov r21, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 80
	mov r24, r10
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.1_2:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 81
	dispose 0x00000000, 0x00000479, [r31]
_MpuPowerSyncSdkSendWakeSource.1:
	.stack _MpuPowerSyncSdkSendWakeSource.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 83
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 85
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bn9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 89
	mov #_g_powerSyncPack.6, r21
	mov 0x00000001, r22
	st.b r22, 0x00000000[r21]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 90
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 91
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 93
	mov #_g_packData.5, r23
	movea 0x00000040, r0, r24
	mov 0x00000000, r25
	mov r23, r6
	mov r25, r7
	mov r24, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 95
	st.h r24, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 97
	st.b r20, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 99
	st.w r23, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 100
	st.h r22, 0x00000006[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 102
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r6
	mov r21, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 104
	mov r25, r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.2_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 105
	dispose 0x00000000, 0x00000679, [r31]
_MpuPowerSyncSdkSendPowerHalState.1:
	.stack _MpuPowerSyncSdkSendPowerHalState.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 107
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 109
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 110
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r2
	cmp 0x00000000, r2
	bn9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 114
	mov #_g_powerSyncPack.6, r20
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 115
	st.b r2, 0x00000001[r20]
	movea 0x0000007F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 116
	st.b r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 118
	mov #_g_packData.5, r21
	movea 0x00000040, r0, r22
	mov 0x00000000, r23
	mov r21, r6
	mov r23, r7
	mov r22, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 120
	st.h r22, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 122
	jarl _PeripheralHalGetKl15Status, r31
	add 0x00000001, r10
	st.b r10, 0x00000000[r21]
	mov r3, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 124
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 125
	ld.w 0x00000000[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 126
	ld.w 0x00000000[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 127
	ld.w 0x00000000[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000003[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 128
	ld.w 0x00000000[r3], r2
	st.b r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 129
	st.b r0, 0x00000005[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 130
	st.b r0, 0x00000006[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 132
	st.w r21, 0x00000008[r20]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 133
	st.h r2, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 135
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r6
	mov r20, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 137
	mov r23, r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.3_2:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 138
	dispose 0x00000004, 0x00000079, [r31]
_MpuPowerSyncSdkSendBatteryState.1:
	.stack _MpuPowerSyncSdkSendBatteryState.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 140
	prepare 0x00000071, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 142
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 143
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 145
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r2
	cmp 0x00000000, r2
	bn9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 149
	mov #_g_powerSyncPack.6, r20
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
	movea 0x00000015, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 150
	st.b r2, 0x00000001[r20]
	movea 0x0000007F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 151
	st.b r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 153
	mov #_g_packData.5, r21
	movea 0x00000040, r0, r22
	mov 0x00000000, r7
	mov r21, r6
	mov r22, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 155
	st.h r22, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 157
	jarl _BatteryHalGetState, r31
	st.b r10, 0x00000000[r21]
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 159
	jarl _BatterySdkGetVoltage, r31
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 160
	jarl _BatterySdkGetTemperature, r31
	movea 0x00000064, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 161
	ld.w 0x00000000[r3], r5
	divh r2, r5
	movea 0x00000190, r5, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 162
	ld.w 0x00000004[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 163
	ld.w 0x00000004[r3], r2
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 164
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bp9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 166
	movhi HIGHW1(#_g_packData.5+0x00000003), r0, r2
	st.b r0, LOWW(#_g_packData.5+0x00000003)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 171
	mov r2, r5
	shr 0x00000008, r5
	movhi HIGHW1(#_g_packData.5+0x00000003), r0, r6
	st.b r5, LOWW(#_g_packData.5+0x00000003)[r6]
.BB.LABEL.4_4:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov #_g_packData.5, r20
	st.b r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 174
	jarl _BatterySdkGetBatteySoc, r31
	st.b r10, 0x00000005[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 175
	jarl _BatterySdkGetBatteyVoltageAlarm, r31
	st.b r10, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 176
	jarl _BatterySdkGetBatteyTempAlarm, r31
	st.b r10, 0x00000007[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 177
	jarl _BatterySdkGetBatteyStatus, r31
	st.b r10, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 178
	jarl _BatterySdkGetBatteyChargingDuration, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 179
	mov r10, r2
	shr 0x00000018, r2
	st.b r2, 0x00000009[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 180
	mov r10, r2
	shr 0x00000010, r2
	st.b r2, 0x0000000A[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 181
	mov r10, r2
	shr 0x00000008, r2
	st.b r2, 0x0000000B[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 182
	st.b r10, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 184
	mov #_g_powerSyncPack.6, r7
	st.w r20, 0x00000008[r7]
	mov 0x0000000D, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 185
	st.h r2, 0x00000006[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 187
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r6
	jarl _MpuHalTransmit, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 189
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.4_5:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 190
	dispose 0x00000008, 0x00000071, [r31]
_MpuPowerSyncSdkSendPowerState.1:
	.stack _MpuPowerSyncSdkSendPowerState.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 192
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 194
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r2
	cmp 0x00000000, r2
	bn9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 198
	mov #_g_powerSyncPack.6, r20
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 199
	st.b r2, 0x00000001[r20]
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 200
	st.b r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 202
	mov #_g_packData.5, r21
	movea 0x00000040, r0, r22
	mov 0x00000000, r23
	mov r21, r6
	mov r23, r7
	mov r22, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 204
	st.h r22, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 206
	movhi HIGHW1(#_g_mutexHandle.12), r0, r22
	ld.w LOWW(#_g_mutexHandle.12)[r22], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 207
	movhi HIGHW1(#_g_rkMode.3), r0, r2
	ld.b LOWW(#_g_rkMode.3)[r2], r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 208
	movhi HIGHW1(#_g_sleepMode.4), r0, r2
	ld.b LOWW(#_g_sleepMode.4)[r2], r2
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 209
	ld.w LOWW(#_g_mutexHandle.12)[r22], r6
	jarl _xSemaphoreGive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 211
	st.w r21, 0x00000008[r20]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 212
	st.h r2, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 214
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	ld.h LOWW(#_g_mpuHandle.2)[r2], r6
	mov r20, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 216
	mov r23, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 217
	dispose 0x00000000, 0x00000079, [r31]
_MpuPowerSyncSdkInit:
	.stack _MpuPowerSyncSdkInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 267
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 270
	cmp 0x00000000, r6
	bn9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 274
	movhi HIGHW1(#_g_mpuHandle.2), r0, r2
	st.h r6, LOWW(#_g_mpuHandle.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 275
	movhi HIGHW1(#_g_processCycleTime.1), r0, r2
	st.h r7, LOWW(#_g_processCycleTime.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 279
	movhi HIGHW1(#_g_wakeUpSource.19), r0, r2
	st.b r0, LOWW(#_g_wakeUpSource.19)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 281
	jarl _xSemaphoreCreateMutex, r31
	movhi HIGHW1(#_g_mutexHandle.12), r0, r2
	st.w r10, LOWW(#_g_mutexHandle.12)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 283
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 284
	dispose 0x00000000, 0x00000001, [r31]
_MpuPowerSyncSdkCycleProcess:
	.stack _MpuPowerSyncSdkCycleProcess = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 294
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 307
	movhi HIGHW1(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess), r0, r2
	ld.w LOWW(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess)[r2]
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 308
	bz17 .BB.LABEL.7_22
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 311
	ld.bu 0x00000000[r20], r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.7_22
.BB.LABEL.7_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	ld.bu 0x00000001[r20], r2
	cmp 0x00000004, r2
	bnz17 .BB.LABEL.7_22
.BB.LABEL.7_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 313
	ld.bu 0x00000002[r20], r2
	andi 0x0000007F, r2, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_4:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 315
	movhi HIGHW1(#_g_reqIndex.7), r0, r2
	ld.bu LOWW(#_g_reqIndex.7)[r2], r2
	ld.w 0x00000008[r20], r20
	ld.bu 0x00000000[r20], r20
	cmp r20, r2
	bnz17 .BB.LABEL.7_22
.BB.LABEL.7_5:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 317
	movhi HIGHW1(#_g_mutexHandle.12), r0, r20
	ld.w LOWW(#_g_mutexHandle.12)[r20], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 318
	movhi HIGHW1(#_g_mpuSleepAckFlag.8), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_mpuSleepAckFlag.8)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 319
	ld.w LOWW(#_g_mutexHandle.12)[r20], r6
	jarl _xSemaphoreGive, r31
	jr .BB.LABEL.7_22
.BB.LABEL.7_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 322
	andi 0x0000007F, r2, r5
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_7:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 324
	movhi HIGHW1(#_g_mutexHandle.12), r0, r2
	ld.w LOWW(#_g_mutexHandle.12)[r2], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 325
	movhi HIGHW1(#_g_wakeUpSource.19), r0, r2
	ld.bu LOWW(#_g_wakeUpSource.19)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_8:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 327
	movhi HIGHW1(#_g_wakeUpSource.19+0x00000001), r0, r2
	ld.bu LOWW(#_g_wakeUpSource.19+0x00000001)[r2], r2
	ld.w 0x00000008[r20], r5
	ld.bu 0x00000000[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_9:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 329
	mov #_g_wakeUpSource.19, r2
	st.b r0, 0x00000000[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 330
	st.b r5, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 331
	movhi HIGHW1(#_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess), r0, r2
	st.h r0, LOWW(#_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess)[r2]
.BB.LABEL.7_10:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 333
	ld.hu 0x00000006[r20], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_11:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 335
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000002[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_13
.BB.LABEL.7_12:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 337
	movhi HIGHW1(#_g_mpuWakeUpSource.20), r0, r5
	st.b r2, LOWW(#_g_mpuWakeUpSource.20)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 338
	ld.w 0x00000008[r20], r2
	ld.b 0x00000003[r2], r2
	movhi HIGHW1(#_g_mpuSubWakeUpSource.21), r0, r20
	st.b r2, LOWW(#_g_mpuSubWakeUpSource.21)[r20]
.BB.LABEL.7_13:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 342
	movhi HIGHW1(#_g_mutexHandle.12), r0, r2
	ld.w LOWW(#_g_mutexHandle.12)[r2], r6
	jarl _xSemaphoreGive, r31
	br9 .BB.LABEL.7_22
.BB.LABEL.7_14:	; if_else_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 344
	andi 0x0000007F, r2, r2
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.7_22
.BB.LABEL.7_15:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 346
	movhi HIGHW1(#_g_mutexHandle.12), r0, r2
	ld.w LOWW(#_g_mutexHandle.12)[r2], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 348
	movhi HIGHW1(#_g_lastSleepDisableEvent.14), r0, r2
	ld.bu LOWW(#_g_lastSleepDisableEvent.14)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_18
.BB.LABEL.7_16:	; bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_18
.BB.LABEL.7_17:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 350
	movhi HIGHW1(#_g_sleepDisableDelayCount.15), r0, r2
	movea 0x00000078, r0, r5
	st.w r5, LOWW(#_g_sleepDisableDelayCount.15)[r2]
.BB.LABEL.7_18:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 353
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_20
.BB.LABEL.7_19:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 355
	movhi HIGHW1(#_g_sleepDisableDelayCount.15), r0, r2
	st.w r0, LOWW(#_g_sleepDisableDelayCount.15)[r2]
.BB.LABEL.7_20:	; if_break_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 357
	ld.w 0x00000008[r20], r2
	ld.b 0x00000000[r2], r2
	movhi HIGHW1(#_g_lastSleepDisableEvent.14), r0, r5
	st.b r2, LOWW(#_g_lastSleepDisableEvent.14)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 358
	ld.w 0x00000008[r20], r2
	ld.b 0x00000000[r2], r2
	movhi HIGHW1(#_g_sleepDisableEvent.13), r0, r5
	st.b r2, LOWW(#_g_sleepDisableEvent.13)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 359
	movhi HIGHW1(#_g_mutexHandle.12), r0, r2
	ld.w LOWW(#_g_mutexHandle.12)[r2], r6
	jarl _xSemaphoreGive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 360
	movhi HIGHW1(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess), r0, r2
	st.w r0, LOWW(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 361
	movhi HIGHW1(#_g_mpuErrorResetCount.18), r0, r2
	st.b r0, LOWW(#_g_mpuErrorResetCount.18)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 362
	movhi HIGHW1(#_g_mpuKeepAliveLoseFlag.16), r0, r2
	ld.bu LOWW(#_g_mpuKeepAliveLoseFlag.16)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_22
.BB.LABEL.7_21:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 364
	movhi HIGHW1(#_g_mpuKeepAliveLoseFlag.16), r0, r2
	st.b r0, LOWW(#_g_mpuKeepAliveLoseFlag.16)[r2]
.BB.LABEL.7_22:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 375
	movhi HIGHW1(#_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess), r0, r2
	ld.hu LOWW(#_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess)[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	st.h r6, LOWW(#_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess)[r2]
	movea 0x000003E8, r0, r2
	divhu r7, r2, r0
	cmp r2, r5
	blt9 .BB.LABEL.7_24
.BB.LABEL.7_23:	; if_then_bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 377
	movhi HIGHW1(#_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess), r0, r2
	st.h r0, LOWW(#_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 379
	jarl _MpuPowerSyncSdkSendPowerHalState.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 381
	jarl _MpuPowerSyncSdkSendBatteryState.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 383
	jarl _MpuPowerSyncSdkSendPowerState.1, r31
.BB.LABEL.7_24:	; if_break_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 388
	movhi HIGHW1(#_g_mcuReqCpuSleepFlag.9), r0, r2
	ld.bu LOWW(#_g_mcuReqCpuSleepFlag.9)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_29
.BB.LABEL.7_25:	; if_then_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 390
	movhi HIGHW1(#_g_mcuReqCpuSleepTimeCount.10), r0, r2
	ld.w LOWW(#_g_mcuReqCpuSleepTimeCount.10)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_g_mcuReqCpuSleepTimeCount.10)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 392
	movhi HIGHW1(#_g_processCycleTime.1), r0, r2
	ld.hu LOWW(#_g_processCycleTime.1)[r2], r2
	movea 0x00002710, r0, r6
	divhu r2, r6, r0
	cmp r6, r5
	bl9 .BB.LABEL.7_27
.BB.LABEL.7_26:	; if_then_bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 394
	movhi HIGHW1(#_g_mcuReqCpuSleepTimeCount.10), r0, r2
	st.w r0, LOWW(#_g_mcuReqCpuSleepTimeCount.10)[r2]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 395
	jarl _MpuPowerSyncSdkRequstSleep.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 396
	movhi HIGHW1(#_g_mcuReqCpuSleepCount.11), r0, r2
	ld.w LOWW(#_g_mcuReqCpuSleepCount.11)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_g_mcuReqCpuSleepCount.11)[r2]
.BB.LABEL.7_27:	; if_break_bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 399
	movhi HIGHW1(#_g_mcuReqCpuSleepCount.11), r0, r2
	ld.w LOWW(#_g_mcuReqCpuSleepCount.11)[r2], r2
	cmp 0x00000006, r2
	bl9 .BB.LABEL.7_29
.BB.LABEL.7_28:	; if_then_bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 401
	movhi HIGHW1(#_g_mpuSleepAckFlag.8), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_mpuSleepAckFlag.8)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 402
	movhi HIGHW1(#_g_mcuReqCpuSleepFlag.9), r0, r2
	st.b r0, LOWW(#_g_mcuReqCpuSleepFlag.9)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 403
	movhi HIGHW1(#_g_mcuReqCpuSleepCount.11), r0, r2
	st.w r0, LOWW(#_g_mcuReqCpuSleepCount.11)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 404
	movhi HIGHW1(#_g_wakeUpSource.19), r0, r2
	st.b r0, LOWW(#_g_wakeUpSource.19)[r2]
.BB.LABEL.7_29:	; if_break_bb227
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 408
	movhi HIGHW1(#_g_wakeUpSource.19), r0, r2
	ld.bu LOWW(#_g_wakeUpSource.19)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_32
.BB.LABEL.7_30:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 410
	movhi HIGHW1(#_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess), r0, r2
	ld.hu LOWW(#_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess)[r2], r5
	addi 0x00000001, r5, r6
	st.h r6, LOWW(#_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess)[r2]
	addi 0xFFFFFFEC, r5, r0
	blt9 .BB.LABEL.7_32
.BB.LABEL.7_31:	; if_then_bb241
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 412
	movhi HIGHW1(#_g_wakeUpSource.19+0x00000001), r0, r2
	ld.bu LOWW(#_g_wakeUpSource.19+0x00000001)[r2], r6
	jarl _MpuPowerSyncSdkSendWakeSource.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 413
	movhi HIGHW1(#_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess), r0, r2
	st.h r0, LOWW(#_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess)[r2]
.BB.LABEL.7_32:	; if_break_bb245
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 418
	movhi HIGHW1(#_g_processCycleTime.1), r0, r2
	ld.hu LOWW(#_g_processCycleTime.1)[r2], r2
	mov 0x000493E0, r5
	divhu r2, r5, r0
	movhi HIGHW1(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess), r0, r2
	ld.w LOWW(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess)[r2], r2
	cmp r2, r5
	bh9 .BB.LABEL.7_38
.BB.LABEL.7_33:	; if_then_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 420
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 421
	mov #.STR.1252, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 422
	mov #.STR.1253, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 423
	movhi HIGHW1(#_g_sleepDisableEvent.13), r0, r2
	st.b r0, LOWW(#_g_sleepDisableEvent.13)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 424
	movhi HIGHW1(#_g_sleepDisableDelayCount.15), r0, r2
	st.w r0, LOWW(#_g_sleepDisableDelayCount.15)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 425
	movhi HIGHW1(#_g_lastSleepDisableEvent.14), r0, r2
	st.b r0, LOWW(#_g_lastSleepDisableEvent.14)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 426
	movhi HIGHW1(#_g_mpuKeepAliveLoseFlag.16), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_mpuKeepAliveLoseFlag.16)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 427
	movhi HIGHW1(#_g_mpuErrorResetCount.18), r0, r2
	ld.bu LOWW(#_g_mpuErrorResetCount.18)[r2], r2
	cmp 0x00000002, r2
	bgt9 .BB.LABEL.7_35
.BB.LABEL.7_34:	; if_then_bb259
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 429
	jarl _MpuHalReset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 430
	movhi HIGHW1(#_g_mpuErrorResetCount.18), r0, r2
	ld.b LOWW(#_g_mpuErrorResetCount.18)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_g_mpuErrorResetCount.18)[r2]
.BB.LABEL.7_35:	; if_break_bb264
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 432
	movhi HIGHW1(#_g_mpuErrorCallBackFunc.17), r0, r2
	ld.w LOWW(#_g_mpuErrorCallBackFunc.17)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_37
.BB.LABEL.7_36:	; if_then_bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 434
	jarl [r2], r31
.BB.LABEL.7_37:	; if_break_bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 436
	movhi HIGHW1(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess), r0, r2
	st.w r0, LOWW(#_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess)[r2]
.BB.LABEL.7_38:	; if_break_bb273
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 440
	movhi HIGHW1(#_g_sleepDisableDelayCount.15), r0, r2
	ld.w LOWW(#_g_sleepDisableDelayCount.15)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_42
.BB.LABEL.7_39:	; bb277
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	movhi HIGHW1(#_g_sleepDisableEvent.13), r0, r2
	ld.bu LOWW(#_g_sleepDisableEvent.13)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_42
.BB.LABEL.7_40:	; if_then_bb290
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 442
	movhi HIGHW1(#_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess), r0, r2
	ld.hu LOWW(#_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_42
.BB.LABEL.7_41:	; if_then_bb296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 444
	movhi HIGHW1(#_g_sleepDisableDelayCount.15), r0, r2
	ld.w LOWW(#_g_sleepDisableDelayCount.15)[r2], r5
	add 0xFFFFFFFF, r5
	st.w r5, LOWW(#_g_sleepDisableDelayCount.15)[r2]
.BB.LABEL.7_42:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 447
	dispose 0x00000000, 0x00000041, [r31]
_MpuPowerSyncSdkSetSleep:
	.stack _MpuPowerSyncSdkSetSleep = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 457
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 459
	movhi HIGHW1(#_g_mpuSleepAckFlag.8), r0, r2
	st.b r0, LOWW(#_g_mpuSleepAckFlag.8)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 460
	jarl _MpuPowerSyncSdkRequstSleep.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 461
	dispose 0x00000000, 0x00000001, [r31]
_MpuPowerSyncSdkGetSleepStatus:
	.stack _MpuPowerSyncSdkGetSleepStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 473
	movhi HIGHW1(#_g_mpuSleepAckFlag.8), r0, r2
	ld.bu LOWW(#_g_mpuSleepAckFlag.8)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 479
	movhi HIGHW1(#_g_mpuErrorResetCount.18), r0, r2
	ld.bu LOWW(#_g_mpuErrorResetCount.18)[r2], r2
	cmp 0x00000002, r2
	bgt9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 483
	jmp [r31]
.BB.LABEL.9_3:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 485
	jmp [r31]
_MpuPowerSyncSdkSetWake:
	.stack _MpuPowerSyncSdkSetWake = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 495
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 497
	movhi HIGHW1(#_g_mutexHandle.12), r0, r21
	ld.w LOWW(#_g_mutexHandle.12)[r21], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 499
	mov #_g_wakeUpSource.19, r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 500
	st.b r20, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 501
	st.b r0, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 503
	ld.w LOWW(#_g_mutexHandle.12)[r21], r6
	jarl _xSemaphoreGive, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 505
	dispose 0x00000000, 0x00000061, [r31]
_MpuPowerSyncSdkSetDeepSleepFlag:
	.stack _MpuPowerSyncSdkSetDeepSleepFlag = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 515
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 517
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 519
	movhi HIGHW1(#_g_sleepMode.4), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_g_sleepMode.4)[r2]
	jmp [r31]
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 521
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 523
	movhi HIGHW1(#_g_sleepMode.4), r0, r2
	mov 0x00000002, r5
	st.b r5, LOWW(#_g_sleepMode.4)[r2]
.BB.LABEL.11_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 525
	jmp [r31]
_MpuPowerSyncSdkGetWakeStatus:
	.stack _MpuPowerSyncSdkGetWakeStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 536
	movhi HIGHW1(#_g_wakeUpSource.19+0x00000002), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 538
	ld.bu LOWW(#_g_wakeUpSource.19+0x00000002)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.bb10_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	mov 0x00000000, r2
	br9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 540
	movhi HIGHW1(#_g_mpuWakeUpSource.20), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 541
	ld.bu LOWW(#_g_mpuWakeUpSource.20)[r2], r2
	mov 0x00000000, r10
.BB.LABEL.12_3:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 548
	sxh r10
	jmp [r31]
_MpuPowerSyncSdkGetSleepDisableState:
	.stack _MpuPowerSyncSdkGetSleepDisableState = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 559
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 564
	movhi HIGHW1(#_g_mutexHandle.12), r0, r2
	ld.w LOWW(#_g_mutexHandle.12)[r2], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 565
	movhi HIGHW1(#_g_sleepDisableEvent.13), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 567
	ld.bu LOWW(#_g_sleepDisableEvent.13)[r2], r20
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	movhi HIGHW1(#_g_sleepDisableDelayCount.15), r0, r2
	ld.w LOWW(#_g_sleepDisableDelayCount.15)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; bb.if_break_bb_crit_edge
	mov 0x00000001, r20
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 575
	movhi HIGHW1(#_g_mutexHandle.12), r0, r2
	ld.w LOWW(#_g_mutexHandle.12)[r2], r6
	jarl _xSemaphoreGive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 578
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_MpuPowerSyncSdkSetRkMode:
	.stack _MpuPowerSyncSdkSetRkMode = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 589
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 591
	movhi HIGHW1(#_g_mutexHandle.12), r0, r21
	ld.w LOWW(#_g_mutexHandle.12)[r21], r6
	mov 0xFFFFFFFF, r7
	jarl _xSemaphoreTake, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 592
	movhi HIGHW1(#_g_rkMode.3), r0, r2
	st.b r20, LOWW(#_g_rkMode.3)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 593
	ld.w LOWW(#_g_mutexHandle.12)[r21], r6
	jarl _xSemaphoreGive, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 595
	dispose 0x00000000, 0x00000061, [r31]
_MpuPowerSyncSdkRegisteMpuErrorCb:
	.stack _MpuPowerSyncSdkRegisteMpuErrorCb = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 606
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 608
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 613
	movhi HIGHW1(#_g_mpuErrorCallBackFunc.17), r0, r2
	st.w r6, LOWW(#_g_mpuErrorCallBackFunc.17)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 614
	jmp [r31]
.BB.LABEL.15_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 615
	jmp [r31]
_MpuPowerSyncSdkGetNadModuleStatus:
	.stack _MpuPowerSyncSdkGetNadModuleStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 628
	movhi HIGHW1(#_g_mpuKeepAliveLoseFlag.16), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 629
	ld.bu LOWW(#_g_mpuKeepAliveLoseFlag.16)[r2], r10
	jmp [r31]
_MpuPowerSyncSdkGetMpuWakeUpSource:
	.stack _MpuPowerSyncSdkGetMpuWakeUpSource = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 643
	movhi HIGHW1(#_g_mpuWakeUpSource.20), r0, r2
	ld.b LOWW(#_g_mpuWakeUpSource.20)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 641
	movhi HIGHW1(#_g_wakeUpSource.19+0x00000002), r0, r5
	ld.bu LOWW(#_g_wakeUpSource.19+0x00000002)[r5], r5
	cmp 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 643
	cmov 0x0000000A, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 646
	zxb r10
	jmp [r31]
_MpuPowerSyncSdkGetMpuSubWakeUpSource:
	.stack _MpuPowerSyncSdkGetMpuSubWakeUpSource = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 660
	movhi HIGHW1(#_g_mpuSubWakeUpSource.21), r0, r2
	ld.b LOWW(#_g_mpuSubWakeUpSource.21)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 658
	movhi HIGHW1(#_g_wakeUpSource.19+0x00000002), r0, r5
	ld.bu LOWW(#_g_wakeUpSource.19+0x00000002)[r5], r5
	cmp 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 660
	cmov 0x0000000A, 0x00000000, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/mpuPowerSyncSdk.c", 663
	zxb r10
	jmp [r31]
	.section .data, data
	.align 2
_g_processCycleTime.1:
	.ds (2)
	.align 2
_g_mpuHandle.2:
	.ds (2)
_g_rkMode.3:
	.ds (1)
_g_sleepMode.4:
	.ds (1)
_g_packData.5:
	.ds (64)
_g_reqIndex.7:
	.ds (1)
_g_mpuSleepAckFlag.8:
	.ds (1)
_g_mcuReqCpuSleepFlag.9:
	.ds (1)
	.align 4
_g_mcuReqCpuSleepTimeCount.10:
	.ds (4)
	.align 4
_g_mcuReqCpuSleepCount.11:
	.ds (4)
	.align 4
_g_mutexHandle.12:
	.ds (4)
_g_sleepDisableEvent.13:
	.ds (1)
_g_lastSleepDisableEvent.14:
	.ds (1)
	.align 4
_g_sleepDisableDelayCount.15:
	.ds (4)
_g_mpuKeepAliveLoseFlag.16:
	.db 0x01
	.align 4
_g_mpuErrorCallBackFunc.17:
	.ds (4)
_g_mpuErrorResetCount.18:
	.ds (1)
_g_mpuWakeUpSource.20:
	.ds (1)
_g_mpuSubWakeUpSource.21:
	.ds (1)
	.align 2
_cycleTimeCount.22.MpuPowerSyncSdkCycleProcess:
	.dhw 0x03E8
	.align 2
_wakeSourceSyncTimeCount.23.MpuPowerSyncSdkCycleProcess:
	.ds (2)
	.align 4
_mpuKeepAliveTimeCount.24.MpuPowerSyncSdkCycleProcess:
	.ds (4)
	.section .bss, bss
	.align 4
_g_powerSyncPack.6:
	.ds (12)
_g_wakeUpSource.19:
	.ds (3)
	.section .const, const
.STR.1:
	.db 0x6D,0x70,0x75,0x20,0x6B,0x65,0x65,0x70,0x20,0x61,0x6C,0x69,0x76,0x65,0x20,0x74
	.db 0x69,0x6D,0x65,0x20,0x6F,0x75,0x74,0x21,0x0D,0x0A
	.ds (1)
.STR.1252:
	.db 0x6D,0x70,0x75,0x20,0x6B,0x65,0x65,0x70,0x20,0x61,0x6C,0x69,0x76,0x65,0x20,0x74
	.db 0x69,0x6D,0x65,0x20,0x6F,0x75,0x74,0x21,0x0D,0x0A
	.ds (1)
.STR.1253:
	.db 0x6D,0x70,0x75,0x20,0x6B,0x65,0x65,0x70,0x20,0x61,0x6C,0x69,0x76,0x65,0x20,0x74
	.db 0x69,0x6D,0x65,0x20,0x6F,0x75,0x74,0x21,0x0D,0x0A
	.ds (1)
