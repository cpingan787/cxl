#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\CDD_FVM\fvmCfg.c -oDefaultBuild\fvmCfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8e7b81baaa104553b8e1e54518bec7b6ehlyghmc.jku
#@	compiled at Fri Mar 27 09:50:11 2026

	.file "..\..\ASW\CDD_FVM\fvmCfg.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvM_BlockDescriptor
	.public _g_fvmConfig, 32
	.public _Fvm_InitConfig
	.extern _Fvm_Init
	.extern _ILib_memcpy
	.extern _NvM_WriteBlock
	.extern _GetTripCounterDetectEnable
	.extern _Dem_SetEventStatus
	.extern _LogHalPrint
	.extern _NvM_GetErrorStatus

	.section .text, text
_Fvm_InitConfig:
	.stack _Fvm_InitConfig = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 58
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 60
	mov #_g_fvmConfig, r6
	jarl _Fvm_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 61
	dispose 0x00000000, 0x00000001, [r31]
_SecocSaveTripCount.1:
	.stack _SecocSaveTripCount.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 71
	prepare 0x00000041, 0x00000004
	st.w r6, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 74
	movhi HIGHW1(#_NvM_BlockDescriptor+0x00000B10), r0, r2
	ld.w LOWW(#_NvM_BlockDescriptor+0x00000B10)[r2], r6
	mov 0x00000004, r8
	mov r3, r7
	jarl _ILib_memcpy, r31
	mov 0x00000000, r7
	movea 0x00000033, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 79
	jarl _NvM_WriteBlock, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 80
	jarl _GetTripCounterDetectEnable, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 81
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 0
	movea 0x00000031, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 83
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 86
	jarl _Dem_SetEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 87
	mov #.STR.1, r6
	mov r20, r7
	jarl _LogHalPrint, r31
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.2_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 92
	jarl _Dem_SetEventStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 93
	ld.w 0x00000000[r3], r7
	mov #.STR.1350, r6
	jarl _LogHalPrint, r31
.BB.LABEL.2_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 97
	dispose 0x00000004, 0x00000041, [r31]
_SecocReadTripCount.1:
	.stack _SecocReadTripCount.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 107
	prepare 0x00000041, 0x00000004
	mov r6, r20
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 110
	st.w r2, 0x00000000[r3]
	mov r3, r7
	movea 0x00000033, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 111
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 112
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 114
	movhi HIGHW1(#_NvM_BlockDescriptor+0x00000B10), r0, r2
	ld.w LOWW(#_NvM_BlockDescriptor+0x00000B10)[r2], r7
	mov 0x00000004, r8
	mov r20, r6
	jarl _ILib_memcpy, r31
.BB.LABEL.3_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 120
	dispose 0x00000004, 0x00000041, [r31]
_SecocErrorNotificationCallBack.1:
	.stack _SecocErrorNotificationCallBack.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvmCfg.c", 130
	jmp [r31]
	.section .const, const
	.align 4
_g_txSecocMsgConfigList.1:
	.dw 0x0000012A
	.dw 0x00000008
	.dw 0x000000B3
	.dw 0x00000008
	.dw 0x0000009F
	.dw 0x00000008
	.dw 0x0000007D
	.dw 0x00000008
	.align 4
_g_rxSecocMsgConfigList.2:
	.dw 0x0000056F
	.dw 0x00000008
	.align 4
_g_fvmConfig:
	.dw #_SecocSaveTripCount.1
	.dw #_SecocReadTripCount.1
	.dw #_SecocErrorNotificationCallBack.1
	.dw #_g_txSecocMsgConfigList.1
	.dw #_g_rxSecocMsgConfigList.2
	.dw #_g_txSecocMsgBuffer.3
	.dw #_g_rxSecocMsgBuffer.4
	.dhw 0x0004
	.dhw 0x0001
.STR.1:
	.db 0x46,0x76,0x6D,0x5F,0x53,0x61,0x76,0x65,0x54,0x72,0x69,0x70,0x43,0x6F,0x75,0x6E
	.db 0x74,0x20,0x66,0x61,0x69,0x6C,0x65,0x64,0x2C,0x20,0x72,0x65,0x74,0x20,0x3D,0x20
	.db 0x25,0x64
	.ds (1)
.STR.1350:
	.db 0x46,0x76,0x6D,0x5F,0x53,0x61,0x76,0x65,0x54,0x72,0x69,0x70,0x43,0x6F,0x75,0x6E
	.db 0x74,0x20,0x73,0x75,0x63,0x63,0x65,0x73,0x73,0x2C,0x20,0x76,0x61,0x6C,0x75,0x65
	.db 0x20,0x3D,0x20,0x25,0x64
	.ds (1)
	.section .bss, bss
	.align 4
_g_txSecocMsgBuffer.3:
	.ds (48)
	.align 4
_g_rxSecocMsgBuffer.4:
	.ds (12)
