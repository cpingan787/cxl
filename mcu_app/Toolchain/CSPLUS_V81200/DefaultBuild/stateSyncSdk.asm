#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\stateSyncSdk.c -oDefaultBuild\stateSyncSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_c436b855c33f4ae693ebfbdfb23a6eb4bc5a4fau.ogf
#@	compiled at Fri Mar 27 09:50:54 2026

	.file "..\..\Srcode\sdk\source\stateSyncSdk.c"

	$reg_mode 32
	.dbl_size 8

	.public _StateSyncSdkInit
	.extern _DtcGetObjState
	.extern _memcpy
	.extern _StateSyncgGetSatCanState
	.public _StateSyncSdkCycleProcess
	.public _StateSyncGetLocationInfo
	.public _StateSyncGetSatelliteInfo
	.public _StateSyncGetNetInfo
	.public _StateSyncGetHalstate
	.public _StateSyncGetTspState
	.public _StateSyncGetMpuFaultExtStatus
	.extern _Dem_GetEventStatus
	.extern _memset
	.public _McuSendCpuFaultSyncInit
	.public _McuSendCpuFaultSyncCycleProcess
	.extern _MpuHalTransmit
	.extern _LogHalPrint
	.public _MpuDtcSyncSdkCycleProcess
	.public _StateSyncGetDtcstate

	.section .text, text
_FloatToUint16Trunc.1:
	.stack _FloatToUint16Trunc.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 29
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 35
	st.w r6, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 37
	ld.w 0x00000000[r3], r2
	movhi 0x00000080, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 40
	or r2, r10
	mov 0x00FFFFFF, r5
	and r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 39
	mov r2, r5
	shr 0x00000017, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 38
	shr 0x0000001F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 39
	zxb r5
	movea 0xFFFFFF81, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 42
	cmp 0x00000000, r6
	bp9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.1_6
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 44
	addi 0xFFFFFFE9, r6, r0
	blt9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 47
	movea 0xFFFFFF6A, r5, r5
	shl r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 49
	mov r10, r5
	subr r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 48
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 49
	cmov 0x00000002, r10, r5, r2
	movhi 0x00000001, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 51
	cmp r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 52
	cmov 0x00000009, 0xFFFFFFFF, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 53
	zxh r10
	dispose 0x00000004, 0x00000000, [r31]
.BB.LABEL.1_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	movea 0x00000096, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 58
	sub r5, r6
	shr r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 59
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 60
	subr r0, r10
.BB.LABEL.1_6:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	zxh r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 63
	dispose 0x00000004, 0x00000000, [r31]
