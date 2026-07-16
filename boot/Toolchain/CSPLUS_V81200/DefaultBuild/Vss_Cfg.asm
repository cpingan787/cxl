#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\vss\Vss_Cfg.c -oDefaultBuild\Vss_Cfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d201059e7426496da9137aed5d3cb7d1i0pim20n.f0r
#@	compiled at Thu Jul 16 13:41:45 2026

	.file "..\..\Bsw\SystemServices\vss\Vss_Cfg.c"

	$reg_mode 22
	.dbl_size 4

	.extern _g_pSignatureHeader
	.public _sm2_public_key, 65
	.public _ecc_public_key, 65
	.public _Vss_InitConfig
	.extern _VssCryptoInit
	.extern _Wdg_59_DriverB_TriggerFunc
	.extern _EEIf_Write
	.extern _EEIf_Read
	.extern _memcpy

	.section .text, text
_Vss_InitConfig:
	.stack _Vss_InitConfig = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 98
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 101
	mov #_VssConfig_WdtFeed.1, r7
	mov #_VssConfig_flashFunc.1, r6
	jarl32 _VssCryptoInit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 102
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_flashFunc.1:
	.stack _VssConfig_flashFunc.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 114
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 119
	cmp 0x00000000, r9
	ld.w 0x00000004[r3], r5
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	cmp 0x00000008, r6
	blt9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; entry.bb39_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 125
	shl 0x00000003, r6
	mov #_configTable.1, r10
	add r6, r10
	ld.w 0x00000004[r10], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 126
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_break_bb.bb39_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 129
	mov r7, r6
	mov r8, r7
	mov r9, r8
	mov r5, r9
	jarl [r10], r31
.BB.LABEL.2_6:	; bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 133
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_WdtFeed.1:
	.stack _VssConfig_WdtFeed.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 141
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 144
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_VSNRw.1:
	.stack _VssConfig_VSNRw.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 156
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 161
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; entry.bb67_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.4_10
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 166
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 169
	movea 0x000003C6, r7, r6
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 172
	jarl32 _EEIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 173
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb30.bb67_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_10
.BB.LABEL.4_6:	; if_then_bb42
	movea 0x0000001D, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 175
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 178
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_8:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 181
	movea 0x000003C6, r7, r6
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 184
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 185
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_9:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	movea 0x0000001C, r0, r10
.BB.LABEL.4_10:	; bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 194
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_VSNActiveRw.1:
	.stack _VssConfig_VSNActiveRw.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 205
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 210
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; entry.bb67_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.5_10
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 215
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 218
	movea 0x000003E6, r7, r6
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 221
	jarl32 _EEIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 222
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb30.bb67_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.5_10
.BB.LABEL.5_6:	; if_then_bb42
	movea 0x0000001D, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 224
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 227
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_8:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 230
	movea 0x000003E6, r7, r6
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 233
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 234
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_9:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	movea 0x0000001C, r0, r10
.BB.LABEL.5_10:	; bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 243
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_SM4CmacKeyByindex.1:
	.stack _VssConfig_SM4CmacKeyByindex.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 254
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 259
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.bb68_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.6_10
.BB.LABEL.6_2:	; bb
	cmp 0x00000001, r7
	bgt9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 264
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 267
	shl 0x00000004, r7
	movea 0x000003E8, r7, r6
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 270
	jarl32 _EEIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 271
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb30.bb68_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.6_10
.BB.LABEL.6_6:	; if_then_bb43
	movea 0x0000001D, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 273
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 276
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_8:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 279
	shl 0x00000004, r7
	movea 0x000003E8, r7, r6
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 282
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 283
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_9:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	movea 0x0000001C, r0, r10
.BB.LABEL.6_10:	; bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 290
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_SM4CmacKeyActiveByindex.1:
	.stack _VssConfig_SM4CmacKeyActiveByindex.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 301
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 306
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.bb66_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.7_10
.BB.LABEL.7_2:	; bb
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.7_1
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 311
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 314
	movea 0x00000408, r7, r6
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 317
	jarl32 _EEIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 318
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb30.bb66_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_10
.BB.LABEL.7_6:	; if_then_bb42
	movea 0x0000001D, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 320
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 323
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_8:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 326
	movea 0x00000408, r7, r6
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 329
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 330
	cmp 0x00000000, r10
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_9:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	movea 0x0000001C, r0, r10
.BB.LABEL.7_10:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 337
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_AESKeyByindex.1:
	.stack _VssConfig_AESKeyByindex.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 348
	cmp 0x00000000, r8
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 358
	cmp 0x00000001, r6
	bh9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_break_bb.bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_else_bb39
	mov 0x00000004, r10
