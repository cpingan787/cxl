#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Dem\Dem_Dcm.c -oDefaultBuild\Dem_Dcm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_4083ac52fb82486c9b29da7f6267e919jkam2hsw.fj3
#@	compiled at Fri Mar 27 09:50:22 2026

	.file "..\..\Bsw\SystemServices\Dem\Dem_Dcm.c"

	$reg_mode 32
	.dbl_size 8

	.extern _DemMemDestCfg
	.extern _DemNvRamBlockId
	.extern _DemOperationCycleStatus
	.extern _DemPbCfg
	.extern _DemPbCfgPtr
	.extern _Dem_Pending
	.extern _Dem_InitState
	.extern _FDCInfo
	.extern _DemClearDTCInfo
	.extern _DemMemDestInfo
	.extern _DemEventRelateInformation
	.extern _DemDTCGeneralStatus
	.extern _Dem_ClearDTCLock
	.extern _Dem_ClearNonvolatileStatus
	.extern _DemEventMemoryEntryStorage
	.extern _DemEventRelateInformationStorage
	.public _DemDTCFilterInfo, 374
	.public _DemDTCSettingInfo, 2
	.public _DemDTCByOccurrenceTimeInfo, 8
	.public _DemFreezeFrameRecordFilterInfo, 8
	.public _Dem_DTCStatusChangedInd, 1
	.extern _Det_ReportError
	.public _Dem_DcmGetTranslationType
	.public _Dem_DcmGetDTCStatusAvailabilityMask
	.public _Dem_DcmGetStatusOfDTC
	.extern _Dem_GetDTCIndex
	.public _Dem_DcmGetSeverityOfDTC
	.public _Dem_DcmGetFunctionalUnitOfDTC
	.public _Dem_DcmSetDTCFilter
	.public _Dem_DcmGetNumberOfFilteredDTC
	.extern _Dem_GetEventInfo
	.public _Dem_DcmGetNextFilteredDTC
	.public _Dem_DcmGetNextFilteredDTCAndFDC
	.public _Dem_DcmGetNextFilteredDTCAndSeverity
	.public _Dem_DcmSetFreezeFrameRecordFilter
	.extern _Dem_InterDcmSetFreezeFrameRecordFilter
	.public _Dem_DcmGetNextFilteredRecord
	.extern _Dem_InterDcmGetNextFilteredRecord
	.public _Dem_DcmGetDTCByOccurrenceTime
	.public _Dem_DcmControlDTCStatusChangedNotification
	.public _Dem_DcmDisableDTCRecordUpdate
	.public _Dem_DcmEnableDTCRecordUpdate
	.public _Dem_DcmGetFreezeFrameDataByDTC
	.extern _Dem_InterDcmGetFreezeFrameDataByDTC
	.public _Dem_DcmGetSizeOfFreezeFrameByDTC
	.extern _Dem_InterDcmGetSizeOfFreezeFrameByDTC
	.public _Dem_DcmGetExtendedDataRecordByDTC
	.extern _Dem_GetExtendedDataRecordCfg
	.extern _Dem_GetExtendedRecordDataLoop
	.public _Dem_DcmGetSizeOfExtendedDataRecordByDTC
	.extern _Dem_InterDcmGetSizeOfExtendedDataRecordByDTC
	.public _Dem_DcmCheckClearParameter
	.public _Dem_DcmClearDTC
	.extern _Dem_ClearDTRInfoByEventId
	.public _Dem_DcmDisableDTCSetting
	.extern _Dem_InterDcmDisableDTCSetting
	.public _Dem_DcmEnableDTCSetting
	.extern _Dem_InterDcmEnableDTCSetting
	.public _Dem_DcmGetDTCSeverityAvailabilityMask
	.public _Dem_SetDTCSettingProcess
	.public _Dem_GetEventDTC
	.extern _Dem_DebounceFreeze
	.extern _Dem_ClearDTCProcess
	.public _Dem_EventTestFailed
	.extern _Dem_SetOccurrenceEvent
	.extern _Dem_EventTestFailedProcessOfComponent
	.extern _Dem_EventDataStorageTrigger
	.extern _Dem_CheckEventMemEntryExistsAlready
	.extern _Dem_CheckWIROn
	.extern _Dem_UpdateCombinedDtcStatus
	.extern _Dem_ResponseOnDtcStatusChange
	.public _Dem_EventTestPassed
	.extern _Dem_InterEventTestPassed
	.public _Dem_MemEntryAllocate
	.extern _Dem_CheckEntryAlreadyAllocated
	.extern _Dem_EventDisplacementProcess
	.extern _Dem_CallDataChangedOfMemEntryAllocate
	.public _Dem_IntWriteNvRAM
	.extern _NvM_CancelJobs
	.extern _NvM_WriteBlock

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0x00000001, r10
.BB.LABEL.1_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.h", 382
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_4:	; bb17.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
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
	br9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 276
	mov r6, r5
	add r2, r5
	st.b r7, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.9_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 274
	cmp r8, r2
	bl9 .BB.LABEL.9_1
.BB.LABEL.9_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 278
	jmp [r31]
