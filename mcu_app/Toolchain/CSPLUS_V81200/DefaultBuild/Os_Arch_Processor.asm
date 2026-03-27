#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Processor.c -oDefaultBuild\Os_Arch_Processor.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bd79bd9f37a0498abb4f7de0e8851d07vi2oyhzi.43d
#@	compiled at Fri Mar 27 09:50:18 2026

	.file "..\..\Bsw\SystemServices\Os\Portable\Processor\Os_Arch_Processor.c"

	$reg_mode 32
	.dbl_size 8

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 177
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000003C), r0, r2
	ld.w LOWW(#_Os_SCB_FA_Inf+0x0000003C)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel2Port.h", 178
	jmp [r31]
_Os_Hal_FirstEnterTask:
	.stack _Os_Hal_FirstEnterTask = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 85
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 89
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	mov 0xFFFFFFFC, r7
	and r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 96
	mov #_Os_TaskErrBack, r7
	st.w r7, 0xFFFFFF8C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 97
	ld.w 0x00000008[r5], r5
	st.w r5, 0xFFFFFF88[r2]
	ori 0x00008000, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 112
	st.w r5, 0xFFFFFF84[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 127
	movhi HIGHW1(#_Os_TaskCBExt), r0, r5
	ld.w LOWW(#_Os_TaskCBExt)[r5], r5
	shl 0x00000002, r6
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 96
	movea 0xFFFFFF84, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 127
	st.w r2, 0x00000000[r5]
	jmp [r31]
_Os_Hal_StartScheduler:
	.stack _Os_Hal_StartScheduler = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 152
	._line_top inline_asm
    trap 0x10;
	._line_end inline_asm
	jmp [r31]
_OS_GetSystemStackPointer:
	.stack _OS_GetSystemStackPointer = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 171
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 174
	jarl _Os_Hal_GetCoreID, r31
	shl 0x00000002, r10
	mov #_Os_SystemStack_Inf, r2
	add r10, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_OS_GetTaskStackPointer:
	.stack _OS_GetTaskStackPointer = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 193
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 195
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	shl 0x00000002, r10
	add r10, r20
	ld.w 0x00000000[r20], r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	dispose 0x00000000, 0x00000041, [r31]
_OS_SaveTaskStackPointer:
	.stack _OS_SaveTaskStackPointer = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 213
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 216
	movhi HIGHW1(#_Os_TaskCBExt), r0, r2
	ld.w LOWW(#_Os_TaskCBExt)[r2], r20
	jarl _Os_Kernel_GetSysRunningTaskID.1, r31
	shl 0x00000002, r10
	add r10, r20
	movhi HIGHW1(#_Os_ArchTempSp), r0, r2
	ld.w LOWW(#_Os_ArchTempSp)[r2], r2
	st.w r2, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
_Os_Hal_CmpSwapW:
	.stack _Os_Hal_CmpSwapW = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 241
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 246
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 247
	ld.w 0x00000000[r20], r2
	cmp r2, r21
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 249
	st.w r22, 0x00000000[r20]
	mov 0x00000000, r20
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 252
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Portable/Processor/Os_Arch_Processor.c", 254
	mov r20, r10
	dispose 0x00000000, 0x00000071, [r31]
	.section .bss, bss
	.align 4
_Os_ArchTempSp:
	.ds (4)
	.align 4
_Os_TaskCBExt:
	.ds (4)
