#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_ReadyQue_Cfg.c -oDefaultBuild\Os_ReadyQue_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_21a0640e6845405caa8fd7203e21c1333nffoxfd.ycu
#@	compiled at Fri Mar 27 09:50:24 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_ReadyQue_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Os_ReadyQueMg_Inf, 4

	.section .bss, bss
	.align 4
_Os_ActivateQueue_Core0_0.1:
	.ds (4)
	.align 4
_Os_ActivateQueue_Core0_1.2:
	.ds (8)
	.align 4
_Os_ActivateQueue_Core0_2.3:
	.ds (8)
	.align 4
_Os_ActivateQueue_Core0_3.4:
	.ds (8)
	.align 4
_Os_ActivateQueue_Core0_4.5:
	.ds (8)
	.align 4
_Os_ActivateQueue_Core0_5.6:
	.ds (8)
	.align 4
_Os_ActivateQueue_Core0_6.7:
	.ds (8)
	.align 4
_Os_ReadyQueueMark_Core0.8:
	.ds (56)
	.align 2
_Os_ReadyMap_Core0.11:
	.ds (2)
	.section .const, const
	.align 4
_Os_ReadyQueue_Core0.9:
	.dw #_Os_ActivateQueue_Core0_0.1
	.dw #_Os_ActivateQueue_Core0_1.2
	.dw #_Os_ActivateQueue_Core0_2.3
	.dw #_Os_ActivateQueue_Core0_3.4
	.dw #_Os_ActivateQueue_Core0_4.5
	.dw #_Os_ActivateQueue_Core0_5.6
	.dw #_Os_ActivateQueue_Core0_6.7
	.align 4
_Os_ActivateQueueSize_Core0.10:
	.dw 0x00000001,0x00000002,0x00000002,0x00000002,0x00000002,0x00000002,0x00000002
	.align 4
_Os_ReadyQueMg_Core0.12:
	.dw #_Os_ReadyQueueMark_Core0.8
	.dw #_Os_ActivateQueueSize_Core0.10
	.dw #_Os_ReadyQueue_Core0.9
	.dw #_Os_ReadyMap_Core0.11
	.db 0x07
	.ds (3)
	.align 4
_Os_ReadyQueMg_Inf:
	.dw #_Os_ReadyQueMg_Core0.12
