@echo off
@REM set boot = 0x10000000
@REM set Addr_App1 = 0x10018000

set /p version=please input version:
set "source1=..\tviibe1m\tools\iar\flash\cm4_mc\rev_d\Exe\APP_CM4.srec"
set "boot=..\tviibe1m\tools\iar\flash\cm0plus\rev_d\Exe\APP_CM0.srec"   

copy /Y %boot% "DUOLA_BOOT.srec"
copy /Y %source1% "DUOLA_APP.srec"

srec_cat DUOLA_BOOT.srec -o boot.hex -intel
srec_cat DUOLA_APP.srec -o app1.hex -intel  -obs=16

srec_cat boot.hex -intel app1.hex -intel  flag.hex -intel -o DUOLA_%version%_boot_app.hex -intel

move DUOLA_%version%_boot_app.hex .\output
@REM move *.bin .\output