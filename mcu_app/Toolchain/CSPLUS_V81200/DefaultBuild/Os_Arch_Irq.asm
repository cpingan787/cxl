#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Irq.c -oDefaultBuild\Os_Arch_Irq.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_cbff0e2b5d1241f78c45d1675402100dpnzipyrh.g5c
#@	compiled at Fri Mar 27 09:50:16 2026

	.file "..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Irq.c"

	$reg_mode 32
	.dbl_size 8

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 98
	br9 .BB.LABEL.1_1
_Os_InterruptInit:
	.stack _Os_InterruptInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 130
	mov #_Os_ExceptionTable, r2
	ldsr r2, 0x00000003, 0x00000001
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 131
	stsr 0x00000005, r2, 0x00000000
	ori 0x00008000, r2, r2
	ldsr r2, 5
	mov 0x00000000, r2
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 136
	mov r2, r5
	shl 0x00000002, r5
	mov #_Os_Vector_Handler, r6
	add r5, r6
	mov #_Os_IntHandler.1, r5
	st.w r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.2_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	movea 0x00000166, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 134
	cmp r5, r2
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb7.bb17_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 141
	mov r2, r5
	shl 0x00000002, r5
	mov #_Os_FE_Handler, r6
	add r5, r6
	mov #_Os_FEIntHandler, r5
	st.w r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.2_5:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 139
	cmp r5, r2
	bl9 .BB.LABEL.2_4
.BB.LABEL.2_6:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 145
	st23.w r2, 0xFFC00104[r0]
	jmp [r31]
