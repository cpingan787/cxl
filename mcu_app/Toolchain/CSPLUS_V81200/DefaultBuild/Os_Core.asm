#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Core.c -oDefaultBuild\Os_Core.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7469e5d94f7a44d09698166296cd606ckwwikhbc.tqb
#@	compiled at Fri Mar 27 09:50:58 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Core.c"

	$reg_mode 32
	.dbl_size 8

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
	.extern _Os_CallShutdownHook

	.section .text, text
_Os_GetCurrentContext.1:
	.stack _Os_GetCurrentContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 135
	mov #_Os_SCB_FA_Inf, r10
	jmp [r31]
_StartCore:
	.stack _StartCore = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 101
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 107
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 117
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x0000000B, r20
	br9 .BB.LABEL.2_9
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 135
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_else_bb.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000003, r20
	br9 .BB.LABEL.2_9
.BB.LABEL.2_4:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 141
	ld.hu 0x00000026[r10], r2
	add r2, r2
	mov #_Os_CoreCB, r5
	add r2, r5
	ld.hu 0x00000006[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_else_bb16.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; if_else_bb28
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 150
	shl r20, r2
	movhi HIGHW1(#_Os_CoreCB), r0, r5
	ld.hu LOWW(#_Os_CoreCB)[r5], r5
	tst r2, r5
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_else_bb28.if_break_bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000007, r20
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 158
	mov r20, r6
	jarl _Os_Hal_StartCore, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 161
	shl r20, r2, r5
	zxb r5
	mov #_Os_CoreCB, r6
	ld.h 0x00000000[r6], r7
	or r5, r7
	st.h r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 163
	shl 0x00000002, r20
	add r20, r6
	st.w r2, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 164
	st.b r0, 0x00000000[r21]
	mov 0x00000000, r20
.BB.LABEL.2_9:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 168
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_10:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 172
	st.b r20, 0x00000000[r21]
.BB.LABEL.2_12:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 189
	dispose 0x00000000, 0x00000061, [r31]
_ControlIdle:
	.stack _ControlIdle = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 303
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 316
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 342
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 349
	jarl _Os_Hal_SuspendInt, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 356
	shl r20, r2
	movhi HIGHW1(#_Os_CoreCB), r0, r5
	ld.hu LOWW(#_Os_CoreCB)[r5], r5
	tst r2, r5
	mov r10, r22
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000003, r20
	br9 .BB.LABEL.3_10
.BB.LABEL.3_3:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 359
	cmp 0x00000001, r21
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_4:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_5:	; bb24
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 363
	mov r20, r6
	jarl _Os_Hal_SetCoreMode, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 368
	shl 0x00000002, r20
	mov #_Os_CoreCB, r2
	add r20, r2
	st.w r0, 0x0000000C[r2]
	br9 .BB.LABEL.3_9
.BB.LABEL.3_7:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 373
	mov r20, r6
	jarl _Os_Hal_SetCoreMode, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_8:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 378
	shl 0x00000002, r20
	mov #_Os_CoreCB, r2
	add r20, r2
	mov 0x00000001, r20
	st.w r20, 0x0000000C[r2]
.BB.LABEL.3_9:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000000, r20
.BB.LABEL.3_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 393
	mov r22, r6
	jarl _Os_Hal_RestoreInt, r31
	andi 0x000000FF, r20, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.3_11:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 416
	dispose 0x00000000, 0x00000071, [r31]
_GetCoreID:
	.stack _GetCoreID = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 426
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 435
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 444
	jarl _Os_Hal_GetCoreID, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 456
	dispose 0x00000000, 0x00000001, [r31]
_GetNumberOfActivatedCores:
	.stack _GetNumberOfActivatedCores = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 467
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 478
	jarl _Os_GetCurrentContext.1, r31
	mov 0x00000000, r10
	mov r10, r2
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 504
	andi 0x0000FFFF, r2, r5
	mov 0x00000001, r6
	shl r5, r6
	movhi HIGHW1(#_Os_CoreCB), r0, r5
	ld.hu LOWW(#_Os_CoreCB)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 507
	tst r6, r5
	adf 0x0000000A, r0, r10, r10
	add 0x00000001, r2
.BB.LABEL.5_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 501
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 532
	dispose 0x00000000, 0x00000001, [r31]
_ShutdownAllCores:
	.stack _ShutdownAllCores = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 604
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 615
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r21
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 661
	jarl _Os_SynPoint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 664
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 667
	mov r21, r6
	mov r20, r7
	jarl _Os_CallShutdownHook, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 718
	ld.hu 0x00000026[r21], r2
	mov 0x00000001, r5
	shl r2, r5
	not r5, r2
	movhi HIGHW1(#_Os_CoreCB), r0, r5
	ld.h LOWW(#_Os_CoreCB)[r5], r6
	and r2, r6
	st.h r6, LOWW(#_Os_CoreCB)[r5]
	mov 0x00000000, r2
	br9 .BB.LABEL.6_4
.BB.LABEL.6_1:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 725
	andi 0x0000FFFF, r5, r6
	add r6, r6
	mov #_Os_CoreCB, r7
	add r6, r7
	andi 0x0000FFFF, r2, r6
	add r6, r6
	add r6, r7
	st.h r0, 0x00000002[r7]
	add 0x00000001, r5
.BB.LABEL.6_2:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 722
	andi 0x0000FFFF, r5, r6
	cmp 0x00000004, r6
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	add 0x00000001, r2
.BB.LABEL.6_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 720
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; bb38.bb30_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.6_2
.BB.LABEL.6_6:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 729
	ld.hu 0x00000026[r21], r2
	add r2, r2
	mov #_Os_CoreCB, r5
	add r5, r2
	st.h r0, 0x0000000A[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 730
	ld.hu 0x00000026[r21], r2
	shl 0x00000002, r2
	add r2, r5
	mov 0x00000002, r2
	st.w r2, 0x0000000C[r5]
.BB.LABEL.6_7:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Core.c", 736
	br9 .BB.LABEL.6_7
	.section .bss, bss
	.align 4
_Os_CoreCB:
	.ds (16)
