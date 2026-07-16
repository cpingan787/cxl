#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\FCL\lib\r_fcl_user_if.c -oDefaultBuild\r_fcl_user_if.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_461efcc3c30643b6b6ab1f855a374995hb3j0bl1.gxg
#@	compiled at Thu Jul 16 13:41:31 2026

	.file "..\..\Bsw\SystemServices\FCL\lib\r_fcl_user_if.c"

	$reg_mode 22
	.dbl_size 4

	.public _g_fcl_data_str, 176
	.public _R_FCL_CopySections
	.public _R_FCL_CalcFctAddr
	.extern _R_FCL_Fct_CodeUsrInt_CalcRange
	.extern _R_FCL_Fct_CodeUsr_CalcRange
	.extern _R_FCL_Fct_Copy_Code
	.extern _R_FCL_Fct_CodeRam_CalcRange
	.extern _R_FCL_Fct_CodeRomRam_CalcRange
	.extern _R_FCL_Fct_CodeExProt_CalcRange
	.extern _R_FCL_FCUFct_GetConfigArea
	.extern _R_FCL_Fct_PrgOffset
	.public _R_FCL_GetVersionString
	.public _R_FCL_Init
	.extern _R_FCL_I_write_memory_u08
	.extern _R_FCL_FCUFct_SwitchMode_Start
	.extern _R_FCL_FCUFct_SwitchMode_Check
	.extern _R_FCL_FCUFct_PrepareEnvironment
	.extern _R_FCL_FCUFct_HandleMultiOperation
	.public _R_FCL_Execute
	.extern _R_FCL_FCUFct_CheckMode
	.extern _R_FCL_FCUFct_Erase
	.extern _R_FCL_FCUFct_Write
	.extern _R_FCL_FCUFct_HandleLockBit
	.extern _R_FCL_FCUFct_LockBitMode
	.extern _R_FCL_Fct_CallFromRAM
	.extern _R_FCL_FCUFct_SetConfigArea
	.extern _R_FCL_FCUFct_GetDeviceName
	.extern _R_FCL_FCUFct_GetBlockCnt
	.extern _R_FCL_FCUFct_GetBlockEndAddr
	.extern _R_FCL_FCUFct_GetSecurityFlag

	.section R_FCL_CODE_ROM.text, text
