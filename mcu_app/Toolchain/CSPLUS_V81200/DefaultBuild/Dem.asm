#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Dem\Dem.c -oDefaultBuild\Dem.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_2c8497bc2c414a1093171f45e61b6313x4nrloza.jjt
#@	compiled at Fri Mar 27 09:50:20 2026

	.file "..\..\Bsw\SystemServices\Dem\Dem.c"

	$reg_mode 32
	.dbl_size 8

	.extern _DemIndicatorAttribute
	.extern _DemMemDestCfg
	.extern _DemNvRamBlockId
	.extern _DemOperationCycleStatus
	.extern _DemEventQueue
	.extern _DemWIRStatus
	.extern _DemPbCfg
	.extern _DemDTCFilterInfo
	.extern _DemDTCByOccurrenceTimeInfo
	.extern _FDCInfo
	.extern _DemEventRelateInformation
	.extern _DemDTCGeneralStatus
	.extern _Dem_DTCStatusChangedInd
	.extern _DemDTCSettingInfo
	.extern _DemFreezeFrameRecordFilterInfo
	.public _DemPbCfgPtr, 4
	.public _Dem_Pending, 1
	.public _DemClearDTCInfo, 20
	.public _Dem_ClearNonvolatileStatus, 4
	.public _Dem_ClearDTCLock, 4
	.public _Dem_InitState, 4
	.public _DemMemDestInfo, 10
	.public _DemEventMemoryEntryStorage, 2478
	.public _DemEventRelateInformationStorage, 244
	.extern _Det_ReportError
	.public _Dem_PreInit
	.extern _Dem_InterPreInit
	.extern _Dem_DebounceInit
	.public _Dem_Init
	.extern _Dem_InterInit
	.public _Dem_GetVersionInfo
	.public _Dem_Shutdown
	.extern _Dem_IntWriteNvRAM
	.public _Dem_ReportErrorStatus
	.extern _Dem_DebounceFreeze
	.extern _Dem_DebounceProcessCounter
	.public _Dem_SetEventAvailable
	.public _Dem_SetEventStatus
	.extern _Dem_InterSetEventStatus
	.public _Dem_ResetEventDebounceStatus
	.extern _Dem_InterResetEventDebounceStatus
	.public _Dem_ResetEventStatus
	.extern _Dem_ResponseOnDtcStatusChange
	.extern _Dem_DebounceReset
	.public _Dem_PrestoreFreezeFrame
	.public _Dem_ClearPrestoredFreezeFrame
	.public _Dem_SetOperationCycleState
	.public _Dem_GetOperationCycleState
	.public _Dem_SetAgingCycleState
	.public _Dem_SetWIRStatus
	.public _Dem_GetComponentFailed
	.extern _Dem_InterGetComponentFailed
	.public _Dem_GetEventStatus
	.public _Dem_GetEventFailed
	.public _Dem_GetEventTested
	.public _Dem_GetDebouncingOfEvent
	.extern _Dem_GetInteralFDC
	.public _Dem_GetDTCOfEvent
	.public _Dem_SetEnableCondition
	.extern _Dem_InterSetEnableCondition
	.public _Dem_SetStorageCondition
	.extern _Dem_InterSetStorageCondition
	.public _Dem_GetFaultDetectionCounter
	.public _Dem_GetIndicatorStatus
	.extern _Dem_InterGetIndicatorStatus
	.public _Dem_SetIndicatorStatus
	.extern _Dem_InterSetIndicatorStatus
	.public _Dem_GetEventFreezeFrameDataEx
	.extern _Dem_InterGetEventFreezeFrameDataEx
	.public _Dem_GetEventExtendedDataRecordEx
	.extern _Dem_InterGetEventExtendedDataRecordEx
	.public _Dem_GetEventMemoryOverflow
	.public _Dem_GetNumberOfEventMemoryEntries
	.public _Dem_SetComponentAvailable
	.extern _Dem_InterSetComponentAvailable
	.public _Dem_SetDTCSuppression
	.public _Dem_ClearDTC
	.extern _NvM_GetErrorStatus
	.public _Dem_MainFunction
	.extern _Dem_SetEnableCondictionProcess
	.extern _Dem_SetStorageCondictionProcess
	.extern _Dem_DebounceTimerMain
	.extern _Dem_ClearEventRelateInformation
	.extern _Dem_DebounceProcess
	.extern _Dem_EventTestPassed
	.extern _Dem_EventTestFailed
	.extern _Dem_EventQueueProcessWithDebounce
	.public _Dem_UpdateCombinedDtcStatus
	.extern _Dem_InterOperationCycleStart
	.extern _Dem_InterIntReadNvRAM
	.extern _Dem_DeleteRelatedData
	.public _Dem_CheckEntryAlreadyAllocated
	.public _Dem_EventDisplacementProcess
	.public _Dem_ClearDTCProcess
	.public _Dem_GetDTCIndex
	.public _Dem_Clear
	.public _Dem_EventQueueAdd
	.public _Dem_GetEventInfo
	.public _Dem_CheckEventMemEntryExistsAlready
	.extern _Dem_GetMemDestMaxNumOfDtc
	.extern _Dem_CheckWIROff
	.extern _Dem_ClearAllDTC
	.extern _Dem_ClearDTRInfoByEventId
	.extern _SchM_Enter_Dem_ExclusiveArea
	.extern _SchM_Exit_Dem_ExclusiveArea
	.public _Dem_SetOccurrenceEvent

	.section .text, text
_Dem_GetInternalMemDest.1:
	.stack _Dem_GetInternalMemDest.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.h", 378
	mov 0x00000000, r10
	br9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.h", 384
	andi 0x000000FF, r10, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.bu 0x00000005[r5], r2
	cmp r2, r6
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r10
.BB.LABEL.1_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.h", 382
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_4:	; bb17.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x000000FF, r0, r10
.BB.LABEL.1_5:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.h", 391
	zxb r10
	jmp [r31]
_Dem_GetEventInternalId.1:
	.stack _Dem_GetEventInternalId.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 67
	add 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 70
	andi 0x0000FFFF, r6, r10
	jmp [r31]
_Dem_GetEventExternalId.1:
	.stack _Dem_GetEventExternalId.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 71
	add 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 74
	andi 0x0000FFFF, r6, r10
	jmp [r31]
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
_DEM_BITS_ISSET.1:
	.stack _DEM_BITS_ISSET.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 101
	andi 0x00000007, r7, r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 103
	shl r2, r5
	shr 0x00000003, r7
	add r7, r6
	ld.b 0x00000000[r6], r2
	and r5, r2
	andi 0x000000FF, r2, r0
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 104
	jmp [r31]
_DEM_BITS_ISNSET.1:
	.stack _DEM_BITS_ISNSET.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 106
	andi 0x00000007, r7, r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 108
	shl r2, r5
	shr 0x00000003, r7
	add r7, r6
	ld.b 0x00000000[r6], r2
	and r5, r2
	andi 0x000000FF, r2, r0
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 109
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
	br9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 276
	mov r6, r5
	add r2, r5
	st.b r7, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.10_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 274
	cmp r8, r2
	bl9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 278
	jmp [r31]
