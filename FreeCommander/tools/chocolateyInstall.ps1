$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$packageName = 'FreeCommander'
$installerType = 'exe'
$url = 'http://www.freecommander.com/FreeCommanderXE_setup.zip' 
$silentArgs = '/VERYSILENT','/NORESTART','/CLOSEAPPLICATIONS','/RESTARTAPPLICATIONS','/SUPPRESSMSGBOXES'
$validExitCodes = @(0)
Install-ChocolateyZipPackage $packageName $url $toolsDir
$fileToInstall = Join-Path $toolsDir "FreeCommanderXE_setup.exe"
Install-ChocolateyInstallPackage $packageName $installerType $silentArgs $fileToInstall -validExitCodes @validExitCodes