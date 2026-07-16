#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\fls\src\Fls_Private_Fcu.c -oDefaultBuild\Fls_Private_Fcu.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bb6efd0f103048ffa0b5615b6e3ceafeqaodo45n.bho
#@	compiled at Thu Jul 16 13:41:57 2026

	.file "..\..\Bsw\Mcal\fls\src\Fls_Private_Fcu.c"

	$reg_mode 22
	.dbl_size 4

	.extern _FLS_GpFACIReg_BaseAddress
	.extern _FLS_GpECCReg_BaseAddress
	.extern _Fls_GstVar
	.extern _Fls_GstFcuVar
	.extern _Fls_GblJobSuspendRequest
	.public _Fls_PreFcuInitCheck
	.public _Fls_FcuWritePreCheck
	.public _Fls_FcuCheckSequencerStatus
	.public _Fls_FcuSwitchMode
	.extern _SchM_Enter_Fls_FLS_REGISTER_PROTECTION
	.extern _SchM_Exit_Fls_FLS_REGISTER_PROTECTION
	.public _Fls_FcuPrepareEnvironment
	.public _Fls_FcuForcedStop
	.public _Fls_FcuClearStatus
	.public _Fls_FcuGetFWParam
	.public _Fls_FcuGetDFSize
	.public _Fls_FcuSetFrequency
	.public _Fls_FcuInit
	.public _Fls_FcuDataCopy
	.public _Fls_FcuOffsetDataCopy
	.public _Fls_FcuErasePreCheck
	.public _Fls_FcuCheckJobStatus
	.extern _Fls_ProcessSuspend
	.public _Fls_FcuCheckBCJobStatus
	.public _Fls_FcuBlankCheckResult
	.public _Fls_FcuPerformBlankCheck
	.public _Fls_FcuResetErrorBits
	.public _Fls_FcuReturnFromCmdLock
	.public _Fls_FcuCalculateBlankCheckAddr

	.section .text, text
_Fls_PreFcuInitCheck:
	.stack _Fls_PreFcuInitCheck = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 458
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	ld.hu 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	ld.bu 0x00000014[r5], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb18
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	ld.hu 0x0000001C[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 465
	jmp [r31]
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 473
	jmp [r31]
_Fls_FcuWritePreCheck:
	.stack _Fls_FcuWritePreCheck = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 521
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	andi 0x0000D040, r5, r5
	addi 0xFFFF8000, r5, r0
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 531
	cmov 0x00000002, 0x00000000, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 535
	jmp [r31]
_Fls_FcuCheckSequencerStatus:
	.stack _Fls_FcuCheckSequencerStatus = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 575
	prepare 0x00000301, 0x00000000
	movea 0x00000BB8, r0, r25
	mov 0x00000000, r5
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 586
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r6
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r6], r6
	ld.w 0x00000080[r6], r6
	andi 0x00008000, r6, r0
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000001, r5
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 594
	add 0xFFFFFFFF, r25
.BB.LABEL.3_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 582
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.3_1
.BB.LABEL.3_6:	; bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 598
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	andi 0x00004000, r5, r26
	cmp 0x00000000, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 608
	bz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 611
	jarl _Fls_FcuReturnFromCmdLock, r31
.BB.LABEL.3_8:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 617
	cmp 0x00000000, r25
	setf 0x0000000A, r5
	cmp 0x00000000, r26
	setf 0x00000002, r6
	tst r6, r5
	mov 0x0000000A, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 619
	cmov 0x0000000A, 0x00000000, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 627
	dispose 0x00000000, 0x00000301, [r31]
_Fls_FcuSwitchMode:
	.stack _Fls_FcuSwitchMode = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 677
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 684
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.hu 0x00000084[r5], r5
	cmp r5, r6
	mov r6, r25
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb90_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_16
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 687
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 690
	jarl _Fls_FcuCheckSequencerStatus, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 692
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 698
	jarl _Fls_FcuForcedStop, r31
.BB.LABEL.4_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 707
	jarl32 _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 710
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	movea 0xFFFFAA00, r0, r6
	st.h r6, 0x00000084[r5]
	movea 0x00000020, r0, r27
