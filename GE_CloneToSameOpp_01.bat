rem @echo off
rem TIMEOUT 1000
SET JMETER_PATH=%JMETER_HOME%
SET JMETER_PATH=%JMETER_PATH:\=//%
set plantype=Smoke_Test
cd "%JMETER_HOME%\bin\GE_SmokeTest_Results"
set dt=%date:~0,2%%date:~3,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%_%plantype%
set dt=%dt: =_%
mkdir %dt%
cd %dt%
mkdir TestReport

jmeter -n -t "%JMETER_HOME%\bin\GE_CloneToSameOpp_01.jmx" -l "%JMETER_HOME%\bin\GE_SmokeTest_Results\%dt%\reportCloneToSameOpp.jtl" -e -o "%JMETER_HOME%\bin\GE_SmokeTest_Results\%dt%\TestReport" -JerrorPath="%JMETER_PATH%//bin//GE_SmokeTest_Results//errorLogs"
