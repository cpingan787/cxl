#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Processor.c -oDefaultBuild\Os_Arch_Processor.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_c8628bc823c442aa88b5d48cce286ff4gcebk50h.xz1
#@	compiled at Thu Jul 16 13:41:27 2026

	.file "..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Processor.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_SCB_FA_Inf
	.extern _Os_SystemStack_Inf
	.extern _Os_TaskCfg
	.public _Os_ArchTempSp, 4
	.public _Os_TaskCBExt, 4
	.public _Os_Hal_FirstEnterTask
	.extern _Os_TaskErrBack
	.public _Os_Hal_StartScheduler
	.public _OS_GetSystemStackPointer
	.extern _Os_Hal_GetCoreID
	.public _OS_GetTaskStackPointer
	.public _OS_SaveTaskStackPointer
	.public _Os_Hal_CmpSwapW
	.extern _Os_Hal_SuspendInt
	.extern _Os_Hal_RestoreInt

	.section .text, text
_Os_Kernel_GetSysRunningTaskID.1:
	.stack _Os_Kernel_GetSysRunningTaskID.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 177
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000003C), r0, r5
	ld.w LOWW(#_Os_SCB_FA_Inf+0x0000003C)[r5], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 178
	jmp [r31]
_Os_Hal_FirstEnterTask:
	.stack _Os_Hal_FirstEnterTask = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 85
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 89
	shl 0x00000005, r5
	mov #_Os_TaskCfg, r7
	add r5, r7
	ld.w 0x0000000C[r7], r5
	mov 0xFFFFFFFC, r8
	and r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 96
	mov #_Os_TaskErrBack, r8
	st.w r8, 0xFFFFFF8C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 97
	ld.w 0x00000008[r7], r7
	st.w r7, 0xFFFFFF88[r5]
	ori 0x00008000, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 112
	st.w r7, 0xFFFFFF84[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 127
	movhi HIGHW1(#_Os_TaskCBExt), r0, r7
	ld.w LOWW(#_Os_TaskCBExt)[r7], r7
	shl 0x00000002, r6
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 96
	movea 0xFFFFFF84, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 127
	st.w r5, 0x00000000[r7]
	jmp [r31]
_Os_Hal_StartScheduler:
	.stack _Os_Hal_StartScheduler = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 152
	._line_top inline_asm
    trap 0x10;
	._line_end inline_asm
	jmp [r31]
_OS_GetSystemStackPointer:
	.stack _OS_GetSystemStackPointer = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 171
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 174
	jarl32 _Os_Hal_GetCoreID, r31
	shl 0x00000002, r10
	mov #_Os_SystemStack_Inf, r5
	add r10, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000000[r5], r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	dispose 0x00000000, 0x00000001, [r31]
_OS_GetTaskStackPointer:
	.stack _OS_GetTaskStackPointer = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 193
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 195
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	shl 0x00000002, r10
	add r10, r25
	ld.w 0x00000000[r25], r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	dispose 0x00000000, 0x00000201, [r31]
_OS_SaveTaskStackPointer:
	.stack _OS_SaveTaskStackPointer = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 213
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 216
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	shl 0x00000002, r10
	add r10, r25
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	ld.w LOWW(#_Os_ArchTempSp)[r5], r5
	st.w r5, 0x00000000[r25]
	dispose 0x00000000, 0x00000201, [r31]
_Os_Hal_CmpSwapW:
	.stack _Os_Hal_CmpSwapW = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 241
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 246
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 247
	ld.w 0x00000000[r25], r5
	cmp r5, r26
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 249
	st.w r27, 0x00000000[r25]
	mov 0x00000000, r25
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 252
	mov r10, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 254
	mov r25, r10
	dispose 0x00000000, 0x00000381, [r31]
	.section .bss, bss
	.align 4
_Os_ArchTempSp:
	.ds (4)
	.align 4
_Os_TaskCBExt:
	.ds (4)
