#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Rte_E2EXf_LCfg.c -oDefaultBuild\Rte_E2EXf_LCfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_948d93f3e9ec48f18b427a27c5f397d63uivmvmy.1xz
#@	compiled at Fri Mar 27 09:51:04 2026

	.file "..\..\Bsw\Config\BSW_Config\Rte_E2EXf_LCfg.c"

	$reg_mode 32
	.dbl_size 8

	.extern _E2E_PROFILE_01
	.public _EndToEndTransformationDescription_0, 36
	.public _E2EXf_Config, 4

	.section .const, const
	.align 4
_EndToEndTransformationDescription_0:
	.dhw 0x0008
	.ds (2)
	.ds (4)
	.dhw 0x000C
	.db 0x03
	.ds (1)
	.ds (1)
	.ds (1)
	.db 0x0E
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (2)
	.dw 0x00000001
	.dw #.STR.1
	.db 0x01
	.ds (1)
	.ds (2)
	.db 0x01
	.db 0x01
	.db 0x01
	.db 0x01
.STR.1:
	.db 0x50,0x52,0x4F,0x46,0x49,0x4C,0x45,0x5F,0x30,0x31
	.ds (1)
	.align 2
_EndToEndTransformationISignalProps_CCU_PTCANFD_100ms_FrP02_0x317_Rx.1:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ECM_ERCANFD_10ms_FrP00_0x84_Rx.2:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.3:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP20_0x308_Rx.4:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP32_0x331_Rx.5:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.6:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ESS_PTCANFD_50ms_FrP14_0x211_Rx.7:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.8:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.9:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.10:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.11:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.12:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.13:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.14:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.15:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.16:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.17:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.18:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.19:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.20:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.21:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.22:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.23:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.24:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.25:
	.ds (2)
	.dhw 0x00A0
	.align 2
_EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.26:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.27:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.28:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.29:
	.ds (2)
	.dhw 0x00F0
	.align 2
_EndToEndTransformationISignalProps_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.30:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.31:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.32:
	.ds (2)
	.dhw 0x0080
	.align 2
_EndToEndTransformationISignalProps_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.33:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.34:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.35:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.36:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.37:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.38:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.39:
	.ds (2)
	.dhw 0x0060
	.align 2
_EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP01_0x163_Rx.40:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP02_0x187_Rx.41:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.42:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.43:
	.ds (2)
	.dhw 0x0040
	.align 2
_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.44:
	.ds (2)
	.dhw 0x0040
	.align 4
_E2ETransformer_profile01.45:
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_CCU_PTCANFD_100ms_FrP02_0x317_Rx.1
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ECM_ERCANFD_10ms_FrP00_0x84_Rx.2
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_TC_ZONE_PTCANFD_10ms_FrP01_0x57_Rx.3
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP20_0x308_Rx.4
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ESS_PTCANFD_100ms_FrP32_0x331_Rx.5
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ESS_PTCANFD_20ms_FrP01_0x12c_Rx.6
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ESS_PTCANFD_50ms_FrP14_0x211_Rx.7
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP23_0x312_Rx.8
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP27_0x37E_Rx.9
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ESS_PTEXTDCAN_100ms_FrP33_0x2d6_Rx.10
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_CONNCAN_100ms_FrP18_0x32b_Tx.11
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP02_0x377_Tx.12
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU13.13
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP41_0x3a2_Tx.14
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_ZONE_CONNCANFD_100ms_FrP56_0x3ce_Tx.15
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IBS_CHCANFD_10ms_FrP04_0xb8_Rx.16
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP07_0x1a7_Rx.17
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IBS_CHCANFD_20ms_FrP11_0x1a9_Rx.18
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ICBAD_BKPCANFD_20ms_FrP07_0x17e_Rx.19
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ICBAD_RZCUCANFD_20ms_FrP12_0x1a8_Rx.20
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ICBAD_ZONE_CHCANFD_20ms_FrP13_0x51_Rx.21
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_100ms_FrP80_0x38b_Rx.22
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_200ms_FrP79_0x47f_Rx.23
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_ICBVC_RZCUCANFD_20ms_FrP03_0x1f1_Rx.24
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_LHZCU_BKBCANFD_50ms_FrP24_0x27e_Rx.25
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_10ms_FrP01_0x9d_Rx.26
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_LHZCU_LHBKBCANFD_50ms_FrP06_0x28c_Rx.27
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_LVBM_PTEXTDCAN_100ms_FrP04_0x3c3_Rx.28
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_PEU_ERCANFD_100ms_FrP15_0x2f8_Rx.29
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_PEU_PTCANFD_100ms_FrP03_0x17c_Rx.30
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_PEU_PTCANFD_5ms_FrP02_SigGwTOCONN_0xe2_Rx.31
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_TC_PTCANFD_10ms_FrP01_SigGWTORZCU_0xed_Rx.32
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_RZCU_IMCU_SFCANFD_100ms_FrP26_0x3f7_Rx.33
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP10_0x309_Rx.34
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_RZCU_PTCANFD_100ms_FrP12_0x3d4_Rx.35
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_RZCU_PTCANFD_10ms_FrP01_0xb4_Rx.36
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_RZCU_PTCANFD_20ms_FrP06_0x194_Rx.37
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_RZCU_PTEXTDCAN_100ms_FrP21_0x455_Rx.38
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_RZCU_RZCUCANFD_10ms_FrP22_NoSecOC_0xf7_Rx.39
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP01_0x163_Rx.40
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_SDM_CHCANFD_20ms_FrP02_0x187_Rx.41
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU34.42
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU35.43
	.ds (4)
	.dw #_E2E_PROFILE_01
	.dw #_EndToEndTransformationISignalProps_IAM_CONNCANFD_100ms_ConFrP03_0x36a_Tx_PDU40.44
	.ds (4)
	.align 4
_E2EXf_Config:
	.dw #_E2ETransformer_profile01.45
