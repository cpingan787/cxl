#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Rte_Dcm.c -oDefaultBuild\Rte_Dcm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_20c5d09e5c2943e3b61d933cde15c3864bh11j5f.u2z
#@	compiled at Fri Mar 27 09:50:47 2026

	.file "..\..\Bsw\Config\BSW_Config\Rte_Dcm.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvMBlockRamBuffer2
	.extern _NvMBlockRamBuffer5
	.extern _NvMBlockRamBuffer6
	.extern _NvMBlockRamBuffer7
	.extern _NvMBlockRamBuffer8
	.extern _NvMBlockRamBuffer9
	.extern _NvMBlockRamBuffer10
	.extern _NvMBlockRamBuffer17
	.extern _NvMBlockRamBuffer30
	.extern _NvMBlockRamBuffer31
	.extern _NvMBlockRamBuffer33
	.extern _NvMBlockRamBuffer53
	.public _DIDs_DTC_Configuation, 512
	.public _AES_Te2, 1024
	.public _AES_Te3, 1024
	.public _AES_Te0, 1024
	.public _AES_Te1, 1024
	.public _AES_rcon, 40
	.public _genKeyByCode
	.extern _memset
	.public _Rte_Call_SecurityAccess_Level_1_CompareKey
	.public _Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter
	.public _Rte_Call_SecurityAccess_Level_1_GetSeed
	.public _Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter
	.public _Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead
	.extern _Dcm_GetSesCtrlType
	.public _Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead
	.public _Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData
	.extern _NvM_ReadBlock
	.public _Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData
	.public _Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData
	.public _Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData
	.public _Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData
	.public _Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData
	.public _Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData
	.public _Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData
	.extern _ProjectConfig_GetItemData
	.public _Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData
	.public _Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData
	.public _Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData
	.public _Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData
	.public _Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData
	.public _Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData
	.public _Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData
	.public _Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData
	.public _Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData
	.public _Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData
	.public _Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData
	.public _Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData
	.public _Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData
	.public _Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData
	.public _Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData
	.public _Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData
	.public _Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData
	.public _Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData
	.public _Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData
	.public _Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData
	.public _Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData
	.public _Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData
	.public _Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData
	.public _Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData
	.public _Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData
	.public _Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData
	.public _Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData
	.public _Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData
	.public _Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData
	.public _Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData
	.public _Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData
	.public _Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData
	.public _Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData
	.extern _ParameterSyncSdkGetFromCpuIsFinished
	.extern _CanPassthrough_SendRequest
	.extern _CanPassthroughRead_PENDING
	.public _Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData
	.public _Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData
	.public _Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData
	.public _Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData
	.public _Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData
	.public _Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData
	.public _Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData
	.public _Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData
	.public _Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData
	.public _Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData
	.public _Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData
	.public _Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData
	.public _Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData
	.public _Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData
	.public _Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData
	.public _Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData
	.public _Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData
	.public _Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData
	.public _Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData
	.public _Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData
	.public _Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData
	.public _Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData
	.public _Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData
	.public _Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData
	.public _Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData
	.public _Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData
	.public _Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData
	.public _Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData
	.public _Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData
	.public _Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData
	.public _Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData
	.public _Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData
	.public _Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData
	.public _Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData
	.public _Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData
	.public _Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData
	.public _Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData
	.public _Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData
	.public _Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData
	.extern _PeripheralHalAdGet
	.public _Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData
	.extern _Com_ReceiveSignal
	.public _Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData
	.extern _TimeSyncSdkGetRealTime
	.public _Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData
	.public _Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData
	.public _Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData
	.public _Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData
	.public _Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData
	.public _Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData
	.public _Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData
	.public _Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData
	.public _Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData
	.public _Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData
	.public _Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData
	.public _Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData
	.public _Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData
	.public _Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData
	.public _Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData
	.extern _memcpy
	.public _Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData
	.public _Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData
	.extern _StateSyncGetLocationInfo
	.public _Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData
	.public _Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData
	.public _Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData
	.public _Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData
	.public _Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData
	.public _Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData
	.public _Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData
	.public _Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData
	.public _Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData
	.public _Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData
	.public _Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData
	.public _Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData
	.public _Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData
	.public _Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData
	.public _Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData
	.extern _IsFlashDataValid
	.public _Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData
	.public _Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData
	.public _Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData
	.public _Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData
	.public _Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData
	.public _Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData
	.public _Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData
	.public _Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData
	.public _Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData
	.public _Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData
	.public _Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData
	.public _Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData
	.public _Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData
	.public _Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData
	.public _Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData
	.public _Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData
	.public _Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData
	.public _Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData
	.public _Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData
	.extern _NvM_GetErrorStatus
	.extern _NvM_WriteBlock
	.public _Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData
	.public _Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData
	.extern _ParameterSyncSdkSetToCpu
	.public _Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData
	.public _Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData
	.public _Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData
	.public _Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData
	.public _Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData
	.public _Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData
	.public _Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData
	.extern _CanPassthroughWrite_PENDING
	.public _Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData
	.extern _Dem_SetDTCSuppression
	.public _Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData
	.public _Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData
	.public _Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData
	.public _Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData
	.public _Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData
	.public _Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData
	.public _Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData
	.public _Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData
	.public _Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData
	.public _Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData
	.public _Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData
	.public _Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData
	.public _Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData
	.public _Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData
	.public _Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData
	.public _Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData
	.public _Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData
	.public _Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData
	.public _Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData
	.public _Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData
	.public _Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData
	.public _Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData
	.public _Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData
	.public _Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData
	.public _Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData
	.public _Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData
	.public _Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData
	.public _Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData
	.public _Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData
	.public _Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData
	.public _Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData
	.public _Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData
	.public _Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData
	.public _Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData
	.public _Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData
	.public _Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData
	.public _Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData
	.public _Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData
	.public _Rte_Call_RoutineServices_Routine_0xAF09_RequestResults
	.public _Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults
	.public _Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults
	.public _Rte_Call_RoutineServices_Routine_0xFE02_RequestResults
	.public _Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults
	.public _Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults
	.public _Rte_Call_RoutineServices_Routine_0xAF08_Start
	.extern _CanPassthroughRoutine_PENDING
	.public _Rte_Call_RoutineServices_Routine_0xAF09_Start
	.public _Rte_Call_RoutineServices_Routine_0xAF0A_Start
	.public _Rte_Call_RoutineServices_Routine_0xAFF7_Start
	.public _Rte_Call_RoutineServices_Routine_0xFE02_Start
	.public _Rte_Call_RoutineServices_Routine_0xFE80_Start
	.public _Rte_Call_RoutineServices_Routine_0xFE0A_Start
	.public _Rte_Call_RoutineServices_Routine_0xFE0B_Start
	.public _Rte_Call_RoutineServices_Routine_0xAF05_Start
	.public _Rte_Call_RoutineServices_Routine_0xAF06_Start
	.public _Rte_Call_RoutineServices_Routine_0xAF07_Start
	.public _Rte_Call_RoutineServices_Routine_0xAF08_Stop
	.public _Rte_Call_RoutineServices_Routine_0xAF09_Stop
	.public _Rte_Call_RoutineServices_Routine_0xFE0A_Stop
	.public _Rte_Call_RoutineServices_Routine_0xAF06_Stop
	.public _Rte_Call_RoutineServices_Routine_0xAF07_Stop
	.public _RTE_PreConditonCheck
	.public _SchM_PerformReset
	.extern _Mcu_PerformReset
	.extern _EEIf_Write
	.extern _EEIf_Read

	.section .text, text
