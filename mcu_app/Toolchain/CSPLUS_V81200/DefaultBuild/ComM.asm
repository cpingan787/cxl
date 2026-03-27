#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\ComM\ComM.c -oDefaultBuild\ComM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5b93f22892914c249c5eecc85edf1af6lzjh4eee.p40
#@	compiled at Fri Mar 27 09:50:16 2026

	.file "..\..\Bsw\SystemServices\ComM\ComM.c"

	$reg_mode 32
	.dbl_size 8

	.extern _ComM_Config
	.public _ComM_InitStatus, 1
	.public _ComM_ConfigPtr, 4
	.public _ComM_UserReqMode, 1
	.public _ComM_HandleUserReqest
	.extern _ComM_ChRequstCommMode
	.public _ComM_Init
	.extern _ComM_ChInit
	.public _ComM_DeInit
	.extern _ComM_ChGetState
	.public _ComM_GetStatus
	.public _ComM_RequestComMode
	.public _ComM_GetMaxComMode
	.extern _ComM_ChGetMaxAllowMode
	.public _ComM_GetRequestedComMode
	.public _ComM_GetCurrentComMode
	.extern _ComM_ChGetCurrentComMode
	.public _ComM_GetCurrentPNCComMode
	.public _ComM_Nm_NetworkStartIndication
	.extern _ComM_ChPassiveWakeup
	.public _ComM_Nm_NetworkMode
	.extern _ComM_ChannelNmModeIndication
	.public _ComM_Nm_PrepareBusSleepMode
	.public _ComM_Nm_BusSleepMode
	.public _ComM_Nm_RestartIndication
	.public _ComM_DCM_ActiveDiagnostic
	.extern _ComM_ChDiagIndication
	.public _ComM_DCM_InactiveDiagnostic
	.public _ComM_EcuM_WakeUpIndication
	.extern _ComM_ChEcuMWakeup
	.public _ComM_CommunicationAllowed
	.extern _ComM_ChComAllow
	.public _ComM_BusSM_ModeIndication
	.extern _ComM_ChBusSmModeInd
	.public _ComM_BusSM_BusSleepMode

	.section .text, text
