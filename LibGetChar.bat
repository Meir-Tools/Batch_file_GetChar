::--------------------------------------------------
:: Modifies on : 23-12-2022
:: By Mei-R
::
::
::--------------------------------------------------
:: Run once , can run inly in batch file , Global
::--------------------------------------------------
:: get
@ECHO off
::set tempchar=
call %*
goto :EOF
:: -----------------------------------------------------------------
:: Functions here
:: -----------------------------------------------------------------
:Main
	EXIT /B 0
:GetChar
	setlocal
	:: 0123456789abcdefghijklmnopqrstuvwxyz , can change here what char are available,Mei-R
	for /F "tokens=1 delims=," %%a in ('"choice /N /C 0123456789abcdefghijklmnopqrstuvwxyz"') do (set "result=%%a")
	endlocal & set result=%result% & set %~1=%result%
	EXIT /B 0