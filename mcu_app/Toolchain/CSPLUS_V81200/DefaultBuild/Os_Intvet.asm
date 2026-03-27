#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_Intvet.c -oDefaultBuild\Os_Intvet.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_09a0e99508f5423988aae6ff96936be6umgvfinv.x0d
#@	compiled at Fri Mar 27 09:50:20 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_Intvet.c"

	$reg_mode 32
	.dbl_size 8

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
	.public _Os_ISR_RCAN1ERR_IRQ_Handler
	.extern _ISR_RCAN1ERR_IRQ_Handler
	.public _Os_ISR_RCAN1TRX_IRQ_Handler
	.extern _ISR_RCAN1TRX_IRQ_Handler
	.public _Os_ISR_RCANGRECC0_IRQ_Handler
	.extern _ISR_RCANGRECC0_IRQ_Handler
	.public _Os_ISR_ADCA0I1_IRQ_Handler
	.extern _ISR_ADCA0I1_IRQ_Handler
	.public _Os_ISR_ADCA1I1_IRQ_Handler
	.extern _ISR_ADCA1I1_IRQ_Handler
	.public _Os_ISR_TAUJ0I0_IRQ_Handler
	.extern _ISR_TAUJ0I0_IRQ_Handler
	.public _Os_ISR_TAUD0I9_IRQ_Handler
	.extern _ISR_TAUD0I9_IRQ_Handler
	.public _Os_ISR_TAUB0I12_IRQ_Handler
	.extern _ISR_TAUB0I12_IRQ_Handler
	.public _Os_ISR_TAUB0I8_IRQ_Handler
	.extern _ISR_TAUB0I8_IRQ_Handler
	.public _Os_ISR_TAUB0I9_IRQ_Handler
	.extern _ISR_TAUB0I9_IRQ_Handler
	.public _Os_ISR_P1_IRQ_Handler
	.extern _ISR_P1_IRQ_Handler
	.public _Os_ISR_P2_IRQ_Handler
	.extern _ISR_P2_IRQ_Handler
	.public _Os_ISR_P5_IRQ_Handler
	.extern _ISR_P5_IRQ_Handler
	.public _Os_ISR_P6_IRQ_Handler
	.extern _ISR_P6_IRQ_Handler
	.public _Os_ISR_P7_IRQ_Handler
	.extern _ISR_P7_IRQ_Handler
	.public _Os_ISR_P9_IRQ_Handler
	.extern _ISR_P9_IRQ_Handler
	.public _Os_ISR_P14_IRQ_Handler
	.extern _ISR_P14_IRQ_Handler
	.public _Os_ISR_RLIN34TX0_IRQ_Handler
	.extern _ISR_RLIN34TX0_IRQ_Handler
	.public _Os_ISR_RLIN34RX1_IRQ_Handler
	.extern _ISR_RLIN34RX1_IRQ_Handler
	.public _Os_ISR_RLIN34ERR2_IRQ_Handler
	.extern _ISR_RLIN34ERR2_IRQ_Handler
	.public _Os_ISR_RLIN35TX0_IRQ_Handler
	.extern _ISR_RLIN35TX0_IRQ_Handler
	.public _Os_ISR_RLIN35RX1_IRQ_Handler
	.extern _ISR_RLIN35RX1_IRQ_Handler
	.public _Os_ISR_RLIN35ERR2_IRQ_Handler
	.extern _ISR_RLIN35ERR2_IRQ_Handler
	.public _Os_ISR_RIIC0TI_IRQ_Handler
	.extern _ISR_RIIC0TI_IRQ_Handler
	.public _Os_ISR_RIIC0EE_IRQ_Handler
	.extern _ISR_RIIC0EE_IRQ_Handler
	.public _Os_ISR_RIIC0RI_IRQ_Handler
	.extern _ISR_RIIC0RI_IRQ_Handler
	.public _Os_ISR_RIIC0TEI_IRQ_Handler
	.extern _ISR_RIIC0TEI_IRQ_Handler

	.section .text, text
