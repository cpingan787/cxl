#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\CAN\CanTSyn\CanTSyn.c -oDefaultBuild\CanTSyn.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_dd0e38e5a00a496a9f556f243d0bdf50hxnfjebe.xzj
#@	compiled at Fri Mar 27 09:50:22 2026

	.file "..\..\Bsw\Communication\CAN\CanTSyn\CanTSyn.c"

	$reg_mode 32
	.dbl_size 8

	.public _CanTSyn_Init
	.extern _Det_ReportError
	.extern _StbM_GetTimeBaseUpdateCounter
	.public _CanTSyn_SetTransmissionMode
	.public _CanTSyn_MainFunction
	.public _CanTSyn_RxIndication
	.extern _SchM_Enter_CanTSyn_Context
	.extern _SchM_Exit_CanTSyn_Context
	.extern _StbM_GetCurrentVirtualLocalTime
	.public _CanTSyn_TxConfirmation
	.extern _StbM_BusGetCurrentTime
	.extern _CanIf_Transmit
	.extern _StbM_GetOffset
	.extern _StbM_GetTimeBaseStatus
	.extern _StbM_BusSetGlobalTime
	.extern _StbM_SetOffset

	.section .text, text
_CanTSyn_HiHiByte.1:
	.stack _CanTSyn_HiHiByte.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 91
	mov r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 93
	shr 0x00000018, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 94
	jmp [r31]
_CanTSyn_HiLoByte.1:
	.stack _CanTSyn_HiLoByte.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 96
	shr 0x00000010, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 99
	andi 0x000000FF, r6, r10
	jmp [r31]
_CanTSyn_LoHiByte.1:
	.stack _CanTSyn_LoHiByte.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 101
	zxh r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 104
	mov r6, r10
	shr 0x00000008, r10
	jmp [r31]
_CanTSyn_LoLoByte.1:
	.stack _CanTSyn_LoLoByte.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 106
	andi 0x000000FF, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 109
	jmp [r31]
