#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\FCL\lib\r_fcl_hw_access.c -oDefaultBuild\r_fcl_hw_access.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_95838858a7ee4c8d97f0aa7af7f70f98rm2bxu3h.irz
#@	compiled at Thu Jul 16 13:41:30 2026

	.file "..\..\Bsw\SystemServices\FCL\lib\r_fcl_hw_access.c"

	$reg_mode 22
	.dbl_size 4

	.extern _g_fcl_data_str
	.public _R_FCL_I_write_memory_u08
	.extern _R_FCL_Fct_Get_PID_Asm
	.public _R_FCL_Fct_CallFromRAM
	.extern _R_FCL_FCUFct_Clear_Cache_Asm
	.extern _R_FCL_FCUFct_ChkReg
	.public _R_FCL_FCUFct_SwitchMode_Start
	.public _R_FCL_FCUFct_SwitchMode_Check
	.public _R_FCL_FCUFct_CheckMode
	.public _R_FCL_FCUFct_GetConfigArea
	.extern _R_FCL_FCUFct_Switch_BFlash
	.public _R_FCL_FCUFct_SetConfigArea
	.public _R_FCL_FCUFct_GetSecurityFlag
	.public _R_FCL_FCUFct_GetBlockCnt
	.public _R_FCL_FCUFct_GetDeviceName
	.public _R_FCL_FCUFct_GetBlockEndAddr
	.public _R_FCL_FCUFct_PrepareEnvironment
	.extern _R_FCL_Fct_Copy_Code
	.public _R_FCL_FCUFct_Erase
	.public _R_FCL_FCUFct_Write
	.public _R_FCL_FCUFct_HandleMultiOperation
	.public _R_FCL_FCUFct_HandleLockBit
	.public _R_FCL_FCUFct_LockBitMode

	.section R_FCL_CODE_RAM.text, text
_R_FCL_I_read_memory_u32.1:
	.stack _R_FCL_I_read_memory_u32.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 175
	ld.w 0x00000000[r6], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 182
	jmp [r31]
_R_FCL_I_read_memory_u16.1:
	.stack _R_FCL_I_read_memory_u16.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 209
	ld.hu 0x00000000[r6], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 216
	jmp [r31]
_R_FCL_I_read_memory_u08.1:
	.stack _R_FCL_I_read_memory_u08.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 243
	ld.bu 0x00000000[r6], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 250
	jmp [r31]
_R_FCL_I_write_unaligned_memory_u32.1:
	.stack _R_FCL_I_write_unaligned_memory_u32.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 278
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 280
	andi 0x000000FF, r26, r7
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 281
	andi 0x0000FFFF, r26, r7
	shr 0x00000008, r7
	addi 0x00000001, r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 282
	mov r26, r7
	shr 0x00000010, r7
	zxb r7
	addi 0x00000002, r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 283
	mov r26, r7
	shr 0x00000018, r7
	addi 0x00000003, r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	dispose 0x00000000, 0x00000301, [r31]
_R_FCL_I_write_memory_u32.1:
	.stack _R_FCL_I_write_memory_u32.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 312
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 317
	jmp [r31]
_R_FCL_I_write_memory_u16.1:
	.stack _R_FCL_I_write_memory_u16.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 347
	st.h r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 352
	jmp [r31]
_R_FCL_I_write_memory_u08:
	.stack _R_FCL_I_write_memory_u08 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 382
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 387
	jmp [r31]
_R_FCL_I_GetCPUCorePid.1:
	.stack _R_FCL_I_GetCPUCorePid.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 416
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 421
	jarl32 _R_FCL_Fct_Get_PID_Asm, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 423
	andi 0x000000E0, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 426
	dispose 0x00000000, 0x00000001, [r31]
	.section R_FCL_CODE_ROMRAM.text, text
