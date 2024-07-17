#ps1_sysnative
cmd /C 'wmic UserAccount where Name="opc" set PasswordExpires=False'
$opcUser = get-wmiobject win32_useraccount | Where-Object { $_.Name -match 'opc' }
([adsi]("WinNT://" + $opcUser.caption).replace("\", "/")).SetPassword("ZAQ!2wsxCDE#")

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://www.python.org/ftp/python/3.9.6/python-3.9.6.exe"
$file = "$env:temp\python-3.9.6.exe"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
Write-Host "Installing Python 3.9.6..."
$env:PYLAUNCH_DEBUGPath = '1'
&$file /quiet InstallAllUsers=1 InstallLauncherAllUsers=1 PrependPath=1 Include_test=0
Write-Host "Please wait while Python is installing..."
python --version
