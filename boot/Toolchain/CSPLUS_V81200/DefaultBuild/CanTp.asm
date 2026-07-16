#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\CanTp\CanTp.c -oDefaultBuild\CanTp.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_4a14783f84d44df8803668078a412789neqjpm1w.vwf
#@	compiled at Thu Jul 16 13:41:29 2026

	.file "..\..\Bsw\SystemServices\BootServices\CanTp\CanTp.c"

	$reg_mode 22
	.dbl_size 4

	.extern _CanTp_Config
	.extern _CanTp_Channel
	.extern _CanTp_TxConfirmationChannel
	.extern _CanTp_MainFunctionTicks
	.extern _CanTp_CfgPtr
	.extern _CanTp_SubState
	.extern _CanTp_State
	.extern _CanTp_AddressSize
	.extern _CanTp_PciSize
	.extern _CanTp_CanDlTable
	.extern _CanTp_ProcessFrame
	.extern _CanTp_StateFunctions
	.extern _CanTp_PduRConfirmationApis
	.public _CanTp_MainState, 1
	.public _CanTp_Init
	.public _CanTp_MainFunction
	.public _CanTp_Transmit
	.public _CanTp_TxConfirmation
	.public _CanTp_RxIndication

	.section .text, text
_SchM_Enter_CanTp_EXCLUSIVE_AREA.1:
	.stack _SchM_Enter_CanTp_EXCLUSIVE_AREA.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Cfg_SchM.h", 22
	jmp [r31]
_SchM_Exit_CanTp_EXCLUSIVE_AREA.1:
	.stack _SchM_Exit_CanTp_EXCLUSIVE_AREA.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Cfg_SchM.h", 27
	jmp [r31]