_ComM_HandleUserReqest:
	.stack _ComM_HandleUserReqest = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 272
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 276
	movhi HIGHW1(#_ComM_ConfigPtr), r0, r2
	ld.w LOWW(#_ComM_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r20
	mov 0x00000000, r21
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 292
	mov r6, r22
	mov r7, r23
	br9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 300
	mulhi 0x00000018, r22, r2
	add r20, r2
	ld.w 0x00000014[r2], r5
	add r21, r5
	ld.bu 0x00000000[r5], r7
	ld.w 0x00000004[r2], r2
	add r21, r2
	ld.bu 0x00000000[r2], r6
	mov r23, r8
	jarl _ComM_ChRequstCommMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 302
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	add 0x00000001, r21
.BB.LABEL.1_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 292
	mulhi 0x00000018, r22, r2
	add r20, r2
	ld.w 0x00000008[r2], r2
	cmp r2, r21
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_4:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 308
	zxb r10
	dispose 0x00000000, 0x00000079, [r31]
_ComM_Init:
	.stack _ComM_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 318
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 323
	mov #_ComM_Config, r2
	movhi HIGHW1(#_ComM_ConfigPtr), r0, r5
	st.w r2, LOWW(#_ComM_ConfigPtr)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 332
	ld.w 0x00000000[r2], r6
	mov 0x00000001, r7
	jarl _ComM_ChInit, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 353
	mov #_ComM_UserReqMode, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.2_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 351
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 356
	movhi HIGHW1(#_ComM_InitStatus), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_ComM_InitStatus)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_ComM_DeInit:
	.stack _ComM_DeInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 367
	prepare 0x00000041, 0x00000004
	mov 0x00000000, r20
	br9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 392
	mov r20, r6
	jarl _ComM_ChGetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 393
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	add 0x00000001, r20
.BB.LABEL.3_3:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 389
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_1
.BB.LABEL.3_4:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 398
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 400
	movhi HIGHW1(#_ComM_InitStatus), r0, r2
	st.b r0, LOWW(#_ComM_InitStatus)[r2]
.BB.LABEL.3_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 404
	dispose 0x00000004, 0x00000041, [r31]
_ComM_GetStatus:
	.stack _ComM_GetStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 441
	movhi HIGHW1(#_ComM_InitStatus), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 448
	ld.b LOWW(#_ComM_InitStatus)[r2], r2
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 452
	jmp [r31]
_ComM_RequestComMode:
	.stack _ComM_RequestComMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 466
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 479
	mov #_ComM_UserReqMode, r2
	add r6, r2
	st.b r7, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 481
	jarl _ComM_HandleUserReqest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 490
	dispose 0x00000000, 0x00000001, [r31]
_ComM_GetMaxComMode:
	.stack _ComM_GetMaxComMode = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 502
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 511
	movhi HIGHW1(#_ComM_ConfigPtr), r0, r2
	ld.w LOWW(#_ComM_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r20
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 512
	st.b r2, 0x00000000[r7]
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 514
	mov r6, r22
	mov r7, r23
	br9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 516
	mulhi 0x00000018, r22, r2
	add r20, r2
	ld.w 0x0000000C[r2], r2
	add r21, r2
	ld.bu 0x00000000[r2], r6
	jarl _ComM_ChGetMaxAllowMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 517
	st.b r10, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 518
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	add 0x00000001, r21
.BB.LABEL.6_3:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 514
	mulhi 0x00000018, r22, r2
	add r20, r2
	ld.w 0x00000010[r2], r2
	cmp r2, r21
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_4:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 526
	dispose 0x00000000, 0x00000079, [r31]
_ComM_GetRequestedComMode:
	.stack _ComM_GetRequestedComMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 538
	mov #_ComM_UserReqMode, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 545
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 549
	jmp [r31]
_ComM_GetCurrentComMode:
	.stack _ComM_GetCurrentComMode = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 561
	prepare 0x00000479, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 568
	movhi HIGHW1(#_ComM_ConfigPtr), r0, r2
	ld.w LOWW(#_ComM_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r20
	mov 0x00000000, r21
	mov 0x00000001, r10
	movea 0x000000FF, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 570
	mov r6, r23
	mov r7, r24
	br9 .BB.LABEL.8_7
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 573
	mulhi 0x00000018, r23, r2
	add r20, r2
	ld.w 0x0000000C[r2], r2
	add r21, r2
	ld.bu 0x00000000[r2], r6
	movea 0x00000003, r3, r7
	jarl _ComM_ChGetCurrentComMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 574
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	andi 0x000000FF, r22, r2
	ld.bu 0x00000003[r3], r5
	cmp r2, r5
	bnc9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb
	mov r5, r22
.BB.LABEL.8_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 578
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_8
.BB.LABEL.8_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_6:	; if_break_bb58
	add 0x00000001, r21
.BB.LABEL.8_7:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 570
	mulhi 0x00000018, r23, r2
	add r20, r2
	ld.w 0x00000010[r2], r2
	cmp r2, r21
	bl9 .BB.LABEL.8_1
.BB.LABEL.8_8:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 583
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.8_10
.BB.LABEL.8_9:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 585
	st.b r22, 0x00000000[r24]
.BB.LABEL.8_10:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 0
	zxb r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 589
	dispose 0x00000004, 0x00000479, [r31]
_ComM_GetCurrentPNCComMode:
	.stack _ComM_GetCurrentPNCComMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 601
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 642
	jmp [r31]
_ComM_Nm_NetworkStartIndication:
	.stack _ComM_Nm_NetworkStartIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 966
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 972
	jarl _ComM_ChPassiveWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_Nm_NetworkMode:
	.stack _ComM_Nm_NetworkMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 982
	prepare 0x00000001, 0x00000000
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 988
	jarl _ComM_ChannelNmModeIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_Nm_PrepareBusSleepMode:
	.stack _ComM_Nm_PrepareBusSleepMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 998
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1004
	jarl _ComM_ChannelNmModeIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_Nm_BusSleepMode:
	.stack _ComM_Nm_BusSleepMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1014
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1020
	jarl _ComM_ChannelNmModeIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_Nm_RestartIndication:
	.stack _ComM_Nm_RestartIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1029
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1035
	jarl _ComM_ChPassiveWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_DCM_ActiveDiagnostic:
	.stack _ComM_DCM_ActiveDiagnostic = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1145
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1151
	jarl _ComM_ChDiagIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_DCM_InactiveDiagnostic:
	.stack _ComM_DCM_InactiveDiagnostic = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1161
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1167
	jarl _ComM_ChDiagIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_EcuM_WakeUpIndication:
	.stack _ComM_EcuM_WakeUpIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1180
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1206
	jarl _ComM_ChEcuMWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_CommunicationAllowed:
	.stack _ComM_CommunicationAllowed = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1256
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1262
	jarl _ComM_ChComAllow, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_BusSM_ModeIndication:
	.stack _ComM_BusSM_ModeIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1276
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1282
	jarl _ComM_ChBusSmModeInd, r31
	dispose 0x00000000, 0x00000001, [r31]
_ComM_BusSM_BusSleepMode:
	.stack _ComM_BusSM_BusSleepMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1293
	prepare 0x00000001, 0x00000000
	movea 0x000000FF, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/ComM/ComM.c", 1299
	jarl _ComM_ChBusSmModeInd, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
_ComM_InitStatus:
	.ds (1)
	.section .bss, bss
	.align 4
_ComM_ConfigPtr:
	.ds (4)
_ComM_UserReqMode:
	.ds (1)
