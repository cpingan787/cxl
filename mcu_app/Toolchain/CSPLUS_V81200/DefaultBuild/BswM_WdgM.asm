#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BswM\BswM_WdgM.c -oDefaultBuild\BswM_WdgM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_890a0670a05546abb6dd3c3cc3e8f9d5ywx5v4ts.elm
#@	compiled at Fri Mar 27 09:50:15 2026

	.file "..\..\Bsw\SystemServices\BswM\BswM_WdgM.c"

	$reg_mode 32
	.dbl_size 8

	.extern _BswM_RuntimeStatus
	.public _BswM_WdgM_RequestPartitionReset
	.extern _BswM_DetChkWgmParRst
	.extern _BswM_GetPartitionIdx
	.extern _BswM_ArbitrateRule
	.public _BswM_GetWgmParReset

	.section .text, text
_BswM_WdgM_RequestPartitionReset:
	.stack _BswM_WdgM_RequestPartitionReset = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 72
	prepare 0x00000479, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 88
	jarl _BswM_DetChkWgmParRst, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.1_12
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 0
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 91
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 92
	cmp 0x00000001, r10
	bnz17 .BB.LABEL.1_12
.BB.LABEL.1_2:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 94
	mov #_BswM_RuntimeStatus, r2
	ld.w 0x00000008[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 96
	ld.bu 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 95
	ld.w 0x0000000C[r2], r2
	ld.hu 0x00000002[r3], r6
	mul 0x00000028, r6, r0
	add r6, r2
	ld.w 0x00000000[r2], r21
	mov 0x00000000, r22
	br9 .BB.LABEL.1_11
.BB.LABEL.1_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 98
	andi 0x000000FF, r22, r2
	add r2, r2
	ld.w 0x00000014[r21], r6
	add r2, r6
	ld.hu 0x00000000[r6], r2
	cmp r2, r20
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 100
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r20
	ld.hu 0x00000002[r3], r2
	shl 0x00000005, r2
	add r2, r20
	ld.w 0x00000004[r20], r20
	ld.w 0x00000014[r20], r20
	andi 0x000000FF, r22, r2
	add r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 102
	ld.bu 0x00000000[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 101
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r5], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 102
	add r20, r5
	mov 0x00000001, r20
	st.b r20, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 103
	mul 0x0000000C, r2, r0
	ld.w 0x00000010[r21], r5
	add r5, r2
	ld.w 0x00000008[r2], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_5:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 105
	andi 0x000000FF, r22, r20
	mul 0x0000000C, r20, r0
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 107
	ld.bu 0x00000004[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 106
	movhi HIGHW1(#_BswM_RuntimeStatus+0x0000000C), r0, r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x0000000C)[r5], r5
	ld.hu 0x00000002[r3], r2
	mul 0x00000028, r2, r0
	add r2, r5
	ld.w 0x0000000C[r5], r23
	mov 0x00000000, r24
	br9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 109
	andi 0x000000FF, r22, r5
	mul 0x0000000C, r5, r0
	ld.w 0x00000010[r21], r2
	add r5, r2
	ld.w 0x00000000[r2], r5
	andi 0x000000FF, r24, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 110
	ld.bu 0x00000000[r5], r6
	mulhi 0x00000014, r6, r5
	add r23, r5
	ld.bu 0x00000008[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 113
	ld.hu 0x00000002[r3], r7
	jarl _BswM_ArbitrateRule, r31
.BB.LABEL.1_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 0
	add 0x00000001, r24
.BB.LABEL.1_9:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 107
	andi 0x000000FF, r24, r5
	cmp r20, r5
	bl9 .BB.LABEL.1_6
	br9 .BB.LABEL.1_12
.BB.LABEL.1_10:	; if_break_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 0
	add 0x00000001, r22
.BB.LABEL.1_11:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 96
	andi 0x000000FF, r22, r2
	cmp r5, r2
	bl9 .BB.LABEL.1_3
.BB.LABEL.1_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 125
	dispose 0x00000004, 0x00000479, [r31]
_BswM_GetWgmParReset:
	.stack _BswM_GetWgmParReset = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 129
	prepare 0x00000041, 0x00000004
	mov r6, r20
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 137
	jarl _BswM_GetPartitionIdx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 138
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 140
	movhi HIGHW1(#_BswM_RuntimeStatus+0x00000008), r0, r2
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r5
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000014[r5], r5
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 141
	ld.bu 0x00000000[r5], r5
	ld.w LOWW(#_BswM_RuntimeStatus+0x00000008)[r2], r2
	ld.hu 0x00000002[r3], r6
	shl 0x00000005, r6
	add r6, r2
	ld.w 0x0000000C[r2], r2
	add r5, r2
	ld.bu 0x00000000[r2], r10
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 0
	movea 0x000000FF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/BswM/BswM_WdgM.c", 147
	dispose 0x00000004, 0x00000041, [r31]
