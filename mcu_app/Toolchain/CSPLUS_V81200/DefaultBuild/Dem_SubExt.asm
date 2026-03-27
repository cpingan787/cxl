#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Dem\Dem_SubExt.c -oDefaultBuild\Dem_SubExt.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b83faa2a58f14e339a17af24f74c90ees1qzx43x.y4a
#@	compiled at Fri Mar 27 09:50:27 2026

	.file "..\..\Bsw\SystemServices\Dem\Dem_SubExt.c"

	$reg_mode 32
	.dbl_size 8

	.extern _DemFreezeFrameClass
	.extern _DemDidClass
	.extern _DemDidClassRef
	.extern _DemFreezeFrameRecordClass
	.extern _DemGlobalFreezeFrame
	.extern _DemFreezeFrameRecNumClass
	.extern _DemFreezeFrameRecordClassRef
	.extern _DemExtendedDataRecordClass
	.extern _DemExtendedDataClass
	.extern _DemExtendedDataRecordClassRef
	.extern _DemIndicatorAttribute
	.extern _DemMemDestCfg
	.extern _DemInternalData
	.extern _DemWIRStatus
	.extern _DemDebounceCounterInfo
	.extern _DemPbCfg
	.extern _DemPbCfgPtr
	.extern _Dem_Pending
	.extern _FDCInfo
	.extern _DemMemDestInfo
	.extern _DemEventRelateInformation
	.extern _DemDTCGeneralStatus
	.extern _DemDTCSettingInfo
	.extern _DemFreezeFrameRecordFilterInfo
	.extern _Det_ReportError
	.public _Dem_SubGetLampStatusOfJ1939DcmGetNextDTCwithLampStatus
	.public _Dem_DebounceProcessCounter
	.extern _Dem_GetEventInfo
	.public _Dem_EventQueueProcessWithDebounce
	.public _Dem_EventTestFailedProcessOfComponent
	.public _Dem_CheckWIROn
	.public _Dem_CheckWIROff
	.public _Dem_ResponseOnDtcStatusChange
	.extern _Dem_TriggerOnEventStatus
	.public _Dem_InterEventTestPassed
	.public _Dem_InterOperationCycleStart
	.public _Dem_CallDataChangedOfMemEntryAllocate
	.public _Dem_GetMemDestMaxNumOfDtc
	.public _Dem_GetDemWIRStatus
	.public _Dem_ClearEventRelateInformation
	.public _Dem_DeleteRelatedData
	.public _Dem_EventDataStorageTrigger
	.extern _Dem_MemEntryAllocate
	.extern _Dem_IntWriteNvRAM
	.public _Dem_DebounceInit
	.public _Dem_DebounceReset
	.public _Dem_GetInteralFDC
	.public _Dem_DebounceProcess
	.public _Dem_DebounceTimerMain
	.public _Dem_UpdateFDC
	.extern _Dem_GetFaultDetectionCounter
	.public _Dem_InterIntReadNvRAM
	.public _Dem_InterDcmGetNextFilteredRecord
	.extern _Dem_GetEventDTC
	.public _Dem_InterDcmSetFreezeFrameRecordFilter
	.public _Dem_InterDcmGetFreezeFrameDataByDTC
	.extern _Dem_GetDTCIndex
	.public _Dem_InterDcmGetSizeOfFreezeFrameByDTC
	.public _Dem_GetExtendedDataRecordCfg
	.public _Dem_GetExtendedRecordDataLoop
	.public _Dem_InterDcmGetSizeOfExtendedDataRecordByDTC
	.public _Dem_InterDcmDisableDTCSetting
	.extern _Dem_SetDTCSettingProcess
	.public _Dem_InterDcmEnableDTCSetting
	.public _Dem_GetDemMalfunctionLampIndicator
	.public _Dem_CheckFreezeFrameIsStorage
	.public _Dem_GetFreezeFrame
	.public _Dem_ExtendedDataGetFromEntry
	.public _Dem_CheckExtendedDataIsStorage
	.public _Dem_FreezeFrameGetFromEntry

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r10
.BB.LABEL.1_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Ext.h", 382
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_4:	; bb17.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
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
_DEM_GET_BIT.1:
	.stack _DEM_GET_BIT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 77
	and r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 79
	cmp r7, r6
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 80
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
_Dem_MemCopy.1:
	.stack _Dem_MemCopy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 292
	mov 0x00000000, r2
	br9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 296
	mov r7, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r6, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.10_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 294
	cmp r8, r2
	bl9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 298
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
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
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
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 327
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
	br9 .BB.LABEL.12_4
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 601
	andi 0x000000FF, r2, r7
	mul 0x0000002A, r7, r0
	add r10, r7
	ld.hu 0x00000028[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 603
	zxb r2
	mul 0x0000002A, r2, r0
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 604
	jmp [r31]
.BB.LABEL.12_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r2
.BB.LABEL.12_4:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 599
	andi 0x000000FF, r2, r7
	cmp r5, r7
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_Internal.h", 608
	jmp [r31]
_Dem_SubGetLampStatusOfJ1939DcmGetNextDTCwithLampStatus:
	.stack _Dem_SubGetLampStatusOfJ1939DcmGetNextDTCwithLampStatus = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 357
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 367
	ld.bu 0x00000002[r6], r20
	addi 0xFFFFFF01, r20, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 364
	ld.bu 0x00000003[r6], r21
	mov r8, r22
	mov r7, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 367
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 369
	ld.bu 0x00000004[r23], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 372
	ld.h 0x00000000[r22], r2
	ori 0x00000004, r2, r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 374
	mov #_DemWIRStatus, r2
	add r20, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_8
.BB.LABEL.13_4:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 376
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 379
	ld.h 0x00000000[r22], r2
	ori 0x00000C00, r2, r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.13_6:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 385
	cmp 0x00000005, r21
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 388
	ld.h 0x00000000[r22], r2
	ori 0x00000400, r2, r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.13_8:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 394
	addi 0xFFFFFF01, r20, r0
	bnz9 .BB.LABEL.13_16
.BB.LABEL.13_9:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 396
	ld.bu 0x00000004[r23], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.13_11
.BB.LABEL.13_10:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 400
	ld.h 0x00000000[r22], r2
	ori 0x00000001, r2, r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.13_11:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 402
	mov #_DemWIRStatus, r2
	add r2, r20
	ld.bu 0x00000000[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_16
.BB.LABEL.13_12:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 404
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.13_14
.BB.LABEL.13_13:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 407
	ld.h 0x00000000[r22], r2
	ori 0x00000300, r2, r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.13_14:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 413
	cmp 0x00000005, r21
	bnz9 .BB.LABEL.13_16
.BB.LABEL.13_15:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 416
	ld.h 0x00000000[r22], r2
	ori 0x00000100, r2, r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.13_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 425
	dispose 0x00000000, 0x00000079, [r31]
_Dem_DebouceProcessPrePassedCounter.1:
	.stack _Dem_DebouceProcessPrePassedCounter.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 444
	ld.h 0x00000004[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 453
	ld.h 0x00000000[r7], r5
	cmp r5, r2
	ld.hu 0x00000000[r6], r5
	ld.hu 0x0000000A[r6], r8
	bge9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 455
	ld.bu 0x0000000C[r6], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 457
	st.h r2, 0x00000000[r7]
.BB.LABEL.14_3:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 460
	mov r8, r2
	sxh r2
	mov r5, r6
	sxh r6
	add r6, r2
	ld.hu 0x00000000[r7], r6
	mov r6, r9
	sxh r9
	cmp r9, r2
	blt9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_break_bb35.if_break_bb57_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 467
	sub r5, r6
	mov 0x00000002, r10
	mov r6, r8
.BB.LABEL.14_6:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	st.h r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 470
	zxb r10
	jmp [r31]
_Dem_DebouceProcessPreFailedCounter.1:
	.stack _Dem_DebouceProcessPreFailedCounter.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 484
	ld.h 0x00000006[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 493
	ld.h 0x00000000[r7], r5
	cmp r5, r2
	ld.hu 0x00000002[r6], r5
	ld.hu 0x00000008[r6], r8
	ble9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 495
	ld.bu 0x0000000D[r6], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 497
	st.h r2, 0x00000000[r7]
.BB.LABEL.15_3:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 500
	mov r8, r2
	sxh r2
	mov r5, r6
	sxh r6
	sub r6, r2
	ld.hu 0x00000000[r7], r6
	mov r6, r9
	sxh r9
	cmp r9, r2
	bgt9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_break_bb35.if_break_bb57_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 507
	add r5, r6
	mov 0x00000003, r10
	mov r6, r8
.BB.LABEL.15_6:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	st.h r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 510
	zxb r10
	jmp [r31]
_Dem_DebounceProcessCounter:
	.stack _Dem_DebounceProcessCounter = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 525
	prepare 0x00000041, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 527
	jarl _Dem_GetEventInternalId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 528
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 530
	mov r10, r6
	mul 0x0000002C, r6, r0
	add r5, r6
	ld.bu 0x00000016[r6], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.16_9
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 534
	mov r10, r6
	mul 0x0000002C, r6, r0
	add r6, r5
	ld.hu 0x00000014[r5], r5
	mov r5, r6
	shl 0x00000002, r6
	mov #_DemDebounceCounterInfo, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 532
	ld.w 0x00000020[r2], r6
	mul 0x0000002C, r10, r0
	add r10, r6
	ld.hu 0x00000012[r6], r8
	mov r8, r6
	shl 0x00000004, r6
	ld.w 0x00000014[r2], r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 536
	cmp 0x00000000, r20
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	addi 0xFFFFFFFF, r20, r9
	cmp 0x00000000, r9
	bz9 .BB.LABEL.16_7
.BB.LABEL.16_3:	; if_then_bb
	cmp 0x00000001, r9
	bnz9 .BB.LABEL.16_8
.BB.LABEL.16_4:	; switch_clause_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 547
	jarl _Dem_DebouceProcessPrePassedCounter.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.16_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 540
	shl 0x00000004, r8
	add r8, r2
	ld.h 0x0000000A[r2], r2
.BB.LABEL.16_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	shl 0x00000002, r5
	mov #_DemDebounceCounterInfo, r6
	add r5, r6
	st.h r2, 0x00000000[r6]
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 556
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.16_7:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 544
	shl 0x00000004, r8
	add r8, r2
	ld.h 0x00000008[r2], r2
	br9 .BB.LABEL.16_6
.BB.LABEL.16_8:	; switch_clause_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 551
	jarl _Dem_DebouceProcessPreFailedCounter.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.16_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 556
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_Dem_UpdateInternalData.1:
	.stack _Dem_UpdateInternalData.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 706
	prepare 0x00000071, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 708
	movhi HIGHW1(#_DemPbCfg+0x00000020), r0, r2
	ld.w LOWW(#_DemPbCfg+0x00000020)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 712
	mov r20, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 720
	ld.hu 0x00000010[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 714
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 716
	mov r20, r6
	jarl _Dem_UpdateFDC, r31
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 717
	mov r22, r6
	jarl _Dem_DTCGetFaultDetectionCounter.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 719
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.b 0x00000006[r5], r2
	movhi HIGHW1(#_DemInternalData), r0, r5
	st.b r2, LOWW(#_DemInternalData)[r5]
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 720
	cmp r2, r21
	bz9 .BB.LABEL.17_8
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 722
	mov #_DemPbCfg, r2
	ld.w 0x00000004[r2], r5
	mov r21, r6
	mul 0x00000014, r6, r0
	add r6, r5
	ld.hu 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 724
	mov r5, r6
	mul 0x00000014, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 722
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 724
	add r2, r6
	ld.bu 0x00000000[r6], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 727
	movhi HIGHW1(#_DemInternalData+0x00000001), r0, r6
	st.b r0, LOWW(#_DemInternalData+0x00000001)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 729
	mov r5, r6
	mul 0x00000014, r6, r0
	add r2, r6
	ld.bu 0x00000002[r6], r6
	br9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 734
	mov r20, r6
	mul 0x0000000C, r6, r0
	mov #_DemEventRelateInformation, r7
	add r6, r7
	ld.b 0x00000008[r7], r6
	movhi HIGHW1(#_DemInternalData+0x00000001), r0, r8
	st.b r6, LOWW(#_DemInternalData+0x00000001)[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 736
	mov r5, r6
	mul 0x00000014, r6, r0
	add r2, r6
	ld.b 0x00000002[r6], r6
	ld.b 0x00000008[r7], r7
	sub r7, r6
.BB.LABEL.17_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov #_DemInternalData, r7
	st.b r6, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 740
	st.b r0, 0x00000003[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 739
	mov r5, r6
	mul 0x00000014, r6, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 747
	ld.bu 0x0000000E[r6], r6
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.17_7
.BB.LABEL.17_5:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 749
	mulh 0x0000000A, r6
	mov #_DemMemDestInfo, r7
	add r6, r7
	ld.bu 0x00000009[r7], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_6:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 753
	movhi HIGHW1(#_DemInternalData+0x00000003), r0, r6
	mov 0x00000001, r7
	st.b r7, LOWW(#_DemInternalData+0x00000003)[r6]
.BB.LABEL.17_7:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 758
	mul 0x00000014, r5, r0
	add r5, r2
	ld.b 0x00000008[r2], r2
	mov #_DemInternalData, r5
	st.b r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 762
	mul 0x00000003, r21, r0
	mov #_FDCInfo, r2
	add r21, r2
	ld.b 0x00000002[r2], r2
	st.b r2, 0x00000006[r5]
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 768
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000005[r5]
.BB.LABEL.17_8:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 786
	mul 0x0000000C, r20, r0
	mov #_DemEventRelateInformation, r21
	add r20, r21
	ld.b 0x00000007[r21], r2
	mov #_DemInternalData, r20
	st.b r2, 0x00000007[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 797
	ld.bu 0x00000004[r21], r6
	mov 0x00000004, r7
	jarl _DEM_GET_BIT.1, r31
	st.b r10, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 800
	ld.b 0x0000000A[r21], r2
	st.b r2, 0x00000009[r20]
	dispose 0x00000004, 0x00000071, [r31]
_Dem_DcmGetFreezeFrameDataByDTCProcess.1:
	.stack _Dem_DcmGetFreezeFrameDataByDTCProcess.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 817
	prepare 0x00000FFF, 0x00000008
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 828
	mov r2, r6
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 836
	cmp 0x00000000, r10
	ld.w 0x00000038[r3], r2
	bz17 .BB.LABEL.18_12
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 839
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov #_DemGlobalFreezeFrame, r10
	br9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 846
	add 0x0000000C, r10
.BB.LABEL.18_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 848
	ld.hu 0x00000000[r10], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 849
	mul 0x00000006, r2, r0
	mov #_DemFreezeFrameClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 850
	ld.hu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 849
	ld.bu 0x00000004[r5], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 852
	st.b r5, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 854
	ld.h 0x00000000[r22], r5
	add 0x00000001, r5
	st.h r5, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 850
	add r2, r2
	mov #_DemDidClassRef, r23
	add r2, r23
	mov 0x00000001, r24
	mov 0x00000000, r25
	mov r25, r26
	br9 .BB.LABEL.18_11
.BB.LABEL.18_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 861
	andi 0x0000FFFF, r24, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 858
	ld.hu 0x00000000[r23], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 861
	mov r27, r5
	mul 0x00000006, r5, r0
	mov #_DemDidClass, r6
	add r5, r6
	ld.hu 0x00000000[r6], r5
	shr 0x00000008, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 862
	addi 0x00000001, r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 863
	zxh r2
	add r21, r2
	ld.b 0x00000000[r6], r5
	st.b r5, 0x00000000[r2]
	ld.w 0x00000004[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 866
	mov r2, r6
	jarl _Dem_UpdateInternalData.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 864
	add 0x00000002, r24
	mov 0x00000000, r28
	mov r28, r29
	br9 .BB.LABEL.18_9
.BB.LABEL.18_6:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 869
	mov r27, r2
	mul 0x00000006, r2, r0
	mov #_DemDidClass, r5
	add r2, r5
	ld.hu 0x00000002[r5], r2
	andi 0x000000FF, r28, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 872
	mov r2, r5
	shl 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 869
	movhi HIGHW1(#_DemPbCfgPtr), r0, r6
	ld.w LOWW(#_DemPbCfgPtr)[r6], r6
	ld.w 0x00000040[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 872
	add r6, r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.18_8
.BB.LABEL.18_7:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 874
	shl 0x00000003, r2
	add r2, r6
	ld.bu 0x00000001[r6], r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 875
	andi 0x0000FFFF, r26, r7
	add r20, r7
	andi 0x0000FFFF, r24, r6
	add r21, r6
	mov r30, r8
	jarl _Dem_MemCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 878
	add r30, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 877
	add r30, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 876
	add r30, r24
.BB.LABEL.18_8:	; if_break_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r28
.BB.LABEL.18_9:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 867
	mov r27, r2
	mul 0x00000006, r2, r0
	mov #_DemDidClass, r5
	add r2, r5
	ld.bu 0x00000004[r5], r2
	andi 0x000000FF, r28, r5
	cmp r2, r5
	bl9 .BB.LABEL.18_6
.BB.LABEL.18_10:	; bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 882
	zxb r29
	ld.h 0x00000000[r22], r2
	add r2, r29
	add 0x00000002, r29
	st.h r29, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 883
	add 0x00000001, r25
	add 0x00000002, r23
.BB.LABEL.18_11:	; bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 856
	andi 0x0000FFFF, r25, r2
	ld.w 0x00000000[r3], r5
	cmp r5, r2
	blt9 .BB.LABEL.18_5
.BB.LABEL.18_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 889
	dispose 0x00000008, 0x00000FFF, [r31]
_Dem_DcmGetSizeOfExtDataRecLoop.1:
	.stack _Dem_DcmGetSizeOfExtDataRecLoop.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 905
	prepare 0x00000071, 0x00000000
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 911
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 915
	mul 0x00000014, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 916
	ld.hu 0x00000010[r5], r5
	add r5, r5
	ld.w 0x00000044[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 922
	ld.hu 0x00000000[r2], r6
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	mov r20, r7
	jarl _Dem_MemEntryGet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 923
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 925
	ld.h 0x00000000[r21], r2
	ld.bu 0x00000007[r22], r5
	add r5, r2
	st.h r2, 0x00000000[r21]
.BB.LABEL.19_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 931
	dispose 0x00000000, 0x00000071, [r31]
_Dem_FreezeFrameStorage.1:
	.stack _Dem_FreezeFrameStorage.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 946
	prepare 0x00000779, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 952
	jarl _Dem_EventDTCAttributesCfg.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 968
	mov r20, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 971
	movhi HIGHW1(#_DemGlobalFreezeFrame+0x00000003), r0, r2
	ld.bu LOWW(#_DemGlobalFreezeFrame+0x00000003)[r2], r2
	cmp r2, r22
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	cmp 0x00000002, r22
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; bb31
	ld.bu 0x00000002[r10], r6
	mov 0x00000002, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_3:	; bb51
	ld.bu 0x00000010[r21], r2
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 976
	mov #_DemGlobalFreezeFrame, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 977
	ld.b 0x00000002[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 979
	ld.hu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 977
	st.b r5, 0x00000010[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 979
	movea 0x00000011, r21, r7
	jarl _Dem_GetGeneralFreezeFrame.1, r31
.BB.LABEL.20_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 983
	cmp 0x00000000, r23
	bz9 .BB.LABEL.20_20
.BB.LABEL.20_6:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ld.bu 0x00000006[r23], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.20_20
.BB.LABEL.20_7:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 986
	ld.bu 0x00000006[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 988
	mov r23, r2
	shl 0x00000002, r2
	mov #_DemFreezeFrameRecNumClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 989
	ld.bu 0x00000002[r5], r24
	mov 0x00000000, r25
	br9 .BB.LABEL.20_19
.BB.LABEL.20_8:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 991
	mov r23, r2
	shl 0x00000002, r2
	mov #_DemFreezeFrameRecNumClass, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	andi 0x000000FF, r25, r5
	add r5, r2
	mov #_DemFreezeFrameRecordClassRef, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 992
	ld.bu 0x00000000[r5], r26
	addi 0xFFFFFF01, r26, r0
	bz9 .BB.LABEL.20_18
.BB.LABEL.20_9:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 994
	mov r20, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 996
	mulhi 0x00000003, r26, r2
	mov #_DemFreezeFrameRecordClass, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp r2, r22
	bnz9 .BB.LABEL.20_18
.BB.LABEL.20_10:	; bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	cmp 0x00000002, r22
	bnz9 .BB.LABEL.20_12
.BB.LABEL.20_11:	; bb135
	ld.bu 0x00000002[r10], r6
	mov 0x00000002, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_18
.BB.LABEL.20_12:	; if_then_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1002
	andi 0x000000FF, r25, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1003
	mov r7, r2
	mul 0x0000000E, r2, r0
	add r21, r2
	ld.bu 0x00000002[r2], r5
	add 0x00000002, r2
	addi 0xFFFFFF01, r5, r0
	bnz9 .BB.LABEL.20_14
.BB.LABEL.20_13:	; if_then_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1005
	ld.b 0x00000000[r21], r5
	add 0x00000001, r5
	st.b r5, 0x00000000[r21]
.BB.LABEL.20_14:	; if_break_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1009
	ld.bu 0x00000000[r2], r5
	addi 0xFFFFFF01, r5, r0
	bnz9 .BB.LABEL.20_16
.BB.LABEL.20_15:	; bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mulhi 0x00000003, r26, r5
	mov #_DemFreezeFrameRecordClass, r6
	add r5, r6
	ld.bu 0x00000002[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.20_17
.BB.LABEL.20_16:	; bb198
	mulhi 0x00000003, r26, r5
	mov #_DemFreezeFrameRecordClass, r6
	add r5, r6
	ld.bu 0x00000002[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.20_18
.BB.LABEL.20_17:	; if_then_bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1032
	mulh 0x00000003, r26
	mov #_DemFreezeFrameRecordClass, r5
	add r26, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1034
	mulh 0x0000000E, r7
	add r21, r7
	add 0x00000003, r7
	mov r20, r6
	jarl _Dem_FreezeFrameCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1035
	st.b r25, 0x00000001[r21]
.BB.LABEL.20_18:	; if_break_bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r25
.BB.LABEL.20_19:	; bb231
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 989
	andi 0x000000FF, r25, r2
	cmp r24, r2
	bl9 .BB.LABEL.20_8
.BB.LABEL.20_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1070
	dispose 0x00000000, 0x00000779, [r31]
_Dem_FreezeFrameGetByRecordNum.1:
	.stack _Dem_FreezeFrameGetByRecordNum.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1085
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1088
	addi 0x00000002, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1090
	cmp 0x00000000, r2
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1092
	addi 0xFFFFFF01, r7, r0
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1094
	ld.bu 0x00000001[r6], r2
	mulh 0x0000000E, r2
	add r2, r6
	addi 0x00000002, r6, r10
	jmp [r31]
.BB.LABEL.21_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1102
	ld.bu 0x00000002[r6], r2
	cmp r2, r7
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1104
	jmp [r31]
.BB.LABEL.21_5:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1113
	jmp [r31]
_Dem_EventQueueProcessWithDebounce:
	.stack _Dem_EventQueueProcessWithDebounce = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1129
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1131
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1132
	mul 0x0000002C, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1134
	ld.bu 0x00000016[r2], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1132
	ld.hu 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1134
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x0000003A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1140
	shl 0x00000002, r2
	mov #_DemDebounceCounterInfo, r5
	add r2, r5
	st.h r0, 0x00000000[r5]
.BB.LABEL.22_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1158
	jmp [r31]
_Dem_EventTestFailedProcessOfComponent:
	.stack _Dem_EventTestFailedProcessOfComponent = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1173
	jmp [r31]
_Dem_CheckWIROn:
	.stack _Dem_CheckWIROn = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1297
	mov 0x00000000, r10
	mov r10, r2
	br9 .BB.LABEL.24_6
.BB.LABEL.24_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1312
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000020[r5], r5
	ld.hu 0x00000000[r6], r8
	mul 0x0000002C, r8, r0
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1313
	ld.hu 0x00000018[r7], r8
	andi 0x000000FF, r2, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1314
	mov r8, r9
	shl 0x00000002, r9
	mov #_DemIndicatorAttribute, r11
	add r9, r11
	ld.bu 0x00000000[r11], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1315
	ld.bu 0x00000007[r6], r11
	cmp r11, r9
	ld.hu 0x00000028[r5], r5
	bnh9 .BB.LABEL.24_4
.BB.LABEL.24_2:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ori 0x0000FFFF, r0, r11
	cmp r11, r5
	bz9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; bb43
	mul 0x0000000C, r5, r0
	mov #_DemEventRelateInformation, r11
	add r5, r11
	ld.bu 0x00000007[r11], r5
	cmp r5, r9
	bh9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1325
	shl 0x00000002, r8
	mov #_DemIndicatorAttribute, r5
	add r8, r5
	ld.bu 0x00000002[r5], r8
	mov #_DemWIRStatus, r9
	add r8, r9
	ld.b 0x00000003[r5], r5
	st.b r5, 0x00000000[r9]
	mov 0x00000001, r10
.BB.LABEL.24_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r2
.BB.LABEL.24_6:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1309
	andi 0x000000FF, r2, r5
	ld.bu 0x0000001A[r7], r8
	cmp r8, r5
	bl9 .BB.LABEL.24_1
.BB.LABEL.24_7:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1358
	zxb r10
	jmp [r31]
_Dem_CheckWIROff:
	.stack _Dem_CheckWIROff = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1433
	prepare 0x000007F9, 0x00000000
	mov 0x00000000, r20
	mov r7, r21
	mov r6, r22
	mov r20, r23
	mov r20, r24
	jr .BB.LABEL.25_17
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1454
	ld.hu 0x00000018[r21], r25
	andi 0x000000FF, r23, r2
	add r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1456
	mov r25, r2
	shl 0x00000002, r2
	mov #_DemIndicatorAttribute, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	ld.bu 0x00000009[r22], r5
	cmp r5, r2
	bh9 .BB.LABEL.25_16
.BB.LABEL.25_2:	; bb.bb132_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.25_11
.BB.LABEL.25_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1462
	mov r25, r5
	shl 0x00000002, r5
	mov #_DemIndicatorAttribute, r6
	add r6, r5
	ld.bu 0x00000002[r5], r5
	andi 0x0000FFFF, r26, r7
	mul 0x0000002C, r7, r0
	ld.w 0x00000020[r2], r8
	add r7, r8
	ld.hu 0x00000018[r8], r7
	andi 0x000000FF, r27, r8
	add r8, r7
	shl 0x00000002, r7
	add r7, r6
	ld.bu 0x00000002[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.25_7
.BB.LABEL.25_4:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	andi 0x0000FFFF, r26, r5
	mov r5, r6
	mul 0x0000000C, r6, r0
	mov #_DemEventRelateInformation, r7
	add r6, r7
	ld.bu 0x00000009[r7], r6
	mul 0x0000002C, r5, r0
	ld.w 0x00000020[r2], r2
	add r5, r2
	ld.hu 0x00000018[r2], r2
	andi 0x000000FF, r27, r5
	add r5, r2
	shl 0x00000002, r2
	mov #_DemIndicatorAttribute, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp r2, r6
	bnc9 .BB.LABEL.25_7
.BB.LABEL.25_5:	; bb81
	andi 0x0000FFFF, r26, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r5
	add r2, r5
	ld.bu 0x00000004[r5], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.25_7
.BB.LABEL.25_6:	; if_then_bb99
	mov 0x00000001, r20
.BB.LABEL.25_7:	; if_break_bb
	add 0x00000001, r27
.BB.LABEL.25_8:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1460
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r5
	andi 0x0000FFFF, r26, r6
	mul 0x0000002C, r6, r0
	add r6, r5
	ld.bu 0x0000001A[r5], r5
	andi 0x000000FF, r27, r6
	cmp r5, r6
	bnc9 .BB.LABEL.25_10
.BB.LABEL.25_9:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.25_3
.BB.LABEL.25_10:	; bb129
	add 0x00000001, r26
.BB.LABEL.25_11:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1458
	andi 0x0000FFFF, r26, r27
	movea 0x0000003A, r0, r2
	cmp r2, r27
	bh9 .BB.LABEL.25_14
.BB.LABEL.25_12:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.25_14
.BB.LABEL.25_13:	; bb132.bb102_crit_edge
	mov 0x00000000, r27
	br9 .BB.LABEL.25_8
.BB.LABEL.25_14:	; bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1474
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.25_16
.BB.LABEL.25_15:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1476
	shl 0x00000002, r25
	mov #_DemIndicatorAttribute, r24
	add r25, r24
	ld.bu 0x00000002[r24], r24
	mov #_DemWIRStatus, r2
	add r24, r2
	st.b r0, 0x00000000[r2]
	mov 0x00000001, r24
.BB.LABEL.25_16:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r23
.BB.LABEL.25_17:	; bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1452
	andi 0x000000FF, r23, r2
	ld.bu 0x0000001A[r21], r5
	cmp r5, r2
	bl17 .BB.LABEL.25_1
.BB.LABEL.25_18:	; bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1511
	andi 0x000000FF, r24, r10
	dispose 0x00000000, 0x000007F9, [r31]
_Dem_ResponseOnDtcStatusChange:
	.stack _Dem_ResponseOnDtcStatusChange = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1525
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1527
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r20, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	ld.hu 0x00000010[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1535
	jarl _Dem_GetEventInfo, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1537
	cmp r2, r21
	mov r10, r21
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ld.bu 0x00000005[r21], r2
	ld.bu 0x00000004[r21], r5
	cmp r5, r2
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1540
	ld.bu 0x00000004[r21], r8
	ld.bu 0x00000005[r21], r7
	mov r20, r6
	jarl _Dem_TriggerOnEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1559
	ld.b 0x00000004[r21], r2
	st.b r2, 0x00000005[r21]
.BB.LABEL.26_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1561
	dispose 0x00000000, 0x00000061, [r31]
_Dem_InterEventTestPassed:
	.stack _Dem_InterEventTestPassed = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1576
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1618
	mov r20, r2
	mul 0x0000000C, r2, r0
	mov #_DemEventRelateInformation, r21
	add r2, r21
	ld.bu 0x00000004[r21], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1579
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r22
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1618
	jarl _DEM_FLAGS_ISSET.1, r31
	add 0x00000004, r21
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_9
.BB.LABEL.27_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ld.bu 0x00000000[r21], r6
	movea 0x00000080, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.27_9
.BB.LABEL.27_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1623
	mov r20, r2
	mul 0x0000002C, r2, r0
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1624
	ld.hu 0x00000018[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1625
	ld.bu 0x0000001A[r22], r5
	mov 0x00000000, r6
	br9 .BB.LABEL.27_5
.BB.LABEL.27_3:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1627
	andi 0x000000FF, r6, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1628
	shl 0x00000002, r7
	mov #_DemIndicatorAttribute, r8
	add r7, r8
	ld.bu 0x00000001[r8], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.27_9
.BB.LABEL.27_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r6
.BB.LABEL.27_5:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1625
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bl9 .BB.LABEL.27_3
.BB.LABEL.27_6:	; if_then_bb78.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1636
	clr1 0x00000007, 0x00000000[r21]
	mov 0x00000000, r6
	br9 .BB.LABEL.27_8
.BB.LABEL.27_7:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1640
	andi 0x000000FF, r6, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1641
	shl 0x00000002, r7
	mov #_DemIndicatorAttribute, r8
	add r7, r8
	ld.bu 0x00000002[r8], r7
	mov #_DemWIRStatus, r8
	add r7, r8
	st.b r0, 0x00000000[r8]
	add 0x00000001, r6
.BB.LABEL.27_8:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1638
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bl9 .BB.LABEL.27_7
.BB.LABEL.27_9:	; if_break_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1659
	mul 0x0000000C, r20, r0
	mov #_DemEventRelateInformation, r21
	add r20, r21
	ld.bu 0x00000002[r21], r6
	movea 0x00000020, r0, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	add 0x00000002, r21
	cmp 0x00000000, r10
	bz9 .BB.LABEL.27_11
.BB.LABEL.27_10:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1667
	clr1 0x00000005, 0x00000000[r21]
.BB.LABEL.27_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1678
	dispose 0x00000000, 0x00000071, [r31]
_Dem_InterOperationCycleStart:
	.stack _Dem_InterOperationCycleStart = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1741
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1744
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mul 0x0000002C, r6, r0
	add r6, r2
	ld.bu 0x00000016[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1748
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1745
	ld.hu 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1748
	bnz9 .BB.LABEL.28_3
.BB.LABEL.28_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x0000003A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1750
	shl 0x00000002, r2
	mov #_DemDebounceCounterInfo, r5
	add r2, r5
	st.h r0, 0x00000000[r5]
.BB.LABEL.28_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1761
	jmp [r31]
_Dem_CallDataChangedOfMemEntryAllocate:
	.stack _Dem_CallDataChangedOfMemEntryAllocate = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1776
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1780
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1782
	cmp 0x00000000, r20
	bz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1784
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	jarl [r20], r31
.BB.LABEL.29_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1789
	dispose 0x00000000, 0x00000041, [r31]
_Dem_GetMemDestMaxNumOfDtc:
	.stack _Dem_GetMemDestMaxNumOfDtc = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1803
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1806
	jmp [r31]
_Dem_GetDemWIRStatus:
	.stack _Dem_GetDemWIRStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1821
	mov #_DemWIRStatus, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1824
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1829
	ld.bu 0x00000000[r2], r10
	jmp [r31]
_Dem_ClearEventRelateInformation:
	.stack _Dem_ClearEventRelateInformation = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1843
	st.b r0, 0x00000007[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1852
	st.b r0, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1853
	st.b r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1863
	st.b r0, 0x00000009[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1864
	clr1 0x00000000, 0x00000003[r6]
	jmp [r31]
_Dem_DeleteRelatedData:
	.stack _Dem_DeleteRelatedData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1880
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1884
	st.b r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1885
	st.b r0, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1886
	addi 0x00000002, r20, r6
	mov 0x0000000E, r21
	movea 0x000000FF, r0, r22
	mov r22, r7
	mov r21, r8
	jarl _Dem_MemSet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1888
	movea 0x00000010, r20, r6
	mov r22, r7
	mov r21, r8
	jarl _Dem_MemSet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1895
	movea 0x0000001E, r20, r6
	mov 0x00000001, r8
	mov 0x00000000, r7
	jarl _Dem_MemSet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1897
	ld.hu 0x00000028[r20], r6
	movea 0x0000003B, r0, r2
	cmp r2, r6
	bh9 .BB.LABEL.33_3
.BB.LABEL.33_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1899
	jarl _Dem_GetEventInternalId.1, r31
	mul 0x0000000C, r10, r0
	mov #_DemEventRelateInformation, r6
	add r10, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1900
	jarl _Dem_ClearEventRelateInformation, r31
.BB.LABEL.33_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1902
	dispose 0x00000000, 0x00000071, [r31]
_Dem_EventDataStorageTrigger:
	.stack _Dem_EventDataStorageTrigger = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1917
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1923
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1926
	ld.hu 0x00000010[r2], r20
	ori 0x0000FFFF, r0, r2
	cmp r2, r20
	mov r7, r21
	mov r6, r22
	bz9 .BB.LABEL.34_12
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1928
	movhi HIGHW1(#_Dem_Pending), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Dem_Pending)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1929
	mov r22, r6
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1930
	addi 0x00000000, r10, r23
	bz9 .BB.LABEL.34_11
.BB.LABEL.34_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1941
	ld.bu 0x0000000E[r23], r24
	addi 0xFFFFFF01, r24, r0
	bz9 .BB.LABEL.34_11
.BB.LABEL.34_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mulhi 0x0000000A, r24, r2
	mov #_DemMemDestInfo, r6
	add r2, r6
	add 0x00000001, r6
	mov r20, r7
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_11
.BB.LABEL.34_4:	; if_then_bb57
	mov r22, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1944
	cmp 0x00000005, r21
	bnz9 .BB.LABEL.34_6
.BB.LABEL.34_5:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1946
	mov r24, r7
	jarl _Dem_MemEntryAllocate, r31
	br9 .BB.LABEL.34_7
.BB.LABEL.34_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1950
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	mov r24, r7
	jarl _Dem_MemEntryGet.1, r31
.BB.LABEL.34_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1953
	cmp 0x00000000, r20
	bz9 .BB.LABEL.34_11
.BB.LABEL.34_8:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1958
	mov r22, r6
	mov r20, r7
	mov r21, r8
	jarl _Dem_FreezeFrameStorage.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1961
	mov r22, r6
	mov r20, r7
	mov r21, r8
	jarl _Dem_ExtendedDataStorage.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1964
	ld.bu 0x00000007[r23], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.34_11
.BB.LABEL.34_9:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mul 0x0000000C, r22, r0
	mov #_DemEventRelateInformation, r2
	add r22, r2
	ld.bu 0x00000006[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.34_11
.BB.LABEL.34_10:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1970
	jarl _Dem_IntWriteNvRAM, r31
.BB.LABEL.34_11:	; if_break_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1978
	movhi HIGHW1(#_Dem_Pending), r0, r2
	st.b r0, LOWW(#_Dem_Pending)[r2]
.BB.LABEL.34_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1984
	dispose 0x00000000, 0x00000479, [r31]
_Dem_DebounceInit:
	.stack _Dem_DebounceInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 1998
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2005
	andi 0x0000FFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2006
	shl 0x00000002, r5
	mov #_DemDebounceCounterInfo, r6
	add r5, r6
	st.h r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.35_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2003
	andi 0x0000FFFF, r2, r5
	movea 0x0000003B, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.35_1
.BB.LABEL.35_3:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x000000B1, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2018
	mov #_FDCInfo, r6
	jarl _Dem_MemSet.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_DebounceReset:
	.stack _Dem_DebounceReset = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2033
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2035
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2043
	mul 0x0000002C, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2046
	ld.bu 0x00000016[r2], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2043
	ld.hu 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2046
	bnz9 .BB.LABEL.36_3
.BB.LABEL.36_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x0000003A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.36_3
.BB.LABEL.36_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2053
	shl 0x00000002, r2
	mov #_DemDebounceCounterInfo, r5
	add r2, r5
	st.h r0, 0x00000000[r5]
.BB.LABEL.36_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2072
	jmp [r31]
_Dem_GetInteralFDC:
	.stack _Dem_GetInteralFDC = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2087
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2089
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2105
	st.b r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2106
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r2, r5
	ld.bu 0x00000016[r5], r5
	cmp 0x00000000, r5
	mov r7, r20
	bnz9 .BB.LABEL.37_7
.BB.LABEL.37_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2111
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000020[r5], r5
	mov r6, r7
	mul 0x0000002C, r7, r0
	add r7, r5
	ld.hu 0x00000012[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.37_8
.BB.LABEL.37_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r2, r5
	ld.hu 0x00000014[r5], r5
	movea 0x0000003A, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.37_8
.BB.LABEL.37_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2114
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000020[r5], r7
	mov r6, r8
	mul 0x0000002C, r8, r0
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2115
	mul 0x0000002C, r6, r0
	add r6, r2
	ld.hu 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2116
	shl 0x00000002, r2
	mov #_DemDebounceCounterInfo, r6
	add r2, r6
	ld.h 0x00000000[r6], r6
	mov r6, r2
	sar 0x0000001F, r2
	cmp 0x00000001, r6
	sbf 0x00000001, r0, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2114
	ld.hu 0x00000012[r7], r8
	ld.w 0x00000014[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2116
	blt9 .BB.LABEL.37_5
.BB.LABEL.37_4:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2119
	shl 0x00000004, r8
	add r8, r5
	ld.h 0x00000008[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2118
	mul 0x0000007F, r6, r7
	br9 .BB.LABEL.37_6
.BB.LABEL.37_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2124
	shl 0x00000004, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2123
	mov r6, r7
	shr 0x00000019, r7
	shl 0x00000007, r2
	or r7, r2
	shl 0x00000007, r6
	mov 0x00000000, r7
	subr r7, r6
	sbf 0x00000001, r2, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2124
	ld.h 0x0000000A[r5], r8
.BB.LABEL.37_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r8, r9
	sar 0x0000001F, r9
	jarl __COM_div64, r31
	st.b r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2126
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.37_7:	; switch_clause_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2177
	st.b r0, 0x00000000[r20]
.BB.LABEL.37_8:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2181
	dispose 0x00000000, 0x00000041, [r31]
_Dem_DebounceProcess:
	.stack _Dem_DebounceProcess = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2196
	prepare 0x00000041, 0x00000004
	st.w r6, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2198
	ld.hu 0x00000000[r3], r6
	jarl _Dem_GetEventInternalId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2231
	ld.bu 0x00000002[r3], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2201
	mov r10, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2231
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.38_2
.BB.LABEL.38_1:	; entry.bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.38_3
.BB.LABEL.38_2:	; bb30
	ld.bu 0x00000008[r10], r2
.BB.LABEL.38_3:	; bb35
	st.b r2, 0x00000008[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2253
	mov r20, r10
	dispose 0x00000004, 0x00000041, [r31]
_Dem_DebounceTimerMain:
	.stack _Dem_DebounceTimerMain = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2267
	jmp [r31]
_Dem_UpdateFDC:
	.stack _Dem_UpdateFDC = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2363
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2365
	movhi HIGHW1(#_DemPbCfg+0x00000020), r0, r2
	ld.w LOWW(#_DemPbCfg+0x00000020)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2379
	mov r6, r2
	mul 0x0000002C, r2, r0
	add r20, r2
	ld.bu 0x00000016[r2], r2
	cmp 0x00000000, r2
	mov r6, r21
	bz9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; entry.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.40_9
.BB.LABEL.40_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2383
	movhi HIGHW1(#_DemPbCfg+0x00000020), r0, r2
	ld.w LOWW(#_DemPbCfg+0x00000020)[r2], r2
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	ld.hu 0x00000012[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.40_1
.BB.LABEL.40_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r21, r2
	mul 0x0000002C, r2, r0
	add r20, r2
	ld.hu 0x00000014[r2], r2
	movea 0x0000003A, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.40_1
.BB.LABEL.40_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2386
	mov #_DemPbCfg, r2
	ld.w 0x00000020[r2], r5
	mul 0x0000002C, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2387
	mov r21, r6
	mul 0x0000002C, r6, r0
	add r20, r6
	ld.hu 0x00000014[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2388
	shl 0x00000002, r6
	mov #_DemDebounceCounterInfo, r7
	add r6, r7
	ld.h 0x00000000[r7], r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2386
	ld.hu 0x00000012[r5], r5
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2388
	bz9 .BB.LABEL.40_1
.BB.LABEL.40_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2392
	mov r6, r7
	sar 0x0000001F, r7
	shl 0x00000004, r5
	add r5, r2
	cmp 0x00000000, r6
	ble9 .BB.LABEL.40_7
.BB.LABEL.40_6:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2395
	ld.h 0x00000008[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2394
	mul 0x0000007F, r6, r7
	br9 .BB.LABEL.40_8
.BB.LABEL.40_7:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2399
	mov r6, r8
	shr 0x00000019, r8
	shl 0x00000007, r7
	or r8, r7
	shl 0x00000007, r6
	mov 0x00000000, r8
	subr r8, r6
	sbf 0x00000001, r7, r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2400
	ld.h 0x0000000A[r2], r8
.BB.LABEL.40_8:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r8, r9
	sar 0x0000001F, r9
	jarl __COM_div64, r31
.BB.LABEL.40_9:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2437
	mul 0x0000002C, r21, r0
	add r21, r20
	ld.hu 0x00000010[r20], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	movea 0x00000010, r20, r5
	bz9 .BB.LABEL.40_16
.BB.LABEL.40_10:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2440
	mov r10, r6
	sxb r6
	cmp 0x00000000, r6
	ble9 .BB.LABEL.40_15
.BB.LABEL.40_11:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2442
	mov r2, r6
	mul 0x00000003, r6, r0
	mov #_FDCInfo, r7
	add r6, r7
	ld.bu 0x00000001[r7], r6
	andi 0x000000FF, r10, r7
	cmp r6, r7
	bnh9 .BB.LABEL.40_13
.BB.LABEL.40_12:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2444
	mul 0x00000003, r2, r0
	mov #_FDCInfo, r6
	add r2, r6
	st.b r10, 0x00000001[r6]
.BB.LABEL.40_13:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2446
	ld.hu 0x00000000[r5], r2
	mov r2, r6
	mul 0x00000003, r6, r0
	mov #_FDCInfo, r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	andi 0x000000FF, r10, r7
	cmp r6, r7
	bnh9 .BB.LABEL.40_15
.BB.LABEL.40_14:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2448
	mul 0x00000003, r2, r0
	mov #_FDCInfo, r6
	add r2, r6
	st.b r10, 0x00000002[r6]
.BB.LABEL.40_15:	; if_break_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2451
	ld.hu 0x00000000[r5], r2
	mul 0x00000003, r2, r0
	mov #_FDCInfo, r5
	add r2, r5
	st.b r10, 0x00000000[r5]
.BB.LABEL.40_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2453
	dispose 0x00000000, 0x00000061, [r31]
_Dem_DTCGetFaultDetectionCounter.1:
	.stack _Dem_DTCGetFaultDetectionCounter.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2521
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2537
	jarl _Dem_GetFaultDetectionCounter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2540
	dispose 0x00000000, 0x00000001, [r31]
_Dem_InterIntReadNvRAM:
	.stack _Dem_InterIntReadNvRAM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2586
	jmp [r31]
_Dem_InterDcmGetNextFilteredRecord:
	.stack _Dem_InterDcmGetNextFilteredRecord = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2624
	prepare 0x00000779, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2634
	mov r22, r6
	jarl _Dem_GetInternalMemDest.1, r31
	mov r10, r23
	jr .BB.LABEL.43_14
.BB.LABEL.43_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2638
	mov r23, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.bu 0x00000004[r5], r2
	movhi HIGHW1(#_DemFreezeFrameRecordFilterInfo+0x00000006), r0, r5
	ld.bu LOWW(#_DemFreezeFrameRecordFilterInfo+0x00000006)[r5], r24
	cmp r2, r24
	bl9 .BB.LABEL.43_3
.BB.LABEL.43_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2640
	mov #_DemFreezeFrameRecordFilterInfo, r24
	st.b r0, 0x00000006[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2641
	st.b r0, 0x00000007[r24]
	jr .BB.LABEL.43_14
.BB.LABEL.43_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2645
	mov r23, r2
	shl 0x00000003, r2
	mov #_DemMemDestCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2646
	movhi HIGHW1(#_DemFreezeFrameRecordFilterInfo+0x00000007), r0, r2
	ld.bu LOWW(#_DemFreezeFrameRecordFilterInfo+0x00000007)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.43_5
.BB.LABEL.43_4:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2648
	mov #_DemFreezeFrameRecordFilterInfo, r25
	st.b r0, 0x00000007[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2649
	add 0x00000001, r24
	st.b r24, 0x00000006[r25]
	br9 .BB.LABEL.43_14
.BB.LABEL.43_5:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2653
	mulhi 0x0000002A, r24, r2
	add r25, r2
	ld.hu 0x00000028[r2], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.43_14
.BB.LABEL.43_6:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2655
	jarl _Dem_GetEventInternalId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2656
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000020[r2], r2
	mul 0x0000002C, r10, r0
	add r10, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2657
	ld.hu 0x00000010[r2], r6
	ori 0x0000FFFF, r0, r2
	cmp r2, r6
	bz9 .BB.LABEL.43_13
.BB.LABEL.43_7:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r6, r2
	add r2, r2
	mov #_DemDTCGeneralStatus, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.43_13
.BB.LABEL.43_8:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2660
	mulhi 0x0000002A, r24, r2
	add r25, r2
	ld.bu 0x00000010[r2], r5
	addi 0xFFFFFF01, r5, r0
	movea 0x00000010, r2, r26
	bz9 .BB.LABEL.43_10
.BB.LABEL.43_9:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2662
	mov #_DemFreezeFrameRecordFilterInfo, r22
	ld.bu 0x00000000[r22], r7
	mov r20, r8
	jarl _Dem_GetEventDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2663
	ld.b 0x00000000[r26], r24
	st.b r24, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2665
	ld.h 0x00000004[r22], r24
	add 0x00000001, r24
	st.h r24, 0x00000004[r22]
	mov 0x00000000, r22
	br9 .BB.LABEL.43_14
.BB.LABEL.43_10:	; if_else_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2671
	mulhi 0x0000002A, r24, r2
	add r25, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2670
	movhi HIGHW1(#_DemFreezeFrameRecordFilterInfo+0x00000007), r0, r5
	ld.bu LOWW(#_DemFreezeFrameRecordFilterInfo+0x00000007)[r5], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2671
	mulhi 0x0000000E, r26, r5
	add r5, r2
	ld.bu 0x00000002[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.43_12
.BB.LABEL.43_11:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2673
	mov #_DemFreezeFrameRecordFilterInfo, r22
	ld.bu 0x00000000[r22], r7
	mov r20, r8
	jarl _Dem_GetEventDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2674
	mulhi 0x0000002A, r24, r2
	add r2, r25
	mulh 0x0000000E, r26
	add r26, r25
	ld.b 0x00000002[r25], r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2676
	ld.h 0x00000004[r22], r2
	add 0x00000001, r2
	st.h r2, 0x00000004[r22]
	mov 0x00000000, r22
.BB.LABEL.43_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2678
	movhi HIGHW1(#_DemFreezeFrameRecordFilterInfo+0x00000007), r0, r2
	ld.b LOWW(#_DemFreezeFrameRecordFilterInfo+0x00000007)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_DemFreezeFrameRecordFilterInfo+0x00000007)[r2]
	br9 .BB.LABEL.43_14
.BB.LABEL.43_13:	; if_else_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2683
	movhi HIGHW1(#_DemFreezeFrameRecordFilterInfo+0x00000006), r0, r2
	ld.b LOWW(#_DemFreezeFrameRecordFilterInfo+0x00000006)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_DemFreezeFrameRecordFilterInfo+0x00000006)[r2]
.BB.LABEL.43_14:	; bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2635
	andi 0x000000FF, r22, r0
	bz9 .BB.LABEL.43_16
.BB.LABEL.43_15:	; bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov #_DemFreezeFrameRecordFilterInfo, r2
	ld.hu 0x00000004[r2], r5
	ld.hu 0x00000002[r2], r2
	cmp r2, r5
	bl17 .BB.LABEL.43_1
.BB.LABEL.43_16:	; bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2691
	andi 0x000000FF, r22, r10
	dispose 0x00000000, 0x00000779, [r31]
_Dem_InterDcmSetFreezeFrameRecordFilter:
	.stack _Dem_InterDcmSetFreezeFrameRecordFilter = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2708
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2719
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2720
	movhi HIGHW1(#_DemFreezeFrameRecordFilterInfo), r0, r2
	st.b r20, LOWW(#_DemFreezeFrameRecordFilterInfo)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2721
	st.h r0, 0x00000000[r21]
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.44_6
.BB.LABEL.44_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2725
	mov r10, r6
	shl 0x00000003, r6
	mov #_DemMemDestCfg, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	andi 0x000000FF, r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2726
	mov r7, r8
	mul 0x0000002A, r8, r0
	add r6, r8
	ld.hu 0x00000028[r8], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.44_5
.BB.LABEL.44_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2729
	mulhi 0x0000002A, r7, r7
	add r7, r6
	ld.bu 0x00000010[r6], r7
	addi 0xFFFFFF01, r7, r0
	ld.bu 0x00000000[r6], r6
	bz9 .BB.LABEL.44_4
.BB.LABEL.44_3:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2731
	add r2, r6
	add 0x00000001, r6
	st.h r6, 0x00000000[r21]
	mov r6, r2
	br9 .BB.LABEL.44_5
.BB.LABEL.44_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2736
	add r6, r2
	st.h r2, 0x00000000[r21]
.BB.LABEL.44_5:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r5
.BB.LABEL.44_6:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2723
	mov r10, r6
	shl 0x00000003, r6
	mov #_DemMemDestCfg, r7
	add r6, r7
	ld.bu 0x00000004[r7], r6
	andi 0x000000FF, r5, r7
	cmp r6, r7
	bl9 .BB.LABEL.44_1
.BB.LABEL.44_7:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2740
	mov #_DemFreezeFrameRecordFilterInfo, r2
	st.h r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2741
	st.b r0, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2742
	st.b r0, 0x00000007[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2743
	ld.h 0x00000000[r21], r5
	st.h r5, 0x00000002[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2749
	dispose 0x00000000, 0x00000061, [r31]
_Dem_InterDcmGetFreezeFrameDataByDTC:
	.stack _Dem_InterDcmGetFreezeFrameDataByDTC = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2773
	prepare 0x000007F9, 0x00000004
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2794
	jarl _Dem_GetDTCIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2796
	st.h r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2801
	mul 0x00000014, r10, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2797
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2801
	add r10, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2802
	ld.hu 0x00000010[r5], r5
	add r5, r5
	ld.w 0x00000044[r2], r23
	add r5, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2809
	andi 0x000000FF, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2795
	mov r20, r24
	shr 0x00000008, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2809
	movhi HIGHW1(#_DemGlobalFreezeFrame+0x00000002), r0, r5
	ld.bu LOWW(#_DemGlobalFreezeFrame+0x00000002)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.45_2
.BB.LABEL.45_1:	; entry.if_break_bb89_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.45_6
.BB.LABEL.45_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2813
	ld.hu 0x00000000[r23], r6
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	mov r24, r7
	jarl _Dem_MemEntryGet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2814
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.45_4
.BB.LABEL.45_3:	; if_then_bb.if_break_bb89_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r26
	mov 0x00000001, r25
	br9 .BB.LABEL.45_7
.BB.LABEL.45_4:	; bb
	ld.bu 0x00000010[r10], r25
	addi 0xFFFFFF01, r25, r0
	bz9 .BB.LABEL.45_3
.BB.LABEL.45_5:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2818
	ld.hu 0x00000000[r23], r9
	mov 0x00000001, r25
	st.w r25, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2817
	movea 0x00000011, r10, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2818
	mov r21, r7
	mov r22, r8
	jarl _Dem_DcmGetFreezeFrameDataByDTCProcess.1, r31
.BB.LABEL.45_6:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r25, r26
.BB.LABEL.45_7:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2821
	cmp 0x00000001, r25
	bz9 .BB.LABEL.45_19
.BB.LABEL.45_8:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2824
	ld.hu 0x00000000[r23], r6
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2825
	ld.hu 0x0000000C[r10], r2
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2826
	cmp r5, r2
	bz9 .BB.LABEL.45_19
.BB.LABEL.45_9:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ld.bu 0x00000006[r10], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.45_19
.BB.LABEL.45_10:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2834
	ld.bu 0x00000006[r10], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2836
	shl 0x00000002, r2
	mov #_DemFreezeFrameRecNumClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2837
	ld.hu 0x00000000[r5], r2
	mov #_DemFreezeFrameRecordClassRef, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2838
	ld.bu 0x00000002[r5], r2
	mov 0x00000000, r5
	mov r25, r27
	br9 .BB.LABEL.45_15
.BB.LABEL.45_11:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2840
	ld.bu 0x00000000[r6], r7
	addi 0xFFFFFF01, r7, r0
	bz9 .BB.LABEL.45_14
.BB.LABEL.45_12:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mulh 0x00000003, r7
	mov #_DemFreezeFrameRecordClass, r8
	add r7, r8
	ld.bu 0x00000000[r8], r7
	andi 0x000000FF, r20, r8
	cmp r7, r8
	bnz9 .BB.LABEL.45_14
.BB.LABEL.45_13:	; if_then_bb161
	mov 0x00000001, r27
.BB.LABEL.45_14:	; if_break_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2845
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.45_15:	; bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2838
	andi 0x000000FF, r5, r7
	cmp r2, r7
	bnc9 .BB.LABEL.45_17
.BB.LABEL.45_16:	; bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	andi 0x000000FF, r27, r0
	bz9 .BB.LABEL.45_11
.BB.LABEL.45_17:	; bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2847
	andi 0x000000FF, r27, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.45_21
.BB.LABEL.45_18:	; bb187.if_break_bb248_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r27, r25
.BB.LABEL.45_19:	; if_break_bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2884
	andi 0x000000FF, r25, r0
	bnz9 .BB.LABEL.45_27
.BB.LABEL.45_20:	; if_break_bb248.if_break_bb263_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.45_29
.BB.LABEL.45_21:	; if_then_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2850
	ld.hu 0x00000000[r23], r6
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	mov r24, r7
	jarl _Dem_MemEntryGet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2851
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_18
.BB.LABEL.45_22:	; if_then_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2854
	andi 0x000000FF, r20, r7
	mov r10, r6
	jarl _Dem_FreezeFrameGetByRecordNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2855
	addi 0x00000000, r10, r20
	bz9 .BB.LABEL.45_18
.BB.LABEL.45_23:	; if_then_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2859
	ld.hu 0x00000000[r23], r6
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2858
	add 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2860
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.45_25
.BB.LABEL.45_24:	; if_then_bb211.if_break_bb248_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000001, r26
	br9 .BB.LABEL.45_18
.BB.LABEL.45_25:	; bb221
	ld.hu 0x0000000C[r10], r26
	ori 0x0000FFFF, r0, r2
	cmp r2, r26
	bz9 .BB.LABEL.45_24
.BB.LABEL.45_26:	; if_then_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2863
	ld.hu 0x00000000[r23], r9
	st.w r25, 0x00000000[r3]
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _Dem_DcmGetFreezeFrameDataByDTCProcess.1, r31
	br9 .BB.LABEL.45_24
.BB.LABEL.45_27:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2890
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.45_30
.BB.LABEL.45_28:	; if_else_bb.if_break_bb263_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000006, r10
.BB.LABEL.45_29:	; if_break_bb263
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2899
	zxb r10
	dispose 0x00000004, 0x000007F9, [r31]
.BB.LABEL.45_30:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2896
	dispose 0x00000004, 0x000007F9, [r31]
_Dem_InterDcmGetSizeOfFreezeFrameByDTC:
	.stack _Dem_InterDcmGetSizeOfFreezeFrameByDTC = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2919
	prepare 0x00000079, 0x00000000
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2933
	jarl _Dem_GetDTCIndex, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2934
	mov r20, r6
	jarl _Dem_GetInternalMemDest.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2939
	mul 0x00000014, r23, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2935
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2939
	add r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2940
	ld.hu 0x00000010[r5], r5
	ld.w 0x00000044[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2941
	st.h r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2940
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2946
	ld.hu 0x00000000[r2], r6
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	mov r20, r7
	jarl _Dem_MemEntryGet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2947
	addi 0x00000000, r10, r20
	bnz9 .BB.LABEL.46_2
.BB.LABEL.46_1:	; entry.if_break_bb150_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.46_13
.BB.LABEL.46_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2951
	ld.bu 0x00000010[r20], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.46_4
.BB.LABEL.46_3:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2950
	movhi HIGHW1(#_DemGlobalFreezeFrame), r0, r2
	ld.hu LOWW(#_DemGlobalFreezeFrame)[r2], r2
	mul 0x00000006, r2, r0
	mov #_DemFreezeFrameClass, r5
	add r2, r5
	ld.h 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2953
	ld.h 0x00000000[r22], r5
	add r2, r5
	st.h r5, 0x00000000[r22]
.BB.LABEL.46_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2956
	ld.hu 0x00000028[r20], r6
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2957
	cmp 0x00000000, r10
	bz9 .BB.LABEL.46_1
.BB.LABEL.46_5:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2959
	ld.hu 0x0000000C[r10], r2
	mul 0x00000006, r2, r0
	mov #_DemFreezeFrameClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2960
	ld.hu 0x00000000[r5], r2
	addi 0xFFFFFF01, r21, r0
	bnz9 .BB.LABEL.46_14
.BB.LABEL.46_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ld.bu 0x00000006[r10], r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.46_14
.BB.LABEL.46_7:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2967
	ld.bu 0x00000006[r10], r5
	shl 0x00000002, r5
	mov #_DemFreezeFrameRecNumClass, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2968
	ld.bu 0x00000002[r6], r5
	mov 0x00000000, r6
	br9 .BB.LABEL.46_11
.BB.LABEL.46_8:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2973
	andi 0x000000FF, r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2974
	mul 0x0000000E, r7, r0
	add r20, r7
	ld.bu 0x00000002[r7], r7
	addi 0xFFFFFF01, r7, r0
	bz9 .BB.LABEL.46_10
.BB.LABEL.46_9:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2976
	ld.h 0x00000000[r22], r7
	add r2, r7
	st.h r7, 0x00000000[r22]
.BB.LABEL.46_10:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r6
.BB.LABEL.46_11:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2968
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bl9 .BB.LABEL.46_8
.BB.LABEL.46_12:	; bb132.if_break_bb150_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r10
.BB.LABEL.46_13:	; if_break_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2996
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.46_14:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 2982
	ld.h 0x00000000[r22], r5
	add r2, r5
	st.h r5, 0x00000000[r22]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
_Dem_GetExtendedDataRecordCfg:
	.stack _Dem_GetExtendedDataRecordCfg = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3011
	mov 0x00000000, r10
	mov r10, r2
	br9 .BB.LABEL.47_4
.BB.LABEL.47_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3019
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_DemExtendedDataRecordClass, r7
	add r5, r7
	ld.bu 0x00000000[r7], r5
	cmp r5, r6
	bnz9 .BB.LABEL.47_3
.BB.LABEL.47_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3021
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_DemExtendedDataRecordClass, r10
	add r5, r10
.BB.LABEL.47_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r2
.BB.LABEL.47_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3017
	andi 0x000000FF, r2, r5
	cmp 0x00000004, r5
	bl9 .BB.LABEL.47_1
.BB.LABEL.47_5:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3026
	jmp [r31]
_Dem_GetExtendedRecordDataLoop:
	.stack _Dem_GetExtendedRecordDataLoop = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3041
	prepare 0x00000079, 0x00000000
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3049
	jarl _Dem_GetDTCIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3054
	mov r10, r2
	mul 0x00000014, r2, r0
	movhi HIGHW1(#_DemPbCfgPtr), r0, r5
	ld.w LOWW(#_DemPbCfgPtr)[r5], r5
	ld.w 0x00000004[r5], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3055
	ld.hu 0x00000004[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3056
	mul 0x00000014, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3055
	ld.w 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3056
	add r2, r5
	ld.hu 0x0000000A[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3058
	mov r2, r5
	shl 0x00000002, r5
	mov #_DemExtendedDataClass, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3061
	ld.hu 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3052
	mov r20, r23
	shr 0x00000008, r23
	mov 0x00000000, r6
	mov r6, r7
	br9 .BB.LABEL.48_5
.BB.LABEL.48_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3063
	andi 0x0000FFFF, r6, r8
	add r5, r8
	mov #_DemExtendedDataRecordClassRef, r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3064
	ld.bu 0x00000000[r9], r8
	addi 0xFFFFFF01, r8, r0
	bz9 .BB.LABEL.48_4
.BB.LABEL.48_2:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	shl 0x00000003, r8
	mov #_DemExtendedDataRecordClass, r9
	add r8, r9
	ld.bu 0x00000000[r9], r8
	andi 0x000000FF, r20, r9
	cmp r8, r9
	bnz9 .BB.LABEL.48_4
.BB.LABEL.48_3:	; if_then_bb
	mov 0x00000001, r7
.BB.LABEL.48_4:	; if_break_bb
	add 0x00000001, r6
.BB.LABEL.48_5:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3061
	mov r2, r8
	shl 0x00000002, r8
	mov #_DemExtendedDataClass, r9
	add r8, r9
	ld.bu 0x00000002[r9], r8
	andi 0x0000FFFF, r6, r9
	cmp r8, r9
	blt9 .BB.LABEL.48_1
.BB.LABEL.48_6:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3070
	zxb r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.48_10
.BB.LABEL.48_7:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3072
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3076
	mul 0x00000014, r10, r0
	add r10, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3077
	ld.hu 0x00000010[r5], r5
	add r5, r5
	ld.w 0x00000044[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3082
	ld.hu 0x00000000[r2], r6
	jarl _Dem_GetEventExternalId.1, r31
	mov r10, r6
	mov r23, r7
	jarl _Dem_MemEntryGet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3083
	cmp 0x00000000, r10
	bz9 .BB.LABEL.48_9
.BB.LABEL.48_8:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3085
	andi 0x000000FF, r20, r7
	mov r10, r6
	mov r21, r8
	mov r22, r9
	jarl _Dem_ExtendedDataGetFromEntry, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.48_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3092
	st.h r0, 0x00000000[r22]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3093
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.48_10:	; if_break_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3112
	dispose 0x00000000, 0x00000079, [r31]
_Dem_InterDcmGetSizeOfExtendedDataRecordByDTC:
	.stack _Dem_InterDcmGetSizeOfExtendedDataRecordByDTC = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3133
	prepare 0x00000779, 0x00000000
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3144
	jarl _Dem_GetDTCIndex, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3145
	mov r20, r6
	jarl _Dem_GetInternalMemDest.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3146
	st.h r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3149
	addi 0xFFFFFF02, r21, r0
	mov r10, r20
	bnz9 .BB.LABEL.49_3
.BB.LABEL.49_1:	; entry.bb47_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000090, r0, r24
.BB.LABEL.49_2:	; entry.bb47_crit_edge
	mov 0x00000000, r25
	movea 0x000000EF, r0, r26
	br9 .BB.LABEL.49_10
.BB.LABEL.49_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3154
	addi 0xFFFFFF01, r21, r0
	bnz9 .BB.LABEL.49_5
.BB.LABEL.49_4:	; if_else_bb.bb47_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000001, r24
	br9 .BB.LABEL.49_2
.BB.LABEL.49_5:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3162
	addi 0x00000001, r21, r26
	mov 0x00000000, r25
	mov r21, r24
	br9 .BB.LABEL.49_10
.BB.LABEL.49_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3167
	mov r21, r6
	jarl _Dem_GetExtendedDataRecordCfg, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3168
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.49_8
.BB.LABEL.49_7:	; bb.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000003, r25
	br9 .BB.LABEL.49_9
.BB.LABEL.49_8:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3174
	mov r23, r6
	mov r20, r7
	mov r22, r8
	mov r10, r9
	jarl _Dem_DcmGetSizeOfExtDataRecLoop.1, r31
.BB.LABEL.49_9:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r24
.BB.LABEL.49_10:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3164
	andi 0x000000FF, r24, r2
	andi 0x000000FF, r26, r5
	cmp r5, r2
	bnc9 .BB.LABEL.49_12
.BB.LABEL.49_11:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.49_6
.BB.LABEL.49_12:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3184
	andi 0x000000FF, r25, r10
	dispose 0x00000000, 0x00000779, [r31]
_Dem_InterDcmDisableDTCSetting:
	.stack _Dem_InterDcmDisableDTCSetting = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3202
	prepare 0x00000001, 0x00000000
	mov 0x00FFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3228
	and r2, r6
	cmp r2, r6
	bz9 .BB.LABEL.50_2
.BB.LABEL.50_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000010, r0, r7
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3230
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3232
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.50_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3236
	mov #_DemDTCSettingInfo, r2
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3241
	st.b r7, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3242
	jarl _Dem_SetDTCSettingProcess, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3243
	dispose 0x00000000, 0x00000001, [r31]
_Dem_InterDcmEnableDTCSetting:
	.stack _Dem_InterDcmEnableDTCSetting = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3267
	prepare 0x00000001, 0x00000000
	mov 0x00FFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3293
	and r2, r6
	cmp r2, r6
	bz9 .BB.LABEL.51_2
.BB.LABEL.51_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000010, r0, r7
	movea 0x00000025, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3295
	jarl _DEM_DET_REPORT.1, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3297
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.51_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3301
	mov #_DemDTCSettingInfo, r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3306
	st.b r7, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3307
	jarl _Dem_SetDTCSettingProcess, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3308
	dispose 0x00000000, 0x00000001, [r31]
_Dem_GetDemMalfunctionLampIndicator:
	.stack _Dem_GetDemMalfunctionLampIndicator = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3325
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3328
	jmp [r31]
_Dem_GetFncData.1:
	.stack _Dem_GetFncData.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3343
	prepare 0x00000061, 0x00000000
	mov r8, r20
	mov r7, r21
	addi 0x00000000, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3345
	bz9 .BB.LABEL.53_3
.BB.LABEL.53_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3347
	mov r21, r6
	jarl [r2], r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.53_3
.BB.LABEL.53_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x000000FF, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3349
	mov r21, r6
	mov r20, r8
	jarl _Dem_MemSet.1, r31
	movea 0x00000030, r0, r7
	movea 0x00000055, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3350
	jarl _DEM_DET_REPORT.1, r31
.BB.LABEL.53_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3353
	dispose 0x00000000, 0x00000061, [r31]
_Dem_GetGeneralFreezeFrame.1:
	.stack _Dem_GetGeneralFreezeFrame.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3369
	prepare 0x000007FD, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3373
	mul 0x00000006, r6, r0
	mov #_DemFreezeFrameClass, r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3374
	ld.hu 0x00000002[r2], r5
	add r5, r5
	mov #_DemDidClassRef, r20
	add r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3373
	ld.bu 0x00000004[r2], r21
	mov 0x00000000, r22
	mov r7, r23
	mov r22, r24
	br9 .BB.LABEL.54_5
.BB.LABEL.54_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3378
	ld.hu 0x00000000[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3379
	mul 0x00000006, r2, r0
	mov #_DemDidClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3381
	ld.hu 0x00000002[r5], r25
	ld.bu 0x00000004[r5], r26
	mov 0x00000000, r27
	br9 .BB.LABEL.54_3
.BB.LABEL.54_2:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3384
	movhi HIGHW1(#_DemPbCfg+0x00000040), r0, r2
	ld.w LOWW(#_DemPbCfg+0x00000040)[r2], r2
	andi 0x0000FFFF, r25, r5
	shl 0x00000003, r5
	add r5, r2
	ld.bu 0x00000001[r2], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3386
	ld.w 0x00000004[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3385
	andi 0x000000FF, r24, r7
	add r23, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3387
	mov r28, r8
	jarl _Dem_GetFncData.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3388
	add r28, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3390
	add 0x00000001, r27
	add 0x00000001, r25
.BB.LABEL.54_3:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3381
	andi 0x000000FF, r27, r2
	cmp r26, r2
	bl9 .BB.LABEL.54_2
.BB.LABEL.54_4:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3392
	add 0x00000001, r22
	add 0x00000002, r20
.BB.LABEL.54_5:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3376
	andi 0x0000FFFF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.54_1
.BB.LABEL.54_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3398
	dispose 0x00000000, 0x000007FD, [r31]
_Dem_GetJ1939FreezeFrame.1:
	.stack _Dem_GetJ1939FreezeFrame.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3412
	jmp [r31]
_Dem_GetObdFreezeFrame.1:
	.stack _Dem_GetObdFreezeFrame.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3449
	jmp [r31]
_Dem_CheckFreezeFrameIsStorage:
	.stack _Dem_CheckFreezeFrameIsStorage = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3488
	prepare 0x00000041, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3494
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3497
	cmp 0x00000000, r10
	bz9 .BB.LABEL.57_2
.BB.LABEL.57_1:	; entry.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.57_7
.BB.LABEL.57_2:	; entry.if_break_bb90_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.57_10
.BB.LABEL.57_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3504
	ld.bu 0x00000006[r10], r6
	shl 0x00000002, r6
	mov #_DemFreezeFrameRecNumClass, r7
	add r6, r7
	ld.hu 0x00000000[r7], r6
	andi 0x000000FF, r2, r7
	add r7, r6
	mov #_DemFreezeFrameRecordClassRef, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3506
	ld.bu 0x00000000[r7], r6
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.57_6
.BB.LABEL.57_4:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mulh 0x00000003, r6
	mov #_DemFreezeFrameRecordClass, r7
	add r6, r7
	ld.bu 0x00000001[r7], r6
	cmp r6, r20
	bnz9 .BB.LABEL.57_6
.BB.LABEL.57_5:	; if_then_bb46
	mov 0x00000001, r5
.BB.LABEL.57_6:	; if_break_bb
	add 0x00000001, r2
.BB.LABEL.57_7:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3499
	ld.bu 0x00000006[r10], r6
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.57_10
.BB.LABEL.57_8:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	shl 0x00000002, r6
	mov #_DemFreezeFrameRecNumClass, r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	andi 0x000000FF, r2, r7
	cmp r6, r7
	bnc9 .BB.LABEL.57_10
.BB.LABEL.57_9:	; bb56
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.57_3
.BB.LABEL.57_10:	; if_break_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3515
	andi 0x000000FF, r5, r10
	dispose 0x00000000, 0x00000041, [r31]
_Dem_FreezeFrameCopy.1:
	.stack _Dem_FreezeFrameCopy.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3529
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3550
	jarl _Dem_GetFreezeFrame, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dem_GetFreezeFrame:
	.stack _Dem_GetFreezeFrame = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3567
	prepare 0x00000071, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3572
	mov #_DemPbCfg, r21
	ld.w 0x00000020[r21], r2
	mov r6, r5
	mul 0x0000002C, r5, r0
	add r5, r2
	ld.hu 0x00000010[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3574
	jarl _Dem_UpdateInternalData.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3576
	mul 0x00000014, r22, r0
	ld.w 0x00000004[r21], r2
	add r22, r2
	ld.hu 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3579
	mov r5, r6
	mul 0x00000014, r6, r0
	ld.w 0x00000010[r21], r7
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3580
	ld.hu 0x0000000C[r6], r6
	ori 0x0000FFFF, r0, r8
	cmp r8, r6
	ld.hu 0x00000006[r2], r2
	bnz9 .BB.LABEL.59_2
.BB.LABEL.59_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3587
	mov r5, r6
	mul 0x00000014, r6, r0
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3588
	ld.bu 0x00000012[r6], r6
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.59_3
.BB.LABEL.59_2:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r20, r7
	jarl _Dem_GetGeneralFreezeFrame.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3622
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.59_3:	; if_else_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3595
	mov r5, r6
	mul 0x00000014, r6, r0
	add r6, r7
	ld.bu 0x00000011[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3596
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.59_6
.BB.LABEL.59_4:	; if_else_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ori 0x0000FFFF, r0, r7
	cmp r7, r2
	bz9 .BB.LABEL.59_6
.BB.LABEL.59_5:	; bb74
	movhi HIGHW1(#_DemPbCfg+0x0000002C), r0, r7
	ld.w LOWW(#_DemPbCfg+0x0000002C)[r7], r7
	mov r2, r8
	mul 0x0000000C, r8, r0
	add r8, r7
	ld.w 0x00000004[r7], r7
	mov 0x00FFFFFF, r8
	cmp r8, r7
	bnz9 .BB.LABEL.59_9
.BB.LABEL.59_6:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3604
	movhi HIGHW1(#_DemPbCfg+0x00000010), r0, r6
	ld.w LOWW(#_DemPbCfg+0x00000010)[r6], r6
	mul 0x00000014, r5, r0
	add r5, r6
	ld.bu 0x00000010[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3605
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.59_10
.BB.LABEL.59_7:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.59_10
.BB.LABEL.59_8:	; bb119
	movhi HIGHW1(#_DemPbCfg+0x0000002C), r0, r5
	ld.w LOWW(#_DemPbCfg+0x0000002C)[r5], r5
	mov r2, r7
	mul 0x0000000C, r7, r0
	add r7, r5
	ld.w 0x00000004[r5], r5
	mov 0x00FFFFFF, r7
	cmp r7, r5
	bz9 .BB.LABEL.59_10
.BB.LABEL.59_9:	; if_then_bb136
	mov r20, r7
	jarl _Dem_GetJ1939FreezeFrame.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3622
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.59_10:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3612
	cmp r5, r2
	bz9 .BB.LABEL.59_13
.BB.LABEL.59_11:	; bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movhi HIGHW1(#_DemPbCfg+0x0000002C), r0, r5
	ld.w LOWW(#_DemPbCfg+0x0000002C)[r5], r5
	mul 0x0000000C, r2, r0
	add r2, r5
	ld.hu 0x00000002[r5], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.59_13
.BB.LABEL.59_12:	; if_then_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3616
	mov r20, r6
	jarl _Dem_GetObdFreezeFrame.1, r31
.BB.LABEL.59_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3622
	dispose 0x00000000, 0x00000071, [r31]
_Dem_ExtendedDataGetFromEntry:
	.stack _Dem_ExtendedDataGetFromEntry = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3640
	prepare 0x00000FFF, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3649
	ld.hu 0x00000028[r20], r6
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r6
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3657
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.60_2
.BB.LABEL.60_1:	; entry.if_break_bb245_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000031, r0, r10
	jr .BB.LABEL.60_22
.BB.LABEL.60_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3660
	ld.hu 0x0000000A[r10], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.60_1
.BB.LABEL.60_3:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3663
	shl 0x00000002, r2
	mov #_DemExtendedDataClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3664
	ld.hu 0x00000000[r5], r2
	mov #_DemExtendedDataRecordClassRef, r24
	add r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3665
	ld.bu 0x00000002[r5], r25
	movea 0x00000031, r0, r10
	mov 0x00000000, r26
	jr .BB.LABEL.60_20
.BB.LABEL.60_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3667
	ld.bu 0x00000000[r24], r27
	addi 0xFFFFFF01, r27, r0
	bz17 .BB.LABEL.60_19
.BB.LABEL.60_5:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3670
	mov r27, r2
	shl 0x00000003, r2
	mov #_DemExtendedDataRecordClass, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp r2, r21
	bnz9 .BB.LABEL.60_16
.BB.LABEL.60_6:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3672
	andi 0x000000FF, r26, r7
	movea 0x0000001E, r20, r6
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.60_8
.BB.LABEL.60_7:	; if_then_bb75.if_break_bb219_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000030, r0, r10
	br9 .BB.LABEL.60_19
.BB.LABEL.60_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3679
	mov r27, r2
	shl 0x00000003, r2
	mov #_DemExtendedDataRecordClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3682
	ld.bu 0x00000006[r5], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3681
	ld.hu 0x00000028[r20], r6
	jarl _Dem_GetEventInternalId.1, r31
	mov r10, r6
	jarl _Dem_UpdateInternalData.1, r31
	mov 0x00000000, r29
	mov r29, r30
	br9 .BB.LABEL.60_14
.BB.LABEL.60_9:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3684
	mov r27, r2
	shl 0x00000003, r2
	mov #_DemExtendedDataRecordClass, r5
	add r2, r5
	ld.hu 0x00000004[r5], r2
	andi 0x000000FF, r30, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3688
	mov r2, r5
	shl 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3684
	movhi HIGHW1(#_DemPbCfgPtr), r0, r6
	ld.w LOWW(#_DemPbCfgPtr)[r6], r6
	ld.w 0x00000040[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3688
	add r6, r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.60_13
.BB.LABEL.60_10:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3691
	mov r2, r7
	shl 0x00000003, r7
	add r6, r7
	ld.bu 0x00000000[r7], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.60_12
.BB.LABEL.60_11:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3690
	shl 0x00000003, r2
	add r2, r6
	ld.b 0x00000001[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3696
	add r5, r29
	br9 .BB.LABEL.60_13
.BB.LABEL.60_12:	; if_else_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3701
	andi 0x000000FF, r29, r6
	add r22, r6
	jarl [r5], r31
.BB.LABEL.60_13:	; if_break_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r30
.BB.LABEL.60_14:	; bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3682
	andi 0x000000FF, r30, r2
	cmp r28, r2
	bl9 .BB.LABEL.60_9
.BB.LABEL.60_15:	; bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3706
	shl 0x00000003, r27
	mov #_DemExtendedDataRecordClass, r2
	add r27, r2
	ld.bu 0x00000007[r2], r27
	st.h r27, 0x00000000[r23]
	mov 0x00000000, r10
	br9 .BB.LABEL.60_19
.BB.LABEL.60_16:	; if_else_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3714
	mov r27, r2
	shl 0x00000003, r2
	mov #_DemExtendedDataRecordClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3715
	ld.bu 0x00000006[r5], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.60_18
.BB.LABEL.60_17:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3717
	mov r27, r6
	shl 0x00000003, r6
	mov #_DemExtendedDataRecordClass, r7
	add r6, r7
	ld.hu 0x00000004[r7], r6
	andi 0x000000FF, r5, r7
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3721
	shl 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3717
	movhi HIGHW1(#_DemPbCfgPtr), r0, r7
	ld.w LOWW(#_DemPbCfgPtr)[r7], r7
	ld.w 0x00000040[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3721
	add r7, r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000000, r6
	add 0x00000001, r5
.BB.LABEL.60_18:	; bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3715
	andi 0x000000FF, r5, r6
	cmp r2, r6
	bl9 .BB.LABEL.60_17
.BB.LABEL.60_19:	; if_break_bb219
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3734
	add 0x00000001, r26
	add 0x00000001, r24
.BB.LABEL.60_20:	; bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3665
	andi 0x000000FF, r26, r2
	cmp r25, r2
	bnc9 .BB.LABEL.60_22
.BB.LABEL.60_21:	; bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	andi 0x000000FF, r10, r2
	addi 0xFFFFFFCF, r2, r0
	bz17 .BB.LABEL.60_4
.BB.LABEL.60_22:	; if_break_bb245
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3746
	zxb r10
	dispose 0x00000000, 0x00000FFF, [r31]
_Dem_CheckExtendedDataIsStorage:
	.stack _Dem_CheckExtendedDataIsStorage = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3799
	prepare 0x00000041, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3802
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3806
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.61_2
.BB.LABEL.61_1:	; entry.if_break_bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.61_10
.BB.LABEL.61_2:	; bb
	ld.hu 0x0000000A[r10], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.61_1
.BB.LABEL.61_3:	; bb.bb58_crit_edge
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.61_8
.BB.LABEL.61_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3811
	shl 0x00000002, r6
	mov #_DemExtendedDataClass, r7
	add r6, r7
	ld.hu 0x00000000[r7], r6
	andi 0x000000FF, r5, r7
	add r7, r6
	mov #_DemExtendedDataRecordClassRef, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3813
	ld.bu 0x00000000[r7], r6
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.61_7
.BB.LABEL.61_5:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3815
	shl 0x00000003, r6
	mov #_DemExtendedDataRecordClass, r7
	add r6, r7
	ld.bu 0x00000001[r7], r6
	cmp r6, r20
	bnz9 .BB.LABEL.61_7
.BB.LABEL.61_6:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov 0x00000001, r2
.BB.LABEL.61_7:	; if_break_bb55
	add 0x00000001, r5
.BB.LABEL.61_8:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3808
	ld.hu 0x0000000A[r10], r6
	mov r6, r7
	shl 0x00000002, r7
	mov #_DemExtendedDataClass, r8
	add r7, r8
	ld.bu 0x00000002[r8], r7
	andi 0x000000FF, r5, r8
	cmp r7, r8
	bnc9 .BB.LABEL.61_10
.BB.LABEL.61_9:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.61_4
.BB.LABEL.61_10:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3823
	andi 0x000000FF, r2, r10
	dispose 0x00000000, 0x00000041, [r31]
_Dem_ExtendedDataStorage.1:
	.stack _Dem_ExtendedDataStorage.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3837
	prepare 0x00000679, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3842
	jarl _Dem_EventDTCAttributesCfg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3848
	cmp 0x00000000, r10
	bz9 .BB.LABEL.62_12
.BB.LABEL.62_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	ld.hu 0x0000000A[r10], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.62_12
.BB.LABEL.62_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3850
	ld.hu 0x0000000A[r10], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3851
	mov r20, r6
	jarl _Dem_UpdateInternalData.1, r31
	mov 0x00000000, r24
	br9 .BB.LABEL.62_11
.BB.LABEL.62_3:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3854
	mov r23, r2
	shl 0x00000002, r2
	mov #_DemExtendedDataClass, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	andi 0x000000FF, r24, r5
	add r5, r2
	mov #_DemExtendedDataRecordClassRef, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3855
	ld.bu 0x00000000[r5], r25
	addi 0xFFFFFF01, r25, r0
	bz9 .BB.LABEL.62_10
.BB.LABEL.62_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3857
	mov r20, r6
	jarl _Dem_GetEventInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3859
	shl 0x00000003, r25
	mov #_DemExtendedDataRecordClass, r2
	add r25, r2
	ld.bu 0x00000001[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3861
	cmp r5, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3860
	ld.bu 0x00000002[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3861
	bnz9 .BB.LABEL.62_10
.BB.LABEL.62_5:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	cmp 0x00000002, r22
	bnz9 .BB.LABEL.62_7
.BB.LABEL.62_6:	; bb73
	ld.bu 0x00000002[r10], r6
	mov 0x00000002, r7
	jarl _DEM_FLAGS_ISSET.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.62_10
.BB.LABEL.62_7:	; bb95
	cmp 0x00000001, r25
	bz9 .BB.LABEL.62_9
.BB.LABEL.62_8:	; bb100
	andi 0x000000FF, r24, r7
	movea 0x0000001E, r21, r6
	jarl _DEM_BITS_ISNSET.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.62_10
.BB.LABEL.62_9:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3868
	andi 0x000000FF, r24, r7
	movea 0x0000001E, r21, r6
	jarl _DEM_BITS_SET.1, r31
.BB.LABEL.62_10:	; if_break_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r24
.BB.LABEL.62_11:	; bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3852
	mov r23, r2
	shl 0x00000002, r2
	mov #_DemExtendedDataClass, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	andi 0x000000FF, r24, r5
	cmp r2, r5
	bl9 .BB.LABEL.62_3
.BB.LABEL.62_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3926
	dispose 0x00000000, 0x00000679, [r31]
_Dem_FreezeFrameGetFromEntry:
	.stack _Dem_FreezeFrameGetFromEntry = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3943
	prepare 0x00000FFF, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3965
	ld.bu 0x00000000[r6], r2
	cmp 0x00000000, r2
	mov r9, r20
	mov r8, r21
	mov r6, r22
	bnz9 .BB.LABEL.63_2
.BB.LABEL.63_1:	; entry.if_break_bb192_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000030, r0, r10
	jr .BB.LABEL.63_18
.BB.LABEL.63_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3998
	mov r22, r6
	jarl _Dem_FreezeFrameGetByRecordNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 3999
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.63_4
.BB.LABEL.63_3:	; if_then_bb.if_break_bb192_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000031, r0, r10
	jr .BB.LABEL.63_18
.BB.LABEL.63_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4007
	ld.hu 0x00000028[r22], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.63_6
.BB.LABEL.63_5:	; if_else_bb.if_break_bb192_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	movea 0x00000032, r0, r10
	jr .BB.LABEL.63_18
.BB.LABEL.63_6:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4011
	movhi HIGHW1(#_DemPbCfgPtr), r0, r22
	ld.w LOWW(#_DemPbCfgPtr)[r22], r2
	ld.w 0x00000020[r2], r24
	jarl _Dem_GetEventInternalId.1, r31
	mul 0x0000002C, r10, r0
	add r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4013
	ld.hu 0x00000010[r24], r2
	mul 0x00000014, r2, r0
	ld.w LOWW(#_DemPbCfgPtr)[r22], r5
	ld.w 0x00000004[r5], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4015
	ld.hu 0x00000004[r6], r2
	mul 0x00000014, r2, r0
	ld.w 0x00000010[r5], r5
	add r2, r5
	ld.hu 0x0000000C[r5], r22
	movea 0x00000032, r0, r10
	mov 0x00000000, r24
	mov r24, r25
	br9 .BB.LABEL.63_16
.BB.LABEL.63_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4019
	mov r22, r2
	mul 0x00000006, r2, r0
	mov #_DemFreezeFrameClass, r5
	add r2, r5
	ld.hu 0x00000002[r5], r2
	andi 0x0000FFFF, r25, r5
	add r5, r2
	add r2, r2
	mov #_DemDidClassRef, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4020
	ld.hu 0x00000000[r5], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4021
	mov r26, r2
	mul 0x00000006, r2, r0
	mov #_DemDidClass, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	cmp r2, r21
	bnz9 .BB.LABEL.63_14
.BB.LABEL.63_8:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4025
	mov r26, r2
	mul 0x00000006, r2, r0
	mov #_DemDidClass, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4026
	ld.hu 0x00000002[r5], r27
	mov 0x00000000, r28
	mov r28, r29
	br9 .BB.LABEL.63_12
.BB.LABEL.63_9:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4028
	movhi HIGHW1(#_DemPbCfgPtr), r0, r2
	ld.w LOWW(#_DemPbCfgPtr)[r2], r2
	ld.w 0x00000040[r2], r2
	andi 0x0000FFFF, r27, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4030
	mov r5, r6
	shl 0x00000003, r6
	add r2, r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.63_11
.BB.LABEL.63_10:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4032
	shl 0x00000003, r5
	add r5, r2
	ld.bu 0x00000001[r2], r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4033
	andi 0x000000FF, r28, r7
	mov r20, r6
	add r7, r6
	andi 0x000000FF, r24, r2
	add r2, r7
	add r23, r7
	add 0x00000001, r7
	mov r30, r8
	jarl _Dem_MemCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4034
	add r30, r28
.BB.LABEL.63_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4036
	add 0x00000001, r29
	add 0x00000001, r27
.BB.LABEL.63_12:	; bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4026
	mov r26, r2
	mul 0x00000006, r2, r0
	mov #_DemDidClass, r5
	add r2, r5
	ld.bu 0x00000004[r5], r2
	andi 0x000000FF, r29, r5
	cmp r2, r5
	bl9 .BB.LABEL.63_9
.BB.LABEL.63_13:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4039
	mul 0x00000006, r26, r0
	mov #_DemDidClass, r2
	add r26, r2
	ld.bu 0x00000005[r2], r26
	ld.w 0x00000030[r3], r2
	st.h r26, 0x00000000[r2]
	mov 0x00000000, r10
	br9 .BB.LABEL.63_15
.BB.LABEL.63_14:	; if_else_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4044
	mul 0x00000006, r26, r0
	mov #_DemDidClass, r2
	add r26, r2
	ld.b 0x00000005[r2], r2
	add r2, r24
.BB.LABEL.63_15:	; if_break_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	add 0x00000001, r25
.BB.LABEL.63_16:	; bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4017
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.63_18
.BB.LABEL.63_17:	; bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 0
	mov r22, r2
	mul 0x00000006, r2, r0
	mov #_DemFreezeFrameClass, r5
	add r2, r5
	ld.bu 0x00000004[r5], r2
	andi 0x0000FFFF, r25, r5
	cmp r2, r5
	blt9 .BB.LABEL.63_7
.BB.LABEL.63_18:	; if_break_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Dem/Dem_SubExt.c", 4060
	zxb r10
	dispose 0x00000000, 0x00000FFF, [r31]
