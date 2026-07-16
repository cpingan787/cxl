#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\SecureBoot\SecureBoot.c -oDefaultBuild\SecureBoot.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b4e1ae8f466e40a78a4ff380c4f869dfawgqbqq1.ncm
#@	compiled at Thu Jul 16 13:41:29 2026

	.file "..\..\Bsw\SystemServices\SecureBoot\SecureBoot.c"

	$reg_mode 22
	.dbl_size 4

	.public _SecureBootCurrentStatus, 4
	.public _SecureBoot_Init
	.public _SecureBoot_VerifyApp
	.extern _Vss_InitConfig
	.extern _EEIf_Read
	.extern _EEIf_Write
	.extern _SignatureHeader_Init
	.extern _SecureProgram_ValidateFileDigest

	.section .text, text
_SecureBoot_Init:
	.stack _SecureBoot_Init = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 17
	prepare 0x00000001, 0x00000008
	movea 0x000000FF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 19
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 20
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 23
	jarl32 _Vss_InitConfig, r31
	st.w r10, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 26
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 28
	jarl _SecureBoot_VerifyApp, r31
	st.w r10, 0x00000004[r3]
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 0
	mov r3, r8
	mov 0x00000001, r7
	movea 0x000003C0, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 32
	jarl32 _EEIf_Read, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 34
	ld.w 0x00000000[r3], r5
	ld.w 0x00000004[r3], r6
	cmp r6, r5
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 0
	movea 0x00000004, r3, r8
	mov 0x00000001, r7
	movea 0x000003C0, r0, r6
	jarl32 _EEIf_Write, r31
.BB.LABEL.1_5:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 45
	ld.w 0x00000004[r3], r5
	movhi HIGHW1(#_SecureBootCurrentStatus), r0, r6
	st.w r5, LOWW(#_SecureBootCurrentStatus)[r6]
	dispose 0x00000008, 0x00000001, [r31]
_SecureBoot_VerifyApp:
	.stack _SecureBoot_VerifyApp = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 58
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 65
	jarl32 _SignatureHeader_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 66
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 72
	jarl32 _SecureProgram_ValidateFileDigest, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 75
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_break_bb.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_9
.BB.LABEL.2_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 76
	cmp 0x0000000A, r10
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 0
	cmp 0x00000005, r10
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_then_bb17
	add 0xFFFFFFFF, r10
	cmp 0x00000001, r10
	bh9 .BB.LABEL.2_8
.BB.LABEL.2_6:	; if_then_bb17.bb24_crit_edge
	movea 0x00000022, r0, r10
	br9 .BB.LABEL.2_9
.BB.LABEL.2_7:	; switch_clause_bb19
	movea 0x00000020, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 83
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_8:	; switch_clause_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 0
	movea 0x0000002F, r0, r10
.BB.LABEL.2_9:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureBoot/SecureBoot.c", 92
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 4
_SecureBootCurrentStatus:
	.dw 0x000000FF
