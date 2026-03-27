#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CSM\Csm_DetCheck.c -oDefaultBuild\Csm_DetCheck.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b72197a118954fb7865c345e11ed21desufno2qp.nsl
#@	compiled at Fri Mar 27 09:50:09 2026

	.file "..\..\Bsw\Crypto\CSM\Csm_DetCheck.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Csm_JobCfg
	.extern _Csm_InitStatus
	.extern _Det_ReportError
	.public _Csm_ChkInitParam
	.public _Csm_ChkGetVersionInfo
	.public _Csm_ChkServiceParam
	.public _Csm_ChkKeyEleSetParam
	.public _Csm_ChkKeySetValid
	.public _Csm_ChkKeyEleGet
	.public _Csm_ChkKeyEleCopy
	.public _Csm_ChkKeyCopy
	.public _Csm_ChkKeyEleCopyPart
	.public _Csm_ChkRandomSeed
	.public _Csm_ChkKeyGenerate
	.public _Csm_ChkKeyDerive
	.public _Csm_ChkExCalcPubVal
	.public _Csm_ChkExCalcSecVal
	.public _Csm_ChkJobKeySetValid
	.public _Csm_ChkJobRandomSeed
	.public _Csm_ChkJobKeyGenerate
	.public _Csm_ChkJobKeyDerive
	.public _Csm_ChkJobExCalcPubVal
	.public _Csm_ChkJobExCalcSec
	.public _Csm_ChkCancelJob
	.public _Csm_ChkCbkNotify

	.section .text, text
_Csm_ReportDetErr.1:
	.stack _Csm_ReportDetErr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 46
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x0000006E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 48
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_Csm_ChkInitParam:
	.stack _Csm_ChkInitParam = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 73
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 77
	cmp 0x00000000, r6
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000000, r20
	mov 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 80
	mov r20, r6
	jarl _Csm_ReportDetErr.1, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 83
	dispose 0x00000000, 0x00000041, [r31]
_Csm_ChkGetVersionInfo:
	.stack _Csm_ChkGetVersionInfo = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 87
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 91
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 94
	mov r7, r6
	mov r20, r7
	jarl _Csm_ReportDetErr.1, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 97
	dispose 0x00000000, 0x00000041, [r31]
_Csm_ChkServiceParam:
	.stack _Csm_ChkServiceParam = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 101
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 105
	mov r21, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 106
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.4_17
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 108
	cmp 0x00000002, r20
	bnh9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 111
	mov r21, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 113
	movea 0xFFFFFFA3, r21, r2
	movea 0x00000019, r0, r5
	cmp r5, r2
	bh17 .BB.LABEL.4_15
.BB.LABEL.4_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	shl 0x00000002, r2
	jmp #.SWITCH.LABEL.4_18[r2]
.SWITCH.LABEL.4_18:
	jr .BB.LABEL.4_5
	jr .BB.LABEL.4_8
	jr .BB.LABEL.4_9
	jr .BB.LABEL.4_6
	jr .BB.LABEL.4_7
	jr .BB.LABEL.4_10
	jr .BB.LABEL.4_11
	jr .BB.LABEL.4_13
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_14
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_15
	jr .BB.LABEL.4_12
.SWITCH.LABEL.4_18.END:
.BB.LABEL.4_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 116
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000000, r20
	bnz17 .BB.LABEL.4_16
	jr .BB.LABEL.4_17
.BB.LABEL.4_6:	; switch_clause_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 123
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000001, r20
	bnz17 .BB.LABEL.4_16
	jr .BB.LABEL.4_17
.BB.LABEL.4_7:	; switch_clause_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 130
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_8:	; switch_clause_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 137
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_9:	; switch_clause_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 144
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000004, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_10:	; switch_clause_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 151
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000005, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_11:	; switch_clause_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 158
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000006, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_12:	; switch_clause_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 165
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000007, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_13:	; switch_clause_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 172
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x00000008, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_14:	; switch_clause_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 179
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000004[r20], r20
	cmp 0x0000000B, r20
	bnz9 .BB.LABEL.4_16
	br9 .BB.LABEL.4_17
.BB.LABEL.4_15:	; switch_clause_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 186
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000008, r2
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_16:	; if_then_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000009, r7
	mov r21, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.4_17:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 195
	dispose 0x00000000, 0x00000061, [r31]
_Csm_ChkKeyEleSetParam:
	.stack _Csm_ChkKeyEleSetParam = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 199
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 207
	mov r23, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 208
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 210
	cmp 0x00000002, r20
	bnc9 .BB.LABEL.5_5
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 215
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 218
	mov r23, r6
	mov r22, r7
	jarl _Csm_ReportDetErr.1, r31
	mov r22, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_4:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 220
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	mov r23, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.5_6:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 231
	dispose 0x00000000, 0x00000079, [r31]