_CanTSyn_Init:
	.stack _CanTSyn_Init = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 314
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 319
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000003, r9
	mov 0x00000001, r8
	mov 0x00000000, r7
	movea 0x000000A1, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 322
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 327
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	st.w r6, LOWW(#_CanTSyn_configPtr.4)[r2]
	mov 0x00000000, r20
	br9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 332
	andi 0x000000FF, r20, r21
	mov r21, r22
	mul 0x0000001C, r22, r0
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	add r22, r2
	ld.hu 0x00000002[r2], r6
	jarl _StbM_GetTimeBaseUpdateCounter, r31
	mov #_CanTSyn_BaseCounterValues.8, r2
	add r21, r2
	st.b r10, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 334
	mov r21, r2
	mul 0x0000002C, r2, r0
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	st.w r0, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 335
	st.w r0, 0x00000020[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 336
	st.w r2, 0x00000024[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 337
	st.w r0, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 338
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r22, r5
	st.w r0, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 339
	st.b r0, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 340
	shl 0x00000002, r21
	mov #_CanTSyn_MasterStatus.9, r5
	add r21, r5
	mov 0x00000003, r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 341
	mov #_CanTSyn_SlaveStatus.10, r5
	add r21, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 342
	mov #_CanTSyn_TransmissionMode.1, r5
	add r5, r21
	st.w r2, 0x00000000[r21]
	add 0x00000001, r20
.BB.LABEL.5_4:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 330
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_5:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 344
	movhi HIGHW1(#_CanTSyn_InitStatus.5), r0, r2
	st.w r0, LOWW(#_CanTSyn_InitStatus.5)[r2]
	dispose 0x00000000, 0x00000071, [r31]
_CanTSyn_SetTransmissionMode:
	.stack _CanTSyn_SetTransmissionMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 364
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 368
	cmp 0x00000002, r7
	bl9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000005, r9
	br9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 372
	cmp 0x00000000, r6
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000006, r9
.BB.LABEL.6_4:	; if_then_bb20
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x000000A1, r0, r6
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 385
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_5:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 376
	movhi HIGHW1(#_CanTSyn_InitStatus.5), r0, r2
	ld.w LOWW(#_CanTSyn_InitStatus.5)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000002, r9
	br9 .BB.LABEL.6_4
.BB.LABEL.6_7:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 383
	shl 0x00000002, r6
	mov #_CanTSyn_TransmissionMode.1, r2
	add r6, r2
	st.w r7, 0x00000000[r2]
	dispose 0x00000000, 0x00000001, [r31]
_CanTSyn_MainFunction:
	.stack _CanTSyn_MainFunction = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 402
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 407
	movhi HIGHW1(#_CanTSyn_InitStatus.5), r0, r2
	ld.w LOWW(#_CanTSyn_InitStatus.5)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_1:	; entry.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.7_8
.BB.LABEL.7_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 412
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r21
	andi 0x000000FF, r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 420
	mov r22, r2
	mul 0x0000001C, r2, r0
	add r21, r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 423
	andi 0x000000FF, r20, r6
	jarl _CanTSyn_MasterMain.1, r31
.BB.LABEL.7_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 427
	mulhi 0x0000001C, r22, r2
	add r2, r21
	ld.w 0x00000018[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 430
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 432
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 433
	andi 0x000000FF, r20, r7
	mov r7, r2
	mul 0x0000001C, r2, r0
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r2, r5
	movea 0x00000018, r5, r6
	mov r3, r9
	mov 0x00000000, r8
	jarl _CanTSyn_DecrementCounter.1, r31
.BB.LABEL.7_7:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	add 0x00000001, r20
.BB.LABEL.7_8:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 410
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 442
	dispose 0x00000004, 0x00000071, [r31]
_CanTSyn_RxIndication:
	.stack _CanTSyn_RxIndication = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 460
	prepare 0x00000479, 0x00000018
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 462
	jarl _SchM_Enter_CanTSyn_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 473
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000003, r9
	br9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 478
	movhi HIGHW1(#_CanTSyn_InitStatus.5), r0, r2
	ld.w LOWW(#_CanTSyn_InitStatus.5)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000002, r9
.BB.LABEL.8_4:	; if_then_bb18
	movea 0x00000042, r0, r8
	mov 0x00000000, r7
	movea 0x000000A1, r0, r6
	jarl _Det_ReportError, r31
	jarl _SchM_Exit_CanTSyn_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 595
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.8_5:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 486
	ld.w 0x00000000[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 487
	ld.bu 0x00000000[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 489
	addi 0xFFFFFFCC, r22, r0
	setf 0x00000002, r5
	addi 0xFFFFFFBC, r22, r0
	setf 0x00000002, r6
	or r6, r5
	addi 0xFFFFFFAC, r22, r0
	setf 0x00000002, r6
	or r6, r5
	addi 0xFFFFFF9C, r22, r0
	setf 0x00000002, r6
	or r6, r5
	addi 0xFFFFFFC4, r22, r0
	setf 0x00000002, r6
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 487
	addi 0xFFFFFFB4, r22, r0
	setf 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 489
	or r6, r5
	cmp 0x00000000, r5
	movea 0x00000010, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 493
	cmov 0x00000002, 0x00000000, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 486
	ld.bu 0x00000002[r2], r2
	zxb r2
	shr 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 493
	or r5, r2
	mov 0x00000000, r23
	br9 .BB.LABEL.8_9
.BB.LABEL.8_6:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 499
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r5
	ld.w LOWW(#_CanTSyn_configPtr.4)[r5], r5
	ld.w 0x00000000[r5], r6
	andi 0x000000FF, r23, r7
	mul 0x0000001C, r7, r0
	add r7, r6
	ld.bu 0x00000000[r6], r6
	andi 0x000000FF, r2, r7
	cmp r6, r7
	bnz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_then_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 501
	andi 0x000000FF, r23, r2
	mul 0x0000001C, r2, r0
	ld.w 0x00000000[r5], r24
	add r2, r24
	br9 .BB.LABEL.8_11
.BB.LABEL.8_8:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	add 0x00000001, r23
.BB.LABEL.8_9:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 497
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_10:	; bb128.bb135_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000000, r24
.BB.LABEL.8_11:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 506
	cmp 0x00000000, r24
	bz17 .BB.LABEL.8_47
.BB.LABEL.8_12:	; bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	ld.w 0x00000018[r24], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.8_47
.BB.LABEL.8_13:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 509
	ld.w 0x00000018[r24], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 511
	ld.hu 0x00000002[r24], r6
	movea 0x00000010, r0, r5
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 509
	add r7, r5
	br9 .BB.LABEL.8_15
.BB.LABEL.8_14:	; if_then_bb153
	ld23.dw 0x00000000[r2], r8
	st23.dw r8, 0x00000000[r7]
	add 0x00000008, r2
	add 0x00000008, r7
.BB.LABEL.8_15:	; if_then_bb153
	cmp r7, r5
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_16:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 511
	ld.hu 0x0000000C[r3], r2
	cmp r2, r20
	bz9 .BB.LABEL.8_18
.BB.LABEL.8_17:	; if_then_bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000001, r9
	br9 .BB.LABEL.8_4
.BB.LABEL.8_18:	; if_else_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 521
	addi 0xFFFFFFF0, r22, r0
	bz9 .BB.LABEL.8_23
.BB.LABEL.8_19:	; if_else_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	addi 0xFFFFFFE0, r22, r0
	bz9 .BB.LABEL.8_23
.BB.LABEL.8_20:	; if_else_bb172
	addi 0xFFFFFFCC, r22, r0
	bz9 .BB.LABEL.8_23
.BB.LABEL.8_21:	; if_else_bb172
	addi 0xFFFFFFBC, r22, r0
	bz9 .BB.LABEL.8_23
.BB.LABEL.8_22:	; if_then_bb214
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 524
	jarl _SchM_Exit_CanTSyn_Context, r31
	br9 .BB.LABEL.8_24
.BB.LABEL.8_23:	; if_else_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 528
	jarl _StbM_GetCurrentVirtualLocalTime, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 529
	jarl _SchM_Exit_CanTSyn_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 532
	cmp 0x00000000, r20
	bnz17 .BB.LABEL.8_48
.BB.LABEL.8_24:	; bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	ld.bu 0x00000000[r24], r2
	movea 0x0000001F, r0, r5
	cmp r5, r2
	bh17 .BB.LABEL.8_48
.BB.LABEL.8_25:	; if_then_bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 534
	andi 0x000000FF, r23, r6
	mov r21, r7
	jarl _CanTSyn_PassCRCMode.1, r31
	cmp 0x00000001, r10
	bnz17 .BB.LABEL.8_48
.BB.LABEL.8_26:	; if_then_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 536
	addi 0xFFFFFFC5, r22, r0
	bgt9 .BB.LABEL.8_35
.BB.LABEL.8_27:	; if_then_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	addi 0xFFFFFFE1, r22, r0
	bgt9 .BB.LABEL.8_32
.BB.LABEL.8_28:	; if_then_bb246
	addi 0xFFFFFFF0, r22, r0
	bz9 .BB.LABEL.8_44
.BB.LABEL.8_29:	; if_then_bb246
	addi 0xFFFFFFE8, r22, r0
	bnz17 .BB.LABEL.8_48
.BB.LABEL.8_30:	; switch_clause_bb283
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 551
	andi 0x000000FF, r23, r2
	shl 0x00000002, r2
	mov #_CanTSyn_SlaveStatus.10, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.8_48
.BB.LABEL.8_31:	; if_then_bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 554
	andi 0x000000FF, r23, r6
	mov r6, r23
	mul 0x0000001C, r23, r0
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r23, r5
	st.w r0, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 555
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 556
	mov r21, r7
	jarl _CanTSyn_RxFUP.1, r31
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.8_32:	; if_then_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	addi 0xFFFFFFE0, r22, r0
	bz9 .BB.LABEL.8_44
.BB.LABEL.8_33:	; if_then_bb246
	addi 0xFFFFFFD8, r22, r0
	bz9 .BB.LABEL.8_30
.BB.LABEL.8_34:	; if_then_bb246
	addi 0xFFFFFFCC, r22, r0
	bz9 .BB.LABEL.8_38
	br9 .BB.LABEL.8_48
.BB.LABEL.8_35:	; if_then_bb246
	addi 0xFFFFFFB5, r22, r0
	bgt9 .BB.LABEL.8_39
.BB.LABEL.8_36:	; if_then_bb246
	addi 0xFFFFFFC4, r22, r0
	bz9 .BB.LABEL.8_45
.BB.LABEL.8_37:	; if_then_bb246
	addi 0xFFFFFFBC, r22, r0
	bnz9 .BB.LABEL.8_48
.BB.LABEL.8_38:	; switch_clause_bb302
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 562
	andi 0x000000FF, r23, r6
	mov r21, r7
	jarl _CanTSyn_RxOFS.1, r31
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.8_39:	; if_then_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	addi 0xFFFFFFB4, r22, r0
	bz9 .BB.LABEL.8_45
.BB.LABEL.8_40:	; if_then_bb246
	addi 0xFFFFFFAC, r22, r0
	bz9 .BB.LABEL.8_42
.BB.LABEL.8_41:	; if_then_bb246
	addi 0xFFFFFF9C, r22, r0
	bnz9 .BB.LABEL.8_48
.BB.LABEL.8_42:	; switch_clause_bb324
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 577
	andi 0x000000FF, r23, r2
	shl 0x00000002, r2
	mov #_CanTSyn_SlaveStatus.10, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_48
.BB.LABEL.8_43:	; if_then_bb332
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 579
	andi 0x000000FF, r23, r6
	mov r21, r7
	jarl _CanTSyn_RxOFSFD.1, r31
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.8_44:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 541
	andi 0x000000FF, r23, r6
	mov r6, r23
	mul 0x0000001C, r23, r0
	mov #_CanTSyn_SlaveTimeInfo.2, r2
	add r23, r2
	ld.w 0x00000000[r3], r23
	st.w r23, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 543
	ld.w 0x00000014[r3], r23
	st.w r23, 0x00000004[r2]
	st.w r0, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 544
	st.w r23, 0x00000008[r2]
	st.w r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 545
	ld.w 0x00000010[r3], r5
	st.w r23, 0x00000008[r2]
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 546
	mov r21, r7
	jarl _CanTSyn_RxSYNC.1, r31
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.8_45:	; switch_clause_bb305
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 567
	andi 0x000000FF, r23, r2
	shl 0x00000002, r2
	mov #_CanTSyn_SlaveStatus.10, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.8_48
.BB.LABEL.8_46:	; if_then_bb313
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 569
	andi 0x000000FF, r23, r6
	mov r6, r23
	mul 0x0000001C, r23, r0
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r23, r5
	st.w r0, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 570
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 571
	mov r21, r7
	jarl _CanTSyn_RxOFNS.1, r31
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.8_47:	; if_else_bb340
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 592
	jarl _SchM_Exit_CanTSyn_Context, r31
.BB.LABEL.8_48:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 595
	dispose 0x00000018, 0x00000479, [r31]
_CanTSyn_TxConfirmation:
	.stack _CanTSyn_TxConfirmation = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 615
	prepare 0x00000061, 0x00000024
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 623
	jarl _SchM_Enter_CanTSyn_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 636
	cmp 0x00000000, r20
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000001, r9
.BB.LABEL.9_2:	; if_then_bb
	movea 0x00000040, r0, r8
	mov 0x00000000, r7
	movea 0x000000A1, r0, r6
	jarl _Det_ReportError, r31
	jarl _SchM_Exit_CanTSyn_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 717
	dispose 0x00000024, 0x00000061, [r31]
.BB.LABEL.9_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 641
	movhi HIGHW1(#_CanTSyn_InitStatus.5), r0, r2
	ld.w LOWW(#_CanTSyn_InitStatus.5)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000002, r9
	br9 .BB.LABEL.9_2
.BB.LABEL.9_5:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 651
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mov r20, r5
	mul 0x0000001C, r5, r0
	add r5, r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_8
.BB.LABEL.9_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanTSyn_MasterStatus.9, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; bb.bb42_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; bb41
	mov 0x00000001, r2
.BB.LABEL.9_9:	; bb42
	mov r20, r5
	mul 0x0000001C, r5, r0
	cmp 0x00000000, r2
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	bnz9 .BB.LABEL.9_20
.BB.LABEL.9_10:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 655
	add r2, r5
	ld.w 0x00000014[r5], r6
	movea 0x0000001C, r0, r7
	mov r3, r8
	add r8, r7
	br9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; if_then_bb47
	ld.w 0x00000000[r6], r9
	st.w r9, 0x00000000[r8]
	add 0x00000004, r6
	add 0x00000004, r8
.BB.LABEL.9_12:	; if_then_bb47
	cmp r8, r7
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_13:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 657
	ld.bu 0x00000000[r5], r5
	cmp 0x0000000F, r5
	bh9 .BB.LABEL.9_16
.BB.LABEL.9_14:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 659
	mov r20, r5
	mul 0x0000001C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 660
	ld.hu 0x00000002[r2], r6
	movea 0x0000001C, r3, r7
	jarl _StbM_GetCurrentVirtualLocalTime, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 661
	jarl _SchM_Exit_CanTSyn_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 663
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.9_17
.BB.LABEL.9_15:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 668
	mov r20, r2
	mul 0x0000002C, r2, r0
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 665
	ld.w 0x00000020[r3], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 667
	ld.w 0x0000001C[r3], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 668
	sub r6, r8
	sbf 0x00000001, r2, r7, r2
	ld.w 0x00000000[r5], r6
	mov 0x00000000, r7
	add r8, r6
	adf 0x00000001, r7, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 669
	st.w r2, 0x00000010[r5]
	st.w r6, 0x0000000C[r5]
	br9 .BB.LABEL.9_17
.BB.LABEL.9_16:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 674
	jarl _SchM_Exit_CanTSyn_Context, r31
.BB.LABEL.9_17:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 678
	mov r20, r2
	mul 0x0000002C, r2, r0
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x0000000C[r3], r2
	st.w r2, 0x00000024[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 681
	st.w r0, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 684
	mov #_CanTSyn_ImmediateSent.3, r2
	add r20, r2
	ld.bu 0x00000000[r2], r6
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 678
	movea 0x00000024, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 684
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_18:	; if_then_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 686
	mov r20, r6
	mul 0x0000002C, r6, r0
	mov #_CanTSyn_MasterTimeInfo.6, r7
	add r6, r7
	ld.w 0x00000000[r3], r6
	st.w r6, 0x0000001C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 687
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 688
	st.w r0, 0x00000000[r5]
.BB.LABEL.9_19:	; if_break_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 691
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanTSyn_MasterStatus.9, r5
	add r5, r2
	mov 0x00000001, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 693
	mul 0x0000002C, r20, r0
	mov #_CanTSyn_MasterTimeInfo.6, r2
	add r20, r2
	ld.w 0x00000004[r3], r20
	st.w r20, 0x00000020[r2]
	dispose 0x00000024, 0x00000061, [r31]
.BB.LABEL.9_20:	; if_else_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 695
	add r5, r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_23
.BB.LABEL.9_21:	; bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanTSyn_MasterStatus.9, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.9_23
.BB.LABEL.9_22:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 699
	jarl _SchM_Exit_CanTSyn_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 701
	mov r20, r2
	mul 0x0000002C, r2, r0
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	st.w r0, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 703
	mov #_CanTSyn_SequenceCounters.7, r2
	add r2, r20
	ld.b 0x00000000[r20], r2
	add 0x00000001, r2
	andi 0x0000000F, r2, r2
	st.b r2, 0x00000000[r20]
	dispose 0x00000024, 0x00000061, [r31]
.BB.LABEL.9_23:	; if_else_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 707
	jarl _SchM_Exit_CanTSyn_Context, r31
	dispose 0x00000024, 0x00000061, [r31]
_CanTSyn_PassCRCMode.1:
	.stack _CanTSyn_PassCRCMode.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 741
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 743
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 745
	mulhi 0x0000001C, r6, r5
	add r5, r2
	ld.w 0x00000018[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 744
	ld.w 0x00000000[r7], r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 753
	addi 0xFFFFFFE0, r5, r0
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	addi 0xFFFFFFD8, r5, r0
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_2:	; entry
	addi 0xFFFFFFBC, r5, r0
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_3:	; entry
	addi 0xFFFFFF9C, r5, r0
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; entry
	addi 0xFFFFFFB4, r5, r0
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 756
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 758
	jmp [r31]
.BB.LABEL.10_7:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 803
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 805
	jmp [r31]
.BB.LABEL.10_9:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 809
	jmp [r31]
_CanTSyn_MasterMain.1:
	.stack _CanTSyn_MasterMain.1 = 76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 823
	prepare 0x00000071, 0x0000003C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 826
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	movea 0x0000001C, r0, r5
	movea 0x00000020, r3, r6
	mov r5, r7
	add r6, r7
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry
	ld.w 0x00000000[r2], r8
	st.w r8, 0x00000000[r6]
	add 0x00000004, r2
	add 0x00000004, r6
.BB.LABEL.11_2:	; entry
	cmp r6, r7
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000004, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 827
	ld.w 0x00000034[r3], r6
	add r2, r5
	br9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; entry
	ld.w 0x00000000[r6], r7
	st.w r7, 0x00000000[r2]
	add 0x00000004, r6
	add 0x00000004, r2
.BB.LABEL.11_5:	; entry
	cmp r2, r5
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_6:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 833
	mov r20, r6
	jarl _CanTSyn_CheckGlobalTimeBaseBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 835
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x00000024[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 837
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 838
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	movea 0x00000024, r5, r6
	mov 0x00000000, r9
	mov r3, r8
	mov r20, r7
	jarl _CanTSyn_DecrementCounter.1, r31
.BB.LABEL.11_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 842
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x0000001C[r5], r2
	cmp 0x00000000, r2
	movea 0x0000001C, r5, r22
	bz9 .BB.LABEL.11_13
.BB.LABEL.11_10:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 844
	st.w r0, 0x00000000[r3]
	mov 0x00000000, r9
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 845
	mov r22, r6
	mov r20, r7
	jarl _CanTSyn_DecrementCounter.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 846
	ld.w 0x00000000[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_13
.BB.LABEL.11_11:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_13
.BB.LABEL.11_12:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 848
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanTSyn_MasterStatus.9, r5
	add r5, r2
	mov 0x00000003, r5
	st.w r5, 0x00000000[r2]
.BB.LABEL.11_13:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 853
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x00000028[r5], r2
	cmp 0x00000000, r2
	movea 0x00000028, r5, r21
	bz9 .BB.LABEL.11_16
.BB.LABEL.11_14:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 855
	st.w r2, 0x00000000[r3]
	mov 0x00000000, r9
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 856
	mov r21, r6
	mov r20, r7
	jarl _CanTSyn_DecrementCounter.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 857
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_16
.BB.LABEL.11_15:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 859
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x00000010[r3], r2
	st.w r2, 0x00000024[r5]
.BB.LABEL.11_16:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 863
	mov r20, r22
	shl 0x00000002, r22
	mov #_CanTSyn_MasterStatus.9, r2
	add r2, r22
	ld.w 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_24
.BB.LABEL.11_17:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	add 0xFFFFFFFF, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_29
.BB.LABEL.11_18:	; if_break_bb104
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_19:	; switch_clause_bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 916
	ld.bu 0x00000014[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_20:	; if_then_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 919
	ld.hu 0x00000022[r3], r6
	jarl _StbM_GetTimeBaseUpdateCounter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 920
	mov #_CanTSyn_BaseCounterValues.8, r2
	add r20, r2
	ld.bu 0x00000000[r2], r5
	cmp r5, r10
	bz9 .BB.LABEL.11_23
.BB.LABEL.11_21:	; if_then_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 922
	st.b r10, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 925
	mov r20, r6
	jarl _CanTSyn_CheckGlobalTimeBaseBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 926
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_22:	; if_then_bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 928
	st.w r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 929
	mov #_CanTSyn_ImmediateSent.3, r2
	add r2, r20
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
.BB.LABEL.11_23:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 939
	dispose 0x0000003C, 0x00000071, [r31]
.BB.LABEL.11_24:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 866
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanTSyn_TransmissionMode.1, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_25:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 868
	st.w r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 871
	ld.bu 0x00000020[r3], r22
	mov r20, r6
	cmp 0x0000000F, r22
	ld.hu 0x0000001C[r3], r7
	bh9 .BB.LABEL.11_27
.BB.LABEL.11_26:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 873
	jarl _CanTSyn_TransmitSYNC.1, r31
	br9 .BB.LABEL.11_28
.BB.LABEL.11_27:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 877
	jarl _CanTSyn_TransmitOFS.1, r31
.BB.LABEL.11_28:	; if_break_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 881
	ld.w 0x00000018[r3], r20
	st.w r20, 0x00000000[r21]
	dispose 0x0000003C, 0x00000071, [r31]
.BB.LABEL.11_29:	; switch_clause_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 886
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x0000000B, r2
	movea 0x00000020, r5, r5
	bl9 .BB.LABEL.11_31
.BB.LABEL.11_30:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 888
	add 0xFFFFFFF6, r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 889
	dispose 0x0000003C, 0x00000071, [r31]
.BB.LABEL.11_31:	; if_break_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 892
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanTSyn_TransmissionMode.1, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_32:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 894
	st.w r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 897
	ld.w 0x00000018[r3], r22
	st.w r22, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 900
	ld.bu 0x00000020[r3], r22
	cmp 0x0000000F, r22
	bh9 .BB.LABEL.11_34
.BB.LABEL.11_33:	; if_then_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 902
	ld.hu 0x0000001C[r3], r7
	mov r20, r6
	jarl _CanTSyn_TransmitFUP.1, r31
	dispose 0x0000003C, 0x00000071, [r31]
.BB.LABEL.11_34:	; if_else_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 904
	ld.bu 0x00000021[r3], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_35:	; if_then_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 906
	ld.hu 0x0000001C[r3], r7
	mov r20, r6
	jarl _CanTSyn_TransmitOFNS.1, r31
	dispose 0x0000003C, 0x00000071, [r31]
_CanTSyn_DecrementCounter.1:
	.stack _CanTSyn_DecrementCounter.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 956
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 962
	cmp 0x0000000A, r2
	bh9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 964
	mov r7, r2
	shl 0x00000002, r2
	mov #_CanTSyn_MasterStatus.9, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 966
	ld.w 0x00000000[r8], r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 967
	st.w r0, 0x00000000[r6]
.BB.LABEL.12_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 969
	cmp 0x00000000, r9
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 971
	shl 0x00000002, r7
	mov #_CanTSyn_SlaveStatus.10, r2
	add r2, r7
	ld.w 0x00000000[r9], r2
	st.w r2, 0x00000000[r7]
	jmp [r31]
.BB.LABEL.12_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 976
	add 0xFFFFFFF6, r2
	st.w r2, 0x00000000[r6]
.BB.LABEL.12_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 978
	jmp [r31]
_CanTSyn_DealExtendedFormat.1:
	.stack _CanTSyn_DealExtendedFormat.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 993
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 997
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 999
	st.h r2, 0x00000008[r7]
	mov 0x00000008, r2
	br9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1002
	ld.w 0x00000000[r7], r5
	andi 0x000000FF, r2, r6
	add r6, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.13_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1000
	andi 0x000000FF, r2, r5
	cmp 0x0000000F, r5
	bnh9 .BB.LABEL.13_2
	br9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1007
	st.h r2, 0x00000008[r7]
.BB.LABEL.13_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1009
	jmp [r31]
_CanTSyn_TransmitSYNC.1:
	.stack _CanTSyn_TransmitSYNC.1 = 108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1050
	prepare 0x00000079, 0x00000058
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1052
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	movea 0x0000001C, r0, r5
	movea 0x0000003C, r3, r6
	add r6, r5
	br9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry
	ld.w 0x00000000[r2], r7
	st.w r7, 0x00000000[r6]
	add 0x00000004, r2
	add 0x00000004, r6
.BB.LABEL.14_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1057
	st.b r0, 0x0000001F[r3]
	st.b r0, 0x0000001E[r3]
	st.b r0, 0x0000001D[r3]
	st.b r0, 0x0000001D[r3]
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
	movea 0x0000000D, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1058
	add r6, r2
	br9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.14_5:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_6:	; entry
	st.b r0, 0x0000000D[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1062
	ld.hu 0x0000003E[r3], r6
	movea 0x00000020, r3, r9
	movea 0x00000024, r3, r8
	movea 0x0000002C, r3, r7
	jarl _StbM_BusGetCurrentTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1063
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.14_14
.BB.LABEL.14_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1066
	ld.bu 0x00000020[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1068
	ld.b 0x00000001[r2], r2
	st.b r2, 0x0000001D[r3]
.BB.LABEL.14_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1070
	ld.bu 0x00000020[r3], r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.14_11
.BB.LABEL.14_10:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1072
	ld.b 0x00000002[r2], r2
	st.b r2, 0x0000001E[r3]
.BB.LABEL.14_11:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1074
	ld.bu 0x00000020[r3], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.14_13
.BB.LABEL.14_12:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1076
	ld.b 0x00000003[r2], r2
	st.b r2, 0x0000001F[r3]
.BB.LABEL.14_13:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1080
	st.b r2, 0x0000000D[r3]
	movea 0x0000001D, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1081
	ld.b 0x00000001[r22], r2
	st.b r2, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1082
	mov #_CanTSyn_SequenceCounters.7, r2
	add r20, r2
	ld.b 0x00000000[r2], r2
	movea 0x0000003C, r3, r5
	ld.b 0x00000000[r5], r5
	shl 0x00000004, r5
	add r2, r5
	st.b r5, 0x0000000F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1083
	ld.b 0x00000000[r22], r2
	st.b r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1086
	ld.w 0x00000034[r3], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1088
	mov r23, r6
	jarl _CanTSyn_HiHiByte.1, r31
	st.b r10, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1089
	mov r23, r6
	jarl _CanTSyn_HiLoByte.1, r31
	st.b r10, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1090
	mov r23, r6
	jarl _CanTSyn_LoHiByte.1, r31
	st.b r10, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1091
	mov r23, r6
	jarl _CanTSyn_LoLoByte.1, r31
	st.b r10, 0x00000014[r3]
	movea 0x0000000D, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1093
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1097
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	ld.w 0x00000030[r3], r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1098
	ld.w 0x00000028[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1099
	st.w r2, 0x00000008[r5]
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1100
	ld.w 0x00000024[r3], r6
	st.w r2, 0x00000008[r5]
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1101
	ld.b 0x00000002[r22], r2
	st.b r2, 0x00000014[r5]
	movea 0x0000002C, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1102
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000015[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1105
	ld.bu 0x0000003D[r3], r6
	mov r3, r20
	mov r20, r7
	jarl _CanTSyn_DealExtendedFormat.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1115
	mov r21, r6
	mov r20, r7
	jarl _CanIf_Transmit, r31
.BB.LABEL.14_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1117
	dispose 0x00000058, 0x00000079, [r31]
_CanTSyn_TransmitFUP.1:
	.stack _CanTSyn_TransmitFUP.1 = 88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1133
	prepare 0x00000779, 0x00000038
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1136
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r22
	add r2, r22
	ld.w 0x0000000C[r22], r23
	ld.w 0x00000010[r22], r7
	mov 0x00000000, r24
	mov 0x3B9ACA00, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1144
	mov r23, r6
	mov r25, r8
	mov r24, r9
	jarl __COM_udiv64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1137
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	movea 0x0000001C, r3, r5
	movea 0x0000001C, r0, r6
	add r5, r6
	mov r5, r7
	br9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry
	ld.w 0x00000000[r2], r8
	st.w r8, 0x00000000[r7]
	add 0x00000004, r2
	add 0x00000004, r7
.BB.LABEL.15_2:	; entry
	cmp r7, r6
	bnz9 .BB.LABEL.15_1
.BB.LABEL.15_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1148
	ld.bu 0x00000015[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1138
	ld.b 0x00000000[r5], r5
	movea 0x0000000C, r3, r26
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1140
	add r26, r6
	mov r26, r7
	br9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; entry
	st.b r24, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.15_5:	; entry
	cmp r7, r6
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_6:	; entry
	st.b r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1148
	andi 0x00000004, r2, r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1154
	cmov 0x0000000A, 0x00000004, r2, r2
	st.b r2, 0x0000000F[r3]
	movea 0x00000018, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1158
	st.b r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1159
	ld.b 0x00000014[r22], r2
	st.b r2, 0x0000000D[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1160
	mov #_CanTSyn_SequenceCounters.7, r2
	add r20, r2
	ld.b 0x00000000[r2], r2
	shl 0x00000004, r5
	add r2, r5
	st.b r5, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1161
	ld.b 0x00000003[r26], r2
	add r10, r2
	st.b r2, 0x0000000F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1145
	zxb r10
	mul r25, r10, r0
	sub r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1162
	mov r23, r6
	jarl _CanTSyn_HiHiByte.1, r31
	st.b r10, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1163
	mov r23, r6
	jarl _CanTSyn_HiLoByte.1, r31
	st.b r10, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1164
	mov r23, r6
	jarl _CanTSyn_LoHiByte.1, r31
	st.b r10, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1165
	mov r23, r6
	jarl _CanTSyn_LoLoByte.1, r31
	st.b r10, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1167
	st.w r26, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1169
	ld.bu 0x0000001D[r3], r6
	mov r3, r20
	mov r20, r7
	jarl _CanTSyn_DealExtendedFormat.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1182
	mov r21, r6
	mov r20, r7
	jarl _CanIf_Transmit, r31
	dispose 0x00000038, 0x00000779, [r31]
_CanTSyn_TransmitOFS.1:
	.stack _CanTSyn_TransmitOFS.1 = 112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1199
	prepare 0x00000779, 0x00000050
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1201
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	movea 0x0000001C, r0, r5
	movea 0x00000034, r3, r6
	add r6, r5
	br9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry
	ld.w 0x00000000[r2], r7
	st.w r7, 0x00000000[r6]
	add 0x00000004, r2
	add 0x00000004, r6
.BB.LABEL.16_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.16_1
.BB.LABEL.16_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1214
	ld.hu 0x00000036[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1216
	ld.bu 0x00000034[r3], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1207
	st.b r0, 0x0000001F[r3]
	st.b r0, 0x0000001E[r3]
	st.b r0, 0x0000001D[r3]
	st.b r0, 0x0000001D[r3]
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
	movea 0x0000000D, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1209
	add r7, r2
	br9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; entry
	st.b r5, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.16_5:	; entry
	cmp r7, r2
	bnz9 .BB.LABEL.16_4
.BB.LABEL.16_6:	; entry
	st.b r0, 0x0000000D[r3]
	movea 0x00000020, r3, r8
	movea 0x00000024, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1214
	jarl _StbM_GetOffset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1216
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.16_17
.BB.LABEL.16_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1219
	ld.bu 0x00000020[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_9
.BB.LABEL.16_8:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1221
	ld.b 0x00000001[r2], r2
	st.b r2, 0x0000001D[r3]
.BB.LABEL.16_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1223
	ld.bu 0x00000020[r3], r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.16_11
.BB.LABEL.16_10:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1225
	ld.b 0x00000002[r2], r2
	st.b r2, 0x0000001E[r3]
.BB.LABEL.16_11:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1227
	ld.bu 0x00000020[r3], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.16_13
.BB.LABEL.16_12:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1229
	ld.b 0x00000003[r2], r2
	st.b r2, 0x0000001F[r3]
.BB.LABEL.16_13:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1237
	ld.bu 0x00000035[r3], r2
	cmp 0x00000001, r2
	ld.bu 0x00000024[r3], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1233
	ld.w 0x00000028[r3], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1232
	ld.w 0x0000002C[r3], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1237
	bnz9 .BB.LABEL.16_15
.BB.LABEL.16_14:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1239
	st.h r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1248
	shr 0x00000002, r23
	andi 0x00000001, r23, r23
	st.b r23, 0x00000010[r3]
	movea 0x00000054, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1252
	st.b r23, 0x0000000D[r3]
	movea 0x0000001D, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1253
	ld.b 0x00000002[r23], r2
	st.b r2, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1254
	mov #_CanTSyn_SequenceCounters.7, r2
	add r2, r20
	ld.b 0x00000000[r20], r20
	shl 0x00000004, r22
	add r20, r22
	st.b r22, 0x0000000F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1255
	ld.b 0x00000000[r23], r20
	st.b r20, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1256
	ld.b 0x00000001[r23], r20
	st.b r20, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1257
	st.b r0, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1258
	st.b r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1259
	mov r25, r6
	jarl _CanTSyn_HiHiByte.1, r31
	st.b r10, 0x00000015[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1260
	mov r25, r6
	jarl _CanTSyn_HiLoByte.1, r31
	st.b r10, 0x00000016[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1261
	mov r25, r6
	jarl _CanTSyn_LoHiByte.1, r31
	st.b r10, 0x00000017[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1262
	mov r25, r6
	jarl _CanTSyn_LoLoByte.1, r31
	st.b r10, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1263
	mov r24, r6
	jarl _CanTSyn_HiHiByte.1, r31
	st.b r10, 0x00000019[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1264
	mov r24, r6
	jarl _CanTSyn_HiLoByte.1, r31
	st.b r10, 0x0000001A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1265
	mov r24, r6
	jarl _CanTSyn_LoHiByte.1, r31
	st.b r10, 0x0000001B[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1266
	mov r24, r6
	jarl _CanTSyn_LoLoByte.1, r31
	st.b r10, 0x0000001C[r3]
	br9 .BB.LABEL.16_16
.BB.LABEL.16_15:	; if_else_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1270
	st.h r2, 0x00000008[r3]
	movea 0x00000034, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1273
	st.b r2, 0x0000000D[r3]
	movea 0x0000001D, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1274
	ld.b 0x00000001[r26], r2
	st.b r2, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1275
	mov #_CanTSyn_SequenceCounters.7, r2
	add r20, r2
	ld.b 0x00000000[r2], r2
	shl 0x00000004, r22
	add r2, r22
	st.b r22, 0x0000000F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1276
	ld.b 0x00000000[r26], r2
	st.b r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1277
	mov r25, r6
	jarl _CanTSyn_HiHiByte.1, r31
	st.b r10, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1278
	mov r25, r6
	jarl _CanTSyn_HiLoByte.1, r31
	st.b r10, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1279
	mov r25, r6
	jarl _CanTSyn_LoHiByte.1, r31
	st.b r10, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1280
	mov r25, r6
	jarl _CanTSyn_LoLoByte.1, r31
	st.b r10, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1282
	mulhi 0x0000002C, r20, r2
	mov #_CanTSyn_MasterTimeInfo.6, r5
	add r2, r5
	st.b r23, 0x00000015[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1283
	st.w r24, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1284
	ld.b 0x00000002[r26], r2
	st.b r2, 0x00000014[r5]
.BB.LABEL.16_16:	; if_break_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x0000000D, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1287
	st.w r2, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1306
	mov r21, r6
	jarl _CanIf_Transmit, r31
.BB.LABEL.16_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1308
	dispose 0x00000050, 0x00000779, [r31]
_CanTSyn_TransmitOFNS.1:
	.stack _CanTSyn_TransmitOFNS.1 = 72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1324
	prepare 0x00000071, 0x00000038
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1326
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r6, r5
	add r5, r2
	movea 0x0000001C, r3, r5
	movea 0x0000001C, r0, r7
	add r5, r7
	mov r5, r8
	br9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; entry
	ld.w 0x00000000[r2], r9
	st.w r9, 0x00000000[r8]
	add 0x00000004, r2
	add 0x00000004, r8
.BB.LABEL.17_2:	; entry
	cmp r8, r7
	bnz9 .BB.LABEL.17_1
.BB.LABEL.17_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1328
	mulhi 0x0000002C, r6, r2
	mov #_CanTSyn_MasterTimeInfo.6, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1329
	ld.w 0x00000018[r7], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1328
	ld.b 0x00000015[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1327
	ld.b 0x00000000[r5], r5
	movea 0x0000000C, r3, r22
	movea 0x00000010, r0, r8
	mov 0x00000000, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1330
	add r22, r8
	mov r22, r10
	br9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; entry
	st.b r9, 0x00000000[r10]
	add 0x00000001, r10
.BB.LABEL.17_5:	; entry
	cmp r10, r8
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_6:	; entry
	st.b r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1340
	shr 0x00000002, r2
	andi 0x00000001, r2, r2
	st.b r2, 0x0000000F[r3]
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1343
	st.h r2, 0x00000008[r3]
	movea 0x0000003C, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1346
	st.b r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1347
	ld.b 0x00000014[r7], r2
	st.b r2, 0x0000000D[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1348
	mov #_CanTSyn_SequenceCounters.7, r2
	add r6, r2
	ld.b 0x00000000[r2], r2
	shl 0x00000004, r5
	add r2, r5
	st.b r5, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1349
	mov r21, r6
	jarl _CanTSyn_HiHiByte.1, r31
	st.b r10, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1350
	mov r21, r6
	jarl _CanTSyn_HiLoByte.1, r31
	st.b r10, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1351
	mov r21, r6
	jarl _CanTSyn_LoHiByte.1, r31
	st.b r10, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1352
	mov r21, r6
	jarl _CanTSyn_LoLoByte.1, r31
	st.b r10, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1354
	st.w r22, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1365
	mov r20, r6
	jarl _CanIf_Transmit, r31
	dispose 0x00000038, 0x00000071, [r31]
_CanTSyn_RxSYNC.1:
	.stack _CanTSyn_RxSYNC.1 = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1381
	prepare 0x00000079, 0x00000020
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1386
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	movea 0x0000001C, r0, r5
	mov r3, r6
	add r6, r5
	br9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; entry
	ld.w 0x00000000[r2], r7
	st.w r7, 0x00000000[r6]
	add 0x00000004, r2
	add 0x00000004, r6
.BB.LABEL.18_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.18_1
.BB.LABEL.18_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1391
	ld.w 0x00000018[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1395
	ld.bu 0x00000004[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1389
	ld.w 0x00000000[r21], r2
	ld.bu 0x00000000[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1394
	ld.hu 0x00000002[r3], r6
	movea 0x0000001E, r3, r8
	movea 0x0000001F, r3, r7
	jarl _StbM_GetTimeBaseStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1395
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_14
.BB.LABEL.18_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1400
	mulhi 0x0000001C, r20, r2
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r2, r5
	ld.bu 0x00000014[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1398
	ld.w 0x00000000[r21], r6
	ld.bu 0x00000002[r6], r6
	andi 0x0000000F, r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1400
	cmp r2, r7
	movea 0x00000014, r5, r5
	bnh9 .BB.LABEL.18_7
.BB.LABEL.18_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	andi 0x0000000F, r6, r6
	sub r2, r6
	cmp 0x00000000, r7
	bz9 .BB.LABEL.18_10
.BB.LABEL.18_6:	; bb
	cmp r22, r6
	bgt9 .BB.LABEL.18_8
	br9 .BB.LABEL.18_10
.BB.LABEL.18_7:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1403
	cmp 0x00000000, r7
	bz9 .BB.LABEL.18_10
.BB.LABEL.18_8:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	tst1 0x00000000, 0x0000001F[r3]
	bnz9 .BB.LABEL.18_10
.BB.LABEL.18_9:	; if_then_bb94
	mov 0x00000001, r10
.BB.LABEL.18_10:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1409
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_14
.BB.LABEL.18_11:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1411
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanTSyn_SlaveStatus.10, r6
	add r2, r6
	mov 0x00000001, r2
	st.w r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1424
	mulhi 0x0000001C, r20, r2
	mov #_CanTSyn_SlaveTimeInfo.2, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1413
	ld.w 0x00000000[r21], r2
	ld.b 0x00000004[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1414
	shl 0x00000018, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1415
	ld.bu 0x00000005[r2], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1416
	shl 0x00000010, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1417
	or r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1418
	ld.bu 0x00000006[r2], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1419
	shl 0x00000008, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1420
	or r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1421
	ld.bu 0x00000007[r2], r2
	or r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1424
	st.w r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1425
	ld.w 0x00000000[r21], r2
	ld.b 0x00000003[r2], r2
	st.b r2, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1426
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1429
	add 0xFFFFFFF0, r23
	bnz9 .BB.LABEL.18_13
.BB.LABEL.18_12:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1431
	mulhi 0x0000001C, r20, r20
	mov #_CanTSyn_SlaveTimeInfo.2, r2
	add r20, r2
	ld.w 0x00000000[r21], r20
	ld.b 0x00000001[r20], r20
	st.b r20, 0x0000000D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1432
	st.b r0, 0x00000015[r2]
	dispose 0x00000020, 0x00000079, [r31]
.BB.LABEL.18_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1436
	mulhi 0x0000001C, r20, r2
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000015[r5]
.BB.LABEL.18_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1440
	dispose 0x00000020, 0x00000079, [r31]
_CanTSyn_RxFUP.1:
	.stack _CanTSyn_RxFUP.1 = 68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1455
	prepare 0x00000779, 0x00000024
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1458
	mulhi 0x0000001C, r6, r2
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r5
	ld.w LOWW(#_CanTSyn_configPtr.4)[r5], r5
	ld.w 0x00000000[r5], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1475
	ld.hu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1468
	ld.w 0x00000000[r7], r5
	ld.bu 0x00000000[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1471
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1475
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r2, r5
	ld.bu 0x00000014[r5], r2
	ld.w 0x00000000[r7], r8
	ld.bu 0x00000002[r8], r8
	andi 0x0000000F, r8, r8
	cmp r2, r8
	movea 0x00000014, r5, r5
	mov r6, r22
	mov r7, r23
	bnz17 .BB.LABEL.19_8
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x00000008, r3, r9
	movea 0x0000001C, r3, r8
	movea 0x0000000C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1478
	mov r20, r6
	jarl _StbM_BusGetCurrentTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1479
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.19_11
.BB.LABEL.19_2:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x0000000C, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1494
	ld.b 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1500
	ori 0x00000004, r2, r5
	mov 0xFFFFFFFB, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1496
	and r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1483
	ld.w 0x00000000[r23], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1492
	ld.bu 0x00000003[r6], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1494
	andi 0x000000FC, r24, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1500
	cmov 0x00000002, r2, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1491
	ld.bu 0x00000007[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1488
	ld.bu 0x00000006[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1485
	ld.bu 0x00000005[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1483
	ld.b 0x00000004[r6], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1500
	st.b r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1503
	mulhi 0x0000001C, r22, r2
	mov #_CanTSyn_SlaveTimeInfo.2, r6
	add r2, r6
	ld.b 0x0000000C[r6], r2
	st.b r2, 0x00000009[r3]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1504
	st.b r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1484
	shl 0x00000018, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1486
	shl 0x00000010, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1487
	or r8, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1489
	shl 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1490
	or r7, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1491
	or r5, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1506
	ld.bu 0x00000015[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_then_bb53.if_break_bb141_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000002, r2
	br9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_then_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1508
	mulhi 0x0000001C, r22, r2
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r2, r5
	ld.b 0x0000000D[r5], r2
	st.b r2, 0x0000000A[r3]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1509
	st.b r2, 0x00000008[r3]
	mov 0x00000003, r2
.BB.LABEL.19_5:	; if_break_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1513
	addi 0xFFFFFFE8, r21, r0
	bnz9 .BB.LABEL.19_7
.BB.LABEL.19_6:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1515
	ld.w 0x00000000[r23], r5
	ld.b 0x00000001[r5], r5
	st.b r5, 0x0000000B[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1516
	st.b r2, 0x00000008[r3]
.BB.LABEL.19_7:	; if_break_bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	movea 0x0000001C, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1519
	mov r20, r6
	mov r21, r7
	jarl _StbM_GetCurrentVirtualLocalTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1524
	mulhi 0x0000001C, r22, r2
	mov #_CanTSyn_SlaveTimeInfo.2, r22
	add r2, r22
	ld.w 0x00000008[r22], r2
	ld.w 0x00000004[r22], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1521
	ld.w 0x00000020[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1523
	ld.w 0x0000001C[r3], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1524
	sub r5, r23
	sbf 0x00000001, r2, r6, r7
	mov 0x3B9ACA00, r26
	mov 0x00000000, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1525
	mov r23, r6
	mov r26, r8
	jarl __COM_udiv64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1526
	mov r10, r2
	mul r26, r2, r0
	sub r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1527
	add r23, r25
	divu r26, r25, r2
	ld.w 0x00000000[r22], r5
	andi 0x00000003, r24, r6
	add r5, r6
	add r10, r6
	add r25, r6
	st.w r6, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1529
	st.w r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1532
	st.w r21, 0x00000000[r3]
	movea 0x00000004, r3, r9
	movea 0x00000008, r3, r8
	movea 0x0000000C, r3, r7
	mov r20, r6
	jarl _StbM_BusSetGlobalTime, r31
	dispose 0x00000024, 0x00000779, [r31]
.BB.LABEL.19_8:	; if_else_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1537
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_10
.BB.LABEL.19_9:	; if_then_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x0000000F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1539
	st.b r2, 0x00000000[r5]
	dispose 0x00000024, 0x00000779, [r31]
.BB.LABEL.19_10:	; if_else_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1543
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000000[r5]
.BB.LABEL.19_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1546
	dispose 0x00000024, 0x00000779, [r31]
_CanTSyn_RxOFS.1:
	.stack _CanTSyn_RxOFS.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1561
	prepare 0x00000479, 0x00000020
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1563
	mulhi 0x0000001C, r20, r2
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r5
	ld.w LOWW(#_CanTSyn_configPtr.4)[r5], r6
	ld.w 0x00000000[r6], r6
	add r2, r6
	movea 0x0000001C, r0, r7
	movea 0x00000004, r3, r8
	add r8, r7
	br9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; entry
	ld.w 0x00000000[r6], r9
	st.w r9, 0x00000000[r8]
	add 0x00000004, r6
	add 0x00000004, r8
.BB.LABEL.20_2:	; entry
	cmp r8, r7
	bnz9 .BB.LABEL.20_1
.BB.LABEL.20_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1574
	ld.w LOWW(#_CanTSyn_configPtr.4)[r5], r5
	ld.w 0x00000000[r5], r5
	add r2, r5
	ld.hu 0x00000002[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1568
	ld.w 0x00000000[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1569
	ld.bu 0x00000002[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1570
	ld.w 0x0000001C[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1579
	ld.bu 0x00000004[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1568
	ld.bu 0x00000000[r2], r24
	movea 0x00000002, r3, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1574
	jarl _StbM_GetTimeBaseStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1569
	andi 0x0000000F, r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1579
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_14
.BB.LABEL.20_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1583
	mulhi 0x0000001C, r20, r5
	mov #_CanTSyn_SlaveTimeInfo.2, r6
	add r5, r6
	ld.bu 0x00000014[r6], r5
	cmp r5, r2
	movea 0x00000014, r6, r6
	bnh9 .BB.LABEL.20_7
.BB.LABEL.20_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	andi 0x0000000F, r22, r7
	sub r5, r7
	cmp 0x00000000, r2
	bz9 .BB.LABEL.20_10
.BB.LABEL.20_6:	; bb
	cmp r23, r7
	bgt9 .BB.LABEL.20_8
	br9 .BB.LABEL.20_10
.BB.LABEL.20_7:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1586
	cmp 0x00000000, r2
	bz9 .BB.LABEL.20_10
.BB.LABEL.20_8:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	tst1 0x00000000, 0x00000002[r3]
	bnz9 .BB.LABEL.20_10
.BB.LABEL.20_9:	; if_then_bb98
	mov 0x00000001, r10
.BB.LABEL.20_10:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1592
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_14
.BB.LABEL.20_11:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1594
	mov r20, r5
	shl 0x00000002, r5
	mov #_CanTSyn_SlaveStatus.10, r7
	add r5, r7
	mov 0x00000001, r5
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1607
	mulhi 0x0000001C, r20, r5
	mov #_CanTSyn_SlaveTimeInfo.2, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1596
	ld.w 0x00000000[r21], r5
	ld.b 0x00000004[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1597
	shl 0x00000018, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1598
	ld.bu 0x00000005[r5], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1599
	shl 0x00000010, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1600
	or r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1601
	ld.bu 0x00000006[r5], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1602
	shl 0x00000008, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1603
	or r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1604
	ld.bu 0x00000007[r5], r5
	or r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1607
	st.w r8, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1608
	ld.w 0x00000000[r21], r5
	ld.b 0x00000003[r5], r5
	st.b r5, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1609
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1612
	addi 0xFFFFFFCC, r24, r0
	bnz9 .BB.LABEL.20_13
.BB.LABEL.20_12:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1614
	mulhi 0x0000001C, r20, r20
	mov #_CanTSyn_SlaveTimeInfo.2, r2
	add r20, r2
	ld.w 0x00000000[r21], r20
	ld.b 0x00000001[r20], r20
	st.b r20, 0x0000000D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1615
	st.b r0, 0x00000015[r2]
	dispose 0x00000020, 0x00000479, [r31]
.BB.LABEL.20_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1619
	mulhi 0x0000001C, r20, r2
	mov #_CanTSyn_SlaveTimeInfo.2, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000015[r5]
.BB.LABEL.20_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1623
	dispose 0x00000020, 0x00000479, [r31]
_CanTSyn_RxOFNS.1:
	.stack _CanTSyn_RxOFNS.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1638
	prepare 0x00000079, 0x00000014
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1641
	mulhi 0x0000001C, r6, r2
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r5
	ld.w LOWW(#_CanTSyn_configPtr.4)[r5], r5
	ld.w 0x00000000[r5], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1650
	mov #_CanTSyn_SlaveTimeInfo.2, r8
	add r2, r8
	ld.bu 0x00000014[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1642
	ld.w 0x00000000[r7], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1650
	ld.bu 0x00000002[r8], r9
	andi 0x0000000F, r9, r9
	cmp r2, r9
	ld.hu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1642
	ld.bu 0x00000000[r8], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1650
	mov r6, r22
	mov r7, r23
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov r3, r8
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1653
	mov r20, r6
	jarl _StbM_GetOffset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1654
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_2:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1657
	ld.w 0x00000000[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1665
	ld.bu 0x00000007[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1662
	ld.bu 0x00000006[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1659
	ld.bu 0x00000005[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1657
	ld.b 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1668
	st.h r0, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1669
	mulhi 0x0000001C, r22, r8
	mov #_CanTSyn_SlaveTimeInfo.2, r9
	add r8, r9
	ld.w 0x00000010[r9], r8
	st.w r8, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1658
	shl 0x00000018, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1660
	shl 0x00000010, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1661
	or r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1663
	shl 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1664
	or r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1665
	or r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1670
	st.w r2, 0x00000008[r3]
	movea 0x00000004, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1671
	ld.b 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1677
	ori 0x00000004, r2, r5
	mov 0xFFFFFFFB, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1673
	and r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1671
	ld.w 0x00000000[r23], r6
	ld.bu 0x00000003[r6], r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1677
	cmov 0x00000002, r2, r5, r2
	st.b r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1680
	ld.b 0x0000000C[r9], r2
	st.b r2, 0x00000001[r3]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1681
	st.b r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1684
	ld.bu 0x00000015[r9], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_then_bb46.if_break_bb132_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000002, r22
	br9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1686
	mulhi 0x0000001C, r22, r22
	mov #_CanTSyn_SlaveTimeInfo.2, r2
	add r22, r2
	ld.b 0x0000000D[r2], r22
	st.b r22, 0x00000002[r3]
	mov 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1687
	st.b r22, 0x00000000[r3]
	mov 0x00000003, r22
.BB.LABEL.21_5:	; if_break_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1689
	addi 0xFFFFFFC4, r21, r0
	bnz9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1691
	ld.w 0x00000000[r23], r2
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1692
	st.b r22, 0x00000000[r3]
.BB.LABEL.21_7:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov r3, r8
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1696
	mov r20, r6
	jarl _StbM_SetOffset, r31
.BB.LABEL.21_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1699
	dispose 0x00000014, 0x00000079, [r31]
_CanTSyn_RxOFSFD.1:
	.stack _CanTSyn_RxOFSFD.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1714
	prepare 0x00000679, 0x0000001C
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1717
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1729
	ld.hu 0x00000002[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1726
	ld.w 0x00000018[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1731
	ld.bu 0x00000004[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1718
	ld.w 0x00000000[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1725
	ld.bu 0x00000002[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1718
	ld.bu 0x00000000[r2], r25
	mov r3, r9
	movea 0x00000014, r3, r8
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1729
	mov r22, r6
	jarl _StbM_BusGetCurrentTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1725
	andi 0x0000000F, r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1731
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_11
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1735
	mulhi 0x0000001C, r20, r5
	mov #_CanTSyn_SlaveTimeInfo.2, r6
	add r5, r6
	ld.bu 0x00000014[r6], r5
	cmp r5, r2
	movea 0x00000014, r6, r6
	bnh9 .BB.LABEL.22_4
.BB.LABEL.22_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	andi 0x0000000F, r24, r7
	sub r5, r7
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_7
.BB.LABEL.22_3:	; bb
	cmp r23, r7
	bgt9 .BB.LABEL.22_5
	br9 .BB.LABEL.22_7
.BB.LABEL.22_4:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1738
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_7
.BB.LABEL.22_5:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	tst1 0x00000000, 0x00000004[r3]
	bnz9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; if_then_bb100
	mov 0x00000001, r10
.BB.LABEL.22_7:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1744
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_11
.BB.LABEL.22_8:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1746
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1749
	ld.w 0x00000000[r21], r2
	ld.b 0x00000008[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1750
	shl 0x00000018, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1751
	ld.bu 0x00000009[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1752
	shl 0x00000010, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1753
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1754
	ld.bu 0x0000000A[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1755
	shl 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1756
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1757
	ld.bu 0x0000000B[r2], r6
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1760
	ld.bu 0x0000000D[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1758
	ld.b 0x0000000C[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1763
	ld.bu 0x0000000E[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1766
	ld.bu 0x0000000F[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1769
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1759
	shl 0x00000018, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1761
	shl 0x00000010, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1762
	or r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1764
	shl 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1765
	or r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1766
	or r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1770
	st.w r7, 0x00000008[r3]
	movea 0x00000004, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1771
	ld.b 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1777
	ori 0x00000004, r2, r5
	mov 0xFFFFFFFB, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1773
	and r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1771
	ld.w 0x00000000[r21], r6
	ld.bu 0x00000003[r6], r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1777
	cmov 0x00000002, r2, r5, r2
	st.b r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1779
	ld.w 0x00000000[r21], r2
	ld.b 0x00000004[r2], r2
	st.b r2, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1780
	ld.w 0x00000000[r21], r2
	ld.b 0x00000005[r2], r5
	st.b r5, 0x00000002[r3]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1781
	st.b r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1784
	addi 0xFFFFFFAC, r25, r0
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1786
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000003[r3]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1787
	st.b r2, 0x00000000[r3]
.BB.LABEL.22_10:	; if_break_bb240
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov r3, r8
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1791
	mov r22, r6
	jarl _StbM_SetOffset, r31
.BB.LABEL.22_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1794
	dispose 0x0000001C, 0x00000679, [r31]
_CanTSyn_CheckGlobalTimeBaseBit.1:
	.stack _CanTSyn_CheckGlobalTimeBaseBit.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1809
	prepare 0x00000041, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1817
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.hu 0x00000002[r2], r6
	movea 0x00000002, r3, r8
	movea 0x00000003, r3, r7
	jarl _StbM_GetTimeBaseStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1821
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1824
	movhi HIGHW1(#_CanTSyn_configPtr.4), r0, r2
	ld.w LOWW(#_CanTSyn_configPtr.4)[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x0000000F, r2
	bh9 .BB.LABEL.23_5
.BB.LABEL.23_2:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1826
	tst1 0x00000003, 0x00000003[r3]
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb30.if_break_bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.23_7
.BB.LABEL.23_4:	; if_then_bb37
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1828
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.23_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1833
	tst1 0x00000003, 0x00000002[r3]
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_6:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 0
	mov 0x00000000, r10
.BB.LABEL.23_7:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTSyn/CanTSyn.c", 1844
	dispose 0x00000004, 0x00000041, [r31]
	.section .bss, bss
	.align 4
_CanTSyn_TransmissionMode.1:
	.ds (4)
	.align 4
_CanTSyn_SlaveTimeInfo.2:
	.ds (28)
	.align 4
_CanTSyn_MasterTimeInfo.6:
	.ds (44)
_CanTSyn_BaseCounterValues.8:
	.ds (1)
	.align 4
_CanTSyn_MasterStatus.9:
	.ds (4)
	.align 4
_CanTSyn_SlaveStatus.10:
	.ds (4)
	.section .data, data
_CanTSyn_ImmediateSent.3:
	.ds (1)
	.align 4
_CanTSyn_configPtr.4:
	.ds (4)
	.align 4
_CanTSyn_InitStatus.5:
	.dw 0x00000001
_CanTSyn_SequenceCounters.7:
	.ds (1)
