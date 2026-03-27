#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB_Irq.c -oDefaultBuild\Wdg_59_DriverB_Irq.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_c2197d38b70d444a8eac0e64a5219c08sm2wa5nq.zwu
#@	compiled at Fri Mar 27 09:50:23 2026

	.file "..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB_Irq.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Wdg_59_DriverB_GusTriggerCounter
	.public _WDG_59_DRIVERB_TRIGGERFUNCTION_ISR
	.extern _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION
	.extern _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION
	.extern _Wdg_59_DriverB_TriggerFunc

	.section .text, text
_WDG_59_DRIVERB_TRIGGERFUNCTION_ISR:
	.stack _WDG_59_DRIVERB_TRIGGERFUNCTION_ISR = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Irq.c", 242
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Irq.c", 246
	movhi HIGHW1(#_Wdg_59_DriverB_GusTriggerCounter), r0, r2
	ld.hu LOWW(#_Wdg_59_DriverB_GusTriggerCounter)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Irq.c", 254
	jarl _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Irq.c", 258
	movhi HIGHW1(#_Wdg_59_DriverB_GusTriggerCounter), r0, r2
	ld.h LOWW(#_Wdg_59_DriverB_GusTriggerCounter)[r2], r5
	add 0xFFFFFFFF, r5
	st.h r5, LOWW(#_Wdg_59_DriverB_GusTriggerCounter)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Irq.c", 266
	jarl _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Irq.c", 270
	jarl _Wdg_59_DriverB_TriggerFunc, r31
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Irq.c", 277
	dispose 0x00000000, 0x00000001, [r31]