_Dem_EventDTCAttributesCfg.1:
	.stack _Dem_EventDTCAttributesCfg.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 313
	movhi HIGHW1(#_DemPbCfg+0x00000020), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 319
	ld.w LOWW(#_DemPbCfg+0x00000020)[r2], r2
	mul 0x0000002C, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 320
	ld.hu 0x00000010[r2], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 323
	mov #_DemPbCfg, r5
	ld.w 0x00000004[r5], r6
	mul 0x00000014, r2, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 324
	ld.hu 0x00000004[r6], r2
	mul 0x00000014, r2, r0
	ld.w 0x00000010[r5], r10
	add r2, r10
	jmp [r31]
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 327
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0x00000001, r2
.BB.LABEL.13_4:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 599
	andi 0x000000FF, r2, r7
	cmp r5, r7
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 608
	jmp [r31]
_Dem_DcmGetTranslationType:
	.stack _Dem_DcmGetTranslationType = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 118
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 120
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	movea 0x0000003C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 122
	jarl _DEM_DET_REPORT.1, r31
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 125
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmGetDTCStatusAvailabilityMask:
	.stack _Dem_DcmGetDTCStatusAvailabilityMask = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 142
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 146
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.15_2:	; if_then_bb
	movea 0x00000016, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 160
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 150
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.15_2
.BB.LABEL.15_5:	; if_else_bb10
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 156
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 157
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmGetStatusOfDTC:
	.stack _Dem_DcmGetStatusOfDTC = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 181
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 187
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.16_2:	; if_then_bb
	movea 0x00000015, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 222
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 191
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.16_2
.BB.LABEL.16_5:	; if_else_bb14
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 198
	jarl _Dem_GetDTCIndex, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 199
	cmp r2, r10
	mov r10, r22
	bnz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_else_bb14.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.16_10
.BB.LABEL.16_7:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 203
	mov r22, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.16_6
.BB.LABEL.16_8:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 209
	mov r21, r6
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 210
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.16_11
.BB.LABEL.16_9:	; if_else_bb34.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
.BB.LABEL.16_10:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 222
	zxb r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.16_11:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 216
	add r22, r22
	mov #_DemDTCGeneralStatus, r2
	add r22, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 217
	dispose 0x00000000, 0x00000071, [r31]
_Dem_DcmGetSeverityOfDTC:
	.stack _Dem_DcmGetSeverityOfDTC = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 239
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 243
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.17_2:	; if_then_bb
	mov 0x0000000E, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 262
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.17_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 247
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.17_2
.BB.LABEL.17_5:	; if_else_bb12
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 254
	jarl _Dem_GetDTCIndex, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 255
	cmp r2, r10
	bz9 .BB.LABEL.17_8
.BB.LABEL.17_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov r10, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_8
.BB.LABEL.17_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 257
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	mul 0x00000014, r10, r0
	add r10, r2
	ld.b 0x0000000A[r2], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 258
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.17_8:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 262
	dispose 0x00000000, 0x00000041, [r31]
_Dem_DcmGetFunctionalUnitOfDTC:
	.stack _Dem_DcmGetFunctionalUnitOfDTC = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 277
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 281
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.18_2:	; if_then_bb
	movea 0x00000034, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 301
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.18_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 285
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.18_2
.BB.LABEL.18_5:	; if_else_bb12
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 292
	jarl _Dem_GetDTCIndex, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 293
	cmp r2, r10
	bz9 .BB.LABEL.18_8
.BB.LABEL.18_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov r10, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_8
.BB.LABEL.18_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 296
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	mul 0x00000014, r10, r0
	add r10, r2
	ld.b 0x00000009[r2], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 297
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.18_8:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 301
	dispose 0x00000000, 0x00000041, [r31]
_Dem_DcmSetDTCFilter:
	.stack _Dem_DcmSetDTCFilter = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 328
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 339
	mov r23, r6
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 340
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	ld.w 0x00000020[r3], r2
	ld.w 0x0000001C[r3], r5
	ld.w 0x00000018[r3], r6
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.19_2:	; if_then_bb
	movea 0x00000013, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 383
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.19_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 344
	cmp 0x00000000, r22
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000002, r22
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_5:	; if_else_bb
	cmp 0x00000002, r21
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_6:	; if_else_bb
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_then_bb74
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.19_2
.BB.LABEL.19_8:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 359
	cmp 0x00000000, r20
	cmov 0x00000002, 0xFFFFFFFF, r20, r7
	mov #_DemDTCFilterInfo, r24
	st.b r7, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 361
	st.b r20, 0x00000001[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 362
	st.b r21, 0x00000002[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 363
	st.b r22, 0x00000003[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 364
	st.b r23, 0x00000004[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 365
	st.b r6, 0x00000005[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 366
	st.b r5, 0x00000006[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 367
	st.b r2, 0x00000007[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 368
	st.h r0, 0x00000174[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 369
	st.h r0, 0x00000172[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 370
	st.h r0, 0x000000F8[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 372
	st.h r0, 0x000000F6[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 373
	addi 0x0000000A, r24, r6
	mov 0x00000000, r20
	movea 0x000000EC, r0, r8
	mov r20, r7
	jarl _Dem_MemSet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 378
	movea 0x000000FA, r24, r6
	movea 0x0000003B, r0, r8
	mov r20, r7
	jarl _Dem_MemSet.1, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 379
	st.b r2, 0x00000170[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 380
	mov r20, r10
	dispose 0x00000000, 0x00000479, [r31]
_Dem_DcmGetNumberOfFilteredDTC:
	.stack _Dem_DcmGetNumberOfFilteredDTC = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 398
	prepare 0x000007F9, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 403
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r6, r20
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.20_2:	; if_then_bb
	movea 0x00000017, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 546
	dispose 0x00000004, 0x000007F9, [r31]
.BB.LABEL.20_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 407
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.20_2
.BB.LABEL.20_5:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 411
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000170), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000170)[r2], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.20_37
.BB.LABEL.20_6:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 451
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r21
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 452
	jarl _Dem_GetInternalMemDest.1, r31
	mov 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 454
	mov r10, r23
	jr .BB.LABEL.20_27
.BB.LABEL.20_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 456
	andi 0x0000FFFF, r22, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 457
	mov r24, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r25
	add r2, r25
	ld.b 0x00000000[r25], r2
	movhi HIGHW1(#_DemDTCFilterInfo), r0, r5
	ld.b LOWW(#_DemDTCFilterInfo)[r5], r5
	and r5, r2
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.20_9
.BB.LABEL.20_8:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000001), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000001)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.20_26
.BB.LABEL.20_9:	; bb70
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000003), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000003)[r2], r6
	andi 0x0000FFFF, r22, r7
	jarl _Dem_CheckDTCFormat.1, r31
	cmp 0x00000001, r10
	bnz17 .BB.LABEL.20_26
.BB.LABEL.20_10:	; bb86
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000005), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000005)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.20_12
.BB.LABEL.20_11:	; bb93
	andi 0x0000FFFF, r22, r2
	mul 0x00000014, r2, r0
	add r21, r2
	ld.b 0x0000000A[r2], r2
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000006), r0, r5
	ld.b LOWW(#_DemDTCFilterInfo+0x00000006)[r5], r5
	and r2, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.20_26
.BB.LABEL.20_12:	; bb122
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000007), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000007)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.20_26
.BB.LABEL.20_13:	; bb136
	add r24, r24
	mov #_DemDTCGeneralStatus, r2
	add r24, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.20_26
.BB.LABEL.20_14:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 465
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000172), r0, r2
	ld.h LOWW(#_DemDTCFilterInfo+0x00000172)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_DemDTCFilterInfo+0x00000172)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 469
	mov r23, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 470
	ld.w 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 473
	ld.bu 0x00000004[r5], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 471
	ld.bu 0x00000000[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 473
	andi 0x0000000C, r2, r0
	bz9 .BB.LABEL.20_25
.BB.LABEL.20_15:	; bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	andi 0x000000F3, r2, r0
	bnz9 .BB.LABEL.20_25
.BB.LABEL.20_16:	; bb177.bb275_crit_edge
	mov 0x00000000, r25
	br9 .BB.LABEL.20_24
.BB.LABEL.20_17:	; bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 477
	ld.hu 0x00000028[r24], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.20_23
.BB.LABEL.20_18:	; if_then_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 479
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 481
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	ld.hu 0x00000000[r10], r7
	mov r7, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	ld.hu 0x00000010[r2], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 482
	mov r23, r6
	jarl _Dem_CheckEventInternalMemDest.1, r31
	andi 0x0000FFFF, r22, r2
	cmp r27, r2
	bnz9 .BB.LABEL.20_23
.BB.LABEL.20_19:	; if_then_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	addi 0xFFFFFF01, r10, r0
	bz9 .BB.LABEL.20_23
.BB.LABEL.20_20:	; if_then_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 486
	mov #_DemDTCFilterInfo, r25
	ld.hu 0x000000F6[r25], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 488
	shl 0x00000002, r26
	add r26, r25
	st.h r22, 0x0000000C[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 490
	ld.bu 0x0000000A[r25], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 488
	add 0x0000000A, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 490
	ld.bu 0x0000001F[r24], r24
	cmp r26, r24
	bnh9 .BB.LABEL.20_22
.BB.LABEL.20_21:	; if_then_bb262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 492
	st.b r24, 0x00000000[r25]
.BB.LABEL.20_22:	; if_then_bb290
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 503
	movhi HIGHW1(#_DemDTCFilterInfo+0x000000F6), r0, r2
	ld.h LOWW(#_DemDTCFilterInfo+0x000000F6)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_DemDTCFilterInfo+0x000000F6)[r2]
	br9 .BB.LABEL.20_26
.BB.LABEL.20_23:	; if_break_bb270
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 499
	add 0x00000001, r25
	movea 0x0000002A, r24, r24
.BB.LABEL.20_24:	; bb275
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 475
	andi 0x000000FF, r25, r2
	cmp r26, r2
	bl9 .BB.LABEL.20_17
.BB.LABEL.20_25:	; if_else_bb310
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov #_DemDTCFilterInfo, r2
	ld.hu 0x000000F8[r2], r5
	add r5, r5
	add r2, r5
	st.h r22, 0x000000FA[r5]
	ld.h 0x000000F8[r2], r5
	add 0x00000001, r5
	st.h r5, 0x000000F8[r2]
.BB.LABEL.20_26:	; if_break_bb325
	add 0x00000001, r22
.BB.LABEL.20_27:	; bb328
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 454
	andi 0x0000FFFF, r22, r2
	movea 0x0000003B, r0, r5
	cmp r5, r2
	bl17 .BB.LABEL.20_7
.BB.LABEL.20_28:	; bb328.bb448_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.20_35
.BB.LABEL.20_29:	; bb335
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 525
	andi 0x0000FFFF, r2, r5
	shl 0x00000002, r5
	mov #_DemDTCFilterInfo, r6
	add r5, r6
	ld.bu 0x0000000A[r6], r5
	ld.bu 0x00000006[r6], r6
	cmp r6, r5
	bnh9 .BB.LABEL.20_34
.BB.LABEL.20_30:	; if_then_bb357
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 527
	andi 0x0000FFFF, r2, r5
	shl 0x00000002, r5
	mov #_DemDTCFilterInfo, r6
	add r5, r6
	ld.h 0x0000000C[r6], r5
	st.h r5, 0x00000002[r3]
	ld.h 0x0000000A[r6], r5
	st.h r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 528
	ld.h 0x00000008[r6], r5
	st.h r5, 0x0000000C[r6]
	ld.h 0x00000006[r6], r5
	st.h r5, 0x0000000A[r6]
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 529
	ld.h 0x00000002[r5], r7
	st.h r7, 0x00000008[r6]
	ld.h 0x00000000[r5], r5
	st.h r5, 0x00000006[r6]
	mov r2, r5
	br9 .BB.LABEL.20_32
.BB.LABEL.20_31:	; bb386
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 534
	andi 0x0000FFFF, r5, r6
	shl 0x00000002, r6
	mov #_DemDTCFilterInfo, r7
	add r6, r7
	ld.h 0x00000008[r7], r6
	st.h r6, 0x0000000C[r7]
	ld.h 0x00000006[r7], r6
	st.h r6, 0x0000000A[r7]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 535
	ld.h 0x00000002[r6], r8
	st.h r8, 0x00000008[r7]
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000006[r7]
.BB.LABEL.20_32:	; bb413
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 530
	andi 0x0000FFFF, r5, r0
	bz9 .BB.LABEL.20_34
.BB.LABEL.20_33:	; bb418
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	andi 0x0000FFFF, r5, r6
	shl 0x00000002, r6
	mov #_DemDTCFilterInfo, r7
	add r6, r7
	ld.bu 0x0000000A[r7], r6
	ld.bu 0x00000006[r7], r7
	cmp r7, r6
	bh9 .BB.LABEL.20_31
.BB.LABEL.20_34:	; if_break_bb445
	add 0x00000001, r2
.BB.LABEL.20_35:	; bb448
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 522
	movhi HIGHW1(#_DemDTCFilterInfo+0x000000F6), r0, r5
	ld.hu LOWW(#_DemDTCFilterInfo+0x000000F6)[r5], r5
	andi 0x0000FFFF, r2, r6
	cmp r5, r6
	bl9 .BB.LABEL.20_29
.BB.LABEL.20_36:	; bb458
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 541
	mov #_DemDTCFilterInfo, r2
	st.b r0, 0x00000170[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 542
	ld.h 0x00000172[r2], r2
	st.h r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 543
	dispose 0x00000004, 0x000007F9, [r31]
.BB.LABEL.20_37:	; if_break_bb465
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 546
	dispose 0x00000004, 0x000007F9, [r31]
_Dem_DcmGetNextFilteredDTC:
	.stack _Dem_DcmGetNextFilteredDTC = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 564
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 571
	jarl _Dem_DcmCheckDTCFilterStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 572
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_1:	; entry.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 580
	mov #_DemDTCFilterInfo, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 582
	ld.bu 0x00000003[r24], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 580
	shl 0x00000002, r23
	add r24, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 582
	ld.hu 0x0000000C[r23], r23
	mov r23, r6
	mov r20, r8
	jarl _Dem_GetEventDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 583
	add r23, r23
	mov #_DemDTCGeneralStatus, r2
	add r23, r2
	ld.b 0x00000000[r2], r23
	st.b r23, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 586
	ld.h 0x00000174[r24], r23
	add 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 584
	ld.w 0x00000000[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 586
	st.h r23, 0x00000174[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 584
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 586
	cmov 0x0000000A, 0x00000000, r22, r22
.BB.LABEL.21_3:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 576
	andi 0x000000FF, r22, r0
	mov #_DemDTCFilterInfo, r23
	ld.hu 0x000000F6[r23], r2
	ld.hu 0x00000174[r23], r23
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp r2, r23
	bl9 .BB.LABEL.21_2
.BB.LABEL.21_5:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 594
	cmp r2, r23
	bnc9 .BB.LABEL.21_7
	br9 .BB.LABEL.21_9
.BB.LABEL.21_6:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 602
	mov #_DemDTCFilterInfo, r24
	ld.hu 0x000000F6[r24], r2
	zxh r23
	sub r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 607
	zxh r23
	add r23, r23
	ld.bu 0x00000003[r24], r7
	add r24, r23
	ld.hu 0x000000FA[r23], r6
	mov r20, r8
	jarl _Dem_GetEventDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 608
	ld.hu 0x000000FA[r23], r23
	add r23, r23
	mov #_DemDTCGeneralStatus, r2
	add r23, r2
	ld.b 0x00000000[r2], r23
	st.b r23, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 612
	ld.h 0x00000174[r24], r23
	add 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 610
	ld.w 0x00000000[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 612
	st.h r23, 0x00000174[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 610
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 612
	cmov 0x0000000A, 0x00000000, r22, r22
.BB.LABEL.21_7:	; bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 597
	andi 0x000000FF, r22, r0
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000172), r0, r2
	ld.hu LOWW(#_DemDTCFilterInfo+0x00000172)[r2], r2
	bz9 .BB.LABEL.21_9
.BB.LABEL.21_8:	; bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	andi 0x0000FFFF, r23, r5
	cmp r2, r5
	bl9 .BB.LABEL.21_6
.BB.LABEL.21_9:	; bb138.if_break_bb153_crit_edge
	mov r22, r10
.BB.LABEL.21_10:	; if_break_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 623
	zxb r10
	dispose 0x00000000, 0x00000479, [r31]
_Dem_DcmGetNextFilteredDTCAndFDC:
	.stack _Dem_DcmGetNextFilteredDTCAndFDC = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 642
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 649
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.22_2:	; if_then_bb
	movea 0x0000003B, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 688
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.22_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 653
	cmp 0x00000000, r20
	bz9 .BB.LABEL.22_6
.BB.LABEL.22_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; if_else_bb.bb105_crit_edge
	mov 0x00000001, r22
	br9 .BB.LABEL.22_15
.BB.LABEL.22_6:	; if_then_bb21
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.22_2
.BB.LABEL.22_7:	; bb23
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 662
	cmp r2, r23
	bz9 .BB.LABEL.22_14
.BB.LABEL.22_8:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 665
	mov r23, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb32.if_break_bb100_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.22_14
.BB.LABEL.22_10:	; bb41
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000003), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000003)[r2], r6
	mov r23, r7
	jarl _Dem_CheckDTCFormat.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.22_9
.BB.LABEL.22_11:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 673
	mov #_DemDTCFilterInfo, r24
	ld.bu 0x00000003[r24], r7
	mov r23, r6
	mov r21, r8
	jarl _Dem_GetEventDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 675
	mov r23, r2
	mul 0x00000003, r2, r0
	mov #_FDCInfo, r5
	add r2, r5
	ld.b 0x00000000[r5], r2
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 676
	add r23, r23
	mov #_DemDTCGeneralStatus, r2
	add r23, r2
	ld.b 0x00000000[r2], r23
	ld.b 0x00000000[r24], r2
	and r2, r23
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.22_14
.BB.LABEL.22_12:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ld.w 0x00000000[r21], r23
	cmp 0x00000000, r23
	bz9 .BB.LABEL.22_14
.BB.LABEL.22_13:	; if_then_bb98
	mov 0x00000000, r22
.BB.LABEL.22_14:	; if_break_bb100
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000174), r0, r23
	ld.h LOWW(#_DemDTCFilterInfo+0x00000174)[r23], r2
	add 0x00000001, r2
	st.h r2, LOWW(#_DemDTCFilterInfo+0x00000174)[r23]
.BB.LABEL.22_15:	; bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 659
	andi 0x000000FF, r22, r0
	bz9 .BB.LABEL.22_17
.BB.LABEL.22_16:	; bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000174), r0, r23
	ld.hu LOWW(#_DemDTCFilterInfo+0x00000174)[r23], r23
	movea 0x0000003B, r0, r2
	cmp r2, r23
	bl9 .BB.LABEL.22_7
.BB.LABEL.22_17:	; if_break_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 688
	andi 0x000000FF, r22, r10
	dispose 0x00000000, 0x00000479, [r31]
_Dem_DcmGetNextFilteredDTCAndSeverity:
	.stack _Dem_DcmGetNextFilteredDTCAndSeverity = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 720
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 730
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	mov r6, r23
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.23_2:	; if_then_bb
	movea 0x0000003D, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 768
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.23_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 734
	cmp 0x00000000, r23
	bz9 .BB.LABEL.23_8
.BB.LABEL.23_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r22
	bz9 .BB.LABEL.23_8
.BB.LABEL.23_5:	; if_else_bb
	cmp 0x00000000, r21
	bz9 .BB.LABEL.23_8
.BB.LABEL.23_6:	; if_else_bb
	cmp 0x00000000, r20
	bz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; if_else_bb.bb146_crit_edge
	mov 0x00000001, r24
	br9 .BB.LABEL.23_17
.BB.LABEL.23_8:	; if_then_bb45
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.23_2
.BB.LABEL.23_9:	; bb47
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 744
	cmp r2, r25
	bz9 .BB.LABEL.23_16
.BB.LABEL.23_10:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 747
	mov r25, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_12
.BB.LABEL.23_11:	; if_then_bb56.if_break_bb141_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r24
	br9 .BB.LABEL.23_16
.BB.LABEL.23_12:	; bb65
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000003), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000003)[r2], r6
	mov r25, r7
	jarl _Dem_CheckDTCFormat.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.23_11
.BB.LABEL.23_13:	; if_else_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 755
	mov #_DemDTCFilterInfo, r26
	ld.bu 0x00000003[r26], r7
	mov r25, r6
	mov r23, r8
	jarl _Dem_GetEventDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 756
	mov r25, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.b 0x00000000[r5], r2
	st.b r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 757
	mul 0x00000014, r25, r0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r5
	ld.w 0x00000004[r5], r5
	add r25, r5
	ld.b 0x0000000A[r5], r5
	st.b r5, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 758
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	add r25, r2
	ld.b 0x00000009[r2], r25
	st.b r25, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 759
	ld.b 0x00000000[r26], r25
	ld.b 0x00000000[r22], r2
	and r25, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.23_16
.BB.LABEL.23_14:	; bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ld.w 0x00000000[r23], r25
	cmp 0x00000000, r25
	bz9 .BB.LABEL.23_16
.BB.LABEL.23_15:	; if_then_bb139
	mov 0x00000000, r24
.BB.LABEL.23_16:	; if_break_bb141
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000174), r0, r25
	ld.h LOWW(#_DemDTCFilterInfo+0x00000174)[r25], r2
	add 0x00000001, r2
	st.h r2, LOWW(#_DemDTCFilterInfo+0x00000174)[r25]
.BB.LABEL.23_17:	; bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 741
	andi 0x000000FF, r24, r0
	bz9 .BB.LABEL.23_19
.BB.LABEL.23_18:	; bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000174), r0, r25
	ld.hu LOWW(#_DemDTCFilterInfo+0x00000174)[r25], r25
	movea 0x0000003B, r0, r2
	cmp r2, r25
	bl9 .BB.LABEL.23_9
.BB.LABEL.23_19:	; if_break_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 768
	andi 0x000000FF, r24, r10
	dispose 0x00000000, 0x00000779, [r31]
_Dem_DcmSetFreezeFrameRecordFilter:
	.stack _Dem_DcmSetFreezeFrameRecordFilter = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 785
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 791
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.24_4
.BB.LABEL.24_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 795
	cmp 0x00000001, r6
	bz9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000010, r0, r7
.BB.LABEL.24_4:	; if_then_bb11
	movea 0x0000003F, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 808
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 799
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.24_7
.BB.LABEL.24_6:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.24_4
.BB.LABEL.24_7:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 805
	jarl _Dem_InterDcmSetFreezeFrameRecordFilter, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmGetNextFilteredRecord:
	.stack _Dem_DcmGetNextFilteredRecord = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 828
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 833
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.25_3
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.25_2:	; if_then_bb
	movea 0x0000003A, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 850
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.25_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 837
	cmp 0x00000000, r6
	bz9 .BB.LABEL.25_5
.BB.LABEL.25_4:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 841
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.25_2
.BB.LABEL.25_6:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 847
	jarl _Dem_InterDcmGetNextFilteredRecord, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmGetDTCByOccurrenceTime:
	.stack _Dem_DcmGetDTCByOccurrenceTime = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 865
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 870
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r8
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.26_2:	; if_then_bb
	movea 0x00000019, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 911
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 874
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.26_5
.BB.LABEL.26_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.26_2
.BB.LABEL.26_5:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 880
	add 0xFFFFFFFF, r6
	cmp 0x00000003, r6
	bh9 .BB.LABEL.26_8
.BB.LABEL.26_6:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.26_19[r6]
.SWITCH.LABEL.26_19:
	br9 .BB.LABEL.26_7
	br9 .BB.LABEL.26_9
	br9 .BB.LABEL.26_10
	br9 .BB.LABEL.26_11
.SWITCH.LABEL.26_19.END:
.BB.LABEL.26_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 883
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo), r0, r2
	ld.hu LOWW(#_DemDTCByOccurrenceTimeInfo)[r2], r2
	br9 .BB.LABEL.26_12
.BB.LABEL.26_8:	; if_else_bb13.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ori 0x0000FFFF, r0, r2
	br9 .BB.LABEL.26_12
.BB.LABEL.26_9:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 886
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo+0x00000002), r0, r2
	ld.hu LOWW(#_DemDTCByOccurrenceTimeInfo+0x00000002)[r2], r2
	br9 .BB.LABEL.26_12
.BB.LABEL.26_10:	; switch_clause_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 889
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo+0x00000004), r0, r2
	ld.hu LOWW(#_DemDTCByOccurrenceTimeInfo+0x00000004)[r2], r2
	br9 .BB.LABEL.26_12
.BB.LABEL.26_11:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 892
	movhi HIGHW1(#_DemDTCByOccurrenceTimeInfo+0x00000006), r0, r2
	ld.hu LOWW(#_DemDTCByOccurrenceTimeInfo+0x00000006)[r2], r2
.BB.LABEL.26_12:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 898
	cmp r5, r2
	bnz9 .BB.LABEL.26_14
.BB.LABEL.26_13:	; switch_break_bb.if_break_bb69_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.26_17
.BB.LABEL.26_14:	; bb
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000020[r5], r6
	mov r2, r7
	mul 0x0000002C, r7, r0
	add r7, r6
	ld.hu 0x00000010[r6], r6
	ori 0x0000FFFF, r0, r7
	cmp r7, r6
	bz9 .BB.LABEL.26_13
.BB.LABEL.26_15:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 901
	ld.w 0x00000020[r5], r5
	mul 0x0000002C, r2, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 903
	ld.hu 0x00000010[r5], r6
	mov r6, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.26_18
.BB.LABEL.26_16:	; if_then_bb46.if_break_bb69_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r10
.BB.LABEL.26_17:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 911
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_18:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 905
	jarl _Dem_GetEventDTC, r31
	br9 .BB.LABEL.26_16
_Dem_DcmControlDTCStatusChangedNotification:
	.stack _Dem_DcmControlDTCStatusChangedNotification = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 926
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 928
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r6, r20
	bz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	movea 0x000000B0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 930
	jarl _DEM_DET_REPORT.1, r31
.BB.LABEL.27_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 932
	movhi HIGHW1(#_Dem_DTCStatusChangedInd), r0, r2
	st.b r20, LOWW(#_Dem_DTCStatusChangedInd)[r2]
	dispose 0x00000000, 0x00000041, [r31]
_Dem_DcmDisableDTCRecordUpdate:
	.stack _Dem_DcmDisableDTCRecordUpdate = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 957
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 961
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r7, r20
	bz9 .BB.LABEL.28_3
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.28_2:	; if_then_bb
	movea 0x0000001A, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 992
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.28_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 965
	movhi HIGHW1(#_Dem_DTCDisable.2), r0, r2
	ld.bu LOWW(#_Dem_DTCDisable.2)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_5
.BB.LABEL.28_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000040, r0, r7
	br9 .BB.LABEL.28_2
.BB.LABEL.28_5:	; if_else_bb14
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 972
	jarl _Dem_GetDTCIndex, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 973
	mov r20, r6
	jarl _Dem_GetInternalMemDest.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 974
	cmp r2, r21
	bnz9 .BB.LABEL.28_7
.BB.LABEL.28_6:	; if_else_bb14.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.28_9
.BB.LABEL.28_7:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 978
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.28_10
.BB.LABEL.28_8:	; if_else_bb25.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
.BB.LABEL.28_9:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 992
	zxb r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.28_10:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 984
	movhi HIGHW1(#_Dem_DTCDisable.2), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Dem_DTCDisable.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 985
	mov #_DTCRecordUpdateStatusInfo.1, r2
	st.h r21, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 986
	st.b r10, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 987
	mulh 0x0000000A, r10
	mov #_DemMemDestInfo, r6
	add r10, r6
	add 0x00000001, r6
	mov r21, r7
	jarl _DEM_BITS_SET.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 988
	dispose 0x00000000, 0x00000061, [r31]
_Dem_DcmEnableDTCRecordUpdate:
	.stack _Dem_DcmEnableDTCRecordUpdate = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1007
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1010
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	movea 0x0000001B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1012
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1016
	movhi HIGHW1(#_Dem_DTCDisable.2), r0, r2
	st.b r0, LOWW(#_Dem_DTCDisable.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1017
	mov #_DTCRecordUpdateStatusInfo.1, r2
	ld.bu 0x00000002[r2], r5
	ld.hu 0x00000000[r2], r7
	mulh 0x0000000A, r5
	mov #_DemMemDestInfo, r6
	add r5, r6
	add 0x00000001, r6
	jarl _DEM_BITS_CLR.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1020
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmGetFreezeFrameDataByDTC:
	.stack _Dem_DcmGetFreezeFrameDataByDTC = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1047
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1059
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	ld.w 0x0000001C[r3], r20
	mov r9, r21
	mov r8, r22
	mov r7, r23
	mov r6, r24
	bz9 .BB.LABEL.30_3
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.30_2:	; if_then_bb
	movea 0x0000001D, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1092
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.30_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1065
	mov r24, r6
	jarl _Dem_GetDTCIndex, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1066
	mov r23, r6
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1067
	cmp 0x00000000, r21
	bz9 .BB.LABEL.30_5
.BB.LABEL.30_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.30_6
.BB.LABEL.30_5:	; if_then_bb29
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.30_2
.BB.LABEL.30_6:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1071
	addi 0xFFFFFF01, r22, r0
	bnz9 .BB.LABEL.30_8
.BB.LABEL.30_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000012, r0, r7
	movea 0x0000001D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1073
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1074
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.30_8:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1077
	cmp r2, r25
	bnz9 .BB.LABEL.30_10
.BB.LABEL.30_9:	; if_else_bb37.if_break_bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.30_13
.BB.LABEL.30_10:	; bb42
	add r25, r25
	mov #_DemDTCGeneralStatus, r2
	add r25, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.30_9
.BB.LABEL.30_11:	; if_else_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1081
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.30_14
.BB.LABEL.30_12:	; if_else_bb60.if_break_bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
.BB.LABEL.30_13:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1092
	zxb r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.30_14:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1087
	shl 0x00000008, r10
	mov r10, r7
	or r22, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1088
	mov r24, r6
	mov r21, r8
	mov r20, r9
	jarl _Dem_InterDcmGetFreezeFrameDataByDTC, r31
	dispose 0x00000000, 0x00000679, [r31]
_Dem_DcmGetSizeOfFreezeFrameByDTC:
	.stack _Dem_DcmGetSizeOfFreezeFrameByDTC = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1112
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1122
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	mov r6, r23
	bz9 .BB.LABEL.31_3
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.31_2:	; if_then_bb
	movea 0x0000001F, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1150
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.31_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1126
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.31_5
.BB.LABEL.31_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.31_2
.BB.LABEL.31_5:	; if_else_bb15
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1133
	mov r23, r6
	jarl _Dem_GetDTCIndex, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1134
	mov r22, r6
	jarl _Dem_GetInternalMemDest.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1135
	cmp r2, r24
	bnz9 .BB.LABEL.31_7
.BB.LABEL.31_6:	; if_else_bb15.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.31_10
.BB.LABEL.31_7:	; bb
	add r24, r24
	mov #_DemDTCGeneralStatus, r2
	add r24, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.31_6
.BB.LABEL.31_8:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1139
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.31_11
.BB.LABEL.31_9:	; if_else_bb40.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
.BB.LABEL.31_10:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1150
	zxb r10
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.31_11:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1145
	st.h r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1146
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _Dem_InterDcmGetSizeOfFreezeFrameByDTC, r31
	dispose 0x00000000, 0x00000479, [r31]
_Dem_DcmGetExtendedDataRecordByDTC:
	.stack _Dem_DcmGetExtendedDataRecordByDTC = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1174
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1188
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	ld.w 0x0000001C[r3], r20
	mov r9, r21
	mov r8, r22
	mov r6, r23
	bz9 .BB.LABEL.32_3
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1190
	mov r6, r7
.BB.LABEL.32_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1237
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.32_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1192
	cmp 0x00000000, r21
	bz9 .BB.LABEL.32_5
.BB.LABEL.32_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.32_6
.BB.LABEL.32_5:	; if_then_bb27
	movea 0x00000011, r0, r7
	movea 0x00000020, r0, r6
	br9 .BB.LABEL.32_2
.BB.LABEL.32_6:	; if_else_bb28
	movea 0x000000FE, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1196
	cmp r2, r22
	bl9 .BB.LABEL.32_8
.BB.LABEL.32_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000012, r0, r7
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1198
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1199
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.32_8:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1203
	mov r7, r6
	jarl _Dem_GetInternalMemDest.1, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1204
	mov r22, r6
	jarl _Dem_GetExtendedDataRecordCfg, r31
	mov r10, r25
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1206
	mov r23, r6
	jarl _Dem_GetDTCIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1207
	mov r10, r2
	mul 0x00000014, r2, r0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000004[r5], r6
	add r2, r6
	ld.hu 0x00000004[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1208
	addi 0xFFFFFF01, r24, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1207
	ld.w 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1208
	bnz9 .BB.LABEL.32_10
.BB.LABEL.32_9:	; if_else_bb35.if_break_bb133_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.32_17
.BB.LABEL.32_10:	; if_else_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1213
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.32_12
.BB.LABEL.32_11:	; if_else_bb61.if_break_bb133_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.32_17
.BB.LABEL.32_12:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1217
	ld.hu 0x00000000[r20], r6
	ld.bu 0x00000007[r25], r7
	cmp r7, r6
	bge9 .BB.LABEL.32_14
.BB.LABEL.32_13:	; if_else_bb67.if_break_bb133_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.32_17
.BB.LABEL.32_14:	; if_else_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1221
	mul 0x00000014, r2, r0
	add r2, r5
	ld.hu 0x0000000A[r5], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.32_11
.BB.LABEL.32_15:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1225
	cmp r2, r10
	bnz9 .BB.LABEL.32_18
.BB.LABEL.32_16:	; if_else_bb88.if_break_bb133_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
.BB.LABEL.32_17:	; if_break_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1237
	zxb r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.32_18:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add r10, r10
	mov #_DemDTCGeneralStatus, r2
	add r10, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.32_16
.BB.LABEL.32_19:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1227
	st.h r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1228
	shl 0x00000008, r24
	mov r24, r7
	or r22, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1229
	mov r23, r6
	mov r21, r8
	mov r20, r9
	jarl _Dem_GetExtendedRecordDataLoop, r31
	dispose 0x00000000, 0x00000679, [r31]
_Dem_DcmGetSizeOfExtendedDataRecordByDTC:
	.stack _Dem_DcmGetSizeOfExtendedDataRecordByDTC = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1258
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1268
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	mov r6, r23
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.33_2:	; if_then_bb
	movea 0x00000021, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1299
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.33_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1272
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.33_5
.BB.LABEL.33_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.33_2
.BB.LABEL.33_5:	; if_else_bb15
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1278
	mov r23, r6
	jarl _Dem_GetDTCIndex, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1279
	mov r22, r6
	jarl _Dem_GetInternalMemDest.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1281
	cmp r2, r24
	bnz9 .BB.LABEL.33_7
.BB.LABEL.33_6:	; if_else_bb15.if_break_bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.33_10
.BB.LABEL.33_7:	; bb
	add r24, r24
	mov #_DemDTCGeneralStatus, r2
	add r24, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.33_6
.BB.LABEL.33_8:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1285
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.33_11
.BB.LABEL.33_9:	; if_else_bb40.if_break_bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
.BB.LABEL.33_10:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1299
	zxb r10
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.33_11:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1291
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _Dem_InterDcmGetSizeOfExtendedDataRecordByDTC, r31
	dispose 0x00000000, 0x00000479, [r31]
_Dem_DcmCheckClearParameter:
	.stack _Dem_DcmCheckClearParameter = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1328
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1334
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	movea 0x0000007B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1336
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000003, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1338
	movhi HIGHW1(#_Dem_ClearDTCLock), r0, r2
	ld.w LOWW(#_Dem_ClearDTCLock)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.34_4
.BB.LABEL.34_3:	; if_else_bb.if_break_bb37_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.34_6
.BB.LABEL.34_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1342
	cmp 0x00000001, r8
	bz9 .BB.LABEL.34_7
.BB.LABEL.34_5:	; if_else_bb13.if_break_bb37_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
.BB.LABEL.34_6:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1369
	zxb r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_7:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00FFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1349
	cmp r2, r6
	bnz9 .BB.LABEL.34_9
.BB.LABEL.34_8:	; if_else_bb20.if_break_bb37_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.34_6
.BB.LABEL.34_9:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1352
	jarl _Dem_GetDTCIndex, r31
	ori 0x0000FFFF, r0, r2
	cmp r2, r10
	bnz9 .BB.LABEL.34_8
.BB.LABEL.34_10:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1359
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmClearDTC:
	.stack _Dem_DcmClearDTC = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1393
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1397
	jarl _Dem_GetDTCIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1399
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	mov r10, r23
	bz9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000022, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1401
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000003, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.35_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1403
	cmp 0x00000001, r22
	bz9 .BB.LABEL.35_5
.BB.LABEL.35_3:	; if_else_bb.if_break_bb174_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r22
.BB.LABEL.35_4:	; if_break_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1483
	andi 0x000000FF, r22, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.35_5:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00FFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1409
	cmp r2, r20
	bnz9 .BB.LABEL.35_8
.BB.LABEL.35_6:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.35_8
.BB.LABEL.35_7:	; if_then_bb34
	ori 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1411
	jarl _Dem_ClearDTRInfoByEventId, r31
.BB.LABEL.35_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1413
	movhi HIGHW1(#_Dem_ClearDTCLock), r0, r2
	ld.w LOWW(#_Dem_ClearDTCLock)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.35_15
.BB.LABEL.35_9:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1415
	movhi HIGHW1(#_DemClearDTCInfo+0x00000002), r0, r2
	ld.hu LOWW(#_DemClearDTCInfo+0x00000002)[r2], r2
	cmp r2, r23
	bz9 .BB.LABEL.35_11
.BB.LABEL.35_10:	; if_then_bb39.if_break_bb140_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000005, r23
	br9 .BB.LABEL.35_17
.BB.LABEL.35_11:	; bb48
	movhi HIGHW1(#_DemClearDTCInfo+0x0000000D), r0, r23
	ld.bu LOWW(#_DemClearDTCInfo+0x0000000D)[r23], r23
	cmp r23, r21
	bnz9 .BB.LABEL.35_10
.BB.LABEL.35_12:	; bb64
	movhi HIGHW1(#_DemClearDTCInfo+0x0000000F), r0, r23
	ld.bu LOWW(#_DemClearDTCInfo+0x0000000F)[r23], r23
	cmp r23, r22
	bnz9 .BB.LABEL.35_10
.BB.LABEL.35_13:	; bb80
	movhi HIGHW1(#_DemClearDTCInfo+0x00000010), r0, r23
	ld.hu LOWW(#_DemClearDTCInfo+0x00000010)[r23], r23
	addi 0xFFFFFFDE, r23, r0
	bnz9 .BB.LABEL.35_10
.BB.LABEL.35_14:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1423
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r23
	mov 0x00000002, r2
	st.w r2, LOWW(#_Dem_ClearNonvolatileStatus)[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1424
	jarl _Dem_ResetDemClearDTCInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1425
	movhi HIGHW1(#_Dem_ClearDTCLock), r0, r23
	mov 0x00000001, r2
	st.w r2, LOWW(#_Dem_ClearDTCLock)[r23]
	mov 0x00000000, r23
	br9 .BB.LABEL.35_17
.BB.LABEL.35_15:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1449
	cmp 0x00000001, r2
	bz9 .BB.LABEL.35_19
.BB.LABEL.35_16:	; if_else_bb112.if_break_bb140_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000003, r23
.BB.LABEL.35_17:	; if_break_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1472
	mov r22, r6
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1473
	cmp 0x00000003, r23
	setf 0x00000002, r22
	addi 0xFFFFFF01, r10, r0
	setf 0x00000002, r2
	tst r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1475
	cmov 0x0000000A, 0x00000002, r23, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1477
	cmp 0x00000003, r22
	bnz9 .BB.LABEL.35_4
.BB.LABEL.35_18:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1479
	mov r20, r6
	mov r21, r7
	mov r10, r8
	jarl _Dem_DcmSubClearDTC.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.35_19:	; if_then_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1452
	movhi HIGHW1(#_Dem_ClearDTCLock), r0, r2
	st.w r0, LOWW(#_Dem_ClearDTCLock)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1453
	mov #_DemClearDTCInfo, r2
	st.h r23, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1454
	st.b r21, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1455
	st.b r22, 0x0000000E[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1456
	st.h r23, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1457
	st.b r21, 0x0000000D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1458
	st.b r22, 0x0000000F[r2]
	movea 0x00000022, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1459
	st.h r23, 0x00000010[r2]
	br9 .BB.LABEL.35_16
_Dem_DcmDisableDTCSetting:
	.stack _Dem_DcmDisableDTCSetting = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1501
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1504
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.36_2
.BB.LABEL.36_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1506
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.36_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1510
	jarl _Dem_InterDcmDisableDTCSetting, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmEnableDTCSetting:
	.stack _Dem_DcmEnableDTCSetting = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1534
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1537
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.37_2
.BB.LABEL.37_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000025, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1539
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.37_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1543
	jarl _Dem_InterDcmEnableDTCSetting, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmGetDTCSeverityAvailabilityMask:
	.stack _Dem_DcmGetDTCSeverityAvailabilityMask = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1563
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1566
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.38_3
.BB.LABEL.38_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.38_2:	; if_then_bb
	movea 0x000000B2, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1580
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.38_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1570
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.38_5
.BB.LABEL.38_4:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.38_2
.BB.LABEL.38_5:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1576
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000006), r0, r2
	ld.b LOWW(#_DemDTCFilterInfo+0x00000006)[r2], r2
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1577
	dispose 0x00000000, 0x00000001, [r31]
_Dem_SetDTCSettingProcess:
	.stack _Dem_SetDTCSettingProcess = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1598
	prepare 0x00000071, 0x00000000
	mov 0x00000000, r20
	jr .BB.LABEL.39_14
.BB.LABEL.39_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1606
	ld.w 0x00000020[r2], r21
	andi 0x0000FFFF, r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1607
	mov r22, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1608
	mul 0x0000002C, r22, r0
	add r22, r21
	ld.hu 0x00000010[r21], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	movea 0x00000010, r21, r5
	mov r10, r21
	bz9 .BB.LABEL.39_13
.BB.LABEL.39_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r6
	ld.w LOWW(#_DemPbCfgPtr)[r6], r6
	ld.w 0x00000004[r6], r7
	mul 0x00000014, r2, r0
	add r2, r7
	ld.bu 0x00000008[r7], r2
	movhi HIGHW1(#_DemDTCSettingInfo+0x00000001), r0, r7
	ld.bu LOWW(#_DemDTCSettingInfo+0x00000001)[r7], r7
	cmp r2, r7
	bnz9 .BB.LABEL.39_13
.BB.LABEL.39_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1611
	ld.hu 0x00000000[r5], r2
	mul 0x00000014, r2, r0
	ld.w 0x00000004[r6], r5
	add r2, r5
	ld.bu 0x0000000B[r5], r2
	ld.bu 0x00000002[r21], r6
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.39_7
.BB.LABEL.39_4:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1625
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.39_13
.BB.LABEL.39_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1627
	set1 0x00000000, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1629
	andi 0x0000FFFF, r20, r2
	mul 0x0000002C, r2, r0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r21
	ld.w LOWW(#_DemPbCfgPtr)[r21], r21
	ld.w 0x00000020[r21], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.39_13
.BB.LABEL.39_6:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1631
	andi 0x0000FFFF, r20, r2
	mul 0x0000002C, r2, r0
	ld.w 0x00000020[r21], r21
	add r2, r21
	ld.w 0x00000000[r21], r2
	br9 .BB.LABEL.39_12
.BB.LABEL.39_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1638
	movhi HIGHW1(#_DemDTCSettingInfo), r0, r2
	ld.bu LOWW(#_DemDTCSettingInfo)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.39_9
.BB.LABEL.39_8:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1641
	andi 0x000000FE, r6, r2
	st.b r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1643
	andi 0x0000FFFF, r20, r6
	jarl _Dem_DebounceFreeze, r31
	br9 .BB.LABEL.39_13
.BB.LABEL.39_9:	; if_else_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1647
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.39_13
.BB.LABEL.39_10:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1649
	set1 0x00000000, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1651
	andi 0x0000FFFF, r20, r2
	mul 0x0000002C, r2, r0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000020[r5], r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.39_13
.BB.LABEL.39_11:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1653
	andi 0x0000FFFF, r20, r2
	mul 0x0000002C, r2, r0
	ld.w 0x00000020[r5], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
.BB.LABEL.39_12:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000003, r6
	jarl [r2], r31
.BB.LABEL.39_13:	; if_break_bb146
	add 0x00000001, r20
.BB.LABEL.39_14:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1604
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r5
	andi 0x0000FFFF, r20, r6
	cmp r5, r6
	bl17 .BB.LABEL.39_1
.BB.LABEL.39_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1660
	dispose 0x00000000, 0x00000071, [r31]
_Dem_GetEventDTC:
	.stack _Dem_GetEventDTC = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1675
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1678
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1679
	ld.w 0x0000002C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1678
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1681
	st.w r0, 0x00000000[r8]
	ori 0x0000FFFF, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1682
	cmp r9, r6
	bz9 .BB.LABEL.40_14
.BB.LABEL.40_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1684
	cmp 0x00000000, r7
	bz9 .BB.LABEL.40_10
.BB.LABEL.40_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0xFFFFFFFF, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.40_7
.BB.LABEL.40_3:	; if_then_bb
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.40_14
.BB.LABEL.40_4:	; switch_clause_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1698
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1699
	ld.hu 0x00000006[r2], r2
	ori 0x0000FFFF, r0, r6
	cmp r6, r2
	bz9 .BB.LABEL.40_9
.BB.LABEL.40_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov r2, r6
	mul 0x0000000C, r6, r0
	add r5, r6
	ld.w 0x00000004[r6], r6
	mov 0x00FFFFFF, r7
	cmp r7, r6
	bz9 .BB.LABEL.40_9
.BB.LABEL.40_6:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1702
	mul 0x0000000C, r2, r0
	add r2, r5
	ld.w 0x00000004[r5], r2
	st.w r2, 0x00000000[r8]
	jmp [r31]
.BB.LABEL.40_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1687
	mul 0x00000014, r6, r0
	add r6, r2
	ld.w 0x00000000[r2], r2
	mov 0x00FFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1688
	cmp r5, r2
	bz9 .BB.LABEL.40_9
.BB.LABEL.40_8:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1690
	st.w r2, 0x00000000[r8]
	jmp [r31]
.BB.LABEL.40_9:	; if_else_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	st.w r0, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1726
	jmp [r31]
.BB.LABEL.40_10:	; switch_clause_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1710
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1711
	ld.hu 0x00000006[r2], r2
	ori 0x0000FFFF, r0, r6
	cmp r6, r2
	bz9 .BB.LABEL.40_13
.BB.LABEL.40_11:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov r2, r6
	mul 0x0000000C, r6, r0
	add r5, r6
	ld.hu 0x00000002[r6], r6
	ori 0x0000FFFF, r0, r7
	cmp r7, r6
	bz9 .BB.LABEL.40_13
.BB.LABEL.40_12:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1714
	mul 0x0000000C, r2, r0
	add r2, r5
	ld.hu 0x00000002[r5], r2
	st.w r2, 0x00000000[r8]
	jmp [r31]
.BB.LABEL.40_13:	; if_else_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1718
	st.w r0, 0x00000000[r8]
.BB.LABEL.40_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1726
	jmp [r31]
_Dem_DcmCheckDTCFilterStatus.1:
	.stack _Dem_DcmCheckDTCFilterStatus.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1740
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1747
	movhi HIGHW1(#_Dem_InitState), r0, r2
	ld.w LOWW(#_Dem_InitState)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.41_3
.BB.LABEL.41_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.41_2:	; if_then_bb
	movea 0x00000018, r0, r6
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1775
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.41_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1751
	cmp 0x00000000, r7
	bz9 .BB.LABEL.41_5
.BB.LABEL.41_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.41_6
.BB.LABEL.41_5:	; if_then_bb20
	movea 0x00000011, r0, r7
	br9 .BB.LABEL.41_2
.BB.LABEL.41_6:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1756
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000002), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000002)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.41_11
.BB.LABEL.41_7:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movhi HIGHW1(#_DemDTCFilterInfo), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo)[r2], r2
	cmp 0x00000008, r2
	bz9 .BB.LABEL.41_9
.BB.LABEL.41_8:	; bb28
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.41_10
.BB.LABEL.41_9:	; bb28.if_break_bb82_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.41_13
.BB.LABEL.41_10:	; bb49
	movhi HIGHW1(#_DemDTCFilterInfo+0x00000004), r0, r2
	ld.bu LOWW(#_DemDTCFilterInfo+0x00000004)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.41_9
.BB.LABEL.41_11:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1765
	movhi HIGHW1(#_Dem_Pending), r0, r2
	ld.bu LOWW(#_Dem_Pending)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.41_14
.BB.LABEL.41_12:	; if_else_bb72.if_break_bb82_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000002, r10
.BB.LABEL.41_13:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1775
	zxb r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.41_14:	; if_else_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1771
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DcmSubClearDTC.1:
	.stack _Dem_DcmSubClearDTC.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1799
	prepare 0x00000479, 0x00000000
	mov 0x00FFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1805
	mov r6, r5
	and r2, r5
	cmp r2, r5
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.42_2
.BB.LABEL.42_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1807
	movhi HIGHW1(#_DemClearDTCInfo+0x00000004), r0, r21
	mov 0x00000001, r22
	st.b r22, LOWW(#_DemClearDTCInfo+0x00000004)[r21]
	mov 0x00000003, r23
	br9 .BB.LABEL.42_10
.BB.LABEL.42_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1813
	mov r22, r6
	mov r21, r7
	jarl _Dem_GetDTCIndex, r31
	ori 0x0000FFFF, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1814
	cmp r23, r10
	bz9 .BB.LABEL.42_5
.BB.LABEL.42_3:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1826
	add r10, r10
	mov #_DemDTCGeneralStatus, r23
	add r10, r23
	ld.bu 0x00000001[r23], r23
	cmp 0x00000001, r23
	bz9 .BB.LABEL.42_5
.BB.LABEL.42_4:	; if_else_bb21.if_break_bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000003, r23
	br9 .BB.LABEL.42_6
.BB.LABEL.42_5:	; if_then_bb31
	jarl _Dem_ResetDemClearDTCInfo.1, r31
	mov 0x00000001, r23
.BB.LABEL.42_6:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1832
	cmp 0x00000003, r23
	bnz9 .BB.LABEL.42_10
.BB.LABEL.42_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1834
	mov #_DemClearDTCInfo, r24
	st.b r0, 0x00000004[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1835
	mov r22, r6
	jarl _Dem_GetDTCGroupIndex.1, r31
	st.b r10, 0x00000005[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1836
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.42_10
.BB.LABEL.42_8:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1838
	mov r22, r6
	mov r21, r7
	jarl _Dem_GetDTCIndex, r31
	movhi HIGHW1(#_DemClearDTCInfo), r0, r2
	st.h r10, LOWW(#_DemClearDTCInfo)[r2]
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1839
	cmp r2, r10
	bnz9 .BB.LABEL.42_10
.BB.LABEL.42_9:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1841
	jarl _Dem_ResetDemClearDTCInfo.1, r31
	mov 0x00000001, r23
.BB.LABEL.42_10:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1848
	cmp 0x00000003, r23
	bnz9 .BB.LABEL.42_12
.BB.LABEL.42_11:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1850
	movhi HIGHW1(#_DemClearDTCInfo+0x00000006), r0, r23
	st.b r20, LOWW(#_DemClearDTCInfo+0x00000006)[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1851
	movhi HIGHW1(#_Dem_Pending), r0, r23
	mov 0x00000001, r2
	st.b r2, LOWW(#_Dem_Pending)[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1852
	jarl _Dem_ClearDTCProcess, r31
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1864
	movhi HIGHW1(#_Dem_ClearNonvolatileStatus), r0, r23
	st.w r10, LOWW(#_Dem_ClearNonvolatileStatus)[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1865
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.42_12:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1869
	andi 0x000000FF, r23, r10
	dispose 0x00000000, 0x00000479, [r31]
_Dem_CheckEventInternalMemDest.1:
	.stack _Dem_CheckEventInternalMemDest.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1884
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1889
	mov r7, r6
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1891
	cmp 0x00000000, r10
	bz9 .BB.LABEL.43_5
.BB.LABEL.43_1:	; entry.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.43_4
.BB.LABEL.43_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1895
	andi 0x000000FF, r2, r5
	add r10, r5
	ld.bu 0x0000000E[r5], r5
	cmp r5, r20
	bz9 .BB.LABEL.43_6
.BB.LABEL.43_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1900
	add 0x00000001, r2
.BB.LABEL.43_4:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1893
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.43_2
.BB.LABEL.43_5:	; entry.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movea 0x000000FF, r0, r2
.BB.LABEL.43_6:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1905
	andi 0x000000FF, r2, r10
	dispose 0x00000000, 0x00000041, [r31]
_Dem_CheckDTCFormat.1:
	.stack _Dem_CheckDTCFormat.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1920
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1923
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1925
	mov r7, r8
	mul 0x00000014, r8, r0
	add r5, r8
	ori 0x0000FFFF, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1927
	cmp r9, r7
	ld.hu 0x00000006[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1924
	ld.w 0x0000002C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1927
	bz9 .BB.LABEL.44_3
.BB.LABEL.44_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.44_3
.BB.LABEL.44_2:	; bb31
	mov r7, r9
	mul 0x00000014, r9, r0
	add r9, r5
	ld.w 0x00000000[r5], r5
	mov 0x00FFFFFF, r9
	cmp r9, r5
	bnz9 .BB.LABEL.44_12
.BB.LABEL.44_3:	; if_else_bb
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1932
	cmp r5, r7
	bz9 .BB.LABEL.44_7
.BB.LABEL.44_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.44_7
.BB.LABEL.44_5:	; if_else_bb
	ori 0x0000FFFF, r0, r5
	cmp r5, r8
	bz9 .BB.LABEL.44_7
.BB.LABEL.44_6:	; bb69
	mov r8, r5
	mul 0x0000000C, r5, r0
	add r2, r5
	ld.hu 0x00000002[r5], r5
	ori 0x0000FFFF, r0, r9
	cmp r9, r5
	bnz9 .BB.LABEL.44_12
.BB.LABEL.44_7:	; if_else_bb95
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1939
	cmp r5, r7
	bz9 .BB.LABEL.44_10
.BB.LABEL.44_8:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.44_10
.BB.LABEL.44_9:	; if_else_bb95
	ori 0x0000FFFF, r0, r5
	cmp r5, r8
	bnz9 .BB.LABEL.44_11
.BB.LABEL.44_10:	; if_else_bb95.if_break_bb144_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.44_13
.BB.LABEL.44_11:	; bb117
	mul 0x0000000C, r8, r0
	add r8, r2
	ld.w 0x00000004[r2], r2
	mov 0x00FFFFFF, r5
	cmp r5, r2
	bz9 .BB.LABEL.44_10
.BB.LABEL.44_12:	; if_then_bb141
	mov 0x00000001, r10
.BB.LABEL.44_13:	; if_break_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1951
	jmp [r31]
_Dem_EventTestFailed:
	.stack _Dem_EventTestFailed = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1966
	prepare 0x000007F9, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1969
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r21
	mov r20, r22
	mul 0x0000002C, r22, r0
	add r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1977
	ld.hu 0x00000010[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1972
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1970
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r24
	add r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1977
	ld.bu 0x00000004[r24], r2
	addi 0x00000004, r24, r25
	andi 0x00000001, r2, r2
	addi 0x00000000, r10, r26
	bz9 .BB.LABEL.45_9
.BB.LABEL.45_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.45_9
.BB.LABEL.45_2:	; entry.bb66_crit_edge
	mov 0x00000000, r27
	br9 .BB.LABEL.45_6
.BB.LABEL.45_3:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1983
	ld.bu 0x00000000[r2], r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.bu 0x00000005[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.45_5
.BB.LABEL.45_4:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1986
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	mov 0x00000001, r7
	jarl _Dem_SetOccurrenceEvent, r31
.BB.LABEL.45_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0x00000001, r27
.BB.LABEL.45_6:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1979
	andi 0x000000FF, r27, r0
	bnz9 .BB.LABEL.45_8
.BB.LABEL.45_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	andi 0x000000FF, r27, r2
	add r26, r2
	ld.bu 0x0000000E[r2], r5
	add 0x0000000E, r2
	addi 0xFFFFFF01, r5, r0
	bnz9 .BB.LABEL.45_3
.BB.LABEL.45_8:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1989
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	set1 0x00000005, 0x00000002[r5]
.BB.LABEL.45_9:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1993
	ld.b 0x00000000[r25], r2
	ori 0x00000023, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1995
	andi 0x000000AF, r2, r2
	st.b r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1996
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r27
	add r2, r27
	set1 0x00000007, 0x00000002[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2032
	mov r24, r6
	mov r22, r7
	jarl _Dem_EventTestFailedProcessOfComponent, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2034
	ld.bu 0x00000002[r27], r6
	movea 0x00000020, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 1996
	add 0x00000002, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2034
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_11
.BB.LABEL.45_10:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2036
	mov r20, r6
	jarl _Dem_EventDataStorageTrigger, r31
.BB.LABEL.45_11:	; if_break_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2057
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	st.b r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2066
	ld.bu 0x00000000[r25], r6
	mov 0x00000004, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.45_13
.BB.LABEL.45_12:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2069
	set1 0x00000002, 0x00000000[r25]
.BB.LABEL.45_13:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2088
	ld.bu 0x00000000[r25], r6
	mov 0x00000008, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.45_24
.BB.LABEL.45_14:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2091
	mov r20, r2
	mul 0x0000002C, r2, r0
	add r21, r2
	ld.bu 0x0000001B[r2], r2
	mov r20, r5
	mul 0x0000000C, r5, r0
	mov #_DemEventRelateInformation, r6
	add r5, r6
	ld.bu 0x00000007[r6], r5
	add 0x00000001, r5
	cmp r2, r5
	bl9 .BB.LABEL.45_24
.BB.LABEL.45_15:	; if_then_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2122
	cmp r2, r23
	bz9 .BB.LABEL.45_20
.BB.LABEL.45_16:	; if_then_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	cmp 0x00000000, r26
	bz9 .BB.LABEL.45_20
.BB.LABEL.45_17:	; if_then_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2131
	ld.bu 0x0000000E[r26], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.45_20
.BB.LABEL.45_18:	; bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.bu 0x00000005[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.45_20
.BB.LABEL.45_19:	; if_then_bb218
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2134
	mov r20, r6
	jarl _Dem_SetOccurrenceEvent, r31
.BB.LABEL.45_20:	; if_break_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2139
	mov r20, r2
	mul 0x0000002C, r2, r0
	add r2, r21
	ld.bu 0x00000020[r21], r7
	mov #_DemOperationCycleStatus, r6
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	movea 0x00000020, r21, r2
	bz9 .BB.LABEL.45_22
.BB.LABEL.45_21:	; bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000034[r5], r5
	ld.bu 0x00000000[r2], r2
	mulh 0x00000003, r2
	add r2, r5
	ld.bu 0x00000002[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.45_23
.BB.LABEL.45_22:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2148
	set1 0x00000003, 0x00000000[r25]
.BB.LABEL.45_23:	; if_break_bb259
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2156
	mov r20, r6
	jarl _Dem_EventDataStorageTrigger, r31
.BB.LABEL.45_24:	; if_break_bb263
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2177
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r21
	add r2, r21
	ld.bu 0x00000006[r21], r2
	add 0x00000006, r21
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.45_30
.BB.LABEL.45_25:	; bb270
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov r20, r6
	jarl _Dem_CheckEventMemEntryExistsAlready, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_30
.BB.LABEL.45_26:	; bb282
	ld.bu 0x00000000[r25], r6
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_30
.BB.LABEL.45_27:	; bb290
	ld.bu 0x00000000[r27], r6
	movea 0x00000020, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_30
.BB.LABEL.45_28:	; bb312
	ld.bu 0x00000000[r25], r6
	mov 0x00000008, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_30
.BB.LABEL.45_29:	; if_then_bb328
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2184
	ld.b 0x00000000[r21], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r21]
.BB.LABEL.45_30:	; if_break_bb333
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2188
	mov r24, r6
	mov r22, r7
	jarl _Dem_CheckWIROn, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.45_32
.BB.LABEL.45_31:	; if_then_bb341
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2191
	set1 0x00000007, 0x00000000[r25]
.BB.LABEL.45_32:	; if_break_bb348
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2201
	ld.bu 0x00000000[r27], r6
	movea 0x00000020, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_34
.BB.LABEL.45_33:	; if_then_bb357
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2203
	clr1 0x00000005, 0x00000000[r27]
.BB.LABEL.45_34:	; if_break_bb364
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2206
	mov r20, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2207
	mov r20, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
	dispose 0x00000000, 0x000007F9, [r31]
_Dem_EventTestPassed:
	.stack _Dem_EventTestPassed = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2222
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2227
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r21
	add r2, r21
	ld.bu 0x00000004[r21], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2225
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r20, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2227
	ld.hu 0x00000010[r2], r22
	mov 0x00000001, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	add 0x00000004, r21
	cmp 0x00000000, r10
	bz9 .BB.LABEL.46_2
.BB.LABEL.46_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2229
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	set1 0x00000005, 0x00000002[r5]
.BB.LABEL.46_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2248
	ld.bu 0x00000000[r21], r2
	andi 0x000000AE, r2, r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2249
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	clr1 0x00000007, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2250
	mov r20, r6
	jarl _Dem_InterEventTestPassed, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2251
	cmp r2, r22
	bz9 .BB.LABEL.46_4
.BB.LABEL.46_3:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2258
	mov r20, r6
	jarl _Dem_UpdateCombinedDtcStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2259
	mov r20, r6
	jarl _Dem_ResponseOnDtcStatusChange, r31
.BB.LABEL.46_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2265
	dispose 0x00000000, 0x00000071, [r31]
_Dem_EntryChronologicalOrderUpdate.1:
	.stack _Dem_EntryChronologicalOrderUpdate.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2279
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2286
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2287
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2289
	ld.bu 0x00000004[r5], r5
	mov 0x00000000, r6
	br9 .BB.LABEL.47_9
.BB.LABEL.47_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2297
	andi 0x000000FF, r6, r9
	mul 0x0000002A, r9, r0
	add r2, r9
	ld.hu 0x00000028[r9], r9
	ld.hu 0x00000028[r8], r10
	cmp r9, r10
	bnz9 .BB.LABEL.47_8
.BB.LABEL.47_2:	; bb.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.47_6
.BB.LABEL.47_3:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2302
	andi 0x000000FF, r6, r9
	mul 0x0000002A, r9, r0
	add r2, r9
	ld.bu 0x0000001F[r9], r9
	ld.bu 0x0000001F[r8], r10
	cmp r9, r10
	bnc9 .BB.LABEL.47_5
.BB.LABEL.47_4:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2304
	andi 0x000000FF, r6, r9
	mul 0x0000002A, r9, r0
	add r2, r9
	ld.b 0x0000001F[r9], r10
	add 0xFFFFFFFF, r10
	st.b r10, 0x0000001F[r9]
.BB.LABEL.47_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0x00000001, r6
.BB.LABEL.47_6:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2300
	andi 0x000000FF, r6, r9
	cmp r5, r9
	bl9 .BB.LABEL.47_3
.BB.LABEL.47_7:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2307
	mulh 0x0000000A, r7
	mov #_DemMemDestInfo, r2
	add r7, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x0000001F[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2312
	jmp [r31]
.BB.LABEL.47_8:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0x00000001, r6
.BB.LABEL.47_9:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2289
	andi 0x000000FF, r6, r9
	cmp r5, r9
	bl9 .BB.LABEL.47_1
.BB.LABEL.47_10:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2316
	jmp [r31]
_Dem_MemEntryAllocate:
	.stack _Dem_MemEntryAllocate = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2333
	prepare 0x00000079, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2335
	st.w r0, 0x00000000[r3]
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2340
	jarl _Dem_CheckEntryAlreadyAllocated, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.bu 0x00000002[r5], r6
	movea 0x00000040, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.48_3
.BB.LABEL.48_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2343
	st.w r0, 0x00000000[r3]
	jr .BB.LABEL.48_20
.BB.LABEL.48_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2345
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r22
	add r2, r22
	ld.bu 0x00000002[r22], r6
	mov 0x00000008, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	add 0x00000002, r22
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.48_6
.BB.LABEL.48_4:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	ld.bu 0x00000000[r22], r6
	movea 0x00000020, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.48_6
.BB.LABEL.48_5:	; bb37.bb48_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.48_7
.BB.LABEL.48_6:	; bb47
	mov 0x00000001, r2
.BB.LABEL.48_7:	; bb48
	cmp 0x00000000, r2
	ld.bu 0x00000000[r22], r6
	bnz9 .BB.LABEL.48_9
.BB.LABEL.48_8:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2350
	andi 0x000000DF, r6, r20
	st.b r20, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2351
	st.w r0, 0x00000000[r3]
	br9 .BB.LABEL.48_20
.BB.LABEL.48_9:	; if_else_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2354
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.48_20
.BB.LABEL.48_10:	; if_else_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2359
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.48_18
.BB.LABEL.48_11:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2362
	mov r21, r7
	jarl _Dem_MemEntryGet.1, r31
	st.w r10, 0x00000000[r3]
	mov r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2363
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.48_13
.BB.LABEL.48_12:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2365
	mulhi 0x0000000A, r21, r22
	mov #_DemMemDestInfo, r2
	add r22, r2
	mov 0x00000001, r22
	st.b r22, 0x00000009[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2368
	mov r21, r7
	jarl _Dem_EventDisplacementProcess, r31
	st.w r10, 0x00000000[r3]
	br9 .BB.LABEL.48_14
.BB.LABEL.48_13:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2374
	jarl _Dem_CallDataChangedOfMemEntryAllocate, r31
.BB.LABEL.48_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2376
	ld.w 0x00000000[r3], r22
	cmp 0x00000000, r22
	bz9 .BB.LABEL.48_20
.BB.LABEL.48_15:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2378
	mulhi 0x0000000A, r21, r22
	mov #_DemMemDestInfo, r23
	add r22, r23
	ld.bu 0x00000000[r23], r22
	shl 0x00000003, r21
	mov #_DemMemDestCfg, r2
	add r21, r2
	ld.bu 0x00000004[r2], r21
	cmp r21, r22
	bnc9 .BB.LABEL.48_17
.BB.LABEL.48_16:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2380
	add 0x00000001, r22
	st.b r22, 0x00000000[r23]
.BB.LABEL.48_17:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2382
	ld.w 0x00000000[r3], r21
	mov r20, r6
	jarl _Dem_GetEventExternalId.1, r31
	st.h r10, 0x00000028[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2384
	ld.b 0x00000000[r23], r21
	ld.w 0x00000000[r3], r22
	st.b r21, 0x0000001F[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2386
	ld.w 0x00000000[r3], r21
	st.b r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2387
	ld.w 0x00000000[r3], r21
	st.b r0, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2390
	mul 0x0000000C, r20, r0
	mov #_DemEventRelateInformation, r21
	add r20, r21
	st.b r0, 0x00000006[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2400
	st.b r0, 0x00000007[r21]
	br9 .BB.LABEL.48_20
.BB.LABEL.48_18:	; if_else_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2406
	ld.bu 0x00000000[r22], r6
	movea 0x00000020, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.48_20
.BB.LABEL.48_19:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2413
	ld.w 0x00000000[r3], r8
	mov r20, r6
	mov r21, r7
	jarl _Dem_EntryChronologicalOrderUpdate.1, r31
.BB.LABEL.48_20:	; if_break_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2416
	ld.w 0x00000000[r3], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2417
	dispose 0x00000004, 0x00000079, [r31]
_Dem_CopyInfoFromInfo.1:
	.stack _Dem_CopyInfoFromInfo.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2432
	ld.b 0x00000004[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2436
	st.b r2, 0x00000020[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2437
	ld.b 0x00000008[r6], r2
	st.b r2, 0x00000021[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2438
	ld.b 0x00000006[r6], r2
	st.b r2, 0x00000024[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2439
	ld.b 0x00000009[r6], r2
	st.b r2, 0x00000022[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2440
	ld.b 0x00000007[r6], r2
	st.b r2, 0x00000023[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2460
	ld.b 0x0000000A[r6], r2
	st.b r2, 0x00000025[r7]
	jmp [r31]
_Dem_IntWriteNvRAM:
	.stack _Dem_IntWriteNvRAM = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2528
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r20
	mov r20, r21
	br9 .BB.LABEL.50_11
.BB.LABEL.50_1:	; bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2567
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_DemMemDestCfg, r6
	add r5, r6
	ld.bu 0x00000005[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.50_6
.BB.LABEL.50_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2569
	andi 0x0000FFFF, r21, r20
	mul 0x0000002A, r20, r0
	mov #_DemEventMemoryEntryStorage, r5
	add r20, r5
	andi 0x000000FF, r2, r6
	shl 0x00000003, r6
	mov #_DemMemDestCfg, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	add r20, r6
	movea 0x0000002A, r0, r8
	add r5, r8
	br9 .BB.LABEL.50_4
.BB.LABEL.50_3:	; if_then_bb
	ld.h 0x00000000[r6], r9
	st.h r9, 0x00000000[r5]
	add 0x00000002, r6
	add 0x00000002, r5
.BB.LABEL.50_4:	; if_then_bb
	cmp r5, r8
	bnz9 .BB.LABEL.50_3
.BB.LABEL.50_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2570
	ld.w 0x00000000[r7], r5
	add r20, r5
	ld.hu 0x00000028[r5], r20
.BB.LABEL.50_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0x00000001, r2
.BB.LABEL.50_7:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2565
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.50_1
.BB.LABEL.50_8:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2573
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.50_10
.BB.LABEL.50_9:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2576
	andi 0x0000FFFF, r21, r2
	mul 0x0000002A, r2, r0
	mov #_DemEventMemoryEntryStorage, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2575
	zxh r20
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2576
	andi 0x0000FFFF, r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r6
	add r2, r6
	jarl _Dem_CopyInfoFromInfo.1, r31
.BB.LABEL.50_10:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	add 0x00000001, r21
.BB.LABEL.50_11:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2563
	andi 0x0000FFFF, r21, r2
	movea 0x0000003A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.50_13
.BB.LABEL.50_12:	; bb65.bb39_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.50_7
.BB.LABEL.50_13:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2579
	movhi HIGHW1(#_DemNvRamBlockId), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2581
	ld.hu LOWW(#_DemNvRamBlockId)[r2], r20
	mov r20, r6
	jarl _NvM_CancelJobs, r31
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2582
	mov r20, r6
	mov r21, r7
	jarl _NvM_WriteBlock, r31
	br9 .BB.LABEL.50_15
.BB.LABEL.50_14:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2589
	andi 0x0000FFFF, r21, r2
	mov #_DemEventRelateInformationStorage, r5
	add r2, r5
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r6
	add r2, r6
	ld.b 0x00000004[r6], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2594
	ld.b 0x0000000A[r6], r2
	st.b r2, 0x0000003B[r5]
	add 0x00000001, r21
.BB.LABEL.50_15:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2587
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.hu 0x00000024[r2], r2
	andi 0x0000FFFF, r21, r5
	cmp r2, r5
	bl9 .BB.LABEL.50_14
.BB.LABEL.50_16:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2613
	mov #_DemDTCByOccurrenceTimeInfo, r2
	ld.h 0x00000004[r2], r5
	mov #_DemEventRelateInformationStorage, r6
	st.h r5, 0x000000F0[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2614
	ld.h 0x00000000[r2], r5
	st.h r5, 0x000000EC[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2615
	ld.h 0x00000006[r2], r5
	st.h r5, 0x000000F2[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2616
	ld.h 0x00000002[r2], r2
	st.h r2, 0x000000EE[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2618
	movhi HIGHW1(#_DemNvRamBlockId+0x00000002), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2619
	ld.hu LOWW(#_DemNvRamBlockId+0x00000002)[r2], r20
	mov r20, r6
	jarl _NvM_CancelJobs, r31
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Dcm.c", 2620
	mov r20, r6
	jarl _NvM_WriteBlock, r31
	dispose 0x00000000, 0x00000061, [r31]
	.section .bss, bss
	.align 2
_DemDTCFilterInfo:
	.ds (374)
_DemDTCSettingInfo:
	.ds (2)
	.align 2
_DemDTCByOccurrenceTimeInfo:
	.ds (8)
	.align 2
_DTCRecordUpdateStatusInfo.1:
	.ds (4)
	.align 2
_DemFreezeFrameRecordFilterInfo:
	.ds (8)
	.section .data, data
_Dem_DTCStatusChangedInd:
	.ds (1)
_Dem_DTCDisable.2:
	.ds (1)