_R_FCL_CopySections:
	.stack _R_FCL_CopySections = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 172
	prepare 0x00000387, 0x00000010
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 184
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000044)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000007, r10
	jr .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 186
	movhi HIGHW1(#_g_fcl_data_str), r0, r5
	ld.w LOWW(#_g_fcl_data_str)[r5], r5
	ld.w 0x00000010[r5], r25
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb.if_break_bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x0000000D, r10
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 189
	st.w r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 190
	st.w r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 191
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 192
	st.w r0, 0x00000000[r3]
	movea 0x00000004, r3, r26
	movea 0x0000000C, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 196
	mov r27, r6
	mov r26, r7
	jarl32 _R_FCL_Fct_CodeUsrInt_CalcRange, r31
	mov r3, r28
	movea 0x00000008, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 197
	mov r29, r6
	mov r28, r7
	jarl32 _R_FCL_Fct_CodeUsr_CalcRange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 198
	ld.w 0x00000008[r3], r8
	ld.w 0x0000000C[r3], r5
	sub r5, r8
	st.w r8, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 199
	ld.w 0x0000000C[r3], r6
	mov r25, r7
	jarl32 _R_FCL_Fct_Copy_Code, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 202
	ld.w 0x00000008[r3], r5
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 203
	mov r29, r6
	mov r28, r7
	jarl32 _R_FCL_Fct_CodeRam_CalcRange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 204
	ld.w 0x00000008[r3], r8
	ld.w 0x0000000C[r3], r5
	sub r5, r8
	st.w r8, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 205
	ld.w 0x0000000C[r3], r6
	mov r25, r7
	jarl32 _R_FCL_Fct_Copy_Code, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 208
	ld.w 0x00000008[r3], r5
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 209
	mov r29, r6
	mov r28, r7
	jarl32 _R_FCL_Fct_CodeRomRam_CalcRange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 210
	ld.w 0x00000008[r3], r8
	ld.w 0x0000000C[r3], r5
	sub r5, r8
	st.w r8, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 211
	ld.w 0x0000000C[r3], r6
	mov r25, r7
	jarl32 _R_FCL_Fct_Copy_Code, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 222
	mov r27, r6
	mov r26, r7
	jarl32 _R_FCL_Fct_CodeExProt_CalcRange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 223
	ld.w 0x00000004[r3], r8
	ld.w 0x0000000C[r3], r6
	mov r25, r7
	jarl32 _R_FCL_Fct_Copy_Code, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 228
	mov #_R_FCL_FCUFct_GetConfigArea, r6
	jarl _R_FCL_CalcFctAddr, r31
	mov #_g_fcl_data_str, r25
	st.w r10, 0x00000088[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 231
	mov #_R_FCL_Fct_Handler.1, r6
	jarl _R_FCL_CalcFctAddr, r31
	st.w r10, 0x000000AC[r25]
	mov 0x00000000, r10
.BB.LABEL.1_5:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 245
	dispose 0x00000010, 0x00000387, [r31]
_R_FCL_CalcFctAddr:
	.stack _R_FCL_CalcFctAddr = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 272
	prepare 0x00000301, 0x00000010
	mov r6, r25
	movea 0x00000008, r3, r7
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 281
	jarl32 _R_FCL_Fct_CodeUsrInt_CalcRange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 286
	ld.w 0x0000000C[r3], r5
	cmp r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 283
	movhi HIGHW1(#_g_fcl_data_str), r0, r6
	ld.w LOWW(#_g_fcl_data_str)[r6], r6
	ld.w 0x00000010[r6], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 286
	bh9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	ld.w 0x00000008[r3], r6
	add r6, r5
	cmp r25, r5
	bh9 .BB.LABEL.2_7
.BB.LABEL.2_2:	; if_else_bb
	mov r3, r7
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 292
	jarl32 _R_FCL_Fct_CodeUsr_CalcRange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 295
	ld.w 0x00000004[r3], r5
	ld.w 0x0000000C[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 298
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 299
	ld.w 0x00000000[r3], r7
	st.w r7, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 295
	sub r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 296
	add r5, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 302
	ld.w 0x0000000C[r3], r5
	cmp r25, r5
	bh9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	add r7, r5
	cmp r25, r5
	bh9 .BB.LABEL.2_7
.BB.LABEL.2_4:	; if_else_bb64
	mov r3, r7
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 308
	jarl32 _R_FCL_Fct_CodeRam_CalcRange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 311
	ld.w 0x00000004[r3], r5
	ld.w 0x0000000C[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 314
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 315
	ld.w 0x00000000[r3], r7
	st.w r7, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 311
	sub r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 312
	add r5, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 318
	ld.w 0x0000000C[r3], r5
	cmp r25, r5
	bnh9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_else_bb64.if_break_bb100_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.2_8
.BB.LABEL.2_6:	; bb77
	add r7, r5
	cmp r25, r5
	bnh9 .BB.LABEL.2_5
.BB.LABEL.2_7:	; if_then_bb92
	ld.w 0x0000000C[r3], r5
	sub r5, r25
	add r25, r26
.BB.LABEL.2_8:	; if_break_bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 350
	cmp 0x00000000, r26
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 352
	jarl32 _R_FCL_Fct_PrgOffset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 353
	subr r26, r10
	dispose 0x00000010, 0x00000301, [r31]
.BB.LABEL.2_10:	; if_break_bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 357
	mov r26, r10
	dispose 0x00000010, 0x00000301, [r31]
_R_FCL_GetVersionString:
	.stack _R_FCL_GetVersionString = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 400
	mov #_fcl_ver_str.1.R_FCL_GetVersionString, r10
	jmp [r31]
_R_FCL_Init:
	.stack _R_FCL_Init = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 439
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 448
	mov #_g_fcl_data_str, r25
	mov 0x00000000, r26
	mov r6, r27
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 450
	mov r25, r6
	jarl32 _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 451
	add 0x00000001, r26
	add 0x00000001, r25
.BB.LABEL.4_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	movea 0x000000B0, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 448
	cmp r5, r26
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_3:	; bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 455
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r5
	st.w r0, LOWW(#_g_fcl_data_str+0x00000044)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 459
	cmp 0x00000000, r27
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 461
	mov #_g_fcl_data_str, r5
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 464
	st.w r0, 0x000000AC[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 467
	st.w r27, 0x00000000[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 468
	st.w r6, 0x00000080[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 471
	st.w r6, 0x00000044[r5]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.4_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 481
	dispose 0x00000000, 0x00000381, [r31]
	.section R_FCL_CODE_RAM.text, text
_R_FCL_Handler.1:
	.stack _R_FCL_Handler.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 511
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 516
	movhi HIGHW1(#_g_fcl_data_str+0x0000001C), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x0000001C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000044)[r5], r5
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 519
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 527
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_15
.BB.LABEL.5_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000044)[r5], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 533
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000014)[r5], r5
	cmp 0x0000000D, r5
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 535
	jarl32 _R_FCL_FCUFct_SwitchMode_Start, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 536
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000E, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_7:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 540
	cmp 0x0000000E, r5
	bnz9 .BB.LABEL.5_10
.BB.LABEL.5_8:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 542
	jarl32 _R_FCL_FCUFct_SwitchMode_Check, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 543
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_9:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 545
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000F, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_10:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 550
	cmp 0x0000000F, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.5_12
.BB.LABEL.5_11:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 552
	st.w r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 553
	mov #_g_fcl_data_str, r5
	st.w r0, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 554
	st.w r0, 0x00000044[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_12:	; if_else_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 560
	ld.w 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_14
.BB.LABEL.5_13:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 562
	jarl32 _R_FCL_FCUFct_PrepareEnvironment, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_14:	; if_else_bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 566
	jarl32 _R_FCL_FCUFct_HandleMultiOperation, r31
.BB.LABEL.5_15:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 574
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_Fct_Handler.1:
	.stack _R_FCL_Fct_Handler.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 603
	prepare 0x00000001, 0x00000000
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 608
	jarl _R_FCL_Handler.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 606
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000010[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.6_1
.BB.LABEL.6_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 611
	dispose 0x00000000, 0x00000001, [r31]
	.section R_FCL_CODE_ROMRAM.text, text
_R_FCL_Execute:
	.stack _R_FCL_Execute = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 645
	prepare 0x00000201, 0x00000000
	addi 0x00000000, r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 648
	bz17 .BB.LABEL.7_73
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 652
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000044)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	ld.w 0x00000000[r25], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 655
	jarl32 _R_FCL_FCUFct_CheckMode, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_4:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 657
	mov #_g_fcl_data_str, r5
	st.w r25, 0x00000004[r5]
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 658
	st.w r6, 0x00000044[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 659
	st.w r6, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 660
	st.w r6, 0x00000010[r25]
	br9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 665
	movhi HIGHW1(#_g_fcl_data_str+0x000000AC), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x000000AC)[r5], r5
	jarl [r5], r31
.BB.LABEL.7_6:	; bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 663
	ld.w 0x00000010[r25], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.7_5
	jr .BB.LABEL.7_73
.BB.LABEL.7_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 671
	st.w r5, 0x00000010[r25]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.7_8:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 677
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000044)[r5], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.7_10
.BB.LABEL.7_9:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	cmp 0x00000004, r5
	bnz17 .BB.LABEL.7_70
.BB.LABEL.7_10:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 680
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	st.w r25, LOWW(#_g_fcl_data_str+0x00000004)[r5]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 681
	st.w r5, 0x00000010[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 683
	ld.w 0x00000000[r25], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_12
.BB.LABEL.7_11:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 685
	jarl32 _R_FCL_FCUFct_Erase, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_12:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 687
	ld.w 0x00000000[r25], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_13:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 689
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.7_63
.BB.LABEL.7_14:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 695
	jarl32 _R_FCL_FCUFct_Write, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_15:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 699
	ld.w 0x00000000[r25], r5
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.7_18
.BB.LABEL.7_16:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 701
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.7_63
.BB.LABEL.7_17:	; if_else_bb103
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 707
	jarl32 _R_FCL_FCUFct_HandleLockBit, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_18:	; if_else_bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 710
	ld.w 0x00000000[r25], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.7_20
.BB.LABEL.7_19:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 712
	jarl32 _R_FCL_FCUFct_HandleLockBit, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_20:	; if_else_bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 714
	ld.w 0x00000000[r25], r5
	cmp 0x00000005, r5
	bnz9 .BB.LABEL.7_22
.BB.LABEL.7_21:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 716
	jarl32 _R_FCL_FCUFct_LockBitMode, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_22:	; if_else_bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 718
	ld.w 0x00000000[r25], r5
	cmp 0x00000006, r5
	bnz9 .BB.LABEL.7_24
.BB.LABEL.7_23:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 720
	jarl32 _R_FCL_FCUFct_LockBitMode, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_24:	; if_else_bb129
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 741
	ld.w 0x00000000[r25], r5
	cmp 0x0000000A, r5
	bnz9 .BB.LABEL.7_27
.BB.LABEL.7_25:	; if_then_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 743
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.7_63
.BB.LABEL.7_26:	; if_else_bb146
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 749
	jarl32 _R_FCL_Fct_CallFromRAM, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_27:	; if_else_bb148
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 752
	ld.w 0x00000000[r25], r5
	cmp 0x00000009, r5
	bnz9 .BB.LABEL.7_30
.BB.LABEL.7_28:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 754
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.7_63
.BB.LABEL.7_29:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 760
	jarl32 _R_FCL_FCUFct_SetConfigArea, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_30:	; if_else_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 765
	ld.w 0x00000000[r25], r5
	cmp 0x0000000C, r5
	bnz9 .BB.LABEL.7_33
.BB.LABEL.7_31:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 767
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.7_63
.BB.LABEL.7_32:	; if_else_bb184
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 773
	jarl32 _R_FCL_Fct_CallFromRAM, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_33:	; if_else_bb186
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 776
	ld.w 0x00000000[r25], r5
	cmp 0x0000000B, r5
	bnz9 .BB.LABEL.7_36
.BB.LABEL.7_34:	; if_then_bb193
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 778
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_63
.BB.LABEL.7_35:	; if_else_bb203
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 784
	jarl32 _R_FCL_FCUFct_SetConfigArea, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_36:	; if_else_bb205
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 789
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFE8, r5, r0
	bnz9 .BB.LABEL.7_39
.BB.LABEL.7_37:	; if_then_bb212
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 791
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_63
.BB.LABEL.7_38:	; if_else_bb222
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 797
	jarl32 _R_FCL_Fct_CallFromRAM, r31
	jr .BB.LABEL.7_69
.BB.LABEL.7_39:	; if_else_bb224
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 800
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFE9, r5, r0
	bnz9 .BB.LABEL.7_42
.BB.LABEL.7_40:	; if_then_bb231
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 802
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_63
.BB.LABEL.7_41:	; if_else_bb241
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 808
	jarl32 _R_FCL_FCUFct_SetConfigArea, r31
	br9 .BB.LABEL.7_69
.BB.LABEL.7_42:	; if_else_bb243
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 813
	ld.w 0x00000000[r25], r5
	cmp 0x0000000D, r5
	bz9 .BB.LABEL.7_47
.BB.LABEL.7_43:	; bb249
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	ld.w 0x00000000[r25], r5
	cmp 0x0000000F, r5
	bz9 .BB.LABEL.7_47
.BB.LABEL.7_44:	; bb262
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFEF, r5, r0
	bz9 .BB.LABEL.7_47
.BB.LABEL.7_45:	; bb275
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFED, r5, r0
	bz9 .BB.LABEL.7_47
.BB.LABEL.7_46:	; bb288
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFEB, r5, r0
	bnz9 .BB.LABEL.7_48
.BB.LABEL.7_47:	; if_then_bb302
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 819
	jarl32 _R_FCL_FCUFct_SetConfigArea, r31
	br9 .BB.LABEL.7_69
.BB.LABEL.7_48:	; if_else_bb303
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 823
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFE5, r5, r0
	bnz9 .BB.LABEL.7_51
.BB.LABEL.7_49:	; if_then_bb310
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 825
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_63
.BB.LABEL.7_50:	; if_else_bb320
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 831
	jarl32 _R_FCL_FCUFct_GetDeviceName, r31
	br9 .BB.LABEL.7_69
.BB.LABEL.7_51:	; if_else_bb322
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 836
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFE7, r5, r0
	bnz9 .BB.LABEL.7_54
.BB.LABEL.7_52:	; if_then_bb329
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 838
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_63
.BB.LABEL.7_53:	; if_else_bb339
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 844
	jarl32 _R_FCL_FCUFct_GetBlockCnt, r31
	br9 .BB.LABEL.7_69
.BB.LABEL.7_54:	; if_else_bb341
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 849
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFE6, r5, r0
	bnz9 .BB.LABEL.7_57
.BB.LABEL.7_55:	; if_then_bb348
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 851
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_63
.BB.LABEL.7_56:	; if_else_bb358
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 857
	jarl32 _R_FCL_FCUFct_GetBlockEndAddr, r31
	br9 .BB.LABEL.7_69
.BB.LABEL.7_57:	; if_else_bb360
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 862
	ld.w 0x00000000[r25], r5
	cmp 0x0000000E, r5
	bz9 .BB.LABEL.7_62
.BB.LABEL.7_58:	; bb366
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	ld.w 0x00000000[r25], r5
	add 0xFFFFFFF0, r5
	bz9 .BB.LABEL.7_62
.BB.LABEL.7_59:	; bb379
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFEE, r5, r0
	bz9 .BB.LABEL.7_62
.BB.LABEL.7_60:	; bb392
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFEC, r5, r0
	bz9 .BB.LABEL.7_62
.BB.LABEL.7_61:	; bb405
	ld.w 0x00000000[r25], r5
	addi 0xFFFFFFEA, r5, r0
	bnz9 .BB.LABEL.7_65
.BB.LABEL.7_62:	; if_then_bb419
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 868
	ld.w 0x00000004[r25], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.7_64
.BB.LABEL.7_63:	; if_then_bb426
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000004, r5
	st.w r5, 0x00000010[r25]
	br9 .BB.LABEL.7_69
.BB.LABEL.7_64:	; if_else_bb429
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 874
	jarl32 _R_FCL_FCUFct_GetSecurityFlag, r31
	br9 .BB.LABEL.7_69
.BB.LABEL.7_65:	; if_else_bb431
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 878
	ld.w 0x00000000[r25], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.7_67
.BB.LABEL.7_66:	; if_then_bb438
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 880
	st.w r5, 0x00000010[r25]
	br9 .BB.LABEL.7_69
.BB.LABEL.7_67:	; if_else_bb441
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x0000000A, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 884
	st.w r5, 0x00000010[r25]
	br9 .BB.LABEL.7_69
.BB.LABEL.7_68:	; bb462
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 890
	movhi HIGHW1(#_g_fcl_data_str+0x000000AC), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x000000AC)[r5], r5
	jarl [r5], r31
.BB.LABEL.7_69:	; bb464
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 888
	ld.w 0x00000010[r25], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.7_68
	br9 .BB.LABEL.7_73
.BB.LABEL.7_70:	; if_else_bb472
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 896
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.7_72
.BB.LABEL.7_71:	; if_then_bb477
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 898
	st.w r5, 0x00000010[r25]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.7_72:	; if_else_bb480
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 0
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 904
	st.w r5, 0x00000010[r25]
.BB.LABEL.7_73:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_user_if.c", 907
	dispose 0x00000000, 0x00000201, [r31]
	.section R_FCL_DATA.bss, bss
	.align 4
_g_fcl_data_str:
	.ds (176)
	.section R_FCL_CONST.const, const
_fcl_ver_str.1.R_FCL_GetVersionString:
	.db 0x53,0x48,0x38,0x35,0x30,0x54,0x30,0x31,0x78,0x78,0x78,0x78,0x78,0x78,0x56,0x32
	.db 0x31,0x33
	.ds (1)
