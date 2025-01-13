@echo off

if "%~1"=="" (
  echo Please specify a Java version.
  exit /b 1
)

if "%1" == "1" set "JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.1"
if "%1" == "2" set "JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.2"
if "%1" == "3" set "JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.3"
if "%1" == "4" set "JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.4"
if "%1" == "5" set "JAVA_HOME=C:\Program Files (x86)\Java\jdk-1.5"
if "%1" == "6" set "JAVA_HOME=C:\Program Files\Java\jdk1.6.0_45"
if "%1" == "7" set "JAVA_HOME=C:\Program Files\Java\jdk1.7.0_80"
if "%1" == "8" set "JAVA_HOME=C:\Program Files\Java\jdk-1.8"
if "%1" == "9" set "JAVA_HOME=C:\Program Files\Java\jdk-9.0.4"
if "%1" == "10" set "JAVA_HOME=C:\Program Files\Java\jdk-10.0.2"
if "%1" == "11" set "JAVA_HOME=C:\Program Files\Java\jdk-11"
if "%1" == "12" set "JAVA_HOME=C:\Program Files\Java\jdk-12.0.2"
if "%1" == "13" set "JAVA_HOME=C:\Program Files\Java\jdk-13.0.2"
if "%1" == "14" set "JAVA_HOME=C:\Program Files\Java\jdk-14.0.2"
if "%1" == "15" set "JAVA_HOME=C:\Program Files\Java\jdk-15.0.2"
if "%1" == "16" set "JAVA_HOME=C:\Program Files\Java\jdk-16.0.2"
if "%1" == "17" set "JAVA_HOME=C:\Program Files\Java\jdk-17"
if "%1" == "18" set "JAVA_HOME=C:\Program Files\Java\jdk-18.0.2.1"
if "%1" == "19" set "JAVA_HOME=C:\Program Files\Java\jdk-19"
if "%1" == "20" set "JAVA_HOME=C:\Program Files\Java\jdk-20"
if "%1" == "21" set "JAVA_HOME=C:\Program Files\Java\jdk-21"
if "%1" == "22" set "JAVA_HOME=C:\Program Files\Java\jdk-22"
if "%1" == "23" set "JAVA_HOME=C:\Program Files\Java\jdk-23"

if "%JAVA_HOME%"=="" (
  echo Java version "%1" is not recognized.
  exit /b 1
)

if "%~2" == "perm" (
  net session >nul 2>&1
  if %errorlevel% == 0 (
    echo Running as Administrator. Setting system JAVA_HOME.
    setx JAVA_HOME "%JAVA_HOME%" /M
    if %errorlevel% equ 0 (
      echo Failed to set JAVA_HOME permanently for the system.
      exit /b 1
    ) else (
      echo JAVA_HOME set successfully for the system.
    )
  ) else (
    echo Running as User. Setting user JAVA_HOME.
    setx JAVA_HOME "%JAVA_HOME%"
    if %errorlevel% == 0 (
      echo Failed to set JAVA_HOME for the user.
      exit /b 1
    ) else (
      echo JAVA_HOME set successfully for the user.
    )
  )
)

set Path=%JAVA_HOME%\bin;%Path%

echo Java %1 activated.
exit /b
