#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Irq.c -oDefaultBuild\Os_Arch_Irq.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_47d8079f66a04b89a72083e103828db1ttdjbvwl.lnx
#@	compiled at Thu Jul 16 13:41:25 2026

	.file "..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Irq.c"

	$reg_mode 22
	.dbl_size 4

	.public _Os_FE_Handler, 128
	.public _Os_Vector_Handler, 1432
	.public _Os_SaveLevelISR1, 4
	.public _Os_IsrNestStack, 4
	.public _Os_ISR1SP, 4
	.public _Os_InterruptInit
	.extern _Os_ExceptionTable
	.extern _Os_FEIntHandler
	.public _Os_InterruptInstall
	.public _Os_Hal_SetIpl
	.public _Os_Hal_GetIpl
	.public _Os_Hal_SuspendInt
	.public _Os_Hal_RestoreInt
	.public _Os_Hal_EnableInterruptSource
	.public _Os_Hal_DisableInterruptSource
	.public _Os_Hal_ClearPendingInterrupt
	.public _Os_Hal_SetPendingInterrupt
	.public _Os_Hal_GetIsrSourceState
	.public _Os_Hal_GetCurrentIrq
	.public _Os_Hal_GetCurrentExc

	.section .text, text
_Os_IntHandler.1:
	.stack _Os_IntHandler.1 = 0
.BB.LABEL.1_1:	; bb1
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 98
	br9 .BB.LABEL.1_1
_Os_InterruptInit:
	.stack _Os_InterruptInit = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 130
	mov #_Os_ExceptionTable, r5
	ldsr r5, 0x00000003, 0x00000001
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 131
	stsr 0x00000005, r5, 0x00000000
	ori 0x00008000, r5, r5
	ldsr r5, 5
	mov 0x00000000, r5
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 136
	mov r5, r6
	shl 0x00000002, r6
	mov #_Os_Vector_Handler, r7
	add r6, r7
	mov #_Os_IntHandler.1, r6
	st.w r6, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.2_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	movea 0x00000166, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 134
	cmp r6, r5
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb7.bb17_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 141
	mov r5, r6
	shl 0x00000002, r6
	mov #_Os_FE_Handler, r7
	add r6, r7
	mov #_Os_FEIntHandler, r6
	st.w r6, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.2_5:	; bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 139
	cmp r6, r5
	bl9 .BB.LABEL.2_4
.BB.LABEL.2_6:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 145
	st23.w r5, 0xFFC00104[r0]
	jmp [r31]
