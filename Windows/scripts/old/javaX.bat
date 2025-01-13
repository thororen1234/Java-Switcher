@echo off

if %1 == "Java 1.1" set JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.1
if %1 == "Java 1.2" set JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.2
if %1 == "Java 1.3" set JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.3
if %1 == "Java 1.4" set JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.4
if %1 == "Java 5" set JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.5
if %1 == "Java 6" set JAVA_HOME=C:\Program Files\Java\jdk1.6.0_45
if %1 == "Java 7" set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_80
if %1 == "Java 8" set JAVA_HOME=C:\Program Files\Java\jdk-1.8
if %1 == "Java 9" set JAVA_HOME=C:\Program Files\Java\jdk-9.0.4
if %1 == "Java 10" set JAVA_HOME=C:\Program Files\Java\jdk-10.0.2
if %1 == "Java 11" set JAVA_HOME=C:\Program Files\Java\jdk-11
if %1 == "Java 12" set JAVA_HOME=C:\Program Files\Java\jdk-12.0.2
if %1 == "Java 13" set JAVA_HOME=C:\Program Files\Java\jdk-13.0.2
if %1 == "Java 14" set JAVA_HOME=C:\Program Files\Java\jdk-14.0.2
if %1 == "Java 15" set JAVA_HOME=C:\Program Files\Java\jdk-15.0.2
if %1 == "Java 16" set JAVA_HOME=C:\Program Files\Java\jdk-16.0.2
if %1 == "Java 17" set JAVA_HOME=C:\Program Files\Java\jdk-17
if %1 == "Java 18" set JAVA_HOME=C:\Program Files\Java\jdk-18.0.2.1
if %1 == "Java 19" set JAVA_HOME=C:\Program Files\Java\jdk-19
if %1 == "Java 20" set JAVA_HOME=C:\Program Files\Java\jdk-20
if %1 == "Java 21" set JAVA_HOME=C:\Program Files\Java\jdk-21
if %1 == "Java 22" set JAVA_HOME=C:\Program Files\Java\jdk-22
if %1 == "Java 23" set JAVA_HOME=C:\Program Files\Java\jdk-23

if "%~2" == "perm" (
  net session >nul 2>&1
  if %errorlevel% == 0 (
    setx JAVA_HOME "%JAVA_HOME%" /M
  ) else (
    setx JAVA_HOME "%JAVA_HOME%"
  )
)

set Path=%JAVA_HOME%\bin;%Path%

echo %~1 activated.