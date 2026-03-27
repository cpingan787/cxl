#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\EcuM\EcuM_Up.c -oDefaultBuild\EcuM_Up.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ff35f00b5ff24a79bf5a7fde3191f6calw5bjae1.ysv
#@	compiled at Fri Mar 27 09:50:41 2026

	.file "..\..\Bsw\SystemServices\EcuM\EcuM_Up.c"

	$reg_mode 32
	.dbl_size 8

	.extern _EcuM_WkSourceCfgs
	.extern _EcuMRunData
	.public _EcuM_MainFunction
	.extern _EcuM_UpdateEcuMClock
	.extern _EcuM_GetPendingWakeupEvents
	.extern _EcuM_CheckValidation
	.extern _EcuM_CalculateElapsedMS
	.extern _BswM_EcuM_CurrentWakeup
	.extern _EcuM_StopWakeupSources

	.section .text, text
_EcuM_MainFunction:
	.stack _EcuM_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 89
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 97
	jarl _EcuM_WakeupMainFunction.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 100
	jarl _EcuM_UpdateEcuMClock, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuM_WakeupMainFunction.1:
	.stack _EcuM_WakeupMainFunction.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 136
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 149
	jarl _EcuM_GetPendingWakeupEvents, r31
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 152
	mov r10, r21
	br9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 154
	andi 0x000000FF, r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 155
	mov r22, r2
	mul 0x0000001C, r2, r0
	mov #_EcuM_WkSourceCfgs, r23
	add r2, r23
	ld.w 0x00000008[r23], r6
	add 0x00000008, r23
	tst r21, r6
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 157
	jarl _EcuM_CheckValidation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 161
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	mov #_EcuMRunData, r5
	add r2, r5
	ld.w 0x00000020[r5], r6
	jarl _EcuM_CalculateElapsedMS, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 164
	mulhi 0x0000001C, r22, r2
	mov #_EcuM_WkSourceCfgs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp r2, r10
	bnh9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 171
	mov #_EcuMRunData, r2
	ld.w 0x00000014[r2], r5
	ld.w 0x00000000[r5], r6
	ld.w 0x00000000[r23], r7
	not r7, r7
	and r7, r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 173
	ld.w 0x0000001C[r2], r2
	ld.w 0x00000000[r2], r5
	ld.w 0x00000000[r23], r6
	or r6, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 175
	ld.w 0x00000000[r23], r6
	mov 0x00000003, r7
	jarl _BswM_EcuM_CurrentWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 177
	ld.w 0x00000000[r23], r6
	jarl _EcuM_StopWakeupSources, r31
.BB.LABEL.2_4:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 0
	add 0x00000001, r20
.BB.LABEL.2_5:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 152
	andi 0x000000FF, r20, r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/EcuM/EcuM_Up.c", 181
	dispose 0x00000000, 0x00000079, [r31]