_CanTp_GetElapsedValue.1:
	.stack _CanTp_GetElapsedValue.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 287
	ld.h 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 291
	movhi HIGHW1(#_CanTp_MainFunctionTicks), r0, r8
	ld.h LOWW(#_CanTp_MainFunctionTicks)[r8], r8
	st.h r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 293
	sub r5, r8
	st.h r8, 0x00000000[r7]
	jmp [r31]
_CanTp_Prv_GetBit.1:
	.stack _CanTp_Prv_GetBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 305
	and r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 307
	cmp r7, r6
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 308
	jmp [r31]
_CanTp_IncrementCounter.1:
	.stack _CanTp_IncrementCounter.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 320
	movhi HIGHW1(#_CanTp_MainFunctionTicks), r0, r5
	ld.h LOWW(#_CanTp_MainFunctionTicks)[r5], r6
	add 0x00000001, r6
	st.h r6, LOWW(#_CanTp_MainFunctionTicks)[r5]
	jmp [r31]
_CanTp_Prv_ArrayInit.1:
	.stack _CanTp_Prv_ArrayInit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 332
	mov 0x00000000, r5
	br9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 338
	mov r6, r9
	add r5, r9
	st.b r8, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.6_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 336
	cmp r7, r5
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 340
	jmp [r31]
_CanTp_Prv_TxPciInit.1:
	.stack _CanTp_Prv_TxPciInit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 451
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 453
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 456
	mul 0x0000000C, r7, r0
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 459
	ld.bu 0x00000003[r5], r7
	mov #_CanTp_AddressSize, r9
	add r7, r9
	ld.bu 0x00000000[r9], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 461
	ld.hu 0x00000008[r8], r9
	mov r9, r10
	add r7, r10
	add 0x00000001, r10
	cmp 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 456
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 461
	bh9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 463
	st.b r0, 0x00000000[r6]
	jmp [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 466
	cmp 0x00000009, r5
	bl9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	add r7, r9
	add 0x00000002, r9
	cmp r5, r9
	bh9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb55
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 468
	st.b r5, 0x00000000[r6]
	jmp [r31]
.BB.LABEL.7_5:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 470
	cmp 0x00000009, r5
	bl9 .BB.LABEL.7_8
.BB.LABEL.7_6:	; bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	ld.hu 0x00000008[r8], r5
	movea 0x00001000, r0, r7
	cmp r7, r5
	bl9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_then_bb77
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 472
	st.b r5, 0x00000000[r6]
	jmp [r31]
.BB.LABEL.7_8:	; if_else_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 477
	st.b r5, 0x00000000[r6]
	jmp [r31]
_CanTp_Prv_GetFcActiveChannel.1:
	.stack _CanTp_Prv_GetFcActiveChannel.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 547
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 552
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.bu 0x00000004[r5], r7
	ld.bu 0x0000000C[r6], r8
	cmp r7, r8
	bnc9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 554
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 556
	mulh 0x0000000C, r8
	add r8, r5
	ld.bu 0x00000005[r5], r5
	mov #_CanTp_SubState, r7
	add r5, r7
	ld.bu 0x00000000[r7], r7
	cmp 0x00000003, r7
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 558
	st.b r5, 0x0000000B[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 559
	jmp [r31]
.BB.LABEL.8_3:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 566
	jmp [r31]
_CanTp_Prv_GetRxContext.1:
	.stack _CanTp_Prv_GetRxContext.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 575
	prepare 0x00000381, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 586
	ld.w 0x00000000[r7], r25
	cmp 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 584
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	ld.hu 0x0000000E[r6], r7
	mov r6, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 586
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.if_break_bb216_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000003, r10
	jr .BB.LABEL.9_12
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 593
	st.b r0, 0x00000003[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 594
	shl 0x00000003, r7
	add r7, r5
	ld.b 0x00000000[r5], r6
	st.b r6, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 595
	ld.b 0x00000001[r5], r6
	st.b r6, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 597
	ld.w 0x00000004[r5], r6
	add 0x00000004, r5
	cmp 0x00000000, r6
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 599
	ld.b 0x00000000[r25], r6
	st.b r6, 0x00000003[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 601
	ld.bu 0x00000003[r26], r8
	ld.w 0x00000000[r5], r5
	movea 0x00000002, r3, r7
	movea 0x00000003, r3, r6
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 600
	add 0x00000001, r25
.BB.LABEL.9_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 604
	ld.bu 0x00000000[r25], r25
	zxb r25
	shr 0x00000004, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 606
	cmp 0x00000004, r25
	bl9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_break_bb.if_break_bb216_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000001, r10
	jr .BB.LABEL.9_12
.BB.LABEL.9_6:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 608
	st.b r25, 0x00000004[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 610
	cmp 0x00000003, r25
	bnz9 .BB.LABEL.9_10
.BB.LABEL.9_7:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	movea 0x00000003, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 612
	ld.b 0x00000000[r25], r25
	st.b r25, 0x0000000C[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 614
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r25
	ld.w LOWW(#_CanTp_CfgPtr)[r25], r25
	ld.w 0x00000010[r25], r25
	ld.bu 0x00000002[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 615
	mulh 0x0000000C, r5
	add r5, r25
	ld.bu 0x00000000[r25], r6
	mov 0x00000004, r7
	jarl _CanTp_Prv_GetBit.1, r31
	st.b r10, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 616
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_8:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 618
	mov r26, r6
	jarl _CanTp_Prv_GetFcActiveChannel.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_9:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 620
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r25
	ld.w LOWW(#_CanTp_CfgPtr)[r25], r25
	ld.w 0x0000000C[r25], r25
	ld.bu 0x0000000C[r26], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 621
	mulh 0x0000000C, r5
	add r5, r25
	ld.h 0x0000000A[r25], r5
	st.h r5, 0x00000010[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 622
	ld.bu 0x00000003[r25], r5
	mov #_CanTp_AddressSize, r6
	add r5, r6
	ld.b 0x00000000[r6], r5
	st.b r5, 0x00000009[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 623
	ld.bu 0x00000001[r25], r6
	mov 0x00000008, r7
	jarl _CanTp_Prv_GetBit.1, r31
	st.b r10, 0x00000001[r26]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 624
	dispose 0x00000004, 0x00000381, [r31]
.BB.LABEL.9_10:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 631
	ld.bu 0x00000002[r3], r5
	st.b r5, 0x0000000C[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 632
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r6
	ld.w LOWW(#_CanTp_CfgPtr)[r6], r6
	ld.bu 0x00000003[r6], r7
	cmp r7, r5
	bnc9 .BB.LABEL.9_5
.BB.LABEL.9_11:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 634
	ld.w 0x00000010[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 635
	mulh 0x0000000C, r5
	add r5, r27
	ld.b 0x00000005[r27], r5
	st.b r5, 0x0000000B[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 636
	ld.h 0x0000000A[r27], r5
	st.h r5, 0x00000010[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 637
	ld.bu 0x00000002[r27], r5
	mov #_CanTp_AddressSize, r6
	add r5, r6
	ld.b 0x00000000[r6], r5
	st.b r5, 0x00000009[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 638
	ld.bu 0x00000000[r27], r6
	mov 0x00000008, r7
	jarl _CanTp_Prv_GetBit.1, r31
	st.b r10, 0x00000001[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 639
	ld.bu 0x00000000[r27], r6
	mov 0x00000001, r7
	jarl _CanTp_Prv_GetBit.1, r31
	st.b r10, 0x00000002[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 640
	ld.bu 0x00000000[r27], r6
	mov 0x00000004, r7
	jarl _CanTp_Prv_GetBit.1, r31
	st.b r10, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 641
	cmp 0x00000000, r10
	setf 0x00000002, r5
	cmp 0x00000000, r25
	setf 0x00000002, r6
	or r6, r5
	cmp 0x00000000, r5
	movea 0xFFFFFF90, r0, r5
	cmov 0x0000000A, 0x00000000, r5, r10
.BB.LABEL.9_12:	; if_break_bb216
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	zxb r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 649
	dispose 0x00000004, 0x00000381, [r31]
_CanTp_Prv_RxSduLengthCheck.1:
	.stack _CanTp_Prv_RxSduLengthCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 659
	ld.w 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 673
	ld.bu 0x00000009[r6], r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 674
	ld.bu 0x00000000[r5], r9
	andi 0x0000000F, r9, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 676
	ld.bu 0x00000004[r6], r11
	cmp 0x00000003, r11
	bh17 .BB.LABEL.10_38
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	shl 0x00000002, r11
	jmp #.SWITCH.LABEL.10_42[r11]
.SWITCH.LABEL.10_42:
	jr .BB.LABEL.10_2
	jr .BB.LABEL.10_15
	jr .BB.LABEL.10_32
	jr .BB.LABEL.10_37
.SWITCH.LABEL.10_42.END:
.BB.LABEL.10_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 679
	ld.hu 0x00000008[r7], r11
	cmp 0x00000008, r11
	bh9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 681
	movhi HIGHW1(#_CanTp_PciSize), r0, r5
	ld.bu LOWW(#_CanTp_PciSize)[r5], r5
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 684
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	andi 0x000000FF, r8, r5
	mov 0x00000008, r11
	sub r5, r11
	andi 0x0000000F, r9, r5
	cmp r11, r5
	bnh9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; bb.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r9
	mov 0x00000000, r11
	jr .BB.LABEL.10_39
.BB.LABEL.10_6:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 686
	mov r10, r5
	add r8, r5
	ld.bu 0x00000001[r6], r9
	cmp 0x00000000, r9
	cmov 0x0000000A, 0x00000008, r5, r9
	mov 0x00000000, r11
	jr .BB.LABEL.10_39
.BB.LABEL.10_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 692
	movhi HIGHW1(#_CanTp_PciSize+0x00000001), r0, r9
	ld.bu LOWW(#_CanTp_PciSize+0x00000001)[r9], r9
	mov r8, r12
	add r9, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 695
	cmp 0x00000000, r10
	ld.bu 0x00000001[r5], r10
	bnz9 .BB.LABEL.10_11
.BB.LABEL.10_8:	; bb98
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000007, r5
	sub r8, r5
	cmp r5, r10
	bnh9 .BB.LABEL.10_11
.BB.LABEL.10_9:	; bb115
	ld.hu 0x00000008[r7], r5
	andi 0x000000FF, r12, r8
	sub r8, r5
	cmp r5, r10
	bgt9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; bb134
	ld.bu 0x00000009[r6], r5
	add r10, r5
	add 0x00000002, r5
	movea 0x00000041, r0, r8
	cmp r8, r5
	bl9 .BB.LABEL.10_12
.BB.LABEL.10_11:	; bb134.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r9
	br9 .BB.LABEL.10_14
.BB.LABEL.10_12:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 700
	andi 0x000000FF, r12, r9
	add r10, r9
	ld.bu 0x00000001[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_14
.BB.LABEL.10_13:	; bb160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov #_CanTp_CanDlTable, r5
	add r9, r5
	ld.bu 0x00000000[r5], r9
.BB.LABEL.10_14:	; bb169
	mov 0x00000000, r11
	mov r12, r8
	jr .BB.LABEL.10_39
.BB.LABEL.10_15:	; switch_clause_bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 707
	ld.hu 0x00000008[r7], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 708
	andi 0x000000FF, r8, r9
	cmp 0x00000008, r9
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_16:	; switch_clause_bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	andi 0x000000FF, r8, r9
	cmp 0x0000000C, r9
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_17:	; switch_clause_bb182
	andi 0x000000FF, r8, r9
	add 0xFFFFFFF0, r9
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_18:	; switch_clause_bb182
	andi 0x000000FF, r8, r9
	addi 0xFFFFFFEC, r9, r0
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_19:	; switch_clause_bb182
	andi 0x000000FF, r8, r9
	addi 0xFFFFFFE8, r9, r0
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_20:	; switch_clause_bb182
	andi 0x000000FF, r8, r9
	addi 0xFFFFFFE0, r9, r0
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_21:	; switch_clause_bb182
	andi 0x000000FF, r8, r9
	addi 0xFFFFFFD0, r9, r0
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_22:	; switch_clause_bb182
	andi 0x000000FF, r8, r9
	addi 0xFFFFFFC0, r9, r0
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_23:	; switch_clause_bb182.bb280_crit_edge
	movea 0x000000FF, r0, r9
	br9 .BB.LABEL.10_25
.BB.LABEL.10_24:	; bb276
	andi 0x000000FF, r8, r9
.BB.LABEL.10_25:	; bb280
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 710
	zxb r8
	cmp 0x00000008, r8
	ld.bu 0x00000009[r6], r8
	sbf 0x0000000B, r8, r9, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 712
	ld.b 0x00000000[r5], r8
	shl 0x00000008, r8
	andi 0x00000F00, r8, r11
	ld.bu 0x00000001[r5], r8
	or r8, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 714
	cmp 0x00000000, r11
	bnz9 .BB.LABEL.10_27
.BB.LABEL.10_26:	; if_then_bb320
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 717
	ld.b 0x00000002[r5], r11
	shl 0x00000018, r11
	ld.bu 0x00000003[r5], r8
	shl 0x00000010, r8
	or r8, r11
	ld.bu 0x00000004[r5], r8
	shl 0x00000008, r8
	or r8, r11
	ld.bu 0x00000005[r5], r8
	or r8, r11
	movea 0x00001000, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 719
	cmp r8, r11
	cmov 0x00000001, 0xFFFFFFFF, r9, r9
	mov #_CanTp_PciSize, r5
	add 0x00000003, r5
	br9 .BB.LABEL.10_28
.BB.LABEL.10_27:	; if_else_bb374
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 729
	mov #_CanTp_PciSize, r5
	add 0x00000002, r5
.BB.LABEL.10_28:	; if_break_bb385
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	ld.b 0x00000009[r6], r8
	ld.b 0x00000000[r5], r5
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 733
	ld.bu 0x00000000[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_30
.BB.LABEL.10_29:	; if_break_bb385.bb410_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	movea 0x000000FF, r0, r9
	br9 .BB.LABEL.10_31
.BB.LABEL.10_30:	; bb392
	zxh r10
	cmp r10, r11
	bl9 .BB.LABEL.10_29
.BB.LABEL.10_31:	; bb410
	mov 0x00000000, r10
	br9 .BB.LABEL.10_39
.BB.LABEL.10_32:	; switch_clause_bb415
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 738
	ld.bu 0x0000000B[r6], r9
	mulhi 0x00000014, r9, r9
	mov #_CanTp_Channel, r11
	add r11, r9
	ld.hu 0x0000000C[r9], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 739
	st.b r10, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 740
	ld.bu 0x0000000B[r6], r9
	mulhi 0x00000014, r9, r9
	add r9, r11
	ld.bu 0x00000001[r11], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 741
	add 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 742
	mov r9, r10
	sub r8, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 743
	zxb r10
	cmp r10, r5
	bge9 .BB.LABEL.10_34
.BB.LABEL.10_33:	; bb451
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	add r8, r5
	zxb r5
	mov r5, r9
.BB.LABEL.10_34:	; bb463
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 744
	ld.bu 0x00000001[r6], r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_36
.BB.LABEL.10_35:	; bb473
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov #_CanTp_CanDlTable, r10
	add r9, r10
	ld.bu 0x00000000[r10], r9
.BB.LABEL.10_36:	; bb479
	mov 0x00000000, r11
	mov r11, r10
	br9 .BB.LABEL.10_39
.BB.LABEL.10_37:	; switch_clause_bb487
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 748
	st.b r10, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 750
	addi 0x00000003, r8, r9
	ld.bu 0x00000001[r6], r10
	cmp 0x00000000, r10
	cmov 0x0000000A, 0x00000008, r9, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 749
	add 0x00000001, r8
	br9 .BB.LABEL.10_36
.BB.LABEL.10_38:	; entry.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	movea 0x000000FF, r0, r9
	mov 0x00000000, r11
	mov r11, r10
	mov r11, r8
.BB.LABEL.10_39:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 757
	st.b r9, 0x0000000A[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 758
	st.b r8, 0x00000007[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 759
	ld.bu 0x00000004[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.10_41
.BB.LABEL.10_40:	; bb530
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov r10, r11
.BB.LABEL.10_41:	; bb538
	st.h r11, 0x00000012[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 761
	ld.hu 0x00000008[r7], r5
	ld.bu 0x0000000A[r6], r6
	cmp r6, r5
	setf 0x00000006, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 762
	jmp [r31]
_CanTp_Prv_FcTxConfirmation.1:
	.stack _CanTp_Prv_FcTxConfirmation.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 939
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 944
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r7
	add r5, r7
	ld.bu 0x00000003[r7], r5
	mov r6, r25
	cmp 0x00000000, r5
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	add 0xFFFFFFFF, r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.11_6
.BB.LABEL.11_2:	; entry
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; switch_clause_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 942
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.bu 0x00000006[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 953
	mulh 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 942
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r6
	ld.w LOWW(#_CanTp_CfgPtr)[r6], r6
	ld.w 0x00000010[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 953
	add r5, r6
	ld.hu 0x0000000A[r6], r6
	movhi HIGHW1(#_CanTp_PduRConfirmationApis+0x00000004), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis+0x00000004)[r5], r5
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 954
	mov #_CanTp_SubState, r5
	add r5, r25
	st.b r0, 0x00000000[r25]
.BB.LABEL.11_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 959
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.11_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 947
	mov #_CanTp_SubState, r5
	add r5, r25
	mov 0x00000008, r5
	st.b r5, 0x00000000[r25]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.11_6:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 950
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	ld.hu 0x0000000C[r6], r5
	cmp 0x00000000, r5
	cmov 0x0000000A, 0x00000006, r5, r5
	mov #_CanTp_SubState, r6
	add r6, r25
	st.b r5, 0x00000000[r25]
	dispose 0x00000000, 0x00000201, [r31]
_CanTp_Prv_PrepareFcRecieve.1:
	.stack _CanTp_Prv_PrepareFcRecieve.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 986
	mov #_CanTp_SubState, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 990
	add r6, r5
	mov 0x00000003, r7
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 993
	mulhi 0x00000014, r6, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	mov 0x00000005, r5
	st.b r5, 0x00000002[r6]
	jmp [r31]
_CanTp_Prv_LengthError.1:
	.stack _CanTp_Prv_LengthError.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1003
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1007
	ld.bu 0x00000004[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1008
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1009
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r6, r5
	ld.bu 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1007
	cmp 0x00000003, r26
	setf 0x0000000A, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1009
	cmp 0x00000003, r6
	bz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	ld.bu 0x00000000[r5], r5
	cmp 0x00000008, r5
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1012
	shl 0x00000002, r7
	mov #_CanTp_PduRConfirmationApis, r5
	add r7, r5
	ld.w 0x00000000[r5], r5
	ld.hu 0x00000010[r25], r6
	mov 0x00000001, r7
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1013
	ld.bu 0x0000000B[r25], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1015
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp_Prv.h", 1017
	dispose 0x00000000, 0x00000301, [r31]
_CanTp_Init:
	.stack _CanTp_Init = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 22
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 24
	movhi HIGHW1(#_CanTp_MainState), r0, r25
	st.b r0, LOWW(#_CanTp_MainState)[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 26
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r26
	mov #_CanTp_Config, r5
	st.w r5, LOWW(#_CanTp_CfgPtr)[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 33
	ld.bu 0x00000000[r5], r7
	mov 0x00000000, r8
	mov #_CanTp_SubState, r6
	jarl _CanTp_Prv_ArrayInit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 34
	ld.w LOWW(#_CanTp_CfgPtr)[r26], r5
	ld.bu 0x00000002[r5], r7
	mov 0x00000001, r26
	mov #_CanTp_TxConfirmationChannel, r6
	mov r26, r8
	jarl _CanTp_Prv_ArrayInit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 36
	st.b r26, LOWW(#_CanTp_MainState)[r25]
	dispose 0x00000000, 0x00000301, [r31]
_CanTp_MainFunction:
	.stack _CanTp_MainFunction = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 52
	prepare 0x00000201, 0x00000000
	mov 0x00000000, r25
	br9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 61
	andi 0x000000FF, r25, r6
	mov #_CanTp_SubState, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	shl 0x00000002, r5
	mov #_CanTp_StateFunctions, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	jarl [r5], r31
	add 0x00000001, r25
.BB.LABEL.15_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 59
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.bu 0x00000000[r5], r5
	andi 0x000000FF, r25, r6
	cmp r5, r6
	bl9 .BB.LABEL.15_1
.BB.LABEL.15_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 64
	jarl _CanTp_IncrementCounter.1, r31
	dispose 0x00000000, 0x00000201, [r31]
_CanTp_Transmit:
	.stack _CanTp_Transmit = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 80
	prepare 0x00000B87, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 83
	st.h r0, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 94
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.w 0x0000000C[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 96
	mov r6, r26
	mul 0x0000000C, r26, r0
	add r25, r26
	ld.bu 0x00000005[r26], r5
	st.w r5, 0x00000000[r3]
	add 0x00000005, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 98
	mov r6, r27
	addi 0x00000000, r7, r28
	mov r6, r29
	bz17 .BB.LABEL.16_10
.BB.LABEL.16_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 102
	ld.hu 0x00000008[r28], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.16_10
.BB.LABEL.16_2:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	movea 0x00000007, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 108
	mov r29, r7
	mov r28, r8
	jarl _CanTp_Prv_TxPciInit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 109
	mov r27, r5
	mul 0x0000000C, r5, r0
	add r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 111
	ld.bu 0x00000001[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 109
	ld.bu 0x00000000[r5], r30
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 111
	jarl _CanTp_Prv_GetBit.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 113
	mul 0x0000000C, r27, r0
	add r27, r25
	ld.bu 0x00000003[r25], r5
	mov #_CanTp_AddressSize, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	movea 0x000000FF, r30, r30
	sub r5, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 114
	zxb r30
	addi 0xFFFFFFFF, r30, r5
	ld.bu 0x00000007[r3], r6
	cmp 0x00000000, r6
	cmov 0x00000002, r30, r5, r30
	br9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_else_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 119
	cmp 0x00000008, r30
	movea 0x00000FFF, r0, r30
	cmov 0x0000000B, r5, r30, r30
.BB.LABEL.16_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 125
	ld.hu 0x00000008[r28], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 128
	cmp r30, r5
	bh9 .BB.LABEL.16_10
.BB.LABEL.16_6:	; if_else_bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	movea 0x00000008, r3, r7
	movea 0x0000000A, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 134
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 136
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 138
	ld.bu 0x00000000[r26], r5
	mov #_CanTp_SubState, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	mov #_CanTp_State, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.16_8
.BB.LABEL.16_7:	; if_else_bb109.if_break_bb149_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000001, r26
	br9 .BB.LABEL.16_9
.BB.LABEL.16_8:	; if_then_bb124
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 141
	mulhi 0x00000014, r5, r5
	mov #_CanTp_Channel, r6
	add r5, r6
	st.b r29, 0x00000006[r6]
	movea 0x00000007, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 142
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 143
	ld.h 0x00000008[r28], r5
	st.h r5, 0x0000000E[r6]
	movea 0x0000000A, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 144
	ld.h 0x00000000[r5], r5
	st.h r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 145
	st.b r0, 0x00000000[r6]
	movea 0x00000080, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 147
	st.h r5, 0x00000012[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 148
	ld.bu 0x00000000[r26], r26
	mov #_CanTp_SubState, r5
	add r26, r5
	mov 0x00000001, r26
	st.b r26, 0x00000000[r5]
	mov 0x00000000, r26
.BB.LABEL.16_9:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 152
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	mov r26, r10
	dispose 0x0000000C, 0x00000B87, [r31]
.BB.LABEL.16_10:	; if_break_bb151
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 157
	dispose 0x0000000C, 0x00000B87, [r31]
_CanTp_TxConfirmation:
	.stack _CanTp_TxConfirmation = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 170
	prepare 0x00000201, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 175
	st.h r0, 0x00000002[r3]
	mov r3, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 181
	jarl _CanTp_GetElapsedValue.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 183
	jarl _SchM_Enter_CanTp_EXCLUSIVE_AREA.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 185
	mov #_CanTp_TxConfirmationChannel, r5
	add r5, r25
	ld.bu 0x00000000[r25], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 186
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r5
	ld.w LOWW(#_CanTp_CfgPtr)[r5], r5
	ld.bu 0x00000000[r5], r5
	cmp r5, r6
	bl9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; entry.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; bb
	mov r6, r5
.BB.LABEL.17_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 187
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r7
	ld.w LOWW(#_CanTp_CfgPtr)[r7], r7
	ld.bu 0x00000000[r7], r7
	cmp r7, r6
	bl9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; bb24.bb43_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.17_6
.BB.LABEL.17_5:	; bb35
	mov #_CanTp_SubState, r7
	add r6, r7
	ld.bu 0x00000000[r7], r7
.BB.LABEL.17_6:	; bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 189
	cmp 0x00000002, r7
	bz9 .BB.LABEL.17_9
.BB.LABEL.17_7:	; bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	cmp 0x00000007, r7
	bnz17 .BB.LABEL.17_20
.BB.LABEL.17_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 193
	mulhi 0x00000014, r5, r5
	mov #_CanTp_Channel, r7
	add r5, r7
	movea 0x00000002, r3, r5
	ld.h 0x00000000[r5], r5
	st.h r5, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 194
	jarl _CanTp_Prv_FcTxConfirmation.1, r31
	br9 .BB.LABEL.17_19
.BB.LABEL.17_9:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 200
	mulhi 0x00000014, r5, r7
	mov #_CanTp_Channel, r8
	add r7, r8
	movea 0x00000002, r3, r7
	ld.h 0x00000000[r7], r7
	st.h r7, 0x00000010[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 201
	ld.bu 0x00000006[r8], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 202
	mulhi 0x0000000C, r7, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 201
	movhi HIGHW1(#_CanTp_CfgPtr), r0, r10
	ld.w LOWW(#_CanTp_CfgPtr)[r10], r10
	ld.w 0x0000000C[r10], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 202
	add r10, r9
	ld.bu 0x00000000[r9], r11
	ld.bu 0x00000003[r9], r9
	mov #_CanTp_AddressSize, r12
	add r9, r12
	ld.bu 0x00000000[r12], r9
	sub r9, r11
	ld.bu 0x00000002[r8], r9
	mov #_CanTp_PciSize, r12
	add r9, r12
	ld.bu 0x00000000[r12], r9
	sub r9, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 204
	andi 0x000000FF, r11, r9
	ld.hu 0x0000000C[r8], r12
	addi 0x0000000C, r8, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 202
	add 0x00000002, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 204
	cmp r9, r12
	bge9 .BB.LABEL.17_11
.BB.LABEL.17_10:	; switch_clause_bb56.bb109_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000000, r12
	br9 .BB.LABEL.17_12
.BB.LABEL.17_11:	; bb100
	zxb r11
	sub r11, r12
.BB.LABEL.17_12:	; bb109
	st.h r12, 0x00000000[r13]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 207
	ld.bu 0x00000000[r8], r8
	cmp 0x00000004, r8
	bnz9 .BB.LABEL.17_14
.BB.LABEL.17_13:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 209
	mulhi 0x00000014, r5, r8
	mov #_CanTp_Channel, r9
	add r8, r9
	ld.b 0x00000004[r9], r8
	add 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 210
	andi 0x0000000F, r8, r8
	st.b r8, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 211
	ld.h 0x0000000A[r9], r8
	add 0xFFFFFFFF, r8
	st.h r8, 0x0000000A[r9]
.BB.LABEL.17_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 214
	ld.hu 0x00000000[r13], r8
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.17_16
.BB.LABEL.17_15:	; if_then_bb141
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 216
	mov #_CanTp_SubState, r5
	add r5, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 217
	mulh 0x0000000C, r7
	add r7, r10
	ld.hu 0x0000000A[r10], r6
	movhi HIGHW1(#_CanTp_PduRConfirmationApis), r0, r5
	ld.w LOWW(#_CanTp_PduRConfirmationApis)[r5], r5
	mov 0x00000000, r7
	jarl [r5], r31
	br9 .BB.LABEL.17_19
.BB.LABEL.17_16:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 221
	mulhi 0x00000014, r5, r5
	mov #_CanTp_Channel, r7
	add r5, r7
	ld.hu 0x0000000A[r7], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.17_18
.BB.LABEL.17_17:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 223
	mov #_CanTp_SubState, r5
	add r5, r6
	mov 0x00000004, r5
	st.b r5, 0x00000000[r6]
	br9 .BB.LABEL.17_19
.BB.LABEL.17_18:	; if_else_bb160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 227
	jarl _CanTp_Prv_PrepareFcRecieve.1, r31
.BB.LABEL.17_19:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov 0x00000001, r5
	st.b r5, 0x00000000[r25]
.BB.LABEL.17_20:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 238
	jarl _SchM_Exit_CanTp_EXCLUSIVE_AREA.1, r31
	dispose 0x00000004, 0x00000201, [r31]
_CanTp_RxIndication:
	.stack _CanTp_RxIndication = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 253
	prepare 0x00000201, 0x00000014
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 258
	st.h r6, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 259
	st.b r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 260
	st.b r0, 0x0000000B[r3]
	addi 0x00000000, r7, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 263
	bz9 .BB.LABEL.18_5
.BB.LABEL.18_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 269
	mov r25, r7
	jarl _CanTp_Prv_GetRxContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 271
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_5
.BB.LABEL.18_2:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 275
	mov r25, r7
	jarl _CanTp_Prv_RxSduLengthCheck.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 277
	jarl _CanTp_Prv_LengthError.1, r31
	dispose 0x00000014, 0x00000201, [r31]
.BB.LABEL.18_4:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 281
	ld.bu 0x00000004[r3], r5
	shl 0x00000002, r5
	mov #_CanTp_ProcessFrame, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	mov r3, r6
	mov r25, r7
	jarl [r5], r31
.BB.LABEL.18_5:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/CanTp/CanTp.c", 287
	dispose 0x00000014, 0x00000201, [r31]
	.section .bss, bss
_CanTp_MainState:
	.ds (1)
