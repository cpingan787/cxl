#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Core.c -oDefaultBuild\Os_Core.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_cbc28a61454946bf9300efb2b3d0df8eldvkwgwe.e2h
#@	compiled at Thu Jul 16 13:41:25 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Core.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_SCB_FA_Inf
	.public _Os_CoreCB, 16
	.public _StartCore
	.extern _Os_Hal_StartCore
	.public _ControlIdle
	.extern _Os_Hal_SuspendInt
	.extern _Os_Hal_SetCoreMode
	.extern _Os_Hal_RestoreInt
	.public _GetCoreID
	.extern _Os_Hal_GetCoreID
	.public _GetNumberOfActivatedCores
	.public _ShutdownAllCores
	.extern _Os_SynPoint

	.section .text, text
_Os_GetCurrentContext.1:
	.stack _Os_GetCurrentContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 135
	mov #_Os_SCB_FA_Inf, r10
	jmp [r31]
_StartCore:
	.stack _StartCore = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 101
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 107
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 117
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x0000000B, r25
	br9 .BB.LABEL.2_9
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 135
	cmp 0x00000000, r25
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_else_bb.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000003, r25
	br9 .BB.LABEL.2_9
.BB.LABEL.2_4:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 141
	ld.hu 0x00000026[r10], r5
	add r5, r5
	mov #_Os_CoreCB, r6
	add r5, r6
	ld.hu 0x00000006[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_else_bb16.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; if_else_bb28
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 150
	shl r25, r5
	movhi HIGHW1(#_Os_CoreCB), r0, r6
	ld.hu LOWW(#_Os_CoreCB)[r6], r6
	tst r5, r6
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_else_bb28.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000007, r25
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 158
	mov r25, r6
	jarl32 _Os_Hal_StartCore, r31
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 161
	shl r25, r5, r6
	zxb r6
	mov #_Os_CoreCB, r7
	ld.h 0x00000000[r7], r8
	or r6, r8
	st.h r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 163
	shl 0x00000002, r25
	add r25, r7
	st.w r5, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 164
	st.b r0, 0x00000000[r26]
	mov 0x00000000, r25
.BB.LABEL.2_9:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 168
	cmp 0x00000000, r25
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_10:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	cmp 0x00000000, r26
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 172
	st.b r25, 0x00000000[r26]
.BB.LABEL.2_12:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 189
	dispose 0x00000000, 0x00000301, [r31]
_ControlIdle:
	.stack _ControlIdle = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 303
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 316
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 342
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 349
	jarl32 _Os_Hal_SuspendInt, r31
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 356
	shl r25, r5
	movhi HIGHW1(#_Os_CoreCB), r0, r6
	ld.hu LOWW(#_Os_CoreCB)[r6], r6
	tst r5, r6
	mov r10, r27
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000003, r25
	br9 .BB.LABEL.3_10
.BB.LABEL.3_3:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 359
	cmp 0x00000001, r26
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_4:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_5:	; bb24
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 363
	mov r25, r6
	jarl32 _Os_Hal_SetCoreMode, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 368
	shl 0x00000002, r25
	mov #_Os_CoreCB, r5
	add r25, r5
	st.w r0, 0x0000000C[r5]
	br9 .BB.LABEL.3_9
.BB.LABEL.3_7:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 373
	mov r25, r6
	jarl32 _Os_Hal_SetCoreMode, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_8:	; bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 378
	shl 0x00000002, r25
	mov #_Os_CoreCB, r5
	add r25, r5
	mov 0x00000001, r25
	st.w r25, 0x0000000C[r5]
.BB.LABEL.3_9:	; bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000000, r25
.BB.LABEL.3_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 393
	mov r27, r6
	jarl32 _Os_Hal_RestoreInt, r31
	andi 0x000000FF, r25, r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.3_11:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 416
	dispose 0x00000000, 0x00000381, [r31]
_GetCoreID:
	.stack _GetCoreID = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 426
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 435
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 444
	jarl32 _Os_Hal_GetCoreID, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 456
	dispose 0x00000000, 0x00000001, [r31]
_GetNumberOfActivatedCores:
	.stack _GetNumberOfActivatedCores = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 467
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 478
	jarl _Os_GetCurrentContext.1, r31
	mov 0x00000000, r10
	mov r10, r5
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 504
	andi 0x0000FFFF, r5, r6
	mov 0x00000001, r7
	shl r6, r7
	movhi HIGHW1(#_Os_CoreCB), r0, r6
	ld.hu LOWW(#_Os_CoreCB)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 507
	tst r7, r6
	adf 0x0000000A, r0, r10, r10
	add 0x00000001, r5
.BB.LABEL.5_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 501
	andi 0x0000FFFF, r5, r0
	bz9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 532
	dispose 0x00000000, 0x00000001, [r31]
_ShutdownAllCores:
	.stack _ShutdownAllCores = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 604
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 615
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r25
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 661
	jarl32 _Os_SynPoint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 664
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 718
	ld.hu 0x00000026[r25], r5
	mov 0x00000001, r6
	shl r5, r6
	not r6, r5
	movhi HIGHW1(#_Os_CoreCB), r0, r6
	ld.h LOWW(#_Os_CoreCB)[r6], r7
	and r5, r7
	st.h r7, LOWW(#_Os_CoreCB)[r6]
	mov 0x00000000, r5
	br9 .BB.LABEL.6_4
.BB.LABEL.6_1:	; bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 725
	andi 0x0000FFFF, r6, r7
	add r7, r7
	mov #_Os_CoreCB, r8
	add r7, r8
	andi 0x0000FFFF, r5, r7
	add r7, r7
	add r7, r8
	st.h r0, 0x00000002[r8]
	add 0x00000001, r6
.BB.LABEL.6_2:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 722
	andi 0x0000FFFF, r6, r7
	cmp 0x00000004, r7
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	add 0x00000001, r5
.BB.LABEL.6_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 720
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; bb36.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.6_2
.BB.LABEL.6_6:	; bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 729
	ld.hu 0x00000026[r25], r5
	add r5, r5
	mov #_Os_CoreCB, r6
	add r6, r5
	st.h r0, 0x0000000A[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 730
	ld.hu 0x00000026[r25], r5
	shl 0x00000002, r5
	add r5, r6
	mov 0x00000002, r5
	st.w r5, 0x0000000C[r6]
.BB.LABEL.6_7:	; bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 736
	br9 .BB.LABEL.6_7
	.section .bss, bss
	.align 4
_Os_CoreCB:
	.ds (16)