_Os_InterruptInstall:
	.stack _Os_InterruptInstall = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 168
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 176
	andi 0x00001000, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 174
	ld.w 0x00000004[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 173
	ld.bu 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 176
	bz9 .BB.LABEL.3_12
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 178
	andi 0x00000FFF, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 179
	mov r2, r7
	add r7, r7
	movea 0x0000001F, r0, r8
	cmp r8, r2
	bh9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r8
	mov r7, r9
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; bb28
	movea 0xFFFFB000, r0, r9
	mov r7, r8
.BB.LABEL.3_4:	; bb32
	movea 0x00000010, r0, r7
	sub r6, r7
	andi 0x0000000F, r7, r6
	add r8, r9
	ld.hu 0x00000000[r9], r7
	andi 0x0000FFF0, r7, r7
	or r6, r7
	st.h r7, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 180
	mov r2, r6
	add r6, r6
	movea 0x0000001F, r0, r7
	cmp r7, r2
	bh9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; bb32.bb61_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r7
	mov r6, r8
	br9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; bb56
	movea 0xFFFFB000, r0, r8
	mov r6, r7
.BB.LABEL.3_7:	; bb61
	add r7, r8
	ld.hu 0x00000000[r8], r6
	andi 0x0000FFBF, r6, r6
	st.h r6, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 181
	mov r2, r6
	add r6, r6
	movea 0x0000001F, r0, r7
	cmp r7, r2
	bh9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; bb61.bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r7
	mov r6, r8
	br9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; bb80
	movea 0xFFFFB000, r0, r8
	mov r6, r7
.BB.LABEL.3_10:	; bb85
	add r7, r8
	ld.hu 0x00000000[r8], r6
	andi 0x0000FF7F, r6, r6
	st.h r6, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 182
	mov #_Os_Vector_Handler, r6
.BB.LABEL.3_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	shl 0x00000002, r2
	add r2, r6
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 190
	jmp [r31]
.BB.LABEL.3_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 186
	andi 0x0000001F, r2, r2
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 187
	shl r2, r6
	not r6, r6
	ld23.w 0xFFC00104[r0], r7
	and r6, r7
	st23.w r7, 0xFFC00104[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 188
	mov #_Os_FE_Handler, r6
	br9 .BB.LABEL.3_11
_Os_Hal_SetIpl:
	.stack _Os_Hal_SetIpl = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 211
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 217
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.bb17_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; bb
	movea 0x00000010, r0, r5
	sub r6, r5
	mov 0x00000001, r2
	shl r6, r2
	add 0xFFFFFFFF, r2
	shl r5, r2
	zxh r2
.BB.LABEL.4_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 221
	ldsr r2, 0x0000000B, 0x00000002
	jmp [r31]
_Os_Hal_GetIpl:
	.stack _Os_Hal_GetIpl = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 247
	stsr 0x0000000B, r2, 0x00000002
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 248
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.bb10_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; entry.if_break_bb_crit_edge
	movea 0x00000010, r0, r5
	br9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 253
	shr 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 252
	add 0x00000001, r5
.BB.LABEL.5_4:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 250
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 260
	sub r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 263
	zxh r10
	jmp [r31]
_Os_Hal_SuspendInt:
	.stack _Os_Hal_SuspendInt = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 286
	stsr 0x00000005, r2, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 287
	andi 0x00000020, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 288
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 290
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 293
	jmp [r31]
_Os_Hal_RestoreInt:
	.stack _Os_Hal_RestoreInt = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 314
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 316
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 318
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 320
	jmp [r31]
_Os_Hal_EnableInterruptSource:
	.stack _Os_Hal_EnableInterruptSource = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 342
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 347
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 348
	andi 0x00001000, r20, r0
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 350
	andi 0x00000FFF, r20, r2
	add r20, r20
	andi 0x00001FFE, r20, r20
	movea 0x0000001F, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r2
	mov r20, r5
	br9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; bb16
	movea 0xFFFFB000, r0, r5
	mov r20, r2
.BB.LABEL.8_4:	; bb21
	add r2, r5
	ld.hu 0x00000000[r5], r20
	andi 0x0000FF7F, r20, r20
	st.h r20, 0x00000000[r5]
	br9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 354
	andi 0x0000001F, r20, r2
	mov 0x00000001, r5
	shl r2, r5
	not r5, r2
	ld23.w 0xFFC00104[r0], r5
	and r2, r5
	st23.w r5, 0xFFC00104[r0]
.BB.LABEL.8_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 356
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000041, [r31]
_Os_Hal_DisableInterruptSource:
	.stack _Os_Hal_DisableInterruptSource = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 379
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 384
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 385
	andi 0x00001000, r20, r0
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 387
	andi 0x00000FFF, r20, r2
	add r20, r20
	andi 0x00001FFE, r20, r20
	movea 0x0000001F, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r2
	mov r20, r5
	br9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; bb16
	movea 0xFFFFB000, r0, r5
	mov r20, r2
.BB.LABEL.9_4:	; bb21
	add r2, r5
	ld.h 0x00000000[r5], r20
	ori 0x00000080, r20, r20
	st.h r20, 0x00000000[r5]
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 391
	andi 0x0000001F, r20, r2
	mov 0x00000001, r5
	shl r2, r5
	ld23.w 0xFFC00104[r0], r2
	or r5, r2
	st23.w r2, 0xFFC00104[r0]
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 393
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000041, [r31]
_Os_Hal_ClearPendingInterrupt:
	.stack _Os_Hal_ClearPendingInterrupt = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 416
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 421
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 422
	andi 0x00001000, r20, r0
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 424
	andi 0x00000FFF, r20, r2
	add r20, r20
	andi 0x00001FFE, r20, r20
	movea 0x0000001F, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r2
	mov r20, r5
	br9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; bb16
	movea 0xFFFFB000, r0, r5
	mov r20, r2
.BB.LABEL.10_4:	; bb21
	add r2, r5
	ld.hu 0x00000000[r5], r20
	andi 0x0000EFFF, r20, r20
	st.h r20, 0x00000000[r5]
	br9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 428
	andi 0x0000001F, r20, r2
	mov 0x00000001, r5
	shl r2, r5
	ld23.w 0xFFC00108[r0], r2
	or r5, r2
	st23.w r2, 0xFFC00108[r0]
.BB.LABEL.10_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 430
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000041, [r31]
_Os_Hal_SetPendingInterrupt:
	.stack _Os_Hal_SetPendingInterrupt = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 452
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 457
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 458
	andi 0x00001000, r20, r0
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 460
	andi 0x00000FFF, r20, r2
	add r20, r20
	andi 0x00001FFE, r20, r5
	movea 0x0000001F, r0, r6
	cmp r6, r2
	bh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r2
	mov r5, r6
	br9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; bb17
	movea 0xFFFFB000, r0, r6
	mov r5, r2
.BB.LABEL.11_4:	; bb22
	add r2, r6
	ld.h 0x00000000[r6], r2
	ori 0x00001000, r2, r2
	st.h r2, 0x00000000[r6]
.BB.LABEL.11_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 462
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000041, [r31]
_Os_Hal_GetIsrSourceState:
	.stack _Os_Hal_GetIsrSourceState = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 485
	andi 0x00001000, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 490
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 492
	andi 0x00000FFF, r6, r2
	add r6, r6
	andi 0x00001FFE, r6, r5
	movea 0x0000001F, r0, r6
	cmp r6, r2
	bh9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb.bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0xFFFEEA00, r2
	mov r5, r6
	br9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; bb15
	movea 0xFFFFB000, r0, r6
	mov r5, r2
.BB.LABEL.12_4:	; bb20
	add r2, r6
	ld.hu 0x00000000[r6], r2
	andi 0x00000080, r2, r0
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_5:	; if_then_bb36
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 494
	jmp [r31]
.BB.LABEL.12_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 499
	andi 0x0000001F, r6, r2
	mov 0x00000001, r5
	shl r2, r5
	ld23.w 0xFFC00104[r0], r2
	tst r5, r2
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 501
	jmp [r31]
.BB.LABEL.12_8:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 505
	jmp [r31]
_Os_Hal_GetCurrentIrq:
	.stack _Os_Hal_GetCurrentIrq = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 530
	stsr 0x0000000D, r2, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 531
	andi 0x00000FFF, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 532
	jmp [r31]
_Os_Hal_GetCurrentExc:
	.stack _Os_Hal_GetCurrentExc = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 557
	stsr 0x0000000E, r10, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 558
	zxb r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Irq.c", 559
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
