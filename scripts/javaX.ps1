param ($javaVersion, $perm)

if ($javaVersion -eq "") {
    Write-Output "Please specify a Java version."
    exit 1
}

switch ($javaVersion) {
    "1" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk-1.1" }
    "2" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk-1.2" }
    "3" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk-1.3" }
    "4" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk-1.4" }
    "5" { $env:JAVA_HOME = "C:\Program Files (x86)\Java\jdk-1.5" }
    "6" { $env:JAVA_HOME = "C:\Program Files\Java\jdk1.6.0_45" }
    "7" { $env:JAVA_HOME = "C:\Program Files\Java\jdk1.7.0_80" }
    "8" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-1.8" }
    "9" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-9.0.4" }
    "10" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-10.0.2" }
    "11" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-11" }
    "12" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-12.0.2" }
    "13" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-13.0.2" }
    "14" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-14.0.2" }
    "15" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-15.0.2" }
    "16" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-16.0.2" }
    "17" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-17" }
    "18" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-18.0.2.1" }
    "19" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-19" }
    "20" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-20" }
    "21" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-21" }
    "22" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-22" }
    "23" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-23" }
    "24" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-24" }
}

if ($env:JAVA_HOME -eq "") {
    Write-Output "Java version $javaVersion is not recognized."
    exit 1
}

if ($perm -eq "perm") {
    $IsAdmin = (New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    if ($IsAdmin) {
        Write-Output "Running as Administrator. Setting system JAVA_HOME"
        [Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::Machine)
    }
    else {
        Write-Output "Running as User. Setting user JAVA_HOME."
        [Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::User)
    }
}

$env:Path = $env:JAVA_HOME + '\bin;' + $env:Path

Write-Output "Java $javaVersion activated."
exit 0
