#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BswM\BswM_ComM.c -oDefaultBuild\BswM_ComM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d7b92b974afb48c0bf7a23e91a86baf8pcbq5gd4.0vo
#@	compiled at Fri Mar 27 09:50:53 2026

	.file "..\..\Bsw\SystemServices\BswM\BswM_ComM.c"

	$reg_mode 32
	.dbl_size 8

	.extern _BswM_RuntimeStatus
	.public _BswM_InitComMRequestPorts
	.extern _BswM_GetPartitionIdx
	.extern _Det_ReportError
	.public _BswM_ComM_InitiateReset
	.extern _BswM_DetChkComMInitRst
	.extern _BswM_ArbitrateRule
	.public _BswM_ComM_CurrentMode
	.extern _BswM_DetChkComMInd
	.public _BswM_GetComMIndStatus

	.section .text, text
_BswM_InitComMRequestPorts:
	.stack _BswM_InitComMRequestPorts = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 62
	prepare 0x00000001, 0x00000004
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 75
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 76
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 78
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 79
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 81
	ld.bu 0x00000008[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 79
	ld.hu 0x00000002[r3], r7
	shl 0x00000005, r7
	add r7, r2
	ld.w 0x00000010[r2], r2
	mov 0x00000000, r7
	br9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 83
	ld.w 0x0000000C[r5], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 85
	ld.w 0x00000004[r2], r9
	andi 0x000000FF, r7, r10
	add r10, r9
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r9]
	add 0x00000001, r7
.BB.LABEL.1_4:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 81
	andi 0x000000FF, r7, r8
	cmp r6, r8
	bl9 .BB.LABEL.1_2
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 0
	mov 0x00000008, r9
	mov 0x00000000, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 110
	mov r7, r8
	jarl _Det_ReportError, r31
.BB.LABEL.1_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 113
	dispose 0x00000004, 0x00000001, [r31]
_BswM_ComM_InitiateReset:
	.stack _BswM_ComM_InitiateReset = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 126
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 140
	jarl _BswM_DetChkComMInitRst, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 143
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 144
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_2:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 146
	mov #_BswM_RuntimeStatus, r2
	ld.w 0x00000008[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 147
	ld.w 0x00000008[r2], r6
	ld.hu 0x00000002[r3], r7
	shl 0x00000005, r7
	add r7, r6
	ld.w 0x00000004[r6], r6
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 148
	ld.bu 0x00000000[r6], r6
	add r6, r5
	mov 0x00000001, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 149
	ld.w 0x0000000C[r2], r2
	ld.hu 0x00000002[r3], r5
	mov r5, r6
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 150
	ld.w 0x00000000[r20], r2
	ld.w 0x00000008[r2], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_3:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 154
	ld.bu 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 153
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r2], r2
	mul 0x00000028, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r22
	mov 0x00000000, r23
	br9 .BB.LABEL.2_7
.BB.LABEL.2_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 156
	ld.w 0x00000000[r20], r2
	ld.w 0x00000000[r2], r2
	andi 0x000000FF, r23, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 157
	ld.bu 0x00000000[r2], r6
	mulhi 0x00000014, r6, r2
	add r22, r2
	ld.bu 0x00000008[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 160
	ld.hu 0x00000002[r3], r7
	jarl _BswM_ArbitrateRule, r31
.BB.LABEL.2_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 0
	add 0x00000001, r23
.BB.LABEL.2_7:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 154
	andi 0x000000FF, r23, r2
	cmp r21, r2
	bl9 .BB.LABEL.2_4
.BB.LABEL.2_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 167
	dispose 0x00000004, 0x00000079, [r31]
_BswM_ComM_CurrentMode:
	.stack _BswM_ComM_CurrentMode = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 183
	prepare 0x00000479, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 198
	mov r21, r6
	jarl _BswM_DetChkComMInd, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 201
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 202
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 204
	mov #_BswM_RuntimeStatus, r2
	ld.w 0x00000008[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 205
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 207
	ld.bu 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 205
	ld.hu 0x00000002[r3], r6
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r22
	mov 0x00000000, r23
	br9 .BB.LABEL.3_11
.BB.LABEL.3_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 209
	andi 0x000000FF, r23, r2
	ld.w 0x0000000C[r22], r6
	add r6, r2
	ld.bu 0x00000000[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_4:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 211
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r5
	ld.hu 0x00000002[r3], r20
	shl 0x00000005, r20
	add r20, r5
	ld.w 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 212
	ld.w 0x00000004[r5], r5
	andi 0x000000FF, r23, r20
	add r20, r5
	st.b r21, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 213
	mul 0x0000000C, r20, r0
	ld.w 0x00000008[r22], r5
	add r5, r20
	ld.w 0x00000008[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_5:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 215
	andi 0x000000FF, r23, r20
	mul 0x0000000C, r20, r0
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 217
	ld.bu 0x00000004[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 216
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r5], r5
	ld.hu 0x00000002[r3], r21
	mul 0x00000028, r21, r0
	add r21, r5
	ld.w 0x0000000C[r5], r21
	mov 0x00000000, r24
	br9 .BB.LABEL.3_9
.BB.LABEL.3_6:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 219
	andi 0x000000FF, r23, r5
	mul 0x0000000C, r5, r0
	ld.w 0x00000008[r22], r2
	add r5, r2
	ld.w 0x00000000[r2], r5
	andi 0x000000FF, r24, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 220
	ld.bu 0x00000000[r5], r6
	mulhi 0x00000014, r6, r5
	add r21, r5
	ld.bu 0x00000008[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 223
	ld.hu 0x00000002[r3], r7
	jarl _BswM_ArbitrateRule, r31
.BB.LABEL.3_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 0
	add 0x00000001, r24
.BB.LABEL.3_9:	; bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 217
	andi 0x000000FF, r24, r5
	cmp r20, r5
	bl9 .BB.LABEL.3_6
	br9 .BB.LABEL.3_12
.BB.LABEL.3_10:	; if_break_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 0
	add 0x00000001, r23
.BB.LABEL.3_11:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 207
	andi 0x000000FF, r23, r2
	cmp r5, r2
	bl9 .BB.LABEL.3_3
.BB.LABEL.3_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 232
	dispose 0x00000004, 0x00000479, [r31]
_BswM_GetComMIndStatus:
	.stack _BswM_GetComMIndStatus = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 338
	prepare 0x00000041, 0x00000004
	mov r6, r20
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 344
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 345
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 347
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000004[r2], r2
	add r20, r2
	ld.bu 0x00000000[r2], r10
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_ComM.c", 350
	dispose 0x00000004, 0x00000041, [r31]
