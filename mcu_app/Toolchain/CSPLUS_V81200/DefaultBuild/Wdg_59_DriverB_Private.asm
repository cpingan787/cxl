#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB_Private.c -oDefaultBuild\Wdg_59_DriverB_Private.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5d5d1572a7af4cb4b957b88809d4a39byr2cz3sa.4nq
#@	compiled at Fri Mar 27 09:50:24 2026

	.file "..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB_Private.c"

	$reg_mode 32
	.dbl_size 8

	.extern _WDG_59_DriverB_GpWDTAReg_BaseAddr
	.public _Wdg_59_DriverB_TriggerFunc
	.extern _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION
	.extern _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION

	.section .text, text
_Wdg_59_DriverB_TriggerFunc:
	.stack _Wdg_59_DriverB_TriggerFunc = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 248
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 266
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 268
	jarl _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 282
	movhi HIGHW1(#_WDG_59_DriverB_GpWDTAReg_BaseAddr), r0, r2
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r2], r2
	movea 0xFFFFFFAC, r0, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 301
	cmp 0x00000000, r20
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 303
	jarl _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
.BB.LABEL.1_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 318
	dispose 0x00000000, 0x00000041, [r31]
