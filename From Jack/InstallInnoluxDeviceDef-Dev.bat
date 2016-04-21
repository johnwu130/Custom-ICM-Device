@echo off
echo This will install the device definition files for:
echo Innolux cRIO Data Logger support for InsightCM 2.0
pause

REM Install the metric definitions
REM "C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" importdefinition -t metric -f "%~dp0\Metric\Average_Temperature.json"

REM Install the channel definitions
"C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" importdefinition -t channel -f "%~dp0\Channel\Voltage_Dynamic_9205.json"

REM Install the module definitions
"C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" importdefinition -t module -f "%~dp0\Module\NI9205_Innolux.json"

REM Install the device definitions
"C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" importdefinition -t device -f "%~dp0\Device\InnoluxCRIODataLogger.json"
pause