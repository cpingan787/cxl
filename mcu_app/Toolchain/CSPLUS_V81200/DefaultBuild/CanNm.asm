#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\CAN\CanNm\CanNm.c -oDefaultBuild\CanNm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_080d956afa9f49b2b5a687bc5417602ctf3u0xk3.xnz
#@	compiled at Fri Mar 27 09:50:15 2026

	.file "..\..\Bsw\Communication\CAN\CanNm\CanNm.c"

	$reg_mode 32
	.dbl_size 8

	.public _validNmMsgFlag, 1
	.public _CanNm_Init
	.public _CanNm_DeInit
	.public _CanNm_PassiveStartUp
	.extern _SchM_Enter_CanNm_Context
	.extern _SchM_Exit_CanNm_Context
	.public _CanNm_NetworkRequest
	.public _CanNm_NetworkRelease
	.public _CanNm_DisableCommunication
	.public _CanNm_EnableCommunication
	.public _CanNm_GetUserData
	.extern _ILib_memcpy
	.public _CanNm_Transmit
	.public _CanNm_GetNodeIdentifier
	.public _CanNm_GetLocalNodeIdentifier
	.public _CanNm_RepeatMessageRequest
	.public _CanNm_GetPduData
	.public _CanNm_GetState
	.public _CanNm_TxConfirmation
	.public _CanNm_RxIndication
	.extern _Nm_PduRxIndication
	.public _CanNm_TriggerTransmit
	.extern _PduR_IfTriggerTransmit
	.public _CanNm_MainFunction
	.extern _Nm_StateChangeNotification
	.extern _Nm_NetworkMode
	.extern _Det_ReportRuntimeError
	.extern _CanIf_Transmit
	.extern _Nm_NetworkStartIndication
	.extern _Nm_BusSleepMode
	.extern _Nm_RepeatMessageIndication
	.extern _Nm_PrepareBusSleepMode
	.extern _PduR_IfTxConfirmation

	.section .text, text