_Os_Kernel_GetSysRunningTaskID.1:
	.stack _Os_Kernel_GetSysRunningTaskID.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 177
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000003C), r0, r2
	ld.w LOWW(#_Os_SCB_FA_Inf+0x0000003C)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 178
	jmp [r31]
_Os_Kernel_GetIntNestNumISR2.1:
	.stack _Os_Kernel_GetIntNestNumISR2.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 201
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000064), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 202
	ld.bu LOWW(#_Os_SCB_FA_Inf+0x00000064)[r2], r10
	jmp [r31]
_Os_ISR_SystemTimer_Core_0_Handler0:
	.stack _Os_ISR_SystemTimer_Core_0_Handler0 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 56
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 59
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.3_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack), r0, r2
	ld.w LOWW(#_Os_ISR2Stack)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000000, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000010), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000010)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.3_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 62
	jarl _Os_ArchSystemTimerCore0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 65
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000000, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.3_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 68
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RCAN1ERR_IRQ_Handler:
	.stack _Os_ISR_RCAN1ERR_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 74
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 77
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.4_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000008), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000008)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000001, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000024), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000024)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.4_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 79
	jarl _ISR_RCAN1ERR_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 82
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000001, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.4_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 85
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RCAN1TRX_IRQ_Handler:
	.stack _Os_ISR_RCAN1TRX_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 90
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 93
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.5_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000010), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000010)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000002, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000038), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000038)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.5_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 95
	jarl _ISR_RCAN1TRX_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 98
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000002, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.5_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 101
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RCANGRECC0_IRQ_Handler:
	.stack _Os_ISR_RCANGRECC0_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 106
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 109
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.6_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000018), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000018)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000003, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x0000004C), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x0000004C)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.6_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 111
	jarl _ISR_RCANGRECC0_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 114
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000003, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.6_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 117
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_ADCA0I1_IRQ_Handler:
	.stack _Os_ISR_ADCA0I1_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 122
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 125
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.7_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000020), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000020)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000004, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000060), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000060)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.7_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 127
	jarl _ISR_ADCA0I1_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 130
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000004, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.7_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 133
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_ADCA1I1_IRQ_Handler:
	.stack _Os_ISR_ADCA1I1_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 138
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 141
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.8_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000028), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000028)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000005, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000074), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000074)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.8_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 143
	jarl _ISR_ADCA1I1_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 146
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000005, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.8_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 149
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_TAUJ0I0_IRQ_Handler:
	.stack _Os_ISR_TAUJ0I0_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 154
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 157
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.9_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000030), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000030)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000006, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000088), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000088)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.9_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 159
	jarl _ISR_TAUJ0I0_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 162
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000006, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.9_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 165
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_TAUD0I9_IRQ_Handler:
	.stack _Os_ISR_TAUD0I9_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 170
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 173
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.10_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000038), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000038)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000007, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x0000009C), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x0000009C)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.10_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 175
	jarl _ISR_TAUD0I9_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 178
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000007, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.10_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 181
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_TAUB0I12_IRQ_Handler:
	.stack _Os_ISR_TAUB0I12_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 186
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 189
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.11_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000040), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000040)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000008, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000000B0), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000000B0)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.11_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 191
	jarl _ISR_TAUB0I12_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 194
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000008, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.11_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 197
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_TAUB0I8_IRQ_Handler:
	.stack _Os_ISR_TAUB0I8_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 202
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 205
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.12_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000048), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000048)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x00000009, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000000C4), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000000C4)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.12_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 207
	jarl _ISR_TAUB0I8_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 210
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x00000009, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_7
.BB.LABEL.12_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.12_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 213
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_TAUB0I9_IRQ_Handler:
	.stack _Os_ISR_TAUB0I9_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 218
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 221
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.13_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000050), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000050)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x0000000A, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000000D8), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000000D8)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.13_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 223
	jarl _ISR_TAUB0I9_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 226
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x0000000A, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.13_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 229
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_P1_IRQ_Handler:
	.stack _Os_ISR_P1_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 234
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 237
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.14_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000058), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000058)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x0000000B, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000000EC), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000000EC)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.14_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 239
	jarl _ISR_P1_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 242
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x0000000B, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.14_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 245
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_P2_IRQ_Handler:
	.stack _Os_ISR_P2_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 250
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 253
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.15_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000060), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000060)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x0000000C, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000100), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000100)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.15_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 255
	jarl _ISR_P2_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 258
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x0000000C, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_7
.BB.LABEL.15_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.15_8
.BB.LABEL.15_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.15_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 261
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_P5_IRQ_Handler:
	.stack _Os_ISR_P5_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 266
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 269
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.16_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000068), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000068)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x0000000D, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000114), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000114)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.16_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 271
	jarl _ISR_P5_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 274
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x0000000D, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.16_8
.BB.LABEL.16_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.16_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 277
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_P6_IRQ_Handler:
	.stack _Os_ISR_P6_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 282
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 285
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.17_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000070), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000070)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x0000000E, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000128), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000128)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.17_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 287
	jarl _ISR_P6_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 290
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x0000000E, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.17_8
.BB.LABEL.17_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.17_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 293
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_P7_IRQ_Handler:
	.stack _Os_ISR_P7_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 298
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 301
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.18_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000078), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000078)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	mov 0x0000000F, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x0000013C), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x0000013C)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.18_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 303
	jarl _ISR_P7_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 306
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	mov 0x0000000F, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.18_8
.BB.LABEL.18_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.18_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 309
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_P9_IRQ_Handler:
	.stack _Os_ISR_P9_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 314
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 317
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.19_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000080), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000080)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000010, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000150), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000150)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.19_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 319
	jarl _ISR_P9_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 322
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000010, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_7
.BB.LABEL.19_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.19_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 325
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_P14_IRQ_Handler:
	.stack _Os_ISR_P14_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 330
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 333
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.20_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000088), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000088)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000011, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000164), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000164)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.20_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 335
	jarl _ISR_P14_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 338
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000011, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.20_8
.BB.LABEL.20_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.20_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 341
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RLIN34TX0_IRQ_Handler:
	.stack _Os_ISR_RLIN34TX0_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 346
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 349
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.21_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000090), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000090)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000012, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000178), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000178)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.21_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 351
	jarl _ISR_RLIN34TX0_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 354
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000012, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.21_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 357
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RLIN34RX1_IRQ_Handler:
	.stack _Os_ISR_RLIN34RX1_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 362
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 365
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.22_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x00000098), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x00000098)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000013, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x0000018C), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x0000018C)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.22_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 367
	jarl _ISR_RLIN34RX1_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 370
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000013, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.22_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 373
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RLIN34ERR2_IRQ_Handler:
	.stack _Os_ISR_RLIN34ERR2_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 378
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 381
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.23_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000A0), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000A0)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000014, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000001A0), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000001A0)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.23_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 383
	jarl _ISR_RLIN34ERR2_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 386
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000014, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.23_7
.BB.LABEL.23_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.23_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 389
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RLIN35TX0_IRQ_Handler:
	.stack _Os_ISR_RLIN35TX0_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 394
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 397
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.24_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000A8), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000A8)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000015, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000001B4), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000001B4)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.24_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 399
	jarl _ISR_RLIN35TX0_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 402
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000015, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.24_7
.BB.LABEL.24_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.24_8
.BB.LABEL.24_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.24_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 405
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RLIN35RX1_IRQ_Handler:
	.stack _Os_ISR_RLIN35RX1_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 410
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 413
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.25_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000B0), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000B0)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000016, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000001C8), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000001C8)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_5
.BB.LABEL.25_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.25_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 415
	jarl _ISR_RLIN35RX1_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 418
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000016, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_7
.BB.LABEL.25_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.25_8
.BB.LABEL.25_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.25_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 421
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RLIN35ERR2_IRQ_Handler:
	.stack _Os_ISR_RLIN35ERR2_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 426
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 429
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.26_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000B8), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000B8)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000017, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000001DC), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000001DC)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_5
.BB.LABEL.26_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.26_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 431
	jarl _ISR_RLIN35ERR2_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 434
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000017, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_7
.BB.LABEL.26_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.26_8
.BB.LABEL.26_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.26_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 437
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RIIC0TI_IRQ_Handler:
	.stack _Os_ISR_RIIC0TI_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 442
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 445
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.27_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000C0), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000C0)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000018, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x000001F0), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x000001F0)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.27_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 447
	jarl _ISR_RIIC0TI_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 450
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000018, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.27_8
.BB.LABEL.27_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.27_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 453
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RIIC0EE_IRQ_Handler:
	.stack _Os_ISR_RIIC0EE_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 458
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 461
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.28_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000C8), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000C8)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x00000019, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000204), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000204)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_5
.BB.LABEL.28_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.28_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 463
	jarl _ISR_RIIC0EE_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 466
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x00000019, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_7
.BB.LABEL.28_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.28_8
.BB.LABEL.28_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.28_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 469
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RIIC0RI_IRQ_Handler:
	.stack _Os_ISR_RIIC0RI_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 474
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 477
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.29_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000D0), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000D0)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x0000001A, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x00000218), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x00000218)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.29_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 479
	jarl _ISR_RIIC0RI_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 482
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x0000001A, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_7
.BB.LABEL.29_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.29_8
.BB.LABEL.29_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.29_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 485
	dispose 0x00000000, 0x00000041, [r31]
