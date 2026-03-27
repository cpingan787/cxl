#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\CanTp_PBcfg.c -oDefaultBuild\CanTp_PBcfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_9213b3ae2166493c97713aeccc50d26agwbpqkqg.5e2
#@	compiled at Fri Mar 27 09:50:37 2026

	.file "..\..\Bsw\Config\BSW_Config\CanTp_PBcfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _CanTp_Config, 8

	.section .const, const
	.align 4
_CanTp_Ch0RxSdu0Nar.1:
	.dw 0x00000019
	.align 4
_CanTp_Ch0RxSdu0Ncr.2:
	.dw 0x00000096
_CanTp_Ch0RxSdu0Bs.3:
	.ds (1)
_CanTp_Ch0RxSdu0RxWftMax.4:
	.db 0xFF
_CanTp_Ch0RxSdu0STmin.5:
	.db 0x0A
	.align 4
_CanTp_Ch0RxSdu1Nar.6:
	.dw 0x00000019
	.align 4
_CanTp_Ch0RxSdu1Ncr.7:
	.dw 0x00000096
_CanTp_Ch0RxSdu1Bs.8:
	.ds (1)
_CanTp_Ch0RxSdu1RxWftMax.9:
	.db 0xFF
_CanTp_Ch0RxSdu1STmin.10:
	.db 0x0A
	.align 4
_CanTp_Ch0RxNSdus.11:
	.dw #_CanTp_Ch0RxSdu0Bs.3
	.dw #_CanTp_Ch0RxSdu0Nar.1
	.ds (4)
	.dw #_CanTp_Ch0RxSdu0Ncr.2
	.ds (4)
	.dhw 0x0097
	.ds (2)
	.dhw 0x0001
	.dhw 0x00FF
	.dhw 0x00FF
	.ds (1)
	.ds (1)
	.dhw 0x0040
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_CanTp_Ch0RxSdu0RxWftMax.4
	.dw #_CanTp_Ch0RxSdu0STmin.5
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.dw #_CanTp_Ch0RxSdu1Bs.8
	.dw #_CanTp_Ch0RxSdu1Nar.6
	.ds (4)
	.dw #_CanTp_Ch0RxSdu1Ncr.7
	.ds (4)
	.dhw 0x0096
	.dhw 0x0002
	.dhw 0x0003
	.dhw 0x0004
	.dhw 0x0022
	.ds (1)
	.ds (1)
	.dhw 0x0040
	.ds (2)
	.ds (4)
	.dw 0x00000001
	.dw #_CanTp_Ch0RxSdu1RxWftMax.9
	.dw #_CanTp_Ch0RxSdu1STmin.10
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.align 4
_CanTp_Ch0TxSdu0Nbs.12:
	.dw 0x0000004B
	.align 4
_CanTp_Ch0TxSdu0Ncs.13:
	.dw 0x00000019
	.align 4
_CanTp_Ch0TxNSdus.14:
	.dw 0x00000019
	.dw #_CanTp_Ch0TxSdu0Nbs.12
	.dw #_CanTp_Ch0TxSdu0Ncs.13
	.ds (4)
	.dhw 0x001F
	.dhw 0x0005
	.dhw 0x0004
	.dhw 0x0003
	.dhw 0x0022
	.ds (1)
	.ds (1)
	.dhw 0x0040
	.ds (2)
	.dw 0x00000001
	.dw 0x00000001
	.ds (4)
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.align 4
_CanTp_CfgChannel.15:
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000032
	.dw 0x00001388
	.ds (1)
	.db 0x02
	.ds (2)
	.dw #_CanTp_Ch0RxNSdus.11
	.db 0x01
	.ds (3)
	.dw #_CanTp_Ch0TxNSdus.14
	.align 4
_CanTp_Config:
	.db 0x01
	.ds (3)
	.dw #_CanTp_CfgChannel.15
