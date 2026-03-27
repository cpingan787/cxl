#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\icu\src\Icu_Ram.c -oDefaultBuild\Icu_Ram.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_e44f5986f57d4322b835996adec69b192ofwqhwo.dzp
#@	compiled at Fri Mar 27 09:50:37 2026

	.file "..\..\Bsw\Mcal\icu\src\Icu_Ram.c"

	$reg_mode 32
	.dbl_size 8

	.public _Icu_GpChannelConfig, 4
	.public _Icu_GpTimerChannelConfig, 4
	.public _Icu_GpTAUUnitConfig, 4
	.public _Icu_GpChannelRamData, 4
	.public _Icu_GpEdgeCountData, 4
	.public _Icu_GpTimeStampData, 4
	.public _Icu_GpSignalMeasurementData, 4
	.public _Icu_GenModuleMode, 4
	.public _Icu_GaaTAUDBChannelRegMirror, 8
	.public _Icu_GaaFclaRegsMirror, 8
	.public _Icu_GulWakeupSource, 4
	.public _Icu_GblDriverStatus, 1
	.public _Icu_GblSyncInitStatus, 1
	.public _Icu_GblSyncStartStatus, 1
	.public _Icu_GaaChannelMeasureStatus, 8

	.section .bss, bss
	.align 4
_Icu_GpChannelConfig:
	.ds (4)
	.align 4
_Icu_GpTimerChannelConfig:
	.ds (4)
	.align 4
_Icu_GpTAUUnitConfig:
	.ds (4)
	.align 4
_Icu_GpChannelRamData:
	.ds (4)
	.align 4
_Icu_GpEdgeCountData:
	.ds (4)
	.align 4
_Icu_GpTimeStampData:
	.ds (4)
	.align 4
_Icu_GpSignalMeasurementData:
	.ds (4)
	.align 4
_Icu_GenModuleMode:
	.ds (4)
_Icu_GaaTAUDBChannelRegMirror:
	.ds (8)
_Icu_GaaFclaRegsMirror:
	.ds (8)
	.align 4
_Icu_GulWakeupSource:
	.ds (4)
_Icu_GaaChannelMeasureStatus:
	.ds (8)
	.section .data, data
_Icu_GblDriverStatus:
	.ds (1)
_Icu_GblSyncInitStatus:
	.ds (1)
_Icu_GblSyncStartStatus:
	.ds (1)
