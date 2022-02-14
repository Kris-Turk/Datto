# Install TMP Datto
$appName = 'Datto'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\AppInstalls\' + $appName
mkdir $LocalPath
set-Location $LocalPath
$URL = 'https://merlot.centrastage.net/csm/profile/downloadAgent/412b8165-1827-4519-9db3-7c611bd1b028'
$URLexe = 'DattoWindowsAgent.exe'
$outputPath = $LocalPath + '\' + $URLexe
Invoke-WebRequest -Uri $URL -OutFile $outputPath
write-host 'Starting Install  Datto'
Start-Process -FilePath $outputPath -Args "/quiet /norestart " -Wait
write-host 'Finished Install the of Datto'