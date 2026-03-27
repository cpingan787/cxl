#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\icu\src\Icu_LLDriver.c -oDefaultBuild\Icu_LLDriver.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f51a29cf8bac40c597f4f4a92b8dd079srvhaugf.yj5
#@	compiled at Fri Mar 27 09:50:34 2026

	.file "..\..\Bsw\Mcal\icu\src\Icu_LLDriver.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Icu_GaaTAUDBOsReg_BaseAddress
	.extern _Icu_GaaTAUDBUserReg_BaseAddress
	.extern _Icu_GaaTAUDBChReg_BaseAddress
	.extern _Icu_GpfclaReg_BaseAddress
	.extern _Icu_GaaReg_8bit
	.extern _Icu_GaaRegMirror_8bit
	.extern _Icu_GpChannelConfig
	.extern _Icu_GpTimerChannelConfig
	.extern _Icu_GpTAUUnitConfig
	.extern _Icu_GpChannelRamData
	.extern _Icu_GpEdgeCountData
	.extern _Icu_GpTimeStampData
	.extern _Icu_GpSignalMeasurementData
	.extern _Icu_GaaTAUDBChannelRegMirror
	.extern _Icu_GaaFclaRegsMirror
	.extern _Icu_GenModuleMode
	.extern _Icu_GaaChannelMeasureStatus
	.public _Icu_HW_Init
	.extern _Dem_ReportErrorStatus
	.public _Icu_HW_DeInit
	.public _Icu_HW_EdgeCountingInit
	.public _Icu_HW_TimestampInit
	.public _Icu_HW_SignalMeasurementInit
	.public _Icu_HW_SetActivation
	.extern _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION
	.extern _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION
	.extern _SchM_Enter_Icu_ICU_EDGECOUNT_DATA_PROTECTION
	.extern _SchM_Exit_Icu_ICU_EDGECOUNT_DATA_PROTECTION
	.public _Icu_HW_SetMode
	.public _Icu_HW_StartCountMeasurement
	.public _Icu_HW_StopCountMeasurement
	.public _Icu_HW_GetEdgeNumbers
	.public _Icu_HW_ResetEdgeCount
	.public _Icu_HW_EnableEdgeDetection
	.public _Icu_HW_DisableEdgeDetection
	.public _Icu_TimerIsr
	.public _Icu_ServiceSignalMeasurement
	.public _Icu_ServiceTimestamp
	.extern _EcuM_CheckWakeup
	.public _Icu_ExternalInterruptIsr
	.public _Icu_HW_GetInputLevel
	.public _Icu_HW_GetTAUInCountValue
	.public _Icu_HW_SynchronousInit
	.public _Icu_HW_SynchronousStart
	.public _Icu_HW_SynchronousStop
	.public _Icu_HW_SynchronousDeInit
	.public _Icu_HWCheckConsistency

	.section .text, text
_Icu_HW_Init:
	.stack _Icu_HW_Init = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 816
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 893
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Icu_GpTAUUnitConfig)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 887
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 879
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r22
	mov 0x00000000, r23
	br9 .BB.LABEL.1_6
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 906
	ld.b 0x00000004[r20], r2
	add 0xFFFFFFFF, r2
	zxb r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 919
	tst1 0x00000000, 0x00000008[r20]
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 922
	ld.bu 0x00000001[r20], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBOsReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 927
	ld.h 0x00000002[r20], r5
	st.h r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 931
	ld.hu 0x00000002[r20], r5
	ld.hu 0x00000000[r2], r2
	cmp r2, r5
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_5:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1011
	add 0x00000001, r23
	add 0x0000000A, r20
.BB.LABEL.1_6:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 900
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_7:	; bb73.bb254_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.1_27
.BB.LABEL.1_8:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1066
	ld.bu 0x00000019[r22], r2
	andi 0x00000003, r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1073
	shr 0x00000004, r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.b 0x00000019[r22], r2
	shr 0x00000004, r2
	andi 0x00000003, r2, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.1_20
