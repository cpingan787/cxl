#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_Resource_Cfg.c -oDefaultBuild\Os_Resource_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_53dab9ef66f844b0bc0b1d08b59c0004xl12tbxo.gci
#@	compiled at Fri Mar 27 09:50:25 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_Resource_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Os_ICBisrC2ResourceStack, 112
	.public _Os_TCBTaskResourceStack, 28
	.public _Os_TaskResourceAccessMask, 28
	.public _Os_IsrResourceAccessMask, 112
	.public _Os_ResourceCfg, 8
	.public _Os_ResScheduler_Inf, 4
	.public _Os_CfgStdResourceMax_Inf, 2
	.public _Os_RCB, 4
	.public _Os_StdResIdRange, 8

	.section .bss, bss
	.align 4
_Os_ICBisrC2ResourceStack:
	.ds (112)
	.align 4
_Os_TCBTaskResourceStack:
	.ds (28)
	.align 4
_Os_RCB_RES_RESEDULER_CORE0.34:
	.ds (8)
	.section .const, const
	.align 2
_Os_ResourceAccessMask_OsTask_Init.1:
	.dhw 0x0001
	.align 2
_Os_ResourceAccessMask_OsTask_1ms.2:
	.dhw 0x0001
	.align 2
_Os_ResourceAccessMask_OsTask_5ms.3:
	.dhw 0x0001
	.align 2
_Os_ResourceAccessMask_OsTask_10ms.4:
	.dhw 0x0001
	.align 2
_Os_ResourceAccessMask_OsTask_50ms.5:
	.dhw 0x0001
	.align 2
_Os_ResourceAccessMask_OsTask_100ms.6:
	.dhw 0x0001
	.align 4
_Os_TaskResourceAccessMask:
	.dw #_Os_ResourceAccessMask_OsTask_Init.1
	.dw #_Os_ResourceAccessMask_OsTask_1ms.2
	.dw #_Os_ResourceAccessMask_OsTask_5ms.3
	.dw #_Os_ResourceAccessMask_OsTask_10ms.4
	.dw #_Os_ResourceAccessMask_OsTask_50ms.5
	.dw #_Os_ResourceAccessMask_OsTask_100ms.6
	.ds (4)
	.align 2
_Os_ResourceAccessMask_RCAN1ERR_IRQ.7:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RCAN1TRX_IRQ.8:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RCANGRECC0_IRQ.9:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_ADCA0I1_IRQ.10:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_ADCA1I1_IRQ.11:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_TAUJ0I0_IRQ.12:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_TAUD0I9_IRQ.13:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_TAUB0I12_IRQ.14:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_TAUB0I8_IRQ.15:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_TAUB0I9_IRQ.16:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_P1_IRQ.17:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_P2_IRQ.18:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_P5_IRQ.19:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_P6_IRQ.20:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_P7_IRQ.21:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_P9_IRQ.22:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_P14_IRQ.23:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RLIN34TX0_IRQ.24:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RLIN34RX1_IRQ.25:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RLIN34ERR2_IRQ.26:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RLIN35TX0_IRQ.27:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RLIN35RX1_IRQ.28:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RLIN35ERR2_IRQ.29:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RIIC0TI_IRQ.30:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RIIC0EE_IRQ.31:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RIIC0RI_IRQ.32:
	.ds (2)
	.align 2
_Os_ResourceAccessMask_RIIC0TEI_IRQ.33:
	.ds (2)
	.align 4
_Os_IsrResourceAccessMask:
	.ds (4)
	.dw #_Os_ResourceAccessMask_RCAN1ERR_IRQ.7
	.dw #_Os_ResourceAccessMask_RCAN1TRX_IRQ.8
	.dw #_Os_ResourceAccessMask_RCANGRECC0_IRQ.9
	.dw #_Os_ResourceAccessMask_ADCA0I1_IRQ.10
	.dw #_Os_ResourceAccessMask_ADCA1I1_IRQ.11
	.dw #_Os_ResourceAccessMask_TAUJ0I0_IRQ.12
	.dw #_Os_ResourceAccessMask_TAUD0I9_IRQ.13
	.dw #_Os_ResourceAccessMask_TAUB0I12_IRQ.14
	.dw #_Os_ResourceAccessMask_TAUB0I8_IRQ.15
	.dw #_Os_ResourceAccessMask_TAUB0I9_IRQ.16
	.dw #_Os_ResourceAccessMask_P1_IRQ.17
	.dw #_Os_ResourceAccessMask_P2_IRQ.18
	.dw #_Os_ResourceAccessMask_P5_IRQ.19
	.dw #_Os_ResourceAccessMask_P6_IRQ.20
	.dw #_Os_ResourceAccessMask_P7_IRQ.21
	.dw #_Os_ResourceAccessMask_P9_IRQ.22
	.dw #_Os_ResourceAccessMask_P14_IRQ.23
	.dw #_Os_ResourceAccessMask_RLIN34TX0_IRQ.24
	.dw #_Os_ResourceAccessMask_RLIN34RX1_IRQ.25
	.dw #_Os_ResourceAccessMask_RLIN34ERR2_IRQ.26
	.dw #_Os_ResourceAccessMask_RLIN35TX0_IRQ.27
	.dw #_Os_ResourceAccessMask_RLIN35RX1_IRQ.28
	.dw #_Os_ResourceAccessMask_RLIN35ERR2_IRQ.29
	.dw #_Os_ResourceAccessMask_RIIC0TI_IRQ.30
	.dw #_Os_ResourceAccessMask_RIIC0EE_IRQ.31
	.dw #_Os_ResourceAccessMask_RIIC0RI_IRQ.32
	.dw #_Os_ResourceAccessMask_RIIC0TEI_IRQ.33
	.align 4
_Os_ResourceCfg:
	.ds (2)
	.dhw 0x0006
	.ds (4)
	.align 4
_Os_ResScheduler_Inf:
	.ds (4)
	.align 2
_Os_CfgStdResourceMax_Inf:
	.dhw 0x0001
	.align 4
_Os_RCB:
	.dw #_Os_RCB_RES_RESEDULER_CORE0.34
	.align 4
_Os_StdResIdRange:
	.ds (4)
	.dw 0x00000001