_CanNm_Init:
	.stack _CanNm_Init = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 328
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 339
	st.w r6, LOWW(#_CanNm_CfgPtr.2)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 345
	andi 0x000000FF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 349
	mov r5, r6
	mul 0x00000030, r6, r0
	mov #_CanNm_ChRunTime.3, r7
	add r6, r7
	mov 0x00000001, r6
	st.w r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 352
	st.w r0, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 355
	st.w r6, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 358
	st.b r0, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 362
	st.b r6, 0x0000000D[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 376
	st.b r0, 0x0000000F[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 379
	st.h r0, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 380
	st.b r0, 0x00000014[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 383
	st.h r0, 0x00000012[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 388
	st.h r0, 0x00000016[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 392
	st.h r0, 0x00000018[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 393
	st.b r0, 0x0000001A[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 394
	st.b r0, 0x0000001B[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 395
	st.b r0, 0x0000001C[r7]
	mov 0x00000000, r6
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 402
	mulhi 0x00000030, r5, r7
	mov #_CanNm_ChRunTime.3, r8
	add r7, r8
	andi 0x000000FF, r6, r7
	add r7, r8
	mov 0xFFFFFFFF, r7
	st.b r7, 0x00000027[r8]
	add 0x00000001, r6
.BB.LABEL.1_3:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 400
	andi 0x000000FF, r6, r7
	cmp 0x00000008, r7
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_4:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 405
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r6
	ld.w LOWW(#_CanNm_CfgPtr.2)[r6], r6
	ld.w 0x00000004[r6], r6
	andi 0x000000FF, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 408
	mov r7, r8
	mul 0x00000038, r8, r0
	add r6, r8
	ld.w 0x00000014[r8], r8
	addi 0xFFFFFF01, r8, r0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 410
	mulhi 0x00000038, r7, r9
	add r6, r9
	ld.b 0x0000000E[r9], r9
	mulhi 0x00000030, r5, r10
	mov #_CanNm_ChRunTime.3, r11
	add r10, r11
	add r8, r11
	st.b r9, 0x00000027[r11]
.BB.LABEL.1_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 415
	mulhi 0x00000038, r7, r7
	add r7, r6
	ld.w 0x00000010[r6], r6
	addi 0xFFFFFF01, r6, r0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 417
	mulhi 0x00000030, r5, r5
	mov #_CanNm_ChRunTime.3, r7
	add r5, r7
	zxb r6
	add r7, r6
	st.b r0, 0x00000027[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 419
	st.b r0, 0x0000001E[r7]
.BB.LABEL.1_8:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	add 0x00000001, r2
.BB.LABEL.1_9:	; bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 343
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_10:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 482
	movhi HIGHW1(#_CanNm_InitStatus.1), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_CanNm_InitStatus.1)[r2]
	jmp [r31]
_CanNm_DeInit:
	.stack _CanNm_DeInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 504
	movhi HIGHW1(#_CanNm_InitStatus.1), r0, r2
	st.w r0, LOWW(#_CanNm_InitStatus.1)[r2]
	jmp [r31]
_CanNm_PassiveStartUp:
	.stack _CanNm_PassiveStartUp = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 521
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 528
	jarl _CanNm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 535
	mulhi 0x00000030, r10, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000003, r2
	mov r10, r20
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 537
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 538
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 539
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 541
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 545
	dispose 0x00000000, 0x00000041, [r31]
_CanNm_NetworkRequest:
	.stack _CanNm_NetworkRequest = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 564
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 572
	jarl _CanNm_FindChannelIndex.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 575
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 579
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	st.w r0, 0x00000008[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 580
	st.b r2, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 584
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 590
	dispose 0x00000000, 0x00000041, [r31]
_CanNm_NetworkRelease:
	.stack _CanNm_NetworkRelease = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 608
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 616
	jarl _CanNm_FindChannelIndex.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 619
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 623
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 625
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 630
	dispose 0x00000000, 0x00000041, [r31]
_CanNm_DisableCommunication:
	.stack _CanNm_DisableCommunication = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 650
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 661
	jarl _CanNm_FindChannelIndex.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 664
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 666
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 670
	mulhi 0x00000030, r20, r20
	mov #_CanNm_ChRunTime.3, r2
	add r20, r2
	st.b r0, 0x0000000D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 677
	st.h r0, 0x00000016[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 681
	st.h r0, 0x00000012[r2]
	mov 0x00000000, r20
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 702
	jarl _SchM_Exit_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 708
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_CanNm_EnableCommunication:
	.stack _CanNm_EnableCommunication = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 727
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 738
	jarl _CanNm_FindChannelIndex.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 739
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 742
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 743
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000000D[r5], r2
	add 0x0000000D, r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; bb
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r6
	add r2, r6
	ld.w 0x00000004[r6], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.7_1
.BB.LABEL.7_3:	; if_then_bb
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 745
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 749
	mulhi 0x00000030, r20, r5
	mov #_CanNm_ChRunTime.3, r6
	add r5, r6
	st.h r2, 0x00000016[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 752
	mulhi 0x00000038, r20, r20
	add r20, r21
	ld.h 0x0000001C[r21], r20
	st.h r20, 0x00000012[r6]
	mov 0x00000000, r20
.BB.LABEL.7_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 769
	jarl _SchM_Exit_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 776
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
_CanNm_GetUserData:
	.stack _CanNm_GetUserData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 848
	prepare 0x00000079, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 856
	jarl _CanNm_FindChannelIndex.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 857
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 862
	mulhi 0x00000038, r21, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 864
	ld.bu 0x00000031[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 867
	ld.bu 0x00000030[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 866
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 864
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	add r22, r5
	movea 0x0000001F, r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 867
	mov r20, r6
	mov r23, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 868
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 874
	dispose 0x00000000, 0x00000079, [r31]
_CanNm_Transmit:
	.stack _CanNm_Transmit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 889
	mov 0x00000000, r2
	br9 .BB.LABEL.9_5
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 901
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r5
	ld.w LOWW(#_CanNm_CfgPtr.2)[r5], r5
	ld.w 0x00000004[r5], r5
	andi 0x000000FF, r2, r7
	mul 0x00000038, r7, r0
	add r7, r5
	ld.w 0x00000034[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 902
	cmp 0x00000000, r5
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	ld.hu 0x00000000[r5], r5
	cmp r5, r6
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 904
	zxb r2
	mul 0x00000030, r2, r0
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	br9 .BB.LABEL.9_7
.BB.LABEL.9_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	add 0x00000001, r2
.BB.LABEL.9_5:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 899
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.9_1
.BB.LABEL.9_6:	; bb38.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000000, r5
.BB.LABEL.9_7:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 908
	cmp 0x00000000, r5
	bz9 .BB.LABEL.9_10
.BB.LABEL.9_8:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 911
	ld.w 0x00000000[r5], r2
	add 0xFFFFFFFC, r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 917
	st.b r2, 0x0000001B[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 919
	jmp [r31]
.BB.LABEL.9_10:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 926
	jmp [r31]
_CanNm_GetNodeIdentifier:
	.stack _CanNm_GetNodeIdentifier = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 941
	prepare 0x00000079, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 950
	jarl _CanNm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 951
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 955
	mulhi 0x00000038, r10, r2
	add r21, r2
	ld.bu 0x0000000D[r2], r2
	cmp 0x00000000, r2
	mov r10, r22
	mov r10, r23
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 957
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 958
	mulhi 0x00000030, r23, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r22, r2
	add r2, r21
	ld.bu 0x00000014[r21], r2
	add r2, r5
	ld.b 0x0000001F[r5], r2
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 959
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 960
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 968
	dispose 0x00000000, 0x00000079, [r31]
_CanNm_GetLocalNodeIdentifier:
	.stack _CanNm_GetLocalNodeIdentifier = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 981
	prepare 0x00000041, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 990
	jarl _CanNm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 991
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 993
	mulhi 0x00000038, r10, r5
	add r2, r5
	ld.bu 0x0000000D[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 995
	mulhi 0x00000038, r10, r5
	add r5, r2
	ld.b 0x0000000E[r2], r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 997
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1005
	dispose 0x00000000, 0x00000041, [r31]
_CanNm_RepeatMessageRequest:
	.stack _CanNm_RepeatMessageRequest = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1017
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1026
	jarl _CanNm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1027
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r10, r5
	add r5, r2
	ld.bu 0x0000000C[r2], r2
	cmp 0x00000000, r2
	mov r10, r20
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1031
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1037
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	add 0xFFFFFFFD, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1039
	mulhi 0x00000030, r20, r20
	mov #_CanNm_ChRunTime.3, r2
	add r20, r2
	mov 0x00000001, r20
	st.b r20, 0x0000001D[r2]
	mov 0x00000000, r20
.BB.LABEL.12_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1042
	jarl _SchM_Exit_CanNm_Context, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_5:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1049
	dispose 0x00000000, 0x00000041, [r31]
_CanNm_GetPduData:
	.stack _CanNm_GetPduData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1061
	prepare 0x00000061, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1070
	jarl _CanNm_FindChannelIndex.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1085
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1086
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movea 0x0000001F, r5, r7
	mov 0x00000008, r8
	mov r20, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1087
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1097
	dispose 0x00000000, 0x00000061, [r31]
_CanNm_GetState:
	.stack _CanNm_GetState = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1115
	prepare 0x00000071, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1123
	jarl _CanNm_FindChannelIndex.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1125
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1126
	mulhi 0x00000030, r22, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1127
	ld.w 0x00000004[r5], r2
	st.w r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1128
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1133
	dispose 0x00000000, 0x00000071, [r31]
_CanNm_TxConfirmation:
	.stack _CanNm_TxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1341
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1350
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r5
	ld.w LOWW(#_CanNm_CfgPtr.2)[r5], r5
	ld.w 0x00000004[r5], r5
	andi 0x000000FF, r2, r7
	mul 0x00000038, r7, r0
	add r7, r5
	ld.w 0x0000002C[r5], r5
	ld.hu 0x00000000[r5], r5
	cmp r5, r6
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	add 0x00000001, r2
.BB.LABEL.15_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1348
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.15_1
.BB.LABEL.15_4:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1355
	andi 0x000000FF, r2, r6
	jarl _CanNm_InnerTxConfHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_CanNm_RxIndication:
	.stack _CanNm_RxIndication = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1382
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1388
	ld.hu 0x00000008[r7], r2
	cmp 0x00000008, r2
	mov r7, r20
	bnz9 .BB.LABEL.16_13
.BB.LABEL.16_1:	; entry.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.16_7
.BB.LABEL.16_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1400
	mulhi 0x00000038, r5, r9
	add r2, r9
	ld.w 0x00000024[r9], r9
	andi 0x0000FFFF, r7, r10
	add r10, r10
	add r10, r9
	ld.hu 0x00000000[r9], r9
	cmp r9, r6
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	add 0x00000001, r7
.BB.LABEL.16_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1398
	mulhi 0x00000038, r5, r8
	add r2, r8
	ld.bu 0x00000028[r8], r8
	andi 0x0000FFFF, r7, r9
	cmp r8, r9
	blt9 .BB.LABEL.16_2
.BB.LABEL.16_5:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1406
	zxh r7
	cmp r7, r8
	bnz9 .BB.LABEL.16_9
.BB.LABEL.16_6:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	add 0x00000001, r21
.BB.LABEL.16_7:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1395
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.16_9
.BB.LABEL.16_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1397
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r22
	ld.w LOWW(#_CanNm_CfgPtr.2)[r22], r22
	ld.w 0x00000004[r22], r2
	andi 0x000000FF, r21, r5
	mov r5, r22
	mul 0x00000038, r22, r0
	add r2, r22
	mov 0x00000000, r7
	br9 .BB.LABEL.16_4
.BB.LABEL.16_9:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1419
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1421
	ld.hu 0x00000008[r20], r8
	ld.w 0x00000000[r20], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1412
	andi 0x000000FF, r21, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1421
	mov r23, r2
	mul 0x00000030, r2, r0
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movea 0x0000001F, r5, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1422
	jarl _SchM_Exit_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1425
	ld.w 0x00000010[r22], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.16_12
.BB.LABEL.16_10:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1427
	ld.w 0x00000000[r20], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1428
	tst1 0x00000000, 0x00000000[r5]
	bz9 .BB.LABEL.16_12
.BB.LABEL.16_11:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1430
	mulhi 0x00000030, r23, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000001E[r5]
.BB.LABEL.16_12:	; if_break_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1434
	mulhi 0x00000030, r23, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000000E[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1438
	movhi HIGHW1(#_validNmMsgFlag), r0, r5
	st.b r2, LOWW(#_validNmMsgFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1442
	zxb r21
	mul 0x00000038, r21, r0
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	add r21, r2
	ld.bu 0x00000020[r2], r6
	jarl _Nm_PduRxIndication, r31
.BB.LABEL.16_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1447
	dispose 0x00000000, 0x00000079, [r31]
_CanNm_TriggerTransmit:
	.stack _CanNm_TriggerTransmit = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1514
	prepare 0x00000071, 0x00000014
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1527
	ld.hu 0x00000008[r7], r2
	cmp 0x00000008, r2
	mov r7, r20
	bl9 .BB.LABEL.17_11
.BB.LABEL.17_1:	; entry.bb39_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.17_5
.BB.LABEL.17_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1531
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r5
	andi 0x000000FF, r21, r7
	mul 0x00000038, r7, r0
	add r7, r5
	ld.w 0x0000002C[r5], r5
	ld.hu 0x00000000[r5], r5
	cmp r5, r6
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1534
	andi 0x000000FF, r21, r5
	mul 0x00000038, r5, r0
	ld.w 0x00000004[r2], r22
	add r5, r22
	br9 .BB.LABEL.17_6
.BB.LABEL.17_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	add 0x00000001, r21
.BB.LABEL.17_5:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1529
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_6:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1539
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.17_11
.BB.LABEL.17_7:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1544
	ld.w 0x00000034[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_8:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1547
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1548
	ld.bu 0x00000030[r22], r2
	st.h r2, 0x00000010[r3]
	mov r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1549
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1550
	st.w r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1551
	ld.w 0x00000034[r22], r2
	ld.hu 0x00000002[r2], r6
	movea 0x00000008, r3, r7
	jarl _PduR_IfTriggerTransmit, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_10
.BB.LABEL.17_9:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1553
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1554
	ld.bu 0x00000030[r22], r8
	ld.bu 0x00000031[r22], r2
	andi 0x000000FF, r21, r5
	mul 0x00000030, r5, r0
	mov #_CanNm_ChRunTime.3, r6
	add r5, r6
	add r2, r6
	movea 0x00000027, r6, r6
	mov r3, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1558
	jarl _SchM_Exit_CanNm_Context, r31
.BB.LABEL.17_10:	; if_break_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000008, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1562
	st.h r22, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1564
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1565
	ld.w 0x00000000[r20], r6
	zxb r21
	mul 0x00000030, r21, r0
	mov #_CanNm_ChRunTime.3, r2
	add r21, r2
	movea 0x00000027, r2, r7
	mov r22, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1566
	jarl _SchM_Exit_CanNm_Context, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1568
	dispose 0x00000014, 0x00000071, [r31]
.BB.LABEL.17_11:	; if_break_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1574
	dispose 0x00000014, 0x00000071, [r31]
_CanNm_MainFunction:
	.stack _CanNm_MainFunction = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1594
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1596
	movhi HIGHW1(#_CanNm_InitStatus.1), r0, r2
	ld.w LOWW(#_CanNm_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_6
.BB.LABEL.18_1:	; entry.bb30_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.18_5
.BB.LABEL.18_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1611
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1610
	andi 0x000000FF, r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1612
	mov r21, r2
	mul 0x00000030, r2, r0
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000000E[r5], r2
	add 0x0000000E, r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1614
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1615
	andi 0x000000FF, r20, r6
	movea 0x00000002, r3, r7
	jarl _CanNm_RxDataMainHandle.1, r31
.BB.LABEL.18_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1618
	andi 0x000000FF, r20, r22
	mov r22, r6
	jarl _CanNm_TimerManagement.1, r31
	movea 0x00000002, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1619
	mov r22, r6
	jarl _CanNm_StateManagement.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1621
	mov r22, r6
	jarl _CanNm_MsgcycleTimerManage.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1622
	mov r22, r6
	jarl _CanNm_SendMsgMainHandle.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1625
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	st.b r0, 0x00000014[r5]
	add 0x00000001, r20
.BB.LABEL.18_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1602
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1628
	dispose 0x00000004, 0x00000071, [r31]
_CanNm_TestAndClear.1:
	.stack _CanNm_TestAndClear.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1633
	ld.bu 0x00000000[r6], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1636
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1638
	st.b r0, 0x00000000[r6]
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1641
	jmp [r31]
_CanNm_FindChannelIndex.1:
	.stack _CanNm_FindChannelIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1697
	mov 0x00000000, r10
	br9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1702
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r10, r5
	mul 0x00000038, r5, r0
	add r5, r2
	ld.bu 0x00000020[r2], r2
	cmp r2, r6
	bz9 .BB.LABEL.20_4
.BB.LABEL.20_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	add 0x00000001, r10
.BB.LABEL.20_3:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1700
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.20_1
.BB.LABEL.20_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1708
	zxb r10
	jmp [r31]
_CanNm_StateChange.1:
	.stack _CanNm_StateChange.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1723
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1728
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r5
	add r5, r2
	ld.bu 0x00000020[r2], r6
	jarl _Nm_StateChangeNotification, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1733
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1734
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	st.w r21, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1735
	jarl _SchM_Exit_CanNm_Context, r31
	dispose 0x00000000, 0x00000061, [r31]
_CanNm_EntryRepeatMessageState.1:
	.stack _CanNm_EntryRepeatMessageState.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1752
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1758
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1754
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1758
	mulhi 0x00000038, r6, r2
	add r20, r2
	ld.h 0x00000018[r2], r2
	st.h r2, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1763
	cmp 0x00000001, r8
	mov r6, r21
	mov r6, r22
	mov r6, r23
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000038, r22, r2
	add r20, r2
	ld.bu 0x00000004[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_4
.BB.LABEL.22_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1772
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r22, r2
	add r20, r2
	ld.hu 0x00000006[r2], r2
	st.h r2, 0x00000016[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1774
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1772
	movea 0x00000016, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1774
	bnz9 .BB.LABEL.22_6
.BB.LABEL.22_3:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1776
	st.h r5, 0x00000000[r2]
	br9 .BB.LABEL.22_6
.BB.LABEL.22_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1797
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1804
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000001B[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1806
	mulhi 0x00000038, r22, r2
	add r20, r2
	ld.h 0x00000002[r2], r6
	st.h r6, 0x00000016[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1807
	ld.b 0x00000004[r2], r2
	st.b r2, 0x0000000F[r5]
.BB.LABEL.22_6:	; if_break_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1835
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r24
	add r2, r24
	st.b r0, 0x0000001D[r24]
	mov 0x00000005, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1838
	mov r23, r6
	jarl _CanNm_StateChange.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1840
	ld.w 0x00000004[r24], r2
	add 0x00000004, r24
	cmp 0x00000003, r2
	bz9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1850
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r22, r2
	add r2, r20
	ld.h 0x0000001C[r20], r2
	st.h r2, 0x00000012[r5]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1854
	st.w r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1855
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r23, r5
	add r5, r2
	ld.bu 0x00000020[r2], r6
	jarl _Nm_NetworkMode, r31
.BB.LABEL.22_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1857
	dispose 0x00000000, 0x00000479, [r31]
_CanNm_MsgcycleTimerManage.1:
	.stack _CanNm_MsgcycleTimerManage.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1871
	mulhi 0x00000030, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1874
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.hu 0x00000016[r5], r2
	cmp 0x00000000, r2
	movea 0x00000016, r5, r2
	bz9 .BB.LABEL.23_6
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r6, r5
	mov #_CanNm_ChRunTime.3, r7
	add r5, r7
	ld.bu 0x0000000D[r7], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_6
.BB.LABEL.23_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1881
	ld.h 0x00000000[r2], r5
	add 0xFFFFFFFF, r5
	st.h r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1882
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_3:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; bb39
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1888
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000001B[r5]
.BB.LABEL.23_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1891
	jmp [r31]
_CanNm_TimerManagement.1:
	.stack _CanNm_TimerManagement.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1905
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1912
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.hu 0x00000018[r5], r2
	cmp 0x00000000, r2
	movea 0x00000018, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1907
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r7
	ld.w LOWW(#_CanNm_CfgPtr.2)[r7], r7
	ld.w 0x00000004[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1912
	mov r6, r20
	bz9 .BB.LABEL.24_3
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1914
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1915
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1917
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000001A[r5]
.BB.LABEL.24_3:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1945
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000000D[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1948
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.hu 0x00000012[r5], r2
	cmp 0x00000000, r2
	movea 0x00000012, r5, r5
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_5:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1950
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1951
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.24_8
.BB.LABEL.24_6:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1953
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r8
	add r2, r8
	ld.w 0x00000000[r8], r2
	add 0xFFFFFFFC, r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.24_8
.BB.LABEL.24_7:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1962
	mulhi 0x00000038, r6, r2
	add r2, r7
	ld.h 0x0000001C[r7], r2
	st.h r2, 0x00000000[r5]
	movea 0x00000011, r0, r9
	movea 0x00000013, r0, r8
	mov 0x00000000, r7
	movea 0x0000001F, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1971
	jarl _Det_ReportRuntimeError, r31
.BB.LABEL.24_8:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1982
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.hu 0x00000010[r5], r2
	cmp 0x00000000, r2
	movea 0x00000010, r5, r5
	bz9 .BB.LABEL.24_11
.BB.LABEL.24_9:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1984
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1985
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.24_11
.BB.LABEL.24_10:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 1987
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000014[r5]
.BB.LABEL.24_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2018
	dispose 0x00000000, 0x00000041, [r31]
_CanNm_SendNmPdu.1:
	.stack _CanNm_SendNmPdu.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2366
	prepare 0x00000479, 0x00000020
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2371
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000000D[r5], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; entry.if_break_bb115_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
	jr .BB.LABEL.25_8
.BB.LABEL.25_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2378
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2390
	mulhi 0x00000038, r6, r2
	add r21, r2
	ld.w 0x0000002C[r2], r5
	ld.bu 0x00000004[r5], r5
	cmp 0x00000000, r5
	movea 0x0000002C, r2, r22
	mov r6, r23
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_3:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000038, r23, r2
	add r21, r2
	ld.w 0x00000034[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_6
.BB.LABEL.25_4:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2393
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2394
	mulhi 0x00000038, r23, r24
	add r21, r24
	ld.w 0x00000034[r24], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2398
	ld.hu 0x00000002[r2], r6
	mov r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2395
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2396
	ld.bu 0x00000030[r24], r2
	st.h r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2397
	st.w r0, 0x0000000C[r3]
	movea 0x00000008, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2398
	jarl _PduR_IfTriggerTransmit, r31
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2396
	movea 0x00000030, r24, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2398
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2400
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2401
	mulhi 0x00000038, r23, r2
	add r21, r2
	ld.bu 0x00000031[r2], r2
	ld.bu 0x00000000[r24], r8
	mulhi 0x00000030, r20, r5
	mov #_CanNm_ChRunTime.3, r6
	add r5, r6
	add r2, r6
	movea 0x00000027, r6, r6
	mov r3, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2402
	jarl _SchM_Exit_CanNm_Context, r31
.BB.LABEL.25_6:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2411
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movea 0x00000027, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2410
	ld.w 0x00000000[r22], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2415
	ld.hu 0x00000002[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2411
	st.w r2, 0x00000014[r3]
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2412
	st.h r2, 0x0000001C[r3]
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2415
	jarl _CanIf_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2417
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_8
.BB.LABEL.25_7:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2420
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r23, r2
	add r2, r21
	ld.h 0x0000000A[r21], r2
	st.h r2, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2421
	st.b r0, 0x0000001A[r5]
.BB.LABEL.25_8:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2429
	dispose 0x00000020, 0x00000479, [r31]
_CanNm_StateManagement.1:
	.stack _CanNm_StateManagement.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2505
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2508
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000004, r2
	bh9 .BB.LABEL.26_7
.BB.LABEL.26_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.26_8[r2]
.SWITCH.LABEL.26_8:
	br9 .BB.LABEL.26_2
	br9 .BB.LABEL.26_3
	br9 .BB.LABEL.26_6
	br9 .BB.LABEL.26_5
	br9 .BB.LABEL.26_4
.SWITCH.LABEL.26_8.END:
.BB.LABEL.26_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2511
	jarl _CanNm_BusSleepStateHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_3:	; switch_clause_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2515
	jarl _CanNm_PrepareBusSleepStateHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_4:	; switch_clause_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2519
	jarl _CanNm_RepeatMessageStateHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_5:	; switch_clause_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2523
	jarl _CanNm_NormalOperationStateHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_6:	; switch_clause_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2527
	jarl _CanNm_ReadySleepStateHandle.1, r31
.BB.LABEL.26_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2534
	dispose 0x00000000, 0x00000001, [r31]
_CanNm_WakeUpSignalHandle.1:
	.stack _CanNm_WakeUpSignalHandle.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2545
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2552
	cmp 0x00000000, r7
	mov r6, r20
	mov r6, r21
	bz9 .BB.LABEL.27_3
.BB.LABEL.27_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; bb.bb27_crit_edge
	mov 0x00000000, r22
	br9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; bb25
	mov 0x00000001, r22
.BB.LABEL.27_4:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2555
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r23
	add r2, r23
	addi 0x0000000C, r23, r6
	jarl _CanNm_TestAndClear.1, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2557
	movea 0x0000001C, r23, r6
	jarl _CanNm_TestAndClear.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2555
	cmp 0x00000000, r24
	setf 0x00000002, r23
	and r22, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2565
	addi 0x00000000, r10, r22
	bnz9 .BB.LABEL.27_7
.BB.LABEL.27_5:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	xori 0x00000001, r23, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; bb27.if_break_bb153_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.27_11
.BB.LABEL.27_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2567
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r7
	mov r21, r6
	mov r22, r8
	jarl _CanNm_EntryRepeatMessageState.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2573
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r5
	mulhi 0x00000038, r21, r6
	add r6, r5
	ld.bu 0x00000000[r5], r5
	xori 0x00000001, r23, r6
	cmp 0x00000000, r5
	bz9 .BB.LABEL.27_10
.BB.LABEL.27_8:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	cmp 0x00000000, r22
	bz9 .BB.LABEL.27_10
.BB.LABEL.27_9:	; if_then_bb
	xori 0x00000001, r6, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.27_12
.BB.LABEL.27_10:	; if_then_bb.if_break_bb153_crit_edge
	mov 0x00000001, r10
.BB.LABEL.27_11:	; if_break_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2583
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.27_12:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2576
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r21, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.27_10
.BB.LABEL.27_13:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	jarl _SchM_Enter_CanNm_Context, r31
	mulhi 0x00000030, r21, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r21, r6
	add r6, r2
	ld.bu 0x00000010[r2], r2
	add r2, r5
	set1 0x00000004, 0x00000027[r5]
	jarl _SchM_Exit_CanNm_Context, r31
	br9 .BB.LABEL.27_10
_CanNm_BusSleepStateHandle.1:
	.stack _CanNm_BusSleepStateHandle.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2596
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2599
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2602
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000001C[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000000C[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.28_4
.BB.LABEL.28_2:	; bb35
	ld.bu 0x00000000[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2606
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r5
	add r5, r2
	ld.bu 0x00000020[r2], r6
	jarl _Nm_NetworkStartIndication, r31
	mov 0x00000004, r9
	movea 0x00000042, r0, r8
	mov 0x00000000, r7
	movea 0x0000001F, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2607
	jarl _Det_ReportRuntimeError, r31
.BB.LABEL.28_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2613
	jarl _SchM_Exit_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2615
	ld.bu 0x00000000[r21], r7
	mov r20, r6
	jarl _CanNm_WakeUpSignalHandle.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_CanNm_PrepareBusSleepStateHandle.1:
	.stack _CanNm_PrepareBusSleepStateHandle.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2629
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2631
	ld.bu 0x00000000[r7], r7
	jarl _CanNm_WakeUpSignalHandle.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2634
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_1:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x00000014[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2638
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r21
	add r2, r21
	ld.w 0x00000000[r21], r7
	mov 0x00000001, r8
	mov r20, r6
	jarl _CanNm_StateChange.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2639
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2642
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r5
	add r5, r2
	ld.bu 0x00000020[r2], r6
	jarl _Nm_BusSleepMode, r31
.BB.LABEL.29_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2644
	dispose 0x00000000, 0x00000061, [r31]
_CanNm_RepeatMessageStateHandle.1:
	.stack _CanNm_RepeatMessageStateHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2657
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2662
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2667
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r22
	add r2, r22
	movea 0x0000001C, r22, r6
	jarl _CanNm_TestAndClear.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2680
	ld.bu 0x00000014[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.30_7
.BB.LABEL.30_1:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2683
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	st.b r0, 0x0000000F[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2685
	ld.w 0x00000008[r5], r2
	mov r20, r6
	cmp 0x00000000, r2
	ld.w 0x00000000[r5], r7
	bnz9 .BB.LABEL.30_3
.BB.LABEL.30_2:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000004, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2692
	jarl _CanNm_StateChange.1, r31
	br9 .BB.LABEL.30_4
.BB.LABEL.30_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000003, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2707
	jarl _CanNm_StateChange.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2715
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	st.h r0, 0x00000016[r5]
.BB.LABEL.30_4:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2728
	mulhi 0x00000038, r20, r2
	add r2, r21
	ld.bu 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.30_7
.BB.LABEL.30_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2730
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.30_7
.BB.LABEL.30_6:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	jarl _SchM_Enter_CanNm_Context, r31
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r6
	add r6, r2
	ld.bu 0x00000010[r2], r2
	add r2, r5
	clr1 0x00000000, 0x00000027[r5]
	jarl _SchM_Exit_CanNm_Context, r31
.BB.LABEL.30_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2738
	dispose 0x00000000, 0x00000071, [r31]
_CanNm_NodeDetectStateHandle.1:
	.stack _CanNm_NodeDetectStateHandle.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2753
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2757
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movea 0x0000001D, r5, r6
	jarl _CanNm_TestAndClear.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2759
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.31_3
.BB.LABEL.31_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.31_3
.BB.LABEL.31_2:	; entry.if_break_bb66_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.31_5
.BB.LABEL.31_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2761
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.31_6
.BB.LABEL.31_4:	; if_then_bb.if_break_bb66_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r10
.BB.LABEL.31_5:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2771
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.31_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2764
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.31_4
.BB.LABEL.31_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	jarl _SchM_Enter_CanNm_Context, r31
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r6
	add r6, r2
	ld.bu 0x00000010[r2], r2
	add r2, r5
	set1 0x00000000, 0x00000027[r5]
	jarl _SchM_Exit_CanNm_Context, r31
	br9 .BB.LABEL.31_4
_CanNm_NormalOperationStateHandle.1:
	.stack _CanNm_NormalOperationStateHandle.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2785
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2789
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2793
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r23
	add r2, r23
	movea 0x0000001C, r23, r6
	jarl _CanNm_TestAndClear.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2807
	ld.w 0x00000008[r23], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.32_2
.BB.LABEL.32_1:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2809
	mulhi 0x00000030, r20, r21
	mov #_CanNm_ChRunTime.3, r22
	add r21, r22
	ld.w 0x00000000[r22], r7
	mov 0x00000003, r8
	mov r20, r6
	jarl _CanNm_StateChange.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2816
	st.h r0, 0x00000016[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2820
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.32_2:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2824
	mulhi 0x00000038, r20, r2
	add r2, r22
	ld.bu 0x0000000C[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.32_5
.BB.LABEL.32_3:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2827
	ld.bu 0x00000001[r21], r7
	mov r20, r6
	jarl _CanNm_NodeDetectStateHandle.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.32_5
.BB.LABEL.32_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2829
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r7
	mov 0x00000000, r8
	mov r20, r6
	jarl _CanNm_EntryRepeatMessageState.1, r31
.BB.LABEL.32_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2854
	dispose 0x00000000, 0x00000079, [r31]
_CanNm_ReadySleepStateHandle.1:
	.stack _CanNm_ReadySleepStateHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2867
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2869
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2878
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2880
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movea 0x0000001C, r5, r6
	jarl _CanNm_TestAndClear.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2894
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000004, r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2904
	ld.bu 0x0000000D[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.33_3
.BB.LABEL.33_2:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2907
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r20, r2
	add r22, r2
	ld.h 0x00000008[r2], r2
	st.h r2, 0x00000016[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2908
	st.b r2, 0x0000001B[r5]
.BB.LABEL.33_3:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2920
	mulhi 0x00000038, r20, r2
	add r2, r22
	ld.bu 0x0000000C[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.33_7
.BB.LABEL.33_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.33_7
.BB.LABEL.33_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2923
	ld.bu 0x00000001[r21], r7
	mov r20, r6
	jarl _CanNm_NodeDetectStateHandle.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.33_7
.BB.LABEL.33_6:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2925
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000005, r2
	st.w r2, 0x00000000[r5]
.BB.LABEL.33_7:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2931
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r21
	add r2, r21
	ld.w 0x00000000[r21], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.33_12
.BB.LABEL.33_8:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.hu 0x00000012[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.33_11
.BB.LABEL.33_9:	; bb83
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000000D[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.33_12
.BB.LABEL.33_10:	; bb91
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.33_12
.BB.LABEL.33_11:	; if_then_bb119
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2942
	st.w r2, 0x00000000[r21]
.BB.LABEL.33_12:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2944
	jarl _SchM_Exit_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2946
	ld.w 0x00000000[r21], r8
	cmp 0x00000002, r8
	bz9 .BB.LABEL.33_17
.BB.LABEL.33_13:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	cmp 0x00000004, r8
	bz9 .BB.LABEL.33_16
.BB.LABEL.33_14:	; if_break_bb122
	cmp 0x00000005, r8
	bnz9 .BB.LABEL.33_18
.BB.LABEL.33_15:	; switch_clause_bb
	mov 0x00000000, r8
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2949
	mov r20, r6
	jarl _CanNm_EntryRepeatMessageState.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.33_16:	; switch_clause_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2953
	mov r20, r6
	jarl _CanNm_StateChange.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.33_17:	; switch_clause_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2957
	mov r20, r6
	jarl _CanNm_EnterPrepareBusSleepModeHandle.1, r31
.BB.LABEL.33_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2967
	dispose 0x00000000, 0x00000071, [r31]
_CanNm_RxDataMainHandle.1:
	.stack _CanNm_RxDataMainHandle.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2980
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2982
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 2985
	st.b r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3011
	mulhi 0x00000030, r6, r5
	mov #_CanNm_ChRunTime.3, r8
	add r5, r8
	ld.w 0x00000004[r8], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3013
	mulhi 0x00000030, r6, r5
	mov #_CanNm_ChRunTime.3, r8
	add r5, r8
	mulhi 0x00000038, r6, r5
	add r2, r5
	ld.h 0x0000001C[r5], r5
	st.h r5, 0x00000012[r8]
.BB.LABEL.34_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3023
	mulhi 0x00000038, r6, r5
	add r2, r5
	ld.bu 0x0000000C[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.34_8
.BB.LABEL.34_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mulhi 0x00000030, r6, r5
	mov #_CanNm_ChRunTime.3, r8
	add r5, r8
	ld.bu 0x0000001E[r8], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.34_8
.BB.LABEL.34_4:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3025
	mulhi 0x00000030, r6, r5
	mov #_CanNm_ChRunTime.3, r8
	add r5, r8
	st.b r0, 0x0000001E[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3026
	ld.w 0x00000000[r8], r5
	add 0xFFFFFFFD, r5
	cmp 0x00000001, r5
	bh9 .BB.LABEL.34_6
.BB.LABEL.34_5:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3028
	st.b r5, 0x00000001[r7]
.BB.LABEL.34_6:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3032
	mulhi 0x00000038, r6, r5
	add r2, r5
	ld.bu 0x0000001A[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.34_8
.BB.LABEL.34_7:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3034
	mulhi 0x00000038, r6, r5
	add r5, r2
	ld.bu 0x00000020[r2], r6
	jarl _Nm_RepeatMessageIndication, r31
.BB.LABEL.34_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3063
	dispose 0x00000000, 0x00000001, [r31]
_CanNm_SendMsgMainHandle.1:
	.stack _CanNm_SendMsgMainHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3080
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3085
	mulhi 0x00000030, r6, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000001B[r5], r2
	cmp 0x00000000, r2
	movea 0x0000001B, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3083
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r5
	ld.w LOWW(#_CanNm_CfgPtr.2)[r5], r5
	ld.w 0x00000004[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3085
	mov r6, r21
	mov r6, r22
	bz9 .BB.LABEL.35_10
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3087
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3088
	jarl _CanNm_SendNmPdu.1, r31
	mulhi 0x00000030, r22, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.bu 0x0000000F[r5], r2
	add 0x0000000F, r5
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.35_7
.BB.LABEL.35_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3094
	cmp 0x00000000, r2
	bz9 .BB.LABEL.35_6
.BB.LABEL.35_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3096
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3097
	mulhi 0x00000030, r22, r22
	mov #_CanNm_ChRunTime.3, r5
	add r22, r5
	movea 0x00000016, r5, r22
	andi 0x000000FF, r2, r0
	mulhi 0x00000038, r21, r2
	bnz9 .BB.LABEL.35_5
.BB.LABEL.35_4:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3099
	add r2, r20
	ld.h 0x00000008[r20], r2
	st.h r2, 0x00000000[r22]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.35_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3103
	add r2, r20
	ld.h 0x00000002[r20], r2
	st.h r2, 0x00000000[r22]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.35_6:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3109
	mulhi 0x00000030, r22, r2
	mov #_CanNm_ChRunTime.3, r22
	add r2, r22
	mulhi 0x00000038, r21, r2
	add r2, r20
	ld.h 0x00000008[r20], r2
	st.h r2, 0x00000016[r22]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.35_7:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3115
	cmp 0x00000000, r2
	bz9 .BB.LABEL.35_9
.BB.LABEL.35_8:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3117
	mulhi 0x00000030, r22, r20
	mov #_CanNm_ChRunTime.3, r21
	add r20, r21
	mov 0x00000001, r20
	st.h r20, 0x00000016[r21]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.35_9:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3130
	mulhi 0x00000030, r22, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r21, r2
	add r2, r20
	ld.h 0x00000008[r20], r2
	st.h r2, 0x00000016[r5]
.BB.LABEL.35_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3135
	dispose 0x00000000, 0x00000071, [r31]
_CanNm_EnterPrepareBusSleepModeHandle.1:
	.stack _CanNm_EnterPrepareBusSleepModeHandle.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3197
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3199
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r21
	ld.w LOWW(#_CanNm_CfgPtr.2)[r21], r2
	ld.w 0x00000004[r2], r22
	mov 0x00000002, r8
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3204
	jarl _CanNm_StateChange.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3205
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3208
	mulhi 0x00000038, r20, r23
	ld.w LOWW(#_CanNm_CfgPtr.2)[r21], r2
	ld.w 0x00000004[r2], r2
	add r23, r2
	ld.bu 0x00000020[r2], r6
	jarl _Nm_PrepareBusSleepMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3216
	add r22, r23
	ld.bu 0x0000001B[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.36_2
.BB.LABEL.36_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3218
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r20, r2
	add r22, r2
	ld.h 0x0000001E[r2], r2
	st.h r2, 0x00000010[r5]
.BB.LABEL.36_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3224
	mulhi 0x00000038, r20, r2
	add r2, r22
	ld.bu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.36_5
.BB.LABEL.36_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3226
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.36_5
.BB.LABEL.36_4:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 0
	jarl _SchM_Enter_CanNm_Context, r31
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r2
	mulhi 0x00000038, r20, r6
	add r6, r2
	ld.bu 0x00000010[r2], r2
	add r2, r5
	clr1 0x00000004, 0x00000027[r5]
	jarl _SchM_Exit_CanNm_Context, r31
.BB.LABEL.36_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3229
	dispose 0x00000000, 0x00000079, [r31]
_CanNm_InnerTxConfHandle.1:
	.stack _CanNm_InnerTxConfHandle.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3244
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3246
	movhi HIGHW1(#_CanNm_CfgPtr.2), r0, r2
	ld.w LOWW(#_CanNm_CfgPtr.2)[r2], r2
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3248
	jarl _SchM_Enter_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3251
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.37_2
.BB.LABEL.37_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3253
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	mulhi 0x00000038, r20, r2
	add r21, r2
	ld.h 0x0000001C[r2], r2
	st.h r2, 0x00000012[r5]
.BB.LABEL.37_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3257
	mulhi 0x00000030, r20, r2
	mov #_CanNm_ChRunTime.3, r5
	add r2, r5
	st.h r0, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3258
	st.b r0, 0x0000001A[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3259
	jarl _SchM_Exit_CanNm_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3263
	mulhi 0x00000038, r20, r2
	add r2, r21
	ld.w 0x00000034[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.37_4
.BB.LABEL.37_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3267
	ld.hu 0x00000002[r2], r6
	jarl _PduR_IfTxConfirmation, r31
.BB.LABEL.37_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanNm/CanNm.c", 3271
	dispose 0x00000000, 0x00000061, [r31]
	.section .data, data
	.align 4
_CanNm_InitStatus.1:
	.ds (4)
	.align 4
_CanNm_CfgPtr.2:
	.ds (4)
_validNmMsgFlag:
	.ds (1)
	.section .bss, bss
	.align 4
_CanNm_ChRunTime.3:
	.ds (48)