_Csm_ChkKeySetValid:
	.stack _Csm_ChkKeySetValid = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 235
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 239
	mov r21, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 240
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r20
	bl9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb13
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 245
	mov r21, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.6_3:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 249
	dispose 0x00000000, 0x00000061, [r31]
_Csm_ChkKeyEleGet:
	.stack _Csm_ChkKeyEleGet = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 253
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 261
	mov r23, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 262
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 264
	cmp 0x00000002, r20
	bnc9 .BB.LABEL.7_6
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 269
	cmp 0x00000000, r21
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb30
	mov 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 272
	mov r23, r6
	mov r22, r7
	jarl _Csm_ReportDetErr.1, r31
	mov r22, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_5:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 274
	ld.w 0x00000000[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	mov r23, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.7_7:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 285
	dispose 0x00000000, 0x00000079, [r31]
_Csm_ChkKeyEleCopy:
	.stack _Csm_ChkKeyEleCopy = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 289
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 296
	mov r22, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 297
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 299
	cmp 0x00000001, r20
	bh9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r21
	bl9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb23
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 302
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.8_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 306
	dispose 0x00000000, 0x00000071, [r31]
_Csm_ChkKeyCopy:
	.stack _Csm_ChkKeyCopy = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 310
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 314
	mov r22, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 315
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 317
	cmp 0x00000001, r20
	bh9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r21
	bl9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb23
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 320
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.9_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 324
	dispose 0x00000000, 0x00000071, [r31]
_Csm_ChkKeyEleCopyPart:
	.stack _Csm_ChkKeyEleCopyPart = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 328
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 332
	mov r22, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 333
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 335
	cmp 0x00000001, r20
	bh9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r21
	bl9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb23
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 338
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.10_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 342
	dispose 0x00000000, 0x00000071, [r31]
_Csm_ChkRandomSeed:
	.stack _Csm_ChkRandomSeed = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 346
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 354
	mov r23, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 355
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 357
	cmp 0x00000002, r20
	bnc9 .BB.LABEL.11_5
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 362
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 365
	mov r23, r6
	mov r22, r7
	jarl _Csm_ReportDetErr.1, r31
	mov r22, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.11_4:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 367
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	mov r23, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.11_6:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 378
	dispose 0x00000000, 0x00000079, [r31]
_Csm_ChkKeyGenerate:
	.stack _Csm_ChkKeyGenerate = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 382
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 386
	mov r21, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 387
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r20
	bl9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb13
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 392
	mov r21, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.12_3:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 396
	dispose 0x00000000, 0x00000061, [r31]
_Csm_ChkKeyDerive:
	.stack _Csm_ChkKeyDerive = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 400
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 404
	mov r22, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 405
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 407
	cmp 0x00000001, r20
	bh9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r21
	bl9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_then_bb23
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 410
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.13_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 414
	dispose 0x00000000, 0x00000071, [r31]
_Csm_ChkExCalcPubVal:
	.stack _Csm_ChkExCalcPubVal = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 418
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 426
	mov r23, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 427
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 429
	cmp 0x00000002, r20
	bl9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 432
	mov r23, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.14_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 434
	cmp 0x00000000, r21
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; if_then_bb30
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 437
	mov r23, r6
	mov r20, r7
	jarl _Csm_ReportDetErr.1, r31
	mov r20, r10
.BB.LABEL.14_6:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 445
	dispose 0x00000000, 0x00000079, [r31]
_Csm_ChkExCalcSecVal:
	.stack _Csm_ChkExCalcSecVal = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 449
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 457
	mov r23, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 458
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_6
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 460
	cmp 0x00000001, r20
	bh9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb24
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 463
	mov r23, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.15_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 465
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 468
	mov r23, r6
	mov r20, r7
	jarl _Csm_ReportDetErr.1, r31
	mov r20, r10
.BB.LABEL.15_6:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 476
	dispose 0x00000000, 0x00000079, [r31]
_Csm_ChkJobKeySetValid:
	.stack _Csm_ChkJobKeySetValid = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 480
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 484
	mov r22, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 485
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 487
	cmp 0x00000001, r21
	bh9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r20
	bnh9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb23
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 490
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.16_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 492
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	addi 0xFFFFFFED, r2, r0
	bz9 .BB.LABEL.16_6
.BB.LABEL.16_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000009, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 495
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.16_6:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 499
	dispose 0x00000000, 0x00000071, [r31]
_Csm_ChkJobRandomSeed:
	.stack _Csm_ChkJobRandomSeed = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 503
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	ld.w 0x00000018[r3], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 512
	mov r24, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 513
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 515
	cmp 0x00000002, r20
	bnh9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 518
	mov r24, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 520
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x0000000C, r2
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000009, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 523
	mov r24, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.17_5:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 525
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_6:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 527
	mov r21, r6
	mov r22, r7
	mov r23, r8
	mov r24, r9
	jarl _Csm_ChkRandomSeed, r31
.BB.LABEL.17_7:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 531
	dispose 0x00000000, 0x00000479, [r31]
_Csm_ChkJobKeyGenerate:
	.stack _Csm_ChkJobKeyGenerate = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 535
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 539
	mov r22, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 540
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_6
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 542
	cmp 0x00000001, r21
	bh9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000002, r20
	bnh9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb23
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 545
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.18_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 547
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x0000000D, r2
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000009, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 550
	mov r22, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.18_6:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 554
	dispose 0x00000000, 0x00000071, [r31]
_Csm_ChkJobKeyDerive:
	.stack _Csm_ChkJobKeyDerive = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 558
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 566
	mov r23, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 567
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_7
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 569
	cmp 0x00000001, r21
	bh9 .BB.LABEL.19_4
.BB.LABEL.19_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	cmp 0x00000001, r22
	bh9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_then_bb
	cmp 0x00000002, r20
	bnh9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_then_bb35
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 572
	mov r23, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.19_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 574
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x0000000E, r2
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_6:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000009, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 577
	mov r23, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.19_7:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 581
	dispose 0x00000000, 0x00000079, [r31]
_Csm_ChkJobExCalcPubVal:
	.stack _Csm_ChkJobExCalcPubVal = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 585
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 595
	cmp 0x00000002, r6
	ld.w 0x00000018[r3], r20
	mov r9, r21
	mov r8, r22
	mov r7, r23
	mov r6, r24
	bh9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb14
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 598
	mov r20, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.20_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 600
	mul 0x00000014, r24, r0
	mov #_Csm_JobCfg, r2
	add r24, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x0000000F, r2
	bz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000009, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 603
	mov r20, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.20_5:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 605
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 607
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _Csm_ChkExCalcPubVal, r31
.BB.LABEL.20_7:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 611
	dispose 0x00000000, 0x00000479, [r31]
_Csm_ChkJobExCalcSec:
	.stack _Csm_ChkJobExCalcSec = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 615
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	ld.w 0x00000018[r3], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 624
	mov r24, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 625
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_7
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 627
	cmp 0x00000002, r20
	bnh9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 630
	mov r24, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.21_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 632
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	add 0xFFFFFFF0, r2
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000009, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 635
	mov r24, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
.BB.LABEL.21_5:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 637
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 639
	mov r21, r6
	mov r22, r7
	mov r23, r8
	mov r24, r9
	jarl _Csm_ChkExCalcSecVal, r31
.BB.LABEL.21_7:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 643
	dispose 0x00000000, 0x00000479, [r31]
_Csm_ChkCancelJob:
	.stack _Csm_ChkCancelJob = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 647
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 652
	mov r21, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 653
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_6
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 655
	cmp 0x00000003, r20
	bl9 .BB.LABEL.22_4
.BB.LABEL.22_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
.BB.LABEL.22_3:	; if_then_bb14
	mov r21, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 672
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.22_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 664
	mul 0x00000014, r20, r0
	mov #_Csm_JobCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000008, r7
	br9 .BB.LABEL.22_3
.BB.LABEL.22_6:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 672
	dispose 0x00000000, 0x00000061, [r31]
_Csm_ChkCbkNotify:
	.stack _Csm_ChkCbkNotify = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 676
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 680
	mov r21, r6
	jarl _Csm_ChkInitStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 681
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 683
	ld.w 0x00000000[r20], r2
	cmp 0x00000003, r2
	bl9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 686
	mov r21, r6
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.23_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 688
	ld.w 0x00000050[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	ld.w 0x0000004C[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; if_then_bb34
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 691
	mov r21, r6
	mov r20, r7
	jarl _Csm_ReportDetErr.1, r31
	mov r20, r10
.BB.LABEL.23_6:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 699
	dispose 0x00000000, 0x00000061, [r31]
_Csm_ChkInitStatus.1:
	.stack _Csm_ChkInitStatus.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 707
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 711
	movhi HIGHW1(#_Csm_InitStatus), r0, r2
	ld.bu LOWW(#_Csm_InitStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 714
	jarl _Csm_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.24_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm_DetCheck.c", 717
	dispose 0x00000000, 0x00000001, [r31]