_Os_ISR_RIIC0TEI_IRQ_Handler:
	.stack _Os_ISR_RIIC0TEI_IRQ_Handler = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 490
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 493
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.30_3
.BB.LABEL.30_2:	; if_else_bb
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.30_3:	; if_else_bb
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Os_ISR2Stack+0x000000D8), r0, r2
	ld.w LOWW(#_Os_ISR2Stack+0x000000D8)[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	movea 0x0000001B, r0, r6
	jarl _Os_EnterISR2, r31
	movhi HIGHW1(#_Os_IsrCfg+0x0000022C), r0, r2
	ld.bu LOWW(#_Os_IsrCfg+0x0000022C)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.30_5
.BB.LABEL.30_4:	; if_then_bb26
	stsr 0x00000005, r2, 0x00000000
	movea 0xFFFFFF5F, r0, r5
	and r5, r2
	ldsr r2, 5
.BB.LABEL.30_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 495
	jarl _ISR_RIIC0TEI_IRQ_Handler, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 498
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	movea 0x0000001B, r0, r6
	jarl _Os_ExitISR2, r31
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.30_7
.BB.LABEL.30_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 0
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	br9 .BB.LABEL.30_8
.BB.LABEL.30_7:	; if_else_bb46
	movhi HIGHW1(#_Os_IsrNestStack), r0, r2
	ld.w LOWW(#_Os_IsrNestStack)[r2], r20
	jarl _Os_Kernel_GetIntNestNumISR2.1, r31
.BB.LABEL.30_8:	; if_else_bb46
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	jarl _Os_ISR2Exit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Intvet.c", 501
	dispose 0x00000000, 0x00000041, [r31]
