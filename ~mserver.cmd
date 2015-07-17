@echo off
goto begin
 
:usage
echo Usage: %~n0
echo.
echo Starts MicroServer (https://github.com/ethenguo/microserver)
echo and waits for user to press a key to stop.
goto end
 
:begin
if not "%1"=="" goto usage
cd mserver\apache
start "Apache server" /B mapache.exe
echo MicroServer started...
echo.
 
:runbrowser
echo Your web browser will now open http://localhost:8800
echo.
::if exist ..\dokuwiki\conf\local.php (
	start http://localhost:8800/
::) else (
::	start http://localhost:8800/install.php
::)
 
:wait
echo To stop MicroServer
pause
 
:stop
ApacheKill.exe
echo ... MicroServer stopped.
echo You can close this window now.
 
:end
