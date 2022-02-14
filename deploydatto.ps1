# Install TMP Datto
$appName = 'Datto'
$drive = 'C:\'
New-Item -Path $drive -Name $appName  -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\AppInstalls\' + $appName 
set-Location $LocalPath
$URL = 'https://raw.githubusercontent.com/Kris-Turk/Datto/main/tmp/AgentSetup_The%2BMarketing%2BPractice.exe'
$URLexe = 'DattoWindowsAgent.exe'
$outputPath = $LocalPath + '\' + $URLexe
Invoke-WebRequest -Uri $URL -OutFile $outputPath
write-host 'Starting Install  KeePass'
Start-Process -FilePath $outputPath -Args "/quiet /norestart " -Wait
write-host 'Finished Install the of Datto'