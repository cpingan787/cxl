#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_Intvet.c -oDefaultBuild\Os_Intvet.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_19ff9a34e88a4db38dfbd31a120ca1ecnhw1pnzj.3wj
#@	compiled at Thu Jul 16 13:41:33 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_Intvet.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_SCB_FA_Inf
	.extern _Os_IsrNestStack
	.extern _Os_ISR2Stack
	.extern _Os_IsrCfg
	.extern _Os_ArchTempSp
	.extern _Os_TaskCBExt
	.public _Os_ISR_SystemTimer_Core_0_Handler0
	.extern _Os_EnterISR2
	.extern _Os_ArchSystemTimerCore0
	.extern _Os_ExitISR2
	.extern _Os_ISR2Exit
	.public _Os_ISR_RCAN0ERR_IRQ_Handler
	.extern _ISR_RCAN0ERR_IRQ_Handler
	.public _Os_ISR_RCAN0TRX_IRQ_Handler
	.extern _ISR_RCAN0TRX_IRQ_Handler
	.public _Os_ISR_RCANGRECC0_IRQ_Handler
	.extern _ISR_RCANGRECC0_IRQ_Handler
	.public _Os_ISR_WDTA1_IRQ_Handler
	.extern _ISR_WDTA1_IRQ_Handler

	.section .text, text
_Os_Kernel_GetSysRunningTaskID.1:
	.stack _Os_Kernel_GetSysRunningTaskID.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 177
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000003C), r0, r5
	ld.w LOWW(#_Os_SCB_FA_Inf+0x0000003C)[r5], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 178
	jmp [r31]
_Os_Kernel_GetIntNestNumISR2.1:
	.stack _Os_Kernel_GetIntNestNumISR2.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 201
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000064), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 202
	ld.bu LOWW(#_Os_SCB_FA_Inf+0x00000064)[r5], r10
	jmp [r31]
_Os_ISR_SystemTimer_Core_0_Handler0:
	.stack _Os_ISR_SystemTimer_Core_0_Handler0 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 56
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 59
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.3_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r25
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	ld.w LOWW(#_Os_ArchTempSp)[r5], r5
	st.w r5, 0x00000000[r25]
	movhi HIGHW1(#_Os_ISR2Stack), r0, r5
	ld.w LOWW(#_Os_ISR2Stack)[r5], r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000000, r6
	jarl32 _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000010), r0, r5
	ld.bu LOWW(#_Os_IsrCfg+0x00000010)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb26
	stsr 0x00000005, r5, 0x00000000
	movea 0xFFFFFF5F, r0, r6
	and r6, r5
	ldsr r5, 5
.BB.LABEL.3_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 62
	jarl32 _Os_ArchSystemTimerCore0, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 65
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	mov 0x00000000, r6
	jarl32 _Os_ExitISR2, r31
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.3_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r25
	ld.w 0x00000000[r25], r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	jarl32 _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 68
	dispose 0x00000000, 0x00000201, [r31]
_Os_ISR_RCAN0ERR_IRQ_Handler:
	.stack _Os_ISR_RCAN0ERR_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 74
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 77
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.4_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r25
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	ld.w LOWW(#_Os_ArchTempSp)[r5], r5
	st.w r5, 0x00000000[r25]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000008), r0, r5
	ld.w LOWW(#_Os_ISR2Stack+0x00000008)[r5], r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000001, r6
	jarl32 _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000024), r0, r5
	ld.bu LOWW(#_Os_IsrCfg+0x00000024)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb26
	stsr 0x00000005, r5, 0x00000000
	movea 0xFFFFFF5F, r0, r6
	and r6, r5
	ldsr r5, 5
.BB.LABEL.4_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 79
	jarl32 _ISR_RCAN0ERR_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 82
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	mov 0x00000001, r6
	jarl32 _Os_ExitISR2, r31
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.4_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r25
	ld.w 0x00000000[r25], r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	jarl32 _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 85
	dispose 0x00000000, 0x00000201, [r31]
_Os_ISR_RCAN0TRX_IRQ_Handler:
	.stack _Os_ISR_RCAN0TRX_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 90
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 93
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.5_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r25
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	ld.w LOWW(#_Os_ArchTempSp)[r5], r5
	st.w r5, 0x00000000[r25]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000010), r0, r5
	ld.w LOWW(#_Os_ISR2Stack+0x00000010)[r5], r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000002, r6
	jarl32 _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000038), r0, r5
	ld.bu LOWW(#_Os_IsrCfg+0x00000038)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb26
	stsr 0x00000005, r5, 0x00000000
	movea 0xFFFFFF5F, r0, r6
	and r6, r5
	ldsr r5, 5
.BB.LABEL.5_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 95
	jarl32 _ISR_RCAN0TRX_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 98
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	mov 0x00000002, r6
	jarl32 _Os_ExitISR2, r31
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.5_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r25
	ld.w 0x00000000[r25], r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	jarl32 _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 101
	dispose 0x00000000, 0x00000201, [r31]
_Os_ISR_RCANGRECC0_IRQ_Handler:
	.stack _Os_ISR_RCANGRECC0_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 106
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 109
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.6_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r25
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	ld.w LOWW(#_Os_ArchTempSp)[r5], r5
	st.w r5, 0x00000000[r25]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000018), r0, r5
	ld.w LOWW(#_Os_ISR2Stack+0x00000018)[r5], r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000003, r6
	jarl32 _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x0000004C), r0, r5
	ld.bu LOWW(#_Os_IsrCfg+0x0000004C)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb26
	stsr 0x00000005, r5, 0x00000000
	movea 0xFFFFFF5F, r0, r6
	and r6, r5
	ldsr r5, 5
.BB.LABEL.6_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 111
	jarl32 _ISR_RCANGRECC0_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 114
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	mov 0x00000003, r6
	jarl32 _Os_ExitISR2, r31
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.6_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r25
	ld.w 0x00000000[r25], r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	jarl32 _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 117
	dispose 0x00000000, 0x00000201, [r31]
_Os_ISR_WDTA1_IRQ_Handler:
	.stack _Os_ISR_WDTA1_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 122
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 125
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.7_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r25
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	ld.w LOWW(#_Os_ArchTempSp)[r5], r5
	st.w r5, 0x00000000[r25]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000020), r0, r5
	ld.w LOWW(#_Os_ISR2Stack+0x00000020)[r5], r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000004, r6
	jarl32 _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000060), r0, r5
	ld.bu LOWW(#_Os_IsrCfg+0x00000060)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb26
	stsr 0x00000005, r5, 0x00000000
	movea 0xFFFFFF5F, r0, r6
	and r6, r5
	ldsr r5, 5
.BB.LABEL.7_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 127
	jarl32 _ISR_WDTA1_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 130
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	mov 0x00000004, r6
	jarl32 _Os_ExitISR2, r31
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r25
	jarl32 _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r5
	ld.w LOWW(#_Os_IsrNestStack)[r5], r25
	jarl32 _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.7_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r25
	ld.w 0x00000000[r25], r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	jarl32 _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Config/BSW_Config/Os_Intvet.c", 133
	dispose 0x00000000, 0x00000201, [r31]
