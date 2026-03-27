#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\APP\Uds_Test.c -oDefaultBuild\Uds_Test.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7dd66e64f421466092bfa79b8cf3decc31d5kgni.3s4
#@	compiled at Fri Mar 27 09:50:08 2026

	.file "..\..\ASW\APP\Uds_Test.c"

	$reg_mode 32
	.dbl_size 8

	.public _UDS_ChildDtc_Test, 1
	.public _Uds_Test
	.extern _Dem_SetEventStatus
	.extern _Dem_SetEnableCondition

	.section .text, text
_Uds_Test:
	.stack _Uds_Test = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 29
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 36
	movhi HIGHW1(#_UDS_ChildDtc_Test), r0, r2
	ld.bu LOWW(#_UDS_ChildDtc_Test)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 0
	mov 0x00000001, r7
	movea 0x0000002D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 38
	jarl _Dem_SetEventStatus, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 39
	mov r6, r7
	jarl _Dem_SetEnableCondition, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 44
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 0
	mov 0x00000001, r7
	movea 0x0000003B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 46
	jarl _Dem_SetEventStatus, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 0
	mov 0x00000000, r20
	movea 0x0000002D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 50
	mov r20, r7
	jarl _Dem_SetEventStatus, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/Uds_Test.c", 51
	mov r20, r6
	jarl _Dem_SetEnableCondition, r31
	dispose 0x00000000, 0x00000041, [r31]
	.section .data, data
_UDS_ChildDtc_Test:
	.ds (1)
