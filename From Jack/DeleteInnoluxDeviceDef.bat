@echo off
echo This will uninstall the device definition files for:
echo Innolux cRIO Data Logger support for InsightCM 2.0
REM pause

REM Delete the device definitions
"C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" deletedefinition -t device -n "Innolux cRIO Data Logger"

REM Delete the module definitions
"C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" deletedefinition -t module -n "NI 9205 Innolux"

REM Delete the channel definitions
"C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" deletedefinition -t channel -n "Voltage Dynamic(9205)"

REM Delete the metric definitions
REM "C:\Program Files\National Instruments\InsightCM Server\InsightCMConsole.exe" deletedefinition -t metric -n "Average Temperature"