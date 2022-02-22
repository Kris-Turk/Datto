# Install TMP Datto
$siteID = '33bfcffd-ecf1-41ad-9364-3c1f09203623'
$appName = 'Datto'
$tmplocation = 'AppInstalls'
$drive = 'C:\'
New-Item -Path $drive -Name $tmplocation  -ItemType Directory -ErrorAction SilentlyContinue
New-Item -Path $drive\$tmplocation -Name $appName -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = $drive + '\' + $tmplocation + '\' + $appName
set-Location $LocalPath
$URL = 'https://merlot.centrastage.net/csm/profile/downloadAgent/' + $SiteID
$URLexe = 'DattoWindowsAgent.exe'
$outputPath = $LocalPath + '\' + $URLexe
Invoke-WebRequest -Uri $URL -OutFile $outputPath
write-host 'Starting Install  Datto'
Start-Process -FilePath $outputPath -Args "/quiet /norestart " -Wait
write-host 'Finished Install the of Datto'