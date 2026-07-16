#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Extend\src\Os_Extend.c -oDefaultBuild\Os_Extend.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_57f34dc60508419ebd5f7fdd28e7639aokfoonlz.cbd
#@	compiled at Thu Jul 16 13:41:40 2026

	.file "..\..\Bsw\SystemServices\Os\Extend\src\Os_Extend.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_SCB_FA_Inf
	.extern _Os_TaskIdRange
	.extern _Os_TaskCfg
	.extern _Os_IsrIdRange
	.extern _Os_ISR2Stack
	.extern _Os_IsrCfg
	.public _OSGetVersionInfo
	.public _OSGetStackUsage
	.extern _Os_Hal_SuspendInt
	.extern _Os_Hal_RestoreInt
	.public _OSCheckISRSource
	.public _OSCheckCPUInformation
	.extern _Os_Hal_CheckCPUInformation

	.section .text, text
_Os_GetCurrentContext.1:
	.stack _Os_GetCurrentContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 135
	mov #_Os_SCB_FA_Inf, r10
	jmp [r31]
_OSGetVersionInfo:
	.stack _OSGetVersionInfo = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 46
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 49
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 0
	movea 0x0000003E, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 55
	st.h r5, 0x00000000[r6]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 56
	st.h r5, 0x00000002[r6]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 58
	st.b r5, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 59
	st.b r0, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 60
	st.b r0, 0x00000007[r6]
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 62
	jmp [r31]
_OSGetStackUsage:
	.stack _OSGetStackUsage = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 67
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 74
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 78
	cmp 0x00000000, r25
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 0
	add 0xFFFFFFFF, r25
	cmp 0x00000000, r25
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; entry
	cmp 0x00000001, r25
	bz9 .BB.LABEL.3_10
.BB.LABEL.3_3:	; entry.switch_break_bb_crit_edge
	mov 0x00000000, r5
	mov r5, r26
	mov r5, r25
	br9 .BB.LABEL.3_15
.BB.LABEL.3_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 81
	ld.w 0x00000008[r10], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 82
	ld.w 0x00000000[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 81
	ld.w 0x00000004[r5], r25
	mov 0x00000001, r5
	br9 .BB.LABEL.3_15
.BB.LABEL.3_5:	; switch_clause_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 89
	ld.hu 0x00000026[r10], r5
	mov r5, r25
	mul 0x00000018, r25, r0
	mov #_Os_TaskIdRange, r6
	add r25, r6
	ld.w 0x00000000[r6], r25
	cmp r25, r26
	blt9 .BB.LABEL.3_8
.BB.LABEL.3_6:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 0
	mul 0x00000018, r5, r0
	mov #_Os_TaskIdRange, r25
	add r5, r25
	ld.w 0x00000004[r25], r5
	cmp r5, r26
	bge9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; bb.if_break_bb_crit_edge
	mov 0x00000001, r5
	br9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb
	mov 0x00000000, r5
.BB.LABEL.3_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 102
	shl 0x00000005, r26
	mov #_Os_TaskCfg, r25
	add r26, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 103
	ld.w 0x0000000C[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 102
	ld.w 0x00000010[r25], r25
	br9 .BB.LABEL.3_15
.BB.LABEL.3_10:	; switch_clause_bb70
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 112
	mov r26, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r25
	add r5, r25
	ld.hu 0x00000008[r25], r5
	mul 0x00000018, r5, r0
	mov #_Os_IsrIdRange, r25
	add r5, r25
	ld.w 0x00000010[r25], r5
	cmp r5, r26
	blt9 .BB.LABEL.3_13
.BB.LABEL.3_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 0
	mov r26, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r25
	add r5, r25
	ld.hu 0x00000008[r25], r5
	mul 0x00000018, r5, r0
	mov #_Os_IsrIdRange, r25
	add r5, r25
	ld.w 0x00000014[r25], r5
	cmp r5, r26
	bge9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; bb85.if_break_bb115_crit_edge
	mov 0x00000001, r5
	br9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; if_then_bb114
	mov 0x00000000, r5
.BB.LABEL.3_14:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 117
	shl 0x00000003, r26
	mov #_Os_ISR2Stack, r25
	add r26, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 118
	ld.w 0x00000000[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 117
	ld.w 0x00000004[r25], r25
.BB.LABEL.3_15:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 129
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_21
.BB.LABEL.3_16:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 131
	jarl32 _Os_Hal_SuspendInt, r31
	br9 .BB.LABEL.3_19
.BB.LABEL.3_17:	; bb135
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 144
	ld.w 0x00000000[r25], r5
	mov 0xCCCCCCCC, r6
	cmp r6, r5
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_18:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 0
	add 0x00000004, r25
.BB.LABEL.3_19:	; bb146
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 141
	cmp r26, r25
	bl9 .BB.LABEL.3_17
.BB.LABEL.3_20:	; bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 154
	mov r10, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 151
	sub r25, r26
	mov r26, r10
	sar 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 154
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.3_21:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 158
	dispose 0x00000000, 0x00000301, [r31]
_OSCheckISRSource:
	.stack _OSCheckISRSource = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 165
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 191
	jmp [r31]
_OSCheckCPUInformation:
	.stack _OSCheckCPUInformation = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 197
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Extend.c", 200
	jarl32 _Os_Hal_CheckCPUInformation, r31
	dispose 0x00000000, 0x00000001, [r31]
