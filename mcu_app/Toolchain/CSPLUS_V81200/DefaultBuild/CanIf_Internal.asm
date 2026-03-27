#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\CAN\CanIf\CanIf_Internal.c -oDefaultBuild\CanIf_Internal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_857b90c391a54bd58563c5267db34be7fjmabl5h.lhn
#@	compiled at Fri Mar 27 09:50:14 2026

	.file "..\..\Bsw\Communication\CAN\CanIf\CanIf_Internal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _CanIf_ConfigStd
	.extern _CanIf_CtrlCfgData
	.extern _Can_DriverApi
	.extern _CanIf_TxBuffer
	.public _CanIf_InitTxBuffer
	.public _CanIf_TxBusyHandle
	.extern _ILib_memcpy
	.public _CanIf_FreeControllerTxBuffer
	.public _CanIf_TransmitBufferedPdu
	.extern _SchM_Enter_CanIf_ExclusiveArea_Channel
	.extern _SchM_Exit_CanIf_ExclusiveArea_Channel
	.public _CanIf_GetBaseCanIdHandle
	.public _CanIf_FreeDynamicTxPduCanIds
	.public _CanIf_InitDynamicTxPduCanId

	.section .text, text
_CanIf_InitTxBuffer:
	.stack _CanIf_InitTxBuffer = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 301
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x0000001C[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 307
	andi 0x0000FFFF, r5, r7
	shl 0x00000002, r7
	mov #_CanIf_TxBuffer, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	andi 0x000000FF, r6, r8
	mul 0x0000000C, r8, r0
	add r8, r7
	st.b r0, 0x00000000[r7]
	add 0x00000001, r6
.BB.LABEL.1_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 305
	andi 0x000000FF, r6, r7
	ld.bu 0x00000000[r2], r8
	cmp r8, r7
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 309
	add 0x00000001, r5
	add 0x00000001, r2
.BB.LABEL.1_4:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 302
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb32.bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.1_2
.BB.LABEL.1_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 312
	jmp [r31]
_CanIf_TxBusyHandle:
	.stack _CanIf_TxBusyHandle = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 397
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 403
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r5
	ld.hu 0x00000008[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 404
	shl 0x00000005, r7
	add r7, r5
	ld.hu 0x0000000A[r5], r5
	mov 0x00000001, r10
	cmp 0x00000000, r5
	mov r6, r20
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 408
	ld.w 0x0000001C[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 409
	shl 0x00000002, r5
	mov #_CanIf_TxBuffer, r6
	add r5, r6
	ld.w 0x00000000[r6], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 410
	ld.bu 0x00000000[r2], r22
	mov 0x00000000, r23
	movea 0x000000FF, r0, r24
	br9 .BB.LABEL.2_8
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 412
	andi 0x000000FF, r23, r2
	mul 0x0000000C, r2, r0
	add r21, r2
	ld.hu 0x00000002[r2], r2
	ld.hu 0x00000008[r20], r5
	cmp r5, r2
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 414
	andi 0x000000FF, r23, r25
	mul 0x0000000C, r25, r0
	add r21, r25
	ld.w 0x00000004[r20], r2
	st.w r2, 0x00000004[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 423
	ld.b 0x0000000A[r20], r2
	st.b r2, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 424
	ld.w 0x00000008[r25], r6
	ld.bu 0x0000000A[r20], r8
	ld.w 0x00000000[r20], r7
	jarl _ILib_memcpy, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 426
	st.b r2, 0x00000000[r25]
	mov 0x00000000, r10
.BB.LABEL.2_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 429
	andi 0x000000FF, r24, r2
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 0
	andi 0x000000FF, r23, r2
	mul 0x0000000C, r2, r0
	add r21, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb113
	mov r23, r24
.BB.LABEL.2_7:	; if_break_bb115
	add 0x00000001, r23
.BB.LABEL.2_8:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 410
	andi 0x000000FF, r23, r2
	cmp r22, r2
	bnc9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 0
	andi 0x000000FF, r10, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_10:	; bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 434
	andi 0x000000FF, r24, r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_11:	; bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 0
	andi 0x000000FF, r10, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_12:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 436
	zxb r24
	mul 0x0000000C, r24, r0
	add r24, r21
	ld.w 0x00000004[r20], r2
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 437
	ld.h 0x00000008[r20], r2
	st.h r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 446
	ld.b 0x0000000A[r20], r2
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 447
	ld.w 0x00000008[r21], r6
	ld.bu 0x0000000A[r20], r8
	ld.w 0x00000000[r20], r7
	jarl _ILib_memcpy, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 449
	st.b r2, 0x00000000[r21]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 450
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.2_13:	; if_break_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 458
	zxb r10
	dispose 0x00000000, 0x00000679, [r31]
_CanIf_FreeControllerTxBuffer:
	.stack _CanIf_FreeControllerTxBuffer = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 473
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 480
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x0000001C[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.3_8
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 485
	andi 0x0000FFFF, r5, r7
	shl 0x00000002, r7
	mov #_CanIf_TxBuffer, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	mov 0x00000000, r8
	br9 .BB.LABEL.3_6
.BB.LABEL.3_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 489
	ld.bu 0x00000000[r7], r9
	cmp 0x00000000, r9
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 491
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r9
	ld.w LOWW(#_CanIf_ConfigStd)[r9], r9
	ld.w 0x00000018[r9], r10
	ld.hu 0x00000002[r7], r11
	shl 0x00000005, r11
	add r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 492
	ld.hu 0x00000006[r10], r10
	shl 0x00000003, r10
	ld.w 0x00000010[r9], r9
	add r10, r9
	ld.bu 0x00000000[r9], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 494
	cmp r9, r6
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 497
	st.b r0, 0x00000000[r7]
.BB.LABEL.3_5:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 500
	add 0x00000001, r8
	add 0x0000000C, r7
.BB.LABEL.3_6:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 486
	andi 0x000000FF, r8, r9
	ld.bu 0x00000000[r2], r10
	cmp r10, r9
	bl9 .BB.LABEL.3_2
.BB.LABEL.3_7:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 502
	add 0x00000001, r5
	add 0x00000001, r2
.BB.LABEL.3_8:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 483
	andi 0x0000FFFF, r5, r0
	bz9 .BB.LABEL.3_1
.BB.LABEL.3_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 507
	jmp [r31]
_CanIf_TransmitBufferedPdu:
	.stack _CanIf_TransmitBufferedPdu = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 523
	prepare 0x00000479, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 526
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 527
	mov r6, r5
	shl 0x00000005, r5
	add r20, r5
	ld.hu 0x0000000A[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 528
	ld.w 0x0000001C[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 529
	ld.bu 0x00000000[r2], r21
	cmp 0x00000000, r21
	mov r6, r22
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 0
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.4_13
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 534
	shl 0x00000002, r5
	mov #_CanIf_TxBuffer, r2
	add r5, r2
	ld.w 0x00000000[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 535
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	mov 0x00000000, r2
	movea 0x000000FF, r0, r24
	mov 0xFFFFFFFF, r5
	br9 .BB.LABEL.4_8
.BB.LABEL.4_3:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 538
	andi 0x000000FF, r2, r6
	mul 0x0000000C, r6, r0
	add r23, r6
	ld.bu 0x00000000[r6], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_4:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 540
	andi 0x000000FF, r2, r6
	mul 0x0000000C, r6, r0
	add r23, r6
	ld.w 0x00000004[r6], r6
	mov 0x1FFFFFFF, r7
	and r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 541
	andi 0x000000FF, r24, r7
	addi 0xFFFFFF01, r7, r0
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 548
	cmp r6, r5
	bnh9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 0
	mov r6, r5
	mov r2, r24
.BB.LABEL.4_7:	; if_break_bb86
	add 0x00000001, r2
.BB.LABEL.4_8:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 536
	andi 0x000000FF, r2, r6
	cmp r21, r6
	bl9 .BB.LABEL.4_3
.BB.LABEL.4_9:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 556
	andi 0x000000FF, r24, r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.4_12
.BB.LABEL.4_10:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 563
	andi 0x000000FF, r24, r2
	mul 0x0000000C, r2, r0
	add r23, r2
	ld.b 0x00000001[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 559
	shl 0x00000005, r22
	add r22, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 560
	ld.hu 0x00000006[r20], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 561
	shl 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 560
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r7
	ld.w LOWW(#_CanIf_ConfigStd)[r7], r7
	ld.w 0x00000010[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 561
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 570
	ld.hu 0x00000002[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 562
	ld.bu 0x00000000[r7], r7
	shl 0x00000003, r7
	mov #_CanIf_CtrlCfgData, r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 570
	ld.bu 0x00000001[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 563
	st.b r5, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 564
	ld.w 0x00000008[r2], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 565
	ld.h 0x00000002[r2], r5
	st.h r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 566
	ld.w 0x00000004[r2], r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 570
	shl 0x00000003, r7
	mov #_Can_DriverApi, r2
	add r7, r2
	ld.w 0x00000004[r2], r2
	mov r3, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 572
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_11:	; if_then_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 574
	zxb r24
	mul 0x0000000C, r24, r0
	add r24, r23
	st.b r0, 0x00000000[r23]
.BB.LABEL.4_12:	; if_break_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 577
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
.BB.LABEL.4_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 582
	dispose 0x0000000C, 0x00000479, [r31]
_CanIf_GetBaseCanIdHandle:
	.stack _CanIf_GetBaseCanIdHandle = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 675
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 682
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 684
	mov r6, r5
	shl 0x00000005, r5
	add r2, r5
	ld.w 0x0000001C[r5], r5
	shl 0x00000005, r6
	add r6, r2
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 686
	ld.hu 0x0000000C[r2], r2
	shl 0x00000002, r2
	mov #_CanIf_TxPduDynamicCanIds.1, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 699
	st.w r2, 0x00000000[r7]
	jmp [r31]
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 704
	ld.w 0x00000010[r2], r2
	st.w r2, 0x00000000[r7]
	jmp [r31]
_CanIf_FreeDynamicTxPduCanIds:
	.stack _CanIf_FreeDynamicTxPduCanIds = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 724
	mov 0x00000000, r2
	br9 .BB.LABEL.6_5
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 733
	andi 0x0000FFFF, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 734
	mov r7, r8
	shl 0x00000005, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 733
	ld.w 0x00000018[r5], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 734
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 735
	ld.hu 0x00000006[r8], r8
	shl 0x00000003, r8
	ld.w 0x00000010[r5], r5
	add r8, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 736
	cmp r5, r6
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 738
	mov r7, r5
	shl 0x00000005, r5
	add r9, r5
	ld.w 0x0000001C[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 741
	shl 0x00000005, r7
	add r7, r9
	ld.hu 0x0000000C[r9], r5
	shl 0x00000002, r5
	mov #_CanIf_TxPduDynamicCanIds.1, r7
	add r5, r7
	ld.w 0x00000010[r9], r5
	st.w r5, 0x00000000[r7]
.BB.LABEL.6_4:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 0
	add 0x00000001, r2
.BB.LABEL.6_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 731
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r5
	ld.w LOWW(#_CanIf_ConfigStd)[r5], r5
	ld.hu 0x00000004[r5], r7
	andi 0x0000FFFF, r2, r8
	cmp r7, r8
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 748
	jmp [r31]
_CanIf_InitDynamicTxPduCanId:
	.stack _CanIf_InitDynamicTxPduCanId = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 768
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 771
	ld.w 0x0000001C[r2], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 773
	ld.hu 0x0000000C[r2], r6
	shl 0x00000002, r6
	mov #_CanIf_TxPduDynamicCanIds.1, r7
	add r6, r7
	ld.w 0x00000010[r2], r6
	st.w r6, 0x00000000[r7]
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 775
	add 0x00000001, r5
	movea 0x00000020, r2, r2
.BB.LABEL.7_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 769
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r6
	ld.w LOWW(#_CanIf_ConfigStd)[r6], r6
	ld.hu 0x00000004[r6], r6
	andi 0x0000FFFF, r5, r7
	cmp r6, r7
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf_Internal.c", 778
	jmp [r31]
	.section .bss, bss
	.align 4
_CanIf_TxPduDynamicCanIds.1:
	.ds (144)
