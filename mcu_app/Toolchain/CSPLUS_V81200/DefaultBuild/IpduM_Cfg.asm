#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\IpduM_Cfg.c -oDefaultBuild\IpduM_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_e205fde2f80a4398a16f68b3f1369fa6tpr142ju.gq5
#@	compiled at Fri Mar 27 09:50:03 2026

	.file "..\..\Bsw\Config\BSW_Config\IpduM_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _IpduMDefaultBufVal, 19200
	.public _IpduM_PBConfigData, 44
	.public _IpduM_MainFunctionTx_IpduMMainFunctionTx
	.extern _IpduM_MainFunctionTx

	.section .text, text
_IpduM_MainFunctionTx_IpduMMainFunctionTx:
	.stack _IpduM_MainFunctionTx_IpduMMainFunctionTx = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/IpduM_Cfg.c", 423
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/IpduM_Cfg.c", 425
	jarl _IpduM_MainFunctionTx, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
_IpduMDefaultBufVal:
	.ds (19200)
	.align 2
_ContainedTxPduRef.1:
	.dhw 0x009A
	.dhw 0x0008
	.dhw 0x009B
	.dhw 0x0008
	.dhw 0x009C
	.dhw 0x0018
	.dhw 0x009E
	.dhw 0x0008
	.dhw 0x009F
	.dhw 0x0008
	.dhw 0x00A0
	.dhw 0x0008
	.dhw 0x00A1
	.dhw 0x0008
	.dhw 0x00A2
	.dhw 0x0008
	.dhw 0x00A4
	.dhw 0x0008
	.dhw 0x00A5
	.dhw 0x0008
	.dhw 0x00A6
	.dhw 0x0008
	.dhw 0x00A7
	.dhw 0x0018
	.align 4
_ContainedTxPdu.2:
	.dw 0x00020600
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw #_ContainedTxPduRef.1
	.dw 0x00020601
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0001
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 4
	.dw 0x00020622
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0002
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 8
	.dw 0x00020615
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0003
	.ds (4)
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 12
	.dw 0x00020608
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0004
	.ds (4)
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 16
	.dw 0x00020619
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0005
	.ds (4)
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 20
	.dw 0x00020616
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0006
	.ds (4)
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 24
	.dw 0x00020605
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0007
	.ds (4)
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 28
	.dw 0x00033106
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 32
	.dw 0x00033118
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x0009
	.ds (4)
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 36
	.dw 0x00033112
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x000A
	.ds (4)
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 40
	.dw 0x00033131
	.dw 0x00000001
	.db 0x01
	.ds (1)
	.dhw 0x000B
	.ds (4)
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_ContainedTxPduRef.1) + 44
	.align 2
_ContainerTxPduRef.3:
	.dhw 0x0099
	.dhw 0x0040
	.dhw 0x009D
	.dhw 0x0040
	.dhw 0x00A3
	.dhw 0x0040
	.align 4
_ContainerTxPdu.4:
	.ds (2)
	.ds (2)
	.ds (2)
	.dhw 0x0003
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.ds (4)
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.ds (4)
	.dw #_ContainerTxPduRef.3
	.dhw 0x1900
	.dhw 0x0064
	.dhw 0x0003
	.dhw 0x0005
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.ds (4)
	.db 0x01
	.ds (1)
	.dhw 0x0001
	.ds (4)
	.ds (4)
	.ds (4)
	.dw (#_ContainerTxPduRef.3) + 4
	.dhw 0x3200
	.dhw 0x00C8
	.dhw 0x0008
	.dhw 0x0004
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.ds (4)
	.db 0x01
	.ds (1)
	.dhw 0x0002
	.ds (4)
	.ds (4)
	.ds (4)
	.dw (#_ContainerTxPduRef.3) + 8
	.align 4
_IpduMUpTxPdu.5:
	.dw 0x00000002
	.ds (1)
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x01
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x02
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x03
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x04
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x05
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x06
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x07
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x08
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x09
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x0A
	.ds (1)
	.ds (2)
	.dw 0x00000002
	.db 0x0B
	.ds (1)
	.ds (2)
	.align 4
_IpduMTxPdu.6:
	.dw 0x00000001
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.db 0x01
	.ds (3)
	.dw 0x00000001
	.db 0x02
	.ds (3)
	.align 2
_IpduM_MainFunctionTxRange.7:
	.dhw 0x0003
	.align 4
_IpduM_PBConfigData:
	.ds (4)
	.dw #_ContainedTxPdu.2
	.ds (4)
	.dw #_ContainerTxPdu.4
	.ds (4)
	.dw #_IpduMUpTxPdu.5
	.dw #_IpduMTxPdu.6
	.ds (4)
	.ds (4)
	.ds (4)
	.dw #_IpduM_MainFunctionTxRange.7
