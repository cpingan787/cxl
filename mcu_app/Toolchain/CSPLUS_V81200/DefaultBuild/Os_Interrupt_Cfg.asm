#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_Interrupt_Cfg.c -oDefaultBuild\Os_Interrupt_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_649744220d384af99121ece13d658b7dbokbn2dg.zba
#@	compiled at Fri Mar 27 09:50:19 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_Interrupt_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Os_ICB, 112
	.public _Os_SysIsrNestQueue_Inf, 4
	.public _Os_ISR2Stack, 224
	.public _Os_IsrCfg, 560
	.public _Os_CfgIsrMax_Inf, 2
	.public _Os_CfgIsr2Max_Inf, 2
	.public _Os_CfgIsr2ExcludeTplMax_Inf, 2
	.public _Os_IsrIdRange, 24

	.section .bss, bss
	.align 4
_Os_SysIsrNestQueueCore0.1:
	.ds (112)
	.align 4
_Os_ICB_SYS_TIMER_CORE0.2:
	.ds (20)
	.align 4
_Os_ICB_RCAN1ERR_IRQ.3:
	.ds (20)
	.align 4
_Os_ICB_RCAN1TRX_IRQ.4:
	.ds (20)
	.align 4
_Os_ICB_RCANGRECC0_IRQ.5:
	.ds (20)
	.align 4
_Os_ICB_ADCA0I1_IRQ.6:
	.ds (20)
	.align 4
_Os_ICB_ADCA1I1_IRQ.7:
	.ds (20)
	.align 4
_Os_ICB_TAUJ0I0_IRQ.8:
	.ds (20)
	.align 4
_Os_ICB_TAUD0I9_IRQ.9:
	.ds (20)
	.align 4
_Os_ICB_TAUB0I12_IRQ.10:
	.ds (20)
	.align 4
_Os_ICB_TAUB0I8_IRQ.11:
	.ds (20)
	.align 4
_Os_ICB_TAUB0I9_IRQ.12:
	.ds (20)
	.align 4
_Os_ICB_P1_IRQ.13:
	.ds (20)
	.align 4
_Os_ICB_P2_IRQ.14:
	.ds (20)
	.align 4
_Os_ICB_P5_IRQ.15:
	.ds (20)
	.align 4
_Os_ICB_P6_IRQ.16:
	.ds (20)
	.align 4
_Os_ICB_P7_IRQ.17:
	.ds (20)
	.align 4
_Os_ICB_P9_IRQ.18:
	.ds (20)
	.align 4
_Os_ICB_P14_IRQ.19:
	.ds (20)
	.align 4
_Os_ICB_RLIN34TX0_IRQ.20:
	.ds (20)
	.align 4
_Os_ICB_RLIN34RX1_IRQ.21:
	.ds (20)
	.align 4
_Os_ICB_RLIN34ERR2_IRQ.22:
	.ds (20)
	.align 4
_Os_ICB_RLIN35TX0_IRQ.23:
	.ds (20)
	.align 4
_Os_ICB_RLIN35RX1_IRQ.24:
	.ds (20)
	.align 4
_Os_ICB_RLIN35ERR2_IRQ.25:
	.ds (20)
	.align 4
_Os_ICB_RIIC0TI_IRQ.26:
	.ds (20)
	.align 4
_Os_ICB_RIIC0EE_IRQ.27:
	.ds (20)
	.align 4
_Os_ICB_RIIC0RI_IRQ.28:
	.ds (20)
	.align 4
_Os_ICB_RIIC0TEI_IRQ.29:
	.ds (20)
	.align 4
_Os_SysTimer_Stack_Core0.30:
	.ds (512)
	.align 4
_Os_RCAN1ERR_IRQ_Stack_Core0.31:
	.ds (1024)
	.align 4
_Os_RCAN1TRX_IRQ_Stack_Core0.32:
	.ds (2048)
	.align 4
_Os_RCANGRECC0_IRQ_Stack_Core0.33:
	.ds (2048)
	.align 4
_Os_ADCA0I1_IRQ_Stack_Core0.34:
	.ds (1024)
	.align 4
_Os_ADCA1I1_IRQ_Stack_Core0.35:
	.ds (1024)
	.align 4
_Os_TAUJ0I0_IRQ_Stack_Core0.36:
	.ds (512)
	.align 4
_Os_TAUD0I9_IRQ_Stack_Core0.37:
	.ds (512)
	.align 4
_Os_TAUB0I12_IRQ_Stack_Core0.38:
	.ds (512)
	.align 4
_Os_TAUB0I8_IRQ_Stack_Core0.39:
	.ds (512)
	.align 4
_Os_TAUB0I9_IRQ_Stack_Core0.40:
	.ds (512)
	.align 4
_Os_P1_IRQ_Stack_Core0.41:
	.ds (512)
	.align 4
