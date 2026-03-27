#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\parameter_store\ParameterStoreManageApp.c -oDefaultBuild\ParameterStoreManageApp.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6fafd417cd4744dbaa4d44232861cde2abmwdmbg.gzl
#@	compiled at Fri Mar 27 09:50:39 2026

	.file "..\..\Srcode\app\parameter_store\ParameterStoreManageApp.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvMBlockRamBuffer5
	.extern _NvMBlockRamBuffer6
	.extern _NvMBlockRamBuffer7
	.extern _NvMBlockRamBuffer17
	.extern _NvMBlockRamBuffer19
	.public _FlashParamMap, 208
	.public _WorkFlashVehicleInforStore
	.extern _NvM_MainFunction
	.extern _Fee_MainFunction
	.extern _Fls_MainFunction
	.extern _NvM_GetErrorStatus
	.extern _memcpy
	.extern _NvM_WriteBlock
	.public _WorkFlashVehicleInforRead
	.extern _NvM_ReadBlock
	.public _PrintHexArray
	.extern _LogHalPrint

	.section .text, text
_VehicleInforGetDataOffsetAddressAndLength.1:
	.stack _VehicleInforGetDataOffsetAddressAndLength.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 61
	cmp 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 63
	bgt9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 70
	mov r6, r2
	shl 0x00000004, r2
	mov #_FlashParamMap, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 76
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 77
	shl 0x00000004, r6
	mov #_FlashParamMap, r2
	add r6, r2
	ld.w 0x00000004[r2], r5
	st.w r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 78
	ld.b 0x00000008[r2], r2
	st.b r2, 0x00000008[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 80
	jmp [r31]
.BB.LABEL.1_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 81
	jmp [r31]
_WorkFlashVehicleInforStore:
	.stack _WorkFlashVehicleInforStore = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 93
	prepare 0x00000079, 0x00000010
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 97
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 98
	st.w r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 99
	st.b r0, 0x0000000C[r3]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 101
	st.w r2, 0x00000000[r3]
	mov r8, r20
	addi 0x00000000, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 103
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; if_break_bb
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 110
	jarl _VehicleInforGetDataOffsetAddressAndLength.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 112
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_3:	; if_break_bb.bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	ori 0x0000FFFE, r0, r10
.BB.LABEL.2_4:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 133
	sxh r10
	dispose 0x00000010, 0x00000079, [r31]
.BB.LABEL.2_5:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	ld.w 0x00000008[r3], r2
	cmp r2, r20
	bh9 .BB.LABEL.2_3
.BB.LABEL.2_6:	; bb33
	ld.w 0x00000004[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_7:	; bb33.bb50_crit_edge
	mov 0x00000000, r23
.BB.LABEL.2_8:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 120
	jarl _NvM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 121
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 122
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 123
	ld.bu 0x0000000C[r3], r6
	mov r3, r7
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 119
	add 0x00000001, r23
	movea 0x00001387, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 124
	cmp r2, r23
	bh9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 118
	ld.w 0x00000000[r3], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_10:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 129
	ld.w 0x00000004[r3], r6
	mov r21, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 130
	ld.w 0x00000004[r3], r7
	ld.bu 0x0000000C[r3], r6
	jarl _NvM_WriteBlock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 132
	mov r22, r10
	dispose 0x00000010, 0x00000079, [r31]
_WorkFlashVehicleInforRead:
	.stack _WorkFlashVehicleInforRead = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 145
	prepare 0x00000079, 0x00000010
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 149
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 150
	st.w r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 151
	st.b r0, 0x0000000C[r3]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 153
	st.w r2, 0x00000000[r3]
	mov r8, r20
	addi 0x00000000, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 155
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_break_bb
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 162
	jarl _VehicleInforGetDataOffsetAddressAndLength.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 163
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_3:	; if_break_bb.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	ori 0x0000FFFE, r0, r10
.BB.LABEL.3_4:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 184
	sxh r10
	dispose 0x00000010, 0x00000079, [r31]
.BB.LABEL.3_5:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	ld.w 0x00000008[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_6:	; bb32
	ld.w 0x00000004[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_7:	; bb32.bb49_crit_edge
	mov 0x00000000, r23
.BB.LABEL.3_8:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 171
	jarl _NvM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 172
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 173
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 174
	ld.bu 0x0000000C[r3], r6
	mov r3, r7
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 170
	add 0x00000001, r23
	movea 0x00001387, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 175
	cmp r2, r23
	bh9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 169
	ld.w 0x00000000[r3], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.3_8
.BB.LABEL.3_10:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 178
	ld.w 0x00000004[r3], r7
	ld.bu 0x0000000C[r3], r6
	jarl _NvM_ReadBlock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 179
	ld.w 0x00000008[r3], r8
	ld.w 0x00000004[r3], r7
	mov r21, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 180
	ld.w 0x00000008[r3], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 183
	mov r22, r10
	dispose 0x00000010, 0x00000079, [r31]
_PrintHexArray:
	.stack _PrintHexArray = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 196
	prepare 0x00000001, 0x00000000
	movea 0x00000080, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 201
	cmp r2, r7
	cmov 0x0000000B, r2, r7, r2
	mov 0x00000000, r5
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 206
	st.b r9, 0x00000000[r7]
	add 0x00000001, r8
	add 0x00000001, r5
.BB.LABEL.4_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 205
	mov #_logBuffer.1.PrintHexArray, r7
	add r5, r7
	movea 0x00000175, r0, r9
	cmp r9, r5
	ld.bu 0x00000000[r8], r9
	bh9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_4:	; bb42
	movea 0x0000005B, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 208
	st.b r8, 0x00000000[r7]
	movea 0x00000064, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 211
	cmp r8, r2
	bl9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	movea 0x00000064, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 212
	mov r2, r9
	divhu r8, r9, r8
	movea 0x00000030, r9, r9
	st.b r9, 0x00000001[r7]
	mov 0x0000000A, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 213
	divhu r9, r8, r0
	ori 0x00000030, r8, r8
	st.b r8, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 214
	mov r2, r8
	divhu r9, r8, r8
	ori 0x00000030, r8, r8
	st.b r8, 0x00000003[r7]
	add 0x00000004, r5
	br9 .BB.LABEL.4_9
.BB.LABEL.4_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 215
	cmp 0x0000000A, r2
	bl9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	mov 0x0000000A, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 216
	mov r2, r9
	divhu r8, r9, r8
	movea 0x00000030, r9, r9
	st.b r9, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 217
	ori 0x00000030, r8, r8
	st.b r8, 0x00000002[r7]
	add 0x00000003, r5
	br9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 219
	movea 0x00000030, r2, r8
	st.b r8, 0x00000001[r7]
	add 0x00000002, r5
.BB.LABEL.4_9:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 221
	mov #_logBuffer.1.PrintHexArray, r7
	add r5, r7
	movea 0x0000005D, r0, r8
	st.b r8, 0x00000000[r7]
	movea 0x0000003A, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 222
	st.b r8, 0x00000001[r7]
	movea 0x00000020, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 223
	st.b r8, 0x00000002[r7]
	mov 0x00000000, r7
	br9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 227
	mov r6, r9
	add r7, r9
	ld.bu 0x00000000[r9], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 228
	andi 0x0000000F, r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 227
	shr 0x00000004, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 231
	cmp 0x0000000A, r9
	movea 0x00000037, r0, r11
	movea 0x00000030, r0, r12
	cmov 0x00000006, r12, r11, r13
	add r13, r9
	mov #_logBuffer.1.PrintHexArray, r13
	add r8, r13
	st.b r9, 0x00000003[r13]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 233
	cmp 0x0000000A, r10
	cmov 0x00000006, r12, r11, r8
	add r8, r10
	st.b r10, 0x00000004[r13]
	movea 0x00000020, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 235
	st.b r8, 0x00000005[r13]
	add 0x00000001, r7
.BB.LABEL.4_11:	; bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	mov r5, r8
	addi 0x00000003, r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 226
	cmp r2, r7
	bnc9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 0
	movea 0x0000017D, r0, r9
	cmp r9, r5
	bl9 .BB.LABEL.4_10
.BB.LABEL.4_13:	; bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 239
	mov #_logBuffer.1.PrintHexArray, r7
	add r7, r8
	mov 0x0000000D, r2
	st.b r2, 0x00000003[r8]
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 240
	st.b r2, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 241
	st.b r0, 0x00000005[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/parameter_store/ParameterStoreManageApp.c", 244
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
	.align 4
_FlashParamMap:
	.ds (4)
	.dw 0x00000014
	.db 0x0A
	.ds (3)
	.ds (4)
	.dw 0x00000001
	.dw 0x00000018
	.db 0x0A
	.ds (3)
	.ds (4)
	.dw 0x00000002
	.dw 0x00000010
	.db 0x06
	.ds (3)
	.dw #_NvMBlockRamBuffer6
	.dw 0x00000003
	.dw 0x00000011
	.db 0x07
	.ds (3)
	.dw #_NvMBlockRamBuffer7
	.dw 0x00000004
	.dw 0x00000020
	.db 0x11
	.ds (3)
	.dw #_NvMBlockRamBuffer17
	.dw 0x00000005
	.dw 0x00000006
	.db 0x13
	.ds (3)
	.dw #_NvMBlockRamBuffer19
	.dw 0x00000006
	.dw 0x0000000F
	.db 0x0A
	.ds (3)
	.ds (4)
	.dw 0x0000000A
	.dw 0x00000003
	.db 0x05
	.ds (3)
	.dw #_NvMBlockRamBuffer5
	.dw 0x0000000B
	.dw 0x00000005
	.db 0x0A
	.ds (3)
	.ds (4)
	.dw 0x0000000C
	.dw 0x00000005
	.db 0x0A
	.ds (3)
	.ds (4)
	.ds (48)
.STR.1:
	.db 0x25,0x73
	.ds (1)
	.section .bss, bss
_logBuffer.1.PrintHexArray:
	.ds (384)
