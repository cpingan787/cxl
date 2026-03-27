#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x2F.c -oDefaultBuild\Dcm_UDS0x2F.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_2b15b86eac274805a4f836437f6f7ed4j5j00qmv.dsk
#@	compiled at Fri Mar 27 09:50:03 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x2F.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dcm_MkCtrl
	.public _Dcm_UDS0x2F
	.extern _DsdInternal_ProcessingDone

	.section .text, text
_Dcm_Uds0x2FServiceDidCallReadAPI.1:
	.stack _Dcm_Uds0x2FServiceDidCallReadAPI.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 310
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 316
	ld.w 0x00000014[r7], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 317
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 319
	ld.w 0x0000001C[r7], r7
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 324
	st.b r2, 0x00000000[r8]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 325
	dispose 0x00000000, 0x00000001, [r31]
_DspInternalUDS0x2F_DidConditionCheck.1:
	.stack _DspInternalUDS0x2F_DidConditionCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 344
	ld.w 0x00000008[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 371
	ld.bu 0x00000005[r2], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 356
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 371
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_1:	; entry.bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000000, r6
	mov r6, r8
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 375
	andi 0x000000FF, r8, r9
	add r2, r9
	ld.bu 0x00000000[r9], r9
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r10
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000001)[r10], r10
	cmp r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 377
	cmov 0x00000002, 0x00000001, r6, r6
	add 0x00000001, r8
.BB.LABEL.2_3:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 373
	andi 0x000000FF, r8, r9
	cmp r5, r9
	bnc9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	andi 0x000000FF, r6, r0
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_5:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 380
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000033, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 383
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 384
	jmp [r31]
.BB.LABEL.2_7:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 390
	jmp [r31]