_Os_P2_IRQ_Stack_Core0.42:
	.ds (512)
	.align 4
_Os_P5_IRQ_Stack_Core0.43:
	.ds (512)
	.align 4
_Os_P6_IRQ_Stack_Core0.44:
	.ds (512)
	.align 4
_Os_P7_IRQ_Stack_Core0.45:
	.ds (512)
	.align 4
_Os_P9_IRQ_Stack_Core0.46:
	.ds (512)
	.align 4
_Os_P14_IRQ_Stack_Core0.47:
	.ds (512)
	.align 4
_Os_RLIN34TX0_IRQ_Stack_Core0.48:
	.ds (512)
	.align 4
_Os_RLIN34RX1_IRQ_Stack_Core0.49:
	.ds (512)
	.align 4
_Os_RLIN34ERR2_IRQ_Stack_Core0.50:
	.ds (512)
	.align 4
_Os_RLIN35TX0_IRQ_Stack_Core0.51:
	.ds (512)
	.align 4
_Os_RLIN35RX1_IRQ_Stack_Core0.52:
	.ds (1024)
	.align 4
_Os_RLIN35ERR2_IRQ_Stack_Core0.53:
	.ds (512)
	.align 4
_Os_RIIC0TI_IRQ_Stack_Core0.54:
	.ds (512)
	.align 4
_Os_RIIC0EE_IRQ_Stack_Core0.55:
	.ds (512)
	.align 4
_Os_RIIC0RI_IRQ_Stack_Core0.56:
	.ds (512)
	.align 4
_Os_RIIC0TEI_IRQ_Stack_Core0.57:
	.ds (512)
	.section .const, const
	.align 4
_Os_ICB:
	.dw #_Os_ICB_SYS_TIMER_CORE0.2
	.dw #_Os_ICB_RCAN1ERR_IRQ.3
	.dw #_Os_ICB_RCAN1TRX_IRQ.4
	.dw #_Os_ICB_RCANGRECC0_IRQ.5
	.dw #_Os_ICB_ADCA0I1_IRQ.6
	.dw #_Os_ICB_ADCA1I1_IRQ.7
	.dw #_Os_ICB_TAUJ0I0_IRQ.8
	.dw #_Os_ICB_TAUD0I9_IRQ.9
	.dw #_Os_ICB_TAUB0I12_IRQ.10
	.dw #_Os_ICB_TAUB0I8_IRQ.11
	.dw #_Os_ICB_TAUB0I9_IRQ.12
	.dw #_Os_ICB_P1_IRQ.13
	.dw #_Os_ICB_P2_IRQ.14
	.dw #_Os_ICB_P5_IRQ.15
	.dw #_Os_ICB_P6_IRQ.16
	.dw #_Os_ICB_P7_IRQ.17
	.dw #_Os_ICB_P9_IRQ.18
	.dw #_Os_ICB_P14_IRQ.19
	.dw #_Os_ICB_RLIN34TX0_IRQ.20
	.dw #_Os_ICB_RLIN34RX1_IRQ.21
	.dw #_Os_ICB_RLIN34ERR2_IRQ.22
	.dw #_Os_ICB_RLIN35TX0_IRQ.23
	.dw #_Os_ICB_RLIN35RX1_IRQ.24
	.dw #_Os_ICB_RLIN35ERR2_IRQ.25
	.dw #_Os_ICB_RIIC0TI_IRQ.26
	.dw #_Os_ICB_RIIC0EE_IRQ.27
	.dw #_Os_ICB_RIIC0RI_IRQ.28
	.dw #_Os_ICB_RIIC0TEI_IRQ.29
	.align 4
_Os_SysIsrNestQueue_Inf:
	.dw #_Os_SysIsrNestQueueCore0.1
	.align 4