_StateSyncSdkInit:
	.stack _StateSyncSdkInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 75
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 77
	bp9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 81
	movhi HIGHW1(#_g_processCycleTime.1), r0, r2
	st.h r7, LOWW(#_g_processCycleTime.1)[r2]
	movea 0x00007530, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 84
	mov #_g_cpuLocationInfo.2, r5
	st.h r2, 0x00000072[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 85
	st.h r0, 0x00000070[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 86
	st.b r0, 0x00000074[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 88
	mov #_g_cpuSatelliteInfo.3, r5
	st.h r2, 0x000003FC[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 89
	st.h r0, 0x000003FA[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 90
	st.b r0, 0x000003FE[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 92
	mov #_g_cpuNetInfo.4, r5
	st.h r2, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 93
	st.h r0, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 94
	st.b r0, 0x0000000A[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 96
	mov #_g_cpuHalState.5, r5
	st.h r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 97
	st.h r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 98
	st.b r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 100
	mov #_g_cpuTspState.6, r5
	st.h r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 101
	st.h r0, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 102
	st.b r0, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 104
	mov #_g_cpuMpuDtcInfo.7, r5
	st.h r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 105
	st.h r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 106
	st.b r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 108
	mov #_g_mpuFaultExtStatus.8, r5
	st.h r2, 0x0000000A[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 109
	st.h r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 110
	st.b r0, 0x0000000C[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 117
	jmp [r31]
.BB.LABEL.2_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 118
	jmp [r31]
_Uint8ArrayToFloat.1:
	.stack _Uint8ArrayToFloat.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 129
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 134
	cmp 0x00000000, r7
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 137
	ld.b 0x00000000[r6], r2
	st.b r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 138
	ld.b 0x00000001[r6], r2
	st.b r2, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 139
	ld.b 0x00000002[r6], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 140
	ld.b 0x00000003[r6], r2
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 145
	ld.b 0x00000003[r6], r2
	st.b r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 146
	ld.b 0x00000002[r6], r2
	st.b r2, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 147
	ld.b 0x00000001[r6], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 148
	ld.b 0x00000000[r6], r2
.BB.LABEL.3_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 150
	ld.w 0x00000000[r3], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 151
	dispose 0x00000004, 0x00000000, [r31]
_Uint8ArrayToDouble.1:
	.stack _Uint8ArrayToDouble.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 162
	add 0xFFFFFFF8, r3
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 167
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_2
	br9 .BB.LABEL.4_4
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 172
	add r2, r5
	mov r6, r7
	add r2, r7
	ld.b 0x00000000[r7], r7
	st.b r7, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.4_2:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 170
	cmp 0x00000008, r2
	blt9 .BB.LABEL.4_1
	br9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 180
	add r2, r5
	mov 0x00000007, r7
	sub r2, r7
	add r6, r7
	ld.b 0x00000000[r7], r7
	st.b r7, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.4_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 178
	cmp 0x00000008, r2
	blt9 .BB.LABEL.4_3
.BB.LABEL.4_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 185
	ld.w 0x00000000[r3], r10
	ld.w 0x00000004[r3], r11
	dispose 0x00000008, 0x00000000, [r31]
_StateSyncParseGnssData.1:
	.stack _StateSyncParseGnssData.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 195
	prepare 0x00000679, 0x0000001C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 198
	ld.w 0x00000008[r20], r2
	ld.b 0x00000000[r2], r2
	movhi HIGHW1(#_g_cpuLocationInfo.2), r0, r5
	st.b r2, LOWW(#_g_cpuLocationInfo.2)[r5]
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 199
	jarl _DtcGetObjState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 200
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 202
	movhi HIGHW1(#_g_cpuLocationInfo.2+0x00000001), r0, r2
	st.b r0, LOWW(#_g_cpuLocationInfo.2+0x00000001)[r2]
	br9 .BB.LABEL.5_7
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 204
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000001, r5
	br9 .BB.LABEL.5_6
.BB.LABEL.5_4:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 208
	add 0xFFFFFFFE, r10
	cmp 0x00000001, r10
	bh9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000002, r5
.BB.LABEL.5_6:	; if_then_bb41
	movhi HIGHW1(#_g_cpuLocationInfo.2+0x00000001), r0, r2
	st.b r5, LOWW(#_g_cpuLocationInfo.2+0x00000001)[r2]
.BB.LABEL.5_7:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 212
	ld.w 0x00000008[r20], r2
	ld.b 0x00000002[r2], r2
	mov #_g_cpuLocationInfo.2, r5
	st.b r2, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 213
	ld.w 0x00000008[r20], r2
	ld.b 0x00000003[r2], r6
	shl 0x00000018, r6
	ld.bu 0x00000004[r2], r7
	shl 0x00000010, r7
	or r7, r6
	ld.bu 0x00000005[r2], r7
	shl 0x00000008, r7
	or r7, r6
	ld.bu 0x00000006[r2], r2
	or r2, r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 214
	ld.w 0x00000008[r20], r2
	ld.b 0x00000007[r2], r6
	shl 0x00000018, r6
	ld.bu 0x00000008[r2], r7
	shl 0x00000010, r7
	or r7, r6
	ld.bu 0x00000009[r2], r7
	shl 0x00000008, r7
	or r7, r6
	ld.bu 0x0000000A[r2], r2
	or r2, r6
	st.w r6, 0x00000008[r5]
	mov 0x00000000, r2
	br9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 220
	andi 0x000000FF, r2, r5
	add r5, r6
	ld.w 0x00000008[r20], r7
	add r5, r7
	ld.b 0x0000000B[r7], r7
	st.b r7, 0x00000000[r6]
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 221
	add r5, r6
	ld.w 0x00000008[r20], r7
	add r7, r5
	ld.b 0x00000013[r5], r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.5_9:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 218
	andi 0x000000FF, r2, r5
	movea 0x00000010, r3, r6
	cmp 0x00000008, r5
	blt9 .BB.LABEL.5_8
.BB.LABEL.5_10:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 223
	mov r21, r7
	jarl _Uint8ArrayToDouble.1, r31
	mov #_g_cpuLocationInfo.2, r22
	st.w r11, 0x00000010[r22]
	st.w r10, 0x0000000C[r22]
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 224
	mov r21, r7
	jarl _Uint8ArrayToDouble.1, r31
	st.w r11, 0x00000018[r22]
	st.w r10, 0x00000014[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 226
	ld.w 0x00000008[r20], r2
	ld.bu 0x0000001C[r2], r5
	ld.b 0x0000001B[r2], r2
	shl 0x00000008, r2
	or r5, r2
	st.h r2, 0x0000001C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 227
	ld.w 0x00000008[r20], r2
	ld.bu 0x0000001E[r2], r5
	ld.b 0x0000001D[r2], r2
	shl 0x00000008, r2
	or r5, r2
	st.h r2, 0x0000001E[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 228
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000020[r2], r5
	ld.b 0x0000001F[r2], r2
	shl 0x00000008, r2
	or r5, r2
	st.h r2, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 230
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000022[r2], r5
	ld.b 0x00000021[r2], r2
	shl 0x00000008, r2
	or r5, r2
	st.h r2, 0x00000022[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 231
	ld.w 0x00000008[r20], r2
	ld.b 0x00000023[r2], r2
	st.b r2, 0x00000024[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 232
	ld.w 0x00000008[r20], r2
	ld.b 0x00000024[r2], r2
	st.b r2, 0x00000025[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 233
	ld.w 0x00000008[r20], r2
	ld.b 0x00000025[r2], r5
	shl 0x00000018, r5
	ld.bu 0x00000026[r2], r6
	shl 0x00000010, r6
	or r6, r5
	ld.bu 0x00000027[r2], r6
	shl 0x00000008, r6
	or r6, r5
	ld.bu 0x00000028[r2], r2
	or r2, r5
	st.w r5, 0x00000028[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 234
	ld.w 0x00000008[r20], r2
	ld.bu 0x0000002A[r2], r5
	ld.b 0x00000029[r2], r2
	shl 0x00000008, r2
	or r5, r2
	st.h r2, 0x0000002C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 236
	ld.w 0x00000008[r20], r2
	movea 0x0000002B, r2, r7
	movea 0x00000018, r3, r23
	mov 0x00000004, r24
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 237
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x00000030[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 238
	ld.w 0x00000008[r20], r2
	movea 0x0000002F, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 239
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x00000034[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 241
	ld.w 0x00000008[r20], r2
	movea 0x00000033, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 242
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	mov r10, r6
	jarl __COM_ftod, r31
	movhi 0x00004059, r0, r25
	mov r10, r6
	mov r11, r7
	mov r21, r8
	mov r25, r9
	jarl __COM_dmul, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtof, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 243
	mov r10, r6
	jarl _FloatToUint16Trunc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 244
	st.h r10, 0x00000038[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 245
	ld.w 0x00000008[r20], r2
	movea 0x00000037, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 246
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	mov r10, r6
	jarl __COM_ftod, r31
	mov r10, r6
	mov r11, r7
	mov r21, r8
	mov r25, r9
	jarl __COM_dmul, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtof, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 247
	mov r10, r6
	jarl _FloatToUint16Trunc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 248
	st.h r10, 0x0000003A[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 249
	ld.w 0x00000008[r20], r2
	movea 0x0000003B, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 250
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	mov r10, r6
	jarl __COM_ftod, r31
	mov r10, r6
	mov r11, r7
	mov r21, r8
	mov r25, r9
	jarl __COM_dmul, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtof, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 251
	mov r10, r6
	jarl _FloatToUint16Trunc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 252
	st.h r10, 0x0000003C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 256
	ld.w 0x00000008[r20], r2
	movea 0x0000003F, r2, r7
	mov r3, r25
	mov 0x00000008, r8
	mov r25, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 257
	mov r25, r6
	mov r21, r7
	jarl _Uint8ArrayToDouble.1, r31
	st.w r11, 0x00000044[r22]
	st.w r10, 0x00000040[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 259
	ld.w 0x00000008[r20], r2
	movea 0x00000047, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 260
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x00000048[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 261
	ld.w 0x00000008[r20], r2
	movea 0x0000004B, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 262
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x0000004C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 263
	ld.w 0x00000008[r20], r2
	movea 0x0000004F, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 264
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x00000050[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 266
	ld.w 0x00000008[r20], r2
	movea 0x00000053, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 267
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x00000054[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 268
	ld.w 0x00000008[r20], r2
	movea 0x00000057, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 269
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x00000058[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 270
	ld.w 0x00000008[r20], r2
	movea 0x0000005B, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 271
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x0000005C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 273
	ld.w 0x00000008[r20], r2
	ld.b 0x00000063[r2], r5
	shl 0x00000018, r5
	ld.bu 0x00000064[r2], r6
	shl 0x00000010, r6
	or r6, r5
	ld.bu 0x00000065[r2], r6
	shl 0x00000008, r6
	or r6, r5
	ld.bu 0x00000066[r2], r2
	or r2, r5
	st.w r5, 0x00000060[r22]
	sar 0x0000001F, r5
	st.w r5, 0x00000064[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 274
	ld.w 0x00000008[r20], r2
	movea 0x00000067, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 275
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x00000068[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 276
	ld.w 0x00000008[r20], r2
	movea 0x0000006B, r2, r7
	mov r23, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 277
	mov r23, r6
	mov r21, r7
	jarl _Uint8ArrayToFloat.1, r31
	st.w r10, 0x0000006C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 279
	st.h r0, 0x00000070[r22]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 280
	st.b r2, 0x00000074[r22]
	dispose 0x0000001C, 0x00000679, [r31]
_StateSyncParseSatelliteData.1:
	.stack _StateSyncParseSatelliteData.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 291
	prepare 0x000007F9, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 294
	jarl _StateSyncgGetSatCanState, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 299
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000000[r2], r2
	movhi HIGHW1(#_g_cpuSatelliteInfo.3), r0, r5
	st.b r2, LOWW(#_g_cpuSatelliteInfo.3)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 300
	addi 0xFFFFFF81, r2, r0
	movea 0x0000007F, r0, r5
	cmov 0x0000000F, r5, r2, r21
	mov 0x00000000, r22
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 304
	andi 0x000000FF, r22, r2
	mov r2, r23
	mul 0x0000000E, r23, r0
	ld.w 0x00000008[r20], r5
	add r23, r5
	ld.bu 0x00000002[r5], r6
	ld.b 0x00000001[r5], r5
	shl 0x00000008, r5
	or r6, r5
	shl 0x00000003, r2
	mov #_g_cpuSatelliteInfo.3, r24
	add r2, r24
	st.h r5, 0x00000002[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 305
	ld.w 0x00000008[r20], r7
	add r23, r7
	add 0x00000003, r7
	mov r3, r25
	mov 0x00000004, r26
	mov r25, r6
	mov r26, r8
	jarl _memcpy, r31
	mov 0x00000000, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 306
	mov r25, r6
	mov r27, r7
	jarl _Uint8ArrayToFloat.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 307
	mov r10, r6
	jarl _FloatToUint16Trunc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 308
	st.h r10, 0x00000004[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 309
	ld.w 0x00000008[r20], r7
	add r23, r7
	add 0x00000007, r7
	mov r25, r6
	mov r26, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 310
	mov r25, r6
	mov r27, r7
	jarl _Uint8ArrayToFloat.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 311
	mov r10, r6
	jarl _FloatToUint16Trunc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 312
	st.h r10, 0x00000006[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 313
	ld.w 0x00000008[r20], r2
	add r2, r23
	addi 0x0000000B, r23, r7
	mov r25, r6
	mov r26, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 314
	mov r25, r6
	mov r27, r7
	jarl _Uint8ArrayToFloat.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 315
	mov r10, r6
	jarl _FloatToUint16Trunc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 316
	st.h r10, 0x00000008[r24]
	add 0x00000001, r22
.BB.LABEL.6_3:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 302
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.6_2
.BB.LABEL.6_4:	; bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 319
	mov #_g_cpuSatelliteInfo.3, r2
	st.h r0, 0x000003FA[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 320
	st.b r5, 0x000003FE[r2]
.BB.LABEL.6_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 321
	dispose 0x00000004, 0x000007F9, [r31]
_StateSyncSdkCycleProcess:
	.stack _StateSyncSdkCycleProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 332
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 334
	cmp 0x00000000, r6
	bz17 .BB.LABEL.7_15
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ld.bu 0x00000000[r6], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 336
	ld.bu 0x00000001[r6], r2
	addi 0xFFFFFFF0, r2, r0
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_3:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 338
	ld.bu 0x00000002[r6], r2
	andi 0x0000007F, r2, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 340
	jarl _StateSyncParseGnssData.1, r31
	br9 .BB.LABEL.7_15
.BB.LABEL.7_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 342
	andi 0x0000007F, r2, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_6:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 344
	jarl _StateSyncParseSatelliteData.1, r31
	br9 .BB.LABEL.7_15
.BB.LABEL.7_7:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 347
	addi 0xFFFFFFEF, r2, r0
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_8:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 349
	ld.hu 0x00000006[r6], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_9:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 351
	ld.w 0x00000008[r6], r2
	ld.b 0x00000000[r2], r2
	mov #_g_cpuNetInfo.4, r5
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 352
	ld.w 0x00000008[r6], r2
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 353
	ld.w 0x00000008[r6], r2
	ld.b 0x00000002[r2], r2
	st.b r2, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 354
	ld.w 0x00000008[r6], r2
	ld.b 0x00000003[r2], r2
	st.b r2, 0x00000003[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 355
	ld.w 0x00000008[r6], r2
	ld.b 0x00000004[r2], r2
	st.b r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 357
	st.h r0, 0x00000006[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 358
	st.b r2, 0x0000000A[r5]
	br9 .BB.LABEL.7_15
.BB.LABEL.7_10:	; if_else_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 361
	addi 0xFFFFFFEA, r2, r0
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_11:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 363
	ld.hu 0x00000006[r6], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_12:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 365
	ld.w 0x00000008[r6], r2
	ld.b 0x00000000[r2], r2
	mov #_g_cpuHalState.5, r5
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 366
	ld.w 0x00000008[r6], r2
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 367
	ld.w 0x00000008[r6], r2
	ld.bu 0x00000002[r2], r6
	ld.bu 0x00000003[r2], r2
	add 0x00000008, r2
	shl r2, r6
	st.h r6, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 369
	st.h r0, 0x00000004[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 370
	st.b r2, 0x00000008[r5]
	br9 .BB.LABEL.7_15
.BB.LABEL.7_13:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 373
	addi 0xFFFFFFE9, r2, r0
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_14:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 375
	ld.w 0x00000008[r6], r2
	ld.b 0x00000000[r2], r2
	mov #_g_cpuTspState.6, r5
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 377
	st.h r0, 0x00000002[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 378
	st.b r2, 0x00000006[r5]
.BB.LABEL.7_15:	; if_break_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 385
	movhi HIGHW1(#_g_processCycleTime.1), r0, r2
	ld.hu LOWW(#_g_processCycleTime.1)[r2], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.7_37
.BB.LABEL.7_16:	; if_break_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 389
	movhi HIGHW1(#_g_cpuLocationInfo.2+0x00000074), r0, r2
	ld.bu LOWW(#_g_cpuLocationInfo.2+0x00000074)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_19
.BB.LABEL.7_17:	; bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov #_g_cpuLocationInfo.2, r2
	ld.hu 0x00000070[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	ld.hu 0x00000072[r2], r8
	st.h r6, 0x00000070[r2]
	divhu r7, r8, r0
	cmp r8, r5
	ble9 .BB.LABEL.7_19
.BB.LABEL.7_18:	; if_then_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 391
	movhi HIGHW1(#_g_cpuLocationInfo.2+0x00000074), r0, r2
	st.b r0, LOWW(#_g_cpuLocationInfo.2+0x00000074)[r2]
.BB.LABEL.7_19:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 394
	movhi HIGHW1(#_g_cpuSatelliteInfo.3+0x000003FE), r0, r2
	ld.bu LOWW(#_g_cpuSatelliteInfo.3+0x000003FE)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_22
.BB.LABEL.7_20:	; bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov #_g_cpuSatelliteInfo.3, r2
	ld.hu 0x000003FA[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	ld.hu 0x000003FC[r2], r8
	st.h r6, 0x000003FA[r2]
	divhu r7, r8, r0
	cmp r8, r5
	ble9 .BB.LABEL.7_22
.BB.LABEL.7_21:	; if_then_bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 396
	movhi HIGHW1(#_g_cpuSatelliteInfo.3+0x000003FE), r0, r2
	st.b r0, LOWW(#_g_cpuSatelliteInfo.3+0x000003FE)[r2]
.BB.LABEL.7_22:	; if_break_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 399
	movhi HIGHW1(#_g_cpuNetInfo.4+0x0000000A), r0, r2
	ld.bu LOWW(#_g_cpuNetInfo.4+0x0000000A)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_25
.BB.LABEL.7_23:	; bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov #_g_cpuNetInfo.4, r2
	ld.hu 0x00000006[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	ld.hu 0x00000008[r2], r8
	st.h r6, 0x00000006[r2]
	divhu r7, r8, r0
	cmp r8, r5
	ble9 .BB.LABEL.7_25
.BB.LABEL.7_24:	; if_then_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 401
	movhi HIGHW1(#_g_cpuNetInfo.4+0x0000000A), r0, r2
	st.b r0, LOWW(#_g_cpuNetInfo.4+0x0000000A)[r2]
.BB.LABEL.7_25:	; if_break_bb237
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 404
	movhi HIGHW1(#_g_cpuHalState.5+0x00000008), r0, r2
	ld.bu LOWW(#_g_cpuHalState.5+0x00000008)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_28
.BB.LABEL.7_26:	; bb242
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov #_g_cpuHalState.5, r2
	ld.hu 0x00000004[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	ld.hu 0x00000006[r2], r8
	st.h r6, 0x00000004[r2]
	divhu r7, r8, r0
	cmp r8, r5
	ble9 .BB.LABEL.7_28
.BB.LABEL.7_27:	; if_then_bb262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 406
	movhi HIGHW1(#_g_cpuHalState.5+0x00000008), r0, r2
	st.b r0, LOWW(#_g_cpuHalState.5+0x00000008)[r2]
.BB.LABEL.7_28:	; if_break_bb263
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 409
	movhi HIGHW1(#_g_cpuTspState.6+0x00000006), r0, r2
	ld.bu LOWW(#_g_cpuTspState.6+0x00000006)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_31
.BB.LABEL.7_29:	; bb268
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov #_g_cpuTspState.6, r2
	ld.hu 0x00000002[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	ld.hu 0x00000004[r2], r8
	st.h r6, 0x00000002[r2]
	divhu r7, r8, r0
	cmp r8, r5
	ble9 .BB.LABEL.7_31
.BB.LABEL.7_30:	; if_then_bb288
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 411
	movhi HIGHW1(#_g_cpuTspState.6+0x00000006), r0, r2
	st.b r0, LOWW(#_g_cpuTspState.6+0x00000006)[r2]
.BB.LABEL.7_31:	; if_break_bb289
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 414
	movhi HIGHW1(#_g_cpuMpuDtcInfo.7+0x00000008), r0, r2
	ld.bu LOWW(#_g_cpuMpuDtcInfo.7+0x00000008)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_34
.BB.LABEL.7_32:	; bb294
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov #_g_cpuMpuDtcInfo.7, r2
	ld.hu 0x00000004[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	ld.hu 0x00000006[r2], r8
	st.h r6, 0x00000004[r2]
	divhu r7, r8, r0
	cmp r8, r5
	ble9 .BB.LABEL.7_34
.BB.LABEL.7_33:	; if_then_bb314
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 416
	movhi HIGHW1(#_g_cpuMpuDtcInfo.7+0x00000008), r0, r2
	st.b r0, LOWW(#_g_cpuMpuDtcInfo.7+0x00000008)[r2]
.BB.LABEL.7_34:	; if_break_bb315
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 419
	movhi HIGHW1(#_g_mpuFaultExtStatus.8+0x0000000C), r0, r2
	ld.bu LOWW(#_g_mpuFaultExtStatus.8+0x0000000C)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_37
.BB.LABEL.7_35:	; bb320
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov #_g_mpuFaultExtStatus.8, r2
	ld.hu 0x00000008[r2], r5
	addi 0x00000001, r5, r6
	movhi HIGHW1(#_g_processCycleTime.1), r0, r7
	ld.hu LOWW(#_g_processCycleTime.1)[r7], r7
	ld.hu 0x0000000A[r2], r8
	st.h r6, 0x00000008[r2]
	divhu r7, r8, r0
	cmp r8, r5
	ble9 .BB.LABEL.7_37
.BB.LABEL.7_36:	; if_then_bb340
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 423
	movhi HIGHW1(#_g_mpuFaultExtStatus.8+0x0000000C), r0, r2
	st.b r0, LOWW(#_g_mpuFaultExtStatus.8+0x0000000C)[r2]
.BB.LABEL.7_37:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 426
	dispose 0x00000000, 0x00000001, [r31]
_StateSyncGetLocationInfo:
	.stack _StateSyncGetLocationInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 436
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 442
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.8_8
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 447
	movhi HIGHW1(#_g_cpuLocationInfo.2+0x00000074), r0, r2
	ld.bu LOWW(#_g_cpuLocationInfo.2+0x00000074)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_break_bb.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.8_8
.BB.LABEL.8_4:	; if_break_bb15
	mov 0x00000000, r2
	br9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 456
	andi 0x0000FFFF, r2, r5
	mov r6, r7
	add r5, r7
	mov #_g_cpuLocationInfo.2, r8
	add r8, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.8_6:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 454
	andi 0x0000FFFF, r2, r5
	movea 0x00000070, r0, r7
	cmp r7, r5
	bl9 .BB.LABEL.8_5
.BB.LABEL.8_7:	; bb30.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
.BB.LABEL.8_8:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 460
	sxh r10
	jmp [r31]
_StateSyncGetSatelliteInfo:
	.stack _StateSyncGetSatelliteInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 470
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 476
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.9_8
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 481
	movhi HIGHW1(#_g_cpuSatelliteInfo.3+0x000003FE), r0, r2
	ld.bu LOWW(#_g_cpuSatelliteInfo.3+0x000003FE)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_break_bb.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.9_8
.BB.LABEL.9_4:	; if_break_bb15
	mov 0x00000000, r2
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 491
	andi 0x0000FFFF, r2, r5
	mov r6, r7
	add r5, r7
	mov #_g_cpuSatelliteInfo.3, r8
	add r8, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.9_6:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 489
	andi 0x0000FFFF, r2, r5
	movea 0x000003FA, r0, r7
	cmp r7, r5
	bl9 .BB.LABEL.9_5
.BB.LABEL.9_7:	; bb30.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
.BB.LABEL.9_8:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 495
	sxh r10
	jmp [r31]
_StateSyncGetNetInfo:
	.stack _StateSyncGetNetInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 505
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 511
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.10_7
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 516
	movhi HIGHW1(#_g_cpuNetInfo.4+0x0000000A), r0, r2
	ld.bu LOWW(#_g_cpuNetInfo.4+0x0000000A)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 526
	andi 0x000000FF, r2, r5
	mov r6, r7
	add r5, r7
	mov #_g_cpuNetInfo.4, r8
	add r8, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.10_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 524
	andi 0x000000FF, r2, r5
	cmp 0x00000005, r5
	bl9 .BB.LABEL.10_4
.BB.LABEL.10_6:	; bb30.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
.BB.LABEL.10_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 530
	sxh r10
	jmp [r31]
_StateSyncGetHalstate:
	.stack _StateSyncGetHalstate = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 540
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 546
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.11_7
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 551
	movhi HIGHW1(#_g_cpuHalState.5+0x00000008), r0, r2
	ld.bu LOWW(#_g_cpuHalState.5+0x00000008)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 561
	andi 0x000000FF, r2, r5
	mov r6, r7
	add r5, r7
	mov #_g_cpuHalState.5, r8
	add r8, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.11_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 559
	andi 0x000000FF, r2, r5
	cmp 0x00000004, r5
	bl9 .BB.LABEL.11_4
.BB.LABEL.11_6:	; bb30.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
.BB.LABEL.11_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 565
	sxh r10
	jmp [r31]
_StateSyncGetTspState:
	.stack _StateSyncGetTspState = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 575
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 577
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 582
	movhi HIGHW1(#_g_cpuTspState.6+0x00000006), r0, r2
	ld.bu LOWW(#_g_cpuTspState.6+0x00000006)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_break_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 587
	movhi HIGHW1(#_g_cpuTspState.6), r0, r2
	ld.b LOWW(#_g_cpuTspState.6)[r2], r2
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 589
	jmp [r31]
.BB.LABEL.12_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 590
	jmp [r31]
_StateSyncGetMpuFaultExtStatus:
	.stack _StateSyncGetMpuFaultExtStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 619
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 624
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.13_7
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 628
	movhi HIGHW1(#_g_mpuFaultExtStatus.8+0x0000000C), r0, r2
	ld.bu LOWW(#_g_mpuFaultExtStatus.8+0x0000000C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 636
	andi 0x0000FFFF, r2, r5
	mov r6, r7
	add r5, r7
	mov #_g_mpuFaultExtStatus.8, r8
	add r8, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.13_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 634
	andi 0x0000FFFF, r2, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.13_4
.BB.LABEL.13_6:	; bb30.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
.BB.LABEL.13_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 639
	sxh r10
	jmp [r31]
_McuSendCpuFaultIsFailed.1:
	.stack _McuSendCpuFaultIsFailed.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 669
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 671
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 672
	cmp 0x00000000, r6
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 676
	jarl _Dem_GetEventStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 680
	ld.bu 0x00000003[r3], r2
	andi 0x00000001, r2, r10
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.14_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 681
	dispose 0x00000004, 0x00000001, [r31]
_McuSendCpuFaultSetBit.1:
	.stack _McuSendCpuFaultSetBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 683
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 687
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	addi 0xFFFFFFE1, r7, r0
	bgt9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 691
	mov r7, r2
	shr 0x00000003, r2
	mov 0x00000003, r5
	sub r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 693
	zxb r5
	add r5, r6
	set1 r7, [r6]
.BB.LABEL.15_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 694
	jmp [r31]
_McuSendCpuFaultBuildBitmap.1:
	.stack _McuSendCpuFaultBuildBitmap.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 696
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 700
	bz9 .BB.LABEL.16_7
.BB.LABEL.16_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000004, r8
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 704
	mov r20, r6
	mov r21, r7
	jarl _memset, r31
	br9 .BB.LABEL.16_5
.BB.LABEL.16_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 708
	mov r21, r2
	shl 0x00000002, r2
	mov #_g_mcuSendCpuFaultMap.14, r5
	add r2, r5
	ld.hu 0x00000002[r5], r6
	jarl _McuSendCpuFaultIsFailed.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 710
	mov r21, r2
	shl 0x00000002, r2
	mov #_g_mcuSendCpuFaultMap.14, r5
	add r2, r5
	ld.bu 0x00000000[r5], r7
	mov r20, r6
	jarl _McuSendCpuFaultSetBit.1, r31
.BB.LABEL.16_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	add 0x00000001, r21
.BB.LABEL.16_5:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 706
	cmp 0x0000000E, r21
	bl9 .BB.LABEL.16_2
.BB.LABEL.16_6:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 713
	ld.b 0x00000000[r20], r10
	shl 0x00000018, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 714
	ld.bu 0x00000001[r20], r2
	shl 0x00000010, r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 715
	ld.bu 0x00000002[r20], r2
	shl 0x00000008, r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 716
	ld.bu 0x00000003[r20], r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 717
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.16_7:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 718
	dispose 0x00000000, 0x00000061, [r31]
_McuSendCpuFaultSyncInit:
	.stack _McuSendCpuFaultSyncInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 720
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 722
	cmp 0x00000000, r6
	bn9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 726
	movhi HIGHW1(#_g_mcuDtcSyncMpuHandle.9), r0, r2
	st.h r6, LOWW(#_g_mcuDtcSyncMpuHandle.9)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 727
	movhi HIGHW1(#_g_mcuDtcSyncCycleTime.10), r0, r2
	st.h r7, LOWW(#_g_mcuDtcSyncCycleTime.10)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 728
	movhi HIGHW1(#_g_mcuDtcSyncTimeCount.11), r0, r2
	st.h r0, LOWW(#_g_mcuDtcSyncTimeCount.11)[r2]
	mov 0x00000000, r20
	mov 0x00000004, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 729
	mov #_g_mcuDtcSyncData.12, r6
	mov r20, r7
	jarl _memset, r31
	mov 0x0000000C, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 730
	mov #_g_mcuDtcSyncPack.13, r6
	mov r20, r7
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 731
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.17_3:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 732
	dispose 0x00000000, 0x00000041, [r31]
_McuSendCpuFaultSyncCycleProcess:
	.stack _McuSendCpuFaultSyncCycleProcess = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 734
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 738
	movhi HIGHW1(#_g_mcuDtcSyncMpuHandle.9), r0, r2
	ld.h LOWW(#_g_mcuDtcSyncMpuHandle.9)[r2], r2
	cmp 0x00000000, r2
	bn9 .BB.LABEL.18_6
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	movhi HIGHW1(#_g_mcuDtcSyncCycleTime.10), r0, r2
	ld.hu LOWW(#_g_mcuDtcSyncCycleTime.10)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 742
	movhi HIGHW1(#_g_mcuDtcSyncTimeCount.11), r0, r2
	ld.hu LOWW(#_g_mcuDtcSyncTimeCount.11)[r2], r2
	addi 0xFFFFFC19, r2, r0
	bgt9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 744
	movhi HIGHW1(#_g_mcuDtcSyncCycleTime.10), r0, r5
	ld.h LOWW(#_g_mcuDtcSyncCycleTime.10)[r5], r5
	add r5, r2
	movhi HIGHW1(#_g_mcuDtcSyncTimeCount.11), r0, r5
	st.h r2, LOWW(#_g_mcuDtcSyncTimeCount.11)[r5]
.BB.LABEL.18_4:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 746
	movhi HIGHW1(#_g_mcuDtcSyncTimeCount.11), r0, r2
	ld.hu LOWW(#_g_mcuDtcSyncTimeCount.11)[r2], r2
	addi 0xFFFFFC18, r2, r0
	blt9 .BB.LABEL.18_6
.BB.LABEL.18_5:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 750
	movhi HIGHW1(#_g_mcuDtcSyncTimeCount.11), r0, r2
	st.h r0, LOWW(#_g_mcuDtcSyncTimeCount.11)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 751
	mov #_g_mcuDtcSyncData.12, r20
	mov r20, r6
	jarl _McuSendCpuFaultBuildBitmap.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 752
	mov #_g_mcuDtcSyncPack.13, r7
	movea 0x00000030, r0, r2
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 753
	st.b r2, 0x00000001[r7]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 754
	st.b r2, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 755
	st.w r20, 0x00000008[r7]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 756
	st.h r2, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 757
	st.h r2, 0x00000006[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 758
	movhi HIGHW1(#_g_mcuDtcSyncMpuHandle.9), r0, r2
	ld.h LOWW(#_g_mcuDtcSyncMpuHandle.9)[r2], r6
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 759
	mov #.STR.1, r6
	mov r21, r7
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 760
	ld.bu 0x00000003[r20], r2
	ld.bu 0x00000002[r20], r9
	ld.bu 0x00000001[r20], r8
	ld.bu 0x00000000[r20], r7
	st.w r2, 0x00000000[r3]
	mov #.STR.1751, r6
	jarl _LogHalPrint, r31
.BB.LABEL.18_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 765
	dispose 0x00000004, 0x00000061, [r31]
_InitMcuRecvMpuFaultMap.1:
	.stack _InitMcuRecvMpuFaultMap.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 790
	mov #_g_mcuRecvMpuFaultMap.15, r2
	st.b r0, 0x00000000[r2]
	movea 0x00000015, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 791
	st.h r5, 0x00000002[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 792
	st.b r5, 0x00000004[r2]
	movea 0x00000016, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 793
	st.h r5, 0x00000006[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 794
	st.b r5, 0x00000008[r2]
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 795
	st.h r5, 0x0000000A[r2]
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 796
	st.b r6, 0x0000000C[r2]
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 797
	st.h r6, 0x0000000E[r2]
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 798
	st.b r7, 0x00000010[r2]
	mov 0x0000000D, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 799
	st.h r7, 0x00000012[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 800
	st.b r5, 0x00000014[r2]
	mov 0x0000000E, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 801
	st.h r5, 0x00000016[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 802
	st.b r6, 0x00000018[r2]
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 803
	st.h r6, 0x0000001A[r2]
	mov 0x00000007, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 804
	st.b r8, 0x0000001C[r2]
	movea 0x00000032, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 805
	st.h r8, 0x0000001E[r2]
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 806
	st.b r8, 0x00000020[r2]
	movea 0x00000038, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 807
	st.h r8, 0x00000022[r2]
	mov 0x00000009, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 808
	st.b r8, 0x00000024[r2]
	movea 0x00000039, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 809
	st.h r8, 0x00000026[r2]
	mov 0x0000000A, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 810
	st.b r8, 0x00000028[r2]
	movea 0x00000036, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 811
	st.h r8, 0x0000002A[r2]
	mov 0x0000000B, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 812
	st.b r8, 0x0000002C[r2]
	movea 0x0000003A, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 813
	st.h r8, 0x0000002E[r2]
	mov 0x0000000C, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 814
	st.b r8, 0x00000030[r2]
	movea 0x00000037, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 815
	st.h r8, 0x00000032[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 816
	st.b r7, 0x00000034[r2]
	movea 0x00000035, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 817
	st.h r7, 0x00000036[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 818
	st.b r5, 0x00000038[r2]
	movea 0x00000033, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 819
	st.h r5, 0x0000003A[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 820
	st.b r6, 0x0000003C[r2]
	movea 0x00000034, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 821
	st.h r5, 0x0000003E[r2]
	movea 0x00000010, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 822
	st.b r5, 0x00000040[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 823
	st.h r0, 0x00000042[r2]
	movea 0x00000011, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 824
	st.b r5, 0x00000044[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 825
	st.h r0, 0x00000046[r2]
	movea 0x00000012, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 826
	st.b r5, 0x00000048[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 827
	st.h r0, 0x0000004A[r2]
	movea 0x00000013, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 828
	st.b r5, 0x0000004C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 829
	st.h r0, 0x0000004E[r2]
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 830
	st.b r5, 0x00000050[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 831
	st.h r0, 0x00000052[r2]
	jmp [r31]
_McuRecvMpuFaultBitmapToU32.1:
	.stack _McuRecvMpuFaultBitmapToU32.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 834
	ld.b 0x00000000[r6], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 837
	shl 0x00000018, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 838
	ld.bu 0x00000001[r6], r2
	shl 0x00000010, r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 839
	ld.bu 0x00000002[r6], r2
	shl 0x00000008, r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 840
	ld.bu 0x00000003[r6], r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 842
	jmp [r31]
_StateSyncUpdateDtcInfo.1:
	.stack _StateSyncUpdateDtcInfo.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 844
	movhi HIGHW1(#_g_cpuMpuDtcInfo.7), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 846
	st.w r6, LOWW(#_g_cpuMpuDtcInfo.7)[r2]
	jmp [r31]
_MpuDtcSyncSdkCycleProcess:
	.stack _MpuDtcSyncSdkCycleProcess = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 849
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 856
	movhi HIGHW1(#_s_faultMapInitialized.16.MpuDtcSyncSdkCycleProcess), r0, r2
	ld.bu LOWW(#_s_faultMapInitialized.16.MpuDtcSyncSdkCycleProcess)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 858
	jarl _InitMcuRecvMpuFaultMap.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 859
	movhi HIGHW1(#_s_faultMapInitialized.16.MpuDtcSyncSdkCycleProcess), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_s_faultMapInitialized.16.MpuDtcSyncSdkCycleProcess)[r2]
.BB.LABEL.22_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 862
	cmp 0x00000000, r20
	bz9 .BB.LABEL.22_7
.BB.LABEL.22_3:	; if_break_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 866
	ld.bu 0x00000000[r20], r2
	addi 0xFFFFFFD0, r2, r0
	bnz9 .BB.LABEL.22_7
.BB.LABEL.22_4:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ld.bu 0x00000001[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_7
.BB.LABEL.22_5:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 870
	ld.hu 0x00000006[r20], r2
	cmp 0x00000004, r2
	blt9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 875
	ld.w 0x00000008[r20], r6
	jarl _McuRecvMpuFaultBitmapToU32.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 876
	mov r10, r6
	jarl _StateSyncUpdateDtcInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 902
	mov #_g_cpuMpuDtcInfo.7, r2
	st.h r0, 0x00000004[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 903
	st.b r5, 0x00000008[r2]
.BB.LABEL.22_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 904
	dispose 0x00000000, 0x00000041, [r31]
_StateSyncGetDtcstate:
	.stack _StateSyncGetDtcstate = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 906
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 912
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.23_7
.BB.LABEL.23_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 917
	movhi HIGHW1(#_g_cpuMpuDtcInfo.7+0x00000008), r0, r2
	ld.bu LOWW(#_g_cpuMpuDtcInfo.7+0x00000008)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_1
.BB.LABEL.23_3:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 927
	andi 0x000000FF, r2, r5
	mov r6, r7
	add r5, r7
	mov #_g_cpuMpuDtcInfo.7, r8
	add r8, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.23_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 925
	andi 0x000000FF, r2, r5
	cmp 0x0000000C, r5
	bl9 .BB.LABEL.23_4
.BB.LABEL.23_6:	; bb30.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 0
	mov 0x00000000, r10
.BB.LABEL.23_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/stateSyncSdk.c", 931
	sxh r10
	jmp [r31]
	.section .data, data
	.align 2
_g_processCycleTime.1:
	.dhw 0x000A
	.align 2
_g_mcuDtcSyncMpuHandle.9:
	.dhw 0xFFFF
	.align 2
_g_mcuDtcSyncCycleTime.10:
	.ds (2)
	.align 2
_g_mcuDtcSyncTimeCount.11:
	.ds (2)
_g_mcuDtcSyncData.12:
	.ds (4)
_s_faultMapInitialized.16.MpuDtcSyncSdkCycleProcess:
	.ds (1)
	.section .bss, bss
	.align 4
_g_cpuLocationInfo.2:
	.ds (120)
	.align 2
_g_cpuSatelliteInfo.3:
	.ds (1024)
	.align 2
_g_cpuNetInfo.4:
	.ds (12)
	.align 2
_g_cpuHalState.5:
	.ds (10)
	.align 2
_g_cpuTspState.6:
	.ds (8)
	.align 4
_g_cpuMpuDtcInfo.7:
	.ds (12)
	.align 2
_g_mpuFaultExtStatus.8:
	.ds (14)
	.align 4
_g_mcuDtcSyncPack.13:
	.ds (12)
	.align 2
_g_mcuRecvMpuFaultMap.15:
	.ds (84)
	.section .const, const
	.align 2
_g_mcuSendCpuFaultMap.14:
	.ds (1)
	.ds (1)
	.dhw 0x0017
	.db 0x01
	.ds (1)
	.dhw 0x0018
	.db 0x02
	.ds (1)
	.dhw 0x0019
	.db 0x03
	.ds (1)
	.dhw 0x001A
	.db 0x04
	.ds (1)
	.dhw 0x001D
	.db 0x05
	.ds (1)
	.dhw 0x001E
	.db 0x06
	.ds (1)
	.dhw 0x001F
	.db 0x07
	.ds (1)
	.dhw 0x0020
	.db 0x08
	.ds (1)
	.dhw 0x0023
	.db 0x09
	.ds (1)
	.dhw 0x0024
	.db 0x0A
	.ds (1)
	.dhw 0x0007
	.db 0x0B
	.ds (1)
	.dhw 0x0009
	.db 0x0C
	.ds (1)
	.dhw 0x0008
	.db 0x0D
	.ds (1)
	.dhw 0x0001
.STR.1:
	.db 0x74,0x78,0x20,0x6D,0x63,0x75,0x20,0x66,0x61,0x75,0x6C,0x74,0x20,0x62,0x69,0x74
	.db 0x6D,0x61,0x70,0x20,0x3D,0x20,0x30,0x78,0x25,0x30,0x38,0x58,0x0D,0x0A
	.ds (1)
.STR.1751:
	.db 0x74,0x78,0x20,0x72,0x61,0x77,0x20,0x64,0x61,0x74,0x61,0x3A,0x20,0x25,0x30,0x32
	.db 0x58,0x20,0x25,0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58,0x20,0x25,0x30,0x32,0x58
	.db 0x0D,0x0A
	.ds (1)