.BB.LABEL.1_10:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1084
	ld.bu 0x00000004[r22], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1089
	ld.h 0x00000000[r21], r2
	st.h r2, 0x00000200[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1093
	ld.hu 0x00000000[r21], r2
	ld.hu 0x00000200[r24], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_12:	; if_break_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1098
	ld.b 0x00000002[r21], r2
	st.b r2, 0x000000C0[r24]
	andi 0x000000FF, r20, r2
	mov #_Icu_GaaTAUDBChannelRegMirror, r5
	add r2, r5
	ld.b 0x00000002[r21], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1102
	ld.bu 0x00000002[r21], r2
	ld.bu 0x000000C0[r24], r5
	andi 0x00000003, r5, r5
	cmp r5, r2
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_14:	; if_break_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1107
	cmp 0x00000003, r23
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1110
	st.h r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1114
	ld.hu 0x00000000[r24], r24
	ori 0x0000FFFF, r0, r2
	cmp r2, r24
	bnz9 .BB.LABEL.1_18
	br9 .BB.LABEL.1_19
.BB.LABEL.1_16:	; if_else_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1118
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_17:	; if_then_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1121
	st.b r2, 0x00000180[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1124
	tst1 0x00000000, 0x00000140[r24]
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_19:	; if_break_bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1135
	ld.w 0x0000000C[r22], r2
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.1_20:	; if_break_bb235
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1212
	cmp 0x00000001, r23
	bz9 .BB.LABEL.1_25
.BB.LABEL.1_21:	; if_break_bb235
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	cmp 0x00000002, r23
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_22:	; if_break_bb235
	cmp 0x00000003, r23
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_23:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1220
	mov r21, r6
	jarl _Icu_HW_EdgeCountingInit, r31
	br9 .BB.LABEL.1_26
.BB.LABEL.1_24:	; switch_clause_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1230
	mov r21, r6
	jarl _Icu_HW_TimestampInit, r31
	br9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; switch_clause_bb242
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1240
	mov r21, r6
	jarl _Icu_HW_SignalMeasurementInit, r31
.BB.LABEL.1_26:	; bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1264
	add 0x00000001, r20
	add 0x00000006, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1255
	movea 0x0000001C, r22, r22
.BB.LABEL.1_27:	; bb254
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1059
	andi 0x000000FF, r20, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.1_8
.BB.LABEL.1_28:	; bb254.bb301_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000002, r20
	br9 .BB.LABEL.1_32
.BB.LABEL.1_29:	; bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1288
	ld.bu 0x00000019[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1294
	andi 0x00000003, r2, r0
	bnz9 .BB.LABEL.1_31
.BB.LABEL.1_30:	; if_then_bb273
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1305
	ld.w 0x0000000C[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1299
	ld.b 0x00000019[r22], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1305
	ld.b 0x00000000[r2], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1299
	shr 0x00000002, r5
	andi 0x00000003, r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1310
	andi 0x000000FF, r20, r6
	mov 0x00000000, r8
	jarl _Icu_HW_SetActivation, r31
.BB.LABEL.1_31:	; if_break_bb296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1321
	add 0x00000001, r20
	movea 0x0000001C, r22, r22
.BB.LABEL.1_32:	; bb301
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1279
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.1_29
.BB.LABEL.1_33:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1325
	dispose 0x00000000, 0x00000479, [r31]
_Icu_HW_DeInit:
	.stack _Icu_HW_DeInit = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1377
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1420
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r20
	mov 0x00000000, r21
	br9 .BB.LABEL.2_16
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1466
	ld.b 0x00000019[r20], r2
	shr 0x00000004, r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.b 0x00000019[r20], r2
	shr 0x00000004, r2
	andi 0x00000003, r2, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1479
	ld.bu 0x00000004[r20], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	ld.bu 0x00000019[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1475
	andi 0x00000003, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1483
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1489
	st.b r2, 0x00000180[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1493
	tst1 0x00000000, 0x00000140[r22]
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_6:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1504
	st.h r0, 0x00000200[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1507
	ld.hu 0x00000200[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_8:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1511
	st.h r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1513
	ld.hu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_10:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1517
	st.b r0, 0x000000C0[r22]
	andi 0x000000FF, r21, r2
	mov #_Icu_GaaTAUDBChannelRegMirror, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1521
	ld.bu 0x000000C0[r22], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_12:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1594
	ld.w 0x0000000C[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1597
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1604
	ld.bu 0x00000019[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1608
	andi 0x00000003, r2, r0
	bnz9 .BB.LABEL.2_15
.BB.LABEL.2_13:	; if_then_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1612
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r2
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r2], r5
	ld.bu 0x00000004[r20], r6
	add r6, r5
	st.b r0, 0x00000000[r5]
	andi 0x000000FF, r21, r5
	mov #_Icu_GaaFclaRegsMirror, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1618
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r2], r2
	ld.bu 0x00000004[r20], r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	andi 0x00000007, r2, r0
	bz9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; if_then_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_15:	; if_break_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1641
	add 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1632
	movea 0x0000001C, r20, r20
.BB.LABEL.2_16:	; bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1460
	andi 0x000000FF, r21, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1647
	dispose 0x00000000, 0x00000071, [r31]
_Icu_HW_EdgeCountingInit:
	.stack _Icu_HW_EdgeCountingInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1694
	movhi HIGHW1(#_Icu_GpEdgeCountData), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1710
	ld.w LOWW(#_Icu_GpEdgeCountData)[r2], r2
	ld.bu 0x00000004[r6], r5
	shl 0x00000002, r5
	add r5, r2
	clr1 0x00000000, 0x00000000[r2]
	jmp [r31]
_Icu_HW_TimestampInit:
	.stack _Icu_HW_TimestampInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1759
	ld.bu 0x00000004[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1773
	mulh 0x0000000C, r2
	movhi HIGHW1(#_Icu_GpTimeStampData), r0, r5
	ld.w LOWW(#_Icu_GpTimeStampData)[r5], r6
	add r2, r6
	st.h r0, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1776
	ld.w LOWW(#_Icu_GpTimeStampData)[r5], r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	jmp [r31]
_Icu_HW_SignalMeasurementInit:
	.stack _Icu_HW_SignalMeasurementInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1822
	ld.bu 0x00000004[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1839
	mulh 0x0000000C, r2
	movhi HIGHW1(#_Icu_GpSignalMeasurementData), r0, r5
	ld.w LOWW(#_Icu_GpSignalMeasurementData)[r5], r6
	add r2, r6
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1843
	ld.w LOWW(#_Icu_GpSignalMeasurementData)[r5], r6
	add r2, r6
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1846
	ld.w LOWW(#_Icu_GpSignalMeasurementData)[r5], r5
	add r2, r5
	st.w r0, 0x00000008[r5]
	jmp [r31]
_Icu_HW_SetActivation:
	.stack _Icu_HW_SetActivation = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1898
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1928
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r20
	mulhi 0x0000001C, r6, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1952
	ld.bu 0x00000019[r2], r5
	andi 0x00000003, r5, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1958
	cmp 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1942
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r5
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1958
	mov r6, r23
	mov r6, r24
	mov r7, r25
	mov r6, r26
	bnz17 .BB.LABEL.6_13
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1961
	ld.bu 0x00000019[r2], r21
	andi 0x00000030, r21, r0
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_2:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1966
	mulhi 0x0000001C, r24, r21
	add r21, r20
	ld.bu 0x00000004[r20], r21
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r22
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r22], r23
	add r21, r23
	st.b r0, 0x00000000[r23]
	mov #_Icu_GaaFclaRegsMirror, r21
	add r26, r21
	st.b r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1972
	ld.bu 0x00000004[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1966
	add 0x00000004, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1972
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r22], r22
	add r21, r22
	ld.bu 0x00000000[r22], r21
	andi 0x00000007, r21, r0
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.6_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1976
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r21
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r21], r21
	ld.bu 0x00000000[r20], r22
	add r22, r21
	cmp 0x00000002, r25
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000003, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1979
	st.b r22, 0x00000000[r21]
	mov #_Icu_GaaFclaRegsMirror, r21
	add r26, r21
	st.b r22, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1984
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r21
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r21], r21
	ld.bu 0x00000000[r20], r20
	add r20, r21
	ld.bu 0x00000000[r21], r21
	andi 0x00000007, r21, r21
	cmp 0x00000003, r21
	bnz9 .BB.LABEL.6_9
	jr .BB.LABEL.6_18
.BB.LABEL.6_6:	; if_else_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1989
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1992
	st.b r22, 0x00000000[r21]
	mov #_Icu_GaaFclaRegsMirror, r21
	add r26, r21
	st.b r22, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 1997
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r21
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r21], r21
	ld.bu 0x00000000[r20], r20
	add r20, r21
	ld.bu 0x00000000[r21], r21
	andi 0x00000007, r21, r21
	cmp 0x00000002, r21
	bnz9 .BB.LABEL.6_9
	br9 .BB.LABEL.6_18
.BB.LABEL.6_8:	; if_else_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2005
	st.b r22, 0x00000000[r21]
	mov #_Icu_GaaFclaRegsMirror, r21
	add r26, r21
	st.b r22, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2010
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r21
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r21], r21
	ld.bu 0x00000000[r20], r20
	add r20, r21
	ld.bu 0x00000000[r21], r20
	andi 0x00000007, r20, r20
	cmp 0x00000001, r20
	bz9 .BB.LABEL.6_18
.BB.LABEL.6_9:	; if_then_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2185
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.6_10:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2023
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2026
	mulhi 0x0000001C, r24, r21
	add r21, r20
	ld.bu 0x00000004[r20], r20
	shl 0x00000002, r20
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r21
	add r20, r21
	ld.w 0x00000000[r21], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2030
	st.b r25, 0x000000C0[r20]
	mov #_Icu_GaaTAUDBChannelRegMirror, r21
	add r26, r21
	st.b r25, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2036
	ld.bu 0x000000C0[r20], r20
	andi 0x00000003, r20, r20
	zxb r25
	cmp r20, r25
	bz9 .BB.LABEL.6_12
.BB.LABEL.6_11:	; if_then_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.6_12:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2042
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.6_13:	; if_else_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2065
	jarl _SchM_Enter_Icu_ICU_EDGECOUNT_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2068
	mulhi 0x0000001C, r24, r2
	add r2, r20
	ld.bu 0x00000004[r20], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2070
	cmp 0x00000003, r21
	bnz9 .BB.LABEL.6_15
.BB.LABEL.6_14:	; if_then_bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2074
	mulh 0x00000006, r23
	add r23, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2082
	ld.bu 0x00000004[r22], r5
	shl 0x00000002, r5
	movhi HIGHW1(#_Icu_GpEdgeCountData), r0, r6
	ld.w LOWW(#_Icu_GpEdgeCountData)[r6], r6
	add r5, r6
	tst1 0x00000000, 0x00000000[r6]
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_15:	; if_else_bb252
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	st.b r25, 0x000000C0[r2]
	mov #_Icu_GaaTAUDBChannelRegMirror, r5
	add r26, r5
	st.b r25, 0x00000000[r5]
	ld.bu 0x000000C0[r2], r2
	andi 0x00000003, r2, r2
	zxb r25
	cmp r2, r25
	bz9 .BB.LABEL.6_17
.BB.LABEL.6_16:	; if_then_bb274
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.6_17:	; if_break_bb277
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2116
	jarl _SchM_Exit_Icu_ICU_EDGECOUNT_DATA_PROTECTION, r31
.BB.LABEL.6_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2185
	dispose 0x00000000, 0x00000779, [r31]
_Icu_HW_SetMode:
	.stack _Icu_HW_SetMode = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2232
	prepare 0x00000479, 0x00000000
	mov 0x00000000, r20
	mov r6, r21
	br9 .BB.LABEL.7_10
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2254
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2252
	andi 0x000000FF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2254
	mov r5, r6
	shl 0x00000002, r6
	add r6, r2
	ld.bu 0x00000000[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2252
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2262
	mul 0x0000001C, r5, r0
	add r5, r23
	ld.w 0x0000000C[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2268
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2262
	add 0x0000000C, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2273
	andi 0x00000002, r22, r0
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2275
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2279
	ld.b 0x00000000[r24], r22
	ori 0x00000080, r22, r22
	st.b r22, 0x00000000[r24]
	br9 .BB.LABEL.7_9
.BB.LABEL.7_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2288
	ld.w 0x00000000[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2299
	ld.hu 0x00000000[r2], r5
	andi 0x0000EFFF, r5, r5
	st.h r5, 0x00000000[r2]
	ld.w 0x00000000[r23], r2
	ld.h 0x00000000[r2], r2
	syncp
.BB.LABEL.7_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2313
	andi 0x00000004, r22, r0
	bz9 .BB.LABEL.7_9
.BB.LABEL.7_7:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2315
	ld.w 0x00000000[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2319
	ld.bu 0x00000000[r24], r2
	andi 0x0000007F, r2, r2
	st.b r2, 0x00000000[r24]
.BB.LABEL.7_9:	; if_break_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2342
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	add 0x00000001, r20
.BB.LABEL.7_10:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2247
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_11:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2349
	movhi HIGHW1(#_Icu_GenModuleMode), r0, r2
	st.w r21, LOWW(#_Icu_GenModuleMode)[r2]
	dispose 0x00000000, 0x00000479, [r31]
_Icu_HW_StartCountMeasurement:
	.stack _Icu_HW_StartCountMeasurement = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2403
	prepare 0x00000679, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2442
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2446
	mulhi 0x00000006, r20, r2
	add r21, r2
	ld.bu 0x00000003[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2439
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2446
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Icu_GpTAUUnitConfig)[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2455
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2439
	mulhi 0x0000001C, r20, r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2461
	ld.w 0x0000000C[r23], r2
	addi 0x0000000C, r23, r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2475
	ld.hu 0x00000000[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x00000000[r2]
	ld.w 0x00000000[r5], r2
	ld.h 0x00000000[r2], r2
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2482
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2483
	ld.bu 0x00000000[r2], r5
	andi 0x0000007F, r5, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2494
	ld.bu 0x00000019[r23], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2501
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2494
	andi 0x00000003, r25, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2505
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_3:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2511
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2519
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	clr1 0x00000004, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2525
	mov #_Icu_GaaChannelMeasureStatus, r25
	add r20, r25
	mov 0x00000001, r2
	st.b r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2531
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2539
	mulhi 0x00000006, r20, r2
	add r2, r21
	tst1 0x00000002, 0x00000005[r21]
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_4:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2547
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r23
	ld.w LOWW(#_Icu_GpChannelConfig)[r23], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2554
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2558
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r23
	ld.w LOWW(#_Icu_GpChannelRamData)[r23], r23
	mov r20, r2
	shl 0x00000002, r2
	add r23, r2
	clr1 0x00000004, 0x00000004[r2]
	mov 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2564
	st.b r23, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2547
	mulhi 0x0000001C, r20, r23
	add r23, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2568
	ld.w 0x00000028[r21], r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2547
	movea 0x0000001C, r21, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2568
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2581
	ld.hu 0x00000000[r2], r5
	andi 0x0000EFFF, r5, r5
	st.h r5, 0x00000000[r2]
	ld.w 0x00000028[r21], r2
	ld.h 0x00000000[r2], r2
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2587
	ld.w 0x00000028[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2589
	ld.bu 0x00000000[r2], r5
	andi 0x0000007F, r5, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.8_6:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2602
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.8_7:	; if_break_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2631
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2635
	mulh 0x0000000A, r22
	add r22, r24
	ld.bu 0x00000000[r24], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2638
	ld.h 0x00000014[r23], r2
	st.h r2, 0x00000188[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2642
	ld.h 0x00000180[r20], r2
	ld.h 0x00000014[r23], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.8_9
.BB.LABEL.8_8:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.8_9:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2646
	ld.h 0x00000014[r23], r2
	st.h r2, 0x00000184[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2649
	ld.hu 0x00000014[r23], r2
	ld.h 0x00000180[r20], r5
	ld.h 0x00000014[r23], r6
	and r6, r5
	zxh r5
	cmp r2, r5
	bz9 .BB.LABEL.8_11
.BB.LABEL.8_10:	; if_then_bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.8_11:	; if_break_bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2657
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000679, [r31]
_Icu_HW_StopCountMeasurement:
	.stack _Icu_HW_StopCountMeasurement = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2757
	prepare 0x00000679, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2796
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2800
	mulhi 0x00000006, r20, r2
	add r21, r2
	ld.bu 0x00000003[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2793
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2800
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Icu_GpTAUUnitConfig)[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2810
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2793
	mulhi 0x0000001C, r20, r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2816
	ld.w 0x0000000C[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2817
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2824
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2830
	ld.bu 0x00000019[r23], r2
	andi 0x00000003, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2833
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2838
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2843
	mov #_Icu_GaaChannelMeasureStatus, r25
	add r20, r25
	st.b r0, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2848
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2857
	mulhi 0x00000006, r20, r2
	add r2, r21
	tst1 0x00000002, 0x00000005[r21]
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2865
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r23
	ld.w LOWW(#_Icu_GpChannelConfig)[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2873
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2878
	st.b r0, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2865
	mulhi 0x0000001C, r20, r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2882
	ld.w 0x00000028[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2884
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2890
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2865
	movea 0x0000001C, r23, r23
.BB.LABEL.9_3:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2918
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2922
	mulh 0x0000000A, r22
	add r22, r24
	ld.bu 0x00000000[r24], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2925
	ld.h 0x00000014[r23], r5
	st.h r5, 0x00000188[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2929
	ld.h 0x00000180[r2], r2
	ld.h 0x00000014[r23], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.9_5:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 2935
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000679, [r31]
_Icu_HW_GetEdgeNumbers:
	.stack _Icu_HW_GetEdgeNumbers = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3020
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3044
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3058
	mulhi 0x0000001C, r6, r5
	add r5, r2
	ld.bu 0x00000004[r2], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3047
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3051
	mulh 0x00000006, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3054
	ld.bu 0x00000004[r2], r21
	movhi HIGHW1(#_Icu_GpEdgeCountData), r0, r2
	ld.w LOWW(#_Icu_GpEdgeCountData)[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3063
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3068
	ld.h 0x00000000[r20], r2
	ld.h 0x00000080[r20], r5
	sub r5, r2
	shl 0x00000002, r21
	add r21, r22
	st.h r2, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3075
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000071, [r31]
_Icu_HW_ResetEdgeCount:
	.stack _Icu_HW_ResetEdgeCount = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3130
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3160
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3166
	mulhi 0x00000006, r20, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3173
	ld.bu 0x00000004[r2], r5
	shl 0x00000002, r5
	movhi HIGHW1(#_Icu_GpEdgeCountData), r0, r6
	ld.w LOWW(#_Icu_GpEdgeCountData)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3154
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r5
	ld.w LOWW(#_Icu_GpChannelConfig)[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3173
	clr1 0x00000000, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3177
	ld.bu 0x00000003[r2], r22
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Icu_GpTAUUnitConfig)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3185
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3189
	mulhi 0x0000000A, r22, r2
	add r23, r2
	ld.b 0x00000004[r2], r2
	add 0xFFFFFFFF, r2
	zxb r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.11_11
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3193
	mulh 0x0000000A, r22
	add r22, r23
	ld.bu 0x00000000[r23], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3203
	mulhi 0x0000001C, r20, r2
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3198
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3203
	shl 0x00000002, r20
	add r20, r2
	tst1 0x00000003, 0x00000000[r2]
	ld.hu 0x00000014[r21], r2
	movea 0x00000014, r21, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3193
	ld.w 0x00000000[r5], r21
	st.h r2, 0x00000184[r21]
	ld.hu 0x00000000[r20], r2
	ld.h 0x00000180[r21], r5
	ld.h 0x00000000[r20], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3203
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_2:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3211
	and r6, r5
	zxh r5
	cmp r2, r5
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3216
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000188[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3219
	ld.h 0x00000180[r21], r2
	ld.h 0x00000000[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_6:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3224
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000184[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3227
	ld.hu 0x00000000[r20], r2
	ld.h 0x00000180[r21], r21
	ld.h 0x00000000[r20], r20
	and r20, r21
	zxh r21
	cmp r2, r21
	bnz9 .BB.LABEL.11_10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_7:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3238
	and r6, r5
	zxh r5
	cmp r2, r5
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_9:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3243
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000188[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3246
	ld.h 0x00000180[r21], r2
	ld.h 0x00000000[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_11:	; if_break_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3259
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000079, [r31]
_Icu_HW_EnableEdgeDetection:
	.stack _Icu_HW_EnableEdgeDetection = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3312
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3324
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3329
	mulhi 0x0000001C, r6, r2
	add r2, r20
	ld.w 0x0000000C[r20], r2
	add 0x0000000C, r20
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3335
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3349
	ld.w 0x00000000[r20], r2
	ld.hu 0x00000000[r2], r5
	andi 0x0000EFFF, r5, r5
	st.h r5, 0x00000000[r2]
	ld.w 0x00000000[r20], r2
	ld.h 0x00000000[r2], r2
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3356
	ld.w 0x00000000[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3357
	ld.bu 0x00000000[r2], r5
	andi 0x0000007F, r5, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3364
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.12_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3372
	dispose 0x00000000, 0x00000041, [r31]
_Icu_HW_DisableEdgeDetection:
	.stack _Icu_HW_DisableEdgeDetection = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3416
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3429
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3435
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3441
	mulhi 0x0000001C, r20, r2
	add r2, r21
	ld.w 0x0000000C[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3442
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3447
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000061, [r31]
_Icu_TimerIsr:
	.stack _Icu_TimerIsr = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3505
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3546
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r20
	mulhi 0x0000001C, r6, r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3558
	ld.bu 0x00000019[r21], r2
	andi 0x00000003, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3564
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3552
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r5
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3564
	mov r6, r23
	mov r6, r24
	mov r6, r25
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3567
	mov r25, r6
	jarl _Icu_ServiceSignalMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3571
	mulh 0x00000006, r23
	add r23, r22
	ld.bu 0x00000005[r22], r2
	andi 0x00000003, r2, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.14_5
.BB.LABEL.14_2:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3576
	mov #_Icu_GaaChannelMeasureStatus, r2
	add r25, r2
	ld.bu 0x00000000[r2], r22
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3579
	st.b r22, 0x00000000[r2]
	br9 .BB.LABEL.14_15
.BB.LABEL.14_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3582
	ld.bu 0x00000000[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.14_15
.BB.LABEL.14_5:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov r25, r2
	shl 0x00000002, r2
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r22
	ld.w LOWW(#_Icu_GpChannelRamData)[r22], r23
	add r2, r23
	clr1 0x00000000, 0x00000000[r23]
	ld.w LOWW(#_Icu_GpChannelRamData)[r22], r22
	add r2, r22
	set1 0x00000004, 0x00000000[r22]
	br9 .BB.LABEL.14_15
.BB.LABEL.14_6:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3605
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_11
.BB.LABEL.14_7:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3612
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r25, r22
	shl 0x00000002, r22
	add r22, r2
	tst1 0x00000002, 0x00000000[r2]
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_8:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3619
	mulhi 0x0000001C, r24, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_9:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3622
	jarl [r2], r31
.BB.LABEL.14_10:	; if_break_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3638
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r25, r22
	shl 0x00000002, r22
	add r22, r2
	clr1 0x00000000, 0x00000000[r2]
	br9 .BB.LABEL.14_15
.BB.LABEL.14_11:	; if_else_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3644
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.14_13
.BB.LABEL.14_12:	; if_then_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3655
	mulhi 0x0000001C, r24, r22
	add r20, r22
	ld.bu 0x00000004[r22], r22
	shl 0x00000002, r22
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r23
	add r22, r23
	ld.w 0x00000000[r23], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3661
	ld.hu 0x00000000[r22], r7
	add 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3667
	mov r25, r6
	jarl _Icu_ServiceTimestamp, r31
	br9 .BB.LABEL.14_15
.BB.LABEL.14_13:	; if_else_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3709
	mulh 0x00000006, r23
	add r23, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3716
	ld.bu 0x00000004[r22], r2
	shl 0x00000002, r2
	movhi HIGHW1(#_Icu_GpEdgeCountData), r0, r5
	ld.w LOWW(#_Icu_GpEdgeCountData)[r5], r5
	add r2, r5
	set1 0x00000000, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3726
	mulhi 0x0000001C, r24, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_15
.BB.LABEL.14_14:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3729
	jarl [r2], r31
.BB.LABEL.14_15:	; if_break_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3750
	movhi HIGHW1(#_Icu_GenModuleMode), r0, r2
	ld.w LOWW(#_Icu_GenModuleMode)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_19
.BB.LABEL.14_16:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	tst1 0x00000007, 0x00000019[r21]
	bnz9 .BB.LABEL.14_19
.BB.LABEL.14_17:	; bb204
	mulhi 0x0000001C, r24, r2
	add r2, r20
	ld.w 0x00000010[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_19
.BB.LABEL.14_18:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3757
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r25, r5
	add r5, r2
	ld.w 0x00000010[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3760
	jarl _EcuM_CheckWakeup, r31
.BB.LABEL.14_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3829
	dispose 0x00000000, 0x00000679, [r31]
_Icu_ServiceSignalMeasurement:
	.stack _Icu_ServiceSignalMeasurement = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3884
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3914
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3943
	mulhi 0x0000001C, r6, r5
	add r5, r2
	ld.bu 0x00000004[r2], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3917
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3922
	mulh 0x00000006, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3929
	ld.bu 0x00000005[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3948
	andi 0x00000003, r6, r7
	cmp 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3926
	ld.bu 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3943
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3926
	movhi HIGHW1(#_Icu_GpSignalMeasurementData), r0, r7
	ld.w LOWW(#_Icu_GpSignalMeasurementData)[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3948
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	andi 0x00000003, r6, r0
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3955
	mulh 0x0000000C, r2
	add r2, r7
	ld.hu 0x00000000[r5], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r7]
	jmp [r31]
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3962
	mulh 0x0000000C, r2
	add r2, r7
	ld.w 0x00000000[r7], r2
	st.w r2, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 3965
	ld.hu 0x00000000[r5], r2
	add 0x00000001, r2
	st.w r2, 0x00000004[r7]
	jmp [r31]
_Icu_ServiceTimestamp:
	.stack _Icu_ServiceTimestamp = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4074
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4104
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4108
	mulhi 0x00000006, r6, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4113
	ld.bu 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4119
	mulhi 0x0000000C, r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4113
	movhi HIGHW1(#_Icu_GpTimeStampData), r0, r5
	ld.w LOWW(#_Icu_GpTimeStampData)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4119
	add r5, r21
	ld.hu 0x00000006[r21], r8
	ld.hu 0x00000004[r21], r9
	addi 0x00000004, r21, r22
	add 0x00000006, r21
	cmp r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4097
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r8
	ld.w LOWW(#_Icu_GpChannelConfig)[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4119
	mov r6, r23
	mov r6, r24
	bnc9 .BB.LABEL.16_9
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4123
	mulhi 0x0000000C, r2, r25
	add r5, r25
	ld.w 0x00000000[r25], r9
	st.w r7, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4124
	ld.h 0x00000000[r21], r7
	add 0x00000001, r7
	st.h r7, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4125
	ld.w 0x00000000[r25], r7
	add 0x00000004, r7
	st.w r7, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4135
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r7
	ld.w LOWW(#_Icu_GpChannelRamData)[r7], r7
	mov r24, r9
	shl 0x00000002, r9
	add r9, r7
	tst1 0x00000002, 0x00000000[r7]
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_2:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4140
	mulh 0x0000000C, r2
	add r2, r5
	ld.h 0x00000008[r5], r2
	add 0x00000001, r2
	st.h r2, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4142
	ld.hu 0x0000000A[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4140
	add 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4142
	zxh r2
	cmp r7, r2
	bnz9 .BB.LABEL.16_5
.BB.LABEL.16_3:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4147
	st.h r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4154
	mulhi 0x0000001C, r6, r2
	add r2, r8
	ld.w 0x00000000[r8], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4158
	jarl [r2], r31
.BB.LABEL.16_5:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4177
	ld.hu 0x00000000[r22], r2
	ld.hu 0x00000000[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.16_9
.BB.LABEL.16_6:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4183
	mulh 0x00000006, r23
	add r23, r20
	tst1 0x00000003, 0x00000005[r20]
	bz9 .BB.LABEL.16_8
.BB.LABEL.16_7:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4187
	st.h r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4189
	subr r0, r2
	shl 0x00000002, r2
	ld.w 0x00000000[r25], r24
	add r2, r24
	st.w r24, 0x00000000[r25]
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.16_8:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	movea 0x0000001F, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4196
	mov r24, r6
	jarl _Icu_HW_StopCountMeasurement, r31
.BB.LABEL.16_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4209
	dispose 0x00000000, 0x00000679, [r31]
_Icu_ExternalInterruptIsr:
	.stack _Icu_ExternalInterruptIsr = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4257
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4285
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r20
	mulhi 0x0000001C, r6, r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4296
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r6, r5
	shl 0x00000002, r5
	add r5, r2
	tst1 0x00000002, 0x00000000[r2]
	mov r6, r22
	mov r6, r23
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4305
	mulhi 0x0000001C, r22, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4309
	jarl [r2], r31
.BB.LABEL.17_3:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4329
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r23, r5
	shl 0x00000002, r5
	add r5, r2
	clr1 0x00000000, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4345
	movhi HIGHW1(#_Icu_GenModuleMode), r0, r2
	ld.w LOWW(#_Icu_GenModuleMode)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	tst1 0x00000007, 0x00000019[r21]
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_5:	; bb58
	mulhi 0x0000001C, r22, r2
	add r2, r20
	ld.w 0x00000010[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.17_7
.BB.LABEL.17_6:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4352
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r23, r5
	add r5, r2
	ld.w 0x00000010[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4355
	jarl _EcuM_CheckWakeup, r31
.BB.LABEL.17_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4424
	dispose 0x00000000, 0x00000079, [r31]
_Icu_HW_GetInputLevel:
	.stack _Icu_HW_GetInputLevel = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4473
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4485
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4490
	mulhi 0x0000001C, r6, r5
	add r2, r5
	ld.w 0x00000008[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4494
	mulhi 0x0000001C, r6, r7
	add r2, r7
	ld.bu 0x00000018[r7], r7
	mulhi 0x0000001C, r6, r6
	add r6, r2
	ld.hu 0x00000000[r5], r5
	ld.hu 0x00000016[r2], r2
	and r2, r5
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.18_4
.BB.LABEL.18_2:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4497
	cmp r2, r5
	bnz9 .BB.LABEL.18_6
.BB.LABEL.18_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4501
	jmp [r31]
.BB.LABEL.18_4:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4511
	zxb r5
	cmp r2, r5
	bnz9 .BB.LABEL.18_6
.BB.LABEL.18_5:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4516
	jmp [r31]
.BB.LABEL.18_6:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4531
	jmp [r31]
_Icu_HW_GetTAUInCountValue:
	.stack _Icu_HW_GetTAUInCountValue = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4578
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4599
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r6, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4627
	ld.b 0x00000019[r5], r7
	shr 0x00000004, r7
	andi 0x00000003, r7, r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.b 0x00000019[r5], r5
	shr 0x00000004, r5
	andi 0x00000003, r5, r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4631
	mulhi 0x0000001C, r6, r5
	add r5, r2
	ld.bu 0x00000004[r2], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4635
	ld.hu 0x00000080[r2], r10
	jmp [r31]
.BB.LABEL.19_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4648
	jmp [r31]
_Icu_HW_SynchronousInit:
	.stack _Icu_HW_SynchronousInit = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4699
	prepare 0x00000679, 0x00000000
	mov 0x00000000, r20
	jr .BB.LABEL.20_18
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4719
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r21
	andi 0x000000FF, r20, r22
	mov r22, r23
	mul 0x0000001C, r23, r0
	add r21, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4727
	ld.bu 0x00000019[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4731
	mov r2, r5
	shr 0x00000002, r5
	andi 0x00000003, r5, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4732
	andi 0x00000003, r2, r0
	bnz17 .BB.LABEL.20_12
.BB.LABEL.20_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4735
	tst1 0x00000000, 0x0000001A[r23]
	bz17 .BB.LABEL.20_12
.BB.LABEL.20_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.bu 0x00000019[r23], r2
	andi 0x00000030, r2, r0
	bnz9 .BB.LABEL.20_12
.BB.LABEL.20_4:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4741
	mulhi 0x0000001C, r22, r25
	add r21, r25
	ld.bu 0x00000004[r25], r2
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r5
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r5], r6
	add r2, r6
	st.b r0, 0x00000000[r6]
	andi 0x000000FF, r20, r2
	mov #_Icu_GaaFclaRegsMirror, r6
	add r2, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4747
	ld.bu 0x00000004[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4741
	add 0x00000004, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4747
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r5], r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	andi 0x00000007, r2, r0
	bz9 .BB.LABEL.20_6
.BB.LABEL.20_5:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.20_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4751
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r2
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r2], r2
	ld.bu 0x00000000[r25], r5
	add r5, r2
	cmp 0x00000002, r24
	bnz9 .BB.LABEL.20_8
.BB.LABEL.20_7:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000003, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4756
	st.b r24, 0x00000000[r2]
	andi 0x000000FF, r20, r2
	mov #_Icu_GaaFclaRegsMirror, r5
	add r2, r5
	st.b r24, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4763
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r2
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r2], r2
	ld.bu 0x00000000[r25], r24
	add r24, r2
	ld.bu 0x00000000[r2], r2
	andi 0x00000007, r2, r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.20_11
	br9 .BB.LABEL.20_12
.BB.LABEL.20_8:	; if_else_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov #_Icu_GaaFclaRegsMirror, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4771
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.20_10
.BB.LABEL.20_9:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4776
	st.b r5, 0x00000000[r2]
	andi 0x000000FF, r20, r2
	add r2, r6
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4783
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r2
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r2], r2
	ld.bu 0x00000000[r25], r25
	add r25, r2
	ld.bu 0x00000000[r2], r2
	andi 0x00000007, r2, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.20_11
	br9 .BB.LABEL.20_12
.BB.LABEL.20_10:	; if_else_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4792
	st.b r5, 0x00000000[r2]
	andi 0x000000FF, r20, r2
	add r2, r6
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4798
	movhi HIGHW1(#_Icu_GpfclaReg_BaseAddress), r0, r2
	ld.w LOWW(#_Icu_GpfclaReg_BaseAddress)[r2], r2
	ld.bu 0x00000000[r25], r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	andi 0x00000007, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.20_12
.BB.LABEL.20_11:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.20_12:	; if_break_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4817
	tst1 0x00000000, 0x0000001A[r23]
	bz9 .BB.LABEL.20_17
.BB.LABEL.20_13:	; bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.bu 0x00000019[r23], r2
	andi 0x00000030, r2, r0
	bz9 .BB.LABEL.20_17
.BB.LABEL.20_14:	; if_then_bb214
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4824
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4831
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r5
	ld.w LOWW(#_Icu_GpChannelRamData)[r5], r5
	add r2, r5
	set1 0x00000000, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4836
	mulhi 0x0000001C, r22, r2
	add r2, r21
	ld.w 0x0000000C[r21], r2
	add 0x0000000C, r21
	cmp 0x00000000, r2
	bz9 .BB.LABEL.20_16
.BB.LABEL.20_15:	; if_then_bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4848
	ld.hu 0x00000000[r2], r5
	andi 0x0000EFFF, r5, r5
	st.h r5, 0x00000000[r2]
	ld.w 0x00000000[r21], r2
	ld.h 0x00000000[r2], r2
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4854
	ld.w 0x00000000[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4856
	ld.bu 0x00000000[r2], r5
	andi 0x0000007F, r5, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.20_16:	; if_break_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4868
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.20_17:	; if_break_bb259
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	add 0x00000001, r20
.BB.LABEL.20_18:	; bb262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4714
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl17 .BB.LABEL.20_1
.BB.LABEL.20_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4877
	dispose 0x00000000, 0x00000679, [r31]
_Icu_HW_SynchronousStart:
	.stack _Icu_HW_SynchronousStart = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4931
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r20
	br9 .BB.LABEL.21_5
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4975
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Icu_GpTAUUnitConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4981
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4975
	andi 0x000000FF, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4986
	mov r2, r5
	mul 0x0000000A, r5, r0
	add r21, r5
	ld.b 0x00000004[r5], r5
	add 0xFFFFFFFF, r5
	zxb r5
	cmp 0x00000001, r5
	bh9 .BB.LABEL.21_4
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4990
	mulh 0x0000000A, r2
	add r2, r21
	ld.bu 0x00000000[r21], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4993
	ld.h 0x00000006[r21], r5
	st.h r5, 0x00000184[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4997
	ld.hu 0x00000006[r21], r5
	ld.h 0x00000180[r2], r2
	ld.h 0x00000006[r21], r6
	and r6, r2
	zxh r2
	cmp r5, r2
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.21_4:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5027
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	add 0x00000001, r20
.BB.LABEL.21_5:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 4969
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.21_1
.BB.LABEL.21_6:	; bb62.bb120_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.21_11
.BB.LABEL.21_7:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5039
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	andi 0x000000FF, r20, r5
	mul 0x0000001C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5053
	tst1 0x00000000, 0x0000001A[r2]
	bz9 .BB.LABEL.21_10
.BB.LABEL.21_8:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5045
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_9:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5059
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5065
	andi 0x000000FF, r20, r2
	mov r2, r5
	shl 0x00000002, r5
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r6
	ld.w LOWW(#_Icu_GpChannelRamData)[r6], r6
	add r5, r6
	clr1 0x00000004, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5073
	mov #_Icu_GaaChannelMeasureStatus, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5078
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.21_10:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	add 0x00000001, r20
.BB.LABEL.21_11:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5032
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.21_7
.BB.LABEL.21_12:	; bb120.bb212_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.21_19
.BB.LABEL.21_13:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5102
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5108
	andi 0x000000FF, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5111
	mov r2, r5
	shl 0x00000002, r5
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r6
	ld.w LOWW(#_Icu_GpChannelRamData)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5108
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r5
	ld.w LOWW(#_Icu_GpChannelConfig)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5111
	set1 0x00000000, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5108
	mov r2, r6
	mul 0x0000001C, r6, r0
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5118
	tst1 0x00000000, 0x0000001A[r6]
	bz9 .BB.LABEL.21_18
.BB.LABEL.21_14:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5124
	ld.bu 0x00000019[r6], r6
	andi 0x00000030, r6, r0
	bnz9 .BB.LABEL.21_17
.BB.LABEL.21_15:	; if_then_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5128
	mulhi 0x0000001C, r2, r2
	add r2, r5
	ld.w 0x0000000C[r5], r2
	add 0x0000000C, r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.21_17
.BB.LABEL.21_16:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5140
	ld.hu 0x00000000[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x00000000[r2]
	ld.w 0x00000000[r5], r2
	ld.h 0x00000000[r2], r2
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5146
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5148
	ld.bu 0x00000000[r2], r5
	andi 0x0000007F, r5, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.21_17:	; if_break_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5165
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	andi 0x000000FF, r20, r5
	shl 0x00000002, r5
	add r5, r2
	set1 0x00000002, 0x00000000[r2]
.BB.LABEL.21_18:	; if_break_bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5177
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	add 0x00000001, r20
.BB.LABEL.21_19:	; bb212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5096
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.21_13
.BB.LABEL.21_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5182
	dispose 0x00000000, 0x00000061, [r31]
_Icu_HW_SynchronousStop:
	.stack _Icu_HW_SynchronousStop = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5235
	prepare 0x00000071, 0x00000000
	mov 0x00000000, r20
	br9 .BB.LABEL.22_5
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5270
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Icu_GpTAUUnitConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5276
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5270
	andi 0x000000FF, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5281
	mov r2, r5
	mul 0x0000000A, r5, r0
	add r21, r5
	ld.b 0x00000004[r5], r5
	add 0xFFFFFFFF, r5
	zxb r5
	cmp 0x00000001, r5
	bh9 .BB.LABEL.22_4
.BB.LABEL.22_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5286
	mulh 0x0000000A, r2
	add r2, r21
	ld.bu 0x00000000[r21], r2
	shl 0x00000002, r2
	mov #_Icu_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5290
	ld.h 0x00000006[r21], r5
	st.h r5, 0x00000188[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5293
	ld.h 0x00000180[r2], r2
	ld.h 0x00000006[r21], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.22_4
.BB.LABEL.22_3:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r6
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_4:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5319
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	add 0x00000001, r20
.BB.LABEL.22_5:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5264
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.22_1
.BB.LABEL.22_6:	; bb57.bb106_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.22_11
.BB.LABEL.22_7:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5331
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	andi 0x000000FF, r20, r5
	mul 0x0000001C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5345
	tst1 0x00000000, 0x0000001A[r2]
	bz9 .BB.LABEL.22_10
.BB.LABEL.22_8:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5337
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5351
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5355
	andi 0x000000FF, r20, r2
	mov #_Icu_GaaChannelMeasureStatus, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5360
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.22_10:	; if_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	add 0x00000001, r20
.BB.LABEL.22_11:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5324
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.22_7
.BB.LABEL.22_12:	; bb106.bb195_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.22_19
.BB.LABEL.22_13:	; bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5384
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r21
	andi 0x000000FF, r20, r22
	mov r22, r2
	mul 0x0000001C, r2, r0
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5390
	tst1 0x00000000, 0x0000001A[r2]
	bz9 .BB.LABEL.22_18
.BB.LABEL.22_14:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5396
	ld.bu 0x00000019[r2], r2
	andi 0x00000030, r2, r0
	bnz9 .BB.LABEL.22_17
.BB.LABEL.22_15:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5402
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5409
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r5
	ld.w LOWW(#_Icu_GpChannelRamData)[r5], r5
	add r2, r5
	set1 0x00000000, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5417
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5421
	mulhi 0x0000001C, r22, r2
	add r2, r21
	ld.w 0x0000000C[r21], r2
	add 0x0000000C, r21
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_17
.BB.LABEL.22_16:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5428
	ld.hu 0x00000000[r2], r5
	andi 0x0000EFFF, r5, r5
	st.h r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5434
	ld.w 0x00000000[r21], r2
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.22_17:	; if_break_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5453
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5459
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r5
	ld.w LOWW(#_Icu_GpChannelRamData)[r5], r5
	add r2, r5
	clr1 0x00000002, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5464
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.22_18:	; if_break_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	add 0x00000001, r20
.BB.LABEL.22_19:	; bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5378
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.22_13
.BB.LABEL.22_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5476
	dispose 0x00000000, 0x00000071, [r31]
_Icu_HW_SynchronousDeInit:
	.stack _Icu_HW_SynchronousDeInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5524
	mov 0x00000000, r2
	br9 .BB.LABEL.23_6
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5534
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r5
	ld.w LOWW(#_Icu_GpChannelConfig)[r5], r5
	andi 0x000000FF, r2, r6
	mov r6, r7
	mul 0x0000001C, r7, r0
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5540
	tst1 0x00000000, 0x0000001A[r7]
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.bu 0x00000019[r7], r7
	andi 0x00000030, r7, r0
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5549
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r7
	ld.w LOWW(#_Icu_GpChannelRamData)[r7], r7
	andi 0x000000FF, r2, r8
	shl 0x00000002, r8
	add r8, r7
	set1 0x00000000, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5554
	mulhi 0x0000001C, r6, r6
	add r6, r5
	ld.w 0x0000000C[r5], r6
	add 0x0000000C, r5
	cmp 0x00000000, r6
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5561
	ld.hu 0x00000000[r6], r7
	andi 0x0000EFFF, r7, r7
	st.h r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5566
	ld.w 0x00000000[r5], r5
	ld.b 0x00000000[r5], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r5]
.BB.LABEL.23_5:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	add 0x00000001, r2
.BB.LABEL.23_6:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5529
	andi 0x000000FF, r2, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.23_1
.BB.LABEL.23_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5582
	jmp [r31]
_Icu_HWCheckConsistency:
	.stack _Icu_HWCheckConsistency = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5638
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5694
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.24_16
.BB.LABEL.24_1:	; entry.bb75_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov r10, r2
	br9 .BB.LABEL.24_7
.BB.LABEL.24_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5708
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r5
	ld.w LOWW(#_Icu_GpTAUUnitConfig)[r5], r5
	andi 0x000000FF, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5716
	mov r6, r7
	mul 0x0000000A, r7, r0
	add r5, r7
	ld.b 0x00000004[r7], r7
	add 0xFFFFFFFF, r7
	zxb r7
	cmp 0x00000002, r7
	bnc9 .BB.LABEL.24_6
.BB.LABEL.24_3:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5724
	mulhi 0x0000000A, r6, r7
	add r5, r7
	tst1 0x00000000, 0x00000008[r7]
	bz9 .BB.LABEL.24_6
.BB.LABEL.24_4:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5720
	mulh 0x0000000A, r6
	add r6, r5
	ld.hu 0x00000002[r5], r6
	ld.bu 0x00000001[r5], r5
	shl 0x00000002, r5
	mov #_Icu_GaaTAUDBOsReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	ld.hu 0x00000000[r5], r5
	cmp r5, r6
	bz9 .BB.LABEL.24_6
.BB.LABEL.24_5:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000001, r10
.BB.LABEL.24_6:	; if_break_bb72
	add 0x00000001, r2
.BB.LABEL.24_7:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5702
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_8:	; bb75.bb169_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.24_15
.BB.LABEL.24_9:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5815
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r5
	ld.w LOWW(#_Icu_GpChannelConfig)[r5], r5
	andi 0x000000FF, r2, r6
	mov r6, r7
	mul 0x0000001C, r7, r0
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5825
	ld.b 0x00000019[r7], r8
	shr 0x00000004, r8
	andi 0x00000003, r8, r8
	cmp 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5816
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r8
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5825
	bz9 .BB.LABEL.24_11
.BB.LABEL.24_10:	; bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.b 0x00000019[r7], r9
	shr 0x00000004, r9
	andi 0x00000003, r9, r9
	cmp 0x00000002, r9
	bnz9 .BB.LABEL.24_14
.BB.LABEL.24_11:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5834
	mulhi 0x00000006, r6, r9
	add r9, r8
	ld.hu 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5831
	mulhi 0x0000001C, r6, r6
	add r6, r5
	ld.bu 0x00000004[r5], r5
	shl 0x00000002, r5
	mov #_Icu_GaaTAUDBChReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5834
	ld.hu 0x00000200[r5], r6
	cmp r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5838
	cmov 0x0000000A, 0x00000001, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5847
	ld.bu 0x00000019[r7], r6
	andi 0x00000003, r6, r6
	cmp 0x00000003, r6
	bnz9 .BB.LABEL.24_14
.BB.LABEL.24_12:	; bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	ld.hu 0x00000000[r5], r5
	ori 0x0000FFFF, r0, r6
	cmp r6, r5
	bz9 .BB.LABEL.24_14
.BB.LABEL.24_13:	; if_then_bb163
	mov 0x00000001, r10
.BB.LABEL.24_14:	; if_break_bb166
	add 0x00000001, r2
.BB.LABEL.24_15:	; bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5808
	andi 0x000000FF, r2, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.24_9
	br9 .BB.LABEL.24_20
.BB.LABEL.24_16:	; if_else_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5911
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.24_20
.BB.LABEL.24_17:	; if_else_bb176.bb203_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 0
	mov r10, r2
	br9 .BB.LABEL.24_19
.BB.LABEL.24_18:	; bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5917
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	mov #_Icu_GaaRegMirror_8bit, r6
	add r5, r6
	mov #_Icu_GaaReg_8bit, r7
	add r7, r5
	ld.w 0x00000000[r5], r5
	ld.bu 0x00000000[r5], r5
	ld.w 0x00000000[r6], r6
	ld.bu 0x00000000[r6], r6
	cmp r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5920
	cmov 0x0000000A, 0x00000001, r10, r10
	add 0x00000001, r2
.BB.LABEL.24_19:	; bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5914
	andi 0x000000FF, r2, r5
	cmp 0x00000007, r5
	blt9 .BB.LABEL.24_18
.BB.LABEL.24_20:	; if_break_bb212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu_LLDriver.c", 5934
	zxb r10
	jmp [r31]
