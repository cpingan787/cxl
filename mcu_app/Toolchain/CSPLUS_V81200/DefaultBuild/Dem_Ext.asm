#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Dem\Dem_Ext.c -oDefaultBuild\Dem_Ext.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bcbe2758b9334be19938e058597801a2pdqyizcx.v0a
#@	compiled at Fri Mar 27 09:50:24 2026

	.file "..\..\Bsw\SystemServices\Dem\Dem_Ext.c"

	$reg_mode 32
	.dbl_size 8

	.extern _DemEnableConditionGroup
	.extern _DemEnableCondition
	.extern _DemPbCfg
	.extern _DemPbCfgPtr
	.extern _DemClearDTCInfo
	.extern _DemMemDestInfo
	.extern _Dem_DTCStatusChangedInd
	.public _DemWIRStatus, 1
	.public _DemDebounceCounterInfo, 236
	.public _DemOperationCycleStatus, 1
	.public _DemInternalData, 10
	.public _DemEventQueue, 234
	.public _FDCInfo, 177
	.public _DemEventRelateInformation, 708
	.public _DemDTCGeneralStatus, 118
	.extern _Det_ReportError
	.public _Dem_InterSetEnableCondition
	.public _Dem_SetEnableCondictionProcess
	.extern _Dem_GetEventInfo
	.public _Dem_InterSetStorageCondition
	.public _Dem_SetStorageCondictionProcess
	.public _Dem_InterPreInit
	.public _Dem_InterInit
	.public _Dem_InterSetEventStatus
	.public _Dem_InterResetEventDebounceStatus
	.public _Dem_InterPrestoreFreezeFrame
	.public _Dem_InterClearPrestoredFreezeFrame
	.public _Dem_InterGetComponentFailed
	.public _Dem_InterGetIndicatorStatus
	.public _Dem_InterSetIndicatorStatus
	.public _Dem_InterGetEventFreezeFrameDataEx
	.extern _Dem_CheckEventMemEntryExistsAlready
	.extern _Dem_FreezeFrameGetFromEntry
	.public _Dem_InterGetEventExtendedDataRecordEx
	.extern _Dem_ExtendedDataGetFromEntry
	.public _Dem_InterSetComponentAvailable
	.public _Dem_DebounceFreeze
	.public _Dem_TriggerOnEventStatus
	.public _Dem_ClearAllDTC
	.extern _Dem_Clear
	.public _Dem_ClearGroupDTC
	.public _Dem_ClearDTRInfoByEventId

	.section .text, text
_DEM_FLAGS_ISSET.1:
	.stack _DEM_FLAGS_ISSET.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 86
	mov r6, r10
	and r7, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 89
	jmp [r31]
_DEM_BITS_SET.1:
	.stack _DEM_BITS_SET.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 93
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 95
	shr 0x00000003, r2
	add r2, r6
	set1 r7, [r6]
	jmp [r31]
_DEM_BITS_CLR.1:
	.stack _DEM_BITS_CLR.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 97
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 99
	shr 0x00000003, r2
	add r2, r6
	clr1 r7, [r6]
	jmp [r31]
_DEM_DET_REPORT.1:
	.stack _DEM_DET_REPORT.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 144
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000001, r7
	movea 0x00000036, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 146
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_MemSet.1:
	.stack _Dem_MemSet.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 271
	mov 0x00000000, r2
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 276
	mov r6, r5
	add r2, r5
	st.b r7, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.5_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 274
	cmp r8, r2
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 278
	jmp [r31]
_Dem_MemCopy.1:
	.stack _Dem_MemCopy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 292
	mov 0x00000000, r2
	br9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 296
	mov r7, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r6, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.6_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 294
	cmp r8, r2
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 298
	jmp [r31]
_Dem_CheckCondictionFulfilled.1:
	.stack _Dem_CheckCondictionFulfilled.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 623
	mov 0x00000000, r2
	mov 0x00000001, r10
	br9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 632
	andi 0x000000FF, r2, r5
	mov r7, r9
	add r5, r9
	ld.bu 0x00000000[r9], r9
	add r6, r5
	ld.bu 0x00000000[r5], r5
	and r9, r5
	cmp r9, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 634
	cmov 0x0000000A, 0x00000000, r10, r10
	add 0x00000001, r2
.BB.LABEL.7_2:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 630
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	andi 0x000000FF, r2, r5
	cmp r8, r5
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 638
	zxb r10
	jmp [r31]
_Dem_InterSetEnableCondition:
	.stack _Dem_InterSetEnableCondition = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 191
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 195
	cmp 0x00000004, r6
	bl9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x00000010, r0, r7
	movea 0x00000039, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 197
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 201
	cmp 0x00000000, r7
	mov r6, r7
	mov #_DemEnableConditionStatus.1, r6
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 203
	jarl _DEM_BITS_CLR.1, r31
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 207
	jarl _DEM_BITS_SET.1, r31