_Dem_ResetDemClearDTCInfo.1:
	.stack _Dem_ResetDemClearDTCInfo.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 343
	mov #_DemClearDTCInfo, r2
	mov 0xFFFFFFFF, r5
	st.h r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 344
	st.b r5, 0x00000005[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 345
	st.b r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 346
	movhi HIGHW1(#_Dem_ClearDTCLock), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Dem_ClearDTCLock)[r2]
	jmp [r31]
_Dem_GetDTCGroupIndex.1:
	.stack _Dem_GetDTCGroupIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 480
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 497
	jmp [r31]
_Dem_MemEntryGet.1:
	.stack _Dem_MemEntryGet.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 592
	shl 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 596
	mov #_DemMemDestCfg, r2
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 599
	ld.bu 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 596
	ld.w 0x00000000[r2], r10
	mov 0x00000000, r2
	br9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 601
	andi 0x000000FF, r2, r7
	mul 0x0000002A, r7, r0
	add r10, r7
	ld.hu 0x00000028[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 603
	zxb r2
	mul 0x0000002A, r2, r0
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 604
	jmp [r31]
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r2
.BB.LABEL.13_4:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 599
	andi 0x000000FF, r2, r7
	cmp r5, r7
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 608
	jmp [r31]
_Dem_PreInit:
	.stack _Dem_PreInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 339
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 341
	jarl _Dem_InterPreInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 344
	jarl _Dem_DebounceInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 348
	movhi HIGHW1(#_Dem_InitState), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Dem_InitState)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Dem_Init:
	.stack _Dem_Init = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 363
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 365
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 367
	jarl _DEM_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 384
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	st.w r6, LOWW(#_DemPbCfgPtr)[r2]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 386
	movhi HIGHW1(#_Dem_DTCStatusChangedInd), r0, r5
	st.b r2, LOWW(#_Dem_DTCStatusChangedInd)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 387
	movhi HIGHW1(#_DemDTCSettingInfo), r0, r5
	st.b r2, LOWW(#_DemDTCSettingInfo)[r5]
	mov 0x00000000, r20
	movea 0x00000176, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 388
	mov #_DemDTCFilterInfo, r6
	mov r20, r7
	jarl _Dem_MemSet.1, r31
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 389
	mov #_DemFreezeFrameRecordFilterInfo, r6
	mov r20, r7
	jarl _Dem_MemSet.1, r31
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 390
	mov #_DemDTCByOccurrenceTimeInfo, r5
	st.h r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 391
	st.h r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 392
	st.h r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 393
	st.h r2, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 394
	mov #_DemClearDTCInfo, r5
	st.b r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 395
	st.b r2, 0x00000005[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 396
	st.h r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 397
	st.b r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 399
	jarl _Dem_IntReadNvRAM.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 401
	cmp 0x00000001, r10
	mov r10, r20
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_3:	; if_else_bb.bb47_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.15_7
.BB.LABEL.15_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 407
	andi 0x0000FFFF, r21, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r6
	andi 0x0000FFFF, r22, r2
	mul 0x0000002A, r2, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 408
	andi 0x000000FF, r21, r7
	jarl _Dem_MemEntryDelete.1, r31
	add 0x00000001, r22
.BB.LABEL.15_5:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 405
	andi 0x0000FFFF, r21, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.bu 0x00000004[r5], r2
	andi 0x0000FFFF, r22, r5
	cmp r2, r5
	blt9 .BB.LABEL.15_4
.BB.LABEL.15_6:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r21
.BB.LABEL.15_7:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 403
	andi 0x0000FFFF, r21, r0
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_8:	; bb47.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.15_5
.BB.LABEL.15_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 418
	mov r20, r6
	jarl _Dem_SubInit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 420
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 421
	ld.w 0x00000034[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 422
	ld.hu 0x00000038[r2], r22
	mov 0x00000000, r23
	br9 .BB.LABEL.15_13
.BB.LABEL.15_10:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 424
	andi 0x0000FFFF, r23, r2
	mul 0x00000003, r2, r0
	add r21, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_12
.BB.LABEL.15_11:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 435
	andi 0x0000FFFF, r23, r7
	mov #_DemOperationCycleStatus, r6
	jarl _DEM_BITS_SET.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 436
	andi 0x000000FF, r23, r6
	mov 0x00000000, r7
	jarl _Dem_OperationCycleStart.1, r31
.BB.LABEL.15_12:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r23
.BB.LABEL.15_13:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 422
	andi 0x0000FFFF, r23, r2
	cmp r22, r2
	bl9 .BB.LABEL.15_10
.BB.LABEL.15_14:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 440
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.15_16
.BB.LABEL.15_15:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x0000000A, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 442
	mov #_DemMemDestInfo, r6
	jarl _Dem_MemSet.1, r31
.BB.LABEL.15_16:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 444
	jarl _Dem_InterInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 445
	jarl _Dem_ResetDemClearDTCInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 449
	movhi HIGHW1(#_Dem_InitState), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_Dem_InitState)[r2]
	dispose 0x00000000, 0x00000079, [r31]
_Dem_GetVersionInfo:
	.stack _Dem_GetVersionInfo = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 474
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 476
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 478
	jarl _DEM_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x0000003E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 482
	st.h r2, 0x00000000[r6]
	movea 0x00000036, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 483
	st.h r2, 0x00000002[r6]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 484
	st.b r2, 0x00000005[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 485
	st.b r2, 0x00000006[r6]
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 486
	st.b r2, 0x00000007[r6]
	dispose 0x00000000, 0x00000001, [r31]
_Dem_Shutdown:
	.stack _Dem_Shutdown = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 503
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 505
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 507
	jarl _DEM_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 512
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 527
	ld.hu 0x00000038[r2], r20
	mov 0x00000000, r21
	br9 .BB.LABEL.17_6
.BB.LABEL.17_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 529
	andi 0x0000FFFF, r21, r7
	mov #_DemOperationCycleStatus, r6
	jarl _DEM_BITS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 532
	andi 0x0000FFFF, r21, r22
	mov r22, r6
	jarl _Dem_OperationCycleEnd.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 533
	mov #_DemOperationCycleStatus, r6
	mov r22, r7
	jarl _DEM_BITS_CLR.1, r31
.BB.LABEL.17_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r21
.BB.LABEL.17_6:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 527
	andi 0x0000FFFF, r21, r2
	cmp r20, r2
	bl9 .BB.LABEL.17_3
.BB.LABEL.17_7:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 538
	jarl _Dem_IntWriteNvRAM, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 540
	movhi HIGHW1(#_Dem_InitState), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_Dem_InitState)[r2]
	dispose 0x00000000, 0x00000071, [r31]
_Dem_ReportErrorStatus:
	.stack _Dem_ReportErrorStatus = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 560
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 562
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.18_11
.BB.LABEL.18_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 566
	movhi HIGHW1(#_DemPbCfg+0x00000024), r0, r2
	ld.hu LOWW(#_DemPbCfg+0x00000024)[r2], r2
	cmp r2, r21
	bh9 .BB.LABEL.18_10
.BB.LABEL.18_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.18_10
.BB.LABEL.18_4:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 573
	mov r21, r6
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 574
	movhi HIGHW1(#_DemPbCfg+0x00000020), r0, r2
	ld.w LOWW(#_DemPbCfg+0x00000020)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 575
	mov r22, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 576
	mov r22, r2
	mul 0x0000002C, r2, r0
	add r23, r2
	ld.bu 0x0000001E[r2], r2
	cmp 0x00000000, r2
	mov r10, r24
	bnz9 .BB.LABEL.18_10
.BB.LABEL.18_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r22, r2
	mul 0x0000002C, r2, r0
	add r23, r2
	ld.bu 0x00000016[r2], r2
	cmp 0x00000001, r20
	bz9 .BB.LABEL.18_8
.BB.LABEL.18_6:	; bb43
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.18_8
.BB.LABEL.18_7:	; bb43
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.18_10
.BB.LABEL.18_8:	; bb81
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_12
.BB.LABEL.18_9:	; bb85
	mov r22, r2
	mul 0x0000002C, r2, r0
	add r23, r2
	ld.bu 0x0000001F[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.18_12
.BB.LABEL.18_10:	; if_then_bb107
	movea 0x00000010, r0, r7
.BB.LABEL.18_11:	; if_then_bb107
	mov 0x0000000F, r6
	jarl _DEM_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 648
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.18_12:	; if_else_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 584
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.18_15
.BB.LABEL.18_13:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r22, r2
	mul 0x0000002C, r2, r0
	add r23, r2
	ld.hu 0x00000012[r2], r2
	shl 0x00000004, r2
	movhi HIGHW1(#_DemPbCfg+0x00000014), r0, r5
	ld.w LOWW(#_DemPbCfg+0x00000014)[r5], r5
	add r2, r5
	ld.bu 0x0000000E[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_15
.BB.LABEL.18_14:	; if_then_bb132
	movea 0x00000040, r0, r7
	br9 .BB.LABEL.18_11
.BB.LABEL.18_15:	; if_else_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 593
	ld.bu 0x00000004[r24], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_19
.BB.LABEL.18_16:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000004[r24], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_19
.BB.LABEL.18_17:	; bb156
	ld.bu 0x00000004[r24], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_19
.BB.LABEL.18_18:	; bb156
	cmp 0x00000000, r20
	bz9 .BB.LABEL.18_29
.BB.LABEL.18_19:	; if_else_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 603
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.18_26
.BB.LABEL.18_20:	; if_then_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 606
	ld.bu 0x00000002[r24], r6
	mov 0x00000004, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_22
.BB.LABEL.18_21:	; if_then_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 609
	mov r22, r6
	jarl _Dem_DebounceFreeze, r31
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.18_22:	; if_else_bb201
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 615
	mov r22, r25
	mul 0x0000002C, r25, r0
	add r23, r25
	ld.bu 0x00000020[r25], r7
	mov #_DemOperationCycleStatus, r6
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	movea 0x00000020, r25, r2
	bz9 .BB.LABEL.18_24
.BB.LABEL.18_23:	; bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemPbCfg+0x00000034), r0, r5
	ld.w LOWW(#_DemPbCfg+0x00000034)[r5], r5
	ld.bu 0x00000000[r2], r2
	mulh 0x00000003, r2
	add r2, r5
	ld.bu 0x00000002[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_29
.BB.LABEL.18_24:	; bb229
	ld.bu 0x00000002[r24], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.18_29
.BB.LABEL.18_25:	; bb244
	ld.bu 0x00000002[r24], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.18_29
.BB.LABEL.18_26:	; if_then_bb273
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 637
	mov r21, r6
	mov r20, r7
	jarl _Dem_DebounceProcessCounter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 640
	mul 0x0000002C, r22, r0
	add r22, r23
	ld.bu 0x00000016[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_28
.BB.LABEL.18_27:	; bb284
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	addi 0xFFFFFFFE, r10, r2
	zxb r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.18_29
.BB.LABEL.18_28:	; if_then_bb315
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 644
	mov r21, r6
	mov r10, r7
	jarl _Dem_EventQueueAdd, r31
.BB.LABEL.18_29:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 648
	dispose 0x00000000, 0x00000679, [r31]
_Dem_SetEventAvailable:
	.stack _Dem_SetEventAvailable = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 668
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 678
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.19_2:	; if_then_bb
	movea 0x00000037, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 753
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.19_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 682
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; if_then_bb32
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.19_2
.BB.LABEL.19_6:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 688
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 689
	mov r21, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 694
	mov r21, r6
	jarl _Dem_CheckEventMemEntryExistsAlready, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_else_bb33.if_break_bb141_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.19_13
.BB.LABEL.19_8:	; bb42
	ld.bu 0x00000004[r22], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_9:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 701
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 702
	mul 0x0000002C, r21, r0
	add r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 703
	ld.hu 0x00000010[r5], r21
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.19_11
.BB.LABEL.19_10:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 705
	set1 0x00000004, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 707
	ld.b 0x00000004[r22], r2
	ori 0x00000050, r2, r2
	st.b r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 711
	add r21, r21
	mov #_DemDTCGeneralStatus, r2
	add r21, r2
	st.b r0, 0x00000001[r2]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.19_11:	; if_else_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 715
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 719
	mov r21, r6
	mul 0x00000014, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 720
	ld.hu 0x00000010[r5], r5
	ld.w 0x00000044[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 721
	clr1 0x00000004, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 723
	st.b r0, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 720
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 732
	ld.hu 0x00000000[r2], r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.bu 0x00000002[r5], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 735
	cmov 0x0000000A, 0xFFFFFFFF, r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 744
	andi 0x0000FFFF, r2, r5
	ori 0x0000FFFF, r0, r6
	cmp r6, r5
	bnz9 .BB.LABEL.19_14
.BB.LABEL.19_12:	; if_else_bb91.if_break_bb141_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r10
.BB.LABEL.19_13:	; if_break_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 753
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.19_14:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 746
	zxh r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000001[r5]
	br9 .BB.LABEL.19_12
_Dem_SetEventStatus:
	.stack _Dem_SetEventStatus = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 773
	prepare 0x00000779, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 782
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.20_2:	; if_then_bb
	mov 0x00000004, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 857
	dispose 0x00000004, 0x00000779, [r31]
.BB.LABEL.20_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 786
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r21
	bh9 .BB.LABEL.20_9
.BB.LABEL.20_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.20_9
.BB.LABEL.20_5:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 792
	mov r21, r6
	jarl _Dem_GetEventInternalId.1, r31
	st.h r10, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 793
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r22
	ld.hu 0x00000002[r3], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 794
	mov r23, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 795
	mov r23, r2
	mul 0x0000002C, r2, r0
	add r22, r2
	ld.bu 0x0000001E[r2], r2
	cmp 0x00000001, r2
	mov r10, r24
	bnz9 .BB.LABEL.20_9
.BB.LABEL.20_6:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 799
	mov r23, r2
	mul 0x0000002C, r2, r0
	add r22, r2
	ld.bu 0x00000016[r2], r5
	movea 0x00000016, r2, r25
	cmp 0x00000001, r20
	bz9 .BB.LABEL.20_10
.BB.LABEL.20_7:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.20_10
.BB.LABEL.20_8:	; if_else_bb50
	cmp 0x00000000, r20
	bz9 .BB.LABEL.20_10
.BB.LABEL.20_9:	; if_then_bb82
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.20_2
.BB.LABEL.20_10:	; if_else_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 808
	ld.bu 0x00000004[r24], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_15
.BB.LABEL.20_11:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000004[r24], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_15
.BB.LABEL.20_12:	; bb106
	ld.bu 0x00000004[r24], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_15
.BB.LABEL.20_13:	; bb106
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.20_15
.BB.LABEL.20_14:	; bb106.if_break_bb268_crit_edge
	mov 0x00000000, r26
	br9 .BB.LABEL.20_21
.BB.LABEL.20_15:	; if_else_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 819
	ld.bu 0x00000002[r24], r6
	mov 0x00000004, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_17
.BB.LABEL.20_16:	; if_then_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 823
	ld.hu 0x00000002[r3], r6
	jarl _Dem_DebounceFreeze, r31
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000779, [r31]
.BB.LABEL.20_17:	; if_else_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 827
	mov r20, r7
	jarl _Dem_InterSetEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 828
	addi 0x00000000, r10, r26
	bnz9 .BB.LABEL.20_21
.BB.LABEL.20_18:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 830
	mul 0x0000002C, r23, r0
	add r23, r22
	ld.bu 0x00000020[r22], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 832
	mov #_DemOperationCycleStatus, r6
	mov r22, r7
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_22
.BB.LABEL.20_19:	; bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000034[r2], r2
	mulh 0x00000003, r22
	add r22, r2
	ld.bu 0x00000002[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.20_22
.BB.LABEL.20_20:	; bb164.if_break_bb268_crit_edge
	mov 0x00000001, r26
.BB.LABEL.20_21:	; if_break_bb268
	mov r26, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 857
	dispose 0x00000004, 0x00000779, [r31]
.BB.LABEL.20_22:	; bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000002[r24], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_20
.BB.LABEL.20_23:	; bb198
	ld.bu 0x00000002[r24], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_20
.BB.LABEL.20_24:	; if_else_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 843
	mov r21, r6
	mov r20, r7
	jarl _Dem_DebounceProcessCounter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 846
	ld.bu 0x00000000[r25], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.20_26
.BB.LABEL.20_25:	; bb226
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	addi 0xFFFFFFFE, r10, r2
	zxb r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.20_21
.BB.LABEL.20_26:	; if_then_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 850
	mov r21, r6
	mov r10, r7
	jarl _Dem_EventQueueAdd, r31
	dispose 0x00000004, 0x00000779, [r31]
_Dem_ResetEventDebounceStatus:
	.stack _Dem_ResetEventDebounceStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 875
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 881
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bgt9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.21_5
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 885
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.21_6
.BB.LABEL.21_4:	; if_then_bb27
	movea 0x00000010, r0, r7
.BB.LABEL.21_5:	; if_then_bb27
	mov 0x00000009, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 916
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.21_6:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 893
	jarl _Dem_GetEventInternalId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 894
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r10, r21
	bz9 .BB.LABEL.21_9
.BB.LABEL.21_7:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r5
	mov r21, r6
	mul 0x0000002C, r6, r0
	add r6, r5
	ld.hu 0x00000012[r5], r5
	shl 0x00000004, r5
	ld.w 0x00000014[r2], r2
	add r5, r2
	ld.bu 0x0000000E[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_9
.BB.LABEL.21_8:	; if_then_bb61
	movea 0x00000040, r0, r7
	br9 .BB.LABEL.21_5
.BB.LABEL.21_9:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 903
	mov r21, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 904
	ld.bu 0x00000002[r10], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_11
.BB.LABEL.21_10:	; if_else_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 910
	mov r21, r6
	mov r20, r7
	jarl _Dem_InterResetEventDebounceStatus, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 911
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.21_11:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 916
	dispose 0x00000000, 0x00000061, [r31]
_Dem_ResetEventStatus:
	.stack _Dem_ResetEventStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 933
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 939
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	bgt9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.22_2:	; if_then_bb
	mov 0x00000005, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 969
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.22_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 943
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; if_then_bb26
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.22_2
.BB.LABEL.22_6:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 949
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 950
	mov r20, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 952
	ld.bu 0x00000004[r21], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.22_9
.BB.LABEL.22_7:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000002[r21], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.22_9
.BB.LABEL.22_8:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 960
	clr1 0x00000000, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 962
	mov r20, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 963
	mov r20, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 964
	mov r20, r6
	jarl _Dem_DebounceReset, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 965
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.22_9:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 969
	dispose 0x00000000, 0x00000061, [r31]
_Dem_PrestoreFreezeFrame:
	.stack _Dem_PrestoreFreezeFrame = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 984
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1017
	jmp [r31]
_Dem_ClearPrestoredFreezeFrame:
	.stack _Dem_ClearPrestoredFreezeFrame = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1032
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1063
	jmp [r31]
_Dem_SetOperationCycleState:
	.stack _Dem_SetOperationCycleState = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1081
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1085
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.25_3
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.25_2:	; if_then_bb
	mov 0x00000008, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1121
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.25_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1089
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000038[r2], r2
	cmp r2, r20
	blt9 .BB.LABEL.25_5
.BB.LABEL.25_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.25_2
.BB.LABEL.25_5:	; if_else_bb17
	mov #_DemOperationCycleStatus, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1095
	cmp 0x00000000, r7
	mov r20, r7
	bnz9 .BB.LABEL.25_10
.BB.LABEL.25_6:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1098
	jarl _DEM_BITS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.25_8
.BB.LABEL.25_7:	; if_then_bb23.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.25_9
.BB.LABEL.25_8:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1105
	mov #_DemOperationCycleStatus, r6
	mov r20, r7
	jarl _DEM_BITS_SET.1, r31
	mov 0x00000000, r7
.BB.LABEL.25_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1107
	mov r20, r6
	jarl _Dem_OperationCycleStart.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.25_10:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1112
	jarl _DEM_BITS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.25_12
.BB.LABEL.25_11:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1114
	mov r20, r6
	jarl _Dem_OperationCycleEnd.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1115
	mov #_DemOperationCycleStatus, r6
	mov r20, r7
	jarl _DEM_BITS_CLR.1, r31
.BB.LABEL.25_12:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1121
	dispose 0x00000000, 0x00000041, [r31]
_Dem_GetOperationCycleState:
	.stack _Dem_GetOperationCycleState = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1138
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1143
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r7
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.26_4
.BB.LABEL.26_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1147
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000038[r2], r2
	cmp r2, r7
	blt9 .BB.LABEL.26_5
.BB.LABEL.26_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000010, r0, r7
.BB.LABEL.26_4:	; if_then_bb15
	movea 0x0000009E, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1168
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.26_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1151
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.26_7
.BB.LABEL.26_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.26_4
.BB.LABEL.26_7:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1157
	mov #_DemOperationCycleStatus, r6
	jarl _DEM_BITS_ISNSET.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1163
	cmp 0x00000000, r10
	setf 0x0000000A, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1165
	dispose 0x00000000, 0x00000041, [r31]
_Dem_SetAgingCycleState:
	.stack _Dem_SetAgingCycleState = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1183
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1186
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_3
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.27_2:	; if_then_bb
	movea 0x00000011, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1200
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.27_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1190
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000038[r2], r2
	cmp r2, r6
	blt9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.27_2
.BB.LABEL.27_5:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1196
	movhi HIGHW1(#_Dem_AgingCycle.1), r0, r2
	st.b r6, LOWW(#_Dem_AgingCycle.1)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1197
	dispose 0x00000000, 0x00000001, [r31]
_Dem_SetWIRStatus:
	.stack _Dem_SetWIRStatus = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1217
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1222
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bgt9 .BB.LABEL.28_3
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.28_2:	; if_then_bb
	movea 0x0000007A, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1268
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.28_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1226
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.28_5
.BB.LABEL.28_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.28_6
.BB.LABEL.28_5:	; if_then_bb27
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.28_2
.BB.LABEL.28_6:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1232
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1233
	mov r21, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1235
	ld.bu 0x00000002[r22], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.28_9
.BB.LABEL.28_7:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000002[r22], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.28_9
.BB.LABEL.28_8:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1242
	ld.bu 0x00000004[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1259
	andi 0x0000007F, r2, r5
	movea 0xFFFFFF80, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1245
	or r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1242
	cmp 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1259
	cmov 0x00000002, r2, r5, r2
	st.b r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1262
	mov r21, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1263
	mov r21, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1264
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.28_9:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1268
	dispose 0x00000000, 0x00000071, [r31]
_Dem_GetComponentFailed:
	.stack _Dem_GetComponentFailed = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1284
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1287
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1289
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1293
	jarl _Dem_InterGetComponentFailed, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_GetEventStatus:
	.stack _Dem_GetEventStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1312
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1317
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.30_5
.BB.LABEL.30_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1321
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.30_4
.BB.LABEL.30_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.30_6
.BB.LABEL.30_4:	; if_then_bb26
	movea 0x00000010, r0, r7
.BB.LABEL.30_5:	; if_then_bb26
	mov 0x0000000A, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1340
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.30_6:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1325
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.30_8
.BB.LABEL.30_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.30_5
.BB.LABEL.30_8:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1331
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1333
	ld.bu 0x00000002[r21], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.30_10
.BB.LABEL.30_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1335
	ld.b 0x00000004[r21], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1336
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.30_10:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1340
	dispose 0x00000000, 0x00000061, [r31]
_Dem_GetEventFailed:
	.stack _Dem_GetEventFailed = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1356
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1360
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.31_5
.BB.LABEL.31_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1364
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.31_4
.BB.LABEL.31_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.31_6
.BB.LABEL.31_4:	; if_then_bb26
	movea 0x00000010, r0, r7
.BB.LABEL.31_5:	; if_then_bb26
	mov 0x0000000B, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1390
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.31_6:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1368
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.31_8
.BB.LABEL.31_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.31_5
.BB.LABEL.31_8:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1374
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1376
	ld.bu 0x00000002[r21], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.31_10
.BB.LABEL.31_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1378
	ld.bu 0x00000004[r21], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1384
	cmp 0x00000000, r10
	setf 0x0000000A, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1386
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.31_10:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1390
	dispose 0x00000000, 0x00000061, [r31]
_Dem_GetEventTested:
	.stack _Dem_GetEventTested = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1407
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1412
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.32_2
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.32_5
.BB.LABEL.32_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1416
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.32_4
.BB.LABEL.32_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.32_6
.BB.LABEL.32_4:	; if_then_bb26
	movea 0x00000010, r0, r7
.BB.LABEL.32_5:	; if_then_bb26
	mov 0x0000000C, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1442
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.32_6:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1420
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.32_8
.BB.LABEL.32_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.32_5
.BB.LABEL.32_8:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1426
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1428
	ld.bu 0x00000002[r21], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.32_10
.BB.LABEL.32_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1430
	ld.bu 0x00000004[r21], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1436
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1438
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.32_10:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1442
	dispose 0x00000000, 0x00000061, [r31]
_Dem_GetDebouncingOfEvent:
	.stack _Dem_GetDebouncingOfEvent = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1458
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1462
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1467
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.33_2
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.33_5
.BB.LABEL.33_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1471
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.33_4
.BB.LABEL.33_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.33_6
.BB.LABEL.33_4:	; if_then_bb28
	movea 0x00000010, r0, r7
.BB.LABEL.33_5:	; if_then_bb28
	movea 0x0000009F, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1517
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.33_6:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1475
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.33_8
.BB.LABEL.33_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.33_5
.BB.LABEL.33_8:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1481
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1482
	mov r21, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1484
	ld.bu 0x00000002[r22], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.33_10
.BB.LABEL.33_9:	; if_else_bb35.if_break_bb190_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.33_25
.BB.LABEL.33_10:	; if_then_bb48
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1486
	mov r21, r6
	jarl _Dem_GetInteralFDC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1487
	st.b r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1488
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.33_25
.BB.LABEL.33_11:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1491
	ld.b 0x00000003[r3], r2
	cmp 0x00000000, r2
	ble9 .BB.LABEL.33_14
.BB.LABEL.33_12:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	addi 0xFFFFFF81, r2, r0
	bz9 .BB.LABEL.33_14
.BB.LABEL.33_13:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1493
	set1 0x00000000, 0x00000000[r20]
.BB.LABEL.33_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1495
	ld.bu 0x00000003[r3], r2
	addi 0xFFFFFF81, r2, r0
	bnz9 .BB.LABEL.33_16
.BB.LABEL.33_15:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1497
	set1 0x00000001, 0x00000000[r20]
.BB.LABEL.33_16:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1499
	ld.b 0x00000003[r3], r2
	addi 0x00000080, r2, r0
	bz9 .BB.LABEL.33_19
.BB.LABEL.33_17:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r2
	bp9 .BB.LABEL.33_19
.BB.LABEL.33_18:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1501
	set1 0x00000002, 0x00000000[r20]
.BB.LABEL.33_19:	; if_break_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1503
	ld.b 0x00000000[r2], r2
	movea 0xFFFFFF81, r2, r2
	zxb r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.33_21
.BB.LABEL.33_20:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1505
	set1 0x00000003, 0x00000000[r20]
.BB.LABEL.33_21:	; if_break_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1507
	ld.bu 0x00000004[r22], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.33_25
.BB.LABEL.33_22:	; bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000002[r22], r6
	mov 0x00000004, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.33_24
.BB.LABEL.33_23:	; bb156
	ld.bu 0x00000002[r22], r6
	mov 0x00000008, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.33_25
.BB.LABEL.33_24:	; if_then_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1511
	set1 0x00000004, 0x00000000[r20]
.BB.LABEL.33_25:	; if_break_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1517
	dispose 0x00000004, 0x00000071, [r31]
_Dem_GetDTCOfEvent:
	.stack _Dem_GetDTCOfEvent = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1536
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1546
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.34_5
.BB.LABEL.34_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1550
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.34_4
.BB.LABEL.34_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.34_6
.BB.LABEL.34_4:	; if_then_bb31
	movea 0x00000010, r0, r7
.BB.LABEL.34_5:	; if_then_bb31
	mov 0x0000000D, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1606
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.34_6:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1554
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.34_8
.BB.LABEL.34_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.34_5
.BB.LABEL.34_8:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1560
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1561
	mov r22, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1563
	ld.bu 0x00000002[r10], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.34_10
.BB.LABEL.34_9:	; if_else_bb38.if_break_bb176_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.34_15
.BB.LABEL.34_10:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1565
	st.w r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1566
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1567
	mul 0x0000002C, r22, r0
	add r22, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1568
	ld.hu 0x00000010[r5], r5
	ori 0x0000FFFF, r0, r6
	cmp r6, r5
	bz9 .BB.LABEL.34_9
.BB.LABEL.34_11:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1570
	ld.w 0x00000004[r2], r6
	mov r5, r7
	mul 0x00000014, r7, r0
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1573
	ld.hu 0x00000006[r6], r6
	cmp 0x00000000, r21
	bz9 .BB.LABEL.34_16
.BB.LABEL.34_12:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0xFFFFFFFF, r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.34_20
.BB.LABEL.34_13:	; if_then_bb67
	cmp 0x00000001, r21
	bz9 .BB.LABEL.34_22
.BB.LABEL.34_14:	; if_then_bb67.if_break_bb176_crit_edge
	mov 0x00000002, r10
.BB.LABEL.34_15:	; if_break_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1606
	zxb r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.34_16:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1576
	cmp r2, r6
	bz9 .BB.LABEL.34_14
.BB.LABEL.34_17:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x0000002C[r2], r5
	mov r6, r7
	mul 0x0000000C, r7, r0
	add r7, r5
	ld.hu 0x00000002[r5], r5
	ori 0x0000FFFF, r0, r7
	cmp r7, r5
	bz9 .BB.LABEL.34_14
.BB.LABEL.34_18:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1579
	ld.w 0x0000002C[r2], r2
	mul 0x0000000C, r6, r0
	add r6, r2
	ld.hu 0x00000002[r2], r2
.BB.LABEL.34_19:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1606
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.34_20:	; switch_clause_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1584
	ld.w 0x00000004[r2], r6
	mov r5, r7
	mul 0x00000014, r7, r0
	add r7, r6
	ld.w 0x00000000[r6], r6
	mov 0x00FFFFFF, r7
	mov 0x00000000, r10
	cmp r7, r6
	bz9 .BB.LABEL.34_15
.BB.LABEL.34_21:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1586
	ld.w 0x00000004[r2], r6
	mul 0x00000014, r5, r0
	add r5, r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x00000000[r20]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.34_22:	; switch_clause_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1591
	cmp r2, r6
	bz9 .BB.LABEL.34_14
.BB.LABEL.34_23:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x0000002C[r2], r5
	mov r6, r7
	mul 0x0000000C, r7, r0
	add r7, r5
	ld.w 0x00000004[r5], r5
	mov 0x00FFFFFF, r7
	cmp r7, r5
	bz9 .BB.LABEL.34_14
.BB.LABEL.34_24:	; if_then_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1594
	ld.w 0x0000002C[r2], r2
	mul 0x0000000C, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r2
	br9 .BB.LABEL.34_19
_Dem_SetEnableCondition:
	.stack _Dem_SetEnableCondition = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1625
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1628
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000039, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1630
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.35_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1634
	jarl _Dem_InterSetEnableCondition, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_SetStorageCondition:
	.stack _Dem_SetStorageCondition = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1657
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1660
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.36_2
.BB.LABEL.36_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000038, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1662
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.36_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1666
	jarl _Dem_InterSetStorageCondition, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_GetFaultDetectionCounter:
	.stack _Dem_GetFaultDetectionCounter = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1690
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1696
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.37_2
.BB.LABEL.37_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.37_5
.BB.LABEL.37_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1700
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.37_4
.BB.LABEL.37_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.37_6
.BB.LABEL.37_4:	; if_then_bb27
	movea 0x00000010, r0, r7
.BB.LABEL.37_5:	; if_then_bb27
	movea 0x0000003E, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1719
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.37_6:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1704
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.37_8
.BB.LABEL.37_7:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.37_5
.BB.LABEL.37_8:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1710
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1711
	mov r21, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1713
	ld.bu 0x00000002[r10], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.37_10
.BB.LABEL.37_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1715
	mov r21, r6
	mov r20, r7
	jarl _Dem_GetInteralFDC, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.37_10:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1719
	dispose 0x00000000, 0x00000061, [r31]
_Dem_GetIndicatorStatus:
	.stack _Dem_GetIndicatorStatus = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1734
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1737
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.38_2
.BB.LABEL.38_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000029, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1739
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.38_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1743
	jarl _Dem_InterGetIndicatorStatus, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_SetIndicatorStatus:
	.stack _Dem_SetIndicatorStatus = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1762
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1765
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.39_2
.BB.LABEL.39_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	movea 0x000000A1, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1767
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.39_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1771
	jarl _Dem_InterSetIndicatorStatus, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_GetEventFreezeFrameDataEx:
	.stack _Dem_GetEventFreezeFrameDataEx = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1806
	prepare 0x00000479, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1817
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	ld.w 0x0000001C[r3], r20
	mov r9, r21
	mov r8, r22
	mov r7, r23
	mov r6, r24
	bz9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.40_5
.BB.LABEL.40_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1821
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r24
	bh9 .BB.LABEL.40_4
.BB.LABEL.40_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.40_6
.BB.LABEL.40_4:	; if_then_bb30
	movea 0x00000010, r0, r7
.BB.LABEL.40_5:	; if_then_bb30
	movea 0x0000006E, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1839
	dispose 0x00000004, 0x00000479, [r31]
.BB.LABEL.40_6:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1825
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.40_8
.BB.LABEL.40_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.40_5
.BB.LABEL.40_8:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1831
	mov r24, r6
	jarl _Dem_GetEventInternalId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1832
	mov r10, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1833
	ld.bu 0x00000002[r10], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.40_10
.BB.LABEL.40_9:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1835
	st.w r20, 0x00000000[r3]
	mov r24, r6
	mov r23, r7
	mov r22, r8
	mov r21, r9
	jarl _Dem_InterGetEventFreezeFrameDataEx, r31
	dispose 0x00000004, 0x00000479, [r31]
.BB.LABEL.40_10:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1839
	dispose 0x00000004, 0x00000479, [r31]
_Dem_GetEventExtendedDataRecordEx:
	.stack _Dem_GetEventExtendedDataRecordEx = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1862
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1872
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	bz9 .BB.LABEL.41_2
.BB.LABEL.41_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.41_5
.BB.LABEL.41_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1876
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	cmp r2, r6
	bh9 .BB.LABEL.41_4
.BB.LABEL.41_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.41_6
.BB.LABEL.41_4:	; if_then_bb29
	movea 0x00000010, r0, r7
.BB.LABEL.41_5:	; if_then_bb29
	movea 0x0000006D, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1894
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.41_6:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1880
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.41_8
.BB.LABEL.41_7:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.41_5
.BB.LABEL.41_8:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1886
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1887
	mov r23, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1888
	ld.bu 0x00000002[r10], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.41_10
.BB.LABEL.41_9:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1890
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _Dem_InterGetEventExtendedDataRecordEx, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.41_10:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1894
	dispose 0x00000000, 0x00000079, [r31]
_Dem_GetEventMemoryOverflow:
	.stack _Dem_GetEventMemoryOverflow = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1912
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1916
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.42_2
.BB.LABEL.42_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.42_4
.BB.LABEL.42_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1920
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.42_5
.BB.LABEL.42_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
.BB.LABEL.42_4:	; if_then_bb11
	movea 0x00000032, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1939
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.42_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1926
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1927
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.42_7
.BB.LABEL.42_6:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.42_4
.BB.LABEL.42_7:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1934
	mulh 0x0000000A, r10
	mov #_DemMemDestInfo, r2
	add r10, r2
	ld.b 0x00000009[r2], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1935
	dispose 0x00000000, 0x00000041, [r31]
_Dem_GetNumberOfEventMemoryEntries:
	.stack _Dem_GetNumberOfEventMemoryEntries = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1957
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1963
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.43_4
.BB.LABEL.43_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1967
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.43_5
.BB.LABEL.43_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000011, r0, r7
.BB.LABEL.43_4:	; if_then_bb11
	movea 0x00000035, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1986
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.43_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1973
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1974
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.43_7
.BB.LABEL.43_6:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.43_4
.BB.LABEL.43_7:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1981
	mulh 0x0000000A, r10
	mov #_DemMemDestInfo, r2
	add r10, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 1982
	dispose 0x00000000, 0x00000041, [r31]
_Dem_SetComponentAvailable:
	.stack _Dem_SetComponentAvailable = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2003
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2007
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.44_2
.BB.LABEL.44_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	movea 0x0000002B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2009
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.44_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2013
	jarl _Dem_InterSetComponentAvailable, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_SetDTCSuppression:
	.stack _Dem_SetDTCSuppression = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2036
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2039
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r8, r20
	bz9 .BB.LABEL.45_3
.BB.LABEL.45_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.45_2:	; if_then_bb
	movea 0x00000033, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2081
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.45_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2045
	jarl _Dem_GetDTCIndex, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2046
	cmp r2, r10
	bnz9 .BB.LABEL.45_5
.BB.LABEL.45_4:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000031, r0, r7
	br9 .BB.LABEL.45_2
.BB.LABEL.45_5:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2076
	add r10, r10
	mov #_DemDTCGeneralStatus, r2
	add r10, r2
	st.b r20, 0x00000001[r2]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000041, [r31]
_Dem_ClearDTC:
	.stack _Dem_ClearDTC = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2106
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2113
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bz9 .BB.LABEL.46_2
.BB.LABEL.46_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2115
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000003, r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.46_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2119
	movhi HIGHW1(#_Dem_ClearDTCLock), r0, r2
	ld.w LOWW(#_Dem_ClearDTCLock)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.46_8
.BB.LABEL.46_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2121
	movhi HIGHW1(#_DemClearDTCInfo+0x00000002), r0, r2
	ld.hu LOWW(#_DemClearDTCInfo+0x00000002)[r2], r23
	mov r22, r6
	mov r21, r7
	jarl _Dem_GetDTCIndex, r31
	cmp r23, r10
	bnz9 .BB.LABEL.46_11
.BB.LABEL.46_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemClearDTCInfo+0x0000000D), r0, r2
	ld.bu LOWW(#_DemClearDTCInfo+0x0000000D)[r2], r2
	cmp r2, r21
	bnz9 .BB.LABEL.46_11
.BB.LABEL.46_5:	; bb39
	movhi HIGHW1(#_DemClearDTCInfo+0x0000000F), r0, r2
	ld.bu LOWW(#_DemClearDTCInfo+0x0000000F)[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.46_11
.BB.LABEL.46_6:	; bb55
	movhi HIGHW1(#_DemClearDTCInfo+0x00000010), r0, r2
	ld.hu LOWW(#_DemClearDTCInfo+0x00000010)[r2], r2
	addi 0xFFFFFFDD, r2, r0
	bnz9 .BB.LABEL.46_11
.BB.LABEL.46_7:	; bb55.if_break_bb104_crit_edge
	mov 0x00000000, r23
	mov 0x00000004, r24
	br9 .BB.LABEL.46_12
.BB.LABEL.46_8:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2135
	cmp 0x00000001, r2
	bz9 .BB.LABEL.46_10
.BB.LABEL.46_9:	; if_else_bb72.if_break_bb104_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r23
	mov 0x00000003, r24
	br9 .BB.LABEL.46_12
.BB.LABEL.46_10:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2138
	movhi HIGHW1(#_Dem_ClearDTCLock), r0, r23
	st.w r0, LOWW(#_Dem_ClearDTCLock)[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2139
	mov r22, r6
	mov r21, r7
	jarl _Dem_GetDTCIndex, r31
	mov #_DemClearDTCInfo, r23
	st.h r10, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2140
	st.b r21, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2141
	st.b r20, 0x0000000E[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2142
	mov r22, r6
	mov r21, r7
	jarl _Dem_GetDTCIndex, r31
	st.h r10, 0x00000002[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2143
	st.b r21, 0x0000000D[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2144
	st.b r20, 0x0000000F[r23]
	movea 0x00000023, r0, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2145
	st.h r24, 0x00000010[r23]
	br9 .BB.LABEL.46_9
.BB.LABEL.46_11:	; if_else_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r23
	mov 0x00000005, r24
.BB.LABEL.46_12:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2161
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.46_22
.BB.LABEL.46_13:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2163
	mov r20, r6
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2164
	addi 0xFFFFFF01, r10, r0
	mov r10, r20
	bnz9 .BB.LABEL.46_15
.BB.LABEL.46_14:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2166
	jarl _Dem_ResetDemClearDTCInfo.1, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2167
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.46_15:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00FFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2171
	mov r22, r5
	and r2, r5
	cmp r2, r5
	bnz9 .BB.LABEL.46_17
.BB.LABEL.46_16:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2173
	movhi HIGHW1(#_DemClearDTCInfo+0x00000004), r0, r21
	mov 0x00000001, r22
	st.b r22, LOWW(#_DemClearDTCInfo+0x00000004)[r21]
	br9 .BB.LABEL.46_20
.BB.LABEL.46_17:	; if_else_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2178
	mov #_DemClearDTCInfo, r25
	st.b r0, 0x00000004[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2179
	mov r22, r6
	jarl _Dem_GetDTCGroupIndex.1, r31
	st.b r10, 0x00000005[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2180
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.46_20
.BB.LABEL.46_18:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2182
	mov r22, r6
	mov r21, r7
	jarl _Dem_GetDTCIndex, r31
	movhi HIGHW1(#_DemClearDTCInfo), r0, r2
	st.h r10, LOWW(#_DemClearDTCInfo)[r2]
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2183
	cmp r2, r10
	bnz9 .BB.LABEL.46_20
.BB.LABEL.46_19:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2185
	jarl _Dem_ResetDemClearDTCInfo.1, r31
	mov 0x00000000, r23
	mov 0x00000001, r24
.BB.LABEL.46_20:	; if_break_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2197
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.46_22
.BB.LABEL.46_21:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2199
	movhi HIGHW1(#_DemClearDTCInfo+0x00000006), r0, r24
	st.b r20, LOWW(#_DemClearDTCInfo+0x00000006)[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2200
	movhi HIGHW1(#_Dem_Pending), r0, r24
	mov 0x00000001, r2
	st.b r2, LOWW(#_Dem_Pending)[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2201
	jarl _Dem_ClearDTCProcess, r31
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2213
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r24
	st.w r10, LOWW(#_Dem_ClearNonvolatileStatus)[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2214
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.46_22:	; if_break_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2221
	andi 0x000000FF, r24, r10
	dispose 0x00000000, 0x00000679, [r31]
_Dem_ClearNonvolatile.1:
	.stack _Dem_ClearNonvolatile.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2236
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2243
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r2
	ld.w LOWW(#_Dem_ClearNonvolatileStatus)[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.47_2
.BB.LABEL.47_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2246
	jarl _Dem_IntWriteNvRAM, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2248
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_Dem_ClearNonvolatileStatus)[r2]
.BB.LABEL.47_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2254
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r2
	ld.w LOWW(#_Dem_ClearNonvolatileStatus)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.47_11
.BB.LABEL.47_3:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2256
	movhi HIGHW1(#_Dem_ClearCnt.2), r0, r2
	ld.bu LOWW(#_Dem_ClearCnt.2)[r2], r20
.BB.LABEL.47_4:	; bb35
	andi 0x000000FF, r20, r2
	cmp 0x00000002, r2
	bge9 .BB.LABEL.47_9
.BB.LABEL.47_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2258
	andi 0x000000FF, r20, r2
	add r2, r2
	mov #_DemNvRamBlockId, r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	mov r3, r7
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2259
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.47_7
.BB.LABEL.47_6:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2261
	movhi HIGHW1(#_Dem_ClearCnt.2), r0, r2
	ld.b LOWW(#_Dem_ClearCnt.2)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_Dem_ClearCnt.2)[r2]
	add 0x00000001, r20
	br9 .BB.LABEL.47_4
.BB.LABEL.47_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2263
	cmp 0x00000002, r2
	bz9 .BB.LABEL.47_9
.BB.LABEL.47_8:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2269
	movhi HIGHW1(#_Dem_ClearCnt.2), r0, r20
	st.b r0, LOWW(#_Dem_ClearCnt.2)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2270
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r20
	mov 0x00000001, r2
	st.w r2, LOWW(#_Dem_ClearNonvolatileStatus)[r20]
.BB.LABEL.47_9:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2274
	movhi HIGHW1(#_Dem_ClearCnt.2), r0, r2
	ld.bu LOWW(#_Dem_ClearCnt.2)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.47_11
.BB.LABEL.47_10:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2276
	movhi HIGHW1(#_Dem_ClearCnt.2), r0, r2
	st.b r0, LOWW(#_Dem_ClearCnt.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2277
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r2
	st.w r0, LOWW(#_Dem_ClearNonvolatileStatus)[r2]
.BB.LABEL.47_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2281
	dispose 0x00000004, 0x00000041, [r31]
_Dem_MainFunction:
	.stack _Dem_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2297
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2299
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2301
	jarl _Dem_SetEnableCondictionProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2302
	jarl _Dem_SetStorageCondictionProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2303
	jarl _Dem_DebounceTimerMain, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2304
	jarl _Dem_EventQueueProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2306
	jarl _Dem_ClearNonvolatile.1, r31
.BB.LABEL.48_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2309
	dispose 0x00000000, 0x00000001, [r31]
_Dem_SubInit.1:
	.stack _Dem_SubInit.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2328
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2333
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2334
	ld.w 0x00000020[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2336
	ld.hu 0x00000024[r2], r21
	mov 0x00000000, r22
	mov r6, r23
	br9 .BB.LABEL.49_12
.BB.LABEL.49_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2338
	andi 0x0000FFFF, r22, r2
	mov r2, r5
	mul 0x0000000C, r5, r0
	mov #_DemEventRelateInformation, r24
	add r5, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2339
	st.h r22, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2343
	ld.b 0x00000004[r24], r5
	mov 0xFFFFFFFE, r6
	and r6, r5
	st.b r5, 0x00000004[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2355
	st.b r5, 0x00000005[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2357
	ld.bu 0x00000002[r24], r5
	ori 0x00000001, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2356
	mul 0x0000002C, r2, r0
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2358
	ld.hu 0x00000010[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2357
	st.b r6, 0x00000002[r24]
	addi 0x00000002, r24, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2358
	ld.bu 0x0000001C[r2], r6
	cmp 0x00000001, r6
	movea 0x0000001C, r2, r2
	bnz9 .BB.LABEL.49_3
.BB.LABEL.49_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2360
	ori 0x00000011, r5, r5
	st.b r5, 0x00000000[r25]
.BB.LABEL.49_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2362
	cmp r5, r7
	bz9 .BB.LABEL.49_9
.BB.LABEL.49_4:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2364
	mov r7, r5
	add r5, r5
	mov #_DemDTCGeneralStatus, r6
	add r5, r6
	add 0x00000001, r6
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.49_6
.BB.LABEL.49_5:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2366
	st.b r0, 0x00000000[r6]
	br9 .BB.LABEL.49_8
.BB.LABEL.49_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2370
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2372
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2373
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2377
	mov r7, r6
	mul 0x00000014, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2378
	ld.hu 0x00000010[r5], r5
	add r5, r5
	ld.w 0x00000044[r2], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2383
	ld.hu 0x00000000[r6], r5
	mul 0x0000002C, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2372
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2383
	add r5, r2
	ld.bu 0x0000001C[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.49_8
.BB.LABEL.49_7:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2385
	add r7, r7
	mov #_DemDTCGeneralStatus, r2
	add r7, r2
	st.b r0, 0x00000001[r2]
.BB.LABEL.49_8:	; if_break_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2395
	andi 0x0000FFFF, r22, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
.BB.LABEL.49_9:	; if_break_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2397
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.49_11
.BB.LABEL.49_10:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2399
	mov r24, r6
	jarl _Dem_ClearEventRelateInformation, r31
.BB.LABEL.49_11:	; if_break_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2401
	ld.bu 0x00000000[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2403
	andi 0x0000009D, r2, r2
	st.b r2, 0x00000000[r25]
	add 0x00000001, r22
.BB.LABEL.49_12:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2336
	andi 0x0000FFFF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.49_1
.BB.LABEL.49_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2418
	dispose 0x00000000, 0x00000679, [r31]
_Dem_ClearOneDTC.1:
	.stack _Dem_ClearOneDTC.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2432
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2434
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2438
	mul 0x00000014, r7, r0
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2439
	ld.hu 0x00000010[r5], r5
	add r5, r5
	ld.w 0x00000044[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2444
	ld.hu 0x00000000[r2], r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2445
	mov r10, r6
	mov r20, r7
	jarl _Dem_Clear, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2451
	mulhi 0x0000000A, r20, r2
	mov #_DemMemDestInfo, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.50_2
.BB.LABEL.50_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2453
	mulh 0x0000000A, r20
	mov #_DemMemDestInfo, r2
	add r20, r2
	st.b r0, 0x00000009[r2]
.BB.LABEL.50_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2455
	dispose 0x00000000, 0x00000041, [r31]
_Dem_EventQueueProcess.1:
	.stack _Dem_EventQueueProcess.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2470
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2473
	mov #_DemEventQueue, r20
	ld.bu 0x000000E8[r20], r2
	br9 .BB.LABEL.51_13
.BB.LABEL.51_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2497
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2498
	mov r21, r6
	jarl _Dem_GetEventInfo, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2499
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r21, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2503
	ld.bu 0x00000020[r2], r23
	ld.bu 0x00000002[r22], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.51_10
.BB.LABEL.51_2:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000002[r22], r6
	movea 0x00000010, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.51_10
.BB.LABEL.51_3:	; bb47
	ld.bu 0x00000002[r22], r6
	mov 0x00000004, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.51_10
.BB.LABEL.51_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2508
	mov #_DemOperationCycleStatus, r6
	mov r23, r7
	jarl _DEM_BITS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.51_9
.BB.LABEL.51_5:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2522
	ld.hu 0x00000002[r20], r6
	ld.hu 0x00000000[r20], r2
	shl 0x00000010, r6
	or r2, r6
	jarl _Dem_DebounceProcess, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.51_8
.BB.LABEL.51_6:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.51_10
.BB.LABEL.51_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2525
	mov r21, r6
	jarl _Dem_EventTestPassed, r31
	br9 .BB.LABEL.51_10
.BB.LABEL.51_8:	; switch_clause_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2528
	mov r21, r6
	jarl _Dem_EventTestFailed, r31
	br9 .BB.LABEL.51_10
.BB.LABEL.51_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2555
	mov r21, r6
	jarl _Dem_EventQueueProcessWithDebounce, r31
.BB.LABEL.51_10:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2565
	st.h r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2566
	st.b r0, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2569
	movhi HIGHW1(#_DemEventQueue+0x000000E8), r0, r20
	ld.b LOWW(#_DemEventQueue+0x000000E8)[r20], r2
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2570
	andi 0x000000FF, r2, r20
	movea 0x00000039, r0, r5
	cmp r5, r20
	bnh9 .BB.LABEL.51_12
.BB.LABEL.51_11:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r2
.BB.LABEL.51_12:	; if_break_bb99
	mov #_DemEventQueue, r20
	st.b r2, 0x000000E8[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2574
	zxb r2
.BB.LABEL.51_13:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	shl 0x00000002, r2
	add r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2488
	ld.hu 0x00000000[r20], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.51_1
.BB.LABEL.51_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2576
	dispose 0x00000000, 0x00000079, [r31]
_Dem_OperationCycleCounterProcess.1:
	.stack _Dem_OperationCycleCounterProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2591
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2593
	ld.bu 0x00000004[r20], r6
	mov 0x00000002, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.52_3
.BB.LABEL.52_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2595
	ld.bu 0x00000007[r20], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.52_3
.BB.LABEL.52_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2597
	add 0x00000001, r2
	st.b r2, 0x00000007[r20]
.BB.LABEL.52_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2623
	dispose 0x00000000, 0x00000041, [r31]
_Dem_UpdateCombinedDtcStatus:
	.stack _Dem_UpdateCombinedDtcStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2637
	movhi HIGHW1(#_DemPbCfg+0x00000020), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2639
	ld.w LOWW(#_DemPbCfg+0x00000020)[r2], r2
	mul 0x0000002C, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2640
	ld.hu 0x00000010[r2], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.53_2
.BB.LABEL.53_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2650
	mov r2, r5
	add r5, r5
	mov #_DemDTCGeneralStatus, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2644
	mov #_DemPbCfg, r5
	ld.w 0x00000004[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2648
	mul 0x00000014, r2, r0
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2649
	ld.hu 0x00000010[r7], r2
	ld.w 0x00000044[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2650
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2649
	add r2, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2658
	ld.hu 0x00000000[r5], r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.b 0x00000004[r5], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2664
	mov r2, r5
	shr 0x00000001, r5
	movea 0xFFFFFFEF, r0, r7
	or r7, r5
	xori 0x00000010, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2665
	and r5, r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2667
	mov r2, r5
	shl 0x00000005, r5
	ori 0x000000BF, r5, r5
	xori 0x00000040, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2668
	and r5, r2
	st.b r2, 0x00000000[r6]
.BB.LABEL.53_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2670
	jmp [r31]
_Dem_OperationCycleStart.1:
	.stack _Dem_OperationCycleStart.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2684
	prepare 0x00000779, 0x00000000
	mov 0x00000000, r20
	mov r7, r21
	mov r6, r22
	jr .BB.LABEL.54_16
.BB.LABEL.54_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2692
	ld.w 0x00000020[r2], r23
	andi 0x0000FFFF, r20, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2693
	mov r24, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r25
	add r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2695
	mov r25, r6
	mov r22, r7
	jarl _Dem_EventHealingProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2714
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.54_6
.BB.LABEL.54_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2716
	mov r25, r6
	mov r22, r7
	jarl _Dem_EventAgingProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2717
	mov r24, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r26
	add r2, r26
	ld.bu 0x00000004[r26], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	add 0x00000004, r26
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.54_6
.BB.LABEL.54_3:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000000[r26], r6
	mov 0x00000004, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.54_6
.BB.LABEL.54_4:	; bb45
	ld.bu 0x00000000[r26], r6
	mov 0x00000002, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.54_6
.BB.LABEL.54_5:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2721
	clr1 0x00000002, 0x00000000[r26]
.BB.LABEL.54_6:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2724
	mov r24, r2
	mul 0x0000002C, r2, r0
	add r23, r2
	ld.bu 0x00000020[r2], r2
	cmp r2, r22
	bnz9 .BB.LABEL.54_13
.BB.LABEL.54_7:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2727
	mov r24, r2
	mul 0x0000002C, r2, r0
	add r23, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.54_9
.BB.LABEL.54_8:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2729
	jarl [r2], r31
.BB.LABEL.54_9:	; if_break_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2731
	mov r24, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	clr1 0x00000001, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2732
	clr1 0x00000000, 0x00000003[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2733
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.54_11
.BB.LABEL.54_10:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2736
	mov r25, r6
	jarl _Dem_OperationCycleCounterProcess.1, r31
.BB.LABEL.54_11:	; if_break_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2742
	mov r24, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.b 0x00000004[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2744
	ori 0x00000040, r2, r2
	andi 0x000000FD, r2, r2
	st.b r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2750
	andi 0x0000FFFF, r20, r6
	jarl _Dem_InterOperationCycleStart, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2751
	mul 0x0000002C, r24, r0
	add r24, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2752
	ld.hu 0x00000010[r23], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.54_13
.BB.LABEL.54_12:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2755
	mul 0x00000003, r2, r0
	mov #_FDCInfo, r5
	add r2, r5
	st.b r0, 0x00000002[r5]
.BB.LABEL.54_13:	; if_break_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2759
	andi 0x0000FFFF, r20, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2761
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.54_15
.BB.LABEL.54_14:	; if_then_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2763
	andi 0x0000FFFF, r20, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
.BB.LABEL.54_15:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r20
.BB.LABEL.54_16:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2690
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r5
	andi 0x0000FFFF, r20, r6
	cmp r5, r6
	bl17 .BB.LABEL.54_1
.BB.LABEL.54_17:	; bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2766
	movhi HIGHW1(#_Dem_AgingCycle.1), r0, r2
	ld.bu LOWW(#_Dem_AgingCycle.1)[r2], r2
	cmp r2, r22
	bnz9 .BB.LABEL.54_19
.BB.LABEL.54_18:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2768
	movhi HIGHW1(#_Dem_AgingCycle.1), r0, r2
	mov 0xFFFFFFFF, r5
	st.b r5, LOWW(#_Dem_AgingCycle.1)[r2]
.BB.LABEL.54_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2770
	dispose 0x00000000, 0x00000779, [r31]
_Dem_OperationCycleEnd.1:
	.stack _Dem_OperationCycleEnd.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2784
	prepare 0x00000079, 0x00000000
	mov 0x00000000, r20
	mov r6, r21
	br9 .BB.LABEL.55_8
.BB.LABEL.55_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2792
	andi 0x0000FFFF, r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2793
	mov r22, r5
	mul 0x0000000C, r5, r0
	mov #_DemEventRelateInformation, r23
	add r5, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2794
	mov r22, r5
	mul 0x0000002C, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2792
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2794
	add r5, r2
	ld.bu 0x00000020[r2], r2
	cmp r21, r2
	bnz9 .BB.LABEL.55_3
.BB.LABEL.55_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2798
	mov r23, r6
	jarl _Dem_OperationCycleCounterProcess.1, r31
.BB.LABEL.55_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2800
	mov r23, r6
	mov r21, r7
	jarl _Dem_EventAgingProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2801
	mul 0x0000000C, r22, r0
	mov #_DemEventRelateInformation, r23
	add r22, r23
	ld.bu 0x00000004[r23], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	add 0x00000004, r23
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.55_7
.BB.LABEL.55_4:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000000[r23], r6
	mov 0x00000004, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.55_7
.BB.LABEL.55_5:	; bb45
	ld.bu 0x00000000[r23], r6
	mov 0x00000002, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.55_7
.BB.LABEL.55_6:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2805
	clr1 0x00000002, 0x00000000[r23]
.BB.LABEL.55_7:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2808
	andi 0x0000FFFF, r20, r22
	mov r22, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2810
	mov r22, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
	add 0x00000001, r20
.BB.LABEL.55_8:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2790
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r5
	andi 0x0000FFFF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.55_1
.BB.LABEL.55_9:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2812
	movhi HIGHW1(#_Dem_AgingCycle.1), r0, r2
	ld.bu LOWW(#_Dem_AgingCycle.1)[r2], r2
	cmp r21, r2
	bnz9 .BB.LABEL.55_11
.BB.LABEL.55_10:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2814
	movhi HIGHW1(#_Dem_AgingCycle.1), r0, r2
	mov 0xFFFFFFFF, r5
	st.b r5, LOWW(#_Dem_AgingCycle.1)[r2]
.BB.LABEL.55_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2819
	dispose 0x00000000, 0x00000079, [r31]
_Dem_CopyInfoFromEntry.1:
	.stack _Dem_CopyInfoFromEntry.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2834
	ld.b 0x00000020[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2838
	st.b r2, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2839
	ld.b 0x00000021[r7], r2
	st.b r2, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2840
	ld.b 0x00000024[r7], r2
	st.b r2, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2841
	ld.b 0x00000022[r7], r2
	st.b r2, 0x00000009[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2842
	ld.b 0x00000023[r7], r2
	st.b r2, 0x00000007[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2862
	ld.b 0x00000025[r7], r2
	st.b r2, 0x0000000A[r6]
	jmp [r31]
_Dem_IntReadNvRAM.1:
	.stack _Dem_IntReadNvRAM.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2879
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2930
	movhi HIGHW1(#_DemNvRamBlockId), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2932
	ld.hu LOWW(#_DemNvRamBlockId)[r2], r6
	mov r3, r7
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2933
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.57_2
.BB.LABEL.57_1:	; entry.if_break_bb115_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.57_18
.BB.LABEL.57_2:	; entry.bb107_crit_edge
	mov 0x00000000, r20
	mov r20, r21
	br9 .BB.LABEL.57_15
.BB.LABEL.57_3:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2939
	andi 0x000000FF, r22, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.bu 0x00000005[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.57_8
.BB.LABEL.57_4:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2941
	andi 0x0000FFFF, r21, r20
	mul 0x0000002A, r20, r0
	mov #_DemEventMemoryEntryStorage, r2
	add r20, r2
	andi 0x000000FF, r22, r5
	shl 0x00000003, r5
	mov #_DemMemDestCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	add r20, r5
	movea 0x0000002A, r0, r7
	add r5, r7
	br9 .BB.LABEL.57_6
.BB.LABEL.57_5:	; if_then_bb28
	ld.h 0x00000000[r2], r8
	st.h r8, 0x00000000[r5]
	add 0x00000002, r2
	add 0x00000002, r5
.BB.LABEL.57_6:	; if_then_bb28
	cmp r5, r7
	bnz9 .BB.LABEL.57_5
.BB.LABEL.57_7:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2942
	ld.w 0x00000000[r6], r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2943
	ld.hu 0x00000028[r2], r20
	br9 .BB.LABEL.57_10
.BB.LABEL.57_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r22
.BB.LABEL.57_9:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2937
	andi 0x000000FF, r22, r0
	bz9 .BB.LABEL.57_3
.BB.LABEL.57_10:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2946
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.57_13
.BB.LABEL.57_11:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	andi 0x0000FFFF, r20, r5
	cmp r2, r5
	bh9 .BB.LABEL.57_13
.BB.LABEL.57_12:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2949
	andi 0x0000FFFF, r21, r2
	mul 0x0000002A, r2, r0
	mov #_DemEventMemoryEntryStorage, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2948
	zxh r20
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2949
	andi 0x0000FFFF, r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r6
	add r2, r6
	jarl _Dem_CopyInfoFromEntry.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2950
	zxb r22
	mul 0x0000000A, r22, r0
	mov #_DemMemDestInfo, r2
	add r22, r2
	ld.b 0x00000000[r2], r22
	add 0x00000001, r22
	st.b r22, 0x00000000[r2]
	br9 .BB.LABEL.57_14
.BB.LABEL.57_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2954
	andi 0x0000FFFF, r21, r22
	mul 0x0000002A, r22, r0
	mov #_DemEventMemoryEntryStorage, r2
	add r22, r2
	st.h r0, 0x00000028[r2]
.BB.LABEL.57_14:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r21
.BB.LABEL.57_15:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2935
	andi 0x0000FFFF, r21, r22
	movea 0x0000003A, r0, r2
	cmp r2, r22
	bh9 .BB.LABEL.57_17
.BB.LABEL.57_16:	; bb107.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.57_9
.BB.LABEL.57_17:	; bb107.if_break_bb115_crit_edge
	mov 0x00000000, r20
.BB.LABEL.57_18:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2963
	movhi HIGHW1(#_DemNvRamBlockId+0x00000002), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2964
	ld.hu LOWW(#_DemNvRamBlockId+0x00000002)[r2], r6
	mov r3, r7
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2965
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.57_23
.BB.LABEL.57_19:	; if_break_bb115.bb147_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.57_21
.BB.LABEL.57_20:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2969
	andi 0x0000FFFF, r21, r6
	mov #_DemEventRelateInformationStorage, r7
	mov r7, r2
	add r6, r2
	mov r6, r5
	mul 0x0000000C, r5, r0
	mov #_DemEventRelateInformation, r8
	add r5, r8
	ld.b 0x00000000[r2], r5
	st.b r5, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2975
	ld.b 0x0000003B[r2], r2
	st.b r2, 0x0000000A[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2977
	jarl _Dem_InterIntReadNvRAM, r31
	add 0x00000001, r21
.BB.LABEL.57_21:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2967
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	andi 0x0000FFFF, r21, r5
	cmp r2, r5
	bl9 .BB.LABEL.57_20
.BB.LABEL.57_22:	; bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2991
	mov #_DemEventRelateInformationStorage, r2
	ld.h 0x000000F0[r2], r5
	mov #_DemDTCByOccurrenceTimeInfo, r6
	st.h r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2992
	ld.h 0x000000EC[r2], r5
	st.h r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2993
	ld.h 0x000000F2[r2], r5
	st.h r5, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 2994
	ld.h 0x000000EE[r2], r2
	st.h r2, 0x00000002[r6]
	mov r20, r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.57_23:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3040
	dispose 0x00000004, 0x00000071, [r31]
_Dem_MemEntryDelete.1:
	.stack _Dem_MemEntryDelete.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3056
	prepare 0x00000061, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3058
	bz9 .BB.LABEL.58_8
.BB.LABEL.58_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3061
	mov r20, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3063
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3066
	ld.bu 0x00000004[r5], r5
	ld.bu 0x0000001F[r21], r6
	mov 0x00000000, r7
	br9 .BB.LABEL.58_5
.BB.LABEL.58_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3068
	andi 0x000000FF, r7, r8
	mul 0x0000002A, r8, r0
	add r2, r8
	ld.bu 0x0000001F[r8], r8
	cmp r8, r6
	bnc9 .BB.LABEL.58_4
.BB.LABEL.58_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3070
	andi 0x000000FF, r7, r8
	mul 0x0000002A, r8, r0
	add r2, r8
	ld.b 0x0000001F[r8], r9
	add 0xFFFFFFFF, r9
	st.b r9, 0x0000001F[r8]
.BB.LABEL.58_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r7
.BB.LABEL.58_5:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3066
	andi 0x000000FF, r7, r8
	cmp r5, r8
	bl9 .BB.LABEL.58_2
.BB.LABEL.58_6:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3073
	st.b r0, 0x0000001F[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3074
	mov r21, r6
	jarl _Dem_DeleteRelatedData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3075
	st.h r0, 0x00000028[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3076
	mulhi 0x0000000A, r20, r2
	mov #_DemMemDestInfo, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.58_8
.BB.LABEL.58_7:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3078
	mulh 0x0000000A, r20
	mov #_DemMemDestInfo, r2
	add r20, r2
	ld.b 0x00000000[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.58_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3081
	dispose 0x00000000, 0x00000061, [r31]
_Dem_GetEventPriority.1:
	.stack _Dem_GetEventPriority.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3096
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3099
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r5
	mul 0x0000002C, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3101
	ld.hu 0x00000010[r5], r5
	ori 0x0000FFFF, r0, r6
	cmp r6, r5
	bz9 .BB.LABEL.59_2
.BB.LABEL.59_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3103
	ld.w 0x00000004[r2], r6
	mul 0x00000014, r5, r0
	add r5, r6
	ld.hu 0x00000004[r6], r5
	mul 0x00000014, r5, r0
	ld.w 0x00000010[r2], r2
	add r5, r2
	ld.bu 0x00000004[r2], r10
	jmp [r31]
.BB.LABEL.59_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3106
	jmp [r31]
_Dem_CheckEntryAlreadyAllocated:
	.stack _Dem_CheckEntryAlreadyAllocated = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3122
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3128
	jarl _Dem_GetEventExternalId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3159
	mov r10, r6
	mov r20, r7
	jarl _Dem_MemEntryGet.1, r31
	st.w r10, 0x00000000[r21]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3162
	dispose 0x00000000, 0x00000061, [r31]
_Dem_DeleteDisplacementEntry.1:
	.stack _Dem_DeleteDisplacementEntry.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3177
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3181
	ld.hu 0x00000028[r20], r6
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3185
	mov r22, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3205
	ld.bu 0x00000004[r10], r2
	andi 0x000000F3, r2, r2
	st.b r2, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3211
	mov r22, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3222
	mov r22, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3223
	mov r20, r6
	mov r21, r7
	jarl _Dem_MemEntryDelete.1, r31
	dispose 0x00000000, 0x00000071, [r31]
_Dem_EventDisplacementProcess:
	.stack _Dem_EventDisplacementProcess = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3239
	prepare 0x00000FFF, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3244
	mov r20, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3254
	ld.bu 0x00000004[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3244
	st.w r2, 0x00000000[r3]
	ld.w 0x00000000[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3246
	jarl _Dem_GetEventPriority.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3247
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r22
	mov 0x00000000, r23
	mov r23, r24
	mov r23, r25
	mov r10, r26
	mov r23, r27
	br9 .BB.LABEL.62_22
.BB.LABEL.62_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3257
	ld.hu 0x00000028[r21], r6
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3258
	mov r28, r6
	jarl _Dem_GetEventPriority.1, r31
	mov r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3259
	mov r28, r2
	mul 0x0000002C, r2, r0
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3261
	ld.hu 0x00000010[r2], r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3260
	mov r28, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3261
	cmp 0x00000000, r27
	mov r10, r28
	bz9 .BB.LABEL.62_3
.BB.LABEL.62_2:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.hu 0x00000028[r27], r6
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r6
	jarl _Dem_GetEventPriority.1, r31
	mov r10, r26
.BB.LABEL.62_3:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3265
	mulhi 0x0000000A, r20, r2
	mov #_DemMemDestInfo, r6
	add r2, r6
	add 0x00000001, r6
	mov r30, r7
	jarl _DEM_BITS_ISSET.1, r31
	andi 0x000000FF, r26, r2
	cmp r29, r2
	bh9 .BB.LABEL.62_21
.BB.LABEL.62_4:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.62_21
.BB.LABEL.62_5:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3299
	ld.bu 0x00000002[r28], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.62_10
.BB.LABEL.62_6:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3301
	andi 0x000000FF, r24, r0
	bnz9 .BB.LABEL.62_8
.BB.LABEL.62_7:	; if_then_bb91.if_break_bb114_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r24
	br9 .BB.LABEL.62_9
.BB.LABEL.62_8:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3310
	ld.bu 0x0000001F[r27], r2
	ld.bu 0x0000001F[r21], r5
	cmp r5, r2
	bnh9 .BB.LABEL.62_10
.BB.LABEL.62_9:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r21, r27
.BB.LABEL.62_10:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3317
	andi 0x000000FF, r24, r0
	bnz9 .BB.LABEL.62_21
.BB.LABEL.62_11:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3320
	andi 0x000000FF, r26, r2
	cmp r29, r2
	bnc9 .BB.LABEL.62_15
.BB.LABEL.62_12:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3323
	andi 0x000000FF, r23, r0
	bnz9 .BB.LABEL.62_14
.BB.LABEL.62_13:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r23
	mov r21, r27
.BB.LABEL.62_14:	; if_break_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3329
	ld.bu 0x0000001F[r27], r28
	ld.bu 0x0000001F[r21], r29
	cmp r29, r28
	bh9 .BB.LABEL.62_20
	br9 .BB.LABEL.62_21
.BB.LABEL.62_15:	; if_else_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3334
	andi 0x000000FF, r26, r2
	cmp r29, r2
	bnz9 .BB.LABEL.62_21
.BB.LABEL.62_16:	; if_else_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	andi 0x000000FF, r23, r0
	bnz9 .BB.LABEL.62_21
.BB.LABEL.62_17:	; bb164
	ld.bu 0x00000004[r28], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.62_21
.BB.LABEL.62_18:	; bb179
	cmp 0x00000000, r27
	bz9 .BB.LABEL.62_20
.BB.LABEL.62_19:	; bb183
	ld.bu 0x0000001F[r27], r2
	ld.bu 0x0000001F[r21], r5
	cmp r5, r2
	bnh9 .BB.LABEL.62_21
.BB.LABEL.62_20:	; if_then_bb209
	mov r21, r27
.BB.LABEL.62_21:	; if_break_bb219
	add 0x00000001, r25
	movea 0x0000002A, r21, r21
.BB.LABEL.62_22:	; bb222
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3254
	andi 0x000000FF, r25, r2
	ld.w 0x00000000[r3], r5
	cmp r5, r2
	bl9 .BB.LABEL.62_1
.BB.LABEL.62_23:	; bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3357
	cmp 0x00000000, r27
	bz9 .BB.LABEL.62_26
.BB.LABEL.62_24:	; bb234
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.hu 0x00000028[r27], r6
	jarl _Dem_GetEventInternalId.1, r31
	mul 0x0000002C, r10, r0
	add r10, r22
	ld.hu 0x00000010[r22], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.62_26
.BB.LABEL.62_25:	; if_then_bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3360
	mov r27, r6
	mov r20, r7
	jarl _Dem_DeleteDisplacementEntry.1, r31
.BB.LABEL.62_26:	; if_break_bb258
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r27, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3363
	dispose 0x00000004, 0x00000FFF, [r31]
_Dem_EventAgingProcess.1:
	.stack _Dem_EventAgingProcess.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3379
	prepare 0x00000FFF, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3384
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r22
	ld.hu 0x00000000[r20], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3385
	jarl _Dem_GetMemDestMaxNumOfDtc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3387
	mov r23, r2
	mul 0x0000002C, r2, r0
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3390
	ld.hu 0x00000010[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3389
	movhi HIGHW1(#_Dem_Pending), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Dem_Pending)[r2]
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3390
	cmp r2, r24
	mov r10, r25
	bnz9 .BB.LABEL.63_2
.BB.LABEL.63_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.63_3
.BB.LABEL.63_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3392
	movhi HIGHW1(#_DemPbCfgPtr), r0, r26
	ld.w LOWW(#_DemPbCfgPtr)[r26], r26
	ld.w 0x00000004[r26], r2
	mov r24, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.hu 0x00000004[r2], r2
	mul 0x00000014, r2, r0
	ld.w 0x00000010[r26], r26
	add r2, r26
.BB.LABEL.63_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3394
	ld.bu 0x00000004[r20], r6
	mov 0x00000002, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.63_29
.BB.LABEL.63_4:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3396
	ld.bu 0x00000004[r20], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r26
	bz17 .BB.LABEL.63_30
.BB.LABEL.63_5:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.63_30
.BB.LABEL.63_6:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3400
	mul 0x0000002C, r23, r0
	add r23, r22
	ld.bu 0x00000020[r22], r22
	mov 0x00000000, r23
	jr .BB.LABEL.63_28
.BB.LABEL.63_7:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3403
	andi 0x000000FF, r23, r27
	add r26, r27
	ld.bu 0x0000000E[r27], r2
	add 0x0000000E, r27
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.63_9
.BB.LABEL.63_8:	; bb76.if_break_bb97_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.63_10
.BB.LABEL.63_9:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3405
	ld.hu 0x00000000[r20], r6
	jarl _Dem_GetEventExternalId.1, r31
	ld.bu 0x00000000[r27], r7
	mov r10, r6
	jarl _Dem_MemEntryGet.1, r31
.BB.LABEL.63_10:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r10, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3411
	cmp 0x00000000, r28
	bz17 .BB.LABEL.63_27
.BB.LABEL.63_11:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3413
	ld.bu 0x00000001[r26], r2
	cmp r21, r2
	bz9 .BB.LABEL.63_16
.BB.LABEL.63_12:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_Dem_AgingCycle.1), r0, r2
	ld.bu LOWW(#_Dem_AgingCycle.1)[r2], r2
	cmp r21, r2
	bz9 .BB.LABEL.63_16
.BB.LABEL.63_13:	; bb125
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000034[r2], r2
	mulhi 0x00000003, r22, r5
	add r5, r2
	ld.bu 0x00000002[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.63_27
.BB.LABEL.63_14:	; bb137
	mov #_DemOperationCycleStatus, r6
	mov r22, r7
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_27
.BB.LABEL.63_15:	; bb151
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000034[r2], r2
	mov r21, r5
	mul 0x00000003, r5, r0
	add r5, r2
	ld.bu 0x00000002[r2], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.63_27
.BB.LABEL.63_16:	; bb177
	ld.bu 0x00000000[r26], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.63_27
.BB.LABEL.63_17:	; bb191
	ld.bu 0x00000004[r20], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.63_27
.BB.LABEL.63_18:	; if_then_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3426
	ld.bu 0x00000004[r20], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.63_27
.BB.LABEL.63_19:	; if_then_bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3429
	ld.b 0x00000008[r20], r2
	add 0x00000001, r2
	st.b r2, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3448
	zxb r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3436
	ld.bu 0x00000002[r26], r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3448
	cmp r2, r29
	bh9 .BB.LABEL.63_24
.BB.LABEL.63_20:	; if_then_bb235
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3452
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3456
	mov r24, r6
	mul 0x00000014, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3457
	ld.hu 0x00000010[r5], r5
	add r5, r5
	ld.w 0x00000044[r2], r30
	add r5, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3459
	ld.bu 0x0000000A[r20], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.63_23
.BB.LABEL.63_21:	; bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000004[r20], r6
	mov 0x00000008, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_23
.BB.LABEL.63_22:	; if_then_bb273
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3462
	ld.b 0x0000000A[r20], r2
	add 0x00000001, r2
	st.b r2, 0x0000000A[r20]
.BB.LABEL.63_23:	; if_break_bb278
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3469
	ld.hu 0x00000000[r30], r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	clr1 0x00000003, 0x00000004[r5]
.BB.LABEL.63_24:	; if_break_bb288
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3484
	ld.bu 0x00000008[r20], r2
	cmp r2, r29
	bh9 .BB.LABEL.63_27
.BB.LABEL.63_25:	; if_then_bb298
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3486
	ld.bu 0x00000000[r27], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.63_27
.BB.LABEL.63_26:	; if_then_bb308
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3489
	ld.bu 0x00000000[r27], r7
	mov r28, r6
	jarl _Dem_MemEntryDelete.1, r31
.BB.LABEL.63_27:	; if_break_bb319
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r23
.BB.LABEL.63_28:	; bb322
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3401
	andi 0x000000FF, r23, r2
	cmp r25, r2
	bl17 .BB.LABEL.63_7
	br9 .BB.LABEL.63_30
.BB.LABEL.63_29:	; if_else_bb332
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3507
	st.b r0, 0x00000009[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3508
	st.b r0, 0x00000008[r20]
.BB.LABEL.63_30:	; if_break_bb337
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3510
	movhi HIGHW1(#_Dem_Pending), r0, r2
	st.b r0, LOWW(#_Dem_Pending)[r2]
	dispose 0x00000000, 0x00000FFF, [r31]
_Dem_EventHealingProcess.1:
	.stack _Dem_EventHealingProcess.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3526
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3528
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3529
	ld.bu 0x00000004[r20], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3528
	ld.hu 0x00000000[r20], r23
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3529
	jarl _DEM_FLAGS_ISSET.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3528
	mov r23, r24
	mul 0x0000002C, r24, r0
	add r22, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3529
	cmp 0x00000000, r24
	bz9 .BB.LABEL.64_10
.BB.LABEL.64_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.64_10
.BB.LABEL.64_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3531
	ld.bu 0x00000004[r20], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.64_11
.BB.LABEL.64_3:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3534
	st.b r0, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3535
	mul 0x0000002C, r23, r0
	add r23, r22
	ld.bu 0x00000020[r22], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3536
	cmp r21, r7
	bz9 .BB.LABEL.64_7
.BB.LABEL.64_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000034[r2], r2
	mulhi 0x00000003, r7, r5
	add r5, r2
	ld.bu 0x00000002[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.64_11
.BB.LABEL.64_5:	; bb60
	mov #_DemOperationCycleStatus, r6
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.64_11
.BB.LABEL.64_6:	; bb74
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000034[r2], r2
	mulh 0x00000003, r21
	add r21, r2
	ld.bu 0x00000002[r2], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.64_11
.BB.LABEL.64_7:	; bb100
	ld.bu 0x00000004[r20], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.64_11
.BB.LABEL.64_8:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3542
	ld.b 0x00000009[r20], r2
	add 0x00000001, r2
	st.b r2, 0x00000009[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3544
	mov r20, r6
	mov r24, r7
	jarl _Dem_CheckWIROff, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.64_11
.BB.LABEL.64_9:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3547
	clr1 0x00000007, 0x00000004[r20]
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.64_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3555
	st.b r0, 0x00000009[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3556
	st.b r0, 0x00000008[r20]
.BB.LABEL.64_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3558
	dispose 0x00000000, 0x00000479, [r31]
_Dem_ClearDTCProcess:
	.stack _Dem_ClearDTCProcess = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3576
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3579
	movhi HIGHW1(#_DemClearDTCInfo+0x00000006), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3582
	ld.bu LOWW(#_DemClearDTCInfo+0x00000006)[r2], r6
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.65_6
.BB.LABEL.65_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3584
	movhi HIGHW1(#_DemClearDTCInfo+0x00000004), r0, r2
	ld.bu LOWW(#_DemClearDTCInfo+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.65_3
.BB.LABEL.65_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3586
	jarl _Dem_ClearAllDTC, r31
	br9 .BB.LABEL.65_5
.BB.LABEL.65_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3600
	movhi HIGHW1(#_DemClearDTCInfo), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3601
	ld.hu LOWW(#_DemClearDTCInfo)[r2], r7
	ori 0x0000FFFF, r0, r2
	cmp r2, r7
	bz9 .BB.LABEL.65_5
.BB.LABEL.65_4:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3603
	jarl _Dem_ClearOneDTC.1, r31
.BB.LABEL.65_5:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3608
	movhi HIGHW1(#_Dem_Pending), r0, r2
	st.b r0, LOWW(#_Dem_Pending)[r2]
.BB.LABEL.65_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3622
	dispose 0x00000000, 0x00000001, [r31]
_Dem_GetDTCIndex:
	.stack _Dem_GetDTCIndex = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3636
	mov #_DemPbCfg, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3641
	ld.w 0x0000002C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3640
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3643
	cmp 0x00000000, r7
	bz9 .BB.LABEL.66_4
.BB.LABEL.66_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0xFFFFFFFF, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.66_5
.BB.LABEL.66_2:	; entry
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.66_17
.BB.LABEL.66_3:	; entry.bb112_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.66_16
.BB.LABEL.66_4:	; entry.bb69_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.66_12
.BB.LABEL.66_5:	; entry.bb26_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.66_8
.BB.LABEL.66_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3648
	andi 0x0000FFFF, r10, r5
	mul 0x00000014, r5, r0
	add r2, r5
	ld.w 0x00000000[r5], r5
	cmp r5, r6
	bz9 .BB.LABEL.66_18
.BB.LABEL.66_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r10
.BB.LABEL.66_8:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3646
	andi 0x0000FFFF, r10, r5
	movea 0x0000003B, r0, r7
	cmp r7, r5
	bl9 .BB.LABEL.66_6
	br9 .BB.LABEL.66_17
.BB.LABEL.66_9:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3659
	ld.hu 0x00000006[r2], r7
	ori 0x0000FFFF, r0, r8
	cmp r8, r7
	bz9 .BB.LABEL.66_11
.BB.LABEL.66_10:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mul 0x0000000C, r7, r0
	add r5, r7
	ld.hu 0x00000002[r7], r7
	cmp r6, r7
	bz9 .BB.LABEL.66_18
.BB.LABEL.66_11:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3664
	add 0x00000001, r10
	movea 0x00000014, r2, r2
.BB.LABEL.66_12:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3656
	andi 0x0000FFFF, r10, r7
	movea 0x0000003B, r0, r8
	cmp r8, r7
	bl9 .BB.LABEL.66_9
	br9 .BB.LABEL.66_17
.BB.LABEL.66_13:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3671
	ld.hu 0x00000006[r2], r7
	ori 0x0000FFFF, r0, r8
	cmp r8, r7
	bz9 .BB.LABEL.66_15
.BB.LABEL.66_14:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mul 0x0000000C, r7, r0
	add r5, r7
	ld.w 0x00000004[r7], r7
	cmp r7, r6
	bz9 .BB.LABEL.66_18
.BB.LABEL.66_15:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3676
	add 0x00000001, r10
	movea 0x00000014, r2, r2
.BB.LABEL.66_16:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3668
	andi 0x0000FFFF, r10, r7
	movea 0x0000003B, r0, r8
	cmp r8, r7
	bl9 .BB.LABEL.66_13
.BB.LABEL.66_17:	; entry.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ori 0x0000FFFF, r0, r10
.BB.LABEL.66_18:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3684
	zxh r10
	jmp [r31]
_Dem_Clear:
	.stack _Dem_Clear = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3699
	prepare 0x00000FFF, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3701
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3705
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r20
	ld.hu 0x00000000[r6], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3706
	mov r21, r2
	mul 0x0000002C, r2, r0
	add r20, r2
	ld.w 0x00000000[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3723
	cmp 0x00000000, r5
	ld.bu 0x0000001A[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3707
	ld.w 0x00000008[r2], r23
	mov r7, r24
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3723
	bz9 .BB.LABEL.67_2
.BB.LABEL.67_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3725
	jarl [r5], r31
.BB.LABEL.67_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3728
	cmp 0x00000000, r23
	bz9 .BB.LABEL.67_10
.BB.LABEL.67_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.w 0x00000000[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.67_10
.BB.LABEL.67_4:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3730
	ld.w 0x00000000[r23], r2
	movea 0x00000003, r3, r6
	jarl [r2], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.67_10
.BB.LABEL.67_5:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3732
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.67_7
.BB.LABEL.67_6:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000050, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3736
	st.b r23, 0x00000004[r25]
	br9 .BB.LABEL.67_11
.BB.LABEL.67_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3742
	ld.bu 0x00000004[r23], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.67_9
.BB.LABEL.67_8:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3744
	ld.b 0x00000004[r25], r20
	ori 0x00000050, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3745
	andi 0x000000DD, r20, r20
	st.b r20, 0x00000004[r25]
.BB.LABEL.67_9:	; return.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r21, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	mov r21, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3840
	dispose 0x00000004, 0x00000FFF, [r31]
.BB.LABEL.67_10:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	movea 0x00000050, r0, r2
	st.b r2, 0x00000004[r25]
.BB.LABEL.67_11:	; if_else_bb112
	mov r21, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	mov r21, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3787
	mov r21, r2
	mul 0x0000002C, r2, r0
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3793
	ld.hu 0x00000010[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3792
	mov r21, r6
	jarl _Dem_DebounceReset, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3793
	cmp r2, r23
	bz9 .BB.LABEL.67_13
.BB.LABEL.67_12:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3795
	mul 0x00000003, r23, r0
	mov #_FDCInfo, r2
	add r23, r2
	st.b r0, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3796
	st.b r0, 0x00000002[r2]
.BB.LABEL.67_13:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3799
	mov r21, r6
	jarl _Dem_ClearDTRInfoByEventId, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3801
	st.b r2, 0x00000003[r3]
	mov 0x00000000, r23
	br9 .BB.LABEL.67_28
.BB.LABEL.67_14:	; bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3804
	mov r21, r2
	mul 0x0000002C, r2, r0
	add r20, r2
	ld.hu 0x00000018[r2], r2
	andi 0x000000FF, r23, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3805
	shl 0x00000002, r2
	mov #_DemIndicatorAttribute, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3806
	ld.bu 0x00000002[r5], r26
	mov 0x00000000, r27
	br9 .BB.LABEL.67_23
.BB.LABEL.67_15:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3810
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3808
	andi 0x0000FFFF, r27, r29
	mov 0x00000000, r30
	br9 .BB.LABEL.67_20
.BB.LABEL.67_16:	; bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3813
	mov r29, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.bu 0x00000004[r5], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.67_19
.BB.LABEL.67_17:	; bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r29, r2
	mul 0x0000002C, r2, r0
	add r28, r2
	ld.hu 0x00000018[r2], r2
	andi 0x000000FF, r30, r5
	add r5, r2
	shl 0x00000002, r2
	mov #_DemIndicatorAttribute, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	cmp r2, r26
	bnz9 .BB.LABEL.67_19
.BB.LABEL.67_18:	; if_then_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3817
	st.b r0, 0x00000003[r3]
.BB.LABEL.67_19:	; if_break_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r30
.BB.LABEL.67_20:	; bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3811
	mov r29, r2
	mul 0x0000002C, r2, r0
	add r28, r2
	ld.bu 0x0000001A[r2], r2
	andi 0x000000FF, r30, r5
	cmp r2, r5
	bnc9 .BB.LABEL.67_22
.BB.LABEL.67_21:	; bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.67_16
.BB.LABEL.67_22:	; bb230
	add 0x00000001, r27
.BB.LABEL.67_23:	; bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3806
	andi 0x0000FFFF, r27, r2
	movea 0x0000003A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.67_25
.BB.LABEL.67_24:	; bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.67_15
.BB.LABEL.67_25:	; bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3821
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.67_27
.BB.LABEL.67_26:	; if_then_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3823
	mov #_DemWIRStatus, r2
	add r26, r2
	st.b r0, 0x00000000[r2]
.BB.LABEL.67_27:	; if_break_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	add 0x00000001, r23
.BB.LABEL.67_28:	; bb264
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3802
	andi 0x000000FF, r23, r2
	cmp r22, r2
	bnc9 .BB.LABEL.67_30
.BB.LABEL.67_29:	; bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.67_14
.BB.LABEL.67_30:	; bb284
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3828
	mov r21, r6
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	mov r24, r7
	jarl _Dem_MemEntryGet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3829
	cmp 0x00000000, r10
	bz9 .BB.LABEL.67_32
.BB.LABEL.67_31:	; if_then_bb293
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3831
	mov r10, r6
	mov r24, r7
	jarl _Dem_MemEntryDelete.1, r31
.BB.LABEL.67_32:	; if_break_bb296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3837
	st.b r0, 0x0000000A[r25]
	dispose 0x00000004, 0x00000FFF, [r31]
_Dem_EventQueueAdd:
	.stack _Dem_EventQueueAdd = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3884
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3887
	jarl _SchM_Enter_Dem_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3889
	mov #_DemEventQueue, r22
	ld.bu 0x000000E9[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3891
	mov r23, r2
	shl 0x00000002, r2
	add r2, r22
	ld.hu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.68_2
.BB.LABEL.68_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3893
	addi 0x00000001, r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3894
	andi 0x000000FF, r2, r5
	movea 0x00000039, r0, r6
	cmp r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3896
	cmov 0x0000000B, 0x00000000, r2, r2
	mov #_DemEventQueue, r24
	st.b r2, 0x000000E9[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3898
	jarl _SchM_Exit_Dem_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3899
	shl 0x00000002, r23
	add r23, r24
	st.b r21, 0x00000002[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3900
	st.h r20, 0x00000000[r22]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3901
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.68_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3905
	jarl _SchM_Exit_Dem_ExclusiveArea, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000479, [r31]
_Dem_GetEventInfo:
	.stack _Dem_GetEventInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3923
	mul 0x0000000C, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3925
	mov #_DemEventRelateInformation, r10
	add r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3926
	jmp [r31]
_Dem_CheckEventMemEntryExistsAlready:
	.stack _Dem_CheckEventMemEntryExistsAlready = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3941
	prepare 0x00000779, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3946
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r20, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3950
	ld.hu 0x00000010[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3948
	jarl _Dem_GetMemDestMaxNumOfDtc, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3950
	cmp r2, r21
	mov r10, r22
	bnz9 .BB.LABEL.70_2
.BB.LABEL.70_1:	; entry.if_break_bb71_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.70_8
.BB.LABEL.70_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3952
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	mul 0x00000014, r21, r0
	add r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3954
	ld.hu 0x00000004[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3952
	ld.w 0x00000010[r2], r24
	mov 0x00000000, r21
	mov r21, r25
	br9 .BB.LABEL.70_7
.BB.LABEL.70_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3956
	mov r23, r26
	mul 0x00000014, r26, r0
	andi 0x000000FF, r25, r2
	add r2, r26
	add r24, r26
	ld.bu 0x0000000E[r26], r2
	add 0x0000000E, r26
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.70_6
.BB.LABEL.70_4:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3958
	mov r20, r6
	jarl _Dem_GetEventExternalId.1, r31
	ld.bu 0x00000000[r26], r7
	mov r10, r6
	jarl _Dem_MemEntryGet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3959
	cmp 0x00000000, r10
	bz9 .BB.LABEL.70_6
.BB.LABEL.70_5:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r10, r21
.BB.LABEL.70_6:	; if_break_bb59
	add 0x00000001, r25
.BB.LABEL.70_7:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3954
	andi 0x000000FF, r25, r2
	cmp r22, r2
	bl9 .BB.LABEL.70_3
.BB.LABEL.70_8:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3967
	dispose 0x00000000, 0x00000779, [r31]
_Dem_SetOccurrenceEvent:
	.stack _Dem_SetOccurrenceEvent = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3981
	cmp 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3983
	bz9 .BB.LABEL.71_5
.BB.LABEL.71_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.71_8
.BB.LABEL.71_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3986
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo), r0, r2
	ld.hu LOWW(#_DemDTCByOccurrenceTimeInfo)[r2], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bnz9 .BB.LABEL.71_4
.BB.LABEL.71_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3988
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo), r0, r2
	st.h r6, LOWW(#_DemDTCByOccurrenceTimeInfo)[r2]
.BB.LABEL.71_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3990
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo+0x00000002), r0, r2
	st.h r6, LOWW(#_DemDTCByOccurrenceTimeInfo+0x00000002)[r2]
	jmp [r31]
.BB.LABEL.71_5:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3993
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo+0x00000004), r0, r2
	ld.hu LOWW(#_DemDTCByOccurrenceTimeInfo+0x00000004)[r2], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bnz9 .BB.LABEL.71_7
.BB.LABEL.71_6:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3995
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo+0x00000004), r0, r2
	st.h r6, LOWW(#_DemDTCByOccurrenceTimeInfo+0x00000004)[r2]
.BB.LABEL.71_7:	; if_break_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 3997
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo+0x00000006), r0, r2
	st.h r6, LOWW(#_DemDTCByOccurrenceTimeInfo+0x00000006)[r2]
.BB.LABEL.71_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem.c", 4003
	jmp [r31]
	.section .data, data
	.align 4
_DemPbCfgPtr:
	.ds (4)
_Dem_Pending:
	.ds (1)
	.align 4
_Dem_ClearNonvolatileStatus:
	.dw 0x00000002
	.align 4
_Dem_ClearDTCLock:
	.dw 0x00000001
	.align 4
_Dem_InitState:
	.ds (4)
_Dem_AgingCycle.1:
	.db 0xFF
_Dem_ClearCnt.2:
	.ds (1)
	.section .bss, bss
	.align 4
_DemClearDTCInfo:
	.ds (20)
_DemMemDestInfo:
	.ds (10)
	.align 2
_DemEventMemoryEntryStorage:
	.ds (2478)
	.align 2
_DemEventRelateInformationStorage:
	.ds (244)