_Os_InterruptInstall:
	.stack _Os_InterruptInstall = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 168
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 176
	andi 0x00001000, r5, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 174
	ld.w 0x00000004[r7], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 173
	ld.bu 0x00000000[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 176
	bz9 .BB.LABEL.3_12
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 178
	andi 0x00000FFF, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 179
	mov r5, r8
	add r8, r8
	movea 0x0000001F, r0, r9
	cmp r9, r5
	bh9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r9
	mov r8, r10
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; bb28
	movea 0xFFFFB000, r0, r10
	mov r8, r9
.BB.LABEL.3_4:	; bb32
	movea 0x00000010, r0, r8
	sub r7, r8
	andi 0x0000000F, r8, r7
	add r9, r10
	ld.hu 0x00000000[r10], r8
	andi 0x0000FFF0, r8, r8
	or r7, r8
	st.h r8, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 180
	mov r5, r7
	add r7, r7
	movea 0x0000001F, r0, r8
	cmp r8, r5
	bh9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; bb32.bb61_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r8
	mov r7, r9
	br9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; bb56
	movea 0xFFFFB000, r0, r9
	mov r7, r8
.BB.LABEL.3_7:	; bb61
	add r8, r9
	ld.hu 0x00000000[r9], r7
	andi 0x0000FFBF, r7, r7
	st.h r7, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 181
	mov r5, r7
	add r7, r7
	movea 0x0000001F, r0, r8
	cmp r8, r5
	bh9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; bb61.bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r8
	mov r7, r9
	br9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; bb80
	movea 0xFFFFB000, r0, r9
	mov r7, r8
.BB.LABEL.3_10:	; bb85
	add r8, r9
	ld.hu 0x00000000[r9], r7
	andi 0x0000FF7F, r7, r7
	st.h r7, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 182
	mov #_Os_Vector_Handler, r7
.BB.LABEL.3_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	shl 0x00000002, r5
	add r5, r7
	st.w r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 190
	jmp [r31]
.BB.LABEL.3_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 186
	andi 0x0000001F, r5, r5
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 187
	shl r5, r7
	not r7, r7
	ld23.w 0xFFC00104[r0], r8
	and r7, r8
	st23.w r8, 0xFFC00104[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 188
	mov #_Os_FE_Handler, r7
	br9 .BB.LABEL.3_11
_Os_Hal_SetIpl:
	.stack _Os_Hal_SetIpl = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 211
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 217
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.bb17_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; bb
	movea 0x00000010, r0, r7
	sub r6, r7
	mov 0x00000001, r5
	shl r6, r5
	add 0xFFFFFFFF, r5
	shl r7, r5
	zxh r5
.BB.LABEL.4_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 221
	ldsr r5, 0x0000000B, 0x00000002
	jmp [r31]
_Os_Hal_GetIpl:
	.stack _Os_Hal_GetIpl = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 247
	stsr 0x0000000B, r5, 0x00000002
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 248
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.bb10_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; entry.if_break_bb_crit_edge
	movea 0x00000010, r0, r6
	br9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 253
	shr 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 252
	add 0x00000001, r6
.BB.LABEL.5_4:	; bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 250
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 260
	sub r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 263
	zxh r10
	jmp [r31]
_Os_Hal_SuspendInt:
	.stack _Os_Hal_SuspendInt = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 286
	stsr 0x00000005, r5, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 287
	andi 0x00000020, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 288
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 290
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 293
	jmp [r31]
_Os_Hal_RestoreInt:
	.stack _Os_Hal_RestoreInt = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 314
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 316
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 318
	stsr 0x00000005, r5, 0x00000000
	movea 0xFFFFFF5F, r0, r6
	and r6, r5
	ldsr r5, 5
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 320
	jmp [r31]
_Os_Hal_EnableInterruptSource:
	.stack _Os_Hal_EnableInterruptSource = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 342
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 347
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 348
	andi 0x00001000, r25, r0
	mov r10, r6
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 350
	andi 0x00000FFF, r25, r5
	add r25, r25
	andi 0x00001FFE, r25, r25
	movea 0x0000001F, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r5
	mov r25, r7
	br9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; bb16
	movea 0xFFFFB000, r0, r7
	mov r25, r5
.BB.LABEL.8_4:	; bb21
	add r5, r7
	ld.hu 0x00000000[r7], r25
	andi 0x0000FF7F, r25, r25
	st.h r25, 0x00000000[r7]
	br9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 354
	andi 0x0000001F, r25, r5
	mov 0x00000001, r7
	shl r5, r7
	not r7, r5
	ld23.w 0xFFC00104[r0], r7
	and r5, r7
	st23.w r7, 0xFFC00104[r0]
.BB.LABEL.8_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 356
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000201, [r31]
_Os_Hal_DisableInterruptSource:
	.stack _Os_Hal_DisableInterruptSource = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 379
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 384
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 385
	andi 0x00001000, r25, r0
	mov r10, r6
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 387
	andi 0x00000FFF, r25, r5
	add r25, r25
	andi 0x00001FFE, r25, r25
	movea 0x0000001F, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r5
	mov r25, r7
	br9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; bb16
	movea 0xFFFFB000, r0, r7
	mov r25, r5
.BB.LABEL.9_4:	; bb21
	add r5, r7
	ld.h 0x00000000[r7], r25
	ori 0x00000080, r25, r25
	st.h r25, 0x00000000[r7]
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 391
	andi 0x0000001F, r25, r5
	mov 0x00000001, r7
	shl r5, r7
	ld23.w 0xFFC00104[r0], r5
	or r7, r5
	st23.w r5, 0xFFC00104[r0]
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 393
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000201, [r31]
_Os_Hal_ClearPendingInterrupt:
	.stack _Os_Hal_ClearPendingInterrupt = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 416
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 421
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 422
	andi 0x00001000, r25, r0
	mov r10, r6
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 424
	andi 0x00000FFF, r25, r5
	add r25, r25
	andi 0x00001FFE, r25, r25
	movea 0x0000001F, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r5
	mov r25, r7
	br9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; bb16
	movea 0xFFFFB000, r0, r7
	mov r25, r5
.BB.LABEL.10_4:	; bb21
	add r5, r7
	ld.hu 0x00000000[r7], r25
	andi 0x0000EFFF, r25, r25
	st.h r25, 0x00000000[r7]
	br9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 428
	andi 0x0000001F, r25, r5
	mov 0x00000001, r7
	shl r5, r7
	ld23.w 0xFFC00108[r0], r5
	or r7, r5
	st23.w r5, 0xFFC00108[r0]
.BB.LABEL.10_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 430
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000201, [r31]
_Os_Hal_SetPendingInterrupt:
	.stack _Os_Hal_SetPendingInterrupt = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 452
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 457
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 458
	andi 0x00001000, r25, r0
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 460
	andi 0x00000FFF, r25, r5
	add r25, r25
	andi 0x00001FFE, r25, r6
	movea 0x0000001F, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r5
	mov r6, r7
	br9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; bb17
	movea 0xFFFFB000, r0, r7
	mov r6, r5
.BB.LABEL.11_4:	; bb22
	add r5, r7
	ld.h 0x00000000[r7], r5
	ori 0x00001000, r5, r5
	st.h r5, 0x00000000[r7]
.BB.LABEL.11_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 462
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000201, [r31]
_Os_Hal_GetIsrSourceState:
	.stack _Os_Hal_GetIsrSourceState = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 485
	andi 0x00001000, r6, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 490
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 492
	andi 0x00000FFF, r6, r5
	add r6, r6
	andi 0x00001FFE, r6, r6
	movea 0x0000001F, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb.bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r5
	mov r6, r7
	br9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; bb15
	movea 0xFFFFB000, r0, r7
	mov r6, r5
.BB.LABEL.12_4:	; bb20
	add r5, r7
	ld.hu 0x00000000[r7], r5
	andi 0x00000080, r5, r0
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_5:	; if_then_bb36
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 494
	jmp [r31]
.BB.LABEL.12_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 499
	andi 0x0000001F, r6, r5
	mov 0x00000001, r6
	shl r5, r6
	ld23.w 0xFFC00104[r0], r5
	tst r6, r5
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 501
	jmp [r31]
.BB.LABEL.12_8:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 505
	jmp [r31]
_Os_Hal_GetCurrentIrq:
	.stack _Os_Hal_GetCurrentIrq = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 530
	stsr 0x0000000D, r5, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 531
	andi 0x00000FFF, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 532
	jmp [r31]
_Os_Hal_GetCurrentExc:
	.stack _Os_Hal_GetCurrentExc = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 557
	stsr 0x0000000E, r10, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 558
	zxb r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 559
	jmp [r31]
	.section .bss, bss
	.align 4
_Os_FE_Handler:
	.ds (128)
	.align 4
_Os_Vector_Handler:
	.ds (1432)
	.align 4
_Os_SaveLevelISR1:
	.ds (4)
	.align 4
_Os_IsrNestStack:
	.ds (4)
	.align 4
_Os_ISR1SP:
	.ds (4)
