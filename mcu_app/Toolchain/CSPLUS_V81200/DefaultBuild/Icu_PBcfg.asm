#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Icu_OutPut\src\Icu_PBcfg.c -oDefaultBuild\Icu_PBcfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_c13dd36c3bae4e8fb9276ad791b104f6me2dyvww.bvn
#@	compiled at Fri Mar 27 09:50:47 2026

	.file "..\..\Bsw\Config\MCAL_Config\Icu_OutPut\src\Icu_PBcfg.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Icu_GaaTAUDBChannelRegMirror
	.extern _Icu_GaaFclaRegsMirror
	.public _Icu_GstChannelRamData, 32
	.public _Icu_GstSignalMeasureRamData, 12
	.public _Icu_GstConfiguration, 32
	.public _Icu_GstChannelConfig, 224
	.public _Icu_GstTimerChannelConfig, 12
	.public _Icu_GstTAUUnitConfig, 10
	.public _Icu_GaaReg_8bit, 28
	.public _Icu_GaaRegMirror_8bit, 28
	.extern _Icu_Edge_Detect_KL30
	.extern _Icu_Edge_Detect_NAD
	.extern _Icu_Edge_Detect_EcallBtn
	.extern _Icu_Edge_Detect_Imu_Int1
	.extern _Icu_Edge_Detect_Imu_int2
	.extern _Icu_Edge_Detect_Rtc_Int

	.section .bss, bss
	.align 4
_Icu_GstChannelRamData:
	.ds (32)
	.align 4
_Icu_GstSignalMeasureRamData:
	.ds (12)
	.section .const, const
	.align 4
_Icu_GstConfiguration:
	.dw 0x0EDE8108
	.dw #_Icu_GstChannelConfig
	.dw #_Icu_GstTimerChannelConfig
	.dw #_Icu_GstTAUUnitConfig
	.dw #_Icu_GstChannelRamData
	.dw #_Icu_GstSignalMeasureRamData
	.ds (4)
	.ds (4)
	.align 4
_Icu_GstChannelConfig:
	.ds (4)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10200
	.dw 0xFFFFB12C
	.dw 0x00000040
	.dhw 0x0300
	.dhw 0x0800
	.ds (1)
	.db 0x61
	.ds (1)
	.ds (1)
	.ds (4)
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10200
	.dw 0xFFFFB12E
	.ds (4)
	.dhw 0x0300
	.dhw 0x0800
	.ds (1)
	.db 0x65
	.ds (1)
	.ds (1)
	.dw #_Icu_Edge_Detect_KL30
	.db 0x58
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10204
	.dw 0xFFFFB19E
	.dw 0x00000040
	.dhw 0xFFFF
	.dhw 0x0100
	.ds (1)
	.db 0x44
	.ds (1)
	.ds (1)
	.dw #_Icu_Edge_Detect_NAD
	.db 0x38
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10220
	.dw 0xFFFFB100
	.dw 0x00000040
	.dhw 0xFFFF
	.dhw 0x0004
	.ds (1)
	.db 0x40
	.ds (1)
	.ds (1)
	.dw #_Icu_Edge_Detect_EcallBtn
	.db 0x44
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10220
	.dw 0xFFFFB19A
	.dw 0x00000040
	.dhw 0xFFFF
	.dhw 0x0020
	.ds (1)
	.db 0x44
	.ds (1)
	.ds (1)
	.dw #_Icu_Edge_Detect_Imu_Int1
	.db 0x34
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10220
	.dw 0xFFFFB05A
	.dw 0x00000040
	.dhw 0xFFFF
	.dhw 0x0002
	.ds (1)
	.db 0x40
	.ds (1)
	.ds (1)
	.dw #_Icu_Edge_Detect_Imu_int2
	.db 0x3C
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10220
	.dw 0xFFFFB102
	.dw 0x00000040
	.dhw 0xFFFF
	.dhw 0x0008
	.ds (1)
	.db 0x40
	.ds (1)
	.ds (1)
	.dw #_Icu_Edge_Detect_Rtc_Int
	.db 0x28
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC10200
	.dw 0xFFFFB04E
	.dw 0x00000080
	.dhw 0xFFFF
	.dhw 0x0040
	.ds (1)
	.db 0x40
	.ds (1)
	.ds (1)
	.align 2
_Icu_GstTimerChannelConfig:
	.dhw 0x4144
	.ds (1)
	.ds (1)
	.ds (1)
	.db 0x06
	.dhw 0x424C
	.db 0x02
	.ds (1)
	.ds (1)
	.db 0x05
	.align 2
_Icu_GstTAUUnitConfig:
	.ds (1)
	.ds (1)
	.dhw 0xFA74
	.db 0x02
	.ds (1)
	.ds (2)
	.db 0x01
	.ds (1)
	.align 4
_Icu_GaaReg_8bit:
	.dw 0xFFE300E0,0xFFC34058,0xFFC34038,0xFFC34044,0xFFC34034,0xFFC3403C,0xFFC34028
	.align 4
_Icu_GaaRegMirror_8bit:
	.dw #_Icu_GaaTAUDBChannelRegMirror
	.dw (#_Icu_GaaFclaRegsMirror) + 2
	.dw (#_Icu_GaaFclaRegsMirror) + 3
	.dw (#_Icu_GaaFclaRegsMirror) + 4
	.dw (#_Icu_GaaFclaRegsMirror) + 5
	.dw (#_Icu_GaaFclaRegsMirror) + 6
	.dw (#_Icu_GaaFclaRegsMirror) + 7
