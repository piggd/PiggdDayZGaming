@echo off
echo ===============================
echo Welcome to piggd DayZ
echo --------------------------------
echo mail: dayzpiggd@mgail.com
echo http://dayzpiggd.enjin.com
echo ===============================
echo Connecting to the Piggd DayZ Gaming Origins .....
timeout 5

::===============================================================================================================================================
::== Set your Steam Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
::===============================================================================================================================================
::= D DRIVE 64 Bit Windows =============================================================================================================
::---> ==========================================================================================================================================
set steampath=D:\Program Files (x86)\Steam\steamapps\common
::===============================================================================================================================================
::= Piggd DayZ Sever IP, Port and Mod =============================================================================================================
::---> ==========================================================================================================================================
set IP=69.30.239.122
set PORT=7030
set MODS=@PiggdDayzGaming;@DayzOrigins179;@DayzOverwatch;@DayZ_Epoch1051
::===============================================================================================================================================
::= Additional Launch Parameters =============================================================================================================
::---> ==========================================================================================================================================
:: set addparam=" "
set addparam=-malloc=system 
::===============================================================================================================================================
::== Set your Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
set arma2oapath=%steampath%\Arma 2 Operation Arrowhead
set arma2path=%steampath%\Arma 2
::===============================================================================================================================================
:: Command Syntax Please do not Modify==============================================================================================================================================
::===============================================================================================================================================
start ""  "%arma2oapath%\ArmA2OA_BE.exe" 0 0 -skipintro "%addparam%" "-mod=%MODS%;%arma2path%;expansion" -noSplash -noFilePatching -world=empty -connect=%IP% -port=%PORT% 
@exit
