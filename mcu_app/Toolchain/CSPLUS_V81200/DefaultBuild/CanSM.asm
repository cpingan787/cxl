#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\CAN\CanSM\CanSM.c -oDefaultBuild\CanSM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_eb96e4dba1e64a7d98beb498620e4b6214en2cqd.5jb
#@	compiled at Fri Mar 27 09:50:16 2026

	.file "..\..\Bsw\Communication\CAN\CanSM\CanSM.c"

	$reg_mode 32
	.dbl_size 8

	.public _CanSM_Init
	.extern _Det_ReportError
	.public _CanSM_DeInit
	.extern _ComM_BusSM_ModeIndication
	.public _CanSM_MainFunction
	.public _CanSM_RequestComMode
	.public _CanSM_GetCurrentComMode
	.public _CanSM_StartWakeupSource
	.public _CanSM_StopWakeupSource
	.public _CanSM_ControllerBusOff
	.public _CanSM_ControllerModeIndication
	.public _CanSM_TransceiverModeIndication
	.public _CanSM_TxTimeoutException
	.extern _Dem_ReportErrorStatus
	.extern _CanIf_SetPduMode
	.extern _BswM_CanSM_CurrentState
	.extern _CanIf_SetControllerMode
	.extern _Det_ReportRuntimeError

	.section .text, text
