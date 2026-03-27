#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\SecOC_Cfg.c -oDefaultBuild\SecOC_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8f650c222e674321b3c7d615dd7df018bsxifepw.n52
#@	compiled at Fri Mar 27 09:51:06 2026

	.file "..\..\Bsw\Config\BSW_Config\SecOC_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _SecOC_VerificationStatusCalloutData, 4
	.public _SecOC_ConfigData, 20
	.extern _App_VerificationStatusCallout

	.section .data, data
_SecOC_AuthenticPduBuffer.1:
	.ds (125)
_SecOC_SecuredPduBuffer.2:
	.ds (144)
_SecOC_ReceptionQueueData.3:
	.ds (8)
_SecOC_IgnoreVerificationResultIsEnabled.4:
	.ds (1)
	.section .const, const
	.align 4
_SecOC_CsmJobData.5:
	.dw 0x00000001
	.dw 0x00000001
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.ds (4)
	.align 4
_SecOC_RxAuthenticPduLayerData.6:
	.dhw 0x00A8
	.ds (2)
	.ds (4)
	.dhw 0x0005
	.ds (2)
	.align 4
_SecOC_RxSecuredPduData.7:
	.ds (1)
	.ds (1)
	.ds (2)
	.dhw 0x00A8
	.db 0x01
	.ds (1)
	.dhw 0x0008
	.dhw 0x0008
	.dw #_SecOC_SecuredPduBuffer.2
	.align 4
_SecOC_RxSecuredPduLayerData.8:
	.dw #_SecOC_RxSecuredPduData.7
	.ds (4)
	.align 4
_SecOC_RxPduProcessingData.9:
	.ds (2)
	.ds (2)
	.ds (2)
	.ds (2)
	.dhw 0x0018
	.dhw 0x056F
	.dhw 0x056F
	.ds (1)
	.ds (1)
	.ds (4)
	.dhw 0x0008
	.ds (2)
	.dw #_SecOC_ReceptionQueueData.3
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.dw #_SecOC_CsmJobData.5
	.ds (4)
	.dw #_SecOC_RxAuthenticPduLayerData.6
	.ds (4)
	.dw #_SecOC_RxSecuredPduLayerData.8
	.dhw 0x0005
	.ds (2)
	.dw #_SecOC_AuthenticPduBuffer.1
	.dhw 0x0003
	.ds (2)
	.align 4
_SecOC_TxAuthenticPduLayerData.10:
	.ds (4)
	.ds (2)
	.dhw 0x00A9
	.ds (4)
	.dhw 0x0001
	.dhw 0x00AA
	.ds (4)
	.dhw 0x0002
	.dhw 0x00AB
	.ds (4)
	.dhw 0x0003
	.dhw 0x00AC
	.align 4
_SecOC_TxSecuredPduData.11:
	.ds (1)
	.ds (1)
	.ds (2)
	.dhw 0x00A9
	.dhw 0x000C
	.dw (#_SecOC_SecuredPduBuffer.2) + 8
	.ds (1)
	.ds (1)
	.dhw 0x0001
	.dhw 0x00AA
	.dhw 0x0034
	.dw (#_SecOC_SecuredPduBuffer.2) + 20
	.ds (1)
	.ds (1)
	.dhw 0x0002
	.dhw 0x00AB
	.dhw 0x0034
	.dw (#_SecOC_SecuredPduBuffer.2) + 72
	.ds (1)
	.ds (1)
	.dhw 0x0003
	.dhw 0x00AC
	.dhw 0x0014
	.dw (#_SecOC_SecuredPduBuffer.2) + 124
	.align 4
_SecOC_TxSecuredPduLayerData.12:
	.dw #_SecOC_TxSecuredPduData.11
	.ds (4)
	.dw (#_SecOC_TxSecuredPduData.11) + 12
	.ds (4)
	.dw (#_SecOC_TxSecuredPduData.11) + 24
	.ds (4)
	.dw (#_SecOC_TxSecuredPduData.11) + 36
	.ds (4)
	.align 4
_SecOC_TxPduProcessingData.13:
	.dhw 0x0003
	.dhw 0x0018
	.dhw 0x012A
	.dhw 0x012A
	.db 0x40
	.db 0x08
	.db 0x01
	.db 0x01
	.ds (4)
	.dw (#_SecOC_CsmJobData.5) + 12
	.dw #_SecOC_TxAuthenticPduLayerData.10
	.ds (4)
	.dw #_SecOC_TxSecuredPduLayerData.12
	.dhw 0x0008
	.ds (2)
	.dw (#_SecOC_AuthenticPduBuffer.1) + 5
	.dhw 0x0004
	.ds (2)
	.dhw 0x0003
	.dhw 0x0018
	.dhw 0x00B3
	.dhw 0x00B3
	.db 0x40
	.db 0x08
	.db 0x01
	.db 0x01
	.ds (4)
	.dw (#_SecOC_CsmJobData.5) + 24
	.dw (#_SecOC_TxAuthenticPduLayerData.10) + 8
	.ds (4)
	.dw (#_SecOC_TxSecuredPduLayerData.12) + 8
	.dhw 0x0030
	.ds (2)
	.dw (#_SecOC_AuthenticPduBuffer.1) + 13
	.dhw 0x0004
	.ds (2)
	.dhw 0x0003
	.dhw 0x0018
	.dhw 0x009F
	.dhw 0x009F
	.db 0x40
	.db 0x08
	.db 0x01
	.db 0x01
	.ds (4)
	.dw (#_SecOC_CsmJobData.5) + 36
	.dw (#_SecOC_TxAuthenticPduLayerData.10) + 16
	.ds (4)
	.dw (#_SecOC_TxSecuredPduLayerData.12) + 16
	.dhw 0x0030
	.ds (2)
	.dw (#_SecOC_AuthenticPduBuffer.1) + 61
	.dhw 0x0004
	.ds (2)
	.dhw 0x0003
	.dhw 0x0018
	.dhw 0x007D
	.dhw 0x007D
	.db 0x40
	.db 0x08
	.db 0x01
	.db 0x01
	.ds (4)
	.dw (#_SecOC_CsmJobData.5) + 48
	.dw (#_SecOC_TxAuthenticPduLayerData.10) + 24
	.ds (4)
	.dw (#_SecOC_TxSecuredPduLayerData.12) + 24
	.dhw 0x0010
	.ds (2)
	.dw (#_SecOC_AuthenticPduBuffer.1) + 109
	.dhw 0x0004
	.ds (2)
	.align 4
_SecOC_VerificationStatusCalloutData:
	.dw #_App_VerificationStatusCallout
	.align 4
_SecOC_ConfigData:
	.dw #_SecOC_RxPduProcessingData.9
	.ds (4)
	.dw #_SecOC_TxPduProcessingData.13
	.dw #_SecOC_VerificationStatusCalloutData
	.dw #_SecOC_IgnoreVerificationResultIsEnabled.4