_R_FCL_Fct_CallFromRAM:
	.stack _R_FCL_Fct_CallFromRAM = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 453
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 455
	movhi HIGHW1(#_g_fcl_data_str+0x00000088), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000088)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 457
	jarl [r5], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 461
	jarl32 _R_FCL_FCUFct_GetConfigArea, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section R_FCL_CODE_RAM.text, text
_R_FCL_FCUFct_VerifyID.1:
	.stack _R_FCL_FCUFct_VerifyID.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 495
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 502
	movhi HIGHW1(#_g_fcl_data_str), r0, r25
	ld.w LOWW(#_g_fcl_data_str)[r25], r5
	ld.w 0x00000000[r5], r7
	mov 0xFFA08000, r6
	jarl _R_FCL_I_write_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 503
	ld.w LOWW(#_g_fcl_data_str)[r25], r5
	ld.w 0x00000004[r5], r7
	mov 0xFFA08004, r6
	jarl _R_FCL_I_write_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 504
	ld.w LOWW(#_g_fcl_data_str)[r25], r5
	ld.w 0x00000008[r5], r7
	mov 0xFFA08008, r6
	jarl _R_FCL_I_write_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 505
	ld.w LOWW(#_g_fcl_data_str)[r25], r5
	ld.w 0x0000000C[r5], r7
	mov 0xFFA0800C, r25
	mov r25, r6
	jarl _R_FCL_I_write_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 508
	mov r25, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	mov 0xFFA08010, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 511
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 512
	cmp 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 514
	cmov 0x00000002, 0x00000005, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 518
	dispose 0x00000000, 0x00000201, [r31]
_R_FCL_FCUFct_Clear_Cache.1:
	.stack _R_FCL_FCUFct_Clear_Cache.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 545
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 552
	jarl _R_FCL_I_GetCPUCorePid.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 555
	addi 0xFFFFFFE0, r10, r0
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb14_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFBC0700, r6
	br9 .BB.LABEL.11_5
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 561
	addi 0xFFFFFF60, r10, r0
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_else_bb.if_break_bb14_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFC5B000, r6
	br9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_else_bb13
	mov 0x00000000, r6
.BB.LABEL.11_5:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 573
	movhi HIGHW1(#_g_fcl_data_str), r0, r5
	ld.w LOWW(#_g_fcl_data_str)[r5], r5
	ld.hu 0x00000014[r5], r5
	mul 0x00000028, r5, r0
	ori 0x00000002, r5, r7
	mov 0x00000003, r5
	divhu r5, r7, r0
	jarl32 _R_FCL_FCUFct_Clear_Cache_Asm, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 574
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 576
	cmov 0x0000000A, 0x0000000D, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 580
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_Chk_DBFull.1:
	.stack _R_FCL_FCUFct_Chk_DBFull.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 607
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 613
	movhi HIGHW1(#_g_fcl_data_str), r0, r5
	ld.w LOWW(#_g_fcl_data_str)[r5], r5
	ld.hu 0x00000014[r5], r5
	mul 0x00000028, r5, r0
	movea 0x00000012, r5, r9
	movea 0x00000013, r0, r5
	divhu r5, r9, r0
	mov 0x00000000, r8
	movea 0x00000400, r0, r7
	mov 0xFFA10080, r6
	jarl32 _R_FCL_FCUFct_ChkReg, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 620
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 628
	cmov 0x0000000A, 0x0000000D, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 632
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_SetFrequency.1:
	.stack _R_FCL_FCUFct_SetFrequency.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 751
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 756
	movhi HIGHW1(#_g_fcl_data_str+0x00000077), r0, r5
	ld.bu LOWW(#_g_fcl_data_str+0x00000077)[r5], r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.13_9
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 758
	mov #_g_fcl_data_str, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 765
	ld.hu 0x0000005C[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 758
	ld.w 0x00000000[r5], r5
	ld.hu 0x00000014[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 765
	cmp r6, r5
	bl9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x0000005E), r0, r6
	ld.hu LOWW(#_g_fcl_data_str+0x0000005E)[r6], r6
	cmp r6, r5
	bnh9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 768
	movhi HIGHW1(#_g_fcl_data_str+0x00000018), r0, r5
	mov 0x00000004, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000018)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 774
	movhi HIGHW1(#_g_fcl_data_str+0x00000078), r0, r6
	ld.bu LOWW(#_g_fcl_data_str+0x00000078)[r6], r6
	addi 0xFFFFFF01, r6, r0
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 776
	movhi HIGHW1(#_g_fcl_data_str+0x00000060), r0, r5
	ld.hu LOWW(#_g_fcl_data_str+0x00000060)[r5], r5
	br9 .BB.LABEL.13_8
.BB.LABEL.13_6:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 780
	cmp 0x00000000, r6
	bz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 796
	add r6, r5
	add 0xFFFFFFFF, r5
	divhu r6, r5, r0
.BB.LABEL.13_8:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 803
	movea 0x00001E00, r5, r7
	zxh r7
	mov 0xFFA100E4, r6
	jarl _R_FCL_I_write_memory_u16.1, r31
.BB.LABEL.13_9:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000018), r0, r5
	st.w r0, LOWW(#_g_fcl_data_str+0x00000018)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 813
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_SwitchMode_Start:
	.stack _R_FCL_FCUFct_SwitchMode_Start = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 845
	prepare 0x00000301, 0x00000000
	addi 0x00000000, r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 853
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFA10080, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 855
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 858
	andi 0x00007000, r10, r0
	bnz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.14_8
.BB.LABEL.14_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 862
	jarl _R_FCL_FCUFct_ClearStatus.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.14_8
.BB.LABEL.14_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFA10084, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 867
	jarl _R_FCL_I_read_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 869
	andi 0x00000080, r10, r0
	bz9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; if_else_bb.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000006, r26
	br9 .BB.LABEL.14_8
.BB.LABEL.14_6:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 875
	zxb r10
	andi 0x0000FFFF, r25, r26
	cmp r26, r10
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_7:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r26
	mov 0xFFA10030, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 882
	mov r26, r7
	jarl _R_FCL_I_write_memory_u32.1, r31
	mov 0xFFA10034, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 883
	mov r26, r7
	jarl _R_FCL_I_write_memory_u32.1, r31
.BB.LABEL.14_8:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 887
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.14_10
.BB.LABEL.14_9:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 889
	movea 0xFFFFAA00, r25, r7
	zxh r7
	mov 0xFFA10084, r6
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 890
	movhi HIGHW1(#_g_fcl_data_str+0x00000048), r0, r5
	st.w r25, LOWW(#_g_fcl_data_str+0x00000048)[r5]
.BB.LABEL.14_10:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov r26, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 894
	dispose 0x00000000, 0x00000301, [r31]
_R_FCL_FCUFct_SwitchMode_Check:
	.stack _R_FCL_FCUFct_SwitchMode_Check = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 923
	prepare 0x00000001, 0x00000000
	mov 0xFFA10084, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 930
	jarl _R_FCL_I_read_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 932
	movhi HIGHW1(#_g_fcl_data_str+0x00000048), r0, r5
	ld.hu LOWW(#_g_fcl_data_str+0x00000048)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 931
	andi 0x00000081, r10, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 934
	cmp r5, r6
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 938
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_ForcedStop.1:
	.stack _R_FCL_FCUFct_ForcedStop.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 967
	prepare 0x00000001, 0x00000000
	movea 0x000000B3, r0, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 972
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 976
	movhi HIGHW1(#_g_fcl_data_str), r0, r5
	ld.w LOWW(#_g_fcl_data_str)[r5], r5
	ld.hu 0x00000014[r5], r5
	mul 0x00000028, r5, r0
	movea 0x00000012, r5, r9
	movea 0x00000013, r0, r5
	divhu r5, r9, r0
	ori 0x00008000, r0, r7
	mov 0xFFA10080, r6
	mov r7, r8
	jarl32 _R_FCL_FCUFct_ChkReg, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 983
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 991
	cmov 0x0000000A, 0x0000000D, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 996
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_ChkSuspended.1:
	.stack _R_FCL_FCUFct_ChkSuspended.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1025
	prepare 0x00000001, 0x00000000
	mov 0xFFA10080, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1032
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1033
	andi 0x00000100, r10, r0
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	andi 0x00000200, r10, r0
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1036
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1040
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_ClearStatus.1:
	.stack _R_FCL_FCUFct_ClearStatus.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1067
	prepare 0x00000001, 0x00000000
	mov 0xFFA10080, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1072
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1075
	andi 0x00004000, r10, r0
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFA10010, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1077
	jarl _R_FCL_I_read_memory_u08.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1079
	add 0xFFFFFFF0, r10
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000010, r0, r7
	mov 0xFFA10010, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1081
	jarl _R_FCL_I_write_memory_u08, r31
.BB.LABEL.18_3:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000050, r0, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1085
	jarl _R_FCL_I_write_memory_u08, r31
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_RestoreLastState.1:
	.stack _R_FCL_FCUFct_RestoreLastState.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1118
	movhi HIGHW1(#_g_fcl_data_str+0x0000003C), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x0000003C)[r5], r5
	cmp 0x00000000, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r5
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1120
	st.w r6, LOWW(#_g_fcl_data_str+0x00000044)[r5]
	jmp [r31]
.BB.LABEL.19_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1124
	st.w r6, LOWW(#_g_fcl_data_str+0x00000044)[r5]
	jmp [r31]
	.section R_FCL_CODE_ROMRAM.text, text
_R_FCL_FCUFct_CheckMode:
	.stack _R_FCL_FCUFct_CheckMode = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1250
	prepare 0x00000001, 0x00000000
	movhi 0x0000FFA1, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1257
	jarl32 _R_FCL_I_read_memory_u08.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1260
	shr 0x00000007, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1264
	dispose 0x00000000, 0x00000001, [r31]
	.section R_FCL_CODE_RAM.text, text
_R_FCL_FCUFct_GetResult.1:
	.stack _R_FCL_FCUFct_GetResult.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1300
	prepare 0x00000201, 0x00000000
	mov r6, r25
	mov 0xFFA10080, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1306
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1309
	andi 0x00008000, r10, r0
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; entry.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.21_21
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1323
	andi 0x00000002, r10, r0
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_then_bb.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000D, r10
	br9 .BB.LABEL.21_21
.BB.LABEL.21_4:	; bb
	andi 0x00000008, r10, r0
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_5:	; bb23
	andi 0x00000020, r10, r0
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_6:	; bb35
	andi 0x00000080, r10, r0
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_7:	; bb47
	movhi 0x00000002, r0, r5
	tst r5, r10
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1333
	andi 0x00004000, r10, r0
	bz9 .BB.LABEL.21_11
.BB.LABEL.21_9:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1335
	cmp 0x00000000, r25
	bz9 .BB.LABEL.21_3
.BB.LABEL.21_10:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000B, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1341
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.21_11:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1346
	andi 0x00000040, r10, r0
	bnz9 .BB.LABEL.21_20
.BB.LABEL.21_12:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1352
	andi 0x00002000, r10, r0
	bz9 .BB.LABEL.21_16
.BB.LABEL.21_13:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFA100C0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1354
	jarl _R_FCL_I_read_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1355
	andi 0x00000011, r10, r5
	addi 0xFFFFFFEF, r5, r0
	bz9 .BB.LABEL.21_15
.BB.LABEL.21_14:	; if_then_bb86.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.21_21
.BB.LABEL.21_15:	; if_else_bb95
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1361
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.21_16:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1367
	andi 0x00001000, r10, r0
	bnz9 .BB.LABEL.21_18
.BB.LABEL.21_17:	; if_else_bb97.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.21_21
.BB.LABEL.21_18:	; if_then_bb103
	mov 0xFFA100C0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1369
	jarl _R_FCL_I_read_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1370
	andi 0x00000001, r10, r0
	bnz9 .BB.LABEL.21_20
.BB.LABEL.21_19:	; if_then_bb103.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.21_21
.BB.LABEL.21_20:	; if_else_bb112
	mov 0x00000005, r10
.BB.LABEL.21_21:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1395
	dispose 0x00000000, 0x00000201, [r31]
_R_FCL_FCUFct_GetConfigArea:
	.stack _R_FCL_FCUFct_GetConfigArea = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1422
	prepare 0x00000387, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1432
	jarl32 _R_FCL_FCUFct_Switch_BFlash, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1433
	jarl _R_FCL_FCUFct_Clear_Cache.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1436
	addi 0x00000000, r10, r25
	bnz9 .BB.LABEL.22_12
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1439
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r6
	cmp 0x0000000A, r6
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFF300070, r26
	movea 0x00000020, r0, r27
	br9 .BB.LABEL.22_9
.BB.LABEL.22_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1444
	ld.w 0x00000000[r5], r26
	cmp 0x0000000C, r26
	bnz9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_else_bb.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFF300050, r26
	br9 .BB.LABEL.22_8
.BB.LABEL.22_5:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1449
	ld.w 0x00000000[r5], r26
	cmp 0x00000008, r26
	bz9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; if_else_bb25.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFF300060, r26
	br9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1451
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r26
	ld.w LOWW(#_g_fcl_data_str+0x00000008)[r26], r26
.BB.LABEL.22_8:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000010, r0, r27
.BB.LABEL.22_9:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1462
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000004[r5], r28
	mov 0x00000000, r29
	br9 .BB.LABEL.22_11
.BB.LABEL.22_10:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1467
	mov r26, r6
	jarl _R_FCL_I_read_memory_u08.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1468
	mov r28, r6
	mov r10, r7
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1470
	add 0x00000001, r29
	add 0x00000001, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1469
	add 0x00000001, r28
.BB.LABEL.22_11:	; bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1465
	andi 0x0000FFFF, r29, r5
	cmp r27, r5
	bl9 .BB.LABEL.22_10
.BB.LABEL.22_12:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1474
	jarl32 _R_FCL_FCUFct_Switch_BFlash, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1475
	jarl _R_FCL_FCUFct_Clear_Cache.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1478
	cmp 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1480
	cmov 0x00000002, r10, r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1484
	cmp 0x00000000, r5
	bz9 .BB.LABEL.22_14
.BB.LABEL.22_13:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1486
	movhi HIGHW1(#_g_fcl_data_str+0x00000044), r0, r6
	st.w r0, LOWW(#_g_fcl_data_str+0x00000044)[r6]
.BB.LABEL.22_14:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1489
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r6
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r6], r6
	st.w r5, 0x00000010[r6]
	dispose 0x00000000, 0x00000387, [r31]
	.section R_FCL_CODE_ROMRAM.text, text
_R_FCL_FCUFct_SetConfigArea:
	.stack _R_FCL_FCUFct_SetConfigArea = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1517
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1522
	jarl _R_FCL_FCUFct_CheckMode, r31
	cmp 0x00000000, r10
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1525
	st.w r6, 0x00000010[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1530
	ld.w 0x00000000[r5], r6
	cmp 0x00000009, r6
	bnz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1532
	ld.w 0x00000004[r5], r5
	mov #_g_fcl_data_str, r6
	st.w r5, 0x0000000C[r6]
	mov 0xFF300070, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1533
	st.w r5, 0x00000008[r6]
	movea 0x00000010, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1534
	st.h r5, 0x00000010[r6]
	jr .BB.LABEL.23_24
.BB.LABEL.23_4:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1536
	ld.w 0x00000000[r5], r6
	cmp 0x00000007, r6
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1538
	movhi HIGHW1(#_g_fcl_data_str+0x00000010), r0, r5
	mov 0x00000008, r6
	st.h r6, LOWW(#_g_fcl_data_str+0x00000010)[r5]
	br9 .BB.LABEL.23_24
.BB.LABEL.23_6:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1540
	ld.w 0x00000000[r5], r6
	cmp 0x0000000B, r6
	bnz9 .BB.LABEL.23_9
.BB.LABEL.23_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1542
	ld.w 0x00000004[r5], r5
	mov #_g_fcl_data_str, r6
	st.w r5, 0x0000000C[r6]
	mov 0xFF300050, r5
.BB.LABEL.23_8:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	st.w r5, 0x00000008[r6]
	mov 0x00000008, r5
	st.h r5, 0x00000010[r6]
	br9 .BB.LABEL.23_24
.BB.LABEL.23_9:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1546
	ld.w 0x00000000[r5], r6
	addi 0xFFFFFFE9, r6, r0
	mov #_g_fcl_data_str, r6
	bnz9 .BB.LABEL.23_11
.BB.LABEL.23_10:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1548
	ld.w 0x00000004[r5], r5
	st.w r5, 0x0000000C[r6]
	mov 0xFF300060, r5
	br9 .BB.LABEL.23_8
.BB.LABEL.23_11:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1556
	ld.w 0x00000058[r6], r7
	mov 0xFF300040, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1557
	st.w r8, 0x00000008[r6]
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1558
	st.h r8, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1560
	ld.w 0x00000000[r5], r6
	cmp 0x0000000D, r6
	bnz9 .BB.LABEL.23_13
.BB.LABEL.23_12:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x7FFFFFFF, r5
	br9 .BB.LABEL.23_20
.BB.LABEL.23_13:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1564
	ld.w 0x00000000[r5], r6
	cmp 0x0000000F, r6
	bnz9 .BB.LABEL.23_15
.BB.LABEL.23_14:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xBFFFFFFF, r5
	br9 .BB.LABEL.23_20
.BB.LABEL.23_15:	; if_else_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1568
	ld.w 0x00000000[r5], r6
	addi 0xFFFFFFEF, r6, r0
	bnz9 .BB.LABEL.23_17
.BB.LABEL.23_16:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xDFFFFFFF, r5
	br9 .BB.LABEL.23_20
.BB.LABEL.23_17:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1572
	ld.w 0x00000000[r5], r5
	addi 0xFFFFFFED, r5, r0
	bnz9 .BB.LABEL.23_19
.BB.LABEL.23_18:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xF7FFFFFF, r5
	br9 .BB.LABEL.23_20
.BB.LABEL.23_19:	; if_else_bb88
	mov 0x1EFFFFFF, r5
.BB.LABEL.23_20:	; if_else_bb88
	and r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1583
	andi 0x000000F0, r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1586
	mov #_g_fcl_data_str, r6
	st.b r5, 0x0000009C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1587
	mov r7, r5
	shr 0x00000008, r5
	st.b r5, 0x0000009D[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1588
	mov r7, r5
	shr 0x00000010, r5
	st.b r5, 0x0000009E[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1589
	shr 0x00000018, r7
	st.b r7, 0x0000009F[r6]
	mov 0x00000004, r5
	br9 .BB.LABEL.23_22
.BB.LABEL.23_21:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1592
	andi 0x000000FF, r5, r6
	mov #_g_fcl_data_str, r7
	add r6, r7
	mov 0xFFFFFFFF, r6
	st.b r6, 0x0000009C[r7]
	add 0x00000001, r5
.BB.LABEL.23_22:	; bb118
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1590
	andi 0x000000FF, r5, r6
	cmp 0x0000000F, r6
	bnh9 .BB.LABEL.23_21
.BB.LABEL.23_23:	; bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1594
	mov #_g_fcl_data_str, r5
	movea 0x0000009C, r5, r6
	st.w r6, 0x0000000C[r5]
.BB.LABEL.23_24:	; if_break_bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1596
	mov #_g_fcl_data_str, r5
	mov 0x00000003, r6
	st.w r6, 0x00000044[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1597
	st.w r6, 0x00000014[r5]
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_GetSecurityFlag:
	.stack _R_FCL_FCUFct_GetSecurityFlag = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1627
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1632
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r6
	cmp 0x0000000E, r6
	bnz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1634
	movhi HIGHW1(#_g_fcl_data_str+0x00000058), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000058)[r5], r5
	shr 0x0000001F, r5
	xori 0x00000001, r5, r7
	br9 .BB.LABEL.24_11
.BB.LABEL.24_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1636
	ld.w 0x00000000[r5], r6
	add 0xFFFFFFF0, r6
	bnz9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1638
	movhi HIGHW1(#_g_fcl_data_str+0x00000058), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000058)[r5], r5
	shr 0x0000001E, r5
.BB.LABEL.24_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	andi 0x00000001, r5, r5
	xori 0x00000001, r5, r7
	br9 .BB.LABEL.24_11
.BB.LABEL.24_5:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1640
	ld.w 0x00000000[r5], r6
	addi 0xFFFFFFEE, r6, r0
	bnz9 .BB.LABEL.24_7
.BB.LABEL.24_6:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1642
	movhi HIGHW1(#_g_fcl_data_str+0x00000058), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000058)[r5], r5
	shr 0x0000001D, r5
	br9 .BB.LABEL.24_4
.BB.LABEL.24_7:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1644
	ld.w 0x00000000[r5], r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000058), r0, r6
	ld.w LOWW(#_g_fcl_data_str+0x00000058)[r6], r6
	not r6, r6
	addi 0xFFFFFFEC, r5, r0
	bnz9 .BB.LABEL.24_9
.BB.LABEL.24_8:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1646
	shr 0x0000001B, r6
	br9 .BB.LABEL.24_10
.BB.LABEL.24_9:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1650
	shr 0x00000018, r6
.BB.LABEL.24_10:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	andi 0x00000001, r6, r7
.BB.LABEL.24_11:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1653
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r25
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r25], r5
	ld.w 0x00000004[r5], r6
	jarl32 _R_FCL_I_write_unaligned_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1655
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r25], r5
	st.w r0, 0x00000010[r5]
	dispose 0x00000000, 0x00000201, [r31]
_R_FCL_FCUFct_GetBlockCnt:
	.stack _R_FCL_FCUFct_GetBlockCnt = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1685
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1687
	mov #_g_fcl_data_str, r25
	ld.w 0x00000004[r25], r5
	ld.w 0x00000004[r5], r6
	ld.hu 0x00000062[r25], r7
	jarl32 _R_FCL_I_write_unaligned_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1690
	ld.w 0x00000004[r25], r5
	st.w r0, 0x00000010[r5]
	dispose 0x00000000, 0x00000201, [r31]
_R_FCL_FCUFct_GetDeviceName:
	.stack _R_FCL_FCUFct_GetDeviceName = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1720
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1725
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000004[r5], r25
	mov 0x00000000, r26
	br9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1729
	andi 0x000000FF, r26, r5
	mov #_g_fcl_data_str, r6
	add r5, r6
	ld.bu 0x00000066[r6], r7
	mov r25, r6
	jarl32 _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1730
	add 0x00000001, r26
	add 0x00000001, r25
.BB.LABEL.26_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1727
	andi 0x000000FF, r26, r5
	cmp 0x0000000F, r5
	bnh9 .BB.LABEL.26_1
.BB.LABEL.26_3:	; bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1732
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	st.w r0, 0x00000010[r5]
	dispose 0x00000000, 0x00000301, [r31]
_R_FCL_FCUFct_GetBlockEndAddr:
	.stack _R_FCL_FCUFct_GetBlockEndAddr = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1762
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1768
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r6
	ld.w 0x00000008[r6], r6
	movhi 0x00008000, r0, r7
	tst r7, r6
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bz9 .BB.LABEL.27_7
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1771
	ld.w 0x00000008[r5], r5
	mov 0x7FFFFFFF, r6
	and r6, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000054), r0, r6
	ld.w LOWW(#_g_fcl_data_str+0x00000054)[r6], r6
	cmp r6, r5
	bnc9 .BB.LABEL.27_4
.BB.LABEL.27_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000084), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000084)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; bb.bb20_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; bb19
	mov 0x00000001, r5
.BB.LABEL.27_5:	; bb20
	cmp 0x00000000, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.27_15
.BB.LABEL.27_6:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1775
	ld.w 0x00000008[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1778
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1775
	shl 0x0000000F, r7
	mov 0x01007FFF, r5
	br9 .BB.LABEL.27_13
.BB.LABEL.27_7:	; if_else_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1791
	ld.w 0x00000008[r5], r6
	movhi HIGHW1(#_g_fcl_data_str+0x00000062), r0, r7
	ld.hu LOWW(#_g_fcl_data_str+0x00000062)[r7], r7
	cmp r6, r7
	bnh9 .BB.LABEL.27_15
.BB.LABEL.27_8:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1794
	ld.w 0x00000008[r5], r6
	movhi HIGHW1(#_g_fcl_data_str+0x00000076), r0, r7
	ld.bu LOWW(#_g_fcl_data_str+0x00000076)[r7], r7
	cmp r6, r7
	bnh9 .BB.LABEL.27_10
.BB.LABEL.27_9:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1796
	ld.w 0x00000008[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1798
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1796
	shl 0x0000000D, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1797
	ori 0x00001FFF, r7, r7
	br9 .BB.LABEL.27_14
.BB.LABEL.27_10:	; if_else_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1805
	ld.w 0x00000008[r5], r6
	movhi HIGHW1(#_g_fcl_data_str+0x0000004C), r0, r8
	ld.w LOWW(#_g_fcl_data_str+0x0000004C)[r8], r8
	mov r7, r9
	add r8, r9
	cmp r6, r9
	bnh9 .BB.LABEL.27_12
.BB.LABEL.27_11:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1809
	ld.w 0x00000008[r5], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1813
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1809
	add 0x00000001, r8
	sub r7, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1811
	shl 0x0000000F, r8
	shl 0x0000000D, r7
	add r8, r7
	add 0xFFFFFFFF, r7
	br9 .BB.LABEL.27_14
.BB.LABEL.27_12:	; if_else_bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1818
	ld.w 0x00000008[r5], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1822
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1818
	add r8, r7
	add 0x00000001, r9
	sub r7, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1821
	shl 0x0000000F, r9
	mov 0x007FFFFF, r5
	mov r9, r7
.BB.LABEL.27_13:	; if_else_bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	add r5, r7
.BB.LABEL.27_14:	; if_else_bb104
	jarl32 _R_FCL_I_write_unaligned_memory_u32.1, r31
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	st.w r0, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1832
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.27_15:	; if_else_bb126
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000004, r6
	st.w r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1832
	dispose 0x00000000, 0x00000001, [r31]
	.section R_FCL_CODE_RAM.text, text
_R_FCL_FCUFct_PrepareEnvironment_IntErr.1:
	.stack _R_FCL_FCUFct_PrepareEnvironment_IntErr.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1860
	prepare 0x00000201, 0x00000000
	mov r6, r25
	movea 0x00000099, r0, r7
	mov 0xFFA10014, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1863
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1865
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	st.w r25, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000201, [r31]
_R_FCL_FCUFct_PrepareEnvironment:
	.stack _R_FCL_FCUFct_PrepareEnvironment = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1894
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1900
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000014)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.29_7
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFA10084, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1903
	jarl _R_FCL_I_read_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1904
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1906
	movhi HIGHW1(#_g_fcl_data_str+0x00000018), r0, r5
	st.w r25, LOWW(#_g_fcl_data_str+0x00000018)[r5]
	movea 0x00000088, r0, r7
	mov 0xFFA10014, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1909
	jarl _R_FCL_I_write_memory_u08, r31
	ori 0x0000C403, r0, r7
	mov 0xFFA10054, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1912
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1917
	jarl _R_FCL_FCUFct_GetDeviceInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1922
	mov r25, r6
	jarl32 _R_FCL_FCUFct_Switch_BFlash, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1923
	jarl _R_FCL_FCUFct_Clear_Cache.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1932
	cmp 0x00000000, r10
	bz9 .BB.LABEL.29_4
.BB.LABEL.29_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1934
	jarl32 _R_FCL_FCUFct_Switch_BFlash, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1935
	jarl _R_FCL_FCUFct_Clear_Cache.1, r31
	br9 .BB.LABEL.29_10
.BB.LABEL.29_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFF300040, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1943
	jarl _R_FCL_I_read_memory_u32.1, r31
	mov #_g_fcl_data_str, r5
	st.w r10, 0x00000058[r5]
	mov 0xFFA13000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1949
	st.w r6, 0x00000094[r5]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1950
	st.w r6, 0x00000014[r5]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_5:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1982
	mov #_g_fcl_data_str, r5
	mov 0x00000006, r6
	st.w r6, 0x00000018[r5]
.BB.LABEL.29_6:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000C, r6
	st.w r6, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2127
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_7:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1988
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.29_15
.BB.LABEL.29_8:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 1997
	movhi HIGHW1(#_g_fcl_data_str+0x00000094), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000094)[r5], r7
	mov 0xFFA13000, r5
	cmp r5, r7
	bl9 .BB.LABEL.29_14
.BB.LABEL.29_9:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2000
	jarl32 _R_FCL_FCUFct_Switch_BFlash, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2001
	jarl _R_FCL_FCUFct_Clear_Cache.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2004
	cmp 0x00000000, r10
	bz9 .BB.LABEL.29_11
.BB.LABEL.29_10:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000F, r6
	jarl _R_FCL_FCUFct_PrepareEnvironment_IntErr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2127
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_11:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ori 0x0000C400, r0, r7
	mov 0xFFA10054, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2013
	jarl _R_FCL_I_write_memory_u16.1, r31
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2016
	jarl _R_FCL_FCUFct_SwitchMode_Start, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2019
	addi 0x00000000, r10, r25
	bnz9 .BB.LABEL.29_13
.BB.LABEL.29_12:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2021
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000003, r25
	st.w r25, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_13:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000099, r0, r7
	mov 0xFFA10014, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2026
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2028
	mov #_g_fcl_data_str, r5
	st.w r25, 0x00000018[r5]
	br9 .BB.LABEL.29_6
.BB.LABEL.29_14:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2035
	movhi HIGHW1(#_g_fcl_data_str+0x00000098), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000098)[r5], r6
	movea 0x00000200, r0, r8
	jarl32 _R_FCL_Fct_Copy_Code, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_15:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2041
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.29_21
.BB.LABEL.29_16:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2044
	jarl _R_FCL_FCUFct_SwitchMode_Check, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2045
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_30
.BB.LABEL.29_17:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2047
	jarl _R_FCL_FCUFct_ForcedStop.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2050
	cmp 0x00000000, r10
	bz9 .BB.LABEL.29_19
.BB.LABEL.29_18:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2052
	jarl _R_FCL_FCUFct_PrepareEnvironment_IntErr.1, r31
	br9 .BB.LABEL.29_20
.BB.LABEL.29_19:	; if_else_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2056
	jarl _R_FCL_FCUFct_ClearStatus.1, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2058
	jarl _R_FCL_FCUFct_SwitchMode_Start, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2060
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000004, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
.BB.LABEL.29_20:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000099, r0, r7
	mov 0xFFA10014, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2064
	jarl _R_FCL_I_write_memory_u08, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_21:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2069
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.29_24
.BB.LABEL.29_22:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2072
	jarl _R_FCL_FCUFct_SwitchMode_Check, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2073
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_30
.BB.LABEL.29_23:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2076
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000005, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_24:	; if_else_bb91
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2092
	cmp 0x00000005, r5
	bnz9 .BB.LABEL.29_29
.BB.LABEL.29_25:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2095
	jarl _R_FCL_FCUFct_VerifyID.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2096
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.29_27
.BB.LABEL.29_26:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2098
	jarl _R_FCL_FCUFct_SetFrequency.1, r31
	br9 .BB.LABEL.29_28
.BB.LABEL.29_27:	; if_else_bb103
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2102
	movhi HIGHW1(#_g_fcl_data_str+0x00000018), r0, r5
	st.w r10, LOWW(#_g_fcl_data_str+0x00000018)[r5]
.BB.LABEL.29_28:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2104
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000C, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.29_29:	; if_else_bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2111
	mov #_g_fcl_data_str, r5
	ld.w 0x00000018[r5], r6
	ld.w 0x00000004[r5], r7
	st.w r6, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2112
	ld.w 0x00000004[r5], r6
	ld.w 0x00000010[r6], r6
	cmp 0x00000000, r6
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2118
	cmov 0x00000002, 0x00000002, r6, r6
	st.w r6, 0x00000044[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2120
	st.w r0, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2122
	st.w r0, 0x0000002C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2123
	st.w r0, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2124
	st.w r0, 0x0000003C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2125
	st.w r0, 0x00000090[r5]
.BB.LABEL.29_30:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2127
	dispose 0x00000000, 0x00000201, [r31]
_R_FCL_FCUFct_GetDeviceInfo.1:
	.stack _R_FCL_FCUFct_GetDeviceInfo.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2164
	prepare 0x00000385, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2170
	mov #_g_fcl_data_str, r25
	mov 0x00000001, r26
	st.w r26, 0x00000084[r25]
	mov 0x01030219, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2173
	jarl _R_FCL_I_read_memory_u08.1, r31
	st.b r10, 0x00000077[r25]
	mov 0x01030270, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2176
	jarl _R_FCL_I_read_memory_u32.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2179
	movea 0x000000C0, r27, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2180
	mov r10, r5
	shr 0x00000015, r5
	st.w r5, 0x0000004C[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2181
	shr 0x00000003, r10
	st.b r10, 0x00000076[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2184
	movea 0x000000C4, r27, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2185
	zxh r10
	shr 0x00000005, r10
	st.w r10, 0x00000050[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2189
	st.w r26, 0x00000054[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2192
	movea 0x000000CC, r27, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2195
	zxb r10
	addi 0xFFFFFFAB, r10, r0
	setf 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2201
	st.w r5, 0x0000007C[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2205
	movea 0x000000D0, r27, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2206
	st.b r10, 0x00000066[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2207
	mov r10, r5
	shr 0x00000008, r5
	st.b r5, 0x00000067[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2208
	mov r10, r5
	shr 0x00000010, r5
	st.b r5, 0x00000068[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2209
	shr 0x00000018, r10
	st.b r10, 0x00000069[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2210
	movea 0x000000D4, r27, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2213
	ld.bu 0x00000077[r25], r5
	addi 0xFFFFFF01, r5, r0
	mov r10, r25
	bz9 .BB.LABEL.30_9
.BB.LABEL.30_1:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2216
	cmp 0x00000003, r5
	bh9 .BB.LABEL.30_4
.BB.LABEL.30_2:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x01030264, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2218
	jarl _R_FCL_I_read_memory_u08.1, r31
	mov #_g_fcl_data_str, r26
	st.b r10, 0x00000078[r26]
	mov 0x01030274, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2220
	jarl _R_FCL_I_read_memory_u32.1, r31
	mov 0x000F4240, r5
	divqu r5, r10, r0
	st.h r10, 0x00000060[r26]
	mov 0x00FFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2224
	and r25, r5
	mov 0x00323130, r6
	cmp r6, r5
	bz9 .BB.LABEL.30_5
.BB.LABEL.30_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00FFFFFF, r5
	and r25, r5
	mov 0x005A3130, r6
	cmp r6, r5
	bz9 .BB.LABEL.30_5
	br9 .BB.LABEL.30_6
.BB.LABEL.30_4:	; if_else_bb84
	mov 0x01030265, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2233
	jarl _R_FCL_I_read_memory_u08.1, r31
	mov #_g_fcl_data_str, r26
	st.b r10, 0x00000078[r26]
	mov 0x01030278, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2235
	jarl _R_FCL_I_read_memory_u32.1, r31
	mov 0x000F4240, r5
	divqu r5, r10, r0
	st.h r10, 0x00000060[r26]
	mov 0x0103021E, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2239
	jarl _R_FCL_I_read_memory_u08.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.30_6
.BB.LABEL.30_5:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000084), r0, r5
	st.w r0, LOWW(#_g_fcl_data_str+0x00000084)[r5]
.BB.LABEL.30_6:	; if_break_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2246
	jarl _R_FCL_I_GetCPUCorePid.1, r31
	addi 0xFFFFFF60, r10, r0
	bnz9 .BB.LABEL.30_8
.BB.LABEL.30_7:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2248
	movhi HIGHW1(#_g_fcl_data_str+0x00000084), r0, r5
	mov 0x00000001, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000084)[r5]
.BB.LABEL.30_8:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x01030234, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2252
	jarl _R_FCL_I_read_memory_u32.1, r31
	mov 0x000F4240, r26
	divqu r26, r10, r0
	mov #_g_fcl_data_str, r28
	st.h r10, 0x0000005E[r28]
	mov 0x01030238, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2254
	jarl _R_FCL_I_read_memory_u32.1, r31
	divqu r26, r10, r0
	st.h r10, 0x0000005C[r28]
.BB.LABEL.30_9:	; if_break_bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2258
	mov #_g_fcl_data_str, r26
	st.b r25, 0x0000006A[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2259
	mov r25, r5
	shr 0x00000008, r5
	st.b r5, 0x0000006B[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2260
	mov r25, r5
	shr 0x00000010, r5
	st.b r5, 0x0000006C[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2261
	shr 0x00000018, r25
	st.b r25, 0x0000006D[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2262
	movea 0x000000D8, r27, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2263
	st.b r10, 0x0000006E[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2264
	mov r10, r5
	shr 0x00000008, r5
	st.b r5, 0x0000006F[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2265
	mov r10, r5
	shr 0x00000010, r5
	st.b r5, 0x00000070[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2266
	shr 0x00000018, r10
	st.b r10, 0x00000071[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2267
	movea 0x000000DC, r27, r6
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2268
	st.b r10, 0x00000072[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2269
	mov r10, r5
	shr 0x00000008, r5
	st.b r5, 0x00000073[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2270
	mov r10, r5
	shr 0x00000010, r5
	st.b r5, 0x00000074[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2271
	shr 0x00000018, r10
	st.b r10, 0x00000075[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2274
	ld.bu 0x00000076[r26], r5
	ld.w 0x0000004C[r26], r6
	add r6, r5
	ld.w 0x00000050[r26], r6
	add r6, r5
	st.h r5, 0x00000062[r26]
	dispose 0x00000000, 0x00000385, [r31]
	.section R_FCL_CODE_ROMRAM.text, text
_R_FCL_FCUFct_Erase:
	.stack _R_FCL_FCUFct_Erase = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2305
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2310
	jarl _R_FCL_FCUFct_CheckMode, r31
	cmp 0x00000000, r10
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2313
	st.w r6, 0x00000010[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.31_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2319
	ld.w 0x00000008[r5], r6
	movhi 0x00008000, r0, r7
	tst r7, r6
	ld.w 0x00000008[r5], r6
	bz9 .BB.LABEL.31_10
.BB.LABEL.31_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x7FFFFFFF, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2321
	and r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2324
	ld.hu 0x0000000C[r5], r7
	add r7, r6
	movhi HIGHW1(#_g_fcl_data_str+0x00000054), r0, r7
	ld.w LOWW(#_g_fcl_data_str+0x00000054)[r7], r7
	cmp r7, r6
	bh9 .BB.LABEL.31_7
.BB.LABEL.31_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.hu 0x0000000C[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.31_7
.BB.LABEL.31_5:	; bb39
	movhi HIGHW1(#_g_fcl_data_str+0x00000084), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000084)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.31_7
.BB.LABEL.31_6:	; bb39.bb46_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.31_8
.BB.LABEL.31_7:	; bb45
	mov 0x00000001, r5
.BB.LABEL.31_8:	; bb46
	cmp 0x00000000, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.31_21
.BB.LABEL.31_9:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2330
	ld.h 0x0000000C[r5], r6
	mov #_g_fcl_data_str, r7
	st.h r6, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2331
	ld.w 0x00000008[r5], r5
	shl 0x0000000F, r5
	movhi 0x00000100, r5, r5
	st.w r5, 0x00000008[r7]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2334
	st.w r5, 0x00000044[r7]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2335
	st.w r5, 0x00000018[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2336
	st.w r5, 0x00000014[r7]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.31_10:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2353
	ld.hu 0x0000000C[r5], r7
	add r7, r6
	movhi HIGHW1(#_g_fcl_data_str+0x00000062), r0, r7
	ld.hu LOWW(#_g_fcl_data_str+0x00000062)[r7], r7
	cmp r7, r6
	bh9 .BB.LABEL.31_13
.BB.LABEL.31_11:	; bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.hu 0x0000000C[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.31_13
.BB.LABEL.31_12:	; bb78.bb88_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.31_14
.BB.LABEL.31_13:	; bb87
	mov 0x00000001, r5
.BB.LABEL.31_14:	; bb88
	cmp 0x00000000, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.31_21
.BB.LABEL.31_15:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2357
	ld.h 0x0000000C[r5], r6
	mov #_g_fcl_data_str, r7
	st.h r6, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2360
	ld.w 0x00000008[r5], r6
	ld.bu 0x00000076[r7], r7
	cmp r6, r7
	bnh9 .BB.LABEL.31_17
.BB.LABEL.31_16:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2362
	ld.w 0x00000008[r5], r5
	shl 0x0000000D, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r7
	st.w r5, LOWW(#_g_fcl_data_str+0x00000008)[r7]
	br9 .BB.LABEL.31_20
.BB.LABEL.31_17:	; if_else_bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2367
	ld.w 0x00000008[r5], r6
	movhi HIGHW1(#_g_fcl_data_str+0x0000004C), r0, r8
	ld.w LOWW(#_g_fcl_data_str+0x0000004C)[r8], r8
	mov r7, r9
	add r8, r9
	ld.w 0x00000008[r5], r5
	sub r7, r5
	cmp r6, r9
	bnh9 .BB.LABEL.31_19
.BB.LABEL.31_18:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2372
	shl 0x0000000F, r5
	shl 0x0000000D, r7
	add r5, r7
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r5
	st.w r7, LOWW(#_g_fcl_data_str+0x00000008)[r5]
	br9 .BB.LABEL.31_20
.BB.LABEL.31_19:	; if_else_bb133
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2381
	sub r8, r5
	shl 0x0000000F, r5
	movhi 0x00000080, r5, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r6
	st.w r5, LOWW(#_g_fcl_data_str+0x00000008)[r6]
.BB.LABEL.31_20:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2385
	mov #_g_fcl_data_str, r5
	mov 0x00000003, r6
	st.w r6, 0x00000044[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2386
	st.w r6, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2387
	st.w r6, 0x00000014[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.31_21:	; if_else_bb146
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000004, r6
	st.w r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2397
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_Write:
	.stack _R_FCL_FCUFct_Write = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2424
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2429
	jarl _R_FCL_FCUFct_CheckMode, r31
	cmp 0x00000000, r10
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.32_2
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2431
	st.w r6, 0x00000010[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.32_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2436
	ld.w 0x00000008[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2439
	ld.hu 0x0000000C[r5], r7
	shl 0x00000008, r7
	add r6, r7
	mov #_g_fcl_data_str, r8
	ld.bu 0x00000076[r8], r9
	shl 0x0000000D, r9
	ld.w 0x0000004C[r8], r8
	shl 0x0000000F, r8
	add r8, r9
	cmp r9, r7
	bnh9 .BB.LABEL.32_5
.BB.LABEL.32_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.hu 0x0000000C[r5], r7
	shl 0x00000008, r7
	add r6, r7
	movhi HIGHW1(#_g_fcl_data_str+0x00000050), r0, r8
	ld.w LOWW(#_g_fcl_data_str+0x00000050)[r8], r8
	shl 0x0000000F, r8
	movhi 0x00000080, r8, r8
	cmp r8, r7
	bh9 .BB.LABEL.32_8
.BB.LABEL.32_4:	; bb36
	ld.w 0x00000008[r5], r5
	movhi 0x00000080, r0, r7
	cmp r7, r5
	bl9 .BB.LABEL.32_8
.BB.LABEL.32_5:	; bb55
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000008[r5], r5
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.32_8
.BB.LABEL.32_6:	; bb69
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.hu 0x0000000C[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.32_8
.BB.LABEL.32_7:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2448
	mov #_g_fcl_data_str, r6
	ld.w 0x00000004[r6], r5
	ld.w 0x00000004[r5], r5
	st.w r5, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2449
	ld.w 0x00000004[r6], r5
	ld.h 0x0000000C[r5], r5
	st.h r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2450
	ld.w 0x00000004[r6], r5
	ld.w 0x00000008[r5], r5
	st.w r5, 0x00000008[r6]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2451
	st.w r5, 0x00000044[r6]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2452
	st.w r5, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2453
	st.w r5, 0x00000014[r6]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.32_8:	; if_else_bb94
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2457
	mov #_g_fcl_data_str, r5
	ld.w 0x00000004[r5], r7
	ld.hu 0x0000000C[r7], r8
	shl 0x00000008, r8
	add r8, r6
	ld.w 0x00000054[r5], r5
	shl 0x0000000F, r5
	movhi 0x00000100, r5, r5
	cmp r5, r6
	bh9 .BB.LABEL.32_14
.BB.LABEL.32_9:	; bb107
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.w 0x00000008[r7], r5
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.32_14
.BB.LABEL.32_10:	; bb121
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.hu 0x0000000C[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.32_14
.BB.LABEL.32_11:	; bb135
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000008[r5], r5
	movhi 0x00000100, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.32_14
.BB.LABEL.32_12:	; bb148
	movhi HIGHW1(#_g_fcl_data_str+0x00000084), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000084)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.32_14
.BB.LABEL.32_13:	; bb148.bb155_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.32_15
.BB.LABEL.32_14:	; bb154
	mov 0x00000001, r5
.BB.LABEL.32_15:	; bb155
	cmp 0x00000000, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.32_17
.BB.LABEL.32_16:	; if_then_bb160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2465
	ld.w 0x00000004[r5], r6
	mov #_g_fcl_data_str, r7
	st.w r6, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2466
	ld.h 0x0000000C[r5], r6
	st.h r6, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2467
	ld.w 0x00000008[r5], r5
	st.w r5, 0x00000008[r7]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2468
	st.w r5, 0x00000044[r7]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2469
	st.w r5, 0x00000018[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2470
	st.w r5, 0x00000014[r7]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.32_17:	; if_else_bb170
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2476
	st.w r6, 0x00000010[r5]
	dispose 0x00000000, 0x00000001, [r31]
	.section R_FCL_CODE_RAM.text, text
_R_FCL_FCUFct_HandleMultiOperation_IntErr.1:
	.stack _R_FCL_FCUFct_HandleMultiOperation_IntErr.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2505
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2508
	mov #_g_fcl_data_str, r26
	ld.h 0x00000064[r26], r5
	movea 0x00003B00, r5, r7
	zxh r7
	mov 0xFFA10020, r6
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2511
	st.w r25, 0x00000014[r26]
	dispose 0x00000000, 0x00000301, [r31]
_R_FCL_FCUFct_HandleMultiOperation:
	.stack _R_FCL_FCUFct_HandleMultiOperation = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2537
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2549
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000014)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.34_12
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFA10020, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2551
	jarl _R_FCL_I_read_memory_u16.1, r31
	mov #_g_fcl_data_str, r5
	st.h r10, 0x00000064[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2554
	ld.w 0x00000034[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.34_11
.BB.LABEL.34_2:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2558
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r6
	cmp 0x00000003, r6
	bz9 .BB.LABEL.34_6
.BB.LABEL.34_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.w 0x00000000[r5], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.34_6
.BB.LABEL.34_4:	; bb33
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.34_6
.BB.LABEL.34_5:	; bb46
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.34_7
.BB.LABEL.34_6:	; if_then_bb60
	mov 0x00000001, r6
	br9 .BB.LABEL.34_8
.BB.LABEL.34_7:	; if_else_bb
	movea 0x00000080, r0, r6
.BB.LABEL.34_8:	; if_else_bb
	jarl _R_FCL_FCUFct_SwitchMode_Start, r31
	mov #_g_fcl_data_str, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2573
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.34_10
.BB.LABEL.34_9:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2575
	st.w r6, 0x00000014[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2576
	st.w r6, 0x00000018[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_10:	; if_else_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2580
	st.w r6, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2581
	st.w r10, 0x00000018[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_11:	; if_else_bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2586
	mov #_g_fcl_data_str, r5
	st.h r10, 0x00000040[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2587
	ld.w 0x00000014[r5], r6
	st.w r6, 0x0000002C[r5]
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2588
	st.w r6, 0x00000014[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_12:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2593
	cmp 0x00000006, r5
	bnz9 .BB.LABEL.34_17
.BB.LABEL.34_13:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2596
	jarl _R_FCL_FCUFct_SwitchMode_Check, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2597
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.34_129
.BB.LABEL.34_14:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2600
	movhi HIGHW1(#_g_fcl_data_str+0x00000090), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000090)[r5], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.34_54
.BB.LABEL.34_15:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2604
	movhi HIGHW1(#_g_fcl_data_str+0x00000034), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000034)[r5], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.34_53
.BB.LABEL.34_16:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2606
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000007, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_17:	; if_else_bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2633
	cmp 0x00000007, r5
	bnz17 .BB.LABEL.34_56
.BB.LABEL.34_18:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2637
	movhi HIGHW1(#_g_fcl_data_str+0x00000090), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000090)[r5], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.34_54
.BB.LABEL.34_19:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2641
	movhi HIGHW1(#_g_fcl_data_str+0x00000034), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000034)[r5], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.34_53
.BB.LABEL.34_20:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2645
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r6
	cmp 0x00000003, r6
	bz9 .BB.LABEL.34_24
.BB.LABEL.34_21:	; bb131
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.w 0x00000000[r5], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.34_24
.BB.LABEL.34_22:	; bb144
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.34_24
.BB.LABEL.34_23:	; bb157
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.34_31
.BB.LABEL.34_24:	; if_then_bb171
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2652
	movhi HIGHW1(#_g_fcl_data_str+0x00000080), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000080)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.34_26
.BB.LABEL.34_25:	; if_then_bb176
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00005500, r0, r7
	br9 .BB.LABEL.34_27
.BB.LABEL.34_26:	; if_else_bb177
	movea 0x00005501, r0, r7
.BB.LABEL.34_27:	; if_else_bb177
	mov 0xFFA10088, r6
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2664
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000008)[r5], r5
	movhi 0x00000100, r0, r6
	cmp r6, r5
	bnc9 .BB.LABEL.34_29
.BB.LABEL.34_28:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00003B00, r0, r7
	br9 .BB.LABEL.34_30
.BB.LABEL.34_29:	; if_else_bb184
	movea 0x00003B02, r0, r7
.BB.LABEL.34_30:	; if_else_bb184
	mov 0xFFA10020, r6
	jarl _R_FCL_I_write_memory_u16.1, r31
.BB.LABEL.34_31:	; if_break_bb186
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2676
	mov #_g_fcl_data_str, r25
	ld.w 0x00000008[r25], r7
	mov 0xFFA10030, r6
	jarl _R_FCL_I_write_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2679
	ld.w 0x00000004[r25], r5
	ld.w 0x00000000[r5], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.34_33
.BB.LABEL.34_32:	; if_then_bb194
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi 0x0000FFA2, r0, r25
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2681
	mov r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	movea 0x000000D0, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2682
	mov r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2683
	mov #_g_fcl_data_str, r5
	ld.h 0x00000010[r5], r6
	add 0xFFFFFFFF, r6
	st.h r6, 0x00000010[r5]
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2684
	st.w r6, 0x00000014[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_33:	; if_else_bb199
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2687
	ld.w 0x00000000[r5], r6
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.34_40
.BB.LABEL.34_34:	; if_then_bb206
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi 0x0000FFA2, r0, r25
	movea 0x000000E8, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2690
	mov r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	movea 0x00000080, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2691
	mov r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2694
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000008, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	mov 0x00000001, r5
	mov 0x00000000, r25
	br9 .BB.LABEL.34_38
.BB.LABEL.34_35:	; bb207
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2701
	movhi HIGHW1(#_g_fcl_data_str+0x0000000C), r0, r26
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r6
	add 0x00000001, r6
	jarl _R_FCL_I_read_memory_u08.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2703
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r6
	jarl _R_FCL_I_read_memory_u08.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2704
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r5
	add 0x00000002, r5
	st.w r5, LOWW(#_g_fcl_data_str+0x0000000C)[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2702
	shl 0x00000008, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2703
	mov r27, r7
	or r10, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2705
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2707
	jarl _R_FCL_FCUFct_Chk_DBFull.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2710
	addi 0x00000000, r10, r26
	bz9 .BB.LABEL.34_37
.BB.LABEL.34_36:	; if_then_bb232
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2714
	jarl _R_FCL_FCUFct_HandleMultiOperation_IntErr.1, r31
.BB.LABEL.34_37:	; if_break_bb233
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	cmp 0x00000000, r26
	setf 0x00000002, r5
	add 0x00000001, r25
.BB.LABEL.34_38:	; bb236
	movea 0x0000003F, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2698
	cmp r6, r25
	bh17 .BB.LABEL.34_129
.BB.LABEL.34_39:	; bb236
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.34_35
	jr .BB.LABEL.34_129
.BB.LABEL.34_40:	; if_else_bb253
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2718
	ld.w 0x00000000[r5], r6
	cmp 0x00000004, r6
	bnz9 .BB.LABEL.34_43
.BB.LABEL.34_41:	; if_then_bb260
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000071, r0, r7
.BB.LABEL.34_42:	; if_then_bb260
	movhi 0x0000FFA2, r0, r25
	mov r25, r6
	jarl _R_FCL_I_write_memory_u08, r31
	mov r25, r6
	br9 .BB.LABEL.34_52
.BB.LABEL.34_43:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2725
	ld.w 0x00000000[r5], r6
	cmp 0x00000003, r6
	bnz9 .BB.LABEL.34_45
.BB.LABEL.34_44:	; if_then_bb268
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000077, r0, r7
	br9 .BB.LABEL.34_42
.BB.LABEL.34_45:	; if_else_bb269
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2736
	ld.w 0x00000000[r5], r5
	cmp 0x00000007, r5
	bnz9 .BB.LABEL.34_47
.BB.LABEL.34_46:	; if_then_bb276
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x00000045, r0, r7
	br9 .BB.LABEL.34_48
.BB.LABEL.34_47:	; if_else_bb277
	movea 0x00000040, r0, r7
.BB.LABEL.34_48:	; if_else_bb277
	movhi 0x0000FFA2, r0, r6
	jarl _R_FCL_I_write_memory_u08, r31
	mov 0x00000008, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2744
	jarl _R_FCL_I_write_memory_u08, r31
	mov 0x00000000, r25
	br9 .BB.LABEL.34_50
.BB.LABEL.34_49:	; bb279
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2750
	movhi HIGHW1(#_g_fcl_data_str+0x0000000C), r0, r26
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r6
	add 0x00000001, r6
	jarl _R_FCL_I_read_memory_u08.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2752
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r6
	jarl _R_FCL_I_read_memory_u08.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2753
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r5
	add 0x00000002, r5
	st.w r5, LOWW(#_g_fcl_data_str+0x0000000C)[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2751
	shl 0x00000008, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2752
	mov r27, r7
	or r10, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2754
	jarl _R_FCL_I_write_memory_u16.1, r31
	add 0x00000001, r25
.BB.LABEL.34_50:	; bb301
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2747
	cmp 0x00000008, r25
	bl9 .BB.LABEL.34_49
.BB.LABEL.34_51:	; bb306
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi 0x0000FFA2, r0, r6
.BB.LABEL.34_52:	; bb306
	movea 0x000000D0, r0, r7
	jarl _R_FCL_I_write_memory_u08, r31
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000009, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3157
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_53:	; if_else_bb311
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov #_g_fcl_data_str, r5
	ld.h 0x00000064[r5], r6
	st.h r6, 0x00000040[r5]
	mov 0x00000001, r6
	st.w r6, 0x0000002C[r5]
	mov 0x0000000A, r6
	st.w r6, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3157
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_54:	; if_else_bb314
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000A, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	jarl _R_FCL_FCUFct_ForcedStop.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.34_129
.BB.LABEL.34_55:	; if_else_bb794
	mov 0x0000000D, r6
	jarl _R_FCL_FCUFct_HandleMultiOperation_IntErr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3157
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_56:	; if_else_bb323
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2784
	cmp 0x00000008, r5
	bnz9 .BB.LABEL.34_63
.BB.LABEL.34_57:	; if_else_bb323.bb352_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r10
	movea 0x00000040, r0, r25
	br9 .BB.LABEL.34_59
.BB.LABEL.34_58:	; bb329
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2792
	movhi HIGHW1(#_g_fcl_data_str+0x0000000C), r0, r26
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r6
	add 0x00000001, r6
	jarl _R_FCL_I_read_memory_u08.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2794
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r6
	jarl _R_FCL_I_read_memory_u08.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2795
	ld.w LOWW(#_g_fcl_data_str+0x0000000C)[r26], r5
	add 0x00000002, r5
	st.w r5, LOWW(#_g_fcl_data_str+0x0000000C)[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2793
	shl 0x00000008, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2794
	mov r27, r7
	or r10, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2796
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2798
	jarl _R_FCL_FCUFct_Chk_DBFull.1, r31
	add 0x00000001, r25
.BB.LABEL.34_59:	; bb352
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x0000007F, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2788
	cmp r5, r25
	bh9 .BB.LABEL.34_61
.BB.LABEL.34_60:	; bb352
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_58
.BB.LABEL.34_61:	; bb368
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2802
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.34_126
.BB.LABEL.34_62:	; if_then_bb373
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2804
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000009, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	movea 0x000000D0, r0, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2805
	jarl _R_FCL_I_write_memory_u08, r31
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_63:	; if_else_bb376
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2819
	cmp 0x00000009, r5
	bnz17 .BB.LABEL.34_103
.BB.LABEL.34_64:	; if_then_bb381
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2823
	movhi HIGHW1(#_g_fcl_data_str+0x00000090), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000090)[r5], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.34_99
.BB.LABEL.34_65:	; if_then_bb386
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2828
	movhi HIGHW1(#_g_fcl_data_str+0x00000034), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000034)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.34_67
.BB.LABEL.34_66:	; if_then_bb386.if_break_bb413_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.34_70
.BB.LABEL.34_67:	; bb390
	movhi HIGHW1(#_g_fcl_data_str+0x0000001C), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x0000001C)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.34_66
.BB.LABEL.34_68:	; if_then_bb402
	mov 0xFFA10020, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2831
	jarl _R_FCL_I_read_memory_u16.1, r31
	movhi HIGHW1(#_g_fcl_data_str+0x00000040), r0, r5
	st.h r10, LOWW(#_g_fcl_data_str+0x00000040)[r5]
	mov 0xFFA10080, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2832
	jarl _R_FCL_I_read_memory_u32.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2835
	andi 0x00000800, r10, r0
	bz9 .BB.LABEL.34_66
.BB.LABEL.34_69:	; if_then_bb410
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movea 0x000000B0, r0, r7
	movhi 0x0000FFA2, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2837
	jarl _R_FCL_I_write_memory_u08, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2838
	mov #_g_fcl_data_str, r5
	ld.w 0x00000004[r5], r6
	st.w r6, 0x0000001C[r5]
	mov 0x00000001, r6
.BB.LABEL.34_70:	; if_break_bb413
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2843
	jarl _R_FCL_FCUFct_GetResult.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2846
	cmp 0x00000001, r10
	bz17 .BB.LABEL.34_101
.BB.LABEL.34_71:	; if_then_bb420
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2850
	movhi HIGHW1(#_g_fcl_data_str+0x0000001C), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x0000001C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.34_77
.BB.LABEL.34_72:	; bb424
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000034), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000034)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.34_77
.BB.LABEL.34_73:	; if_then_bb436
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2855
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_76
.BB.LABEL.34_74:	; if_then_bb441
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2857
	mov #_g_fcl_data_str, r5
	st.w r10, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2858
	st.w r0, 0x00000034[r5]
.BB.LABEL.34_75:	; if_else_bb651
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000A, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	jr .BB.LABEL.34_101
.BB.LABEL.34_76:	; if_else_bb443
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2862
	movhi HIGHW1(#_g_fcl_data_str+0x0000002C), r0, r5
	mov 0x00000009, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x0000002C)[r5]
	br9 .BB.LABEL.34_75
.BB.LABEL.34_77:	; if_else_bb445
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2870
	movhi HIGHW1(#_g_fcl_data_str+0x00000018), r0, r5
	st.w r10, LOWW(#_g_fcl_data_str+0x00000018)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2873
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.34_75
.BB.LABEL.34_78:	; if_else_bb452
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2882
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r6
	ld.w 0x00000000[r6], r6
	cmp 0x00000002, r6
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.34_81
.BB.LABEL.34_79:	; if_then_bb459
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2885
	ld.w 0x00000008[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2888
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r7
	ld.w LOWW(#_g_fcl_data_str+0x00000008)[r7], r7
	ld.hu 0x0000000C[r5], r5
	shl 0x00000008, r5
	add r5, r6
	movea 0x00000100, r7, r5
	cmp r6, r5
	bnc9 .BB.LABEL.34_75
.BB.LABEL.34_80:	; if_then_bb475
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2891
	movea 0x00000100, r7, r5
	mov #_g_fcl_data_str, r6
	st.w r5, 0x00000008[r6]
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2892
	st.w r5, 0x00000014[r6]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2893
	st.w r5, 0x00000018[r6]
	jr .BB.LABEL.34_101
.BB.LABEL.34_81:	; if_else_bb480
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2904
	ld.w 0x00000000[r5], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.34_88
.BB.LABEL.34_82:	; if_then_bb487
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2907
	movhi HIGHW1(#_g_fcl_data_str+0x00000010), r0, r6
	ld.hu LOWW(#_g_fcl_data_str+0x00000010)[r6], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.34_75
.BB.LABEL.34_83:	; if_then_bb493
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2909
	mov #_g_fcl_data_str, r7
	mov 0x00000007, r8
	st.w r8, 0x00000014[r7]
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2910
	st.w r8, 0x00000018[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2912
	ld.w 0x00000008[r5], r8
	mov 0x7FFFFFFF, r9
	and r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2915
	ld.hu 0x0000000C[r5], r9
	sub r6, r9
	add r8, r9
	ld.bu 0x00000076[r7], r7
	cmp r7, r9
	bh9 .BB.LABEL.34_85
.BB.LABEL.34_84:	; if_then_bb512
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2920
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000008)[r5], r6
	movea 0x00002000, r6, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000008)[r5]
	jr .BB.LABEL.34_101
.BB.LABEL.34_85:	; if_else_bb515
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2924
	ld.hu 0x0000000C[r5], r5
	sub r6, r5
	add r5, r8
	movhi HIGHW1(#_g_fcl_data_str+0x0000004C), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x0000004C)[r5], r5
	add r5, r7
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r5
	cmp r7, r8
	bnz9 .BB.LABEL.34_87
.BB.LABEL.34_86:	; if_then_bb532
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2930
	st.w r6, LOWW(#_g_fcl_data_str+0x00000008)[r5]
	jr .BB.LABEL.34_101
.BB.LABEL.34_87:	; if_else_bb533
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2936
	ld.w LOWW(#_g_fcl_data_str+0x00000008)[r5], r6
	ori 0x00008000, r0, r7
	add r7, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000008)[r5]
	jr .BB.LABEL.34_101
.BB.LABEL.34_88:	; if_else_bb540
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2948
	ld.w 0x00000000[r5], r6
	cmp 0x00000004, r6
	bnz9 .BB.LABEL.34_90
.BB.LABEL.34_89:	; if_then_bb547
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0xFFA10090, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2950
	jarl _R_FCL_I_read_memory_u08.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2952
	mov #_g_fcl_data_str, r25
	ld.w 0x00000004[r25], r5
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2951
	andi 0x00000001, r10, r5
	xori 0x00000001, r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2952
	jarl _R_FCL_I_write_unaligned_memory_u32.1, r31
	mov 0x0000000A, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2953
	st.w r5, 0x00000014[r25]
	br9 .BB.LABEL.34_101
.BB.LABEL.34_90:	; if_else_bb556
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2957
	ld.w 0x00000000[r5], r6
	cmp 0x00000003, r6
	bz17 .BB.LABEL.34_75
.BB.LABEL.34_91:	; if_else_bb564
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2964
	ld.w 0x00000000[r5], r6
	cmp 0x0000000D, r6
	bz9 .BB.LABEL.34_96
.BB.LABEL.34_92:	; bb570
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.w 0x00000000[r5], r5
	cmp 0x0000000F, r5
	bz9 .BB.LABEL.34_96
.BB.LABEL.34_93:	; bb583
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r5
	addi 0xFFFFFFEF, r5, r0
	bz9 .BB.LABEL.34_96
.BB.LABEL.34_94:	; bb596
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r5
	addi 0xFFFFFFED, r5, r0
	bz9 .BB.LABEL.34_96
.BB.LABEL.34_95:	; bb609
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r5
	addi 0xFFFFFFEB, r5, r0
	bnz9 .BB.LABEL.34_97
.BB.LABEL.34_96:	; if_then_bb623
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2971
	mov #_g_fcl_data_str, r5
	ld.bu 0x0000009C[r5], r6
	ld.bu 0x0000009D[r5], r7
	shl 0x00000008, r7
	or r7, r6
	ld.bu 0x0000009E[r5], r7
	shl 0x00000010, r7
	or r7, r6
	ld.b 0x0000009F[r5], r7
	shl 0x00000018, r7
	or r7, r6
	st.w r6, 0x00000058[r5]
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2978
	st.w r6, 0x00000014[r5]
	br9 .BB.LABEL.34_101
.BB.LABEL.34_97:	; if_else_bb638
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2984
	movhi HIGHW1(#_g_fcl_data_str+0x00000010), r0, r5
	ld.h LOWW(#_g_fcl_data_str+0x00000010)[r5], r6
	add 0xFFFFFFF8, r6
	st.h r6, LOWW(#_g_fcl_data_str+0x00000010)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2987
	andi 0x0000FFFF, r6, r0
	bz17 .BB.LABEL.34_75
.BB.LABEL.34_98:	; if_then_bb648
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2989
	mov #_g_fcl_data_str, r5
	mov 0x00000007, r6
	st.w r6, 0x00000014[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2990
	st.w r6, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 2991
	ld.w 0x00000008[r5], r6
	movea 0x00000010, r6, r6
	st.w r6, 0x00000008[r5]
	br9 .BB.LABEL.34_101
.BB.LABEL.34_99:	; if_else_bb661
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3008
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000A, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3010
	jarl _R_FCL_FCUFct_ForcedStop.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3013
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_101
.BB.LABEL.34_100:	; if_then_bb667
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3015
	jarl _R_FCL_FCUFct_HandleMultiOperation_IntErr.1, r31
.BB.LABEL.34_101:	; if_break_bb669
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3020
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000014)[r5], r5
	cmp 0x0000000A, r5
	bnz17 .BB.LABEL.34_129
.BB.LABEL.34_102:	; if_then_bb674
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3022
	movhi HIGHW1(#_g_fcl_data_str+0x00000064), r0, r5
	ld.h LOWW(#_g_fcl_data_str+0x00000064)[r5], r5
	movea 0x00003B00, r5, r7
	zxh r7
	mov 0xFFA10020, r6
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3024
	jarl _R_FCL_FCUFct_ClearStatus.1, r31
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_103:	; if_else_bb680
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3029
	cmp 0x0000000A, r5
	bnz9 .BB.LABEL.34_105
.BB.LABEL.34_104:	; if_then_bb685
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3031
	jarl _R_FCL_FCUFct_SwitchMode_Start, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3032
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000B, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_105:	; if_else_bb687
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3036
	cmp 0x0000000B, r5
	bnz9 .BB.LABEL.34_108
.BB.LABEL.34_106:	; if_then_bb692
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3038
	jarl _R_FCL_FCUFct_SwitchMode_Check, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3039
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.34_129
.BB.LABEL.34_107:	; if_then_bb698
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3041
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x0000000C, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_108:	; if_else_bb700
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3050
	movhi HIGHW1(#_g_fcl_data_str+0x00000090), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000090)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.34_121
.BB.LABEL.34_109:	; if_then_bb705
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3054
	movhi HIGHW1(#_g_fcl_data_str+0x00000034), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000034)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.34_117
.BB.LABEL.34_110:	; if_then_bb710
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3057
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	ld.w 0x00000000[r5], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.34_113
.BB.LABEL.34_111:	; bb716
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	ld.w 0x00000000[r5], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.34_113
.BB.LABEL.34_112:	; bb716.if_break_bb738_crit_edge
	mov 0x00000000, r25
	br9 .BB.LABEL.34_115
.BB.LABEL.34_113:	; if_then_bb730
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3060
	jarl _R_FCL_FCUFct_Clear_Cache.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3063
	addi 0x00000000, r10, r25
	bz9 .BB.LABEL.34_115
.BB.LABEL.34_114:	; if_then_bb736
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3066
	jarl _R_FCL_FCUFct_HandleMultiOperation_IntErr.1, r31
.BB.LABEL.34_115:	; if_break_bb738
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3070
	cmp 0x00000000, r25
	bnz17 .BB.LABEL.34_129
.BB.LABEL.34_116:	; if_then_bb743
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3073
	mov #_g_fcl_data_str, r25
	ld.w 0x00000018[r25], r5
	ld.w 0x00000004[r25], r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3074
	jarl _R_FCL_FCUFct_RestoreLastState.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3075
	st.w r0, 0x00000014[r25]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_117:	; if_else_bb748
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3082
	mov #_g_fcl_data_str, r25
	ld.h 0x00000064[r25], r5
	movea 0x00003B00, r5, r7
	zxh r7
	mov 0xFFA10020, r6
	jarl _R_FCL_I_write_memory_u16.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3086
	ld.w 0x0000001C[r25], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.34_120
.BB.LABEL.34_118:	; bb756
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x0000002C), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x0000002C)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.34_120
.BB.LABEL.34_119:	; if_then_bb768
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3089
	movhi HIGHW1(#_g_fcl_data_str+0x0000002C), r0, r5
	mov 0x0000000C, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x0000002C)[r5]
.BB.LABEL.34_120:	; if_break_bb769
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3091
	mov #_g_fcl_data_str, r5
	ld.w 0x00000004[r5], r6
	st.w r6, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3092
	ld.w 0x00000008[r5], r6
	st.w r6, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3093
	ld.h 0x00000010[r5], r6
	st.h r6, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3094
	ld.w 0x00000018[r5], r6
	st.w r6, 0x00000030[r5]
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3096
	st.w r6, 0x00000044[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3097
	ld.w 0x00000004[r5], r6
	mov 0x00000002, r7
	st.w r7, 0x00000010[r6]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3098
	st.w r6, 0x0000003C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3099
	st.w r0, 0x00000034[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_121:	; if_else_bb777
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3110
	movhi HIGHW1(#_g_fcl_data_str+0x0000001C), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x0000001C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.34_125
.BB.LABEL.34_122:	; if_then_bb782
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3114
	jarl _R_FCL_FCUFct_ChkSuspended.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_125
.BB.LABEL.34_123:	; if_then_bb787
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3116
	jarl _R_FCL_FCUFct_SwitchMode_Start, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3117
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.34_55
.BB.LABEL.34_124:	; if_then_bb793
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3119
	movhi HIGHW1(#_g_fcl_data_str+0x00000014), r0, r5
	mov 0x00000006, r6
	st.w r6, LOWW(#_g_fcl_data_str+0x00000014)[r5]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_125:	; if_then_bb802
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3132
	jarl _R_FCL_FCUFct_Clear_Cache.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3135
	cmp 0x00000000, r10
	bz9 .BB.LABEL.34_127
.BB.LABEL.34_126:	; if_then_bb808
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000F, r6
	jarl _R_FCL_FCUFct_HandleMultiOperation_IntErr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3157
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.34_127:	; if_else_bb809
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3141
	mov #_g_fcl_data_str, r5
	mov 0x00000002, r6
	st.w r6, 0x00000044[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3142
	ld.w 0x00000004[r5], r6
	mov 0x0000000C, r7
	st.w r7, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3143
	st.w r0, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3144
	st.w r0, 0x00000090[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3145
	ld.w 0x0000001C[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.34_129
.BB.LABEL.34_128:	; if_then_bb817
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3147
	st.w r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3148
	mov #_g_fcl_data_str, r5
	st.w r0, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3149
	st.w r0, 0x0000003C[r5]
.BB.LABEL.34_129:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3157
	dispose 0x00000000, 0x00000381, [r31]
	.section R_FCL_CODE_ROMRAM.text, text
_R_FCL_FCUFct_HandleLockBit:
	.stack _R_FCL_FCUFct_HandleLockBit = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3425
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3428
	jarl _R_FCL_FCUFct_CheckMode, r31
	cmp 0x00000000, r10
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3430
	st.w r6, 0x00000010[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.35_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3436
	ld.w 0x00000008[r5], r6
	movhi 0x00008000, r0, r7
	tst r7, r6
	bz9 .BB.LABEL.35_9
.BB.LABEL.35_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3440
	ld.w 0x00000008[r5], r5
	mov 0x7FFFFFFF, r6
	and r6, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000054), r0, r6
	ld.w LOWW(#_g_fcl_data_str+0x00000054)[r6], r6
	cmp r6, r5
	bnc9 .BB.LABEL.35_6
.BB.LABEL.35_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	movhi HIGHW1(#_g_fcl_data_str+0x00000084), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000084)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.35_6
.BB.LABEL.35_5:	; bb.bb25_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.35_7
.BB.LABEL.35_6:	; bb24
	mov 0x00000001, r5
.BB.LABEL.35_7:	; bb25
	cmp 0x00000000, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000004), r0, r5
	ld.w LOWW(#_g_fcl_data_str+0x00000004)[r5], r5
	bnz9 .BB.LABEL.35_16
.BB.LABEL.35_8:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3445
	ld.w 0x00000008[r5], r5
	shl 0x0000000F, r5
	movhi 0x00000100, r5, r5
	mov #_g_fcl_data_str, r6
	st.w r5, 0x00000008[r6]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3448
	st.w r5, 0x00000044[r6]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3449
	st.w r5, 0x00000014[r6]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.35_9:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3463
	ld.w 0x00000008[r5], r6
	movhi HIGHW1(#_g_fcl_data_str+0x00000062), r0, r7
	ld.hu LOWW(#_g_fcl_data_str+0x00000062)[r7], r7
	cmp r6, r7
	bnh9 .BB.LABEL.35_16
.BB.LABEL.35_10:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3467
	ld.w 0x00000008[r5], r6
	movhi HIGHW1(#_g_fcl_data_str+0x00000076), r0, r7
	ld.bu LOWW(#_g_fcl_data_str+0x00000076)[r7], r7
	cmp r6, r7
	bnh9 .BB.LABEL.35_12
.BB.LABEL.35_11:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3469
	ld.w 0x00000008[r5], r5
	shl 0x0000000D, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r7
	st.w r5, LOWW(#_g_fcl_data_str+0x00000008)[r7]
	br9 .BB.LABEL.35_15
.BB.LABEL.35_12:	; if_else_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3474
	ld.w 0x00000008[r5], r6
	movhi HIGHW1(#_g_fcl_data_str+0x0000004C), r0, r8
	ld.w LOWW(#_g_fcl_data_str+0x0000004C)[r8], r8
	mov r7, r9
	add r8, r9
	ld.w 0x00000008[r5], r5
	sub r7, r5
	cmp r6, r9
	bnh9 .BB.LABEL.35_14
.BB.LABEL.35_13:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3478
	shl 0x0000000F, r5
	shl 0x0000000D, r7
	add r5, r7
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r5
	st.w r7, LOWW(#_g_fcl_data_str+0x00000008)[r5]
	br9 .BB.LABEL.35_15
.BB.LABEL.35_14:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3486
	sub r8, r5
	shl 0x0000000F, r5
	movhi 0x00000080, r5, r5
	movhi HIGHW1(#_g_fcl_data_str+0x00000008), r0, r6
	st.w r5, LOWW(#_g_fcl_data_str+0x00000008)[r6]
.BB.LABEL.35_15:	; if_break_bb98
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3490
	mov #_g_fcl_data_str, r5
	mov 0x00000003, r6
	st.w r6, 0x00000044[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3491
	st.w r6, 0x00000014[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.35_16:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 0
	mov 0x00000004, r6
	st.w r6, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3499
	dispose 0x00000000, 0x00000001, [r31]
_R_FCL_FCUFct_LockBitMode:
	.stack _R_FCL_FCUFct_LockBitMode = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3527
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3535
	setf 0x0000000A, r5
	mov #_g_fcl_data_str, r6
	st.w r5, 0x00000080[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/FCL/lib/r_fcl_hw_access.c", 3537
	ld.w 0x00000004[r6], r5
	st.w r0, 0x00000010[r5]
	jmp [r31]