.BB.LABEL.8_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 209
	movhi HIGHW1(#_Dem_CheckEnableCondition.2), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Dem_CheckEnableCondition.2)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 210
	dispose 0x00000000, 0x00000001, [r31]
_Dem_SetEnableCondictionProcess:
	.stack _Dem_SetEnableCondictionProcess = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 231
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 239
	movhi HIGHW1(#_Dem_CheckEnableCondition.2), r0, r2
	ld.bu LOWW(#_Dem_CheckEnableCondition.2)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_12
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 241
	movhi HIGHW1(#_Dem_CheckEnableCondition.2), r0, r2
	st.b r0, LOWW(#_Dem_CheckEnableCondition.2)[r2]
	mov 0x00000000, r20
	br9 .BB.LABEL.9_11
.BB.LABEL.9_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 244
	andi 0x0000FFFF, r20, r21
	mov r21, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 246
	mul 0x0000002C, r21, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 245
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 246
	add r22, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 248
	ld.bu 0x00000021[r21], r2
	addi 0xFFFFFF01, r2, r0
	mov r10, r21
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 250
	mov #_DemEnableConditionGroup, r7
	add r2, r7
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 251
	mov #_DemEnableConditionStatus.1, r6
	jarl _Dem_CheckCondictionFulfilled.1, r31
	cmp 0x00000001, r10
	setf 0x00000002, r2
.BB.LABEL.9_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 254
	xori 0x00000001, r2, r2
	cmp 0x00000000, r2
	ld.bu 0x00000002[r21], r6
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_6:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 256
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_10
.BB.LABEL.9_7:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 258
	set1 0x00000002, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 260
	andi 0x0000FFFF, r20, r21
	mul 0x0000002C, r21, r0
	add r21, r22
	ld.w 0x00000000[r22], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 261
	cmp 0x00000000, r21
	bz9 .BB.LABEL.9_10
.BB.LABEL.9_8:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 263
	jarl [r21], r31
	br9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 269
	andi 0x000000FB, r6, r2
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 271
	andi 0x0000FFFF, r20, r6
	jarl _Dem_DebounceFreeze, r31
.BB.LABEL.9_10:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 273
	add 0x00000001, r20
.BB.LABEL.9_11:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 242
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	andi 0x0000FFFF, r20, r5
	cmp r2, r5
	bl9 .BB.LABEL.9_2
.BB.LABEL.9_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 277
	dispose 0x00000000, 0x00000071, [r31]
_Dem_InterSetStorageCondition:
	.stack _Dem_InterSetStorageCondition = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 297
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 323
	jmp [r31]
_Dem_SetStorageCondictionProcess:
	.stack _Dem_SetStorageCondictionProcess = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 337
	jmp [r31]
_Dem_InterPreInit:
	.stack _Dem_InterPreInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 445
	prepare 0x00000061, 0x00000000
	mov 0x00000001, r20
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 453
	mov #_DemOperationCycleStatus, r6
	mov r21, r7
	mov r20, r8
	jarl _Dem_MemSet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 456
	mov #_DemEnableCondition, r7
	mov #_DemEnableConditionStatus.1, r6
	mov r20, r8
	jarl _Dem_MemCopy.1, r31
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 472
	andi 0x0000FFFF, r21, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r6
	add r2, r6
	mov 0x0000000C, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 473
	jarl _Dem_MemSet.1, r31
	add 0x00000001, r21
.BB.LABEL.12_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 470
	andi 0x0000FFFF, r21, r2
	movea 0x0000003B, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 499
	mov #_DemEventQueue, r2
	st.b r0, 0x000000E8[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 500
	st.b r0, 0x000000E9[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 503
	andi 0x0000FFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 504
	shl 0x00000002, r5
	mov #_DemEventQueue, r6
	add r5, r6
	st.h r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 505
	st.b r0, 0x00000002[r6]
	add 0x00000001, r2
.BB.LABEL.12_5:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 501
	andi 0x0000FFFF, r2, r5
	movea 0x0000003A, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.12_4
.BB.LABEL.12_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 507
	dispose 0x00000000, 0x00000061, [r31]
_Dem_InterInit:
	.stack _Dem_InterInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 521
	prepare 0x00000061, 0x00000000
	mov 0x00000001, r8
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 533
	mov #_DemWIRStatus, r6
	mov r20, r7
	jarl _Dem_MemSet.1, r31
	br9 .BB.LABEL.13_5
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 538
	andi 0x0000FFFF, r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 549
	mov r21, r5
	mul 0x0000002C, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 538
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 549
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 550
	ld.bu 0x00000021[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 552
	mov #_DemEnableConditionGroup, r7
	add r2, r7
	mov 0x00000001, r8
	mov #_DemEnableConditionStatus.1, r6
	jarl _Dem_CheckCondictionFulfilled.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	mov r21, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	set1 0x00000002, 0x00000002[r5]
.BB.LABEL.13_4:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 582
	mul 0x0000000C, r21, r0
	mov #_DemEventRelateInformation, r2
	add r21, r2
	set1 0x00000003, 0x00000002[r2]
	add 0x00000001, r20
.BB.LABEL.13_5:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 535
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r5
	andi 0x0000FFFF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 603
	dispose 0x00000000, 0x00000061, [r31]
_Dem_InterSetEventStatus:
	.stack _Dem_InterSetEventStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 621
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 676
	jmp [r31]
_Dem_InterResetEventDebounceStatus:
	.stack _Dem_InterResetEventDebounceStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 694
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 697
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r5
	mov r6, r8
	mul 0x0000002C, r8, r0
	add r8, r5
	ld.hu 0x00000014[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 698
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 696
	ld.w 0x00000020[r2], r2
	mul 0x0000002C, r6, r0
	add r6, r2
	ld.bu 0x00000016[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 701
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x0000003A, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 704
	cmp r2, r5
	bh9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 707
	shl 0x00000002, r5
	mov #_DemDebounceCounterInfo, r2
	add r5, r2
	st.h r0, 0x00000000[r2]
.BB.LABEL.15_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 742
	jmp [r31]
_Dem_InterPrestoreFreezeFrame:
	.stack _Dem_InterPrestoreFreezeFrame = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 757
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 793
	jmp [r31]
_Dem_InterClearPrestoredFreezeFrame:
	.stack _Dem_InterClearPrestoredFreezeFrame = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 809
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 827
	jmp [r31]
_Dem_InterGetComponentFailed:
	.stack _Dem_InterGetComponentFailed = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 843
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 857
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x00000031, r0, r7
.BB.LABEL.18_2:	; if_then_bb
	movea 0x0000002A, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 882
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 861
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.18_2
.BB.LABEL.18_5:	; if_break_bb15
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 882
	dispose 0x00000000, 0x00000001, [r31]
_Dem_InterGetIndicatorStatus:
	.stack _Dem_InterGetIndicatorStatus = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 897
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 902
	cmp 0x00000000, r6
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x00000010, r0, r7
.BB.LABEL.19_2:	; if_then_bb
	movea 0x00000029, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 922
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 908
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.19_2
.BB.LABEL.19_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 914
	mov #_DemWIRStatus, r2
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 915
	dispose 0x00000000, 0x00000001, [r31]
_Dem_InterSetIndicatorStatus:
	.stack _Dem_InterSetIndicatorStatus = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 939
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 946
	cmp 0x00000000, r6
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x00000010, r0, r7
.BB.LABEL.20_2:	; if_then_bb
	movea 0x000000A1, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 966
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 952
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.20_2
.BB.LABEL.20_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 958
	mov #_DemWIRStatus, r2
	add r6, r2
	ld.b 0x00000000[r7], r5
	st.b r5, 0x00000000[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 959
	dispose 0x00000000, 0x00000001, [r31]
_Dem_InterGetEventFreezeFrameDataEx:
	.stack _Dem_InterGetEventFreezeFrameDataEx = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 998
	prepare 0x00000079, 0x00000004
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1009
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1021
	ld.hu 0x00000010[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1018
	jarl _Dem_CheckEventMemEntryExistsAlready, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1021
	cmp 0x00000000, r10
	ld.w 0x00000018[r3], r2
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1030
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000004[r5], r6
	mul 0x00000014, r23, r0
	add r23, r6
	ld.hu 0x00000004[r6], r6
	mul 0x00000014, r6, r0
	ld.w 0x00000010[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1032
	ld.bu 0x0000000E[r5], r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	cmp 0x00000003, r5
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_3:	; if_then_bb
	cmp 0x00000002, r5
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1035
	st.w r2, 0x00000000[r3]
	mov r10, r6
	mov r20, r7
	mov r21, r8
	mov r22, r9
	jarl _Dem_FreezeFrameGetFromEntry, r31
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.21_5:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1051
	dispose 0x00000004, 0x00000079, [r31]
_Dem_InterGetEventExtendedDataRecordEx:
	.stack _Dem_InterGetEventExtendedDataRecordEx = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1074
	prepare 0x00000079, 0x00000000
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1084
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1097
	ld.hu 0x00000010[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1094
	jarl _Dem_CheckEventMemEntryExistsAlready, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1097
	cmp 0x00000000, r10
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1105
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	mul 0x00000014, r23, r0
	add r23, r5
	ld.hu 0x00000004[r5], r5
	mul 0x00000014, r5, r0
	ld.w 0x00000010[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1107
	ld.bu 0x0000000E[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	cmp 0x00000003, r2
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_3:	; if_then_bb
	cmp 0x00000002, r2
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1112
	mov r10, r6
	mov r20, r7
	mov r21, r8
	mov r22, r9
	jarl _Dem_ExtendedDataGetFromEntry, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.22_5:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1127
	dispose 0x00000000, 0x00000079, [r31]
_Dem_InterSetComponentAvailable:
	.stack _Dem_InterSetComponentAvailable = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1144
	prepare 0x00000001, 0x00000000
	movea 0x00000031, r0, r7
	movea 0x0000002B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1156
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1157
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DebounceFreeze:
	.stack _Dem_DebounceFreeze = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1208
	movhi HIGHW1(#_DemPbCfg+0x00000020), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1210
	ld.w LOWW(#_DemPbCfg+0x00000020)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1211
	mul 0x0000002C, r6, r0
	add r6, r2
	ld.bu 0x00000016[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1234
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1213
	ld.hu 0x00000014[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1212
	ld.hu 0x00000012[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1234
	bnz9 .BB.LABEL.24_5
.BB.LABEL.24_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_5
.BB.LABEL.24_2:	; entry
	movea 0x0000003A, r0, r6
	cmp r6, r5
	bh9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1237
	movhi HIGHW1(#_DemPbCfg+0x00000014), r0, r6
	ld.w LOWW(#_DemPbCfg+0x00000014)[r6], r6
	shl 0x00000004, r2
	add r2, r6
	ld.bu 0x0000000F[r6], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1239
	shl 0x00000002, r5
	mov #_DemDebounceCounterInfo, r2
	add r5, r2
	st.h r0, 0x00000000[r2]
.BB.LABEL.24_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 1247
	jmp [r31]
_Dem_TriggerOnEventStatus:
	.stack _Dem_TriggerOnEventStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 2978
	jmp [r31]
_Dem_ClearAllDTC:
	.stack _Dem_ClearAllDTC = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3068
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3074
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3075
	ld.w 0x0000002C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3074
	ld.w 0x00000020[r2], r21
	mov 0x00000000, r22
	mov r6, r23
	br9 .BB.LABEL.26_8
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3080
	andi 0x0000FFFF, r22, r5
	mul 0x0000000C, r5, r0
	mov #_DemEventRelateInformation, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3081
	ld.hu 0x00000000[r6], r5
	mul 0x0000002C, r5, r0
	add r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3082
	ld.hu 0x00000010[r5], r5
	mul 0x00000014, r5, r0
	ld.w 0x00000004[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3083
	ld.hu 0x00000006[r2], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_2:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	mul 0x0000000C, r2, r0
	add r20, r2
	ld.w 0x00000004[r2], r2
	mov 0x00FFFFFF, r5
	cmp r5, r2
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3098
	movhi HIGHW1(#_DemClearDTCInfo+0x00000010), r0, r2
	ld.hu LOWW(#_DemClearDTCInfo+0x00000010)[r2], r2
	addi 0xFFFFFF6B, r2, r0
	bz9 .BB.LABEL.26_5
.BB.LABEL.26_4:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3109
	mov r23, r7
	jarl _Dem_Clear, r31
.BB.LABEL.26_5:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3112
	mulhi 0x0000000A, r23, r2
	mov #_DemMemDestInfo, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.26_7
.BB.LABEL.26_6:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3114
	mulhi 0x0000000A, r23, r2
	mov #_DemMemDestInfo, r5
	add r2, r5
	st.b r0, 0x00000009[r5]
.BB.LABEL.26_7:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 0
	add 0x00000001, r22
.BB.LABEL.26_8:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3077
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r5
	andi 0x0000FFFF, r22, r6
	cmp r5, r6
	bl9 .BB.LABEL.26_1
.BB.LABEL.26_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3128
	dispose 0x00000000, 0x00000079, [r31]
_Dem_ClearGroupDTC:
	.stack _Dem_ClearGroupDTC = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3143
	jmp [r31]
_Dem_ClearDTRInfoByEventId:
	.stack _Dem_ClearDTRInfoByEventId = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.c", 3184
	jmp [r31]
	.section .bss, bss
_DemEnableConditionStatus.1:
	.ds (1)
_DemWIRStatus:
	.ds (1)
	.align 2
_DemDebounceCounterInfo:
	.ds (236)
_DemOperationCycleStatus:
	.ds (1)
_DemInternalData:
	.ds (10)
	.align 2
_DemEventQueue:
	.ds (234)
_FDCInfo:
	.ds (177)
	.align 2
_DemEventRelateInformation:
	.ds (708)
_DemDTCGeneralStatus:
	.ds (118)
	.section .data, data
_Dem_CheckEnableCondition.2:
	.ds (1)
