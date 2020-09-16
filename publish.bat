@echo off

@echo.  >> publish_log.txt
@echo.  >> publish_log.txt
@echo.  >> publish_log.txt

@echo ================================================================== >> publish_log.txt
@echo Publishing paypalpayment WebApp at %date% %time% >> publish_log.txt
@echo ================================================================== >> publish_log.txt
echo Publishing paypalpayment WebApp at %date% %time%

@echo.  >> publish_log.txt

@dotnet publish paypalpayment -c Release --runtime win-x64 --output ..\publishpaypalpayment -p:PublishReadyToRun=true --version-suffix 1 >> publish_log.txt

@echo.  >> publish_log.txt

@echo Look for the '..\publishpaypalpayment' folder and copy the contents to your web server >> publish_log.txt


@start explorer.exe /e,..\

echo Done in 3 seconds...
echo.
echo.

timeout 3

notepad.exe .\publish_log.txt








