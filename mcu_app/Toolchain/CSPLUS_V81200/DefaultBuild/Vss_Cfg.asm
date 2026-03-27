#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\vss\Vss_Cfg.c -oDefaultBuild\Vss_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_70c4d957f19043ffa9a94ea0dd0c36a7jcbancgb.2oo
#@	compiled at Fri Mar 27 09:50:03 2026

	.file "..\..\Bsw\Crypto\CRYPTO\vss\Vss_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvMBlockRamBuffer10
	.public _Vss_InitConfig
	.extern _VssCryptoInit
	.extern _NvM_ReadBlock
	.extern _memcpy

	.section .text, text
_Vss_InitConfig:
	.stack _Vss_InitConfig = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 45
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 47
	mov #_VssConfig_WdtFeed.1, r7
	mov #_VssConfig_flashFunc.1, r6
	jarl _VssCryptoInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 48
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_flashFunc.1:
	.stack _VssConfig_flashFunc.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 60
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 64
	cmp 0x00000000, r9
	ld.w 0x00000004[r3], r2
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	cmp 0x00000008, r6
	blt9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; entry.bb39_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 69
	shl 0x00000003, r6
	mov #_configTable.1, r5
	add r6, r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 70
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_break_bb.bb39_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 72
	mov r7, r6
	mov r8, r7
	mov r9, r8
	mov r2, r9
	jarl [r5], r31
.BB.LABEL.2_6:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 76
	dispose 0x00000000, 0x00000001, [r31]
_VssConfig_WdtFeed.1:
	.stack _VssConfig_WdtFeed.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 84
	jmp [r31]
_VssConfig_VSNRw.1:
	.stack _VssConfig_VSNRw.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 98
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 102
	cmp 0x00000000, r7
	mov r8, r20
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; entry.bb62_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.4_11
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 107
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_break_bb.bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_11
.BB.LABEL.4_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 112
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 114
	mov #_NvMBlockRamBuffer10, r7
	mov 0x0000000A, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_7:	; if_then_bb31.bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 121
	andi 0x000000FF, r2, r5
	mov r20, r6
	add r5, r6
	mov #_NvMBlockRamBuffer10, r7
	add r7, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.4_9:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 119
	andi 0x000000FF, r2, r5
	addi 0xFFFFFFE0, r5, r0
	blt9 .BB.LABEL.4_8
	br9 .BB.LABEL.4_4
.BB.LABEL.4_10:	; if_then_bb31.bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000001, r10
.BB.LABEL.4_11:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 128
	dispose 0x00000000, 0x00000041, [r31]
_VssConfig_VSNActiveRw.1:
	.stack _VssConfig_VSNActiveRw.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 139
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 143
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 148
	cmp 0x00000001, r6
	bh9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_break_bb.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_else_bb33
	mov 0x00000004, r10
.BB.LABEL.5_5:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 162
	jmp [r31]
_VssConfig_SM4CmacKeyByindex.1:
	.stack _VssConfig_SM4CmacKeyByindex.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 173
	prepare 0x00000001, 0x00000020
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 177
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; bb
	cmp 0x00000001, r7
	bgt9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 182
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_break_bb.bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
.BB.LABEL.6_5:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 206
	dispose 0x00000020, 0x00000001, [r31]
.BB.LABEL.6_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 187
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.6_1
.BB.LABEL.6_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov r3, r2
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 191
	mov #.STR.1, r6
	add r2, r5
	mov r2, r9
	br9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb36
	ld.b 0x00000000[r6], r10
	st.b r10, 0x00000000[r9]
	add 0x00000001, r6
	add 0x00000001, r9
.BB.LABEL.6_9:	; if_then_bb36
	cmp r9, r5
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_10:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 189
	shl 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 200
	add r2, r7
	movea 0x00000010, r0, r2
	mov r8, r6
	mov r2, r8
	jarl _memcpy, r31
	br9 .BB.LABEL.6_4
_VssConfig_SM4CmacKeyActiveByindex.1:
	.stack _VssConfig_SM4CmacKeyActiveByindex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 217
	cmp 0x00000000, r8
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 226
	cmp 0x00000001, r6
	bh9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_break_bb.bb42_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_else_bb37
	mov 0x00000004, r10
.BB.LABEL.7_5:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 240
	jmp [r31]
_VssConfig_AESKeyByindex.1:
	.stack _VssConfig_AESKeyByindex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 251
	cmp 0x00000000, r8
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 260
	cmp 0x00000001, r6
	bh9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_break_bb.bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_else_bb39
	mov 0x00000004, r10