_Dcm_Uds0x2FServiceDidCallAPI_SubDeal.1:
	.stack _Dcm_Uds0x2FServiceDidCallAPI_SubDeal.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 407
	prepare 0x00000679, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 416
	mulhi 0x0000001C, r8, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 418
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 422
	ld.bu 0x00000003[r2], r2
	cmp 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 419
	ld.w 0x00000014[r7], r5
	ld.w 0x00000004[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 420
	ld.w 0x00000018[r7], r22
	mov r9, r23
	mov r7, r24
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 422
	bh17 .BB.LABEL.3_24
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.3_26[r2]
.SWITCH.LABEL.3_26:
	br9 .BB.LABEL.3_2
	br9 .BB.LABEL.3_5
	br9 .BB.LABEL.3_10
	br9 .BB.LABEL.3_15
.SWITCH.LABEL.3_26.END:
.BB.LABEL.3_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 425
	ld.w 0x00000028[r21], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 427
	mov r24, r6
	mov r23, r7
	jarl _DspInternalUDS0x2F_DidConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 433
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_4:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 435
	ld.w 0x00000028[r21], r20
	mov r22, r6
	mov r23, r7
	jarl [r20], r31
	br9 .BB.LABEL.3_22
.BB.LABEL.3_5:	; switch_clause_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 449
	ld.w 0x00000008[r24], r20
	ld.bu 0x0000001D[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.3_14
.BB.LABEL.3_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	ld.w 0x00000024[r21], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_7:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 452
	mov r24, r6
	mov r23, r7
	jarl _DspInternalUDS0x2F_DidConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 458
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_8:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 460
	ld.w 0x00000024[r21], r20
.BB.LABEL.3_9:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov r25, r6
	mov r22, r7
	mov r23, r8
	jarl [r20], r31
	br9 .BB.LABEL.3_22
.BB.LABEL.3_10:	; switch_clause_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 474
	ld.w 0x00000008[r24], r20
	ld.bu 0x0000001C[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.3_14
.BB.LABEL.3_11:	; bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	ld.w 0x00000014[r21], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_12:	; if_then_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 477
	mov r24, r6
	mov r23, r7
	jarl _DspInternalUDS0x2F_DidConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 483
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_13:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 485
	ld.w 0x00000014[r21], r20
	br9 .BB.LABEL.3_9
.BB.LABEL.3_14:	; if_else_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000031, r0, r20
	st.b r20, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 538
	dispose 0x00000004, 0x00000679, [r31]
.BB.LABEL.3_15:	; switch_clause_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 499
	ld.w 0x00000008[r24], r2
	ld.bu 0x0000001E[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_24
.BB.LABEL.3_16:	; bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	ld.w 0x0000002C[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_24
.BB.LABEL.3_17:	; if_then_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 502
	mov r24, r6
	mov r23, r7
	jarl _DspInternalUDS0x2F_DidConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 508
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_18:	; if_then_bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 510
	ld.w 0x00000014[r24], r2
	ld.w 0x00000004[r2], r2
	ld.hu 0x00000034[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_19:	; if_then_bb208.if_break_bb233_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.3_21
.BB.LABEL.3_20:	; if_then_bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 512
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x0000000C[r2], r2
	ld.hu 0x00000020[r24], r6
	add r2, r6
	add 0x00000004, r6
.BB.LABEL.3_21:	; if_break_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 514
	ld.hu 0x00000034[r21], r7
	ld.w 0x0000002C[r21], r2
	st.w r23, 0x00000000[r3]
	mov r25, r8
	mov r22, r9
	jarl [r2], r31
.BB.LABEL.3_22:	; if_break_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_23:	; if_then_bb250
	mov r25, r6
	mov r24, r7
	mov r23, r8
	jarl _Dcm_Uds0x2FServiceDidCallReadAPI.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 538
	dispose 0x00000004, 0x00000679, [r31]
.BB.LABEL.3_24:	; switch_clause_bb260
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000031, r0, r2
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
.BB.LABEL.3_25:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 538
	dispose 0x00000004, 0x00000679, [r31]
_Dcm_Uds0x2FServiceDidCallAPI.1:
	.stack _Dcm_Uds0x2FServiceDidCallAPI.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 554
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 563
	mulhi 0x0000001C, r8, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 564
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r10
	add r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 565
	ld.bu 0x00000007[r10], r5
	mulhi 0x00000014, r5, r5
	mov #_Dcm_ChannelCtrl, r10
	add r5, r10
	ld.bu 0x00000000[r10], r5
	mulh 0x0000000C, r5
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r10
	ld.w LOWW(#_DcmPbCfgPtr)[r10], r10
	ld.w 0x00000000[r10], r10
	ld.w 0x00000004[r10], r10
	add r5, r10
	ld.w 0x00000008[r10], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 576
	ld.w 0x00000014[r7], r10
	ld.w 0x00000004[r10], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 577
	ld.w 0x0000003C[r20], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 627
	cmp 0x00000008, r10
	mov r7, r21
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	cmp 0x00000003, r10
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_2:	; entry
	cmp 0x00000004, r10
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; entry
	cmp 0x00000007, r10
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_4:	; entry
	cmp 0x00000001, r10
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; entry
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 632
	ld.w 0x00000008[r21], r7
	ld.bu 0x00000004[r7], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 634
	ld.hu 0x00000020[r21], r7
	ld.hu 0x00000034[r20], r10
	add r10, r7
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r10
	add r2, r10
	ld.w 0x0000000C[r10], r2
	add r2, r7
	add 0x00000004, r7
.BB.LABEL.4_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 638
	st.w r7, 0x00000018[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 637
	mov #_Dcm_Channel, r2
	add r2, r5
	add 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 639
	st.w r5, 0x0000001C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 640
	mov r21, r7
	jarl _Dcm_Uds0x2FServiceDidCallAPI_SubDeal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 641
	ld.w 0x0000000C[r21], r2
	ld.h 0x00000000[r2], r5
	ld.h 0x00000034[r20], r6
	add r6, r5
	st.h r5, 0x00000000[r2]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.4_10:	; if_break_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 648
	dispose 0x00000000, 0x00000061, [r31]
_DspInternalUDS0x2F_DidCheck.1:
	.stack _DspInternalUDS0x2F_DidCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 664
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 671
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 672
	ld.w 0x00000030[r2], r5
	mov 0x00000001, r10
	mov 0x00000000, r9
	br9 .BB.LABEL.5_5
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 678
	andi 0x0000FFFF, r9, r11
	mul 0x00000014, r11, r0
	add r5, r11
	ld.hu 0x00000000[r11], r11
	cmp r11, r6
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	andi 0x0000FFFF, r9, r11
	mul 0x00000014, r11, r0
	add r5, r11
	ld.bu 0x00000002[r11], r11
	cmp 0x00000001, r11
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 680
	st.h r9, 0x00000000[r7]
	mov 0x00000000, r10
.BB.LABEL.5_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	add 0x00000001, r9
.BB.LABEL.5_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 675
	andi 0x0000FFFF, r9, r11
	ld.hu 0x0000002C[r2], r12
	cmp r12, r11
	bnc9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	andi 0x000000FF, r10, r11
	cmp 0x00000001, r11
	bz9 .BB.LABEL.5_1
.BB.LABEL.5_7:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 684
	andi 0x000000FF, r10, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 687
	st.b r2, 0x00000000[r8]
.BB.LABEL.5_9:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	zxb r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 690
	jmp [r31]
_Dcm_Uds0x2FServiceConditionCheck.1:
	.stack _Dcm_Uds0x2FServiceConditionCheck.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 708
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 716
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 727
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 734
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000004, r2
	movea 0x00000010, r5, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 725
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 726
	ld.w 0x00000038[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 725
	ld.w 0x00000030[r2], r23
	mov r9, r24
	mov r8, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 734
	bl9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 737
	st.b r2, 0x00000000[r24]
	mov 0x00000001, r10
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 748
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 751
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.b 0x00000001[r2], r6
	ld.bu 0x00000002[r2], r2
	shl 0x00000008, r6
	or r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 753
	zxh r6
	mov r26, r7
	mov r24, r8
	jarl _DspInternalUDS0x2F_DidCheck.1, r31
.BB.LABEL.6_5:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 755
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_6:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 757
	ld.hu 0x00000000[r26], r2
	mul 0x00000014, r2, r0
	add r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 759
	ld.hu 0x00000004[r2], r2
	shl 0x00000004, r2
	add r2, r22
	ld.w 0x00000004[r22], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 760
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 763
	st.b r2, 0x00000000[r24]
	mov 0x00000001, r10
.BB.LABEL.6_8:	; if_break_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 767
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_9:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 770
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 771
	ld.bu 0x00000003[r20], r20
	cmp 0x00000003, r20
	bh9 .BB.LABEL.6_16
.BB.LABEL.6_10:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.6_12
.BB.LABEL.6_11:	; bb118
	ld.bu 0x0000001E[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_16
.BB.LABEL.6_12:	; bb138
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.6_14
.BB.LABEL.6_13:	; bb143
	ld.bu 0x0000001D[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_16
.BB.LABEL.6_14:	; bb164
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_15:	; bb169
	ld.bu 0x0000001C[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_16:	; if_then_bb191
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 780
	st.b r2, 0x00000000[r24]
	mov 0x00000001, r10
.BB.LABEL.6_17:	; if_break_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 786
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_25
.BB.LABEL.6_18:	; bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	ld.bu 0x0000000C[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_25
.BB.LABEL.6_19:	; bb199.bb233_crit_edge
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.6_21
.BB.LABEL.6_20:	; bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 790
	ld.w 0x00000010[r22], r6
	andi 0x0000FFFF, r2, r7
	add r7, r6
	ld.bu 0x00000000[r6], r6
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r7
	ld.bu LOWW(#_Dcm_MkCtrl)[r7], r7
	cmp r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 792
	cmov 0x00000002, 0x00000001, r5, r5
	add 0x00000001, r2
.BB.LABEL.6_21:	; bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 788
	andi 0x0000FFFF, r2, r6
	ld.bu 0x0000000C[r22], r7
	cmp r7, r6
	bge9 .BB.LABEL.6_23
.BB.LABEL.6_22:	; bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.6_20
.BB.LABEL.6_23:	; bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 795
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.6_25
.BB.LABEL.6_24:	; if_then_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 798
	st.b r2, 0x00000000[r24]
	mov 0x00000001, r10
.BB.LABEL.6_25:	; if_break_bb264
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 803
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_26:	; if_then_bb270
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 805
	zxb r20
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.6_36
.BB.LABEL.6_27:	; if_then_bb276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 807
	ld.hu 0x00000000[r26], r21
	mov r21, r2
	mul 0x00000014, r2, r0
	add r23, r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_35
.BB.LABEL.6_28:	; if_then_bb287
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 809
	mul 0x00000014, r21, r0
	add r23, r21
	ld.w 0x00000010[r21], r21
	mov 0x00000000, r2
	br9 .BB.LABEL.6_33
.BB.LABEL.6_29:	; bb295
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 812
	ld.w 0x00000004[r21], r5
	ld.h 0x00000034[r5], r5
	ld.h 0x00000000[r25], r6
	add r5, r6
	st.h r6, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 814
	ld.w 0x00000000[r22], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.6_32
.BB.LABEL.6_30:	; bb312
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	ld.w 0x00000004[r21], r5
	ld.w 0x0000003C[r5], r5
	add 0xFFFFFFFB, r5
	cmp 0x00000001, r5
	bh9 .BB.LABEL.6_32
.BB.LABEL.6_31:	; if_then_bb343
	movea 0x00000013, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 820
	st.b r5, 0x00000000[r24]
	mov 0x00000001, r10
.BB.LABEL.6_32:	; if_break_bb345
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 823
	add 0x00000001, r2
	add 0x00000008, r21
.BB.LABEL.6_33:	; bb350
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 810
	ld.hu 0x00000000[r26], r5
	mul 0x00000014, r5, r0
	add r23, r5
	ld.hu 0x0000000C[r5], r5
	andi 0x0000FFFF, r2, r6
	cmp r5, r6
	bnc9 .BB.LABEL.6_35
.BB.LABEL.6_34:	; bb350
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.6_29
.BB.LABEL.6_35:	; if_break_bb395
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 840
	zxb r10
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.6_36:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 829
	ld.bu 0x00000004[r22], r2
	add 0x00000004, r2
	ld.bu 0x00000000[r21], r5
	cmp r5, r2
	bz9 .BB.LABEL.6_35
.BB.LABEL.6_37:	; if_then_bb391
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 833
	st.b r2, 0x00000000[r24]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 834
	dispose 0x00000000, 0x00000779, [r31]
_Dcm_UDS0x2FSubDeal.1:
	.stack _Dcm_UDS0x2FSubDeal.1 = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 856
	prepare 0x000007FF, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 870
	ld.w 0x00000008[r8], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 871
	ld.bu 0x00000004[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 875
	ld.hu 0x00000004[r8], r2
	add r21, r2
	add 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 869
	ld.hu 0x00000006[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 872
	mov r5, r11
	mul 0x00000014, r11, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 869
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r10
	ld.w LOWW(#_DcmPbCfgPtr)[r10], r10
	ld.w 0x00000008[r10], r10
	ld.w 0x00000030[r10], r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 872
	add r12, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 875
	ld.hu 0x0000000C[r11], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 872
	add 0x0000000C, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 866
	mulhi 0x0000001C, r7, r10
	mov #_Dcm_ProtocolCtrl, r13
	add r10, r13
	ld.bu 0x00000002[r13], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 867
	mov r10, r13
	shl 0x00000006, r13
	mov #_Dcm_MsgCtrl, r14
	add r13, r14
	ld.w 0x0000000C[r14], r13
	ld.bu 0x00000003[r13], r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 875
	cmp 0x00000003, r13
	ld.w 0x00000010[r14], r14
	mov r9, r23
	mov r8, r24
	mov r7, r25
	mov r6, r26
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	cmp r2, r14
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_2:	; bb72
	shl 0x00000006, r10
	mov #_Dcm_MsgCtrl, r2
	add r10, r2
	ld.w 0x00000010[r2], r2
	addi 0x00000004, r21, r6
	cmp r2, r6
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb72
	cmp 0x00000003, r13
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; bb72.if_break_bb_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 882
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
.BB.LABEL.7_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 885
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_21
.BB.LABEL.7_7:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 887
	cmp 0x00000002, r22
	bl9 .BB.LABEL.7_23
.BB.LABEL.7_8:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 889
	mul 0x00000014, r5, r0
	add r5, r12
	ld.w 0x00000010[r12], r27
	cmp 0x00000000, r27
	bz9 .BB.LABEL.7_22
.BB.LABEL.7_9:	; if_then_bb116.bb233_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000000, r28
	mov r28, r29
	br9 .BB.LABEL.7_20
.BB.LABEL.7_10:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 894
	ld.w 0x00000000[r20], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_18
.BB.LABEL.7_11:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov r22, r5
	shr 0x00000003, r5
	cmp r5, r21
	bl9 .BB.LABEL.7_18
.BB.LABEL.7_12:	; if_then_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 897
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_13:	; if_then_bb149.bb177_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov 0x00000008, r5
	br9 .BB.LABEL.7_17
.BB.LABEL.7_14:	; bb155
	cmp 0x00000002, r21
	bnz9 .BB.LABEL.7_16
.BB.LABEL.7_15:	; bb155.bb177_crit_edge
	movea 0x00000010, r0, r5
	br9 .BB.LABEL.7_17
.BB.LABEL.7_16:	; bb161
	cmp 0x00000003, r21
	movea 0x00000020, r0, r5
	movea 0x00000018, r0, r11
	cmov 0x00000002, r11, r5, r5
.BB.LABEL.7_17:	; bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 902
	andi 0x0000FFFF, r29, r11
	sub r11, r5
	mov 0x00000001, r11
	shl r5, r11
	ld.w 0x00000000[r24], r5
	tst r11, r5
	bz9 .BB.LABEL.7_19
.BB.LABEL.7_18:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	st.h r28, 0x00000020[r24]
	st.w r27, 0x00000014[r24]
	mov r26, r6
	mov r24, r7
	mov r25, r8
	mov r23, r9
	jarl _Dcm_Uds0x2FServiceDidCallAPI.1, r31
.BB.LABEL.7_19:	; if_break_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 915
	ld.w 0x00000004[r27], r5
	ld.h 0x00000034[r5], r5
	add r5, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 916
	add 0x00000001, r29
	add 0x00000008, r27
.BB.LABEL.7_20:	; bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 892
	andi 0x0000FFFF, r29, r5
	cmp r22, r5
	bl9 .BB.LABEL.7_10
.BB.LABEL.7_21:	; if_break_bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 941
	zxb r10
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.7_22:	; if_else_bb242
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000022, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 922
	st.b r5, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 923
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.7_23:	; if_else_bb245
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 926
	ld.hu 0x00000000[r11], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_25
.BB.LABEL.7_24:	; if_then_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 928
	mul 0x00000014, r5, r0
	add r5, r12
	ld.w 0x00000010[r12], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 929
	st.h r0, 0x00000020[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 930
	st.w r2, 0x00000014[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 931
	mov r26, r6
	mov r24, r7
	mov r25, r8
	mov r23, r9
	jarl _Dcm_Uds0x2FServiceDidCallAPI.1, r31
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.7_25:	; if_else_bb268
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 936
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 937
	dispose 0x00000000, 0x000007FF, [r31]
_Dcm_UDS0x2F:
	.stack _Dcm_UDS0x2F = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 958
	prepare 0x000007FD, 0x0000002C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 965
	st.h r0, 0x0000002A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 971
	st.h r0, 0x00000026[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 986
	mulhi 0x0000001C, r21, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 980
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 981
	ld.w 0x00000038[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 980
	ld.w 0x00000030[r2], r25
	movea 0x0000002A, r3, r8
	movea 0x00000028, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 988
	mov r21, r6
	mov r22, r9
	jarl _Dcm_Uds0x2FServiceConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 990
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 993
	mov r23, r26
	shl 0x00000006, r26
	mov #_Dcm_MsgCtrl, r2
	add r26, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 995
	ld.bu 0x00000002[r2], r5
	ld.b 0x00000001[r2], r26
	shl 0x00000008, r26
	or r5, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 996
	ld.hu 0x00000028[r3], r5
	mul 0x00000014, r5, r0
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 998
	ld.hu 0x00000004[r25], r25
	shl 0x00000004, r25
	add r25, r24
	ld.w 0x00000004[r24], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 999
	ld.w 0x00000000[r25], r24
	cmp 0x00000002, r24
	ld.bu 0x00000003[r2], r24
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	ld.bu 0x00000004[r25], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb102
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1003
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.8_4:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1007
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_5:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1009
	mov r23, r27
	shl 0x00000006, r27
	mov #_Dcm_MsgCtrl, r28
	add r27, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1010
	ld.bu 0x00000007[r28], r27
	mulhi 0x00000014, r27, r27
	mov #_Dcm_ChannelCtrl, r28
	add r27, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1011
	ld.bu 0x00000000[r28], r27
	mulh 0x0000000C, r27
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r28
	ld.w LOWW(#_DcmPbCfgPtr)[r28], r28
	ld.w 0x00000000[r28], r28
	ld.w 0x00000004[r28], r28
	add r27, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1012
	ld.w 0x00000008[r28], r27
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1017
	andi 0x000000FF, r2, r6
	ld.hu 0x0000002A[r3], r7
	add r6, r7
	mov r23, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r8
	add r6, r8
	ld.w 0x0000000C[r8], r6
	add r6, r7
	ld.bu 0x00000004[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1016
	shl 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1017
	or r6, r5
	add 0x00000001, r2
.BB.LABEL.8_7:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1014
	andi 0x000000FF, r2, r6
	ld.bu 0x00000004[r25], r7
	cmp r7, r6
	bl9 .BB.LABEL.8_6
.BB.LABEL.8_8:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1019
	st.w r5, 0x00000000[r3]
	movea 0x0000002A, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1020
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000004[r3]
	movea 0x00000028, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1021
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1022
	st.w r25, 0x00000008[r3]
	movea 0x00000026, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1023
	st.w r2, 0x0000000C[r3]
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1024
	mov r20, r6
	mov r21, r7
	mov r22, r9
	jarl _Dcm_UDS0x2FSubDeal.1, r31
	mov #_Dcm_Channel, r2
	add r2, r27
.BB.LABEL.8_9:	; if_break_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1064
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_10:	; bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	ld.hu 0x00000026[r3], r2
	add 0x00000004, r2
	ld.w 0x00000004[r28], r5
	cmp r5, r2
	bnh9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_then_bb198
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1067
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.8_12:	; if_break_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1071
	cmp 0x00000000, r20
	bz9 .BB.LABEL.8_16
.BB.LABEL.8_13:	; if_break_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	addi 0xFFFFFFFF, r20, r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.8_18
.BB.LABEL.8_14:	; if_break_bb200
	cmp 0x00000009, r21
	bnz9 .BB.LABEL.8_17
.BB.LABEL.8_15:	; switch_clause_bb237
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1086
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r22
	add r23, r22
	mov 0x00000001, r2
	st.b r2, 0x0000003D[r22]
	mov r20, r10
	dispose 0x0000002C, 0x000007FD, [r31]
.BB.LABEL.8_16:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x0000006F, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1074
	st.b r22, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1075
	mov r26, r22
	shr 0x00000008, r22
	st.b r22, 0x00000001[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1076
	st.b r26, 0x00000002[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1077
	st.b r24, 0x00000003[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1078
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r22
	add r23, r22
	ld.hu 0x00000026[r3], r23
	add 0x00000004, r23
	st.w r23, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1079
	ld.hu 0x00000026[r3], r23
	add 0x00000004, r23
	st.w r23, 0x00000018[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1080
	st.w r27, 0x00000014[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1081
	mov r21, r6
	jarl _DsdInternal_ProcessingDone, r31
	mov r20, r10
	dispose 0x0000002C, 0x000007FD, [r31]
.BB.LABEL.8_17:	; switch_clause_bb242
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 0
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1090
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1091
	dispose 0x0000002C, 0x000007FD, [r31]
.BB.LABEL.8_18:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2F.c", 1096
	mov r20, r10
	dispose 0x0000002C, 0x000007FD, [r31]
