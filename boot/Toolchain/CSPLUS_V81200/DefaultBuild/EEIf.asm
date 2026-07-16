#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\EEIf\EEIf.c -oDefaultBuild\EEIf.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_847964007c8b49c39751e82fcc67d7072e1ozk2w.bjv
#@	compiled at Thu Jul 16 13:41:26 2026

	.file "..\..\Bsw\SystemServices\BootServices\EEIf\EEIf.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Fls_GstConfiguration
	.extern _Fls_Read
	.extern _Fls_MainFunction
	.extern _Fls_GetStatus
	.extern _Fls_Erase
	.extern _Wdg_59_DriverB_TriggerFunc
	.extern _Fls_Write
	.public _EEIf_Init
	.extern _Fls_Init
	.public _EEIf_DeInit
	.public _EEIf_Write
	.extern _CommF_DataCopy
	.public _EEIf_Read
	.public _ValidSectorAdd

	.section .text, text
_DataReadByAddr.1:
	.stack _DataReadByAddr.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 56
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 59
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 61
	movhi 0x000000E0, r6, r6
	mov 0x00000002, r8
	movea 0x00000002, r3, r7
	jarl32 _Fls_Read, r31
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 65
	jarl32 _Fls_MainFunction, r31
.BB.LABEL.1_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 63
	jarl32 _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x00000002, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 68
	ld.b 0x00000000[r5], r10
	shl 0x00000008, r10
	ld.bu 0x00000003[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 70
	or r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 71
	zxh r10
	dispose 0x00000004, 0x00000001, [r31]
_DataReadProcess.1:
	.stack _DataReadProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 73
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 77
	jarl32 _Fls_Read, r31
	mov r10, r25
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 80
	jarl32 _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 81
	jarl32 _Fls_GetStatus, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 78
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 85
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
_EEIf_CheckNeedWrite.1:
	.stack _EEIf_CheckNeedWrite.1 = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 138
	prepare 0x00000B87, 0x0000000C
	ld.w 0x00000030[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 148
	st.b r0, 0x00000000[r5]
	movea 0x0000003E, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 144
	mov r6, r25
	divhu r5, r25, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 151
	mov r25, r10
	mul 0x0000003E, r10, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 145
	addi 0x00000002, r5, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 151
	movea 0x0000003E, r10, r5
	mov r6, r10
	add r7, r10
	cmp r5, r10
	ld.w 0x00000028[r3], r27
	mov r9, r5
	st.w r5, 0x00000008[r3]
	mov r8, r28
	mov r7, r29
	mov r6, r5
	st.w r5, 0x00000000[r3]
	bl9 .BB.LABEL.3_18
.BB.LABEL.3_1:	; entry.bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r25, r30
.BB.LABEL.3_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 160
	mov r27, r6
	ld.w 0x00000008[r3], r5
	mov r5, r7
	mov r30, r8
	jarl _EEIf_CopyPreviousData.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 161
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 172
	cmp r25, r30
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_break_bb.if_break_bb84_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000000, r5
	movea 0x00000040, r0, r6
	mov r26, r7
	br9 .BB.LABEL.3_9
.BB.LABEL.3_5:	; if_else_bb
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 179
	add r29, r5
	mov r30, r6
	mul 0x0000003E, r6, r0
	movea 0x0000003E, r6, r6
	cmp r6, r5
	mov r30, r5
	bl9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 184
	sub r25, r5
	mul 0x0000003E, r5, r0
	ld.w 0x00000004[r3], r6
	sub r6, r5
	movea 0x00000040, r0, r6
	br9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_else_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 190
	sub r25, r5
	mul 0x0000003E, r5, r0
	mov r26, r6
	add r29, r6
	sub r5, r6
	ld.w 0x00000004[r3], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 191
	sub r7, r5
.BB.LABEL.3_8:	; if_else_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000002, r7
.BB.LABEL.3_9:	; if_break_bb84
	mov r7, r8
	br9 .BB.LABEL.3_13
.BB.LABEL.3_10:	; bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 197
	mov r27, r9
	add r8, r9
	ld.bu 0x00000000[r9], r9
	mov r8, r10
	sub r7, r10
	add r5, r10
	add r28, r10
	ld.bu 0x00000000[r10], r10
	cmp r10, r9
	bz9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000001, r5
	ld.w 0x00000030[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 199
	st.b r5, 0x00000000[r6]
	br9 .BB.LABEL.3_14
.BB.LABEL.3_12:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	add 0x00000001, r8
.BB.LABEL.3_13:	; bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 195
	cmp r6, r8
	bl9 .BB.LABEL.3_10
.BB.LABEL.3_14:	; bb117
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ld.w 0x00000030[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 205
	ld.bu 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_24
.BB.LABEL.3_15:	; if_break_bb126
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 211
	add r29, r5
	mov r30, r6
	mul 0x0000003E, r6, r0
	movea 0x0000003E, r6, r6
	cmp r6, r5
	bl9 .BB.LABEL.3_24
.BB.LABEL.3_16:	; if_break_bb138
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 217
	addi 0x00000001, r30, r5
	ld.w 0x0000002C[r3], r6
	cmp r6, r5
	bnc9 .BB.LABEL.3_24
.BB.LABEL.3_17:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 222
	add 0x00000001, r30
	br9 .BB.LABEL.3_2
.BB.LABEL.3_18:	; if_else_bb152
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 229
	mov r27, r6
	ld.w 0x00000008[r3], r5
	mov r5, r7
	mov r25, r8
	jarl _EEIf_CopyPreviousData.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 230
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_19:	; if_else_bb152.bb188_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r26, r5
	br9 .BB.LABEL.3_23
.BB.LABEL.3_20:	; bb166
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 236
	mov r27, r6
	add r5, r6
	ld.bu 0x00000000[r6], r6
	mov r5, r7
	sub r26, r7
	add r28, r7
	ld.bu 0x00000000[r7], r7
	cmp r7, r6
	bz9 .BB.LABEL.3_22
.BB.LABEL.3_21:	; if_then_bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000001, r5
	ld.w 0x00000030[r3], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 238
	st.b r5, 0x00000000[r26]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 239
	dispose 0x0000000C, 0x00000B87, [r31]
.BB.LABEL.3_22:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	add 0x00000001, r5
.BB.LABEL.3_23:	; bb188
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 234
	mov r26, r6
	add r29, r6
	cmp r6, r5
	bl9 .BB.LABEL.3_20
.BB.LABEL.3_24:	; bb117.bb200_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_26
.BB.LABEL.3_25:	; bb.bb200_crit_edge
	mov 0x00000001, r10
.BB.LABEL.3_26:	; bb200
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 245
	dispose 0x0000000C, 0x00000B87, [r31]
_DataEraseProcess.1:
	.stack _DataEraseProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 263
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 267
	jarl32 _Fls_Erase, r31
	mov r10, r25
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 270
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 271
	jarl32 _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 272
	jarl32 _Fls_GetStatus, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 268
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 276
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
_DataWriteProcess.1:
	.stack _DataWriteProcess.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 292
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 296
	jarl32 _Fls_Write, r31
	mov r10, r25
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 299
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 300
	jarl32 _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 301
	jarl32 _Fls_GetStatus, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 297
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.5_1
.BB.LABEL.5_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 305
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
_EEIf_Init:
	.stack _EEIf_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 321
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 324
	mov #_Fls_GstConfiguration, r6
	jarl32 _Fls_Init, r31
	dispose 0x00000000, 0x00000001, [r31]
_EEIf_DeInit:
	.stack _EEIf_DeInit = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 343
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 348
	jmp [r31]
_EEIf_Write:
	.stack _EEIf_Write = 120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 366
	prepare 0x00000B87, 0x0000005C
	mov r6, r5
	st.w r5, 0x00000014[r3]
	mov r7, r5
	st.w r5, 0x00000010[r3]
	mov r8, r5
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 374
	st.b r0, 0x0000001B[r3]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 377
	jarl _EEIf_FindLatestAddress.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 380
	cmp 0xFFFFFFFF, r10
	mov r10, r25
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.bb336_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000001, r10
	jr .BB.LABEL.8_29
.BB.LABEL.8_2:	; if_break_bb
	ld.w 0x0000000C[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 387
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_1
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x000007FF, r0, r5
	ld.w 0x00000014[r3], r6
	cmp r5, r6
	bh9 .BB.LABEL.8_1
.BB.LABEL.8_4:	; bb37
	movea 0x00000800, r0, r5
	ld.w 0x00000014[r3], r6
	sub r6, r5
	ld.w 0x00000010[r3], r6
	cmp r6, r5
	bl9 .BB.LABEL.8_1
.BB.LABEL.8_5:	; if_break_bb53
	movea 0x0000001B, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 393
	st.w r5, 0x00000008[r3]
	movea 0x00000022, r0, r5
	st.w r5, 0x00000004[r3]
	movea 0x0000001C, r3, r5
	st.w r5, 0x00000000[r3]
	ld.w 0x00000014[r3], r5
	mov r5, r6
	ld.w 0x00000010[r3], r5
	mov r5, r7
	ld.w 0x0000000C[r3], r5
	mov r5, r8
	mov r25, r9
	jarl _EEIf_CheckNeedWrite.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 394
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_1
.BB.LABEL.8_6:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 399
	ld.bu 0x0000001B[r3], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_break_bb68.bb336_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000000, r10
	jr .BB.LABEL.8_29
.BB.LABEL.8_8:	; if_break_bb68.bb325_crit_edge
	mov 0x00000000, r26
	jr .BB.LABEL.8_28
.BB.LABEL.8_9:	; bb75
	movea 0x0000001C, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 405
	mov r25, r7
	mov r26, r8
	jarl _EEIf_CopyPreviousData.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 406
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_1
.BB.LABEL.8_10:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 412
	mov r26, r6
	mul 0x0000003E, r6, r0
	ld.w 0x00000014[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 416
	subr r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 419
	cmp 0x00000000, r6
	bn17 .BB.LABEL.8_24
.BB.LABEL.8_11:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x0000003D, r0, r5
	cmp r5, r6
	bh17 .BB.LABEL.8_24
.BB.LABEL.8_12:	; if_then_bb111
	movea 0x0000003E, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 426
	sub r6, r5
	ld.w 0x00000010[r3], r7
	cmp r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 428
	cmov 0x00000001, r5, r7, r27
	movea 0x0000001C, r3, r5
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 432
	add 0x00000002, r6
	ld.w 0x0000000C[r3], r5
	mov r5, r7
	mov r27, r8
	jarl32 _CommF_DataCopy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 435
	mov r26, r6
	shl 0x00000006, r6
	add r25, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 436
	cmp r5, r10
	bz9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 439
	movhi 0x000000E0, r25, r6
	movea 0xFFFFE000, r0, r5
	and r5, r6
	movea 0x00002000, r0, r7
	jarl _DataEraseProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 440
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.8_29
.BB.LABEL.8_14:	; if_break_bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 447
	mov r26, r5
	shl 0x00000006, r5
	add r25, r5
	movhi 0x000000E0, r5, r6
	movea 0x00000040, r0, r8
	movea 0x0000001C, r3, r7
	jarl _DataWriteProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 448
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_29
.BB.LABEL.8_15:	; if_break_bb171
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ld.w 0x00000010[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 453
	cmp r5, r27
	bnc9 .BB.LABEL.8_27
.BB.LABEL.8_16:	; if_break_bb171.bb261_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ld.w 0x00000010[r3], r5
	mov r5, r28
	mov r27, r29
	br9 .BB.LABEL.8_22
.BB.LABEL.8_17:	; bb183
	movea 0x0000001C, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 463
	mov r25, r7
	mov r30, r8
	jarl _EEIf_CopyPreviousData.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 464
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.8_1
.BB.LABEL.8_18:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x0000003E, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 471
	cmp r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 473
	cmov 0x0000000B, r29, r28, r29
	ld.w 0x0000000C[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 477
	mov r5, r7
	add r27, r7
	movea 0x0000001E, r3, r6
	mov r29, r8
	jarl32 _CommF_DataCopy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 480
	mov r30, r6
	shl 0x00000006, r6
	add r25, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 481
	cmp r5, r10
	bz9 .BB.LABEL.8_20
.BB.LABEL.8_19:	; if_then_bb219
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 484
	movhi 0x000000E0, r25, r6
	movea 0xFFFFE000, r0, r5
	and r5, r6
	movea 0x00002000, r0, r7
	jarl _DataEraseProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 485
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_29
.BB.LABEL.8_20:	; if_break_bb234
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 492
	shl 0x00000006, r30
	add r25, r30
	movhi 0x000000E0, r30, r6
	movea 0x00000040, r0, r8
	movea 0x0000001C, r3, r7
	jarl _DataWriteProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 493
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_29
.BB.LABEL.8_21:	; if_break_bb250
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 500
	add r29, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 502
	add 0x00000001, r26
.BB.LABEL.8_22:	; bb261
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r28, r5
	sub r29, r28
	addi 0x00000001, r26, r30
	movea 0x00000021, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 459
	cmp r6, r30
	bh9 .BB.LABEL.8_27
.BB.LABEL.8_23:	; bb261
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	cmp r29, r5
	bnz9 .BB.LABEL.8_17
	br9 .BB.LABEL.8_27
.BB.LABEL.8_24:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 509
	mov r26, r6
	shl 0x00000006, r6
	add r25, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 510
	cmp r5, r10
	bz9 .BB.LABEL.8_26
.BB.LABEL.8_25:	; if_then_bb290
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 513
	movhi 0x000000E0, r25, r6
	movea 0xFFFFE000, r0, r5
	and r5, r6
	movea 0x00002000, r0, r7
	jarl _DataEraseProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 514
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_29
.BB.LABEL.8_26:	; if_break_bb305
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 521
	mov r26, r5
	shl 0x00000006, r5
	add r25, r5
	movhi 0x000000E0, r5, r6
	movea 0x00000040, r0, r8
	movea 0x0000001C, r3, r7
	jarl _DataWriteProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 522
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_29
.BB.LABEL.8_27:	; if_break_bb322
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	add 0x00000001, r26
.BB.LABEL.8_28:	; bb325
	movea 0x00000022, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 402
	cmp r5, r26
	bl17 .BB.LABEL.8_9
.BB.LABEL.8_29:	; bb336
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 535
	zxb r10
	dispose 0x0000005C, 0x00000B87, [r31]
_EEIf_Read:
	.stack _EEIf_Read = 100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 607
	prepare 0x00000B87, 0x00000048
	mov r6, r25
	mov r7, r26
	mov r8, r5
	st.w r5, 0x00000004[r3]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 616
	jarl _EEIf_FindLatestAddress.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 619
	cmp 0xFFFFFFFF, r10
	mov r10, r5
	st.w r5, 0x00000000[r3]
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.bb194_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.9_14
.BB.LABEL.9_2:	; if_break_bb
	movea 0x0000003E, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 626
	mov r25, r27
	divhu r5, r27, r0
	movea 0x00000021, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 629
	cmp r5, r27
	bh9 .BB.LABEL.9_1
.BB.LABEL.9_3:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 632
	mov r27, r5
	shl 0x00000006, r5
	ld.w 0x00000000[r3], r6
	add r6, r5
	movhi 0x000000E0, r5, r6
	movea 0x00000040, r0, r8
	movea 0x00000008, r3, r7
	jarl _DataReadProcess.1, r31
	ori 0x0000A532, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 635
	add r27, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 636
	andi 0x0000FFFF, r5, r6
	shr 0x00000008, r6
	ld.bu 0x00000008[r3], r7
	cmp r6, r7
	bnz9 .BB.LABEL.9_1
.BB.LABEL.9_4:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	zxb r5
	ld.bu 0x00000009[r3], r6
	cmp r5, r6
	bnz9 .BB.LABEL.9_1
.BB.LABEL.9_5:	; if_then_bb68
	movea 0x0000003E, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 639
	divhu r5, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 644
	sub r25, r5
	cmp r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 646
	cmov 0x00000001, r5, r26, r28
	movea 0x00000008, r3, r5
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 650
	addi 0x00000002, r25, r7
	ld.w 0x00000004[r3], r5
	mov r5, r6
	mov r28, r8
	jarl32 _CommF_DataCopy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 653
	cmp r26, r28
	bnc9 .BB.LABEL.9_13
.BB.LABEL.9_6:	; if_then_bb68.bb163_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r28, r25
	br9 .BB.LABEL.9_10
.BB.LABEL.9_7:	; bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 662
	mov r27, r5
	shl 0x00000006, r5
	ld.w 0x00000000[r3], r6
	add r6, r5
	movhi 0x000000E0, r5, r6
	movea 0x00000040, r0, r8
	movea 0x00000008, r3, r7
	jarl _DataReadProcess.1, r31
	ori 0x0000A533, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 665
	add r5, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 666
	andi 0x0000FFFF, r29, r5
	shr 0x00000008, r5
	ld.bu 0x00000008[r3], r6
	cmp r5, r6
	bnz9 .BB.LABEL.9_12
.BB.LABEL.9_8:	; bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	zxb r29
	ld.bu 0x00000009[r3], r5
	cmp r29, r5
	bnz9 .BB.LABEL.9_12
.BB.LABEL.9_9:	; if_then_bb139
	movea 0x0000003E, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 670
	cmp r25, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 672
	cmov 0x0000000B, r25, r26, r25
	ld.w 0x00000004[r3], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 676
	mov r29, r6
	add r28, r6
	movea 0x0000000A, r3, r7
	mov r25, r8
	jarl32 _CommF_DataCopy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 680
	add r25, r28
.BB.LABEL.9_10:	; bb163
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r26, r30
	mov r27, r29
	sub r25, r26
	addi 0x00000001, r29, r27
	movea 0x00000021, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 659
	cmp r5, r27
	bh9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; bb163
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	cmp r25, r30
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_12:	; bb181
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 690
	cmp r25, r30
	bnz9 .BB.LABEL.9_1
.BB.LABEL.9_13:	; if_then_bb186
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000000, r10
.BB.LABEL.9_14:	; bb194
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 704
	dispose 0x00000048, 0x00000B87, [r31]
_ValidSectorAdd:
	.stack _ValidSectorAdd = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 721
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 724
	jarl _DataReadByAddr.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 725
	mov r26, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 728
	cmp r5, r10
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ori 0x0000FFFF, r0, r5
	cmp r5, r27
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_2:	; if_else_bb
	ori 0x0000FFFF, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 732
	cmp r25, r10
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ori 0x0000FFFF, r0, r25
	cmp r25, r27
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_4:	; if_else_bb.if_break_bb44_crit_edge
	mov r26, r25
.BB.LABEL.10_5:	; if_break_bb44
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 741
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.10_6:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 738
	dispose 0x00000000, 0x00000381, [r31]
_EEIf_CopyPreviousData.1:
	.stack _EEIf_CopyPreviousData.1 = 80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 759
	prepare 0x00000381, 0x00000040
	mov r8, r25
	mov r7, r26
	addi 0x00000000, r6, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 765
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.bb151_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.11_19
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 774
	jarl _EEIf_DetermineLatestSector.1, r31
	movhi 0x0000FF20, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 777
	cmp r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 771
	movea 0xFFFFF780, r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 777
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movhi 0x0000FF20, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 780
	cmp r6, r5
	bnc9 .BB.LABEL.11_8
.BB.LABEL.11_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movhi 0x0000FF20, r0, r5
	br9 .BB.LABEL.11_8
.BB.LABEL.11_5:	; if_else_bb
	mov 0xFF202000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 785
	cmp r6, r10
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0xFF201FFF, r6
	cmp r6, r5
	bh9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_then_bb41
	mov 0xFF202000, r5
.BB.LABEL.11_8:	; if_break_bb44
	movhi 0x0000FF20, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 795
	cmp r6, r5
	bl9 .BB.LABEL.11_15
.BB.LABEL.11_9:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 799
	mov r25, r6
	shl 0x00000006, r6
	add r6, r5
	movhi 0x000000E0, r5, r6
	movea 0x00000040, r0, r8
	mov r3, r7
	jarl _DataReadProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 800
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_10:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 806
	ld.b 0x00000000[r5], r5
	shl 0x00000008, r5
	ld.bu 0x00000001[r3], r6
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 809
	zxh r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 804
	movea 0xFFFFA532, r25, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 809
	zxh r6
	cmp r6, r5
	bnz9 .BB.LABEL.11_12
.BB.LABEL.11_11:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x00000040, r0, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 812
	mov r27, r6
	jarl32 _CommF_DataCopy, r31
	mov 0x00000000, r10
	dispose 0x00000040, 0x00000381, [r31]
.BB.LABEL.11_12:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ori 0x0000A532, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 817
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 818
	mov r25, r5
	shr 0x00000008, r5
	st.b r5, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 819
	st.b r25, 0x00000001[r27]
	mov 0x00000002, r25
	br9 .BB.LABEL.11_14
.BB.LABEL.11_13:	; bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 824
	mov r27, r5
	add r25, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r25
.BB.LABEL.11_14:	; bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x00000040, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 822
	cmp r5, r25
	bl9 .BB.LABEL.11_13
	br9 .BB.LABEL.11_18
.BB.LABEL.11_15:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ori 0x0000A532, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 838
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 839
	mov r25, r5
	shr 0x00000008, r5
	st.b r5, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 840
	st.b r25, 0x00000001[r27]
	mov 0x00000002, r5
	br9 .BB.LABEL.11_17
.BB.LABEL.11_16:	; bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 845
	mov r27, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.11_17:	; bb142
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 843
	cmp r6, r5
	bl9 .BB.LABEL.11_16
.BB.LABEL.11_18:	; bb110.bb151_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000000, r10
.BB.LABEL.11_19:	; bb151
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 850
	dispose 0x00000040, 0x00000381, [r31]
_EEIf_DetermineLatestSector.1:
	.stack _EEIf_DetermineLatestSector.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 868
	prepare 0x00000381, 0x00000000
	movhi 0x0000FF20, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 878
	jarl _DataReadByAddr.1, r31
	mov r10, r25
	mov 0xFF200F00, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 879
	jarl _DataReadByAddr.1, r31
	mov r10, r26
	mov 0xFF202000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 882
	jarl _DataReadByAddr.1, r31
	mov r10, r27
	mov 0xFF202F00, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 883
	jarl _DataReadByAddr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 882
	and r10, r27
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 892
	cmp r5, r27
	setf 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 878
	and r26, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 886
	cmp r5, r25
	setf 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 898
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	xori 0x00000001, r6, r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; entry.bb121_crit_edge
	movhi 0x0000FF20, r0, r10
	br9 .BB.LABEL.12_7
.BB.LABEL.12_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 903
	xori 0x00000001, r6, r7
	and r5, r7
	xori 0x00000001, r7, r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_else_bb.bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0xFF202000, r10
	br9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 908
	xori 0x00000001, r6, r6
	or r6, r5
	xori 0x00000001, r5, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_6:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x00002000, r0, r25
	movhi 0x0000FF20, r0, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 916
	mov r26, r6
	mov r25, r7
	jarl _DataEraseProcess.1, r31
	mov 0xFF202000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 917
	mov r25, r7
	jarl _DataEraseProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 918
	mov r26, r10
.BB.LABEL.12_7:	; bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 920
	dispose 0x00000000, 0x00000381, [r31]
_EEIf_FindLatestAddress.1:
	.stack _EEIf_FindLatestAddress.1 = 100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 936
	prepare 0x00000B87, 0x00000048
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 947
	jarl _EEIf_DetermineLatestSector.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 950
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.bb133_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0xFFFFFFFF, r25
	br9 .BB.LABEL.13_21
.BB.LABEL.13_2:	; if_break_bb
	movhi 0x0000FF20, r0, r5
	mov 0xFF202000, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 957
	cmp r5, r10
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_break_bb.if_break_bb31_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movhi 0x0000FF20, r0, r5
	st.w r5, 0x00000000[r3]
	mov r26, r27
	br9 .BB.LABEL.13_6
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 963
	cmp r26, r10
	bnz9 .BB.LABEL.13_1
.BB.LABEL.13_5:	; if_else_bb.if_break_bb31_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0xFF202000, r26
	st.w r26, 0x00000000[r3]
	mov 0xFF204000, r27
	movhi 0x0000FF20, r0, r26
.BB.LABEL.13_6:	; if_break_bb31
	mov 0x00000000, r28
	ld.w 0x00000000[r3], r5
	mov r5, r29
	br9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 980
	mov r29, r6
	jarl _DataReadByAddr.1, r31
	ori 0x0000A532, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 981
	cmp r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 983
	cmov 0x00000002, r29, r28, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 986
	movea 0x00000880, r29, r29
.BB.LABEL.13_8:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 978
	cmp r27, r29
	bl9 .BB.LABEL.13_7
.BB.LABEL.13_9:	; bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 990
	cmp 0x00000000, r28
	bnz9 .BB.LABEL.13_12
.BB.LABEL.13_10:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.13_22
.BB.LABEL.13_11:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 995
	movhi HIGHW1(#.STR.1), r0, r25
	ld.b LOWW(#.STR.1)[r25], r25
	st.b r25, 0x00000047[r3]
	movea 0x00000047, r3, r8
	mov 0x00000001, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 996
	jarl _EEIf_Write, r31
	ld.w 0x00000000[r3], r25
	mov r25, r10
	dispose 0x00000048, 0x00000B87, [r31]
.BB.LABEL.13_12:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1002
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.13_14
.BB.LABEL.13_13:	; if_break_bb70.bb133_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r28, r25
	br9 .BB.LABEL.13_21
.BB.LABEL.13_14:	; if_else_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1007
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.13_1
.BB.LABEL.13_15:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1010
	movea 0x00000880, r28, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1013
	sub r5, r27
	movea 0x0000087F, r0, r6
	cmp r6, r27
	bh9 .BB.LABEL.13_20
.BB.LABEL.13_16:	; if_then_bb85.bb115_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.13_18
.BB.LABEL.13_17:	; bb98
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1030
	mov r25, r27
	shl 0x00000006, r27
	mov r28, r5
	add r27, r5
	movhi 0x000000E0, r5, r6
	movea 0x00000040, r0, r29
	movea 0x00000007, r3, r30
	mov r30, r7
	mov r29, r8
	jarl _DataReadProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1033
	add r26, r27
	movhi 0x000000E0, r27, r6
	mov r30, r7
	mov r29, r8
	jarl _DataWriteProcess.1, r31
	add 0x00000001, r25
.BB.LABEL.13_18:	; bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	movea 0x00000022, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1027
	cmp r5, r25
	bl9 .BB.LABEL.13_17
.BB.LABEL.13_19:	; bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1037
	movhi 0x000000E0, r5, r6
	movea 0x00002000, r0, r7
	jarl _DataEraseProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1040
	movea 0x00000880, r26, r10
	dispose 0x00000048, 0x00000B87, [r31]
.BB.LABEL.13_20:	; if_then_bb85.bb133_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 0
	mov r5, r25
.BB.LABEL.13_21:	; if_then_bb85.bb133_crit_edge
	st.w r25, 0x00000000[r3]
.BB.LABEL.13_22:	; bb133
	ld.w 0x00000000[r3], r5
	mov r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EEIf/EEIf.c", 1048
	dispose 0x00000048, 0x00000B87, [r31]
	.section .const, const
.STR.1:
	.ds (1)