.BB.LABEL.8_5:	; bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 378
	jmp [r31]
_VssConfig_AESKeyActiveByindex.1:
	.stack _VssConfig_AESKeyActiveByindex.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 389
	cmp 0x00000000, r8
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 399
	cmp 0x00000001, r6
	bh9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_break_bb.bb42_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_else_bb37
	mov 0x00000004, r10
.BB.LABEL.9_5:	; bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 419
	jmp [r31]
_VssConfig_SM2KeyByindex.1:
	.stack _VssConfig_SM2KeyByindex.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 430
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 435
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.bb66_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.10_7
.BB.LABEL.10_2:	; bb
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 440
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_break_bb.bb66_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	movea 0x0000001D, r0, r10
	br9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 454
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.10_1
.BB.LABEL.10_6:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 458
	st.b r5, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 460
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r5], r5
	movea 0x00000024, r5, r7
	add 0x00000001, r8
	movea 0x00000040, r0, r5
	mov r8, r6
	mov r5, r8
	jarl32 _memcpy, r31
	mov 0x00000000, r10
.BB.LABEL.10_7:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 471
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_Ecc256KeyByindex.1:
	.stack _VssConfig_Ecc256KeyByindex.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 482
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 487
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.bb69_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.11_10
.BB.LABEL.11_2:	; bb
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 492
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 495
	mulhi 0x00000041, r7, r5
	movea 0x0000044A, r5, r6
	movea 0x00000041, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 498
	jarl32 _EEIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 499
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb30.bb69_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.11_10
.BB.LABEL.11_6:	; if_then_bb43
	movea 0x0000001D, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 501
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 504
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_8:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 507
	mulhi 0x00000041, r7, r5
	movea 0x0000044A, r5, r6
	movea 0x00000041, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 510
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 511
	cmp 0x00000000, r10
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_9:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 0
	movea 0x0000001C, r0, r10
.BB.LABEL.11_10:	; bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Cfg.c", 520
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
	.align 4
_configTable.1:
	.ds (4)
	.dw #_VssConfig_VSNRw.1
	.dw 0x00000001
	.dw #_VssConfig_VSNActiveRw.1
	.dw 0x00000002
	.dw #_VssConfig_SM4CmacKeyByindex.1
	.dw 0x00000003
	.dw #_VssConfig_SM4CmacKeyActiveByindex.1
	.dw 0x00000004
	.dw #_VssConfig_AESKeyByindex.1
	.dw 0x00000005
	.dw #_VssConfig_AESKeyActiveByindex.1
	.dw 0x00000006
	.dw #_VssConfig_SM2KeyByindex.1
	.dw 0x00000007
	.dw #_VssConfig_Ecc256KeyByindex.1
_sm2_public_key:
	.db 0x04,0xDD,0x47,0xDB,0x72,0x63,0xBA,0xE1,0x8C,0xA7,0x52,0x2A,0xF8,0x4E,0x16,0x42
	.db 0x94,0x3A,0x8B,0xF3,0x11,0xE1,0xC9,0x25,0x75,0x49,0xF3,0x67
	.ds (1)
	.db 0x11,0x75,0x4F,0x7B,0xA8,0x50,0xE7,0x0C,0x71,0x86,0xE3,0xC0,0xFF,0x3B,0x7B,0x25
	.db 0xFD,0x8D,0xD4,0x73,0x87,0x4E,0x0E,0x4A,0xDC,0xB2,0x44,0x66,0x71,0xCF,0x67,0xF7
	.db 0x59,0x2C,0x5D,0xE2
_ecc_public_key:
	.db 0x04,0x85,0xD3,0xF1,0x86,0x6E,0x8D,0x1F,0x2D,0x9B,0xE0,0xA7,0x62,0x88,0x49,0x20
	.db 0xC4,0xDE,0xE0,0x5A,0xFB,0xCE,0x16,0xEA,0x30,0xCA,0xCD,0xFB,0xE3,0x0D,0xBE,0x77
	.db 0xA1,0x9F,0x3A,0x0C,0x10,0xED,0x44,0xEC,0xAB,0xEF,0x86,0x27,0x3C,0x0B,0x1D,0x21
	.db 0x8B,0xEE,0x22,0x2D,0x8C,0x2A,0x58,0x01,0x8B,0x72,0x76,0x0C,0x8B,0x55,0xCC,0x44
	.db 0x7F