.BB.LABEL.4_6:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 720
	add 0xFFFFFFFF, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 718
	cmp 0x00000000, r27
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.hu 0x00000084[r5], r5
	cmp r5, r25
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_8:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 741
	jarl32 _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.4_13
.BB.LABEL.4_9:	; if_else_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 749
	jarl32 _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 752
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r26
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r26], r26
	movea 0xFFFFAA80, r0, r27
	st.h r27, 0x00000084[r26]
	movea 0x00000020, r0, r27
.BB.LABEL.4_10:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 762
	add 0xFFFFFFFF, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 760
	cmp 0x00000000, r27
	bz9 .BB.LABEL.4_12
.BB.LABEL.4_11:	; bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r26
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r26], r26
	ld.hu 0x00000084[r26], r26
	cmp r26, r25
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_12:	; bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 782
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r26
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r26], r5
	st.w r0, 0x00000030[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 796
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r26], r26
	st.w r0, 0x00000034[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 811
	jarl32 _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	mov 0x00000000, r26
.BB.LABEL.4_13:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 818
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.4_15
.BB.LABEL.4_14:	; if_break_bb80.if_break_bb90_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x0000000A, r10
	br9 .BB.LABEL.4_16
.BB.LABEL.4_15:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 824
	movhi HIGHW1(#_Fls_GstFcuVar+0x00000014), r0, r5
	st.h r25, LOWW(#_Fls_GstFcuVar+0x00000014)[r5]
	mov r26, r10
.BB.LABEL.4_16:	; if_break_bb90
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 834
	dispose 0x00000000, 0x00000381, [r31]
_Fls_FcuPrepareEnvironment:
	.stack _Fls_FcuPrepareEnvironment = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 879
	prepare 0x00000001, 0x00000000
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 884
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 886
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 889
	jarl _Fls_FcuForcedStop, r31
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 895
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 898
	jarl _Fls_FcuClearStatus, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 900
	jarl _Fls_FcuSwitchMode, r31
.BB.LABEL.5_4:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 907
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 909
	cmov 0x00000002, 0x00000001, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 916
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 918
	jarl _Fls_FcuGetDFSize, r31
	movhi HIGHW1(#_Fls_GstFcuVar+0x00000004), r0, r5
	st.w r10, LOWW(#_Fls_GstFcuVar+0x00000004)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 920
	shr 0x00000006, r10
	zxh r10
	addi 0xFFFFFC01, r10, r0
	bgt9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb25.if_break_bb39_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 924
	jarl _Fls_FcuSetFrequency, r31
.BB.LABEL.5_8:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 937
	dispose 0x00000000, 0x00000001, [r31]
_Fls_FcuForcedStop:
	.stack _Fls_FcuForcedStop = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 980
	movhi 0x0000FFA2, r0, r5
	movea 0xFFFFFFB3, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 989
	st.b r6, 0x00000000[r5]
	mov 0x00000001, r10
	movea 0x00000020, r0, r5
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 998
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r6
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r6], r6
	ld.w 0x00000080[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1000
	andi 0x00008000, r6, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1003
	cmov 0x0000000A, 0x00000000, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1009
	add 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 995
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1015
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1013
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1015
	ld.bu 0x00000010[r5], r5
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	andi 0x00000010, r5, r0
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb50
	mov 0x0000000A, r10
.BB.LABEL.6_6:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1026
	jmp [r31]
_Fls_FcuClearStatus:
	.stack _Fls_FcuClearStatus = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1068
	movhi 0x0000FFA2, r0, r5
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1072
	st.b r6, 0x00000000[r5]
	jmp [r31]
_Fls_FcuGetFWParam:
	.stack _Fls_FcuGetFWParam = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1118
	ld.w 0x00000000[r6], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1128
	jmp [r31]
_Fls_FcuGetDFSize:
	.stack _Fls_FcuGetDFSize = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1169
	prepare 0x00000001, 0x00000000
	mov 0x01030270, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1176
	jarl _Fls_FcuGetFWParam, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1178
	ld.w 0x000000C8[r10], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1182
	shl 0x0000000A, r10
	mov 0x03FFFC00, r5
	and r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1185
	dispose 0x00000000, 0x00000001, [r31]
_Fls_FcuSetFrequency:
	.stack _Fls_FcuSetFrequency = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1229
	prepare 0x00000385, 0x00000000
	mov 0x01030218, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1250
	jarl _Fls_FcuGetFWParam, r31
	mov r10, r25
	mov 0x01030264, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1254
	jarl _Fls_FcuGetFWParam, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1252
	shr 0x00000008, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1256
	andi 0x000000FF, r25, r5
	addi 0xFFFFFF01, r5, r0
	mov r10, r26
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb107_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.10_8
.BB.LABEL.10_2:	; if_then_bb
	mov 0x01030238, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1259
	jarl _Fls_FcuGetFWParam, r31
	mov r10, r27
	mov 0x01030234, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1262
	jarl _Fls_FcuGetFWParam, r31
	mov 0x000F4240, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1260
	divqu r5, r27, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1263
	mov r10, r28
	divqu r5, r28, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1265
	zxb r25
	cmp 0x00000003, r25
	bh9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x01030274, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1273
	jarl _Fls_FcuGetFWParam, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1279
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	br9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x01030278, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1288
	jarl _Fls_FcuGetFWParam, r31
	mov r10, r25
	mov 0x01030288, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1290
	jarl _Fls_FcuGetFWParam, r31
	mov 0x00000004, r26
	mov r10, r5
	mov r25, r10
.BB.LABEL.10_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	movhi HIGHW1(#_Fls_GstFcuVar+0x00000008), r0, r6
	st.w r5, LOWW(#_Fls_GstFcuVar+0x00000008)[r6]
	mov 0x000F4240, r5
	divqu r5, r10, r0
	movea 0x00000078, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1294
	cmp r5, r27
	bh9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	movea 0x00000077, r0, r5
	cmp r5, r28
	bh9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; if_break_bb.if_break_bb107_crit_edge
	mov 0x00000003, r10
.BB.LABEL.10_8:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1347
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.10_9:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1296
	andi 0x000000FF, r26, r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.10_12
.BB.LABEL.10_10:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.10_12
.BB.LABEL.10_11:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1300
	zxb r26
	movea 0x00000077, r26, r10
	divhu r26, r10, r0
.BB.LABEL.10_12:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1311
	jarl32 _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1316
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ori 0x00001E00, r25, r6
	st.h r6, 0x000000E4[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1333
	jarl32 _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.10_1
_Fls_FcuInit:
	.stack _Fls_FcuInit = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1396
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1400
	mov #_Fls_GstFcuVar, r5
	movea 0x00000078, r0, r6
	st.h r6, 0x00000000[r5]
	movea 0x00000400, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1401
	st.h r6, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1402
	st.h r0, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1403
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1404
	st.w r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1405
	st.w r0, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1406
	st.w r0, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1409
	jarl _Fls_FcuPrepareEnvironment, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1411
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	st.w r10, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_Fls_FcuDataCopy:
	.stack _Fls_FcuDataCopy = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1457
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1467
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1469
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1474
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1476
	ld.bu 0x00000004[r5], r25
	cmp 0x00000000, r25
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1479
	movhi HIGHW1(#_Fls_GstVar+0x00000008), r0, r5
	st.w r6, LOWW(#_Fls_GstVar+0x00000008)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1483
	jarl32 _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1486
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	mov 0x00000001, r6
	st.b r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1500
	jarl32 _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1509
	dispose 0x00000000, 0x00000201, [r31]
_Fls_FcuOffsetDataCopy:
	.stack _Fls_FcuOffsetDataCopy = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1555
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1563
	cmp 0x00000001, r8
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	cmp 0x00000002, r8
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_2:	; entry
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_3:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1584
	ld.h 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1586
	st.h r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1590
	ld.b 0x00000002[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1592
	st.b r5, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1588
	add 0x00000002, r6
	br9 .BB.LABEL.13_6
.BB.LABEL.13_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1570
	ld.b 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1572
	st.b r5, 0x00000000[r7]
	br9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; switch_clause_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1577
	ld.h 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1579
	st.h r5, 0x00000000[r7]
.BB.LABEL.13_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1603
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1605
	ld.bu 0x00000004[r5], r26
	cmp 0x00000000, r26
	bz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1610
	jarl32 _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1613
	movhi HIGHW1(#_Fls_GstVar+0x00000008), r0, r5
	st.w r25, LOWW(#_Fls_GstVar+0x00000008)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1615
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r5], r5
	mov 0x00000001, r6
	st.b r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1629
	jarl32 _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
.BB.LABEL.13_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov r26, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1638
	dispose 0x00000000, 0x00000301, [r31]
_Fls_FcuErasePreCheck:
	.stack _Fls_FcuErasePreCheck = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1685
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	andi 0x0000E040, r5, r5
	addi 0xFFFF8000, r5, r0
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1695
	cmov 0x00000002, 0x00000000, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1699
	jmp [r31]
_Fls_FcuCheckJobStatus:
	.stack _Fls_FcuCheckJobStatus = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1747
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1773
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1777
	andi 0x00007000, r5, r0
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1779
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r5
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb.if_break_bb39_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000006, r25
	br9 .BB.LABEL.15_9
.BB.LABEL.15_3:	; if_else_bb
	mov 0x00000005, r25
	br9 .BB.LABEL.15_9
.BB.LABEL.15_4:	; if_else_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1789
	andi 0x00008000, r5, r0
	bnz9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_else_bb14.if_break_bb39_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.15_9
.BB.LABEL.15_6:	; if_then_bb20
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1793
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1794
	addi 0x00000000, r10, r25
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_7:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1798
	movhi HIGHW1(#_Fls_GblJobSuspendRequest), r0, r5
	ld.bu LOWW(#_Fls_GblJobSuspendRequest)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_8:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1801
	jarl32 _Fls_ProcessSuspend, r31
.BB.LABEL.15_9:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1852
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	st.w r10, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1855
	dispose 0x00000000, 0x00000201, [r31]
_Fls_FcuCheckBCJobStatus:
	.stack _Fls_FcuCheckBCJobStatus = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1898
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1906
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1909
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1916
	zxh r5
	shr 0x0000000F, r5
	xori 0x00000001, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1920
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	st.w r10, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1923
	dispose 0x00000004, 0x00000000, [r31]
_Fls_FcuBlankCheckResult:
	.stack _Fls_FcuBlankCheckResult = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1963
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1972
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.bu 0x000000D4[r5], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1974
	ld.w 0x00000000[r3], r5
	andi 0x00000001, r5, r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1981
	cmov 0x0000000A, 0x00000007, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 1986
	dispose 0x00000004, 0x00000000, [r31]
_Fls_FcuPerformBlankCheck:
	.stack _Fls_FcuPerformBlankCheck = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2031
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2042
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2043
	addi 0x00000000, r10, r27
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2048
	jarl32 _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2051
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r6
	st.w r25, 0x00000030[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2063
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	st.w r26, 0x00000034[r5]
	movhi 0x0000FFA2, r0, r5
	movea 0x00000071, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2077
	st.b r6, 0x00000000[r5]
	movea 0xFFFFFFD0, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2079
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2084
	jarl32 _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	mov r27, r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2093
	dispose 0x00000000, 0x00000381, [r31]
_Fls_FcuResetErrorBits:
	.stack _Fls_FcuResetErrorBits = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2137
	prepare 0x00000001, 0x00000000
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2143
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2145
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2148
	jarl _Fls_FcuClearStatus, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2151
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2152
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_then_bb.if_break_bb13_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_then_bb11
	mov 0x00000001, r10
.BB.LABEL.19_4:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2167
	dispose 0x00000000, 0x00000001, [r31]
_Fls_FcuReturnFromCmdLock:
	.stack _Fls_FcuReturnFromCmdLock = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2210
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2214
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	andi 0x00004000, r5, r0
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2220
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	tst1 0x00000003, 0x00000010[r5]
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2227
	jarl32 _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2230
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	st.b r0, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2243
	jarl32 _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
.BB.LABEL.20_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2255
	dispose 0x00000000, 0x00000001, [r31]
_Fls_FcuCalculateBlankCheckAddr:
	.stack _Fls_FcuCalculateBlankCheckAddr = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2295
	ori 0x0000FFFF, r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2312
	cmp r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2319
	cmov 0x00000001, r5, r7, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/fls/src/Fls_Private_Fcu.c", 2323
	jmp [r31]