_Os_ISR2Stack:
	.dw (#_Os_SysTimer_Stack_Core0.30) + 480
	.dw #_Os_SysTimer_Stack_Core0.30
	.dw (#_Os_RCAN1ERR_IRQ_Stack_Core0.31) + 992
	.dw #_Os_RCAN1ERR_IRQ_Stack_Core0.31
	.dw (#_Os_RCAN1TRX_IRQ_Stack_Core0.32) + 2016
	.dw #_Os_RCAN1TRX_IRQ_Stack_Core0.32
	.dw (#_Os_RCANGRECC0_IRQ_Stack_Core0.33) + 2016
	.dw #_Os_RCANGRECC0_IRQ_Stack_Core0.33
	.dw (#_Os_ADCA0I1_IRQ_Stack_Core0.34) + 992
	.dw #_Os_ADCA0I1_IRQ_Stack_Core0.34
	.dw (#_Os_ADCA1I1_IRQ_Stack_Core0.35) + 992
	.dw #_Os_ADCA1I1_IRQ_Stack_Core0.35
	.dw (#_Os_TAUJ0I0_IRQ_Stack_Core0.36) + 480
	.dw #_Os_TAUJ0I0_IRQ_Stack_Core0.36
	.dw (#_Os_TAUD0I9_IRQ_Stack_Core0.37) + 480
	.dw #_Os_TAUD0I9_IRQ_Stack_Core0.37
	.dw (#_Os_TAUB0I12_IRQ_Stack_Core0.38) + 480
	.dw #_Os_TAUB0I12_IRQ_Stack_Core0.38
	.dw (#_Os_TAUB0I8_IRQ_Stack_Core0.39) + 480
	.dw #_Os_TAUB0I8_IRQ_Stack_Core0.39
	.dw (#_Os_TAUB0I9_IRQ_Stack_Core0.40) + 480
	.dw #_Os_TAUB0I9_IRQ_Stack_Core0.40
	.dw (#_Os_P1_IRQ_Stack_Core0.41) + 480
	.dw #_Os_P1_IRQ_Stack_Core0.41
	.dw (#_Os_P2_IRQ_Stack_Core0.42) + 480
	.dw #_Os_P2_IRQ_Stack_Core0.42
	.dw (#_Os_P5_IRQ_Stack_Core0.43) + 480
	.dw #_Os_P5_IRQ_Stack_Core0.43
	.dw (#_Os_P6_IRQ_Stack_Core0.44) + 480
	.dw #_Os_P6_IRQ_Stack_Core0.44
	.dw (#_Os_P7_IRQ_Stack_Core0.45) + 480
	.dw #_Os_P7_IRQ_Stack_Core0.45
	.dw (#_Os_P9_IRQ_Stack_Core0.46) + 480
	.dw #_Os_P9_IRQ_Stack_Core0.46
	.dw (#_Os_P14_IRQ_Stack_Core0.47) + 480
	.dw #_Os_P14_IRQ_Stack_Core0.47
	.dw (#_Os_RLIN34TX0_IRQ_Stack_Core0.48) + 480
	.dw #_Os_RLIN34TX0_IRQ_Stack_Core0.48
	.dw (#_Os_RLIN34RX1_IRQ_Stack_Core0.49) + 480
	.dw #_Os_RLIN34RX1_IRQ_Stack_Core0.49
	.dw (#_Os_RLIN34ERR2_IRQ_Stack_Core0.50) + 480
	.dw #_Os_RLIN34ERR2_IRQ_Stack_Core0.50
	.dw (#_Os_RLIN35TX0_IRQ_Stack_Core0.51) + 480
	.dw #_Os_RLIN35TX0_IRQ_Stack_Core0.51
	.dw (#_Os_RLIN35RX1_IRQ_Stack_Core0.52) + 992
	.dw #_Os_RLIN35RX1_IRQ_Stack_Core0.52
	.dw (#_Os_RLIN35ERR2_IRQ_Stack_Core0.53) + 480
	.dw #_Os_RLIN35ERR2_IRQ_Stack_Core0.53
	.dw (#_Os_RIIC0TI_IRQ_Stack_Core0.54) + 480
	.dw #_Os_RIIC0TI_IRQ_Stack_Core0.54
	.dw (#_Os_RIIC0EE_IRQ_Stack_Core0.55) + 480
	.dw #_Os_RIIC0EE_IRQ_Stack_Core0.55
	.dw (#_Os_RIIC0RI_IRQ_Stack_Core0.56) + 480
	.dw #_Os_RIIC0RI_IRQ_Stack_Core0.56
	.dw (#_Os_RIIC0TEI_IRQ_Stack_Core0.57) + 480
	.dw #_Os_RIIC0TEI_IRQ_Stack_Core0.57
	.align 4
_Os_IsrCfg:
	.dw 0x0000108E
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.ds (1)
	.ds (3)
	.dw 0x00001071
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001073
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001017
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001013
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010D6
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001050
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001034
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x0000109A
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001096
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001097
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001026
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001027
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x0000102D
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001080
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00001081
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010CD
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010CF
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010E9
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010EA
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010EB
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010ED
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010EE
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x000010EF
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x0000104C
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x0000104D
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x0000104E
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x0000104F
	.ds (4)
	.ds (2)
	.ds (2)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.align 2
_Os_CfgIsrMax_Inf:
	.dhw 0x001C
	.align 2
_Os_CfgIsr2Max_Inf:
	.dhw 0x001C
	.align 2
_Os_CfgIsr2ExcludeTplMax_Inf:
	.dhw 0x000A
	.align 4
_Os_IsrIdRange:
	.ds (4)
	.dw 0x0000001C
	.dw 0x0000001C
	.dw 0x0000001C
	.ds (4)
	.dw 0x0000001C