_CanSM_Init:
	.stack _CanSM_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 373
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 379
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000002, r9
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 381
	mov r7, r8
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 382
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_2:	; if_then_bb13.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 387
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 389
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_CanSM_Status.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 390
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	st.w r6, LOWW(#_CanSM_ConfigPtr.2)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 405
	andi 0x000000FF, r2, r5
	mul 0x00000038, r5, r0
	mov #_CanSM_NetWorkRunTime.3, r6
	add r5, r6
	mov 0x00000001, r5
	st.w r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 406
	st.w r0, 0x00000024[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 408
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 409
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 410
	st.w r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 412
	st.w r0, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 414
	st.b r0, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 415
	st.b r0, 0x00000011[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 416
	st.b r0, 0x00000012[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 417
	st.w r0, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 418
	st.w r0, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 419
	st.b r0, 0x0000001C[r6]
	add 0x00000001, r2
.BB.LABEL.1_5:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 392
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_6:	; bb70.bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 429
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	mov #_CanSM_ControllerMode.4, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.1_8:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 427
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 434
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_DeInit:
	.stack _CanSM_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 442
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 445
	jarl _CanSM_ValidateAllNetworksNoCom.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; entry.bb11_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 451
	andi 0x000000FF, r2, r5
	mul 0x00000038, r5, r0
	mov #_CanSM_NetWorkRunTime.3, r6
	add r5, r6
	st.w r0, 0x00000020[r6]
	add 0x00000001, r2
.BB.LABEL.2_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 448
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 453
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	st.w r0, LOWW(#_CanSM_Status.1)[r2]
.BB.LABEL.2_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 455
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_TimerHandler.1:
	.stack _CanSM_TimerHandler.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 650
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 652
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 654
	add 0xFFFFFFFF, r2
	st.w r2, 0x00000000[r6]
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 656
	ld.w 0x00000004[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 658
	add 0xFFFFFFFF, r2
	st.w r2, 0x00000004[r6]
.BB.LABEL.3_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 660
	jmp [r31]
_CanSM_FindNetworkIndex.1:
	.stack _CanSM_FindNetworkIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 662
	mov 0x00000000, r10
	br9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 667
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r10, r5
	mul 0x00000018, r5, r0
	add r5, r2
	ld.bu 0x00000009[r2], r2
	cmp r2, r6
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0x00000001, r10
.BB.LABEL.4_3:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 665
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.4_1
.BB.LABEL.4_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 673
	zxb r10
	jmp [r31]
_CanSM_ComMModeIndication.1:
	.stack _CanSM_ComMModeIndication.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 675
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 677
	cmp 0x00000000, r8
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 679
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r6, r5
	add r5, r2
	ld.bu 0x00000009[r2], r6
	jarl _ComM_BusSM_ModeIndication, r31
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 681
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_MainFunction:
	.stack _CanSM_MainFunction = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 694
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 713
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_1:	; entry.bb25_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 729
	andi 0x000000FF, r20, r21
	mov r21, r2
	mul 0x00000038, r2, r0
	mov #_CanSM_NetWorkRunTime.3, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 730
	jarl _CanSM_TimerHandler.1, r31
.BB.LABEL.6_3:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 731
	mulhi 0x00000038, r21, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	shl 0x00000002, r2
	mov #_CanSM_DoBehaviors.5.CanSM_MainFunction, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	andi 0x000000FF, r20, r6
	jarl [r2], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0x00000001, r20
.BB.LABEL.6_5:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 719
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 737
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_RequestComMode:
	.stack _CanSM_RequestComMode = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 739
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 744
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r20
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 746
	mov r20, r9
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 747
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_2:	; if_then_bb15.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 752
	jarl _CanSM_FindNetworkIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 754
	cmp 0x00000000, r10
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000003, r9
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 756
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 777
	cmp 0x00000000, r20
	bz9 .BB.LABEL.7_9
.BB.LABEL.7_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0xFFFFFFFF, r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.7_13
.BB.LABEL.7_6:	; if_else_bb
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.7_18
.BB.LABEL.7_7:	; switch_clause_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 811
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000006, r2
	movea 0x00000020, r5, r5
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_8:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 813
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000003, r2
	st.w r2, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 814
	mov r10, r6
	jarl _CanSM_EFullComAction.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 815
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_9:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 780
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	addi 0xFFFFFFFB, r2, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.7_18
.BB.LABEL.7_11:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 787
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
.BB.LABEL.7_12:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	st.w r2, 0x00000018[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 840
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_13:	; switch_clause_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 792
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.7_18
.BB.LABEL.7_14:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 794
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000002, r2
	st.w r2, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 795
	mov r10, r6
	jarl _CanSM_EFullToSilentComAction.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 796
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_15:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 817
	add 0xFFFFFFFE, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.7_17
.BB.LABEL.7_16:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	ld.w 0x00000000[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_18
.BB.LABEL.7_17:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 825
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000003, r2
	br9 .BB.LABEL.7_12
.BB.LABEL.7_18:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 840
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_GetCurrentComMode:
	.stack _CanSM_GetCurrentComMode = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 842
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 848
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb
	mov 0x00000001, r9
	mov 0x00000003, r8
	mov 0x00000000, r22
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 850
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 853
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000002, r9
	mov 0x00000003, r8
	mov 0x00000000, r22
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 855
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.8_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 862
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 865
	mov r21, r6
	jarl _CanSM_FindNetworkIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 867
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 869
	mov r8, r9
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.8_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 888
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.b 0x0000001C[r5], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 889
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.8_9:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 893
	dispose 0x00000000, 0x00000071, [r31]
_CanSM_StartWakeupSource:
	.stack _CanSM_StartWakeupSource = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 909
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 915
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r20
	movea 0x00000011, r0, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 917
	mov r20, r9
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 918
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.9_2:	; if_then_bb14.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 923
	jarl _CanSM_FindNetworkIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 925
	cmp 0x00000000, r10
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000003, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 927
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.9_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 947
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000001, r2
	movea 0x00000020, r5, r2
	bh9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 950
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 959
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000002, r2
	st.w r2, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 961
	st.b r0, 0x00000011[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 962
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.9_6:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 967
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_StopWakeupSource:
	.stack _CanSM_StopWakeupSource = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 983
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 989
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r20
	movea 0x00000012, r0, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 991
	mov r20, r9
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 992
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.10_2:	; if_then_bb14.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 997
	jarl _CanSM_FindNetworkIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 999
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000003, r9
	movea 0x00000012, r0, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1001
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.10_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1021
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000003, r2
	movea 0x00000020, r5, r2
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1034
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1035
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	st.w r0, 0x00000024[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1037
	st.b r0, 0x00000011[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1038
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.10_6:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1043
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_ControllerBusOff:
	.stack _CanSM_ControllerBusOff = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1049
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1053
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.11_6
.BB.LABEL.11_2:	; if_then_bb
	mov 0x00000001, r9
	mov 0x00000004, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1055
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1056
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_3:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1065
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r7
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r7], r7
	ld.w 0x00000004[r7], r7
	andi 0x000000FF, r2, r8
	mul 0x00000018, r8, r0
	add r8, r7
	ld.w 0x00000010[r7], r7
	ld.w 0x00000004[r7], r7
	ld.bu 0x00000000[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1067
	cmp r6, r7
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1084
	shl 0x00000002, r7
	mov #_CanSM_ControllerMode.4, r5
	add r7, r5
	mov 0x00000002, r7
	st.w r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1085
	andi 0x000000FF, r2, r5
	mul 0x00000038, r5, r0
	mov #_CanSM_NetWorkRunTime.3, r7
	add r5, r7
	mov 0x00000001, r5
	st.b r5, 0x00000012[r7]
.BB.LABEL.11_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0x00000001, r2
.BB.LABEL.11_6:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1062
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_8:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1093
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000004, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1095
	mov r8, r9
	jarl _Det_ReportError, r31
.BB.LABEL.11_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1103
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_ControllerModeIndication:
	.stack _CanSM_ControllerModeIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1110
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1115
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.bb47_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.12_7
.BB.LABEL.12_2:	; if_then_bb
	mov 0x00000001, r9
.BB.LABEL.12_3:	; if_then_bb
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1168
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_4:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1131
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r8
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r8], r8
	ld.w 0x00000004[r8], r8
	andi 0x000000FF, r5, r9
	mul 0x00000018, r9, r0
	add r9, r8
	ld.w 0x00000010[r8], r8
	ld.w 0x00000004[r8], r8
	ld.bu 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1133
	cmp r8, r6
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1150
	mov r6, r2
	shl 0x00000002, r2
	mov #_CanSM_ControllerMode.4, r8
	add r2, r8
	st.w r7, 0x00000000[r8]
	mov 0x00000001, r2
.BB.LABEL.12_6:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0x00000001, r5
.BB.LABEL.12_7:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1128
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.12_9
.BB.LABEL.12_8:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_9:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1158
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_10:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000004, r9
	br9 .BB.LABEL.12_3
.BB.LABEL.12_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1168
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_TransceiverModeIndication:
	.stack _CanSM_TransceiverModeIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1189
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1194
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.13_8
.BB.LABEL.13_2:	; if_then_bb
	mov 0x00000001, r9
.BB.LABEL.13_3:	; if_then_bb
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1259
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1208
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r5
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r5], r5
	ld.w 0x00000004[r5], r8
	andi 0x000000FF, r2, r9
	mul 0x00000018, r9, r0
	add r9, r8
	ld.w 0x0000000C[r8], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.13_7
.BB.LABEL.13_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1210
	andi 0x000000FF, r2, r8
	mul 0x00000018, r8, r0
	ld.w 0x00000004[r5], r5
	add r8, r5
	ld.w 0x0000000C[r5], r5
	ld.bu 0x00000000[r5], r5
	cmp r5, r6
	bnz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1226
	zxb r2
	mul 0x00000038, r2, r0
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	br9 .BB.LABEL.13_10
.BB.LABEL.13_7:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0x00000001, r2
.BB.LABEL.13_8:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1206
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_9:	; bb52.bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r5
.BB.LABEL.13_10:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1233
	cmp 0x00000000, r5
	bz9 .BB.LABEL.13_15
.BB.LABEL.13_11:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1235
	cmp 0x00000002, r7
	bz9 .BB.LABEL.13_14
.BB.LABEL.13_12:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.13_16
.BB.LABEL.13_13:	; switch_clause_bb
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1238
	st.w r2, 0x00000014[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_14:	; switch_clause_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1241
	st.w r2, 0x00000014[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_15:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000005, r9
	br9 .BB.LABEL.13_3
.BB.LABEL.13_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1259
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_TxTimeoutException:
	.stack _CanSM_TxTimeoutException = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1282
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1287
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r9
.BB.LABEL.14_2:	; if_then_bb
	mov 0x0000000B, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1326
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.14_3:	; if_then_bb13.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1295
	jarl _CanSM_FindNetworkIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1297
	cmp 0x00000000, r10
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000003, r9
	br9 .BB.LABEL.14_2
.BB.LABEL.14_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1319
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.14_8
.BB.LABEL.14_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000030[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1321
	mulhi 0x00000038, r10, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000002, r2
	st.w r2, 0x00000030[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1322
	st.b r0, 0x00000011[r5]
.BB.LABEL.14_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1326
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_PnNot_CC_Stopped.1:
	.stack _CanSM_PnNot_CC_Stopped.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1578
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000002, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1581
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1584
	st.w r2, 0x00000024[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1585
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_PnNot_CC_Stopped_Wait.1:
	.stack _CanSM_PnNot_CC_Stopped_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1599
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1601
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1603
	st.w r20, 0x00000024[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1604
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1605
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1610
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1612
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1613
	st.w r0, 0x00000024[r21]
.BB.LABEL.16_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1616
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_PnNot_CC_Sleep.1:
	.stack _CanSM_PnNot_CC_Sleep.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1629
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov 0x00000003, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1632
	mov r21, r8
	jarl _CanSM_SetControllerModeRepeat.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1635
	st.w r21, 0x00000024[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1636
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_PnNot_CC_Sleep_Wait.1:
	.stack _CanSM_PnNot_CC_Sleep_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1650
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1653
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1663
	st.w r2, 0x00000020[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1666
	ld.w 0x00000018[r21], r8
	mov 0x00000000, r7
	mov r20, r6
	jarl _CanSM_ComMModeIndication.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1668
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1669
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.18_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1674
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1676
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1677
	st.w r2, 0x00000024[r21]
.BB.LABEL.18_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1680
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_BsmSNotInitialized.1:
	.stack _CanSM_BsmSNotInitialized.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1891
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1895
	jmp [r31]
_CanSM_DeinitPnNotSupported.1:
	.stack _CanSM_DeinitPnNotSupported.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1908
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1910
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1911
	ld.w 0x00000024[r7], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1913
	cmp 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1911
	movea 0x00000024, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1913
	mov r6, r22
	bh9 .BB.LABEL.20_6
.BB.LABEL.20_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov r20, r1
	shl 0x00000001, r1
	jmp #.SWITCH.LABEL.20_10[r1]
.SWITCH.LABEL.20_10:
	br9 .BB.LABEL.20_2
	br9 .BB.LABEL.20_3
	br9 .BB.LABEL.20_4
	br9 .BB.LABEL.20_5
.SWITCH.LABEL.20_10.END:
.BB.LABEL.20_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1916
	jarl _CanSM_PnNot_CC_Stopped.1, r31
	br9 .BB.LABEL.20_6
.BB.LABEL.20_3:	; switch_clause_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1920
	jarl _CanSM_PnNot_CC_Stopped_Wait.1, r31
	br9 .BB.LABEL.20_6
.BB.LABEL.20_4:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1923
	jarl _CanSM_PnNot_CC_Sleep.1, r31
	br9 .BB.LABEL.20_6
.BB.LABEL.20_5:	; switch_clause_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1928
	jarl _CanSM_PnNot_CC_Sleep_Wait.1, r31
.BB.LABEL.20_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1950
	ld.w 0x00000000[r21], r2
	cmp r2, r20
	bnz9 .BB.LABEL.20_9
.BB.LABEL.20_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mulhi 0x00000038, r22, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.20_9
.BB.LABEL.20_8:	; bb36
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1952
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.20_9:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 1952
	dispose 0x00000000, 0x00000071, [r31]
_CanSM_BsmSNoCom.1:
	.stack _CanSM_BsmSNoCom.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2637
	mulhi 0x00000038, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2639
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2642
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000004, r2
	st.w r2, 0x00000020[r5]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2654
	st.w r2, 0x0000002C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2655
	st.b r0, 0x00000011[r5]
.BB.LABEL.21_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2658
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000002, r2
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2659
	jmp [r31]
_CanSM_WUVAL_S_CC_Stopped.1:
	.stack _CanSM_WUVAL_S_CC_Stopped.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2772
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000002, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2774
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2777
	st.w r2, 0x00000028[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2778
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_WUVAL_S_CC_Stopped_Wait.1:
	.stack _CanSM_WUVAL_S_CC_Stopped_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2792
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2794
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000004, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2796
	st.w r20, 0x00000028[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2797
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2798
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.23_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2803
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2805
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2806
	st.w r2, 0x00000028[r21]
.BB.LABEL.23_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2809
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_WUVAL_S_CC_Started.1:
	.stack _CanSM_WUVAL_S_CC_Started.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2822
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2825
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2828
	st.w r2, 0x00000028[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2829
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_WUVAL_S_CC_Started_Wait.1:
	.stack _CanSM_WUVAL_S_CC_Started_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2843
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2845
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000006, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2847
	st.w r20, 0x00000028[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2848
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2849
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.25_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2854
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.25_4
.BB.LABEL.25_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2856
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2857
	st.w r2, 0x00000028[r21]
.BB.LABEL.25_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2860
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_BsmWuValidation.1:
	.stack _CanSM_BsmWuValidation.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2873
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2875
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2878
	ld.w 0x00000018[r7], r2
	cmp 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2876
	ld.w 0x00000028[r7], r20
	movea 0x00000028, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2878
	mov r6, r22
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2881
	mulhi 0x00000038, r22, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	mov 0x00000004, r2
	st.w r2, 0x00000020[r5]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2893
	st.w r2, 0x0000002C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2894
	st.b r0, 0x00000011[r5]
	br9 .BB.LABEL.26_8
.BB.LABEL.26_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2899
	addi 0xFFFFFFFE, r20, r2
	cmp 0x00000003, r2
	bh9 .BB.LABEL.26_8
.BB.LABEL.26_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.26_12[r2]
.SWITCH.LABEL.26_12:
	br9 .BB.LABEL.26_4
	br9 .BB.LABEL.26_5
	br9 .BB.LABEL.26_6
	br9 .BB.LABEL.26_7
.SWITCH.LABEL.26_12.END:
.BB.LABEL.26_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2912
	jarl _CanSM_WUVAL_S_CC_Stopped.1, r31
	br9 .BB.LABEL.26_8
.BB.LABEL.26_5:	; switch_clause_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2916
	jarl _CanSM_WUVAL_S_CC_Stopped_Wait.1, r31
	br9 .BB.LABEL.26_8
.BB.LABEL.26_6:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2919
	jarl _CanSM_WUVAL_S_CC_Started.1, r31
	br9 .BB.LABEL.26_8
.BB.LABEL.26_7:	; switch_clause_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2923
	jarl _CanSM_WUVAL_S_CC_Started_Wait.1, r31
.BB.LABEL.26_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2930
	ld.w 0x00000000[r21], r2
	cmp r2, r20
	bnz9 .BB.LABEL.26_11
.BB.LABEL.26_9:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mulhi 0x00000038, r22, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.26_11
.BB.LABEL.26_10:	; bb47
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2931
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.26_11:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 2931
	dispose 0x00000000, 0x00000071, [r31]
_CanSM_Prefullcom_S_CC_Stopped.1:
	.stack _CanSM_Prefullcom_S_CC_Stopped.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3045
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000002, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3048
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3051
	st.w r2, 0x0000002C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3052
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_Prefullcom_S_CC_Stopped_Wait.1:
	.stack _CanSM_Prefullcom_S_CC_Stopped_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3066
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3069
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000004, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3071
	st.w r20, 0x0000002C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3072
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3073
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.28_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3078
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3080
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3081
	st.w r2, 0x0000002C[r21]
.BB.LABEL.28_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3084
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_Prefullcom_S_CC_Started.1:
	.stack _CanSM_Prefullcom_S_CC_Started.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3097
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3100
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3103
	st.w r2, 0x0000002C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3104
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_Prefullcom_S_CC_Started_Wait.1:
	.stack _CanSM_Prefullcom_S_CC_Started_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3118
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3121
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3123
	mov r20, r6
	jarl _CanSM_EFullComAction.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3124
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3125
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.30_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3130
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.30_4
.BB.LABEL.30_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3132
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3133
	st.w r2, 0x0000002C[r21]
.BB.LABEL.30_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3136
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_BsmSPreFullCom.1:
	.stack _CanSM_BsmSPreFullCom.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3149
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3151
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3152
	ld.w 0x0000002C[r7], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3154
	addi 0xFFFFFFFE, r20, r2
	cmp 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3152
	movea 0x0000002C, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3154
	mov r6, r22
	bh9 .BB.LABEL.31_6
.BB.LABEL.31_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.31_10[r2]
.SWITCH.LABEL.31_10:
	br9 .BB.LABEL.31_2
	br9 .BB.LABEL.31_3
	br9 .BB.LABEL.31_4
	br9 .BB.LABEL.31_5
.SWITCH.LABEL.31_10.END:
.BB.LABEL.31_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3165
	jarl _CanSM_Prefullcom_S_CC_Stopped.1, r31
	br9 .BB.LABEL.31_6
.BB.LABEL.31_3:	; switch_clause_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3168
	jarl _CanSM_Prefullcom_S_CC_Stopped_Wait.1, r31
	br9 .BB.LABEL.31_6
.BB.LABEL.31_4:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3171
	jarl _CanSM_Prefullcom_S_CC_Started.1, r31
	br9 .BB.LABEL.31_6
.BB.LABEL.31_5:	; switch_clause_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3174
	jarl _CanSM_Prefullcom_S_CC_Started_Wait.1, r31
.BB.LABEL.31_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3180
	ld.w 0x00000000[r21], r2
	cmp r2, r20
	bnz9 .BB.LABEL.31_9
.BB.LABEL.31_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mulhi 0x00000038, r22, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.31_9
.BB.LABEL.31_8:	; bb36
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3181
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.31_9:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3181
	dispose 0x00000000, 0x00000071, [r31]
_CanSM_FullCom_S_Bus_off_Check.1:
	.stack _CanSM_FullCom_S_Bus_off_Check.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3195
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3197
	ld.bu 0x00000012[r7], r2
	cmp 0x00000000, r2
	mov r7, r20
	bz9 .BB.LABEL.32_2
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3199
	jarl _CanSM_EBusOffAction.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.32_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3210
	ld.w 0x0000000C[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.32_4
.BB.LABEL.32_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3212
	add 0xFFFFFFFF, r2
	st.w r2, 0x0000000C[r20]
.BB.LABEL.32_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3240
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.32_9
.BB.LABEL.32_5:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3243
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r5
	mulhi 0x00000018, r6, r7
	add r7, r5
	ld.w 0x00000014[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.32_8
.BB.LABEL.32_6:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3245
	ld.w 0x00000004[r2], r5
	mulhi 0x00000018, r6, r7
	add r7, r5
	ld.w 0x00000014[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.32_8
.BB.LABEL.32_7:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3247
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r6, r5
	add r5, r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	ld.hu 0x00000000[r2], r6
	mov 0x00000000, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.32_8:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3253
	st.w r2, 0x00000030[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3254
	st.b r0, 0x00000010[r20]
.BB.LABEL.32_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3257
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_FullCom_S_No_Bus_Off.1:
	.stack _CanSM_FullCom_S_No_Bus_Off.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3259
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3261
	ld.bu 0x00000012[r7], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.33_2
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3263
	jarl _CanSM_EBusOffAction.1, r31
.BB.LABEL.33_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3265
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_FullCom_S_CC_Stopped.1:
	.stack _CanSM_FullCom_S_CC_Stopped.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3279
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000002, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3282
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3285
	st.w r2, 0x00000030[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3286
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_FullCom_S_CC_Stopped_Wait.1:
	.stack _CanSM_FullCom_S_CC_Stopped_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3301
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3304
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000004, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3306
	st.w r20, 0x00000030[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3307
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3308
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.35_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3313
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.35_4
.BB.LABEL.35_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3315
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3316
	st.w r2, 0x00000030[r21]
.BB.LABEL.35_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3319
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_FullCom_S_CC_Started.1:
	.stack _CanSM_FullCom_S_CC_Started.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3333
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3336
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3339
	st.w r2, 0x00000030[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3340
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_FullCom_S_CC_Started_Wait.1:
	.stack _CanSM_FullCom_S_CC_Started_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3355
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3358
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.37_2
.BB.LABEL.37_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3360
	st.w r2, 0x00000030[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3361
	st.b r0, 0x00000010[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3362
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3363
	st.b r0, 0x00000011[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3366
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r21
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r21], r21
	ld.w 0x00000004[r21], r21
	mulhi 0x00000018, r20, r20
	add r20, r21
	ld.w 0x00000010[r21], r20
	ld.w 0x00000004[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3368
	ld.bu 0x00000000[r20], r6
	mov 0x00000003, r7
	jarl _CanIf_SetPduMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3366
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.37_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3375
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.37_4
.BB.LABEL.37_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3377
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3378
	st.w r2, 0x00000030[r21]
.BB.LABEL.37_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3381
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_FullCom_S_Restart_CC.1:
	.stack _CanSM_FullCom_S_Restart_CC.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3395
	prepare 0x00000041, 0x00000000
	mov r7, r20
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3398
	jarl _CanSM_SetControllerModeRepeat.1, r31
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3401
	st.w r2, 0x00000030[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3402
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.hu 0x00000002[r2], r2
	st.w r2, 0x00000004[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_FullCom_S_Restart_CC_Wait.1:
	.stack _CanSM_FullCom_S_Restart_CC_Wait.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3417
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3420
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.39_2
.BB.LABEL.39_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000008, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3422
	st.w r20, 0x00000030[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3423
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3424
	st.b r0, 0x00000011[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.39_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3429
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.39_4
.BB.LABEL.39_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3431
	mov r20, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3432
	st.w r2, 0x00000030[r21]
.BB.LABEL.39_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3435
	dispose 0x00000000, 0x00000061, [r31]
_CanSM_FullCom_S_Tx_Off.1:
	.stack _CanSM_FullCom_S_Tx_Off.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3449
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3452
	ld.w 0x00000008[r7], r2
	add 0x00000001, r2
	st.w r2, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3453
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3454
	mulhi 0x00000018, r6, r2
	add r20, r2
	ld.bu 0x00000000[r2], r2
	ld.bu 0x00000010[r7], r5
	cmp r2, r5
	mov r6, r21
	mov r7, r22
	mov r6, r23
	mulhi 0x00000018, r21, r2
	bl9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3456
	add r20, r2
	add 0x00000004, r2
	br9 .BB.LABEL.40_3
.BB.LABEL.40_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3464
	add r20, r2
	add 0x00000002, r2
.BB.LABEL.40_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	ld.hu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3471
	ld.w 0x00000008[r22], r5
	cmp r5, r2
	bh9 .BB.LABEL.40_7
.BB.LABEL.40_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3488
	mulhi 0x00000018, r23, r24
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r25
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r25], r2
	ld.w 0x00000004[r2], r2
	add r24, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3490
	ld.bu 0x00000000[r2], r6
	mov 0x00000003, r7
	jarl _CanIf_SetPduMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3494
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r25], r2
	ld.w 0x00000004[r2], r2
	add r24, r2
	ld.bu 0x00000009[r2], r6
	mov 0x00000002, r24
	mov r24, r7
	jarl _BswM_CanSM_CurrentState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3497
	st.b r24, 0x0000001C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3498
	ld.w 0x00000018[r22], r8
	mov r23, r6
	mov r24, r7
	jarl _CanSM_ComMModeIndication.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3500
	st.w r0, 0x00000030[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3501
	ld.bu 0x00000010[r22], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.40_6
.BB.LABEL.40_5:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3503
	add 0x00000001, r2
	st.b r2, 0x00000010[r22]
.BB.LABEL.40_6:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3510
	mulhi 0x00000018, r21, r2
	add r2, r20
	ld.hu 0x00000006[r20], r2
	st.w r2, 0x0000000C[r22]
.BB.LABEL.40_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3514
	dispose 0x00000000, 0x00000679, [r31]
_CanSM_BsmSFullCom.1:
	.stack _CanSM_BsmSFullCom.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3527
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3529
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3532
	ld.w 0x00000018[r7], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3530
	ld.w 0x00000030[r7], r20
	movea 0x00000030, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3532
	mov r6, r22
	bnz9 .BB.LABEL.41_2
.BB.LABEL.41_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3534
	jarl _CanSM_EPreNoComAction.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3536
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.41_4
.BB.LABEL.41_3:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3538
	jarl _CanSM_EFullToSilentComAction.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_4:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3542
	cmp 0x00000008, r20
	bh9 .BB.LABEL.41_15
.BB.LABEL.41_5:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov r20, r1
	shl 0x00000001, r1
	jmp #.SWITCH.LABEL.41_19[r1]
.SWITCH.LABEL.41_19:
	br9 .BB.LABEL.41_6
	br9 .BB.LABEL.41_7
	br9 .BB.LABEL.41_8
	br9 .BB.LABEL.41_9
	br9 .BB.LABEL.41_10
	br9 .BB.LABEL.41_11
	br9 .BB.LABEL.41_12
	br9 .BB.LABEL.41_13
	br9 .BB.LABEL.41_14
.SWITCH.LABEL.41_19.END:
.BB.LABEL.41_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3545
	jarl _CanSM_FullCom_S_Bus_off_Check.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_7:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3549
	jarl _CanSM_FullCom_S_No_Bus_Off.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_8:	; switch_clause_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3552
	jarl _CanSM_FullCom_S_CC_Stopped.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_9:	; switch_clause_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3555
	jarl _CanSM_FullCom_S_CC_Stopped_Wait.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_10:	; switch_clause_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3558
	jarl _CanSM_FullCom_S_CC_Started.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_11:	; switch_clause_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3561
	jarl _CanSM_FullCom_S_CC_Started_Wait.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_12:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3564
	jarl _CanSM_FullCom_S_Restart_CC.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3567
	jarl _CanSM_FullCom_S_Restart_CC_Wait.1, r31
	br9 .BB.LABEL.41_15
.BB.LABEL.41_14:	; switch_clause_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3570
	jarl _CanSM_FullCom_S_Tx_Off.1, r31
.BB.LABEL.41_15:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3577
	ld.w 0x00000000[r21], r2
	cmp r2, r20
	bnz9 .BB.LABEL.41_18
.BB.LABEL.41_16:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mulhi 0x00000038, r22, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.41_18
.BB.LABEL.41_17:	; bb67
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3578
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.41_18:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3578
	dispose 0x00000000, 0x00000071, [r31]
_CanSM_BsmSSilentCom.1:
	.stack _CanSM_BsmSSilentCom.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3816
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3818
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.bu 0x00000012[r5], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.42_2
.BB.LABEL.42_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3820
	mov r20, r6
	jarl _CanSM_EBusOffAction.1, r31
	br9 .BB.LABEL.42_6
.BB.LABEL.42_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3822
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.42_4
.BB.LABEL.42_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3824
	mov r20, r6
	jarl _CanSM_EPreNoComAction.1, r31
	br9 .BB.LABEL.42_6
.BB.LABEL.42_4:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3826
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.42_6
.BB.LABEL.42_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3828
	mov r20, r6
	jarl _CanSM_EFullComAction.1, r31
.BB.LABEL.42_6:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3834
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000006, r2
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3835
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_BsmSSilentComBor.1:
	.stack _CanSM_BsmSSilentComBor.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3848
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3850
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3853
	ld.w 0x00000018[r7], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3851
	ld.w 0x00000034[r7], r20
	movea 0x00000034, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3853
	mov r6, r22
	mov r6, r23
	bnz9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3855
	mov r23, r6
	jarl _CanSM_EPreNoComAction.1, r31
	br9 .BB.LABEL.43_9
.BB.LABEL.43_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3859
	cmp 0x00000001, r20
	bz9 .BB.LABEL.43_5
.BB.LABEL.43_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.43_9
.BB.LABEL.43_4:	; switch_clause_bb
	mov 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3863
	mov r23, r6
	mov r24, r8
	jarl _CanSM_SetControllerModeRepeat.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3866
	st.w r24, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3867
	mulhi 0x00000038, r22, r23
	mov #_CanSM_NetWorkRunTime.3, r2
	add r23, r2
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r23
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r23], r23
	ld.hu 0x00000002[r23], r23
	st.w r23, 0x00000004[r2]
	br9 .BB.LABEL.43_9
.BB.LABEL.43_5:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3871
	mov r23, r6
	jarl _CanSM_CheckNetworkAllControllerMode.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.43_7
.BB.LABEL.43_6:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3873
	mulhi 0x00000038, r22, r23
	mov #_CanSM_NetWorkRunTime.3, r2
	add r23, r2
	mov 0x00000006, r23
	st.w r23, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3874
	st.w r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3875
	st.b r0, 0x00000011[r2]
	br9 .BB.LABEL.43_9
.BB.LABEL.43_7:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3880
	mulhi 0x00000038, r22, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.43_9
.BB.LABEL.43_8:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3882
	mov r23, r6
	jarl _CanSM_ModeRequestTimeout.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3883
	st.w r0, 0x00000000[r21]
.BB.LABEL.43_9:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3892
	ld.w 0x00000000[r21], r2
	cmp r2, r20
	bnz9 .BB.LABEL.43_12
.BB.LABEL.43_10:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mulhi 0x00000038, r22, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.43_12
.BB.LABEL.43_11:	; bb68
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3893
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.43_12:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3893
	dispose 0x00000000, 0x00000479, [r31]
_CanSM_EFullComAction.1:
	.stack _CanSM_EFullComAction.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3906
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3925
	mulhi 0x00000018, r20, r21
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r22
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r22], r2
	ld.w 0x00000004[r2], r2
	add r21, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3927
	ld.bu 0x00000000[r2], r6
	mov 0x00000003, r7
	jarl _CanIf_SetPduMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3932
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r23
	add r2, r23
	ld.w 0x00000018[r23], r8
	mov 0x00000002, r24
	mov r20, r6
	mov r24, r7
	jarl _CanSM_ComMModeIndication.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3933
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r22], r2
	ld.w 0x00000004[r2], r2
	add r21, r2
	ld.bu 0x00000009[r2], r6
	mov r24, r7
	jarl _BswM_CanSM_CurrentState, r31
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3937
	st.w r2, 0x00000020[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3938
	st.w r0, 0x00000030[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3940
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r22], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3945
	add r21, r2
	ld.hu 0x00000006[r2], r2
	st.w r2, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3949
	st.b r24, 0x0000001C[r23]
	dispose 0x00000000, 0x00000479, [r31]
_CanSM_EFullToSilentComAction.1:
	.stack _CanSM_EFullToSilentComAction.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3963
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3968
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r21
	add r2, r21
	mov 0x00000006, r2
	st.w r2, 0x00000020[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3970
	mulhi 0x00000018, r20, r22
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r23
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r23], r2
	ld.w 0x00000004[r2], r2
	add r22, r2
	ld.bu 0x00000009[r2], r6
	mov 0x00000001, r24
	mov r24, r7
	jarl _BswM_CanSM_CurrentState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3975
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r23], r2
	ld.w 0x00000004[r2], r2
	add r22, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3977
	ld.bu 0x00000000[r2], r6
	mov r24, r7
	jarl _CanIf_SetPduMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3982
	ld.w 0x00000018[r21], r8
	mov r20, r6
	mov r24, r7
	jarl _CanSM_ComMModeIndication.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3983
	st.b r24, 0x0000001C[r21]
	dispose 0x00000000, 0x00000479, [r31]
_CanSM_EPreNoComAction.1:
	.stack _CanSM_EPreNoComAction.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 3997
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4011
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r20
	add r2, r20
	mov 0x00000001, r2
	st.w r2, 0x00000020[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4012
	st.w r0, 0x00000024[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4014
	st.b r0, 0x00000011[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4016
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r6, r5
	add r5, r2
	ld.bu 0x00000009[r2], r6
	mov 0x00000000, r7
	jarl _BswM_CanSM_CurrentState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4019
	st.b r0, 0x0000001C[r20]
	dispose 0x00000000, 0x00000041, [r31]
_CanSM_EBusOffAction.1:
	.stack _CanSM_EBusOffAction.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4022
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4025
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.w 0x00000020[r5], r2
	cmp 0x00000005, r2
	movea 0x00000020, r5, r2
	mov r6, r20
	mov r6, r21
	bnz9 .BB.LABEL.47_2
.BB.LABEL.47_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4027
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r21, r5
	add r5, r2
	ld.bu 0x00000009[r2], r6
	mov 0x00000003, r7
	jarl _BswM_CanSM_CurrentState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4030
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r22
	add r2, r22
	mov 0x00000001, r7
	st.b r7, 0x0000001C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4031
	ld.w 0x00000018[r22], r8
	mov r21, r6
	jarl _CanSM_ComMModeIndication.1, r31
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4032
	st.w r2, 0x00000030[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4044
	st.w r0, 0x00000008[r22]
	br9 .BB.LABEL.47_3
.BB.LABEL.47_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4048
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4049
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	st.w r0, 0x00000034[r5]
.BB.LABEL.47_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4052
	mulhi 0x00000038, r20, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	st.b r0, 0x00000011[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4055
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r5
	mulhi 0x00000018, r21, r6
	add r6, r5
	ld.w 0x00000014[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.47_6
.BB.LABEL.47_4:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4057
	ld.w 0x00000004[r2], r5
	mulhi 0x00000018, r21, r6
	add r6, r5
	ld.w 0x00000014[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.47_6
.BB.LABEL.47_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4059
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r21, r5
	add r5, r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	ld.hu 0x00000000[r2], r6
	mov 0x00000001, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.47_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4065
	dispose 0x00000000, 0x00000071, [r31]
_CanSM_SetControllerModeRepeat.1:
	.stack _CanSM_SetControllerModeRepeat.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4079
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4084
	st.b r0, 0x00000012[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4087
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r6, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4089
	ld.bu 0x00000000[r2], r6
	mov r6, r2
	shl 0x00000002, r2
	mov #_CanSM_ControllerMode.4, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp r2, r8
	bz9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4091
	mov r8, r7
	jarl _CanIf_SetControllerMode, r31
.BB.LABEL.48_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4095
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_CheckNetworkAllControllerMode.1:
	.stack _CanSM_CheckNetworkAllControllerMode.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4097
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4099
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r6, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4100
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4101
	ld.bu 0x00000000[r2], r2
	add r5, r2
	br9 .BB.LABEL.49_3
.BB.LABEL.49_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4105
	ld.bu 0x00000000[r5], r6
	shl 0x00000002, r6
	mov #_CanSM_ControllerMode.4, r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	cmp r6, r7
	bnz9 .BB.LABEL.49_5
.BB.LABEL.49_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0x00000001, r5
.BB.LABEL.49_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4103
	cmp r2, r5
	bl9 .BB.LABEL.49_1
.BB.LABEL.49_4:	; bb36.bb43_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.49_6
.BB.LABEL.49_5:	; bb.bb43_crit_edge
	mov 0x00000000, r10
.BB.LABEL.49_6:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4112
	jmp [r31]
_CanSM_ModeRequestTimeout.1:
	.stack _CanSM_ModeRequestTimeout.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4114
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4117
	mulhi 0x00000038, r6, r2
	mov #_CanSM_NetWorkRunTime.3, r5
	add r2, r5
	ld.bu 0x00000011[r5], r2
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r7
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r7], r7
	ld.bu 0x00000000[r7], r7
	cmp r7, r2
	movea 0x00000011, r5, r5
	bl9 .BB.LABEL.50_5
.BB.LABEL.50_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4119
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4121
	movhi HIGHW1(#_CanSM_ConfigPtr.2), r0, r2
	ld.w LOWW(#_CanSM_ConfigPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000018, r6, r5
	add r5, r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4123
	cmp 0x00000000, r2
	bz9 .BB.LABEL.50_4
.BB.LABEL.50_2:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4125
	ld.w 0x00000004[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.50_4
.BB.LABEL.50_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4127
	ld.hu 0x00000000[r2], r6
	mov 0x00000003, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.50_4:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x0000000A, r9
	mov 0x00000005, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4131
	jarl _Det_ReportRuntimeError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.50_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4139
	add 0x00000001, r2
	st.b r2, 0x00000000[r5]
	dispose 0x00000000, 0x00000001, [r31]
_CanSM_ValidateAllNetworksNoCom.1:
	.stack _CanSM_ValidateAllNetworksNoCom.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4144
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4148
	movhi HIGHW1(#_CanSM_Status.1), r0, r2
	ld.w LOWW(#_CanSM_Status.1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.51_2
.BB.LABEL.51_1:	; entry.bb17_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.51_5
.BB.LABEL.51_2:	; entry.if_break_bb25_crit_edge
	mov 0x00000001, r20
	br9 .BB.LABEL.51_8
.BB.LABEL.51_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4156
	andi 0x000000FF, r2, r20
	mul 0x00000038, r20, r0
	mov #_CanSM_NetWorkRunTime.3, r5
	add r20, r5
	ld.w 0x00000020[r5], r20
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.51_7
.BB.LABEL.51_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	add 0x00000001, r2
.BB.LABEL.51_5:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4154
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.51_3
.BB.LABEL.51_6:	; bb17.if_break_bb25_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.51_8
.BB.LABEL.51_7:	; bb.if_break_bb25_crit_edge
	mov 0x0000000B, r20
.BB.LABEL.51_8:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4164
	cmp 0x00000000, r20
	bz9 .BB.LABEL.51_10
.BB.LABEL.51_9:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4166
	andi 0x000000FF, r20, r9
	movea 0x00000014, r0, r8
	mov 0x00000000, r7
	movea 0x0000008C, r0, r6
	jarl _Det_ReportError, r31
.BB.LABEL.51_10:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4168
	cmp 0x00000000, r20
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanSM/CanSM.c", 4169
	dispose 0x00000000, 0x00000041, [r31]
	.section .data, data
	.align 4
_CanSM_Status.1:
	.ds (4)
	.section .bss, bss
	.align 4
_CanSM_ConfigPtr.2:
	.ds (4)
	.align 4
_CanSM_NetWorkRunTime.3:
	.ds (56)
	.align 4
_CanSM_ControllerMode.4:
	.ds (4)
	.section .const, const
	.align 4
_CanSM_DoBehaviors.5.CanSM_MainFunction:
	.dw #_CanSM_BsmSNotInitialized.1
	.dw #_CanSM_DeinitPnNotSupported.1
	.dw #_CanSM_BsmSNoCom.1
	.dw #_CanSM_BsmWuValidation.1
	.dw #_CanSM_BsmSPreFullCom.1
	.dw #_CanSM_BsmSFullCom.1
	.dw #_CanSM_BsmSSilentCom.1
	.dw #_CanSM_BsmSSilentComBor.1
