#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x22.c -oDefaultBuild\Dcm_UDS0x22.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_3ec0c1a7ef67424ca6b3d55d4f55e3bcmlj1d3ga.pox
#@	compiled at Fri Mar 27 09:50:59 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x22.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dcm_MkCtrl
	.extern _DsdInternal_DidSecurityCheck
	.public _Dcm_UDS0x22
	.extern _DsdInternal_ProcessingDone

	.section .text, text
_DspInternalUDS0x22_DidNumbercheck.1:
	.stack _DspInternalUDS0x22_DidNumbercheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 296
	andi 0x00000001, r7, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 300
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	cmp 0x00000002, r7
	bnh9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 299
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 305
	ld.hu 0x0000000A[r2], r2
	cmp r6, r2
	bnc9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_else_bb.if_break_bb45_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb43
	mov 0x00000001, r10
.BB.LABEL.1_6:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 314
	jmp [r31]
_DspInternalUDS0x22_DidCheck.1:
	.stack _DspInternalUDS0x22_DidCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 395
	ld.w 0x00000010[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 405
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 418
	ld.hu 0x0000002C[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 406
	ld.w 0x00000030[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 416
	st.b r0, 0x00000000[r2]
	mov 0x00000001, r10
	mov 0x00000000, r2
	mov r2, r8
	br9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 421
	andi 0x0000FFFF, r8, r9
	mul 0x00000014, r9, r0
	add r5, r9
	ld.hu 0x00000000[r9], r9
	ld.hu 0x00000004[r7], r11
	cmp r9, r11
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x0000FFFF, r8, r9
	mul 0x00000014, r9, r0
	add r5, r9
	ld.bu 0x00000002[r9], r9
	cmp 0x00000001, r9
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 444
	ld.w 0x0000000C[r7], r2
	st.h r8, 0x00000000[r2]
	mov 0x00000000, r10
	mov 0x00000001, r2
.BB.LABEL.2_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	add 0x00000001, r8
.BB.LABEL.2_5:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 418
	andi 0x0000FFFF, r8, r9
	cmp r6, r9
	bnc9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.2_1
.BB.LABEL.2_7:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 502
	zxb r10
	jmp [r31]
_DspInternalUDS0x22_DidInfoCheck.1:
	.stack _DspInternalUDS0x22_DidInfoCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 520
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 523
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000038[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 524
	shl 0x00000004, r6
	add r6, r2
	ld.w 0x00000008[r2], r2
	cmp 0x00000000, r2
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 529
	jmp [r31]
_DspInternalUDS0x22_DidSessionCheck.1:
	.stack _DspInternalUDS0x22_DidSessionCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 548
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 557
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000038[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 558
	shl 0x00000004, r6
	add r6, r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 559
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 562
	st.b r2, 0x00000000[r8]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 563
	jmp [r31]
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 568
	ld.bu 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_3:	; if_else_bb.bb54_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	mov 0x00000000, r6
	mov r6, r8
	br9 .BB.LABEL.4_7
.BB.LABEL.4_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 572
	ld.w 0x0000000C[r2], r9
	andi 0x000000FF, r6, r10
	add r10, r9
	ld.bu 0x00000000[r9], r9
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r10
	ld.bu LOWW(#_Dcm_MkCtrl)[r10], r10
	cmp r9, r10
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 575
	ld.b 0x00000000[r7], r8
	add 0x00000001, r8
	st.b r8, 0x00000000[r7]
	mov 0x00000001, r8
.BB.LABEL.4_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	add 0x00000001, r6
.BB.LABEL.4_7:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 570
	andi 0x000000FF, r6, r9
	cmp r5, r9
	bnc9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x000000FF, r8, r0
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_9:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 578
	andi 0x000000FF, r8, r0
	setf 0x00000002, r10
	jmp [r31]
.BB.LABEL.4_10:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 585
	ld.b 0x00000000[r7], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r7]
	mov 0x00000000, r10
	jmp [r31]
_Dsp_UDS0x22_DidEcuSignalCheck.1:
	.stack _Dsp_UDS0x22_DidEcuSignalCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 607
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 622
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000030[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 626
	ld.w 0x0000002C[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 627
	ld.hu 0x00000028[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 626
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 627
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 628
	ld.hu 0x0000000C[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 641
	add 0x00000001, r5
.BB.LABEL.5_2:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 628
	andi 0x0000FFFF, r5, r6
	cmp r2, r6
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 683
	jmp [r31]
_DspInternalUDS0x22_DidConditionCheck.1:
	.stack _DspInternalUDS0x22_DidConditionCheck.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 701
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 710
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000030[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 712
	mov r7, r2
	mul 0x00000014, r2, r0
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 713
	ld.hu 0x0000000C[r2], r21
	mov 0x00000000, r10
	mov r8, r22
	mov r7, r23
	mov r6, r24
	mov r10, r25
	br9 .BB.LABEL.6_8
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 715
	mov r23, r2
	mul 0x00000014, r2, r0
	add r20, r2
	ld.w 0x00000010[r2], r2
	andi 0x0000FFFF, r25, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 717
	ld.w 0x00000000[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 718
	cmp 0x00000000, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 716
	ld.bu 0x00000004[r2], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 718
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 721
	mov r24, r6
	mov r22, r7
	jarl [r26], r31
.BB.LABEL.6_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 723
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb72
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 725
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.6_7:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	add 0x00000001, r25
.BB.LABEL.6_8:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 713
	andi 0x0000FFFF, r25, r2
	cmp r21, r2
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_9:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 730
	zxb r10
	dispose 0x00000000, 0x000007F9, [r31]
_Dcm_UdsAssembleResponse.1:
	.stack _Dcm_UdsAssembleResponse.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 790
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 803
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000030[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 804
	mul 0x00000014, r7, r0
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 808
	ld.hu 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 804
	ld.w 0x00000010[r2], r21
	mov 0x00000000, r10
	ld.w 0x00000024[r3], r22
	mov r9, r23
	mov r8, r24
	mov r6, r25
	mov r10, r26
	mov r10, r27
	br9 .BB.LABEL.7_9
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 810
	andi 0x0000FFFF, r26, r27
	shl 0x00000003, r27
	add r21, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 835
	ld.hu 0x00000000[r27], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 810
	ld.w 0x00000004[r27], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 831
	ld.hu 0x00000034[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 837
	mov r2, r27
	add r6, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 838
	ld.w 0x00000020[r5], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	add r2, r6
	movea 0x00000801, r0, r7
	cmp r7, r6
	bl9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_then_bb74
	movea 0x00000022, r0, r2
.BB.LABEL.7_4:	; if_then_bb74
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	br9 .BB.LABEL.7_8
.BB.LABEL.7_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 846
	ld.w 0x00000000[r24], r6
	mov r27, r7
	add r6, r7
	ld.w 0x00000008[r23], r8
	sub r8, r7
	ld.w 0x00000004[r23], r8
	cmp r8, r7
	bnh9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	movea 0x00000014, r0, r2
	br9 .BB.LABEL.7_4
.BB.LABEL.7_7:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 859
	ld.w 0x00000020[r5], r5
	add r6, r2
	mov #_Dcm_Channel, r7
	add r2, r7
	mov r25, r6
	mov r22, r8
	jarl [r5], r31
.BB.LABEL.7_8:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	add 0x00000001, r26
.BB.LABEL.7_9:	; bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 808
	andi 0x0000FFFF, r26, r2
	cmp r20, r2
	bnc9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.7_1
.BB.LABEL.7_11:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 896
	ld.w 0x00000000[r24], r2
	add r27, r2
	st.w r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 898
	zxb r10
	dispose 0x00000000, 0x000007F9, [r31]
_DspInternalUDS0x22_NonObdDidNOrangeDeal.1:
	.stack _DspInternalUDS0x22_NonObdDidNOrangeDeal.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1311
	prepare 0x00000679, 0x00000004
	mov r6, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1318
	mulhi 0x0000001C, r7, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1319
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1320
	ld.bu 0x00000000[r5], r24
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1324
	mov r21, r6
	jarl _Dsp_UDS0x22_DidEcuSignalCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1320
	mulh 0x0000000C, r24
	add r24, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1331
	ld.w 0x0000002C[r21], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1334
	ld.hu 0x00000028[r21], r7
	mov r20, r6
	mov r22, r8
	jarl _DspInternalUDS0x22_DidConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1335
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1337
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r20
	add r23, r20
	mov 0x00000001, r21
	st.b r21, 0x0000003D[r20]
	dispose 0x00000004, 0x00000679, [r31]
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1339
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1354
	ld.w 0x00000000[r21], r8
	ld.hu 0x00000028[r21], r7
	st.w r22, 0x00000000[r3]
	mov r20, r6
	mov r25, r9
	jarl _Dcm_UdsAssembleResponse.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1360
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1362
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r2
	add r23, r2
	mov 0x00000001, r5
	st.b r5, 0x0000003D[r2]
.BB.LABEL.8_6:	; if_break_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1372
	dispose 0x00000004, 0x00000679, [r31]
_DspInternalUDS0x22_NonObdDidDeal.1:
	.stack _DspInternalUDS0x22_NonObdDidDeal.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1388
	prepare 0x00000679, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1402
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1403
	ld.w 0x00000040[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1402
	ld.w 0x00000030[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1406
	mov r22, r7
	jarl _DspInternalUDS0x22_DidCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1407
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1409
	ld.w 0x0000001C[r22], r20
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	ld.b 0x00000000[r20], r21
	add 0x00000001, r21
	st.b r21, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1509
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.9_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1414
	ld.w 0x00000010[r22], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	ld.w 0x00000008[r22], r25
	ld.bu 0x00000000[r25], r25
	mulhi 0x0000001C, r25, r25
	add r25, r24
	ld.bu 0x0000001B[r24], r25
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; bb49
	ld.w 0x0000000C[r22], r2
	ld.hu 0x00000000[r2], r2
	mul 0x00000014, r2, r0
	add r2, r25
	ld.hu 0x00000004[r25], r25
.BB.LABEL.9_6:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1418
	mov r25, r6
	jarl _DspInternalUDS0x22_DidInfoCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1419
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1421
	ld.w 0x00000014[r22], r20
	br9 .BB.LABEL.9_2
.BB.LABEL.9_8:	; if_else_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1428
	ld.w 0x00000018[r22], r7
	mov r25, r6
	mov r23, r8
	jarl _DspInternalUDS0x22_DidSessionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1429
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_else_bb79.if_break_bb145_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.9_12
.BB.LABEL.9_10:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1447
	mov r25, r6
	mov r23, r7
	jarl _DsdInternal_DidSecurityCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1448
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1452
	ld.w 0x00000000[r22], r2
	ld.w 0x00000000[r2], r2
	mov #_Dcm_Channel, r5
	add r5, r2
	ld.hu 0x00000004[r22], r6
	shr 0x00000008, r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1454
	ld.w 0x00000000[r22], r2
	ld.w 0x00000000[r2], r6
	add 0x00000001, r6
	st.w r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1455
	ld.w 0x00000000[r22], r2
	ld.w 0x00000000[r2], r2
	add r2, r5
	ld.b 0x00000004[r22], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1456
	ld.w 0x00000000[r22], r2
	ld.w 0x00000000[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1461
	ld.w 0x0000000C[r22], r2
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000028[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1462
	mov r20, r6
	mov r21, r7
	mov r22, r8
	mov r23, r9
	jarl _DspInternalUDS0x22_NonObdDidNOrangeDeal.1, r31
.BB.LABEL.9_12:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1509
	dispose 0x00000000, 0x00000679, [r31]
_Dcm_UDS0x22:
	.stack _Dcm_UDS0x22 = 104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1577
	prepare 0x000007FD, 0x00000040
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1592
	st.b r0, 0x0000003B[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1593
	st.b r0, 0x0000003A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1594
	st.b r0, 0x00000039[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1613
	mulhi 0x0000001C, r21, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1615
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1618
	ld.w 0x00000010[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1616
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1617
	ld.bu 0x00000000[r5], r2
	mulh 0x0000000C, r2
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000008[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1620
	mov r7, r25
	shr 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1622
	andi 0x0000FFFF, r25, r6
	jarl _DspInternalUDS0x22_DidNumbercheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1623
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	movea 0x00000013, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1626
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1627
	dispose 0x00000040, 0x000007FD, [r31]
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1643
	mov #_Dcm_Channel, r26
	add r24, r26
	movea 0x00000062, r0, r2
	st.b r2, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1644
	addi 0x00000001, r24, r2
	st.w r2, 0x0000003C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1648
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_19
.BB.LABEL.10_3:	; if_else_bb.bb182_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	mov 0x00000001, r27
	mov 0x00000000, r28
	br9 .BB.LABEL.10_10
.BB.LABEL.10_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1661
	mov r23, r27
	shl 0x00000006, r27
	mov #_Dcm_MsgCtrl, r5
	add r27, r5
	add 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1663
	addi 0x00000002, r2, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1675
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x000000FF, r10, r6
	cmp 0x0000000A, r6
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_then_bb145
	ld.w 0x00000000[r5], r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	ld.b 0x00000000[r5], r5
	shl 0x00000008, r5
	or r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1678
	st.h r5, 0x00000004[r3]
	movea 0x00000039, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1679
	st.w r2, 0x00000014[r3]
	movea 0x0000003B, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1680
	st.w r2, 0x00000018[r3]
	movea 0x0000003A, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1681
	st.w r2, 0x0000001C[r3]
	movea 0x0000003C, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1682
	st.w r2, 0x00000000[r3]
	movea 0x00000038, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1683
	st.w r2, 0x00000008[r3]
	movea 0x00000034, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1684
	st.w r2, 0x0000000C[r3]
	movea 0x00000037, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1685
	st.w r2, 0x00000010[r3]
	movea 0x00000033, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1686
	st.w r2, 0x0000002C[r3]
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1687
	mov r20, r6
	mov r21, r7
	mov r22, r9
	jarl _DspInternalUDS0x22_NonObdDidDeal.1, r31
.BB.LABEL.10_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1690
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x000000FF, r10, r2
	cmp 0x0000000A, r2
	bz9 .BB.LABEL.10_13
.BB.LABEL.10_9:	; if_break_bb179
	add 0x00000001, r28
.BB.LABEL.10_10:	; bb182
	mov r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1654
	andi 0x0000FFFF, r28, r5
	andi 0x0000FFFF, r25, r6
	cmp r6, r5
	bnc9 .BB.LABEL.10_13
.BB.LABEL.10_11:	; bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_12:	; bb189
	andi 0x000000FF, r10, r5
	cmp 0x0000000A, r5
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_13:	; bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1703
	andi 0x0000FFFF, r25, r2
	ld.bu 0x0000003A[r3], r5
	cmp r2, r5
	bz9 .BB.LABEL.10_17
.BB.LABEL.10_14:	; bb222
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x0000FFFF, r25, r2
	ld.bu 0x00000039[r3], r5
	cmp r2, r5
	bz9 .BB.LABEL.10_17
.BB.LABEL.10_15:	; bb222
	andi 0x0000FFFF, r25, r0
	bz9 .BB.LABEL.10_17
.BB.LABEL.10_16:	; bb250
	ld.bu 0x0000003B[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_19
.BB.LABEL.10_17:	; bb262
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.10_19
.BB.LABEL.10_18:	; if_then_bb275
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1709
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.10_19:	; if_break_bb278
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1714
	movhi HIGHW1(#_Dcm_0x22DidReadNvmFlag.1), r0, r2
	ld.bu LOWW(#_Dcm_0x22DidReadNvmFlag.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_22
.BB.LABEL.10_20:	; bb283
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.10_23
.BB.LABEL.10_21:	; bb288
	movhi HIGHW1(#_Dcm_0x22DidReadNvmFlag.1), r0, r2
	ld.bu LOWW(#_Dcm_0x22DidReadNvmFlag.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_23
.BB.LABEL.10_22:	; if_then_bb308
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1720
	movhi HIGHW1(#_Dcm_0x22DidReadNvmFlag.1), r0, r2
	mov 0xFFFFFFFF, r5
	st.b r5, LOWW(#_Dcm_0x22DidReadNvmFlag.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1716
	andi 0x000000FF, r10, r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1718
	cmov 0x0000000A, 0x0000000A, r10, r10
.BB.LABEL.10_23:	; if_break_bb316
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1723
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.10_25
.BB.LABEL.10_24:	; if_then_bb322
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1752
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r2
	add r23, r2
	ld.w 0x0000003C[r3], r5
	sub r24, r5
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1753
	ld.w 0x0000003C[r3], r5
	sub r24, r5
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1754
	st.w r26, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1755
	mov r21, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.10_25:	; if_break_bb339
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 0
	andi 0x000000FF, r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x22.c", 1761
	dispose 0x00000040, 0x000007FD, [r31]
	.section .data, data
_Dcm_0x22DidReadNvmFlag.1:
	.db 0xFF
