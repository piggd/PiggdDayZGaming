@echo off
echo ===============================
echo Welcome to piggd DayZ
echo --------------------------------
echo mail: dayzpiggd@mgail.com
echo http://dayzpiggd.enjin.com
echo ===============================
echo Installing PiggdDayZGaming Addon in the Arma 2 OA directory  .....
timeout 5

::===============================================================================================================================================
::== Set your Steam Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
::===============================================================================================================================================
::= 32 Bit Windows =============================================================================================================
::---> ==========================================================================================================================================
set steampath=H:\Program Files\Steam\steamapps\common
::===============================================================================================================================================
::== Set your Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
set arma2oapath=%steampath%\Arma 2 Operation Arrowhead
::===============================================================================================================================================
:: Command Syntax Please do not Modify==============================================================================================================================================
::===============================================================================================================================================
::move /y "%arma2oapath%\PiggdDayZGaming" "%arma2oapath%\old.PiggdDayZGaming"
rmdir /s /q "%arma2oapath%\@PiggdDayZGaming"
xcopy /E /I /Y "..\..\..\@PiggdDayZGaming" "%arma2oapath%\@PiggdDayZGaming"
echo =================================================
echo Installation of Addon PiggdDayZGaming Complete!
echo =================================================
timeout 180
@exit
