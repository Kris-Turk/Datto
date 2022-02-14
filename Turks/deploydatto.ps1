# Install TMP Datto
$appName = 'Datto'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\AppInstalls\' + $appName
mkdir $LocalPath
set-Location $LocalPath
$URL = 'https://merlot.centrastage.net/csm/profile/downloadAgent/33bfcffd-ecf1-41ad-9364-3c1f09203623'
$URLexe = 'DattoWindowsAgent.exe'
$outputPath = $LocalPath + '\' + $URLexe
Invoke-WebRequest -Uri $URL -OutFile $outputPath
write-host 'Starting Install  Datto'
Start-Process -FilePath $outputPath -Args "/quiet /norestart " -Wait
write-host 'Finished Install the of Datto'