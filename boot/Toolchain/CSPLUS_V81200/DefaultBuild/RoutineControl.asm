#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\Diag_Callout\RoutineControl.c -oDefaultBuild\RoutineControl.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_e3d93be98edf40da986d001aaf24b330ufgtzapv.bu0
#@	compiled at Thu Jul 16 13:41:47 2026

	.file "..\..\Bsw\SystemServices\BootServices\Diag_Callout\RoutineControl.c"

	$reg_mode 22
	.dbl_size 4

	.extern _DcmState
	.extern _g_DownSegIdx
	.extern _g_CurLogicalBlockId
	.extern _g_DownSeg
	.extern _g_logicalBlocks
	.extern _g_FlagsInfo
	.public _g_CrcAddr, 8
	.public _g_CrcAddrEnd, 8
	.public _g_DownBlockStart, 2
	.public _g_DownBlockEnd, 2
	.public _g_DownBlockIdx, 1
	.extern _FlsIf_Read
	.extern _CommF_DataCopy
	.extern _SecM_Crc32Process
	.extern _Diag_NRC78Send
	.extern _Diag_WdgFeed
	.public _RC_ChecksumVerify
	.extern _SecM_Crc32Preprocess
	.extern _SecM_Crc32Finish
	.extern _CommF_DataCompare
	.extern _FlsIf_Init
	.extern _CommF_DataSet
	.public _RC_CheckDependency
	.extern _Diag_FlagWrite
	.extern _FlsIf_DeInit
	.public _RC_EraseMem_Preprocess
	.extern _CommF_GetUint32DataValue
	.extern _MemM_LBIdGet
	.public _RC_EraseMemory
	.extern _FlsIf_Erase
	.public _RC_ActivationAndRollback
	.public _RC_CheckSVN

	.section .text, text
_ChecksumCompute.1:
	.stack _ChecksumCompute.1 = 152
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 84
	prepare 0x00000387, 0x0000007C
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 95
	mov r7, r25
	shr 0x00000007, r25
	mov 0x00000000, r26
	mov r9, r27
	mov r7, r28
	mov r6, r29
	br9 .BB.LABEL.1_7
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 97
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov r3, r8
	movea 0x00000080, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 100
	mov r29, r6
	jarl32 _FlsIf_Read, r31
	br9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 102
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	movea 0x00000080, r0, r8
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 104
	mov r29, r7
	jarl32 _CommF_DataCopy, r31
	mov 0x00000000, r10
.BB.LABEL.1_5:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 113
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	movea 0x00000080, r0, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 116
	jarl32 _SecM_Crc32Process, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 125
	jarl32 _Diag_NRC78Send, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 127
	jarl32 _Diag_WdgFeed, r31
	add 0xFFFFFFFF, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 123
	movea 0x00000080, r29, r29
.BB.LABEL.1_7:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 95
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.1_1
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_else_bb.bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0x00000001, r26
.BB.LABEL.1_9:	; bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 130
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_10:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 132
	andi 0x0000007F, r28, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 133
	cmp 0x00000000, r25
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_11:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 135
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 138
	mov r29, r6
	mov r25, r7
	jarl32 _FlsIf_Read, r31
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_else_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 142
	mov r29, r7
	mov r25, r8
	jarl32 _CommF_DataCopy, r31
	mov r26, r10
.BB.LABEL.1_14:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 145
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 147
	mov r25, r7
	jarl32 _SecM_Crc32Process, r31
.BB.LABEL.1_16:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 152
	jarl32 _Diag_NRC78Send, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 154
	jarl32 _Diag_WdgFeed, r31
	add 0x00000004, r3
	dispose 0x0000007C, 0x00000387, [r31]
