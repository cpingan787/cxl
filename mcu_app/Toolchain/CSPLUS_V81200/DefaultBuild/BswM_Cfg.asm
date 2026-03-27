#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\BswM_Cfg.c -oDefaultBuild\BswM_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_10ac5ec55096419595bc6426f877a546sn3xf2gh.o2g
#@	compiled at Fri Mar 27 09:50:27 2026

	.file "..\..\Bsw\Config\BSW_Config\BswM_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _BswM_CorePCCfg, 4

	.section .const, const
_BswM_EventRqstPort_ComMInitRstIdx_Core0_Par0.1:
	.ds (1)
	.align 4
_BswM_EvRqstSrc_Core0_Par0.2:
	.dw #_BswM_EventRqstPort_ComMInitRstIdx_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.align 4
_BswM_CanSmInitState_Core0_Par0.3:
	.ds (4)
_BswM_DcmInitMode_Core0_Par0.4:
	.db 0x08
_BswM_EcumWkInitstate_Core0_Par0.5:
	.ds (1)
	.align 2
_BswM_GenRqstInitMode_Core0_Par0.6:
	.ds (2)
	.align 4
_BswM_ModeRqstSrc_Core0_Par0.7:
	.db 0x01
	.ds (3)
	.dw #_BswM_CanSmInitState_Core0_Par0.3
	.ds (1)
	.ds (3)
	.ds (4)
	.db 0x01
	.ds (3)
	.dw #_BswM_DcmInitMode_Core0_Par0.4
	.dw 0x00000002
	.dw #_BswM_EcumWkInitstate_Core0_Par0.5
	.ds (1)
	.ds (3)
	.ds (4)
	.dhw 0x0003
	.ds (2)
	.dw #_BswM_GenRqstInitMode_Core0_Par0.6
	.ds (1)
	.ds (3)
	.align 4
_BswM_PartitionPCCfg_Core0.15:
	.db 0x01
	.ds (3)
	.dw #_BswM_EvRqstSrc_Core0_Par0.2
	.dw #_BswM_ModeRqstSrc_Core0_Par0.7
	.dw #_BswM_EvRqstSrcStatus_Core0_Par0.8
	.dw #_BswM_ModeRqstSrcSatus_Core0_Par0.13
	.dw #_BswM_ComIpduGroup_Ctrl.14
	.dw (#_BswM_ComIpduGroup_Ctrl.14) + 1
	.dw (#_BswM_ComIpduGroup_Ctrl.14) + 2
	.align 4
_BswM_PCCfg.16:
	.db 0x01
	.ds (3)
	.dw #_BswM_PartitionPCCfg_Core0.15
	.align 4
_BswM_CorePCCfg:
	.dw #_BswM_PCCfg.16
	.section .bss, bss
_BswM_EvRqstSrcStatus_Core0_Par0.8:
	.ds (1)
	.align 4
_BswM_CanSMIndicationStatus_Core0_Par0.9:
	.ds (4)
_BswM_DcmComModeRequestStatus_Core0_Par0.10:
	.ds (1)
_BswM_EcuMWakeupSourceStatus_Core0_Par0.11:
	.ds (2)
	.align 2
_BswM_GenericRequestStatus_Core0_Par0.12:
	.ds (6)
_BswM_ComIpduGroup_Ctrl.14:
	.ds (3)
	.section .data, data
	.align 4
_BswM_ModeRqstSrcSatus_Core0_Par0.13:
	.dw #_BswM_CanSMIndicationStatus_Core0_Par0.9
	.ds (4)
	.dw #_BswM_DcmComModeRequestStatus_Core0_Par0.10
	.dw #_BswM_EcuMWakeupSourceStatus_Core0_Par0.11
	.ds (4)
	.dw #_BswM_GenericRequestStatus_Core0_Par0.12
	.ds (4)
	.ds (4)