.BB.LABEL.8_5:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 274
	jmp [r31]
_VssConfig_AESKeyActiveByindex.1:
	.stack _VssConfig_AESKeyActiveByindex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 285
	cmp 0x00000000, r8
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 294
	cmp 0x00000001, r6
	bh9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_break_bb.bb42_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_else_bb37
	mov 0x00000004, r10
.BB.LABEL.9_5:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 308
	jmp [r31]
_VssConfig_SM2KeyByindex.1:
	.stack _VssConfig_SM2KeyByindex.1 = 72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 319
	prepare 0x00000001, 0x00000044
	movea 0x00000041, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 323
	mov #.STR.1298, r5
	movea 0x00000003, r3, r9
	add r9, r2
	br9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry
	ld.b 0x00000000[r5], r10
	st.b r10, 0x00000000[r9]
	add 0x00000001, r5
	add 0x00000001, r9
.BB.LABEL.10_2:	; entry
	cmp r9, r2
	bnz9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	addi 0x00000000, r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 335
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; entry.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.10_8
.BB.LABEL.10_5:	; bb
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.10_4
.BB.LABEL.10_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 340
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; if_break_bb.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
.BB.LABEL.10_8:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 355
	dispose 0x00000044, 0x00000001, [r31]
.BB.LABEL.10_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 345
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_10:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	movea 0x00000041, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 349
	mov r2, r6
	jarl _memcpy, r31
	br9 .BB.LABEL.10_7
_VssConfig_Ecc256KeyByindex.1:
	.stack _VssConfig_Ecc256KeyByindex.1 = 72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 366
	prepare 0x00000001, 0x00000044
	movea 0x00000041, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 370
	mov #.STR.1326, r5
	movea 0x00000003, r3, r9
	add r9, r2
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry
	ld.b 0x00000000[r5], r10
	st.b r10, 0x00000000[r9]
	add 0x00000001, r5
	add 0x00000001, r9
.BB.LABEL.11_2:	; entry
	cmp r9, r2
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	addi 0x00000000, r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 382
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; entry.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.11_8
.BB.LABEL.11_5:	; bb
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.11_4
.BB.LABEL.11_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 387
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_7:	; if_break_bb.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	mov 0x00000000, r10
.BB.LABEL.11_8:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 402
	dispose 0x00000044, 0x00000001, [r31]
.BB.LABEL.11_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 392
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_10:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 0
	movea 0x00000041, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Cfg.c", 396
	mov r2, r6
	jarl _memcpy, r31
	br9 .BB.LABEL.11_7
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
.STR.1:
	.db 0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xAA,0xBB,0xCC,0xDD,0xEE,0xFF
	.ds (1)
	.db 0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A,0x5A
.STR.1298:
	.db 0x04,0xDA,0x6B,0x25,0xB4,0x0B,0xC4,0x5D,0xA8,0x56,0xD1,0x6E,0x8B,0xA2,0xB2,0x42
	.db 0x54,0xEE,0x94,0xC3,0x18,0xEA,0x52,0xE2,0xCD,0x82,0x0C,0xE7,0x61,0x65,0x45,0x21
	.db 0x2B,0xBB,0xE5
	.ds (1)
	.db 0x58,0x85,0xCE,0x15,0xD0,0xFB,0xBE,0xCC,0x0B,0xEA,0xD8,0x33,0x85,0xE3,0x86,0xF6
	.db 0x63,0x16,0x35,0x6D,0xBA,0x15,0x5C,0xD8,0xC7,0x4B,0xC3,0x74,0x20
.STR.1326:
	.db 0x04,0x85,0xD3,0xF1,0x86,0x6E,0x8D,0x1F,0x2D,0x9B,0xE0,0xA7,0x62,0x88,0x49,0x20
	.db 0xC4,0xDE,0xE0,0x5A,0xFB,0xCE,0x16,0xEA,0x30,0xCA,0xCD,0xFB,0xE3,0x0D,0xBE,0x77
	.db 0xA1,0x9F,0x3A,0x0C,0x10,0xED,0x44,0xEC,0xAB,0xEF,0x86,0x27,0x3C,0x0B,0x1D,0x21
	.db 0x8B,0xEE,0x22,0x2D,0x8C,0x2A,0x58,0x01,0x8B,0x72,0x76,0x0C,0x8B,0x55,0xCC,0x44
	.db 0x7F