_RC_ChecksumVerify:
	.stack _RC_ChecksumVerify = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 174
	prepare 0x00000387, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 182
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 184
	movhi HIGHW1(#_g_DownSegIdx), r0, r5
	ld.bu LOWW(#_g_DownSegIdx)[r5], r5
	addi 0xFFFFFFEC, r5, r0
	mov r6, r25
	blt9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.2_15
.BB.LABEL.2_2:	; bb
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 191
	cmp 0x00000002, r5
	bl9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_break_bb.bb40_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	movea 0x000000FF, r0, r26
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; bb31
	shl 0x00000004, r5
	mov #_g_logicalBlocks, r26
	add r5, r26
	ld.bu 0x00000000[r26], r26
.BB.LABEL.2_6:	; bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 194
	jarl32 _SecM_Crc32Preprocess, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 196
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; bb40.if_break_bb63_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0x00000000, r27
	mov 0x00000001, r28
	mov r27, r29
	br9 .BB.LABEL.2_10
.BB.LABEL.2_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 204
	movhi HIGHW1(#_g_DownBlockIdx), r0, r27
	ld.bu LOWW(#_g_DownBlockIdx)[r27], r28
	add 0xFFFFFFFF, r28
	mov #_g_DownBlockStart, r27
	add r28, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 206
	ld.bu 0x00000000[r27], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 205
	mov #_g_DownBlockEnd, r29
	add r28, r29
	ld.b 0x00000000[r29], r28
	add 0x00000001, r28
	mov 0x00000001, r29
	br9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 211
	andi 0x000000FF, r27, r5
	shl 0x00000003, r5
	mov #_g_DownSeg, r6
	add r5, r6
	ld.w 0x00000004[r6], r7
	ld.w 0x00000000[r6], r6
	mov 0x00000001, r8
	mov r29, r9
	jarl _ChecksumCompute.1, r31
	add 0x00000001, r27
.BB.LABEL.2_10:	; bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 209
	andi 0x000000FF, r27, r5
	andi 0x000000FF, r28, r6
	cmp r6, r5
	bl9 .BB.LABEL.2_9
.BB.LABEL.2_11:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 214
	mov r27, r6
	jarl32 _SecM_Crc32Finish, r31
	mov 0x00000004, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 216
	mov r25, r6
	mov r27, r7
	jarl32 _CommF_DataCompare, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_12:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 218
	cmp 0x00000000, r26
	bz9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; if_then_bb97.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 220
	jarl32 _FlsIf_Init, r31
.BB.LABEL.2_15:	; bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 229
	dispose 0x00000004, 0x00000387, [r31]
_ChecksumVerifyDependencies.1:
	.stack _ChecksumVerifyDependencies.1 = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 248
	prepare 0x00000385, 0x00000008
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 257
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 258
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 260
	movhi HIGHW1(#_g_DownBlockIdx), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 262
	ld.bu LOWW(#_g_DownBlockIdx)[r5], r25
	mov 0x00000000, r26
	br9 .BB.LABEL.3_5
.BB.LABEL.3_1:	; bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 275
	andi 0x000000FF, r28, r5
	shl 0x00000003, r5
	mov #_g_DownSeg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 276
	ld.w 0x00000004[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 275
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 277
	andi 0x000000FF, r26, r7
	shl 0x00000002, r7
	mov #_g_CrcAddrEnd, r8
	add r8, r7
	ld.w 0x00000000[r7], r7
	addi 0xFFFFFFFC, r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 279
	cmp r7, r6
	cmov 0x0000000A, r5, r8, r7
	mov 0x00000001, r9
	mov 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 281
	jarl _ChecksumCompute.1, r31
	add 0x00000001, r28
.BB.LABEL.3_2:	; bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 273
	andi 0x000000FF, r28, r5
	andi 0x000000FF, r27, r6
	cmp r6, r5
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb70
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 284
	mov r27, r6
	jarl32 _SecM_Crc32Finish, r31
	mov 0x00000004, r8
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 286
	mov r27, r6
	jarl32 _CommF_DataCompare, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_4:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	add 0x00000001, r26
.BB.LABEL.3_5:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 262
	andi 0x000000FF, r26, r5
	cmp r25, r5
	bnc9 .BB.LABEL.3_8
.BB.LABEL.3_6:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 265
	andi 0x000000FF, r26, r27
	mov r27, r5
	shl 0x00000002, r5
	mov #_g_CrcAddr, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	mov 0x00000004, r28
	movea 0x00000004, r3, r8
	mov r28, r7
	jarl32 _FlsIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 267
	addi 0x00000001, r26, r5
	movhi HIGHW1(#_g_DownBlockIdx), r0, r6
	st.b r5, LOWW(#_g_DownBlockIdx)[r6]
	mov 0x00000000, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 268
	mov r28, r8
	jarl32 _CommF_DataSet, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 269
	jarl32 _SecM_Crc32Preprocess, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 271
	mov #_g_DownBlockStart, r5
	add r27, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 273
	ld.bu 0x00000000[r5], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 272
	mov #_g_DownBlockEnd, r5
	add r5, r27
	ld.b 0x00000000[r27], r27
	add 0x00000001, r27
	br9 .BB.LABEL.3_2
.BB.LABEL.3_7:	; bb70.bb94_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; bb85.bb94_crit_edge
	mov 0x00000000, r10
.BB.LABEL.3_9:	; bb94
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 294
	dispose 0x00000008, 0x00000385, [r31]
_RC_CheckDependency:
	.stack _RC_CheckDependency = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 313
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 317
	jarl32 _Diag_NRC78Send, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 319
	jarl _ChecksumVerifyDependencies.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 321
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 323
	movhi HIGHW1(#_DcmState+0x00000002), r0, r5
	tst1 0x00000007, LOWW(#_DcmState+0x00000002)[r5]
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 325
	mov #_g_FlagsInfo, r5
	movea 0x0000004C, r5, r7
	mov 0x00000004, r6
	jarl32 _Diag_FlagWrite, r31
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 338
	jarl32 _FlsIf_DeInit, r31
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 340
	movhi HIGHW1(#_g_DownSegIdx), r0, r6
	st.b r5, LOWW(#_g_DownSegIdx)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 341
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r6
	st.b r5, LOWW(#_g_CurLogicalBlockId)[r6]
.BB.LABEL.4_4:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 345
	dispose 0x00000000, 0x00000001, [r31]
_RC_EraseMem_Preprocess:
	.stack _RC_EraseMem_Preprocess = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 367
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 382
	cmp 0x0000000D, r7
	ld.bu 0x00000000[r6], r5
	mov r6, r25
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; entry.if_break_bb79_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0x00000001, r10
.BB.LABEL.5_2:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 411
	zxb r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.5_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	andi 0x0000000F, r5, r6
	cmp 0x00000004, r6
	bnz9 .BB.LABEL.5_1
.BB.LABEL.5_4:	; bb33
	andi 0x000000F0, r5, r5
	addi 0xFFFFFFC0, r5, r0
	bnz9 .BB.LABEL.5_1
.BB.LABEL.5_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 391
	addi 0x00000001, r25, r6
	mov 0x00000004, r26
	mov r26, r7
	jarl32 _CommF_GetUint32DataValue, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 393
	addi 0x00000005, r25, r6
	mov r26, r7
	jarl32 _CommF_GetUint32DataValue, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 395
	mov r27, r6
	mov r25, r7
	jarl32 _MemM_LBIdGet, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 397
	addi 0xFFFFFF01, r10, r0
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_else_bb.if_break_bb79_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.5_2
.BB.LABEL.5_7:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 399
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	st.b r10, LOWW(#_g_CurLogicalBlockId)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 400
	movhi HIGHW1(#_g_DownBlockIdx), r0, r5
	ld.bu LOWW(#_g_DownBlockIdx)[r5], r6
	shl 0x00000002, r6
	mov #_g_CrcAddr, r7
	add r6, r7
	add r25, r27
	add 0xFFFFFFFC, r27
	st.w r27, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 401
	ld.bu LOWW(#_g_DownBlockIdx)[r5], r6
	mov #_g_DownBlockStart, r7
	add r6, r7
	movhi HIGHW1(#_g_DownSegIdx), r0, r6
	ld.b LOWW(#_g_DownSegIdx)[r6], r6
	add 0x00000001, r6
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 402
	ld.b LOWW(#_g_DownBlockIdx)[r5], r6
	add 0x00000001, r6
	st.b r6, LOWW(#_g_DownBlockIdx)[r5]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
_RC_EraseMemory:
	.stack _RC_EraseMemory = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 430
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 437
	jarl32 _Diag_NRC78Send, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 439
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.bb13_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	movea 0xFFFFFDFF, r0, r6
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; bb
	shl 0x00000004, r5
	mov #_g_logicalBlocks, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	movea 0xFFFFFE00, r5, r6
.BB.LABEL.6_3:	; bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 440
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r5
	ld.bu LOWW(#_g_CurLogicalBlockId)[r5], r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; bb13.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0xFFFFFFFF, r7
	br9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; bb20
	shl 0x00000004, r5
	mov #_g_logicalBlocks, r7
	add r5, r7
	ld.w 0x0000000C[r7], r7
.BB.LABEL.6_6:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 443
	jarl32 _FlsIf_Erase, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 445
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 0
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 448
	movhi HIGHW1(#_g_CurLogicalBlockId), r0, r6
	st.b r5, LOWW(#_g_CurLogicalBlockId)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 449
	movhi HIGHW1(#_g_DownSegIdx), r0, r6
	st.b r5, LOWW(#_g_DownSegIdx)[r6]
.BB.LABEL.6_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 453
	dispose 0x00000000, 0x00000001, [r31]
_RC_ActivationAndRollback:
	.stack _RC_ActivationAndRollback = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 474
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 480
	jmp [r31]
_RC_CheckSVN:
	.stack _RC_CheckSVN = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 500
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/Diag_Callout/RoutineControl.c", 506
	jmp [r31]
	.section .data, data
	.align 4
_g_CrcAddr:
	.ds (8)
	.align 4
_g_CrcAddrEnd:
	.ds (8)
_g_DownBlockStart:
	.ds (2)
_g_DownBlockEnd:
	.ds (2)
_g_DownBlockIdx:
	.ds (1)