_genKeyByCode:
	.stack _genKeyByCode = 296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 359
	prepare 0x00000071, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 361
	st.b r0, 0x00000117[r3]
	st.b r0, 0x00000116[r3]
	st.b r0, 0x00000115[r3]
	st.b r0, 0x00000114[r3]
	st.b r0, 0x00000114[r3]
	movea 0x00000010, r0, r8
	mov 0x0000000C, r7
	movea 0x00000104, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 364
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 379
	ld.b 0x00000000[r20], r2
	st.b r2, 0x00000104[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 380
	ld.b 0x00000001[r20], r2
	st.b r2, 0x00000105[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 381
	ld.b 0x00000002[r20], r2
	st.b r2, 0x00000106[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 382
	ld.b 0x00000003[r20], r2
	st.b r2, 0x00000107[r3]
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 386
	st.w r2, 0x00000100[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 388
	ld.b 0x00000000[r21], r2
	shl 0x00000018, r2
	ld.bu 0x00000001[r21], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000002[r21], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000003[r21], r5
	or r5, r2
	st.w r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 389
	ld.b 0x00000004[r21], r2
	shl 0x00000018, r2
	ld.bu 0x00000005[r21], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000006[r21], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000007[r21], r5
	or r5, r2
	st.w r2, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 390
	ld.b 0x00000008[r21], r2
	shl 0x00000018, r2
	ld.bu 0x00000009[r21], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000000A[r21], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000000B[r21], r5
	or r5, r2
	st.w r2, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 391
	ld.b 0x0000000C[r21], r2
	shl 0x00000018, r2
	ld.bu 0x0000000D[r21], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000000E[r21], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000000F[r21], r5
	or r5, r2
	st.w r2, 0x0000001C[r3]
	mov 0x00000000, r2
	movea 0x00000010, r3, r5
.BB.LABEL.1_1:	; bb232
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 395
	ld.w 0x0000000C[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 396
	mov r6, r7
	shr 0x00000006, r7
	andi 0x000003FC, r7, r7
	mov #_AES_Te3, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	movhi 0x000000FF, r0, r8
	and r8, r7
	mov r6, r8
	shr 0x0000000E, r8
	andi 0x000003FC, r8, r8
	mov #_AES_Te2, r9
	add r8, r9
	ld.w 0x00000000[r9], r8
	movhi 0x0000FF00, r0, r9
	and r9, r8
	ld.w 0x00000000[r5], r10
	xor r8, r10
	xor r7, r10
	andi 0x000000FF, r6, r7
	shl 0x00000002, r7
	mov #_AES_Te0, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	andi 0x0000FF00, r7, r7
	xor r7, r10
	and r9, r6
	shr 0x00000016, r6
	mov #_AES_Te1, r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	xor r6, r10
	mov r2, r6
	shl 0x00000002, r6
	mov #_AES_rcon, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	xor r6, r10
	st.w r10, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 401
	ld.w 0x00000004[r5], r6
	xor r10, r6
	st.w r6, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 402
	ld.w 0x00000008[r5], r7
	xor r6, r7
	st.w r7, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 403
	ld.w 0x0000000C[r5], r6
	xor r7, r6
	st.w r6, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 404
	add 0x00000001, r2
	cmp 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 396
	movea 0x00000010, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 404
	bnz9 .BB.LABEL.1_1
.BB.LABEL.1_2:	; AESENC
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 427
	ld.bu 0x00000111[r3], r2
	shl 0x00000010, r2
	movea 0x00000104, r3, r5
	ld.b 0x0000000C[r5], r6
	shl 0x00000018, r6
	or r2, r6
	ld.bu 0x00000112[r3], r2
	shl 0x00000008, r2
	or r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 426
	ld.bu 0x0000010D[r3], r2
	shl 0x00000010, r2
	ld.b 0x00000008[r5], r7
	shl 0x00000018, r7
	or r2, r7
	ld.bu 0x0000010E[r3], r2
	shl 0x00000008, r2
	or r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 425
	ld.bu 0x00000109[r3], r2
	shl 0x00000010, r2
	ld.b 0x00000004[r5], r8
	shl 0x00000018, r8
	or r2, r8
	ld.bu 0x0000010A[r3], r2
	shl 0x00000008, r2
	or r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 424
	ld.bu 0x00000105[r3], r2
	shl 0x00000010, r2
	ld.b 0x00000000[r5], r5
	shl 0x00000018, r5
	or r2, r5
	ld.bu 0x00000106[r3], r2
	shl 0x00000008, r2
	or r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 432
	ld.w 0x00000100[r3], r2
	shr 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 427
	movea 0x0000001C, r3, r9
	ld.bu 0x00000113[r3], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 426
	movea 0x00000018, r3, r11
	ld.bu 0x0000010F[r3], r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 425
	movea 0x00000014, r3, r13
	ld.bu 0x0000010B[r3], r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 424
	ld.bu 0x00000107[r3], r15
	movea 0x00000010, r3, r16
	br9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_break_bb578
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movhi 0x0000FF00, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	mov r17, r6
	and r7, r6
	shr 0x00000016, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 464
	mov #_AES_Te0, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	add r8, r6
	ld.w 0x00000000[r6], r6
	mov r9, r12
	shr 0x0000000E, r12
	andi 0x000003FC, r12, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 464
	mov #_AES_Te1, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	add r13, r12
	ld.w 0x00000000[r12], r12
	xor r12, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 470
	mov r11, r12
	and r7, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	mov r11, r14
	shr 0x00000006, r14
	andi 0x000003FC, r14, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 464
	mov #_AES_Te2, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	add r15, r14
	ld.w 0x00000000[r14], r14
	xor r14, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 476
	and r10, r7
	shr 0x00000016, r7
	add r8, r7
	ld.w 0x00000000[r7], r7
	mov r17, r14
	shr 0x0000000E, r14
	andi 0x000003FC, r14, r14
	add r13, r14
	ld.w 0x00000000[r14], r14
	xor r14, r7
	mov r9, r14
	shr 0x00000006, r14
	andi 0x000003FC, r14, r14
	add r15, r14
	ld.w 0x00000000[r14], r14
	xor r14, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 470
	shr 0x00000016, r12
	add r12, r8
	ld.w 0x00000000[r8], r8
	mov r10, r12
	shr 0x0000000E, r12
	andi 0x000003FC, r12, r12
	add r13, r12
	ld.w 0x00000000[r12], r12
	xor r12, r8
	mov r17, r12
	shr 0x00000006, r12
	andi 0x000003FC, r12, r12
	add r15, r12
	ld.w 0x00000000[r12], r12
	xor r12, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 464
	ld.w 0x00000000[r5], r5
	mov r11, r12
	shr 0x0000000E, r12
	andi 0x000003FC, r12, r12
	add r12, r13
	ld.w 0x00000000[r13], r12
	xor r12, r5
	mov r10, r12
	shr 0x00000006, r12
	andi 0x000003FC, r12, r12
	add r12, r15
	ld.w 0x00000000[r15], r12
	xor r12, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	zxb r10
	shl 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 464
	mov #_AES_Te3, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	add r13, r10
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 476
	zxb r11
	shl 0x00000002, r11
	add r13, r11
	ld.w 0x00000000[r11], r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 470
	zxb r9
	shl 0x00000002, r9
	add r13, r9
	ld.w 0x00000000[r9], r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 464
	zxb r17
	shl 0x00000002, r17
	add r17, r13
	ld.w 0x00000000[r13], r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 482
	movea 0x0000002C, r18, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 476
	movea 0x00000028, r18, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 470
	movea 0x00000024, r18, r13
.BB.LABEL.1_4:	; bb679
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov r16, r18
	xor r10, r6
	ld.w 0x00000000[r9], r9
	xor r9, r6
	movhi 0x0000FF00, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	mov r6, r10
	and r9, r10
	shr 0x00000016, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 434
	mov #_AES_Te0, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	add r16, r10
	ld.w 0x00000000[r10], r17
	xor r15, r5
	ld.w 0x00000000[r18], r10
	xor r10, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 434
	mov r5, r15
	and r9, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	mov r5, r10
	shr 0x0000000E, r10
	andi 0x000003FC, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 434
	mov #_AES_Te1, r19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	add r19, r10
	ld.w 0x00000000[r10], r10
	xor r10, r17
	xor r14, r8
	ld.w 0x00000000[r13], r10
	xor r10, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 440
	mov r8, r13
	and r9, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	mov r8, r10
	shr 0x00000006, r10
	andi 0x000003FC, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 434
	mov #_AES_Te2, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	add r14, r10
	ld.w 0x00000000[r10], r10
	xor r10, r17
	xor r12, r7
	ld.w 0x00000000[r11], r10
	xor r10, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 446
	and r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	andi 0x000000FF, r7, r10
	shl 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 434
	mov #_AES_Te3, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 452
	add r12, r10
	ld.w 0x00000000[r10], r10
	xor r10, r17
	ld.w 0x0000001C[r18], r10
	xor r10, r17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 446
	shr 0x00000016, r9
	add r16, r9
	ld.w 0x00000000[r9], r10
	mov r6, r9
	shr 0x0000000E, r9
	andi 0x000003FC, r9, r9
	add r19, r9
	ld.w 0x00000000[r9], r9
	xor r9, r10
	mov r5, r9
	shr 0x00000006, r9
	andi 0x000003FC, r9, r9
	add r14, r9
	ld.w 0x00000000[r9], r9
	xor r9, r10
	andi 0x000000FF, r8, r9
	shl 0x00000002, r9
	add r12, r9
	ld.w 0x00000000[r9], r9
	xor r9, r10
	ld.w 0x00000018[r18], r9
	xor r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 440
	shr 0x00000016, r13
	add r16, r13
	ld.w 0x00000000[r13], r11
	mov r7, r9
	shr 0x0000000E, r9
	andi 0x000003FC, r9, r9
	add r19, r9
	ld.w 0x00000000[r9], r9
	xor r9, r11
	mov r6, r9
	shr 0x00000006, r9
	andi 0x000003FC, r9, r9
	add r14, r9
	ld.w 0x00000000[r9], r9
	xor r9, r11
	zxb r5
	shl 0x00000002, r5
	add r12, r5
	ld.w 0x00000000[r5], r5
	xor r5, r11
	ld.w 0x00000014[r18], r5
	xor r5, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 434
	shr 0x00000016, r15
	add r15, r16
	ld.w 0x00000000[r16], r9
	shr 0x0000000E, r8
	andi 0x000003FC, r8, r5
	add r5, r19
	ld.w 0x00000000[r19], r5
	xor r5, r9
	shr 0x00000006, r7
	andi 0x000003FC, r7, r5
	add r5, r14
	ld.w 0x00000000[r14], r5
	xor r5, r9
	zxb r6
	shl 0x00000002, r6
	add r6, r12
	ld.w 0x00000000[r12], r5
	xor r5, r9
	ld.w 0x00000010[r18], r5
	xor r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 460
	mov r9, r5
	shr 0x00000016, r5
	andi 0x000003FC, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 459
	movea 0x00000020, r18, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 460
	loop r2, .BB.LABEL.1_3
.BB.LABEL.1_5:	; bb681
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 489
	mov #_AES_Te2, r2
	add r2, r5
	ld.w 0x00000000[r5], r5
	movhi 0x0000FF00, r0, r6
	and r6, r5
	mov r11, r7
	shr 0x0000000E, r7
	andi 0x000003FC, r7, r7
	mov #_AES_Te3, r8
	add r8, r7
	ld.w 0x00000000[r7], r7
	movhi 0x000000FF, r0, r12
	and r12, r7
	or r7, r5
	mov r10, r7
	shr 0x00000006, r7
	andi 0x000003FC, r7, r7
	mov #_AES_Te0, r13
	add r13, r7
	ld.w 0x00000000[r7], r7
	andi 0x0000FF00, r7, r7
	or r7, r5
	andi 0x000000FF, r17, r7
	shl 0x00000002, r7
	mov #_AES_Te1, r14
	add r14, r7
	ld.bu 0x00000000[r7], r7
	or r7, r5
	ld.w 0x00000020[r18], r7
	xor r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 495
	mov r5, r7
	shr 0x00000018, r7
	st.b r7, 0x00000000[r3]
	mov r5, r7
	shr 0x00000010, r7
	st.b r7, 0x00000001[r3]
	mov r5, r7
	shr 0x00000008, r7
	st.b r7, 0x00000002[r3]
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 496
	mov r11, r5
	and r6, r5
	shr 0x00000016, r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	and r6, r5
	mov r10, r7
	shr 0x0000000E, r7
	andi 0x000003FC, r7, r7
	add r8, r7
	ld.w 0x00000000[r7], r7
	and r12, r7
	or r7, r5
	mov r17, r7
	shr 0x00000006, r7
	andi 0x000003FC, r7, r7
	add r13, r7
	ld.w 0x00000000[r7], r7
	andi 0x0000FF00, r7, r7
	or r7, r5
	andi 0x000000FF, r9, r7
	shl 0x00000002, r7
	add r14, r7
	ld.bu 0x00000000[r7], r7
	or r7, r5
	ld.w 0x00000024[r18], r7
	xor r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 502
	mov r5, r7
	shr 0x00000018, r7
	st.b r7, 0x00000004[r3]
	mov r5, r7
	shr 0x00000010, r7
	st.b r7, 0x00000005[r3]
	mov r5, r7
	shr 0x00000008, r7
	st.b r7, 0x00000006[r3]
	st.b r5, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 503
	mov r10, r5
	and r6, r5
	shr 0x00000016, r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	and r6, r5
	mov r17, r7
	shr 0x0000000E, r7
	andi 0x000003FC, r7, r7
	add r8, r7
	ld.w 0x00000000[r7], r7
	and r12, r7
	or r7, r5
	mov r9, r7
	shr 0x00000006, r7
	andi 0x000003FC, r7, r7
	add r13, r7
	ld.w 0x00000000[r7], r7
	andi 0x0000FF00, r7, r7
	or r7, r5
	andi 0x000000FF, r11, r7
	shl 0x00000002, r7
	add r14, r7
	ld.bu 0x00000000[r7], r7
	or r7, r5
	ld.w 0x00000028[r18], r7
	xor r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 509
	mov r5, r7
	shr 0x00000018, r7
	st.b r7, 0x00000008[r3]
	mov r5, r7
	shr 0x00000010, r7
	st.b r7, 0x00000009[r3]
	mov r5, r7
	shr 0x00000008, r7
	st.b r7, 0x0000000A[r3]
	st.b r5, 0x0000000B[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 510
	and r6, r17
	shr 0x00000016, r17
	add r17, r2
	ld.w 0x00000000[r2], r2
	and r6, r2
	shr 0x0000000E, r9
	andi 0x000003FC, r9, r5
	add r5, r8
	ld.w 0x00000000[r8], r5
	and r12, r5
	or r5, r2
	shr 0x00000006, r11
	andi 0x000003FC, r11, r5
	add r5, r13
	ld.w 0x00000000[r13], r5
	andi 0x0000FF00, r5, r5
	or r5, r2
	zxb r10
	shl 0x00000002, r10
	add r10, r14
	ld.bu 0x00000000[r14], r5
	or r5, r2
	ld.w 0x0000002C[r18], r5
	xor r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 516
	mov r2, r5
	shr 0x00000018, r5
	st.b r5, 0x0000000C[r3]
	mov r2, r5
	shr 0x00000010, r5
	st.b r5, 0x0000000D[r3]
	mov r2, r5
	shr 0x00000008, r5
	st.b r5, 0x0000000E[r3]
	st.b r2, 0x0000000F[r3]
	mov 0x00000000, r2
	br9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb886
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 520
	add r2, r5
	ld.b 0x00000000[r5], r6
	ld.b 0x00000004[r5], r7
	xor r7, r6
	ld.b 0x00000008[r5], r7
	xor r7, r6
	ld.b 0x0000000C[r5], r5
	xor r5, r6
	movea 0x00000114, r3, r5
	add r2, r5
	st.b r6, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_7:	; bb919
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 519
	cmp 0x00000004, r2
	blt9 .BB.LABEL.1_6
.BB.LABEL.1_8:	; bb924
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000114, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 524
	ld.b 0x00000000[r2], r5
	st.b r5, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 525
	ld.b 0x00000001[r2], r5
	st.b r5, 0x00000001[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 526
	ld.b 0x00000002[r2], r5
	st.b r5, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 527
	ld.b 0x00000003[r2], r5
	st.b r5, 0x00000003[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 530
	ld.b 0x00000000[r2], r10
	shl 0x00000018, r10
	ld.bu 0x00000115[r3], r2
	shl 0x00000010, r2
	or r2, r10
	ld.bu 0x00000116[r3], r2
	shl 0x00000008, r2
	or r2, r10
	ld.bu 0x00000117[r3], r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 535
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000071, [r31]
_Rte_Call_SecurityAccess_Level_1_CompareKey:
	.stack _Rte_Call_SecurityAccess_Level_1_CompareKey = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 547
	prepare 0x00000041, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 558
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 560
	mov #_longKey.3, r7
	mov #_gs_SeedBuf.2, r6
	jarl _genKeyByCode, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 563
	andi 0x000000FF, r2, r5
	mov r3, r6
	add r5, r6
	ld.bu 0x00000000[r6], r6
	add r20, r5
	ld.bu 0x00000000[r5], r5
	cmp r5, r6
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	add 0x00000001, r2
.BB.LABEL.2_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 561
	andi 0x000000FF, r2, r5
	cmp 0x00000004, r5
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_4:	; bb27.bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; bb.bb35_crit_edge
	mov 0x0000000B, r10
.BB.LABEL.2_6:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 576
	zxb r10
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter:
	.stack _Rte_Call_SecurityAccess_Level_1_GetSecurityAttemptCounter = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 582
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 594
	jmp [r31]
_Rte_Call_SecurityAccess_Level_1_GetSeed:
	.stack _Rte_Call_SecurityAccess_Level_1_GetSeed = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 600
	movhi HIGHW1(#_gs_RandomSeed.1), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 614
	ld.w LOWW(#_gs_RandomSeed.1)[r2], r5
	movea 0x000041A7, r0, r6
	mul r6, r5, r0
	st.w r5, LOWW(#_gs_RandomSeed.1)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x20000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 617
	sub r2, r5
	shl 0x00000003, r5
	movhi HIGHW1(#_gs_RandomSeed.1), r0, r6
	ld.w LOWW(#_gs_RandomSeed.1)[r6], r6
	shr r5, r6
	mov r7, r5
	add r2, r5
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 618
	mov #_gs_SeedBuf.2, r5
	add r2, r5
	st.b r6, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.4_2:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 615
	cmp 0x00000004, r2
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_3:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 625
	jmp [r31]
_Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter:
	.stack _Rte_Call_SecurityAccess_Level_1_SetSecurityAttemptCounter = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 631
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 644
	jmp [r31]
_Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF130_DID_0xF130_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 651
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 666
	jmp [r31]
_Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 671
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 685
	jmp [r31]
_Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 690
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 704
	jmp [r31]
_Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF190_DID_0xF190_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 709
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 723
	jmp [r31]
_Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF198_DID_0xF198_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 728
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 742
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 747
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 761
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 766
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 780
	jmp [r31]
_Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF100_DID_0xF100_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 785
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 799
	jmp [r31]
_Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF110_DID_0xF110_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 804
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 818
	jmp [r31]
_Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF111_DID_0xF111_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 823
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 837
	jmp [r31]
_Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF112_DID_0xF112_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 842
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 856
	jmp [r31]
_Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF113_DID_0xF113_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 861
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 875
	jmp [r31]
_Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF114_DID_0xF114_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 880
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 894
	jmp [r31]
_Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF115_DID_0xF115_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 899
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 913
	jmp [r31]
_Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF116_DID_0xF116_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 918
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 932
	jmp [r31]
_Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF117_DID_0xF117_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 937
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 951
	jmp [r31]
_Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF118_DID_0xF118_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 956
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 970
	jmp [r31]
_Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF119_DID_0xF119_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 975
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 989
	jmp [r31]
_Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 994
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1008
	jmp [r31]
_Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1013
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1027
	jmp [r31]
_Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1032
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1046
	jmp [r31]
_Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1051
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1065
	jmp [r31]
_Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1070
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1084
	jmp [r31]
_Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1089
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1103
	jmp [r31]
_Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF120_DID_0xF120_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1108
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1122
	jmp [r31]
_Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF121_DID_0xF121_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1127
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1141
	jmp [r31]
_Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF131_DID_0xF131_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1146
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1160
	jmp [r31]
_Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF183_DID_0xF183_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1165
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1179
	jmp [r31]
_Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF187_DID_0xF187_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1184
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1198
	jmp [r31]
_Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1203
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1217
	jmp [r31]
_Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF191_DID_0xF191_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1222
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1236
	jmp [r31]
_Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF192_DID_0xF192_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1241
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1255
	jmp [r31]
_Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF194_DID_0xF194_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1260
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1274
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1279
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1293
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1298
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1312
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1317
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1331
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1336
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1350
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1355
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1369
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1374
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1388
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1393
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1407
	jmp [r31]
_Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC001_DID_0xC001_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1412
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1426
	jmp [r31]
_Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC002_DID_0xC002_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1431
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1445
	jmp [r31]
_Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC003_DID_0xC003_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1450
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1464
	jmp [r31]
_Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC004_DID_0xC004_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1469
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1483
	jmp [r31]
_Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC005_DID_0xC005_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1488
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1502
	jmp [r31]
_Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC006_DID_0xC006_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1507
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1521
	jmp [r31]
_Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC007_DID_0xC007_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1526
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1540
	jmp [r31]
_Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC008_DID_0xC008_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1545
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1559
	jmp [r31]
_Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC009_DID_0xC009_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1564
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1578
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1583
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1597
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1602
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1616
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1621
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1635
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1640
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1654
	jmp [r31]
_Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC011_DID_0xC011_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1659
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1673
	jmp [r31]
_Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC012_DID_0xC012_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1678
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1692
	jmp [r31]
_Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1697
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1711
	jmp [r31]
_Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC014_DID_0xC014_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1716
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1730
	jmp [r31]
_Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC015_DID_0xC015_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1735
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1749
	jmp [r31]
_Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC016_DID_0xC016_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1754
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1768
	jmp [r31]
_Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC102_DID_0xC102_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1773
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1787
	jmp [r31]
_Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC106_DID_0xC106_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1792
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1806
	jmp [r31]
_Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC109_DID_0xC109_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1811
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1825
	jmp [r31]
_Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1830
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1844
	jmp [r31]
_Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1849
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1863
	jmp [r31]
_Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC305_DID_0xC305_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1868
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1882
	jmp [r31]
_Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC306_DID_0xC306_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1887
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1901
	jmp [r31]
_Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC307_DID_0xC307_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1906
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1920
	jmp [r31]
_Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC308_DID_0xC308_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1925
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1939
	jmp [r31]
_Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC309_DID_0xC309_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1944
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1958
	jmp [r31]
_Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1963
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1977
	jmp [r31]
_Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1982
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 1996
	jmp [r31]
_Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2001
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2015
	jmp [r31]
_Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2020
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2034
	jmp [r31]
_Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2039
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2053
	jmp [r31]
_Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2058
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2072
	jmp [r31]
_Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2077
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2091
	jmp [r31]
_Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF021_DID_0xF021_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2096
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2110
	jmp [r31]
_Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF022_DID_0xF022_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2115
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2129
	jmp [r31]
_Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF023_DID_0xF023_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2134
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2148
	jmp [r31]
_Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0x0112_DID_0x0112_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2153
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2167
	jmp [r31]
_Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xE101_DID_0xE101_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2172
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2186
	jmp [r31]
_Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0x010B_DID_0x010B_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2191
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2205
	jmp [r31]
_Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xE010_DID_0xE010_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2210
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2224
	jmp [r31]
_Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xD002_DID_0xD002_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2229
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2243
	jmp [r31]
_Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xF186_DID_0xF186_ConditionCheckRead = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2248
	prepare 0x00000041, 0x00000004
	mov r7, r20
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2260
	jarl _Dcm_GetSesCtrlType, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.90_2
.BB.LABEL.90_1:	; entry.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	br9 .BB.LABEL.90_5
.BB.LABEL.90_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2262
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.90_6
.BB.LABEL.90_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000003, r2
	bz9 .BB.LABEL.90_6
.BB.LABEL.90_4:	; if_then_bb.if_break_bb29_crit_edge
	movea 0x0000007E, r0, r2
.BB.LABEL.90_5:	; if_break_bb29
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2273
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.90_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2278
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xD001_DID_0xD001_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2283
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2297
	jmp [r31]
_Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2302
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2316
	jmp [r31]
_Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB000_DID_0xB000_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2321
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2335
	jmp [r31]
_Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB001_DID_0xB001_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2340
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2354
	jmp [r31]
_Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB002_DID_0xB002_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2359
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2373
	jmp [r31]
_Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB003_DID_0xB003_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2378
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2392
	jmp [r31]
_Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB004_DID_0xB004_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2397
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2411
	jmp [r31]
_Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB005_DID_0xB005_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2416
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2430
	jmp [r31]
_Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB006_DID_0xB006_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2435
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2449
	jmp [r31]
_Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2454
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2468
	jmp [r31]
_Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB082_DID_0xB082_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2473
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2487
	jmp [r31]
_Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB083_DID_0xB083_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2492
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2506
	jmp [r31]
_Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB100_DID_0xB100_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2511
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2525
	jmp [r31]
_Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB101_DID_0xB101_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2530
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2544
	jmp [r31]
_Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB102_DID_0xB102_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2549
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2563
	jmp [r31]
_Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB103_DID_0xB103_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2568
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2582
	jmp [r31]
_Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB104_DID_0xB104_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2587
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2601
	jmp [r31]
_Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB105_DID_0xB105_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2606
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2620
	jmp [r31]
_Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB180_DID_0xB180_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2625
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2639
	jmp [r31]
_Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB181_DID_0xB181_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2644
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2658
	jmp [r31]
_Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB182_DID_0xB182_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2663
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2677
	jmp [r31]
_Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB183_DID_0xB183_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2682
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2696
	jmp [r31]
_Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB185_DID_0xB185_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2701
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2715
	jmp [r31]
_Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB186_DID_0xB186_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2720
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2734
	jmp [r31]
_Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB187_DID_0xB187_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2739
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2753
	jmp [r31]
_Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB200_DID_0xB200_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2758
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2772
	jmp [r31]
_Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB201_DID_0xB201_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2777
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2791
	jmp [r31]
_Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB202_DID_0xB202_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2796
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2810
	jmp [r31]
_Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB210_DID_0xB210_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2815
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2829
	jmp [r31]
_Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB211_DID_0xB211_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2834
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2848
	jmp [r31]
_Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB230_DID_0xB230_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2853
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2867
	jmp [r31]
_Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB302_DID_0xB302_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2872
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2886
	jmp [r31]
_Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB931_DID_0xB931_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2891
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2905
	jmp [r31]
_Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2910
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2924
	jmp [r31]
_Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2929
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2943
	jmp [r31]
_Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2948
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2962
	jmp [r31]
_Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2967
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2981
	jmp [r31]
_Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 2986
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3000
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3005
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3019
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3024
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3038
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3043
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3057
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3062
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3076
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3081
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3095
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3100
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3114
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3119
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3133
	jmp [r31]
_Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0xD004_DID_0xD004_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3138
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3152
	jmp [r31]
_Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead:
	.stack _Rte_Call_DataServices_Data_0x0100_DID_0x0100_ConditionCheckRead = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3157
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3171
	jmp [r31]
_Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF130_DID_0xF130_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3177
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3187
	mov #_NvMBlockRamBuffer10, r7
	mov 0x0000000A, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.138_2
.BB.LABEL.138_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.138_4
.BB.LABEL.138_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3189
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3190
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.138_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3195
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer10, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.138_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3193
	andi 0x000000FF, r21, r2
	addi 0xFFFFFFE0, r2, r0
	blt9 .BB.LABEL.138_3
.BB.LABEL.138_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3203
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3208
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3218
	mov #_NvMBlockRamBuffer5, r7
	mov 0x00000005, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.139_2
.BB.LABEL.139_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.139_4
.BB.LABEL.139_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3220
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3221
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.139_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3226
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer5, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.139_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3224
	andi 0x000000FF, r21, r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.139_3
.BB.LABEL.139_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3234
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3239
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3250
	mov #_NvMBlockRamBuffer6, r7
	mov 0x00000006, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.140_2
.BB.LABEL.140_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.140_4
.BB.LABEL.140_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3252
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3253
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.140_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3258
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer6, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.140_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3256
	andi 0x000000FF, r21, r2
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.140_3
.BB.LABEL.140_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3265
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF190_DID_0xF190_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3270
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3280
	mov #_NvMBlockRamBuffer7, r7
	mov 0x00000007, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.141_2
.BB.LABEL.141_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.141_4
.BB.LABEL.141_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3282
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3283
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.141_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3288
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer7, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.141_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3286
	andi 0x000000FF, r21, r2
	add 0xFFFFFFF0, r2
	ble9 .BB.LABEL.141_3
.BB.LABEL.141_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3296
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF198_DID_0xF198_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3301
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3311
	mov #_NvMBlockRamBuffer8, r7
	mov 0x00000008, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.142_2
.BB.LABEL.142_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.142_4
.BB.LABEL.142_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3313
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3314
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.142_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3319
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer8, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.142_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3317
	andi 0x000000FF, r21, r2
	cmp 0x0000000B, r2
	blt9 .BB.LABEL.142_3
.BB.LABEL.142_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3327
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3332
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3342
	mov #_NvMBlockRamBuffer9, r7
	mov 0x00000009, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.143_2
.BB.LABEL.143_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.143_4
.BB.LABEL.143_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3344
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3345
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.143_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3350
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer9, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.143_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3348
	andi 0x000000FF, r21, r2
	addi 0xFFFFFFEC, r2, r0
	blt9 .BB.LABEL.143_3
.BB.LABEL.143_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3358
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3363
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3373
	mov #_NvMBlockRamBuffer2, r7
	mov 0x00000002, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.144_2
.BB.LABEL.144_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.144_4
.BB.LABEL.144_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3375
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3376
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.144_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3381
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer2, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.144_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3379
	andi 0x000000FF, r21, r2
	cmp 0x00000005, r2
	blt9 .BB.LABEL.144_3
.BB.LABEL.144_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3388
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF100_DID_0xF100_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3393
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3403
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3404
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.145_2
.BB.LABEL.145_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3406
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3407
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.145_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3419
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF110_DID_0xF110_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3424
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3440
	jmp [r31]
_Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF111_DID_0xF111_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3445
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3455
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3456
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.147_2
.BB.LABEL.147_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3458
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3459
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.147_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3471
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF112_DID_0xF112_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3476
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3486
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3487
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.148_2
.BB.LABEL.148_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3489
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3490
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.148_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3503
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF113_DID_0xF113_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3508
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3518
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3519
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.149_2
.BB.LABEL.149_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3521
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3522
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.149_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3534
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF114_DID_0xF114_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3539
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3549
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3550
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.150_2
.BB.LABEL.150_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3552
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3553
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.150_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3565
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF115_DID_0xF115_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3570
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3580
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3581
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.151_2
.BB.LABEL.151_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3583
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3584
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.151_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3596
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF116_DID_0xF116_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3601
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3611
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3612
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.152_2
.BB.LABEL.152_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3614
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3615
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.152_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3627
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF117_DID_0xF117_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3632
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3642
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3643
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.153_2
.BB.LABEL.153_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3645
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3646
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.153_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3658
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF118_DID_0xF118_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3663
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3673
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3674
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.154_2
.BB.LABEL.154_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3676
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3677
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.154_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3689
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF119_DID_0xF119_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3694
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3704
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3705
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.155_2
.BB.LABEL.155_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3707
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3708
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.155_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3720
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF11A_DID_0xF11A_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3725
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3735
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3736
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.156_2
.BB.LABEL.156_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3738
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3739
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.156_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3751
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF11B_DID_0xF11B_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3756
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3766
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3767
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.157_2
.BB.LABEL.157_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3769
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3770
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.157_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3782
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF11C_DID_0xF11C_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3787
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3797
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3798
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.158_2
.BB.LABEL.158_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3800
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3801
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.158_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3813
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF11D_DID_0xF11D_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3818
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3828
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3829
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.159_2
.BB.LABEL.159_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3831
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3832
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.159_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3844
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF11E_DID_0xF11E_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3849
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3859
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x0000000E, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3860
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.160_2
.BB.LABEL.160_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3862
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3863
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.160_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3875
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF11F_DID_0xF11F_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3880
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3890
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3891
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.161_2
.BB.LABEL.161_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3893
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3894
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.161_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3906
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF120_DID_0xF120_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3911
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3921
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3922
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.162_2
.BB.LABEL.162_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3924
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3925
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.162_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3937
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF121_DID_0xF121_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3942
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3958
	jmp [r31]
_Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF131_DID_0xF131_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3963
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3979
	jmp [r31]
_Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF183_DID_0xF183_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3984
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3994
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000011, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3996
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.165_2
.BB.LABEL.165_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3998
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 3999
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.165_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4011
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF187_DID_0xF187_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4016
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4038
	jmp [r31]
_Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF18A_DID_0xF18A_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4043
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4053
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4054
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.167_2
.BB.LABEL.167_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4056
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4057
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.167_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4069
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF191_DID_0xF191_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4074
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4084
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000014, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4085
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.168_2
.BB.LABEL.168_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4087
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4088
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.168_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4100
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF192_DID_0xF192_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4105
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4115
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4116
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.169_2
.BB.LABEL.169_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4118
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4119
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.169_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4131
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF194_DID_0xF194_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4136
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4146
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000016, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4147
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.170_2
.BB.LABEL.170_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4149
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4150
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.170_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4162
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1A0_DID_0xF1A0_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4167
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4177
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000017, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4178
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.171_2
.BB.LABEL.171_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4180
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4181
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.171_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4193
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1A1_DID_0xF1A1_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4198
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4208
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000018, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4209
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.172_2
.BB.LABEL.172_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4211
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4212
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.172_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4224
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1A2_DID_0xF1A2_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4229
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4239
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000019, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4240
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.173_2
.BB.LABEL.173_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4242
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4243
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.173_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4255
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1A5_DID_0xF1A5_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4260
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4270
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x0000001A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4271
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.174_2
.BB.LABEL.174_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4273
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4274
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.174_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4286
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1AA_DID_0xF1AA_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4291
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4307
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1B5_DID_0xF1B5_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4312
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4339
	jmp [r31]
_Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF1B6_DID_0xF1B6_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4344
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4354
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x0000001B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4355
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.177_2
.BB.LABEL.177_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4357
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4358
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.177_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4370
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC001_DID_0xC001_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4375
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4385
	mov #.STR.1, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.178_2
.BB.LABEL.178_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.178_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.178_1
.BB.LABEL.178_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4388
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.178_5
.BB.LABEL.178_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4391
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4392
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.178_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4395
	cmp 0x00000000, r20
	bz9 .BB.LABEL.178_8
.BB.LABEL.178_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.178_13
.BB.LABEL.178_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.178_10
.BB.LABEL.178_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4398
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4399
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.178_11
.BB.LABEL.178_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.178_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4438
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.178_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.178_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4438
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.178_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4412
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4413
	cmp 0x00000000, r10
	bz9 .BB.LABEL.178_7
.BB.LABEL.178_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4417
	cmp 0x00000001, r10
	bz9 .BB.LABEL.178_9
.BB.LABEL.178_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4421
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.178_17
.BB.LABEL.178_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.178_12
.BB.LABEL.178_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4429
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC002_DID_0xC002_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4443
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4459
	jmp [r31]
_Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC003_DID_0xC003_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4464
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4480
	jmp [r31]
_Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC004_DID_0xC004_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4485
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4495
	mov #.STR.12369, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.181_2
.BB.LABEL.181_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.181_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.181_1
.BB.LABEL.181_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4498
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.181_5
.BB.LABEL.181_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4501
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4502
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.181_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4505
	cmp 0x00000000, r20
	bz9 .BB.LABEL.181_8
.BB.LABEL.181_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.181_13
.BB.LABEL.181_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.181_10
.BB.LABEL.181_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4508
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4509
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.181_11
.BB.LABEL.181_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.181_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4548
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.181_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.181_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4548
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.181_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4522
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4523
	cmp 0x00000000, r10
	bz9 .BB.LABEL.181_7
.BB.LABEL.181_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4527
	cmp 0x00000001, r10
	bz9 .BB.LABEL.181_9
.BB.LABEL.181_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4531
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.181_17
.BB.LABEL.181_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.181_12
.BB.LABEL.181_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4539
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC005_DID_0xC005_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4553
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4569
	jmp [r31]
_Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC006_DID_0xC006_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4574
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4590
	jmp [r31]
_Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC007_DID_0xC007_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4595
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4605
	mov #_NvMBlockRamBuffer17, r7
	movea 0x00000011, r0, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.184_2
.BB.LABEL.184_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.184_4
.BB.LABEL.184_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4607
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4608
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.184_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4613
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer17, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.184_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4611
	andi 0x000000FF, r21, r2
	addi 0xFFFFFFE0, r2, r0
	blt9 .BB.LABEL.184_3
.BB.LABEL.184_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4620
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC008_DID_0xC008_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4625
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4641
	jmp [r31]
_Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC009_DID_0xC009_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4646
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4656
	mov #.STR.12443, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.186_2
.BB.LABEL.186_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.186_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.186_1
.BB.LABEL.186_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4659
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.186_5
.BB.LABEL.186_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4662
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4663
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.186_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4666
	cmp 0x00000000, r20
	bz9 .BB.LABEL.186_8
.BB.LABEL.186_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.186_13
.BB.LABEL.186_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.186_10
.BB.LABEL.186_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4669
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4670
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.186_11
.BB.LABEL.186_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.186_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4710
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.186_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.186_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4710
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.186_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4683
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4684
	cmp 0x00000000, r10
	bz9 .BB.LABEL.186_7
.BB.LABEL.186_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4688
	cmp 0x00000001, r10
	bz9 .BB.LABEL.186_9
.BB.LABEL.186_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4692
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.186_17
.BB.LABEL.186_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.186_12
.BB.LABEL.186_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4700
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4715
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4731
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4736
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4752
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4757
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4773
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4778
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4794
	jmp [r31]
_Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC011_DID_0xC011_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4799
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4809
	mov #.STR.12515, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.191_2
.BB.LABEL.191_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.191_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.191_1
.BB.LABEL.191_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4812
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.191_5
.BB.LABEL.191_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4815
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4816
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.191_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4819
	cmp 0x00000000, r20
	bz9 .BB.LABEL.191_8
.BB.LABEL.191_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.191_13
.BB.LABEL.191_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.191_10
.BB.LABEL.191_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4822
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4823
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.191_11
.BB.LABEL.191_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.191_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4862
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.191_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.191_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4862
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.191_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4836
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4837
	cmp 0x00000000, r10
	bz9 .BB.LABEL.191_7
.BB.LABEL.191_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4841
	cmp 0x00000001, r10
	bz9 .BB.LABEL.191_9
.BB.LABEL.191_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4845
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.191_17
.BB.LABEL.191_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.191_12
.BB.LABEL.191_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4853
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC012_DID_0xC012_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4867
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4883
	jmp [r31]
_Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC013_DID_0x0C13_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4888
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4904
	jmp [r31]
_Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC014_DID_0xC014_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4909
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4919
	mov #.STR.12563, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.194_2
.BB.LABEL.194_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.194_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.194_1
.BB.LABEL.194_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4922
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.194_5
.BB.LABEL.194_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4925
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4926
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.194_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4929
	cmp 0x00000000, r20
	bz9 .BB.LABEL.194_8
.BB.LABEL.194_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.194_13
.BB.LABEL.194_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.194_10
.BB.LABEL.194_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4932
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4933
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.194_11
.BB.LABEL.194_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.194_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4972
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.194_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.194_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4972
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.194_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4946
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4947
	cmp 0x00000000, r10
	bz9 .BB.LABEL.194_7
.BB.LABEL.194_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4951
	cmp 0x00000001, r10
	bz9 .BB.LABEL.194_9
.BB.LABEL.194_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4955
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.194_17
.BB.LABEL.194_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.194_12
.BB.LABEL.194_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4963
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC015_DID_0xC015_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4977
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4993
	jmp [r31]
_Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC016_DID_0xC016_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 4998
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5014
	jmp [r31]
_Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC102_DID_0xC102_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5019
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5029
	mov #_NvMBlockRamBuffer30, r7
	movea 0x0000001E, r0, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.197_2
.BB.LABEL.197_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.197_4
.BB.LABEL.197_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5031
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5032
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.197_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5037
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer30, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.197_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5035
	andi 0x000000FF, r21, r2
	cmp 0x00000002, r2
	blt9 .BB.LABEL.197_3
.BB.LABEL.197_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5045
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC106_DID_0xC106_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5050
	prepare 0x00000061, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5060
	mov #_NvMBlockRamBuffer31, r7
	movea 0x0000001F, r0, r6
	jarl _NvM_ReadBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.198_2
.BB.LABEL.198_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.198_4
.BB.LABEL.198_2:	; if_then_bb
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5062
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5063
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.198_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5068
	andi 0x000000FF, r21, r2
	mov r20, r5
	add r2, r5
	mov #_NvMBlockRamBuffer31, r6
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r21
.BB.LABEL.198_4:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5066
	andi 0x000000FF, r21, r2
	cmp 0x00000008, r2
	blt9 .BB.LABEL.198_3
.BB.LABEL.198_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5075
	dispose 0x00000000, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC109_DID_0xC109_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5080
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5096
	jmp [r31]
_Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData:
	.stack _Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5101
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5111
	mov #.STR.12651, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.200_2
.BB.LABEL.200_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.200_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.200_1
.BB.LABEL.200_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5114
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.200_5
.BB.LABEL.200_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5117
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5118
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.200_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5121
	cmp 0x00000000, r20
	bz9 .BB.LABEL.200_8
.BB.LABEL.200_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.200_13
.BB.LABEL.200_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.200_10
.BB.LABEL.200_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5124
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5125
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.200_11
.BB.LABEL.200_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.200_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5163
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.200_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.200_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5163
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.200_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5138
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5139
	cmp 0x00000000, r10
	bz9 .BB.LABEL.200_7
.BB.LABEL.200_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5143
	cmp 0x00000001, r10
	bz9 .BB.LABEL.200_9
.BB.LABEL.200_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5147
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.200_17
.BB.LABEL.200_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.200_12
.BB.LABEL.200_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5155
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData:
	.stack _Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5168
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5178
	mov #.STR.12675, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.201_2
.BB.LABEL.201_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.201_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.201_1
.BB.LABEL.201_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5181
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.201_5
.BB.LABEL.201_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5184
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5185
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.201_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5188
	cmp 0x00000000, r20
	bz9 .BB.LABEL.201_8
.BB.LABEL.201_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.201_13
.BB.LABEL.201_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.201_10
.BB.LABEL.201_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5191
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5192
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.201_11
.BB.LABEL.201_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.201_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5230
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.201_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.201_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5230
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.201_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5205
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5206
	cmp 0x00000000, r10
	bz9 .BB.LABEL.201_7
.BB.LABEL.201_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5210
	cmp 0x00000001, r10
	bz9 .BB.LABEL.201_9
.BB.LABEL.201_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5214
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.201_17
.BB.LABEL.201_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.201_12
.BB.LABEL.201_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5222
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC305_DID_0xC305_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5235
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5245
	mov #.STR.12699, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.202_2
.BB.LABEL.202_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.202_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.202_1
.BB.LABEL.202_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5248
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.202_5
.BB.LABEL.202_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5251
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5252
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.202_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5255
	cmp 0x00000000, r20
	bz9 .BB.LABEL.202_8
.BB.LABEL.202_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.202_13
.BB.LABEL.202_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.202_10
.BB.LABEL.202_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5258
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5259
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.202_11
.BB.LABEL.202_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.202_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5299
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.202_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.202_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5299
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.202_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5272
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5273
	cmp 0x00000000, r10
	bz9 .BB.LABEL.202_7
.BB.LABEL.202_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5277
	cmp 0x00000001, r10
	bz9 .BB.LABEL.202_9
.BB.LABEL.202_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5281
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.202_17
.BB.LABEL.202_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.202_12
.BB.LABEL.202_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5289
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC306_DID_0xC306_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5304
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5320
	jmp [r31]
_Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC307_DID_0xC307_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5325
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5335
	mov #.STR.12735, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.204_2
.BB.LABEL.204_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.204_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.204_1
.BB.LABEL.204_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5338
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.204_5
.BB.LABEL.204_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5341
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5342
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.204_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5345
	cmp 0x00000000, r20
	bz9 .BB.LABEL.204_8
.BB.LABEL.204_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.204_13
.BB.LABEL.204_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.204_10
.BB.LABEL.204_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5348
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5349
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.204_11
.BB.LABEL.204_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.204_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5389
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.204_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.204_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5389
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.204_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5362
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5363
	cmp 0x00000000, r10
	bz9 .BB.LABEL.204_7
.BB.LABEL.204_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5367
	cmp 0x00000001, r10
	bz9 .BB.LABEL.204_9
.BB.LABEL.204_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5371
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.204_17
.BB.LABEL.204_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.204_12
.BB.LABEL.204_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5379
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC308_DID_0xC308_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5394
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5410
	jmp [r31]
_Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC309_DID_0xC309_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5415
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5431
	jmp [r31]
_Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5436
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5446
	mov #.STR.12783, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.207_2
.BB.LABEL.207_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.207_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.207_1
.BB.LABEL.207_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5449
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.207_5
.BB.LABEL.207_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5452
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5453
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.207_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5456
	cmp 0x00000000, r20
	bz9 .BB.LABEL.207_8
.BB.LABEL.207_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.207_13
.BB.LABEL.207_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.207_10
.BB.LABEL.207_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5459
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5460
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.207_11
.BB.LABEL.207_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.207_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5500
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.207_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.207_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5500
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.207_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5473
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5474
	cmp 0x00000000, r10
	bz9 .BB.LABEL.207_7
.BB.LABEL.207_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5478
	cmp 0x00000001, r10
	bz9 .BB.LABEL.207_9
.BB.LABEL.207_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5482
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.207_17
.BB.LABEL.207_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.207_12
.BB.LABEL.207_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5490
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5505
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5515
	mov #.STR.12807, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.208_2
.BB.LABEL.208_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.208_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.208_1
.BB.LABEL.208_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5518
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.208_5
.BB.LABEL.208_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5521
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5522
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.208_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5525
	cmp 0x00000000, r20
	bz9 .BB.LABEL.208_8
.BB.LABEL.208_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.208_13
.BB.LABEL.208_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.208_10
.BB.LABEL.208_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5528
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5529
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.208_11
.BB.LABEL.208_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.208_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5567
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.208_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.208_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5567
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.208_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5542
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5543
	cmp 0x00000000, r10
	bz9 .BB.LABEL.208_7
.BB.LABEL.208_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5547
	cmp 0x00000001, r10
	bz9 .BB.LABEL.208_9
.BB.LABEL.208_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5551
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.208_17
.BB.LABEL.208_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.208_12
.BB.LABEL.208_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5559
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData:
	.stack _Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5572
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5588
	jmp [r31]
_Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData:
	.stack _Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5593
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5603
	mov #.STR.12843, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.210_2
.BB.LABEL.210_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.210_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.210_1
.BB.LABEL.210_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5606
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.210_5
.BB.LABEL.210_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5609
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5610
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.210_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5613
	cmp 0x00000000, r20
	bz9 .BB.LABEL.210_8
.BB.LABEL.210_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.210_13
.BB.LABEL.210_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.210_10
.BB.LABEL.210_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5616
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5617
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.210_11
.BB.LABEL.210_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.210_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5655
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.210_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.210_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5655
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.210_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5630
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5631
	cmp 0x00000000, r10
	bz9 .BB.LABEL.210_7
.BB.LABEL.210_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5635
	cmp 0x00000001, r10
	bz9 .BB.LABEL.210_9
.BB.LABEL.210_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5639
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.210_17
.BB.LABEL.210_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.210_12
.BB.LABEL.210_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5647
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData:
	.stack _Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5660
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5670
	mov #.STR.12867, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.211_2
.BB.LABEL.211_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.211_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.211_1
.BB.LABEL.211_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5673
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.211_5
.BB.LABEL.211_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5676
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5677
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.211_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5680
	cmp 0x00000000, r20
	bz9 .BB.LABEL.211_8
.BB.LABEL.211_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.211_13
.BB.LABEL.211_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.211_10
.BB.LABEL.211_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5683
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5684
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.211_11
.BB.LABEL.211_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.211_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5724
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.211_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.211_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5724
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.211_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5697
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5698
	cmp 0x00000000, r10
	bz9 .BB.LABEL.211_7
.BB.LABEL.211_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5702
	cmp 0x00000001, r10
	bz9 .BB.LABEL.211_9
.BB.LABEL.211_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5706
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.211_17
.BB.LABEL.211_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.211_12
.BB.LABEL.211_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5714
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData:
	.stack _Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5729
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5745
	jmp [r31]
_Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData:
	.stack _Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5750
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5760
	mov #.STR.12903, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.213_2
.BB.LABEL.213_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.213_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.213_1
.BB.LABEL.213_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5763
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.213_5
.BB.LABEL.213_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5766
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5767
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.213_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5770
	cmp 0x00000000, r20
	bz9 .BB.LABEL.213_8
.BB.LABEL.213_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.213_13
.BB.LABEL.213_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.213_10
.BB.LABEL.213_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5773
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5774
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.213_11
.BB.LABEL.213_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.213_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5814
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.213_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.213_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5814
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.213_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5787
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5788
	cmp 0x00000000, r10
	bz9 .BB.LABEL.213_7
.BB.LABEL.213_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5792
	cmp 0x00000001, r10
	bz9 .BB.LABEL.213_9
.BB.LABEL.213_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5796
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.213_17
.BB.LABEL.213_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.213_12
.BB.LABEL.213_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5804
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF021_DID_0xF021_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5819
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5835
	jmp [r31]
_Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF022_DID_0xF022_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5840
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5856
	jmp [r31]
_Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF023_DID_0xF023_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5861
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5877
	jmp [r31]
_Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData:
	.stack _Rte_Call_DataServices_Data_0x0112_DID_0x0112_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5882
	prepare 0x00000041, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5893
	st.w r0, 0x00000000[r3]
	mov r3, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5896
	jarl _PeripheralHalAdGet, r31
	movea 0x00000064, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5898
	ld.w 0x00000000[r3], r5
	divhu r2, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5900
	st.b r5, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5906
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData:
	.stack _Rte_Call_DataServices_Data_0xE101_DID_0xE101_ReadData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5911
	prepare 0x00000061, 0x00000004
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5922
	st.w r0, 0x00000000[r3]
	mov r3, r7
	movea 0x000003C8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5923
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5924
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.218_2
.BB.LABEL.218_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5926
	ld.w 0x00000000[r3], r21
	shr 0x00000010, r21
	st.b r21, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5927
	ld.w 0x00000000[r3], r21
	shr 0x00000008, r21
	st.b r21, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5928
	ld.w 0x00000000[r3], r21
	st.b r21, 0x00000002[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5936
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.218_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5932
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5933
	dispose 0x00000004, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData:
	.stack _Rte_Call_DataServices_Data_0x010B_DID_0x010B_ReadData = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5946
	prepare 0x00000061, 0x0000001C
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5957
	st.b r0, 0x0000001B[r3]
	movea 0x000007EA, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5958
	st.w r2, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5959
	st.b r0, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5960
	st.b r0, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5961
	st.b r0, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5962
	st.b r0, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5963
	st.b r0, 0x0000000F[r3]
	movea 0x0000000F, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5966
	st.w r2, 0x00000008[r3]
	movea 0x00000010, r3, r2
	st.w r2, 0x00000004[r3]
	movea 0x00000011, r3, r2
	st.w r2, 0x00000000[r3]
	movea 0x00000012, r3, r9
	movea 0x00000013, r3, r8
	movea 0x00000014, r3, r7
	movea 0x0000001B, r3, r6
	jarl _TimeSyncSdkGetRealTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5967
	cmp 0x00000000, r10
	bz9 .BB.LABEL.219_2
.BB.LABEL.219_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5969
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5970
	dispose 0x0000001C, 0x00000061, [r31]
.BB.LABEL.219_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5977
	ld.w 0x00000014[r3], r2
	st.b r2, 0x00000000[r20]
	movea 0x00000013, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5978
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000001[r20]
	movea 0x00000012, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5979
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000002[r20]
	movea 0x00000011, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5980
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000003[r20]
	movea 0x00000010, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5981
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000004[r20]
	movea 0x0000000F, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5982
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000005[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5984
	dispose 0x0000001C, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData:
	.stack _Rte_Call_DataServices_Data_0xE010_DID_0xE010_ReadData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 5994
	prepare 0x00000061, 0x00000004
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6007
	st.h r0, 0x00000002[r3]
	movea 0x00000002, r3, r7
	movea 0x000002D1, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6008
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6009
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.220_2
.BB.LABEL.220_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6011
	ld.hu 0x00000002[r3], r21
	shr 0x00000008, r21
	st.b r21, 0x00000000[r20]
	movea 0x00000002, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6012
	ld.b 0x00000000[r21], r21
	st.b r21, 0x00000001[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6020
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.220_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6016
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6017
	dispose 0x00000004, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData:
	.stack _Rte_Call_DataServices_Data_0xD002_DID_0xD002_ReadData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6030
	prepare 0x00000061, 0x00000004
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6042
	st.b r0, 0x00000003[r3]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6043
	st.b r2, 0x00000002[r3]
	movea 0x00000003, r3, r21
	movea 0x000002DE, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6045
	mov r21, r7
	jarl _Com_ReceiveSignal, r31
	movea 0x00000002, r3, r7
	movea 0x000002E3, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6046
	jarl _Com_ReceiveSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6049
	ld.b 0x00000000[r21], r2
	shl 0x00000004, r2
	ld.bu 0x00000002[r3], r5
	andi 0x0000000F, r5, r5
	or r5, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6056
	dispose 0x00000004, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData:
	.stack _Rte_Call_DataServices_Data_0xF186_DID_0xF186_ReadData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6061
	prepare 0x00000061, 0x00000004
	mov r7, r20
	mov r8, r21
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6075
	jarl _Dcm_GetSesCtrlType, r31
	cmp 0x00000000, r10
	mov 0x00000000, r10
	bnz9 .BB.LABEL.222_2
.BB.LABEL.222_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000003, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6077
	ld.b 0x00000000[r21], r21
	st.b r21, 0x00000000[r20]
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.222_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6081
	st.b r2, 0x00000000[r21]
	dispose 0x00000004, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData:
	.stack _Rte_Call_DataServices_Data_0xD001_DID_0xD001_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6094
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6104
	mov #.STR.13084, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.223_2
.BB.LABEL.223_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.223_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.223_1
.BB.LABEL.223_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6107
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.223_5
.BB.LABEL.223_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6110
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6111
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.223_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6114
	cmp 0x00000000, r20
	bz9 .BB.LABEL.223_8
.BB.LABEL.223_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.223_13
.BB.LABEL.223_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.223_10
.BB.LABEL.223_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6117
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6118
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.223_11
.BB.LABEL.223_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.223_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6157
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.223_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.223_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6157
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.223_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6131
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6132
	cmp 0x00000000, r10
	bz9 .BB.LABEL.223_7
.BB.LABEL.223_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6136
	cmp 0x00000001, r10
	bz9 .BB.LABEL.223_9
.BB.LABEL.223_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6140
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.223_17
.BB.LABEL.223_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.223_12
.BB.LABEL.223_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6148
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB9C1_DID_0xB9C1_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6162
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6172
	mov #.STR.13108, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.224_2
.BB.LABEL.224_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.224_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.224_1
.BB.LABEL.224_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6175
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.224_5
.BB.LABEL.224_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6178
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6179
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.224_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6182
	cmp 0x00000000, r20
	bz9 .BB.LABEL.224_8
.BB.LABEL.224_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.224_13
.BB.LABEL.224_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.224_10
.BB.LABEL.224_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6185
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6186
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.224_11
.BB.LABEL.224_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.224_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6225
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.224_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.224_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6225
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.224_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6199
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6200
	cmp 0x00000000, r10
	bz9 .BB.LABEL.224_7
.BB.LABEL.224_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6204
	cmp 0x00000001, r10
	bz9 .BB.LABEL.224_9
.BB.LABEL.224_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6208
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.224_17
.BB.LABEL.224_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.224_12
.BB.LABEL.224_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6216
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB000_DID_0xB000_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6230
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6240
	mov #.STR.13132, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.225_2
.BB.LABEL.225_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.225_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.225_1
.BB.LABEL.225_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6243
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.225_5
.BB.LABEL.225_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6246
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6247
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.225_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6250
	cmp 0x00000000, r20
	bz9 .BB.LABEL.225_8
.BB.LABEL.225_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.225_13
.BB.LABEL.225_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.225_10
.BB.LABEL.225_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6253
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6254
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.225_11
.BB.LABEL.225_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.225_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6292
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.225_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.225_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6292
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.225_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6267
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6268
	cmp 0x00000000, r10
	bz9 .BB.LABEL.225_7
.BB.LABEL.225_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6272
	cmp 0x00000001, r10
	bz9 .BB.LABEL.225_9
.BB.LABEL.225_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6276
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.225_17
.BB.LABEL.225_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.225_12
.BB.LABEL.225_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6284
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB001_DID_0xB001_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6297
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6307
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x0000001C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6308
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.226_2
.BB.LABEL.226_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6310
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6311
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.226_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6323
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB002_DID_0xB002_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6328
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6338
	mov #.STR.13170, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.227_2
.BB.LABEL.227_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.227_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.227_1
.BB.LABEL.227_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6341
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.227_5
.BB.LABEL.227_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6344
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6345
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.227_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6348
	cmp 0x00000000, r20
	bz9 .BB.LABEL.227_8
.BB.LABEL.227_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.227_13
.BB.LABEL.227_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.227_10
.BB.LABEL.227_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6351
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6352
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.227_11
.BB.LABEL.227_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.227_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6390
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.227_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.227_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6390
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.227_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6365
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6366
	cmp 0x00000000, r10
	bz9 .BB.LABEL.227_7
.BB.LABEL.227_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6370
	cmp 0x00000001, r10
	bz9 .BB.LABEL.227_9
.BB.LABEL.227_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6374
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.227_17
.BB.LABEL.227_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.227_12
.BB.LABEL.227_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6382
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB003_DID_0xB003_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6395
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6405
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x0000001E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6406
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.228_2
.BB.LABEL.228_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6408
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6409
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.228_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6421
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB004_DID_0xB004_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6426
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6451
	mov #.STR.13208, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.229_2
.BB.LABEL.229_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.229_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.229_1
.BB.LABEL.229_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6454
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.229_5
.BB.LABEL.229_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6457
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6458
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.229_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6461
	cmp 0x00000000, r20
	bz9 .BB.LABEL.229_8
.BB.LABEL.229_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.229_13
.BB.LABEL.229_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.229_10
.BB.LABEL.229_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6464
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6465
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.229_11
.BB.LABEL.229_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.229_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6504
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.229_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.229_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6504
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.229_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6478
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6479
	cmp 0x00000000, r10
	bz9 .BB.LABEL.229_7
.BB.LABEL.229_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6483
	cmp 0x00000001, r10
	bz9 .BB.LABEL.229_9
.BB.LABEL.229_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6487
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.229_17
.BB.LABEL.229_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.229_12
.BB.LABEL.229_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6495
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB005_DID_0xB005_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6509
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6519
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6520
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.230_2
.BB.LABEL.230_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6522
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6523
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.230_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6535
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB006_DID_0xB006_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6540
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6566
	jmp [r31]
_Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB00C_DID_0xB00C_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6571
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6597
	jmp [r31]
_Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB082_DID_0xB082_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6602
	st.b r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6619
	st.b r0, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6620
	st.b r0, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6621
	st.b r0, 0x00000003[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6628
	jmp [r31]
_Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB083_DID_0xB083_ReadData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6633
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6644
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6650
	st.b r0, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6651
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6652
	st.b r0, 0x00000003[r3]
	mov 0x00000003, r8
	movea 0x00000001, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6654
	mov r7, r6
	mov r2, r7
	jarl _memcpy, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6661
	dispose 0x00000004, 0x00000001, [r31]
_Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB100_DID_0xB100_ReadData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6666
	prepare 0x00000041, 0x00000008
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6677
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6678
	st.w r0, 0x00000000[r3]
	movea 0x00000004, r3, r7
	mov 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6680
	jarl _PeripheralHalAdGet, r31
	mov r3, r7
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6681
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6682
	st.b r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6683
	ld.w 0x00000004[r3], r2
	movea 0xFFFFF7FE, r2, r2
	movea 0x00000191, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.235_2
.BB.LABEL.235_1:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	ld.w 0x00000000[r3], r2
	movea 0xFFFFF7FE, r2, r2
	movea 0x00000190, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.235_3
.BB.LABEL.235_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6686
	st.b r0, 0x00000000[r20]
	br9 .BB.LABEL.235_9
.BB.LABEL.235_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6688
	ld.w 0x00000004[r3], r2
	movea 0xFFFFF7FE, r2, r2
	movea 0x00000191, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.235_5
.BB.LABEL.235_4:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	ld.w 0x00000000[r3], r2
	movea 0xFFFFFF9C, r2, r2
	movea 0x000000C8, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.235_6
.BB.LABEL.235_5:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6691
	set1 0x00000000, 0x00000000[r20]
	br9 .BB.LABEL.235_9
.BB.LABEL.235_6:	; if_else_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6693
	ld.w 0x00000004[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.235_8
.BB.LABEL.235_7:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.235_9
.BB.LABEL.235_8:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6696
	set1 0x00000001, 0x00000000[r20]
.BB.LABEL.235_9:	; if_break_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6703
	ld.b 0x00000000[r20], r2
	ori 0x00000030, r2, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6711
	dispose 0x00000008, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB101_DID_0xB101_ReadData = 124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6716
	prepare 0x00000061, 0x00000070
	mov r7, r20
	mov r8, r21
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6729
	jarl _StateSyncGetLocationInfo, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.236_2
.BB.LABEL.236_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6731
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6732
	dispose 0x00000070, 0x00000061, [r31]
.BB.LABEL.236_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6735
	ld.w 0x00000004[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6736
	ld.w 0x00000004[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6737
	ld.w 0x00000004[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6738
	ld.w 0x00000004[r3], r2
	st.b r2, 0x00000003[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6740
	ld.w 0x00000008[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6741
	ld.w 0x00000008[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000005[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6742
	ld.w 0x00000008[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6743
	ld.w 0x00000008[r3], r2
	st.b r2, 0x00000007[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6745
	dispose 0x00000070, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB102_DID_0xB102_ReadData = 124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6755
	prepare 0x00000061, 0x00000070
	mov r7, r20
	mov r8, r21
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6768
	jarl _StateSyncGetLocationInfo, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.237_2
.BB.LABEL.237_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6770
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6771
	dispose 0x00000070, 0x00000061, [r31]
.BB.LABEL.237_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6775
	ld.w 0x00000028[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6776
	ld.w 0x00000028[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6777
	ld.w 0x00000028[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6778
	ld.w 0x00000028[r3], r2
	st.b r2, 0x00000003[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6781
	ld.hu 0x00000022[r3], r2
	addi 0xFFFFFF02, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6787
	cmov 0x0000000F, 0xFFFFFFFF, r2, r5
	st.b r5, 0x00000004[r20]
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6791
	ld.b 0x0000001E[r5], r5
	mul 0x0000000A, r5, r0
	st.b r5, 0x00000005[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6794
	ld.hu 0x00000020[r3], r5
	mul 0x0000000A, r5, r0
	shr 0x00000001, r5
	st.b r5, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6797
	ld.bu 0x00000025[r3], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.237_4
.BB.LABEL.237_3:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6799
	st.b r0, 0x00000007[r20]
	mov 0x00000000, r10
	dispose 0x00000070, 0x00000061, [r31]
.BB.LABEL.237_4:	; if_else_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6801
	cmp 0x00000004, r5
	blt9 .BB.LABEL.237_6
.BB.LABEL.237_5:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	addi 0xFFFFFF00, r2, r0
	blt9 .BB.LABEL.237_8
.BB.LABEL.237_6:	; if_then_bb112
	mov 0x00000001, r2
.BB.LABEL.237_7:	; if_then_bb112
	st.b r2, 0x00000007[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6815
	dispose 0x00000070, 0x00000061, [r31]
.BB.LABEL.237_8:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6805
	ld.bu 0x00000025[r3], r2
	cmp 0x00000003, r2
	bgt9 .BB.LABEL.237_10
.BB.LABEL.237_9:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	ld.hu 0x00000022[r3], r2
	addi 0xFFFFFF01, r2, r0
	bgt9 .BB.LABEL.237_11
.BB.LABEL.237_10:	; if_then_bb136
	mov 0x00000002, r2
	br9 .BB.LABEL.237_7
.BB.LABEL.237_11:	; bb144
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6815
	dispose 0x00000070, 0x00000061, [r31]
_Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB103_DID_0xB103_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6820
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6830
	mov #.STR.13428, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.238_2
.BB.LABEL.238_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.238_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.238_1
.BB.LABEL.238_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6833
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.238_5
.BB.LABEL.238_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6836
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6837
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.238_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6840
	cmp 0x00000000, r20
	bz9 .BB.LABEL.238_8
.BB.LABEL.238_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.238_13
.BB.LABEL.238_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.238_10
.BB.LABEL.238_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6843
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6844
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.238_11
.BB.LABEL.238_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.238_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6882
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.238_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.238_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6882
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.238_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6857
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6858
	cmp 0x00000000, r10
	bz9 .BB.LABEL.238_7
.BB.LABEL.238_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6862
	cmp 0x00000001, r10
	bz9 .BB.LABEL.238_9
.BB.LABEL.238_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6866
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.238_17
.BB.LABEL.238_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.238_12
.BB.LABEL.238_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6874
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB104_DID_0xB104_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6887
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6903
	jmp [r31]
_Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB105_DID_0xB105_ReadData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6908
	prepare 0x00000041, 0x00000008
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6920
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6921
	st.w r0, 0x00000000[r3]
	movea 0x00000004, r3, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6923
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6924
	ld.w 0x00000004[r3], r2
	movea 0xFFFFFCE0, r2, r5
	movea 0x00000190, r0, r6
	cmp r6, r5
	bh9 .BB.LABEL.240_2
.BB.LABEL.240_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6926
	st.b r0, 0x00000000[r20]
	br9 .BB.LABEL.240_7
.BB.LABEL.240_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000640, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6928
	cmp r5, r2
	bl9 .BB.LABEL.240_4
.BB.LABEL.240_3:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.240_6
.BB.LABEL.240_4:	; if_else_bb30
	movea 0x000000C8, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6932
	cmp r5, r2
	bh9 .BB.LABEL.240_7
.BB.LABEL.240_5:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000002, r2
.BB.LABEL.240_6:	; if_then_bb35
	st.b r2, 0x00000000[r20]
.BB.LABEL.240_7:	; if_break_bb40
	mov r3, r7
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6941
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6942
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.240_9
.BB.LABEL.240_8:	; if_break_bb40.if_break_bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.240_10
.BB.LABEL.240_9:	; if_else_bb49
	movea 0x00000064, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6948
	mov r2, r5
	divhu r6, r5, r0
.BB.LABEL.240_10:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r5, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6951
	ld.bu 0x00000000[r20], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.240_16
.BB.LABEL.240_11:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x000007D0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6953
	cmp r5, r2
	bh9 .BB.LABEL.240_13
.BB.LABEL.240_12:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r2
	br9 .BB.LABEL.240_15
.BB.LABEL.240_13:	; if_else_bb71
	movea 0x00000AF0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6957
	cmp r5, r2
	bl9 .BB.LABEL.240_16
.BB.LABEL.240_14:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000004, r2
.BB.LABEL.240_15:	; if_then_bb76
	st.b r2, 0x00000000[r20]
.BB.LABEL.240_16:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6967
	st.b r0, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6968
	st.b r0, 0x00000003[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6974
	dispose 0x00000008, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB180_DID_0xB180_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6979
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6989
	mov #.STR.13482, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.241_2
.BB.LABEL.241_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.241_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.241_1
.BB.LABEL.241_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6992
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.241_5
.BB.LABEL.241_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6995
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6996
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.241_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 6999
	cmp 0x00000000, r20
	bz9 .BB.LABEL.241_8
.BB.LABEL.241_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.241_13
.BB.LABEL.241_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.241_10
.BB.LABEL.241_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7002
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7003
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.241_11
.BB.LABEL.241_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.241_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7042
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.241_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.241_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7042
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.241_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7016
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7017
	cmp 0x00000000, r10
	bz9 .BB.LABEL.241_7
.BB.LABEL.241_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7021
	cmp 0x00000001, r10
	bz9 .BB.LABEL.241_9
.BB.LABEL.241_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7025
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.241_17
.BB.LABEL.241_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.241_12
.BB.LABEL.241_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7033
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB181_DID_0xB181_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7047
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7057
	mov #.STR.13506, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.242_2
.BB.LABEL.242_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.242_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.242_1
.BB.LABEL.242_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7060
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.242_5
.BB.LABEL.242_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7063
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7064
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.242_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7067
	cmp 0x00000000, r20
	bz9 .BB.LABEL.242_8
.BB.LABEL.242_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.242_13
.BB.LABEL.242_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.242_10
.BB.LABEL.242_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7070
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7071
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.242_11
.BB.LABEL.242_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.242_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7109
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.242_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.242_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7109
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.242_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7084
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7085
	cmp 0x00000000, r10
	bz9 .BB.LABEL.242_7
.BB.LABEL.242_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7089
	cmp 0x00000001, r10
	bz9 .BB.LABEL.242_9
.BB.LABEL.242_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7093
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.242_17
.BB.LABEL.242_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.242_12
.BB.LABEL.242_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7101
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB182_DID_0xB182_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7114
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7124
	mov #.STR.13530, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.243_2
.BB.LABEL.243_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.243_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.243_1
.BB.LABEL.243_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7127
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.243_5
.BB.LABEL.243_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7130
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7131
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.243_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7134
	cmp 0x00000000, r20
	bz9 .BB.LABEL.243_8
.BB.LABEL.243_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.243_13
.BB.LABEL.243_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.243_10
.BB.LABEL.243_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7137
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7138
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.243_11
.BB.LABEL.243_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.243_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7176
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.243_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.243_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7176
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.243_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7151
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7152
	cmp 0x00000000, r10
	bz9 .BB.LABEL.243_7
.BB.LABEL.243_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7156
	cmp 0x00000001, r10
	bz9 .BB.LABEL.243_9
.BB.LABEL.243_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7160
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.243_17
.BB.LABEL.243_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.243_12
.BB.LABEL.243_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7168
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB183_DID_0xB183_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7181
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7191
	mov #.STR.13554, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.244_2
.BB.LABEL.244_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.244_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.244_1
.BB.LABEL.244_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7194
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.244_5
.BB.LABEL.244_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7197
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7198
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.244_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7201
	cmp 0x00000000, r20
	bz9 .BB.LABEL.244_8
.BB.LABEL.244_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.244_13
.BB.LABEL.244_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.244_10
.BB.LABEL.244_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7204
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7205
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.244_11
.BB.LABEL.244_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.244_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7243
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.244_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.244_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7243
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.244_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7218
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7219
	cmp 0x00000000, r10
	bz9 .BB.LABEL.244_7
.BB.LABEL.244_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7223
	cmp 0x00000001, r10
	bz9 .BB.LABEL.244_9
.BB.LABEL.244_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7227
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.244_17
.BB.LABEL.244_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.244_12
.BB.LABEL.244_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7235
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB185_DID_0xB185_ReadData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7248
	prepare 0x00000041, 0x00000008
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7259
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7260
	st.w r0, 0x00000000[r3]
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7263
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7264
	ld.w 0x00000000[r3], r2
	movea 0x000000C9, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.245_5
.BB.LABEL.245_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000640, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7268
	cmp r5, r2
	ld.bu 0x00000006[r3], r2
	bl9 .BB.LABEL.245_3
.BB.LABEL.245_2:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7270
	ori 0x00000001, r2, r2
	br9 .BB.LABEL.245_4
.BB.LABEL.245_3:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7274
	ori 0x00000002, r2, r2
.BB.LABEL.245_4:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r2, 0x00000006[r3]
.BB.LABEL.245_5:	; if_break_bb37
	mov r3, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7278
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7279
	ld.w 0x00000000[r3], r2
	movea 0x000000C9, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.245_10
.BB.LABEL.245_6:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000640, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7283
	cmp r5, r2
	ld.bu 0x00000006[r3], r2
	bl9 .BB.LABEL.245_8
.BB.LABEL.245_7:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7285
	ori 0x00000004, r2, r2
	br9 .BB.LABEL.245_9
.BB.LABEL.245_8:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7289
	ori 0x00000008, r2, r2
.BB.LABEL.245_9:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r2, 0x00000006[r3]
.BB.LABEL.245_10:	; if_break_bb70
	mov r3, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7293
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7294
	ld.w 0x00000000[r3], r2
	movea 0x000000C9, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.245_15
.BB.LABEL.245_11:	; if_else_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000640, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7298
	cmp r5, r2
	ld.bu 0x00000006[r3], r2
	bl9 .BB.LABEL.245_13
.BB.LABEL.245_12:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7300
	ori 0x00000010, r2, r2
	br9 .BB.LABEL.245_14
.BB.LABEL.245_13:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7304
	ori 0x00000020, r2, r2
.BB.LABEL.245_14:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r2, 0x00000006[r3]
.BB.LABEL.245_15:	; if_break_bb103
	mov r3, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7308
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7309
	ld.w 0x00000000[r3], r2
	movea 0x000000C9, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.245_20
.BB.LABEL.245_16:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000640, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7313
	cmp r5, r2
	ld.bu 0x00000006[r3], r2
	bl9 .BB.LABEL.245_18
.BB.LABEL.245_17:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7315
	ori 0x00000040, r2, r2
	br9 .BB.LABEL.245_19
.BB.LABEL.245_18:	; if_else_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7319
	ori 0x00000080, r2, r2
.BB.LABEL.245_19:	; if_else_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r2, 0x00000006[r3]
.BB.LABEL.245_20:	; if_break_bb136
	mov r3, r7
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7323
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7324
	ld.w 0x00000000[r3], r2
	movea 0x000000C9, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.245_25
.BB.LABEL.245_21:	; if_else_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000640, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7328
	cmp r5, r2
	ld.bu 0x00000007[r3], r2
	bl9 .BB.LABEL.245_23
.BB.LABEL.245_22:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7330
	ori 0x00000001, r2, r2
	br9 .BB.LABEL.245_24
.BB.LABEL.245_23:	; if_else_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7334
	ori 0x00000002, r2, r2
.BB.LABEL.245_24:	; if_else_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r2, 0x00000007[r3]
.BB.LABEL.245_25:	; if_break_bb169
	mov r3, r7
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7338
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7339
	ld.w 0x00000000[r3], r2
	movea 0x000000C9, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.245_30
.BB.LABEL.245_26:	; if_else_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000640, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7343
	cmp r5, r2
	ld.bu 0x00000007[r3], r2
	bl9 .BB.LABEL.245_28
.BB.LABEL.245_27:	; if_then_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7345
	ori 0x00000004, r2, r2
	br9 .BB.LABEL.245_29
.BB.LABEL.245_28:	; if_else_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7349
	ori 0x00000008, r2, r2
.BB.LABEL.245_29:	; if_else_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r2, 0x00000007[r3]
.BB.LABEL.245_30:	; if_break_bb202
	movea 0x00000006, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7352
	ld.b 0x00000000[r2], r5
	st.b r5, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7353
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000001[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7359
	dispose 0x00000008, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB186_DID_0xB186_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7364
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7374
	mov #.STR.13599, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.246_2
.BB.LABEL.246_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.246_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.246_1
.BB.LABEL.246_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7377
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.246_5
.BB.LABEL.246_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7380
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7381
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.246_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7384
	cmp 0x00000000, r20
	bz9 .BB.LABEL.246_8
.BB.LABEL.246_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.246_13
.BB.LABEL.246_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.246_10
.BB.LABEL.246_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7387
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7388
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.246_11
.BB.LABEL.246_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.246_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7426
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.246_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.246_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7426
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.246_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7401
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7402
	cmp 0x00000000, r10
	bz9 .BB.LABEL.246_7
.BB.LABEL.246_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7406
	cmp 0x00000001, r10
	bz9 .BB.LABEL.246_9
.BB.LABEL.246_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7410
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.246_17
.BB.LABEL.246_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.246_12
.BB.LABEL.246_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7418
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB187_DID_0xB187_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7431
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7441
	mov #.STR.13623, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.247_2
.BB.LABEL.247_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.247_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.247_1
.BB.LABEL.247_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7444
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.247_5
.BB.LABEL.247_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7447
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7448
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.247_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7451
	cmp 0x00000000, r20
	bz9 .BB.LABEL.247_8
.BB.LABEL.247_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.247_13
.BB.LABEL.247_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.247_10
.BB.LABEL.247_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7454
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7455
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.247_11
.BB.LABEL.247_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.247_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7493
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.247_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.247_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7493
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.247_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7468
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7469
	cmp 0x00000000, r10
	bz9 .BB.LABEL.247_7
.BB.LABEL.247_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7473
	cmp 0x00000001, r10
	bz9 .BB.LABEL.247_9
.BB.LABEL.247_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7477
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.247_17
.BB.LABEL.247_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.247_12
.BB.LABEL.247_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7485
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB200_DID_0xB200_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7498
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7514
	jmp [r31]
_Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB201_DID_0xB201_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7519
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7530
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000021, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7531
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.249_2
.BB.LABEL.249_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7533
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7534
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.249_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7546
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB202_DID_0xB202_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7551
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7561
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000022, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7562
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.250_2
.BB.LABEL.250_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7564
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7565
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.250_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7577
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB210_DID_0xB210_ReadData = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7582
	prepare 0x00000079, 0x00000024
	mov r7, r20
	movea 0x00000002, r3, r21
	movea 0x00000022, r0, r2
	mov 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7591
	add r21, r2
	mov r21, r6
	br9 .BB.LABEL.251_2
.BB.LABEL.251_1:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.251_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.251_1
.BB.LABEL.251_3:	; entry
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7593
	mov #_NvMBlockRamBuffer7, r22
	mov 0x00000007, r6
	mov r22, r7
	jarl _NvM_ReadBlock, r31
	movea 0x00000011, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7595
	mov r21, r6
	mov r22, r7
	mov r23, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7596
	st.b r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7597
	st.b r0, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7598
	mov r21, r6
	mov r23, r7
	jarl _IsFlashDataValid, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.251_5
.BB.LABEL.251_4:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.251_6
.BB.LABEL.251_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7605
	ld.b 0x00000000[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7606
	ori 0x0000000F, r2, r2
.BB.LABEL.251_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	st.b r2, 0x00000000[r20]
	st.b r0, 0x00000001[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7614
	dispose 0x00000024, 0x00000079, [r31]
_Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB211_DID_0xB211_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7619
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7629
	mov #.STR.13705, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.252_2
.BB.LABEL.252_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.252_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.252_1
.BB.LABEL.252_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7632
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.252_5
.BB.LABEL.252_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7635
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7636
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.252_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7639
	cmp 0x00000000, r20
	bz9 .BB.LABEL.252_8
.BB.LABEL.252_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.252_13
.BB.LABEL.252_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.252_10
.BB.LABEL.252_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7642
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7643
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.252_11
.BB.LABEL.252_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.252_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7681
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.252_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.252_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7681
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.252_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7656
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7657
	cmp 0x00000000, r10
	bz9 .BB.LABEL.252_7
.BB.LABEL.252_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7661
	cmp 0x00000001, r10
	bz9 .BB.LABEL.252_9
.BB.LABEL.252_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7665
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.252_17
.BB.LABEL.252_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.252_12
.BB.LABEL.252_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7673
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB230_DID_0xB230_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7686
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7696
	mov #.STR.13729, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.253_2
.BB.LABEL.253_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.253_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.253_1
.BB.LABEL.253_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7699
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.253_5
.BB.LABEL.253_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7702
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7703
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.253_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7706
	cmp 0x00000000, r20
	bz9 .BB.LABEL.253_8
.BB.LABEL.253_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.253_13
.BB.LABEL.253_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.253_10
.BB.LABEL.253_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7709
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7710
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.253_11
.BB.LABEL.253_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.253_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7748
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.253_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.253_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7748
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.253_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7723
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7724
	cmp 0x00000000, r10
	bz9 .BB.LABEL.253_7
.BB.LABEL.253_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7728
	cmp 0x00000001, r10
	bz9 .BB.LABEL.253_9
.BB.LABEL.253_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7732
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.253_17
.BB.LABEL.253_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.253_12
.BB.LABEL.253_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7740
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB302_DID_0xB302_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7753
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7769
	jmp [r31]
_Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB931_DID_0xB931_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7774
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7784
	mov #.STR.13765, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.255_2
.BB.LABEL.255_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.255_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.255_1
.BB.LABEL.255_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7787
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.255_5
.BB.LABEL.255_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7790
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7791
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.255_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7794
	cmp 0x00000000, r20
	bz9 .BB.LABEL.255_8
.BB.LABEL.255_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.255_13
.BB.LABEL.255_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.255_10
.BB.LABEL.255_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7797
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7798
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.255_11
.BB.LABEL.255_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.255_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7836
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.255_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.255_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7836
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.255_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7811
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7812
	cmp 0x00000000, r10
	bz9 .BB.LABEL.255_7
.BB.LABEL.255_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7816
	cmp 0x00000001, r10
	bz9 .BB.LABEL.255_9
.BB.LABEL.255_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7820
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.255_17
.BB.LABEL.255_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.255_12
.BB.LABEL.255_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7828
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData:
	.stack _Rte_Call_DataServices_Data_0xB9E4_DID_0xB9E4_ReadData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7841
	prepare 0x00000041, 0x00000004
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7851
	st.w r0, 0x00000000[r3]
	mov r3, r8
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7852
	jarl _ProjectConfig_GetItemData, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.256_2
.BB.LABEL.256_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7854
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7855
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.256_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7867
	dispose 0x00000004, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData:
	.stack _Rte_Call_DataServices_Data_0xAFF1_DID_0xAFF1_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7872
	st.b r0, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7892
	jmp [r31]
_Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData:
	.stack _Rte_Call_DataServices_Data_0xAFF2_DID_0xAFF2_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7897
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7909
	st.b r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7916
	jmp [r31]
_Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData:
	.stack _Rte_Call_DataServices_Data_0xAFF5_DID_0xAFF5_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7921
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7937
	jmp [r31]
_Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData:
	.stack _Rte_Call_DataServices_Data_0xAFF6_DID_0xAFF6_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7942
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7952
	mov #.STR.13844, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.260_2
.BB.LABEL.260_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.260_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.260_1
.BB.LABEL.260_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7955
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.260_5
.BB.LABEL.260_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7958
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7959
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.260_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7962
	cmp 0x00000000, r20
	bz9 .BB.LABEL.260_8
.BB.LABEL.260_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.260_13
.BB.LABEL.260_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.260_10
.BB.LABEL.260_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7965
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7966
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.260_11
.BB.LABEL.260_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.260_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8005
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.260_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.260_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8005
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.260_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7979
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7980
	cmp 0x00000000, r10
	bz9 .BB.LABEL.260_7
.BB.LABEL.260_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7984
	cmp 0x00000001, r10
	bz9 .BB.LABEL.260_9
.BB.LABEL.260_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7988
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.260_17
.BB.LABEL.260_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.260_12
.BB.LABEL.260_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 7996
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData:
	.stack _Rte_Call_DataServices_Data_0xBE01_DID_0xBE01_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8010
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8020
	mov #.STR.13868, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.261_2
.BB.LABEL.261_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.261_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.261_1
.BB.LABEL.261_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8023
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.261_5
.BB.LABEL.261_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8026
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8027
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.261_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8030
	cmp 0x00000000, r20
	bz9 .BB.LABEL.261_8
.BB.LABEL.261_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.261_13
.BB.LABEL.261_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.261_10
.BB.LABEL.261_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8033
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8034
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.261_11
.BB.LABEL.261_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.261_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8072
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.261_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.261_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8072
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.261_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8047
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8048
	cmp 0x00000000, r10
	bz9 .BB.LABEL.261_7
.BB.LABEL.261_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8052
	cmp 0x00000001, r10
	bz9 .BB.LABEL.261_9
.BB.LABEL.261_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8056
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.261_17
.BB.LABEL.261_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.261_12
.BB.LABEL.261_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8064
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData:
	.stack _Rte_Call_DataServices_Data_0xBE02_DID_0xBE02_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8077
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8093
	jmp [r31]
_Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData:
	.stack _Rte_Call_DataServices_Data_0xBE04_DID_0xBE04_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8098
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8108
	mov #.STR.13904, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.263_2
.BB.LABEL.263_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.263_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.263_1
.BB.LABEL.263_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8111
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.263_5
.BB.LABEL.263_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8114
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8115
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.263_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8118
	cmp 0x00000000, r20
	bz9 .BB.LABEL.263_8
.BB.LABEL.263_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.263_13
.BB.LABEL.263_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.263_10
.BB.LABEL.263_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8121
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8122
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.263_11
.BB.LABEL.263_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.263_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8160
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.263_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.263_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8160
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.263_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8135
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8136
	cmp 0x00000000, r10
	bz9 .BB.LABEL.263_7
.BB.LABEL.263_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8140
	cmp 0x00000001, r10
	bz9 .BB.LABEL.263_9
.BB.LABEL.263_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8144
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.263_17
.BB.LABEL.263_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.263_12
.BB.LABEL.263_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8152
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData:
	.stack _Rte_Call_DataServices_Data_0xBE80_DID_0xBE80_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8165
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8234
	mov #.STR.13928, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.264_2
.BB.LABEL.264_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.264_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.264_1
.BB.LABEL.264_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8237
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.264_5
.BB.LABEL.264_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8240
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8241
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.264_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8244
	cmp 0x00000000, r20
	bz9 .BB.LABEL.264_8
.BB.LABEL.264_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.264_13
.BB.LABEL.264_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.264_10
.BB.LABEL.264_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8247
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8248
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.264_11
.BB.LABEL.264_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.264_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8286
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.264_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.264_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8286
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.264_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8261
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8262
	cmp 0x00000000, r10
	bz9 .BB.LABEL.264_7
.BB.LABEL.264_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8266
	cmp 0x00000001, r10
	bz9 .BB.LABEL.264_9
.BB.LABEL.264_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8270
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.264_17
.BB.LABEL.264_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.264_12
.BB.LABEL.264_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8278
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData:
	.stack _Rte_Call_DataServices_Data_0xBE05_DID_0xBE05_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8291
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8301
	mov #.STR.13952, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.265_2
.BB.LABEL.265_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.265_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.265_1
.BB.LABEL.265_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8304
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.265_5
.BB.LABEL.265_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8307
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8308
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.265_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8311
	cmp 0x00000000, r20
	bz9 .BB.LABEL.265_8
.BB.LABEL.265_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.265_13
.BB.LABEL.265_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.265_10
.BB.LABEL.265_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8314
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8315
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.265_11
.BB.LABEL.265_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.265_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8353
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.265_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.265_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8353
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.265_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8328
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8329
	cmp 0x00000000, r10
	bz9 .BB.LABEL.265_7
.BB.LABEL.265_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8333
	cmp 0x00000001, r10
	bz9 .BB.LABEL.265_9
.BB.LABEL.265_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8337
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.265_17
.BB.LABEL.265_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.265_12
.BB.LABEL.265_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8345
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData:
	.stack _Rte_Call_DataServices_Data_0xBE06_DID_0xBE06_ReadData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8358
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8368
	mov #.STR.13976, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.266_2
.BB.LABEL.266_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.266_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.266_1
.BB.LABEL.266_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8371
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	cmp 0x00000000, r10
	mov r21, r8
	bz9 .BB.LABEL.266_5
.BB.LABEL.266_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8374
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8375
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.266_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8378
	cmp 0x00000000, r20
	bz9 .BB.LABEL.266_8
.BB.LABEL.266_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.266_13
.BB.LABEL.266_7:	; if_break_bb.bb64_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.266_10
.BB.LABEL.266_8:	; switch_clause_bb
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8381
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8382
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.266_11
.BB.LABEL.266_9:	; switch_clause_bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.266_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8420
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.266_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.266_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8420
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.266_13:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000003, r7
	movea 0x00000001, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8395
	jarl _CanPassthroughRead_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8396
	cmp 0x00000000, r10
	bz9 .BB.LABEL.266_7
.BB.LABEL.266_14:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8400
	cmp 0x00000001, r10
	bz9 .BB.LABEL.266_9
.BB.LABEL.266_15:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8404
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.266_17
.BB.LABEL.266_16:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.266_12
.BB.LABEL.266_17:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8412
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData:
	.stack _Rte_Call_DataServices_Data_0xBE0A_DID_0xBE0A_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8425
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8441
	jmp [r31]
_Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData:
	.stack _Rte_Call_DataServices_Data_0xD004_DID_0xD004_ReadData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8446
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8462
	jmp [r31]
_Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData:
	.stack _Rte_Call_DataServices_Data_0x0100_DID_0x0100_ReadData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8467
	prepare 0x00000041, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8472
	mov #_NvMBlockRamBuffer53, r7
	movea 0x00000035, r0, r6
	jarl _NvM_ReadBlock, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.269_2
.BB.LABEL.269_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8476
	andi 0x000000FF, r2, r5
	mov r20, r6
	add r5, r6
	mov #_NvMBlockRamBuffer53, r7
	add r7, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.269_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8474
	andi 0x000000FF, r2, r5
	cmp 0x0000000F, r5
	ble9 .BB.LABEL.269_1
.BB.LABEL.269_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8488
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF130_DID_0xF130_WriteData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8494
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8503
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8505
	cmp 0x00000001, r8
	mov r9, r20
	mov r6, r21
	bz9 .BB.LABEL.270_3
.BB.LABEL.270_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.270_19
.BB.LABEL.270_2:	; switch_clause_bb
	mov 0x0000000A, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8509
	mov #_NvMBlockRamBuffer10, r7
	mov r20, r6
	jarl _NvM_ReadBlock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8510
	mov r20, r10
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.270_3:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov r3, r7
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8514
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8515
	ld.w 0x00000000[r3], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.270_5
.BB.LABEL.270_4:	; switch_clause_bb12.bb79_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
	br9 .BB.LABEL.270_16
.BB.LABEL.270_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8519
	cmp 0x00000001, r2
	bz9 .BB.LABEL.270_7
.BB.LABEL.270_6:	; if_else_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.270_10
.BB.LABEL.270_7:	; if_then_bb22
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8521
	st.b r2, 0x00000000[r20]
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8522
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.270_8:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8527
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer10, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.270_19
.BB.LABEL.270_9:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	add 0x00000001, r2
.BB.LABEL.270_10:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8525
	andi 0x000000FF, r2, r5
	addi 0xFFFFFFE0, r5, r0
	blt9 .BB.LABEL.270_8
.BB.LABEL.270_11:	; bb41.bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.270_13
.BB.LABEL.270_12:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8537
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer10, r6
	add r5, r6
	add r21, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.270_13:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8535
	andi 0x000000FF, r2, r5
	addi 0xFFFFFFE0, r5, r0
	blt9 .BB.LABEL.270_12
.BB.LABEL.270_14:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8539
	mov #_NvMBlockRamBuffer10, r7
	mov 0x0000000A, r6
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.270_17
.BB.LABEL.270_15:	; bb65.bb79_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
.BB.LABEL.270_16:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8555
	zxb r10
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.270_17:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
.BB.LABEL.270_18:	; if_then_bb71
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8555
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.270_19:	; switch_clause_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	br9 .BB.LABEL.270_18
_Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF18B_DID_0xF18B_WriteData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8560
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8569
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8571
	cmp 0x00000001, r8
	mov r9, r20
	mov r6, r21
	bz9 .BB.LABEL.271_3
.BB.LABEL.271_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.271_19
.BB.LABEL.271_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8575
	mov #_NvMBlockRamBuffer5, r7
	mov 0x00000005, r6
	jarl _NvM_ReadBlock, r31
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8576
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.271_3:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov r3, r7
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8580
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8581
	ld.w 0x00000000[r3], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.271_5
.BB.LABEL.271_4:	; switch_clause_bb12.bb79_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
	br9 .BB.LABEL.271_16
.BB.LABEL.271_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8585
	cmp 0x00000001, r2
	bz9 .BB.LABEL.271_7
.BB.LABEL.271_6:	; if_else_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.271_10
.BB.LABEL.271_7:	; if_then_bb22
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8587
	st.b r2, 0x00000000[r20]
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8588
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.271_8:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8593
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer5, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.271_19
.BB.LABEL.271_9:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	add 0x00000001, r2
.BB.LABEL.271_10:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8591
	andi 0x000000FF, r2, r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.271_8
.BB.LABEL.271_11:	; bb41.bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.271_13
.BB.LABEL.271_12:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8603
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer5, r6
	add r5, r6
	add r21, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.271_13:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8601
	andi 0x000000FF, r2, r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.271_12
.BB.LABEL.271_14:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8605
	mov #_NvMBlockRamBuffer5, r7
	mov 0x00000005, r6
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.271_17
.BB.LABEL.271_15:	; bb65.bb79_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
.BB.LABEL.271_16:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8623
	zxb r10
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.271_17:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
.BB.LABEL.271_18:	; if_then_bb71
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8623
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.271_19:	; switch_clause_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
	br9 .BB.LABEL.271_18
_Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF18C_DID_0xF18C_WriteData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8628
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r9, r20
	br9 .BB.LABEL.272_2
.BB.LABEL.272_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8640
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.272_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8638
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer6, r7
	cmp 0x0000000F, r5
	ble9 .BB.LABEL.272_1
.BB.LABEL.272_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8642
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.272_5
.BB.LABEL.272_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8644
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8645
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.272_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8648
	mov #_NvMBlockRamBuffer6, r7
	mov 0x00000003, r6
	jarl _ParameterSyncSdkSetToCpu, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8650
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF190_DID_0xF190_WriteData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8660
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r9, r20
	br9 .BB.LABEL.273_2
.BB.LABEL.273_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8672
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.273_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8670
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer7, r7
	add 0xFFFFFFF0, r5
	ble9 .BB.LABEL.273_1
.BB.LABEL.273_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8675
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.273_5
.BB.LABEL.273_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8677
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8678
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.273_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000011, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8681
	mov #_NvMBlockRamBuffer7, r7
	mov 0x00000003, r6
	jarl _ParameterSyncSdkSetToCpu, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8683
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF198_DID_0xF198_WriteData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8693
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r9, r20
	br9 .BB.LABEL.274_2
.BB.LABEL.274_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8705
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.274_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8703
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer8, r7
	cmp 0x0000000B, r5
	blt9 .BB.LABEL.274_1
.BB.LABEL.274_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8708
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.274_5
.BB.LABEL.274_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8710
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8711
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.274_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8719
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF1A8_DID_0xF1A8_WriteData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8724
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r9, r20
	br9 .BB.LABEL.275_2
.BB.LABEL.275_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8736
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.275_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8734
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer9, r7
	addi 0xFFFFFFEC, r5, r0
	blt9 .BB.LABEL.275_1
.BB.LABEL.275_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8739
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.275_5
.BB.LABEL.275_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8741
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8742
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.275_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8750
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF1A9_DID_0xF1A9_WriteData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8755
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r9, r20
	br9 .BB.LABEL.276_2
.BB.LABEL.276_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8767
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.276_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8765
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer2, r7
	cmp 0x00000005, r5
	blt9 .BB.LABEL.276_1
.BB.LABEL.276_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8770
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.276_5
.BB.LABEL.276_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8772
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8773
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.276_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8781
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF111_DID_0xF111_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8786
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8803
	jmp [r31]
_Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF131_DID_0xF131_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8808
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8825
	jmp [r31]
_Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC001_DID_0xC001_WriteData = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8830
	prepare 0x00000071, 0x00000044
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	movea 0x00000043, r0, r5
	mov 0x00000000, r6
	movea 0x00000001, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8840
	add r7, r5
	br9 .BB.LABEL.279_2
.BB.LABEL.279_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.279_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.279_1
.BB.LABEL.279_3:	; entry
	st.b r0, 0x00000001[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8843
	st.b r5, 0x00000001[r3]
	movea 0xFFFFFFC0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8844
	st.b r5, 0x00000002[r3]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8845
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8846
	movea 0x00000004, r3, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8848
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8841
	addi 0x00000003, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8848
	cmp 0x00000000, r10
	bz9 .BB.LABEL.279_5
.BB.LABEL.279_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8851
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8852
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.279_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8855
	cmp 0x00000000, r21
	bz9 .BB.LABEL.279_8
.BB.LABEL.279_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.279_13
.BB.LABEL.279_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.279_10
.BB.LABEL.279_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8858
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8859
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.279_11
.BB.LABEL.279_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.279_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8896
	zxb r10
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.279_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.279_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8896
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.279_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8871
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8872
	cmp 0x00000000, r10
	bz9 .BB.LABEL.279_7
.BB.LABEL.279_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8876
	cmp 0x00000001, r10
	bz9 .BB.LABEL.279_9
.BB.LABEL.279_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8880
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.279_17
.BB.LABEL.279_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.279_12
.BB.LABEL.279_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8888
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000044, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC002_DID_0xC002_WriteData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8901
	prepare 0x00000071, 0x00000000
	mov 0x00000000, r20
	mov r6, r21
	br9 .BB.LABEL.280_9
.BB.LABEL.280_1:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8922
	andi 0x000000FF, r20, r2
	shl 0x00000003, r2
	andi 0x000000FF, r22, r5
	add r5, r2
	shl 0x00000002, r2
	mov #_DIDs_DTC_Configuation, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.280_6
.BB.LABEL.280_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8924
	andi 0x000000FF, r22, r2
	andi 0x000000FF, r20, r5
	mov r5, r6
	shl 0x00000003, r6
	add r2, r6
	shl 0x00000002, r6
	mov #_DIDs_DTC_Configuation, r7
	add r6, r7
	mov 0x00000001, r6
	shl r2, r6
	add r21, r5
	ld.bu 0x00000000[r5], r2
	tst r6, r2
	ld.w 0x00000000[r7], r6
	mov 0x00000001, r7
	bnz9 .BB.LABEL.280_4
.BB.LABEL.280_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8926
	mov r7, r8
	br9 .BB.LABEL.280_5
.BB.LABEL.280_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r8
.BB.LABEL.280_5:	; if_else_bb
	jarl _Dem_SetDTCSuppression, r31
.BB.LABEL.280_6:	; if_break_bb53
	add 0x00000001, r22
.BB.LABEL.280_7:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8920
	andi 0x000000FF, r22, r2
	cmp 0x00000008, r2
	blt9 .BB.LABEL.280_1
.BB.LABEL.280_8:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	add 0x00000001, r20
.BB.LABEL.280_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8918
	andi 0x000000FF, r20, r22
	cmp 0x0000000F, r22
	bgt9 .BB.LABEL.280_11
.BB.LABEL.280_10:	; bb65.bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.280_7
.BB.LABEL.280_11:	; bb71
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8942
	dispose 0x00000000, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC003_DID_0xC003_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8947
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8964
	jmp [r31]
_Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC004_DID_0xC004_WriteData = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8969
	prepare 0x00000071, 0x00000044
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	movea 0x00000043, r0, r5
	mov 0x00000000, r6
	movea 0x00000001, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8979
	add r7, r5
	br9 .BB.LABEL.282_2
.BB.LABEL.282_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.282_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.282_1
.BB.LABEL.282_3:	; entry
	st.b r0, 0x00000001[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8982
	st.b r5, 0x00000001[r3]
	movea 0xFFFFFFC0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8983
	st.b r5, 0x00000002[r3]
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8984
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8985
	movea 0x00000004, r3, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8987
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8980
	addi 0x00000003, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8987
	cmp 0x00000000, r10
	bz9 .BB.LABEL.282_5
.BB.LABEL.282_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8990
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8991
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.282_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8994
	cmp 0x00000000, r21
	bz9 .BB.LABEL.282_8
.BB.LABEL.282_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.282_13
.BB.LABEL.282_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.282_10
.BB.LABEL.282_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8997
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 8998
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.282_11
.BB.LABEL.282_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.282_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9035
	zxb r10
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.282_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.282_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9035
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.282_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9010
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9011
	cmp 0x00000000, r10
	bz9 .BB.LABEL.282_7
.BB.LABEL.282_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9015
	cmp 0x00000001, r10
	bz9 .BB.LABEL.282_9
.BB.LABEL.282_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9019
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.282_17
.BB.LABEL.282_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.282_12
.BB.LABEL.282_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9027
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000044, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC005_DID_0xC005_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9040
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9057
	jmp [r31]
_Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC006_DID_0xC006_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9062
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9079
	jmp [r31]
_Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC007_DID_0xC007_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9084
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9101
	jmp [r31]
_Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC008_DID_0xC008_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9106
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9123
	jmp [r31]
_Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC009_DID_0xC009_WriteData = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9128
	prepare 0x00000071, 0x0000000C
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000009, r5
	mov 0x00000000, r6
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9138
	mov r5, r8
	add r7, r8
	br9 .BB.LABEL.287_2
.BB.LABEL.287_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.287_2:	; entry
	cmp r7, r8
	bnz9 .BB.LABEL.287_1
.BB.LABEL.287_3:	; entry
	st.b r0, 0x00000003[r3]
	movea 0x0000002E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9141
	st.b r6, 0x00000003[r3]
	movea 0xFFFFFFC0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9142
	st.b r6, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9143
	st.b r5, 0x00000005[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9144
	movea 0x00000006, r3, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9146
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9139
	addi 0x00000003, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9146
	cmp 0x00000000, r10
	bz9 .BB.LABEL.287_5
.BB.LABEL.287_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9149
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9150
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.287_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9153
	cmp 0x00000000, r21
	bz9 .BB.LABEL.287_8
.BB.LABEL.287_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.287_13
.BB.LABEL.287_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.287_10
.BB.LABEL.287_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9156
	zxh r7
	movea 0x00000003, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9157
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.287_11
.BB.LABEL.287_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.287_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9194
	zxb r10
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.287_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.287_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9194
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.287_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9169
	zxh r7
	movea 0x00000003, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9170
	cmp 0x00000000, r10
	bz9 .BB.LABEL.287_7
.BB.LABEL.287_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9174
	cmp 0x00000001, r10
	bz9 .BB.LABEL.287_9
.BB.LABEL.287_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9178
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.287_17
.BB.LABEL.287_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.287_12
.BB.LABEL.287_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9186
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x0000000C, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC00A_DID_0xC00A_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9199
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9216
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC00B_DID_0xC00B_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9221
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9238
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC00C_DID_0xC00C_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9243
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9260
	jmp [r31]
_Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC00D_DID_0xC00D_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9265
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9282
	jmp [r31]
_Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC011_DID_0xC011_WriteData = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9287
	prepare 0x00000071, 0x00000044
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	movea 0x00000043, r0, r5
	mov 0x00000000, r6
	movea 0x00000001, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9297
	add r7, r5
	br9 .BB.LABEL.292_2
.BB.LABEL.292_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.292_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.292_1
.BB.LABEL.292_3:	; entry
	st.b r0, 0x00000001[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9300
	st.b r5, 0x00000001[r3]
	movea 0xFFFFFFC0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9301
	st.b r5, 0x00000002[r3]
	movea 0x00000011, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9302
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9303
	movea 0x00000004, r3, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9305
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9298
	addi 0x00000003, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9305
	cmp 0x00000000, r10
	bz9 .BB.LABEL.292_5
.BB.LABEL.292_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9308
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9309
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.292_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9312
	cmp 0x00000000, r21
	bz9 .BB.LABEL.292_8
.BB.LABEL.292_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.292_13
.BB.LABEL.292_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.292_10
.BB.LABEL.292_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9315
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9316
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.292_11
.BB.LABEL.292_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.292_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9353
	zxb r10
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.292_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.292_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9353
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.292_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9328
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9329
	cmp 0x00000000, r10
	bz9 .BB.LABEL.292_7
.BB.LABEL.292_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9333
	cmp 0x00000001, r10
	bz9 .BB.LABEL.292_9
.BB.LABEL.292_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9337
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.292_17
.BB.LABEL.292_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.292_12
.BB.LABEL.292_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9345
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000044, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC012_DID_0xC012_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9358
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9375
	jmp [r31]
_Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC013_DID_0x0C13_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9380
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9397
	jmp [r31]
_Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC014_DID_0xC014_WriteData = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9402
	prepare 0x00000071, 0x00000044
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	movea 0x00000043, r0, r5
	mov 0x00000000, r6
	movea 0x00000001, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9412
	add r7, r5
	br9 .BB.LABEL.295_2
.BB.LABEL.295_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.295_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.295_1
.BB.LABEL.295_3:	; entry
	st.b r0, 0x00000001[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9415
	st.b r5, 0x00000001[r3]
	movea 0xFFFFFFC0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9416
	st.b r5, 0x00000002[r3]
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9417
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9418
	movea 0x00000004, r3, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9420
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9413
	addi 0x00000003, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9420
	cmp 0x00000000, r10
	bz9 .BB.LABEL.295_5
.BB.LABEL.295_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9423
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9424
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.295_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9427
	cmp 0x00000000, r21
	bz9 .BB.LABEL.295_8
.BB.LABEL.295_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.295_13
.BB.LABEL.295_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.295_10
.BB.LABEL.295_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9430
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9431
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.295_11
.BB.LABEL.295_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.295_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9467
	zxb r10
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.295_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.295_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9467
	dispose 0x00000044, 0x00000071, [r31]
.BB.LABEL.295_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9443
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9444
	cmp 0x00000000, r10
	bz9 .BB.LABEL.295_7
.BB.LABEL.295_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9448
	cmp 0x00000001, r10
	bz9 .BB.LABEL.295_9
.BB.LABEL.295_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9452
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.295_17
.BB.LABEL.295_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.295_12
.BB.LABEL.295_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9460
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000044, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC015_DID_0xC015_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9472
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9489
	jmp [r31]
_Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC016_DID_0xC016_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9494
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9511
	jmp [r31]
_Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC102_DID_0xC102_WriteData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9516
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r9, r20
	br9 .BB.LABEL.298_2
.BB.LABEL.298_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9528
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.298_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9526
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer30, r7
	cmp 0x00000002, r5
	blt9 .BB.LABEL.298_1
.BB.LABEL.298_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x0000001E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9531
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.298_5
.BB.LABEL.298_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9533
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9534
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.298_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9541
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC106_DID_0xC106_WriteData = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9546
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	mov r9, r20
	br9 .BB.LABEL.299_2
.BB.LABEL.299_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9558
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.299_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9556
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer31, r7
	cmp 0x00000008, r5
	blt9 .BB.LABEL.299_1
.BB.LABEL.299_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x0000001F, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9561
	jarl _NvM_WriteBlock, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.299_5
.BB.LABEL.299_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000072, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9563
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9564
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.299_5:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9571
	dispose 0x00000000, 0x00000041, [r31]
_Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC109_DID_0xC109_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9576
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9593
	jmp [r31]
_Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData:
	.stack _Rte_Call_DataServices_Data_0xCA02_DID_0xCA02_WriteData = 64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9598
	prepare 0x00000479, 0x00000028
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000028, r0, r2
	mov 0x00000000, r5
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9608
	add r6, r2
	br9 .BB.LABEL.301_2
.BB.LABEL.301_1:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.301_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.301_1
.BB.LABEL.301_3:	; entry
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9611
	mov #_NvMBlockRamBuffer33, r24
	mov r24, r6
	mov r20, r7
	mov r21, r8
	jarl _memcpy, r31
	movea 0x00000021, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9612
	mov r24, r7
	jarl _NvM_WriteBlock, r31
	movea 0x0000002E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9614
	st.b r2, 0x00000000[r3]
	movea 0xFFFFFFCA, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9615
	st.b r2, 0x00000001[r3]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9616
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9617
	movea 0x00000003, r3, r6
	mov r20, r7
	mov r21, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9619
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9609
	addi 0x00000003, r21, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9619
	cmp 0x00000000, r10
	bz9 .BB.LABEL.301_5
.BB.LABEL.301_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9622
	st.b r22, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9623
	dispose 0x00000028, 0x00000479, [r31]
.BB.LABEL.301_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9626
	cmp 0x00000000, r22
	bz9 .BB.LABEL.301_8
.BB.LABEL.301_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r22
	bz9 .BB.LABEL.301_13
.BB.LABEL.301_7:	; if_break_bb.bb86_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.301_10
.BB.LABEL.301_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9629
	zxh r7
	mov r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9630
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.301_11
.BB.LABEL.301_9:	; switch_clause_bb.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.301_10:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9667
	zxb r10
	dispose 0x00000028, 0x00000479, [r31]
.BB.LABEL.301_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.301_12:	; if_else_bb
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9667
	dispose 0x00000028, 0x00000479, [r31]
.BB.LABEL.301_13:	; switch_clause_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9642
	zxh r7
	mov r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9643
	cmp 0x00000000, r10
	bz9 .BB.LABEL.301_7
.BB.LABEL.301_14:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9647
	cmp 0x00000001, r10
	bz9 .BB.LABEL.301_9
.BB.LABEL.301_15:	; if_else_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9651
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.301_17
.BB.LABEL.301_16:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.301_12
.BB.LABEL.301_17:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9659
	st.b r10, 0x00000000[r23]
	mov 0x00000001, r10
	dispose 0x00000028, 0x00000479, [r31]
_Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData:
	.stack _Rte_Call_DataServices_Data_0xCA21_DID_0xCA21_WriteData = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9672
	prepare 0x00000071, 0x0000000C
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x0000000A, r5
	mov 0x00000000, r6
	movea 0x00000002, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9682
	add r7, r5
	br9 .BB.LABEL.302_2
.BB.LABEL.302_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.302_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.302_1
.BB.LABEL.302_3:	; entry
	st.b r0, 0x00000002[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9685
	st.b r5, 0x00000002[r3]
	movea 0xFFFFFFCA, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9686
	st.b r5, 0x00000003[r3]
	movea 0x00000021, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9687
	st.b r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9688
	movea 0x00000005, r3, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9690
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9683
	addi 0x00000003, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9690
	cmp 0x00000000, r10
	bz9 .BB.LABEL.302_5
.BB.LABEL.302_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9693
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9694
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.302_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9697
	cmp 0x00000000, r21
	bz9 .BB.LABEL.302_8
.BB.LABEL.302_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.302_13
.BB.LABEL.302_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.302_10
.BB.LABEL.302_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9700
	zxh r7
	movea 0x00000002, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9701
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.302_11
.BB.LABEL.302_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.302_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9738
	zxb r10
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.302_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.302_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9738
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.302_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9713
	zxh r7
	movea 0x00000002, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9714
	cmp 0x00000000, r10
	bz9 .BB.LABEL.302_7
.BB.LABEL.302_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9718
	cmp 0x00000001, r10
	bz9 .BB.LABEL.302_9
.BB.LABEL.302_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9722
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.302_17
.BB.LABEL.302_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.302_12
.BB.LABEL.302_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9730
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x0000000C, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC305_DID_0xC305_WriteData = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9743
	prepare 0x00000071, 0x00000008
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9753
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000003[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9756
	st.b r5, 0x00000003[r3]
	movea 0xFFFFFFC3, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9757
	st.b r5, 0x00000004[r3]
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9758
	st.b r5, 0x00000005[r3]
	movea 0x00000006, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9759
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9761
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9754
	add 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9761
	cmp 0x00000000, r10
	bz9 .BB.LABEL.303_3
.BB.LABEL.303_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
.BB.LABEL.303_2:	; if_then_bb
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9809
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.303_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9768
	cmp 0x00000000, r21
	bz9 .BB.LABEL.303_6
.BB.LABEL.303_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.303_10
.BB.LABEL.303_5:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.303_8
.BB.LABEL.303_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9771
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9772
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.303_9
.BB.LABEL.303_7:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.303_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9809
	zxb r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.303_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	br9 .BB.LABEL.303_2
.BB.LABEL.303_10:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9784
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9785
	cmp 0x00000000, r10
	bz9 .BB.LABEL.303_5
.BB.LABEL.303_11:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9789
	cmp 0x00000001, r10
	bz9 .BB.LABEL.303_7
.BB.LABEL.303_12:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9793
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.303_14
.BB.LABEL.303_13:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9796
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.303_14:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9801
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC306_DID_0xC306_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9814
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9831
	jmp [r31]
_Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC307_DID_0xC307_WriteData = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9836
	prepare 0x00000071, 0x00000008
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9846
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000003[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9849
	st.b r5, 0x00000003[r3]
	movea 0xFFFFFFC3, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9850
	st.b r5, 0x00000004[r3]
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9851
	st.b r5, 0x00000005[r3]
	movea 0x00000006, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9852
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9854
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9847
	add 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9854
	cmp 0x00000000, r10
	bz9 .BB.LABEL.305_3
.BB.LABEL.305_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
.BB.LABEL.305_2:	; if_then_bb
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9902
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.305_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9861
	cmp 0x00000000, r21
	bz9 .BB.LABEL.305_6
.BB.LABEL.305_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.305_10
.BB.LABEL.305_5:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.305_8
.BB.LABEL.305_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9864
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9865
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.305_9
.BB.LABEL.305_7:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.305_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9902
	zxb r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.305_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	br9 .BB.LABEL.305_2
.BB.LABEL.305_10:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9877
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9878
	cmp 0x00000000, r10
	bz9 .BB.LABEL.305_5
.BB.LABEL.305_11:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9882
	cmp 0x00000001, r10
	bz9 .BB.LABEL.305_7
.BB.LABEL.305_12:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9886
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.305_14
.BB.LABEL.305_13:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9889
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.305_14:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9894
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC308_DID_0xC308_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9907
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9924
	jmp [r31]
_Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC309_DID_0xC309_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9929
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9946
	jmp [r31]
_Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC30A_DID_0xC30A_WriteData = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9951
	prepare 0x00000071, 0x00000008
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9961
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000003[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9964
	st.b r5, 0x00000003[r3]
	movea 0xFFFFFFC3, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9965
	st.b r5, 0x00000004[r3]
	mov 0x0000000A, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9966
	st.b r5, 0x00000005[r3]
	movea 0x00000006, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9967
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9969
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9962
	add 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9969
	cmp 0x00000000, r10
	bz9 .BB.LABEL.308_3
.BB.LABEL.308_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
.BB.LABEL.308_2:	; if_then_bb
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10017
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.308_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9976
	cmp 0x00000000, r21
	bz9 .BB.LABEL.308_6
.BB.LABEL.308_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.308_10
.BB.LABEL.308_5:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.308_8
.BB.LABEL.308_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9979
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9980
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.308_9
.BB.LABEL.308_7:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.308_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10017
	zxb r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.308_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	br9 .BB.LABEL.308_2
.BB.LABEL.308_10:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9992
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9993
	cmp 0x00000000, r10
	bz9 .BB.LABEL.308_5
.BB.LABEL.308_11:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 9997
	cmp 0x00000001, r10
	bz9 .BB.LABEL.308_7
.BB.LABEL.308_12:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10001
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.308_14
.BB.LABEL.308_13:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10004
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.308_14:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10009
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC30C_DID_0xC30C_WriteData = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10022
	prepare 0x00000071, 0x0000000C
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x0000000B, r5
	mov 0x00000000, r6
	movea 0x00000001, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10032
	add r7, r5
	br9 .BB.LABEL.309_2
.BB.LABEL.309_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.309_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.309_1
.BB.LABEL.309_3:	; entry
	st.b r0, 0x00000001[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10035
	st.b r5, 0x00000001[r3]
	movea 0xFFFFFFC3, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10036
	st.b r5, 0x00000002[r3]
	mov 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10037
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10038
	movea 0x00000004, r3, r6
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10040
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10033
	addi 0x00000003, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10040
	cmp 0x00000000, r10
	bz9 .BB.LABEL.309_5
.BB.LABEL.309_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10043
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10044
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.309_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10047
	cmp 0x00000000, r21
	bz9 .BB.LABEL.309_8
.BB.LABEL.309_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.309_13
.BB.LABEL.309_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.309_10
.BB.LABEL.309_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10050
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10051
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.309_11
.BB.LABEL.309_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.309_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10088
	zxb r10
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.309_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.309_12:	; if_else_bb
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10088
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.309_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10063
	zxh r7
	movea 0x00000001, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10064
	cmp 0x00000000, r10
	bz9 .BB.LABEL.309_7
.BB.LABEL.309_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10068
	cmp 0x00000001, r10
	bz9 .BB.LABEL.309_9
.BB.LABEL.309_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10072
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.309_17
.BB.LABEL.309_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.309_12
.BB.LABEL.309_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10080
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x0000000C, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData:
	.stack _Rte_Call_DataServices_Data_0xCE01_DID_0xCE01_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10093
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10110
	jmp [r31]
_Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData:
	.stack _Rte_Call_DataServices_Data_0xCE05_DID_0xCE05_WriteData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10115
	prepare 0x00000071, 0x00000004
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10125
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10128
	st.b r5, 0x00000000[r3]
	movea 0xFFFFFFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10129
	st.b r5, 0x00000001[r3]
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10130
	st.b r5, 0x00000002[r3]
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10131
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10133
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10126
	add 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10133
	cmp 0x00000000, r10
	bz9 .BB.LABEL.311_3
.BB.LABEL.311_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
.BB.LABEL.311_2:	; if_then_bb
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10181
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.311_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10140
	cmp 0x00000000, r21
	bz9 .BB.LABEL.311_6
.BB.LABEL.311_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.311_10
.BB.LABEL.311_5:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.311_8
.BB.LABEL.311_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10143
	andi 0x0000FFFF, r20, r7
	mov r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10144
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.311_9
.BB.LABEL.311_7:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.311_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10181
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.311_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	br9 .BB.LABEL.311_2
.BB.LABEL.311_10:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10156
	andi 0x0000FFFF, r20, r7
	mov r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10157
	cmp 0x00000000, r10
	bz9 .BB.LABEL.311_5
.BB.LABEL.311_11:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10161
	cmp 0x00000001, r10
	bz9 .BB.LABEL.311_7
.BB.LABEL.311_12:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10165
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.311_14
.BB.LABEL.311_13:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10168
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.311_14:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10173
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData:
	.stack _Rte_Call_DataServices_Data_0xCE06_DID_0xCE06_WriteData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10186
	prepare 0x00000071, 0x00000004
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10196
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000001[r3]
	st.b r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10199
	st.b r5, 0x00000000[r3]
	movea 0xFFFFFFCE, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10200
	st.b r5, 0x00000001[r3]
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10201
	st.b r5, 0x00000002[r3]
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10202
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10204
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10197
	add 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10204
	cmp 0x00000000, r10
	bz9 .BB.LABEL.312_3
.BB.LABEL.312_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
.BB.LABEL.312_2:	; if_then_bb
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10252
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.312_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10211
	cmp 0x00000000, r21
	bz9 .BB.LABEL.312_6
.BB.LABEL.312_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.312_10
.BB.LABEL.312_5:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.312_8
.BB.LABEL.312_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10214
	andi 0x0000FFFF, r20, r7
	mov r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10215
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.312_9
.BB.LABEL.312_7:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.312_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10252
	zxb r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.312_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	br9 .BB.LABEL.312_2
.BB.LABEL.312_10:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10227
	andi 0x0000FFFF, r20, r7
	mov r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10228
	cmp 0x00000000, r10
	bz9 .BB.LABEL.312_5
.BB.LABEL.312_11:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10232
	cmp 0x00000001, r10
	bz9 .BB.LABEL.312_7
.BB.LABEL.312_12:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10236
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.312_14
.BB.LABEL.312_13:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10239
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.312_14:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10244
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData:
	.stack _Rte_Call_DataServices_Data_0xCF00_DID_0xCF00_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10257
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10274
	jmp [r31]
_Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData:
	.stack _Rte_Call_DataServices_Data_0xC30D_DID_0xC30D_WriteData = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10279
	prepare 0x00000071, 0x00000008
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10289
	st.b r0, 0x00000007[r3]
	st.b r0, 0x00000006[r3]
	st.b r0, 0x00000005[r3]
	st.b r0, 0x00000004[r3]
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000003[r3]
	movea 0x0000002E, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10292
	st.b r5, 0x00000003[r3]
	movea 0xFFFFFFC3, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10293
	st.b r5, 0x00000004[r3]
	mov 0x0000000D, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10294
	st.b r5, 0x00000005[r3]
	movea 0x00000006, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10295
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10297
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10290
	add 0x00000003, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10297
	cmp 0x00000000, r10
	bz9 .BB.LABEL.314_3
.BB.LABEL.314_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
.BB.LABEL.314_2:	; if_then_bb
	st.b r20, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10345
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.314_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10304
	cmp 0x00000000, r21
	bz9 .BB.LABEL.314_6
.BB.LABEL.314_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r21
	bz9 .BB.LABEL.314_10
.BB.LABEL.314_5:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.314_8
.BB.LABEL.314_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10307
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10308
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.314_9
.BB.LABEL.314_7:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.314_8:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10345
	zxb r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.314_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r20
	br9 .BB.LABEL.314_2
.BB.LABEL.314_10:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10320
	andi 0x0000FFFF, r20, r7
	movea 0x00000003, r3, r6
	jarl _CanPassthroughWrite_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10321
	cmp 0x00000000, r10
	bz9 .BB.LABEL.314_5
.BB.LABEL.314_11:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10325
	cmp 0x00000001, r10
	bz9 .BB.LABEL.314_7
.BB.LABEL.314_12:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10329
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.314_14
.BB.LABEL.314_13:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10332
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.314_14:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10337
	st.b r10, 0x00000000[r22]
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
_Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF021_DID_0xF021_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10350
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10367
	jmp [r31]
_Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF022_DID_0xF022_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10372
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10389
	jmp [r31]
_Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData:
	.stack _Rte_Call_DataServices_Data_0xF023_DID_0xF023_WriteData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10394
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10411
	jmp [r31]
_Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData:
	.stack _Rte_Call_DataServices_Data_0x0100_DID_0x0100_WriteData = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10416
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.318_2
.BB.LABEL.318_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10423
	andi 0x000000FF, r2, r5
	add r5, r7
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.318_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10421
	andi 0x000000FF, r2, r5
	mov #_NvMBlockRamBuffer53, r7
	cmp 0x0000000F, r5
	ble9 .BB.LABEL.318_1
.BB.LABEL.318_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000035, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10426
	jarl _NvM_WriteBlock, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10439
	dispose 0x00000000, 0x00000001, [r31]
_Rte_Call_RoutineServices_Routine_0xAF09_RequestResults:
	.stack _Rte_Call_RoutineServices_Routine_0xAF09_RequestResults = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10445
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10467
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults:
	.stack _Rte_Call_RoutineServices_Routine_0xAF0A_RequestResults = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10472
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10494
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults:
	.stack _Rte_Call_RoutineServices_Routine_0xAFF7_RequestResults = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10499
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10522
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE02_RequestResults:
	.stack _Rte_Call_RoutineServices_Routine_0xFE02_RequestResults = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10527
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10551
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults:
	.stack _Rte_Call_RoutineServices_Routine_0xFE0A_RequestResults = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10556
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10580
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults:
	.stack _Rte_Call_RoutineServices_Routine_0xFE0B_RequestResults = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10585
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10609
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF08_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xAF08_Start = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10615
	prepare 0x00000079, 0x00000004
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10631
	mov #.STR.15038, r6
	mov r3, r7
	add r7, r5
	br9 .BB.LABEL.325_2
.BB.LABEL.325_1:	; entry
	ld.b 0x00000000[r6], r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r6
	add 0x00000001, r7
.BB.LABEL.325_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.325_1
.BB.LABEL.325_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10634
	ld.hu 0x00000000[r22], r8
	movea 0x00000004, r3, r6
	mov r2, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10635
	ld.h 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10637
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10635
	addi 0x00000004, r23, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10637
	cmp 0x00000000, r10
	ld.w 0x00000018[r3], r23
	mov r22, r9
	mov r21, r8
	bz9 .BB.LABEL.325_5
.BB.LABEL.325_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10640
	st.b r20, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10641
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.325_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10644
	cmp 0x00000000, r20
	bz9 .BB.LABEL.325_8
.BB.LABEL.325_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.325_13
.BB.LABEL.325_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.325_10
.BB.LABEL.325_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10647
	zxh r7
	mov r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10648
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.325_11
.BB.LABEL.325_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.325_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10685
	zxb r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.325_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.325_12:	; if_else_bb
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10685
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.325_13:	; switch_clause_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10660
	zxh r7
	mov r3, r6
	jarl _CanPassthroughRoutine_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10661
	cmp 0x00000000, r10
	bz9 .BB.LABEL.325_7
.BB.LABEL.325_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10665
	cmp 0x00000001, r10
	bz9 .BB.LABEL.325_9
.BB.LABEL.325_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10669
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.325_17
.BB.LABEL.325_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.325_12
.BB.LABEL.325_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10677
	st.b r10, 0x00000000[r23]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000079, [r31]
_Rte_Call_RoutineServices_Routine_0xAF09_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xAF09_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10690
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10714
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF0A_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xAF0A_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10719
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10743
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAFF7_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xAFF7_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10748
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10772
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE02_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xFE02_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10777
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10801
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE80_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xFE80_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10806
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10830
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE0A_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xFE0A_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10835
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10859
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE0B_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xFE0B_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10864
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10888
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF05_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xAF05_Start = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10893
	prepare 0x00000079, 0x00000004
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10909
	mov #.STR.15178, r6
	mov r3, r7
	add r7, r5
	br9 .BB.LABEL.333_2
.BB.LABEL.333_1:	; entry
	ld.b 0x00000000[r6], r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r6
	add 0x00000001, r7
.BB.LABEL.333_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.333_1
.BB.LABEL.333_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10912
	ld.hu 0x00000000[r22], r8
	movea 0x00000004, r3, r6
	mov r2, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10913
	ld.h 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10915
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10913
	addi 0x00000004, r23, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10915
	cmp 0x00000000, r10
	ld.w 0x00000018[r3], r23
	mov r22, r9
	mov r21, r8
	bz9 .BB.LABEL.333_5
.BB.LABEL.333_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10918
	st.b r20, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10919
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.333_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10922
	cmp 0x00000000, r20
	bz9 .BB.LABEL.333_8
.BB.LABEL.333_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.333_13
.BB.LABEL.333_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.333_10
.BB.LABEL.333_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10925
	zxh r7
	mov r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10926
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.333_11
.BB.LABEL.333_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.333_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10963
	zxb r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.333_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.333_12:	; if_else_bb
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10963
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.333_13:	; switch_clause_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10938
	zxh r7
	mov r3, r6
	jarl _CanPassthroughRoutine_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10939
	cmp 0x00000000, r10
	bz9 .BB.LABEL.333_7
.BB.LABEL.333_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10943
	cmp 0x00000001, r10
	bz9 .BB.LABEL.333_9
.BB.LABEL.333_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10947
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.333_17
.BB.LABEL.333_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.333_12
.BB.LABEL.333_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10955
	st.b r10, 0x00000000[r23]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000079, [r31]
_Rte_Call_RoutineServices_Routine_0xAF06_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xAF06_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 10968
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11000
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF07_Start:
	.stack _Rte_Call_RoutineServices_Routine_0xAF07_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11005
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11037
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF08_Stop:
	.stack _Rte_Call_RoutineServices_Routine_0xAF08_Stop = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11043
	prepare 0x00000079, 0x00000004
	mov r6, r2
	mov r7, r20
	mov r8, r21
	mov r9, r22
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11059
	mov #.STR.15238, r6
	mov r3, r7
	add r7, r5
	br9 .BB.LABEL.336_2
.BB.LABEL.336_1:	; entry
	ld.b 0x00000000[r6], r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r6
	add 0x00000001, r7
.BB.LABEL.336_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.336_1
.BB.LABEL.336_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11062
	ld.hu 0x00000000[r22], r8
	movea 0x00000004, r3, r6
	mov r2, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11063
	ld.h 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11065
	jarl _ParameterSyncSdkGetFromCpuIsFinished, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11063
	addi 0x00000004, r23, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11065
	cmp 0x00000000, r10
	ld.w 0x00000018[r3], r23
	mov r22, r9
	mov r21, r8
	bz9 .BB.LABEL.336_5
.BB.LABEL.336_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000021, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11068
	st.b r20, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11069
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.336_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11072
	cmp 0x00000000, r20
	bz9 .BB.LABEL.336_8
.BB.LABEL.336_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	cmp 0x00000001, r20
	bz9 .BB.LABEL.336_13
.BB.LABEL.336_7:	; if_break_bb.bb81_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.336_10
.BB.LABEL.336_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11075
	zxh r7
	mov r3, r6
	jarl _CanPassthrough_SendRequest, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11076
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.336_11
.BB.LABEL.336_9:	; switch_clause_bb.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x0000000A, r10
.BB.LABEL.336_10:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11113
	zxb r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.336_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000022, r0, r2
.BB.LABEL.336_12:	; if_else_bb
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11113
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.336_13:	; switch_clause_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11088
	zxh r7
	mov r3, r6
	jarl _CanPassthroughRoutine_PENDING, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11089
	cmp 0x00000000, r10
	bz9 .BB.LABEL.336_7
.BB.LABEL.336_14:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11093
	cmp 0x00000001, r10
	bz9 .BB.LABEL.336_9
.BB.LABEL.336_15:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11097
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.336_17
.BB.LABEL.336_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x00000031, r0, r2
	br9 .BB.LABEL.336_12
.BB.LABEL.336_17:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11105
	st.b r10, 0x00000000[r23]
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000079, [r31]
_Rte_Call_RoutineServices_Routine_0xAF09_Stop:
	.stack _Rte_Call_RoutineServices_Routine_0xAF09_Stop = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11118
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11142
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xFE0A_Stop:
	.stack _Rte_Call_RoutineServices_Routine_0xFE0A_Stop = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11147
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11171
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF06_Stop:
	.stack _Rte_Call_RoutineServices_Routine_0xAF06_Stop = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11176
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11201
	jmp [r31]
_Rte_Call_RoutineServices_Routine_0xAF07_Stop:
	.stack _Rte_Call_RoutineServices_Routine_0xAF07_Stop = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11206
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11231
	jmp [r31]
_RTE_PreConditonCheck:
	.stack _RTE_PreConditonCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11238
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11250
	jmp [r31]
_SchM_PerformReset:
	.stack _SchM_PerformReset = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11256
	prepare 0x00000061, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11263
	cmp 0x00000006, r6
	bnz9 .BB.LABEL.342_2
.BB.LABEL.342_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11265
	jarl _Mcu_PerformReset, r31
	mov 0x00000000, r10
	dispose 0x00000008, 0x00000061, [r31]
.BB.LABEL.342_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11270
	cmp 0x00000005, r6
	bnz9 .BB.LABEL.342_4
.BB.LABEL.342_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	movea 0x000000B5, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11274
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11275
	st.w r0, 0x00000000[r3]
	mov 0x00000004, r20
	mov 0x00000002, r21
	movea 0x00000004, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11276
	mov r21, r6
	mov r20, r7
	jarl _EEIf_Write, r31
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11278
	mov r21, r6
	mov r20, r7
	jarl _EEIf_Read, r31
.BB.LABEL.342_4:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Rte_Dcm.c", 11325
	dispose 0x00000008, 0x00000061, [r31]
	.section .const, const
	.align 4
_DIDs_DTC_Configuation:
	.dw 0x0095A313,0x0095A311,0x0095A213,0x0095A211,0x0095A113,0x0095A111,0x0095A013,0x0095A011
	.dw 0x00957113,0x00957111,0x00952113,0x00952111,0x0095A513,0x0095A511,0x0095A413,0x0095A411
	.dw 0x00953111,0x00953412,0x00953413,0x00953411,0x00951171,0x00953312,0x00953313,0x00953311
	.dw 0x00955013,0x00955016,0x00955017,0x00954200,0x00954100
	.ds (4)
	.dw 0x00953512,0x00953113
	.ds (12)
	.dw 0x00951512,0x0095A713,0x0095A711,0x00955201,0x00955011
	.ds (4)
	.dw 0x00E29887,0x00E298F1,0x00E2A2F1,0x00E298F0,0x00E2A2F0,0x00E2A287,0x00E26200
	.ds (4)
	.dw 0x0095AE09,0x0095AD09
	.ds (8)
	.dw 0x0095AA09,0x0095A909,0x0095A809,0x00D56316,0x00D56217
	.ds (12)
	.dw 0x00D60087,0x00E00444,0x00E00142
	.ds (24)
	.dw 0x00C07488,0x00C07388,0x00E28200,0x00E28000,0x00C14687
	.ds (212)
	.align 4
_AES_Te2:
	.dw 0x63A5C663,0x7C84F87C,0x7799EE77,0x7B8DF67B,0xF20DFFF2,0x6BBDD66B,0x6FB1DE6F,0xC55491C5
	.dw 0x30506030,0x01030201,0x67A9CE67,0x2B7D562B,0xFE19E7FE,0xD762B5D7,0xABE64DAB,0x769AEC76
	.dw 0xCA458FCA,0x829D1F82,0xC94089C9,0x7D87FA7D,0xFA15EFFA,0x59EBB259,0x47C98E47,0xF00BFBF0
	.dw 0xADEC41AD,0xD467B3D4,0xA2FD5FA2,0xAFEA45AF,0x9CBF239C,0xA4F753A4,0x7296E472,0xC05B9BC0
	.dw 0xB7C275B7,0xFD1CE1FD,0x93AE3D93,0x266A4C26,0x365A6C36,0x3F417E3F,0xF702F5F7,0xCC4F83CC
	.dw 0x345C6834,0xA5F451A5,0xE534D1E5,0xF108F9F1,0x7193E271,0xD873ABD8,0x31536231,0x153F2A15
	.dw 0x040C0804,0xC75295C7,0x23654623,0xC35E9DC3,0x18283018,0x96A13796,0x050F0A05,0x9AB52F9A
	.dw 0x07090E07,0x12362412,0x809B1B80,0xE23DDFE2,0xEB26CDEB,0x27694E27,0xB2CD7FB2,0x759FEA75
	.dw 0x091B1209,0x839E1D83,0x2C74582C,0x1A2E341A,0x1B2D361B,0x6EB2DC6E,0x5AEEB45A,0xA0FB5BA0
	.dw 0x52F6A452,0x3B4D763B,0xD661B7D6,0xB3CE7DB3,0x297B5229,0xE33EDDE3,0x2F715E2F,0x84971384
	.dw 0x53F5A653,0xD168B9D1
	.ds (4)
	.dw 0xED2CC1ED,0x20604020,0xFC1FE3FC,0xB1C879B1,0x5BEDB65B,0x6ABED46A,0xCB468DCB,0xBED967BE
	.dw 0x394B7239,0x4ADE944A,0x4CD4984C,0x58E8B058,0xCF4A85CF,0xD06BBBD0,0xEF2AC5EF,0xAAE54FAA
	.dw 0xFB16EDFB,0x43C58643,0x4DD79A4D,0x33556633,0x85941185,0x45CF8A45,0xF910E9F9,0x02060402
	.dw 0x7F81FE7F,0x50F0A050,0x3C44783C,0x9FBA259F,0xA8E34BA8,0x51F3A251,0xA3FE5DA3,0x40C08040
	.dw 0x8F8A058F,0x92AD3F92,0x9DBC219D,0x38487038,0xF504F1F5,0xBCDF63BC,0xB6C177B6,0xDA75AFDA
	.dw 0x21634221,0x10302010,0xFF1AE5FF,0xF30EFDF3,0xD26DBFD2,0xCD4C81CD,0x0C14180C,0x13352613
	.dw 0xEC2FC3EC,0x5FE1BE5F,0x97A23597,0x44CC8844,0x17392E17,0xC45793C4,0xA7F255A7,0x7E82FC7E
	.dw 0x3D477A3D,0x64ACC864,0x5DE7BA5D,0x192B3219,0x7395E673,0x60A0C060,0x81981981,0x4FD19E4F
	.dw 0xDC7FA3DC,0x22664422,0x2A7E542A,0x90AB3B90,0x88830B88,0x46CA8C46,0xEE29C7EE,0xB8D36BB8
	.dw 0x143C2814,0xDE79A7DE,0x5EE2BC5E,0x0B1D160B,0xDB76ADDB,0xE03BDBE0,0x32566432,0x3A4E743A
	.dw 0x0A1E140A,0x49DB9249,0x060A0C06,0x246C4824,0x5CE4B85C,0xC25D9FC2,0xD36EBDD3,0xACEF43AC
	.dw 0x62A6C462,0x91A83991,0x95A43195,0xE437D3E4,0x798BF279,0xE732D5E7,0xC8438BC8,0x37596E37
	.dw 0x6DB7DA6D,0x8D8C018D,0xD564B1D5,0x4ED29C4E,0xA9E049A9,0x6CB4D86C,0x56FAAC56,0xF407F3F4
	.dw 0xEA25CFEA,0x65AFCA65,0x7A8EF47A,0xAEE947AE,0x08181008,0xBAD56FBA,0x7888F078,0x256F4A25
	.dw 0x2E725C2E,0x1C24381C,0xA6F157A6,0xB4C773B4,0xC65197C6,0xE823CBE8,0xDD7CA1DD,0x749CE874
	.dw 0x1F213E1F,0x4BDD964B,0xBDDC61BD,0x8B860D8B,0x8A850F8A,0x7090E070,0x3E427C3E,0xB5C471B5
	.dw 0x66AACC66,0x48D89048,0x03050603,0xF601F7F6,0x0E121C0E,0x61A3C261,0x355F6A35,0x57F9AE57
	.dw 0xB9D069B9,0x86911786,0xC15899C1,0x1D273A1D,0x9EB9279E,0xE138D9E1,0xF813EBF8,0x98B32B98
	.dw 0x11332211,0x69BBD269,0xD970A9D9,0x8E89078E,0x94A73394,0x9BB62D9B,0x1E223C1E,0x87921587
	.dw 0xE920C9E9,0xCE4987CE,0x55FFAA55,0x28785028,0xDF7AA5DF,0x8C8F038C,0xA1F859A1,0x89800989
	.dw 0x0D171A0D,0xBFDA65BF,0xE631D7E6,0x42C68442,0x68B8D068,0x41C38241,0x99B02999,0x2D775A2D
	.dw 0x0F111E0F,0xB0CB7BB0,0x54FCA854,0xBBD66DBB,0x163A2C16
	.align 4
_AES_Te3:
	.dw 0x6363A5C6,0x7C7C84F8,0x777799EE,0x7B7B8DF6,0xF2F20DFF,0x6B6BBDD6,0x6F6FB1DE,0xC5C55491
	.dw 0x30305060,0x01010302,0x6767A9CE,0x2B2B7D56,0xFEFE19E7,0xD7D762B5,0xABABE64D,0x76769AEC
	.dw 0xCACA458F,0x82829D1F,0xC9C94089,0x7D7D87FA,0xFAFA15EF,0x5959EBB2,0x4747C98E,0xF0F00BFB
	.dw 0xADADEC41,0xD4D467B3,0xA2A2FD5F,0xAFAFEA45,0x9C9CBF23,0xA4A4F753,0x727296E4,0xC0C05B9B
	.dw 0xB7B7C275,0xFDFD1CE1,0x9393AE3D,0x26266A4C,0x36365A6C,0x3F3F417E,0xF7F702F5,0xCCCC4F83
	.dw 0x34345C68,0xA5A5F451,0xE5E534D1,0xF1F108F9,0x717193E2,0xD8D873AB,0x31315362,0x15153F2A
	.dw 0x04040C08,0xC7C75295,0x23236546,0xC3C35E9D,0x18182830,0x9696A137,0x05050F0A,0x9A9AB52F
	.dw 0x0707090E,0x12123624,0x80809B1B,0xE2E23DDF,0xEBEB26CD,0x2727694E,0xB2B2CD7F,0x75759FEA
	.dw 0x09091B12,0x83839E1D,0x2C2C7458,0x1A1A2E34,0x1B1B2D36,0x6E6EB2DC,0x5A5AEEB4,0xA0A0FB5B
	.dw 0x5252F6A4,0x3B3B4D76,0xD6D661B7,0xB3B3CE7D,0x29297B52,0xE3E33EDD,0x2F2F715E,0x84849713
	.dw 0x5353F5A6,0xD1D168B9
	.ds (4)
	.dw 0xEDED2CC1,0x20206040,0xFCFC1FE3,0xB1B1C879,0x5B5BEDB6,0x6A6ABED4,0xCBCB468D,0xBEBED967
	.dw 0x39394B72,0x4A4ADE94,0x4C4CD498,0x5858E8B0,0xCFCF4A85,0xD0D06BBB,0xEFEF2AC5,0xAAAAE54F
	.dw 0xFBFB16ED,0x4343C586,0x4D4DD79A,0x33335566,0x85859411,0x4545CF8A,0xF9F910E9,0x02020604
	.dw 0x7F7F81FE,0x5050F0A0,0x3C3C4478,0x9F9FBA25,0xA8A8E34B,0x5151F3A2,0xA3A3FE5D,0x4040C080
	.dw 0x8F8F8A05,0x9292AD3F,0x9D9DBC21,0x38384870,0xF5F504F1,0xBCBCDF63,0xB6B6C177,0xDADA75AF
	.dw 0x21216342,0x10103020,0xFFFF1AE5,0xF3F30EFD,0xD2D26DBF,0xCDCD4C81,0x0C0C1418,0x13133526
	.dw 0xECEC2FC3,0x5F5FE1BE,0x9797A235,0x4444CC88,0x1717392E,0xC4C45793,0xA7A7F255,0x7E7E82FC
	.dw 0x3D3D477A,0x6464ACC8,0x5D5DE7BA,0x19192B32,0x737395E6,0x6060A0C0,0x81819819,0x4F4FD19E
	.dw 0xDCDC7FA3,0x22226644,0x2A2A7E54,0x9090AB3B,0x8888830B,0x4646CA8C,0xEEEE29C7,0xB8B8D36B
	.dw 0x14143C28,0xDEDE79A7,0x5E5EE2BC,0x0B0B1D16,0xDBDB76AD,0xE0E03BDB,0x32325664,0x3A3A4E74
	.dw 0x0A0A1E14,0x4949DB92,0x06060A0C,0x24246C48,0x5C5CE4B8,0xC2C25D9F,0xD3D36EBD,0xACACEF43
	.dw 0x6262A6C4,0x9191A839,0x9595A431,0xE4E437D3,0x79798BF2,0xE7E732D5,0xC8C8438B,0x3737596E
	.dw 0x6D6DB7DA,0x8D8D8C01,0xD5D564B1,0x4E4ED29C,0xA9A9E049,0x6C6CB4D8,0x5656FAAC,0xF4F407F3
	.dw 0xEAEA25CF,0x6565AFCA,0x7A7A8EF4,0xAEAEE947,0x08081810,0xBABAD56F,0x787888F0,0x25256F4A
	.dw 0x2E2E725C,0x1C1C2438,0xA6A6F157,0xB4B4C773,0xC6C65197,0xE8E823CB,0xDDDD7CA1,0x74749CE8
	.dw 0x1F1F213E,0x4B4BDD96,0xBDBDDC61,0x8B8B860D,0x8A8A850F,0x707090E0,0x3E3E427C,0xB5B5C471
	.dw 0x6666AACC,0x4848D890,0x03030506,0xF6F601F7,0x0E0E121C,0x6161A3C2,0x35355F6A,0x5757F9AE
	.dw 0xB9B9D069,0x86869117,0xC1C15899,0x1D1D273A,0x9E9EB927,0xE1E138D9,0xF8F813EB,0x9898B32B
	.dw 0x11113322,0x6969BBD2,0xD9D970A9,0x8E8E8907,0x9494A733,0x9B9BB62D,0x1E1E223C,0x87879215
	.dw 0xE9E920C9,0xCECE4987,0x5555FFAA,0x28287850,0xDFDF7AA5,0x8C8C8F03,0xA1A1F859,0x89898009
	.dw 0x0D0D171A,0xBFBFDA65,0xE6E631D7,0x4242C684,0x6868B8D0,0x4141C382,0x9999B029,0x2D2D775A
	.dw 0x0F0F111E,0xB0B0CB7B,0x5454FCA8,0xBBBBD66D,0x16163A2C
	.align 4
_AES_Te0:
	.dw 0xC66363A5,0xF87C7C84,0xEE777799,0xF67B7B8D,0xFFF2F20D,0xD66B6BBD,0xDE6F6FB1,0x91C5C554
	.dw 0x60303050,0x02010103,0xCE6767A9,0x562B2B7D,0xE7FEFE19,0xB5D7D762,0x4DABABE6,0xEC76769A
	.dw 0x8FCACA45,0x1F82829D,0x89C9C940,0xFA7D7D87,0xEFFAFA15,0xB25959EB,0x8E4747C9,0xFBF0F00B
	.dw 0x41ADADEC,0xB3D4D467,0x5FA2A2FD,0x45AFAFEA,0x239C9CBF,0x53A4A4F7,0xE4727296,0x9BC0C05B
	.dw 0x75B7B7C2,0xE1FDFD1C,0x3D9393AE,0x4C26266A,0x6C36365A,0x7E3F3F41,0xF5F7F702,0x83CCCC4F
	.dw 0x6834345C,0x51A5A5F4,0xD1E5E534,0xF9F1F108,0xE2717193,0xABD8D873,0x62313153,0x2A15153F
	.dw 0x0804040C,0x95C7C752,0x46232365,0x9DC3C35E,0x30181828,0x379696A1,0x0A05050F,0x2F9A9AB5
	.dw 0x0E070709,0x24121236,0x1B80809B,0xDFE2E23D,0xCDEBEB26,0x4E272769,0x7FB2B2CD,0xEA75759F
	.dw 0x1209091B,0x1D83839E,0x582C2C74,0x341A1A2E,0x361B1B2D,0xDC6E6EB2,0xB45A5AEE,0x5BA0A0FB
	.dw 0xA45252F6,0x763B3B4D,0xB7D6D661,0x7DB3B3CE,0x5229297B,0xDDE3E33E,0x5E2F2F71,0x13848497
	.dw 0xA65353F5,0xB9D1D168
	.ds (4)
	.dw 0xC1EDED2C,0x40202060,0xE3FCFC1F,0x79B1B1C8,0xB65B5BED,0xD46A6ABE,0x8DCBCB46,0x67BEBED9
	.dw 0x7239394B,0x944A4ADE,0x984C4CD4,0xB05858E8,0x85CFCF4A,0xBBD0D06B,0xC5EFEF2A,0x4FAAAAE5
	.dw 0xEDFBFB16,0x864343C5,0x9A4D4DD7,0x66333355,0x11858594,0x8A4545CF,0xE9F9F910,0x04020206
	.dw 0xFE7F7F81,0xA05050F0,0x783C3C44,0x259F9FBA,0x4BA8A8E3,0xA25151F3,0x5DA3A3FE,0x804040C0
	.dw 0x058F8F8A,0x3F9292AD,0x219D9DBC,0x70383848,0xF1F5F504,0x63BCBCDF,0x77B6B6C1,0xAFDADA75
	.dw 0x42212163,0x20101030,0xE5FFFF1A,0xFDF3F30E,0xBFD2D26D,0x81CDCD4C,0x180C0C14,0x26131335
	.dw 0xC3ECEC2F,0xBE5F5FE1,0x359797A2,0x884444CC,0x2E171739,0x93C4C457,0x55A7A7F2,0xFC7E7E82
	.dw 0x7A3D3D47,0xC86464AC,0xBA5D5DE7,0x3219192B,0xE6737395,0xC06060A0,0x19818198,0x9E4F4FD1
	.dw 0xA3DCDC7F,0x44222266,0x542A2A7E,0x3B9090AB,0x0B888883,0x8C4646CA,0xC7EEEE29,0x6BB8B8D3
	.dw 0x2814143C,0xA7DEDE79,0xBC5E5EE2,0x160B0B1D,0xADDBDB76,0xDBE0E03B,0x64323256,0x743A3A4E
	.dw 0x140A0A1E,0x924949DB,0x0C06060A,0x4824246C,0xB85C5CE4,0x9FC2C25D,0xBDD3D36E,0x43ACACEF
	.dw 0xC46262A6,0x399191A8,0x319595A4,0xD3E4E437,0xF279798B,0xD5E7E732,0x8BC8C843,0x6E373759
	.dw 0xDA6D6DB7,0x018D8D8C,0xB1D5D564,0x9C4E4ED2,0x49A9A9E0,0xD86C6CB4,0xAC5656FA,0xF3F4F407
	.dw 0xCFEAEA25,0xCA6565AF,0xF47A7A8E,0x47AEAEE9,0x10080818,0x6FBABAD5,0xF0787888,0x4A25256F
	.dw 0x5C2E2E72,0x381C1C24,0x57A6A6F1,0x73B4B4C7,0x97C6C651,0xCBE8E823,0xA1DDDD7C,0xE874749C
	.dw 0x3E1F1F21,0x964B4BDD,0x61BDBDDC,0x0D8B8B86,0x0F8A8A85,0xE0707090,0x7C3E3E42,0x71B5B5C4
	.dw 0xCC6666AA,0x904848D8,0x06030305,0xF7F6F601,0x1C0E0E12,0xC26161A3,0x6A35355F,0xAE5757F9
	.dw 0x69B9B9D0,0x17868691,0x99C1C158,0x3A1D1D27,0x279E9EB9,0xD9E1E138,0xEBF8F813,0x2B9898B3
	.dw 0x22111133,0xD26969BB,0xA9D9D970,0x078E8E89,0x339494A7,0x2D9B9BB6,0x3C1E1E22,0x15878792
	.dw 0xC9E9E920,0x87CECE49,0xAA5555FF,0x50282878,0xA5DFDF7A,0x038C8C8F,0x59A1A1F8,0x09898980
	.dw 0x1A0D0D17,0x65BFBFDA,0xD7E6E631,0x844242C6,0xD06868B8,0x824141C3,0x299999B0,0x5A2D2D77
	.dw 0x1E0F0F11,0x7BB0B0CB,0xA85454FC,0x6DBBBBD6,0x2C16163A
	.align 4
_AES_Te1:
	.dw 0xA5C66363,0x84F87C7C,0x99EE7777,0x8DF67B7B,0x0DFFF2F2,0xBDD66B6B,0xB1DE6F6F,0x5491C5C5
	.dw 0x50603030,0x03020101,0xA9CE6767,0x7D562B2B,0x19E7FEFE,0x62B5D7D7,0xE64DABAB,0x9AEC7676
	.dw 0x458FCACA,0x9D1F8282,0x4089C9C9,0x87FA7D7D,0x15EFFAFA,0xEBB25959,0xC98E4747,0x0BFBF0F0
	.dw 0xEC41ADAD,0x67B3D4D4,0xFD5FA2A2,0xEA45AFAF,0xBF239C9C,0xF753A4A4,0x96E47272,0x5B9BC0C0
	.dw 0xC275B7B7,0x1CE1FDFD,0xAE3D9393,0x6A4C2626,0x5A6C3636,0x417E3F3F,0x02F5F7F7,0x4F83CCCC
	.dw 0x5C683434,0xF451A5A5,0x34D1E5E5,0x08F9F1F1,0x93E27171,0x73ABD8D8,0x53623131,0x3F2A1515
	.dw 0x0C080404,0x5295C7C7,0x65462323,0x5E9DC3C3,0x28301818,0xA1379696,0x0F0A0505,0xB52F9A9A
	.dw 0x090E0707,0x36241212,0x9B1B8080,0x3DDFE2E2,0x26CDEBEB,0x694E2727,0xCD7FB2B2,0x9FEA7575
	.dw 0x1B120909,0x9E1D8383,0x74582C2C,0x2E341A1A,0x2D361B1B,0xB2DC6E6E,0xEEB45A5A,0xFB5BA0A0
	.dw 0xF6A45252,0x4D763B3B,0x61B7D6D6,0xCE7DB3B3,0x7B522929,0x3EDDE3E3,0x715E2F2F,0x97138484
	.dw 0xF5A65353,0x68B9D1D1
	.ds (4)
	.dw 0x2CC1EDED,0x60402020,0x1FE3FCFC,0xC879B1B1,0xEDB65B5B,0xBED46A6A,0x468DCBCB,0xD967BEBE
	.dw 0x4B723939,0xDE944A4A,0xD4984C4C,0xE8B05858,0x4A85CFCF,0x6BBBD0D0,0x2AC5EFEF,0xE54FAAAA
	.dw 0x16EDFBFB,0xC5864343,0xD79A4D4D,0x55663333,0x94118585,0xCF8A4545,0x10E9F9F9,0x06040202
	.dw 0x81FE7F7F,0xF0A05050,0x44783C3C,0xBA259F9F,0xE34BA8A8,0xF3A25151,0xFE5DA3A3,0xC0804040
	.dw 0x8A058F8F,0xAD3F9292,0xBC219D9D,0x48703838,0x04F1F5F5,0xDF63BCBC,0xC177B6B6,0x75AFDADA
	.dw 0x63422121,0x30201010,0x1AE5FFFF,0x0EFDF3F3,0x6DBFD2D2,0x4C81CDCD,0x14180C0C,0x35261313
	.dw 0x2FC3ECEC,0xE1BE5F5F,0xA2359797,0xCC884444,0x392E1717,0x5793C4C4,0xF255A7A7,0x82FC7E7E
	.dw 0x477A3D3D,0xACC86464,0xE7BA5D5D,0x2B321919,0x95E67373,0xA0C06060,0x98198181,0xD19E4F4F
	.dw 0x7FA3DCDC,0x66442222,0x7E542A2A,0xAB3B9090,0x830B8888,0xCA8C4646,0x29C7EEEE,0xD36BB8B8
	.dw 0x3C281414,0x79A7DEDE,0xE2BC5E5E,0x1D160B0B,0x76ADDBDB,0x3BDBE0E0,0x56643232,0x4E743A3A
	.dw 0x1E140A0A,0xDB924949,0x0A0C0606,0x6C482424,0xE4B85C5C,0x5D9FC2C2,0x6EBDD3D3,0xEF43ACAC
	.dw 0xA6C46262,0xA8399191,0xA4319595,0x37D3E4E4,0x8BF27979,0x32D5E7E7,0x438BC8C8,0x596E3737
	.dw 0xB7DA6D6D,0x8C018D8D,0x64B1D5D5,0xD29C4E4E,0xE049A9A9,0xB4D86C6C,0xFAAC5656,0x07F3F4F4
	.dw 0x25CFEAEA,0xAFCA6565,0x8EF47A7A,0xE947AEAE,0x18100808,0xD56FBABA,0x88F07878,0x6F4A2525
	.dw 0x725C2E2E,0x24381C1C,0xF157A6A6,0xC773B4B4,0x5197C6C6,0x23CBE8E8,0x7CA1DDDD,0x9CE87474
	.dw 0x213E1F1F,0xDD964B4B,0xDC61BDBD,0x860D8B8B,0x850F8A8A,0x90E07070,0x427C3E3E,0xC471B5B5
	.dw 0xAACC6666,0xD8904848,0x05060303,0x01F7F6F6,0x121C0E0E,0xA3C26161,0x5F6A3535,0xF9AE5757
	.dw 0xD069B9B9,0x91178686,0x5899C1C1,0x273A1D1D,0xB9279E9E,0x38D9E1E1,0x13EBF8F8,0xB32B9898
	.dw 0x33221111,0xBBD26969,0x70A9D9D9,0x89078E8E,0xA7339494,0xB62D9B9B,0x223C1E1E,0x92158787
	.dw 0x20C9E9E9,0x4987CECE,0xFFAA5555,0x78502828,0x7AA5DFDF,0x8F038C8C,0xF859A1A1,0x80098989
	.dw 0x171A0D0D,0xDA65BFBF,0x31D7E6E6,0xC6844242,0xB8D06868,0xC3824141,0xB0299999,0x775A2D2D
	.dw 0x111E0F0F,0xCB7BB0B0,0xFCA85454,0xD66DBBBB,0x3A2C1616
	.align 4
_AES_rcon:
	.dw 0x01000000,0x02000000,0x04000000,0x08000000,0x10000000,0x20000000,0x40000000,0x80000000
	.dw 0x1B000000,0x36000000
.STR.1:
	.db 0x22,0xC0,0x01
.STR.12369:
	.db 0x22,0xC0,0x04
.STR.12443:
	.db 0x22,0xC0,0x09
.STR.12515:
	.db 0x22,0xC0,0x11
.STR.12563:
	.db 0x22,0xC0,0x14
.STR.12651:
	.db 0x22,0xCA,0x02
.STR.12675:
	.db 0x22,0xCA,0x21
.STR.12699:
	.db 0x22,0xC3,0x05
.STR.12735:
	.db 0x22,0xC3,0x07
.STR.12783:
	.db 0x22,0xC3,0x0A
.STR.12807:
	.db 0x22,0xC3,0x0C
.STR.12843:
	.db 0x22,0xCE,0x05
.STR.12867:
	.db 0x22,0xCE,0x06
.STR.12903:
	.db 0x22,0xC3,0x0D
.STR.13084:
	.db 0x22,0xD0,0x01
.STR.13108:
	.db 0x22,0xC1
	.ds (1)
.STR.13132:
	.db 0x22,0xB0
	.ds (1)
.STR.13170:
	.db 0x22,0xB0,0x02
.STR.13208:
	.db 0x22,0xB0,0x04
.STR.13428:
	.db 0x22,0xB1,0x03
.STR.13482:
	.db 0x22,0xB1,0x80
.STR.13506:
	.db 0x22,0xB1,0x81
.STR.13530:
	.db 0x22,0xB1,0x82
.STR.13554:
	.db 0x22,0xB1,0x83
.STR.13599:
	.db 0x22,0xB1,0x86
.STR.13623:
	.db 0x22,0xB1,0x87
.STR.13705:
	.db 0x22,0xB2,0x11
.STR.13729:
	.db 0x22,0xB2,0x30
.STR.13765:
	.db 0x22,0xB9,0x31
.STR.13844:
	.db 0x22,0xAF,0xF6
.STR.13868:
	.db 0x22,0xBE,0x01
.STR.13904:
	.db 0x22,0xBE,0x04
.STR.13928:
	.db 0x22,0xBE,0x80
.STR.13952:
	.db 0x22,0xBE,0x05
.STR.13976:
	.db 0x22,0xBE,0x06
.STR.15038:
	.db 0x32,0x01,0xAF,0x08
.STR.15178:
	.db 0x32,0x01,0xAF,0x05
.STR.15238:
	.db 0x32,0x02,0xAF,0x08
	.section .data, data
	.align 4
_gs_RandomSeed.1:
	.dw 0x23654789
_gs_SeedBuf.2:
	.ds (4)
_longKey.3:
	.db 0xCB,0x57,0xE4,0xEF,0xB1,0x10,0x5B,0x9C,0x8C,0x44,0x92,0x29,0xFA,0x26,0xB7,0x9C
