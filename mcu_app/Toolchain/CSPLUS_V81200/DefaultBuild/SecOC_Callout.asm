#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\SecOC_Callout.c -oDefaultBuild\SecOC_Callout.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d52fefb88ea44286b188422a1ea14cab44lkw4tq.ebt
#@	compiled at Fri Mar 27 09:51:05 2026

	.file "..\..\Bsw\Config\BSW_Config\SecOC_Callout.c"

	$reg_mode 32
	.dbl_size 8

	.public _SecOC_FVM_TxFreshnessIdMap, 32
	.public _SecOC_FVM_RxFreshnessIdMap, 8
	.public _SecOC_GetRxFreshness
	.extern _Fvm_VerifyFreshnessValue
	.extern _ILib_memcpy
	.public _SecOC_GetRxFreshnessAuthData
	.public _SecOC_GetTxFreshness
	.public _SecOC_GetTxFreshnessTruncData
	.extern _Fvm_GetFreshnessValue
	.public _SecOC_SPduTxConfirmation

	.section .text, text
_SecOC_GetRxFreshness:
	.stack _SecOC_GetRxFreshness = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 116
	prepare 0x00000679, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 136
	ld.bu 0x00000000[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 137
	andi 0x00000003, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 136
	shr 0x00000002, r2
	mov 0x00000000, r9
	ld.w 0x00000028[r3], r20
	ld.w 0x00000024[r3], r21
	mov r8, r22
	mov r7, r23
	br9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 144
	andi 0x0000FFFF, r9, r7
	shl 0x00000003, r7
	mov #_SecOC_FVM_RxFreshnessIdMap, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	cmp r7, r6
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 146
	zxh r9
	shl 0x00000003, r9
	mov #_SecOC_FVM_RxFreshnessIdMap, r6
	add r9, r6
	ld.w 0x00000004[r6], r6
	br9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 0
	add 0x00000001, r9
.BB.LABEL.1_4:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 142
	andi 0x0000FFFF, r9, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_5:	; bb39.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 0
	mov 0x00000000, r6
.BB.LABEL.1_6:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 151
	andi 0x000000FF, r2, r7
	mov r3, r24
	mov r5, r8
	mov r24, r9
	jarl _Fvm_VerifyFreshnessValue, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 153
	ld.w 0x00000000[r20], r8
	shr 0x00000003, r8
	mov r21, r6
	mov r24, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 154
	mov r22, r8
	shr 0x00000003, r8
	movea 0x00000007, r3, r7
	mov r23, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 159
	mov r25, r10
	dispose 0x00000008, 0x00000679, [r31]
_SecOC_GetRxFreshnessAuthData:
	.stack _SecOC_GetRxFreshnessAuthData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 198
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 228
	jmp [r31]
_SecOC_GetTxFreshness:
	.stack _SecOC_GetTxFreshness = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 254
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 274
	jmp [r31]
_SecOC_GetTxFreshnessTruncData:
	.stack _SecOC_GetTxFreshnessTruncData = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 303
	prepare 0x00000679, 0x00000008
	mov 0x00000000, r2
	ld.w 0x00000024[r3], r20
	mov r9, r21
	mov r8, r22
	mov r7, r23
	br9 .BB.LABEL.4_4
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 326
	andi 0x0000FFFF, r2, r5
	shl 0x00000003, r5
	mov #_SecOC_FVM_TxFreshnessIdMap, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	cmp r5, r6
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 328
	zxh r2
	shl 0x00000003, r2
	mov #_SecOC_FVM_TxFreshnessIdMap, r5
	add r2, r5
	ld.w 0x00000004[r5], r6
	br9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 0
	add 0x00000001, r2
.BB.LABEL.4_4:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 324
	andi 0x0000FFFF, r2, r5
	cmp 0x00000004, r5
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_5:	; bb26.bb33_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 0
	mov 0x00000000, r6
.BB.LABEL.4_6:	; bb33
	mov r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 333
	mov r24, r7
	jarl _Fvm_GetFreshnessValue, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 334
	ld.w 0x00000000[r22], r8
	shr 0x00000003, r8
	mov r23, r6
	mov r24, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 335
	ld.w 0x00000000[r20], r8
	shr 0x00000003, r8
	movea 0x00000007, r3, r7
	mov r21, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 341
	mov r25, r10
	dispose 0x00000008, 0x00000679, [r31]
_SecOC_SPduTxConfirmation:
	.stack _SecOC_SPduTxConfirmation = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 357
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/SecOC_Callout.c", 369
	jmp [r31]
	.section .data, data
	.align 4
_SecOC_FVM_TxFreshnessIdMap:
	.dw 0x0000012A
	.dw 0x0000012A
	.dw 0x000000B3
	.dw 0x000000B3
	.dw 0x0000009F
	.dw 0x0000009F
	.dw 0x0000007D
	.dw 0x0000007D
	.align 4
_SecOC_FVM_RxFreshnessIdMap:
	.dw 0x0000056F
	.dw 0x0000056F
