#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Memory\MemIf\MemIf.c -oDefaultBuild\MemIf.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_9f9075a5a1114b278d48b628aa13b802ggzlqf5d.35r
#@	compiled at Fri Mar 27 09:50:44 2026

	.file "..\..\Bsw\Memory\MemIf\MemIf.c"

	$reg_mode 32
	.dbl_size 8

	.extern _MemIf_MemHwaApis_at
	.public _MemIf_SetMode
	.public _MemIf_GetStatus

	.section .text, text
_MemIf_SetMode:
	.stack _MemIf_SetMode = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 348
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r20
	mov r6, r21
	br9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 354
	andi 0x000000FF, r20, r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 356
	andi 0x000000FF, r20, r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r21, r6
	jarl [r2], r31
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 0
	add 0x00000001, r20
.BB.LABEL.1_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 352
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 359
	dispose 0x00000000, 0x00000061, [r31]
_MemIf_GetStatus:
	.stack _MemIf_GetStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 374
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 391
	addi 0xFFFFFF01, r6, r0
	bnz9 .BB.LABEL.2_15
.BB.LABEL.2_1:	; entry.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 0
	mov 0x00000001, r20
	mov 0x00000000, r10
	mov r10, r21
	br9 .BB.LABEL.2_14
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 397
	andi 0x000000FF, r21, r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 400
	andi 0x000000FF, r21, r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	jarl [r2], r31
.BB.LABEL.2_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 402
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_break_bb.if_break_bb74_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.2_13
.BB.LABEL.2_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 406
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 0
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_else_bb.if_break_bb74_crit_edge
	mov 0x00000002, r20
	br9 .BB.LABEL.2_13
.BB.LABEL.2_9:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 410
	cmp 0x00000002, r20
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_10:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 0
	cmp 0x00000003, r10
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_11:	; if_else_bb43
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_12:	; if_then_bb70
	mov 0x00000003, r20
.BB.LABEL.2_13:	; if_break_bb74
	add 0x00000001, r21
.BB.LABEL.2_14:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 395
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.2_2
	br9 .BB.LABEL.2_17
.BB.LABEL.2_15:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 423
	mov r6, r20
	shl 0x00000005, r20
	mov #_MemIf_MemHwaApis_at, r2
	add r20, r2
	ld.w 0x00000018[r2], r20
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.2_18
.BB.LABEL.2_16:	; if_else_bb84.if_break_bb102_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 0
	mov 0x00000000, r20
.BB.LABEL.2_17:	; if_break_bb102
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 430
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.2_18:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/MemIf/MemIf.c", 425
	shl 0x00000005, r6
	mov #_MemIf_MemHwaApis_at, r20
	add r6, r20
	ld.w 0x00000018[r20], r20
	jarl [r20], r31
	dispose 0x00000000, 0x00000061, [r31]
