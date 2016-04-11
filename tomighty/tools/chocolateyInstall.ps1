$packageName = 'tomighty' # arbitrary name for the package, used in messages
$url = 'http://tomighty.googlecode.com/files/tomighty-0.7.1.exe' # download url
$url64 = $url # 64bit URL here or just use the same as $url
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$targetFullName = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Definition) tomighty-0.7.1.exe
Get-ChocolateyWebFile "$packageName" "$targetFullName" "$url" "$url64"
$wshell = new-object -comObject WScript.Shell
$shortCutPath = Join-Path ([Environment]::GetFolderPath(7)) "tomighty.lnk"
$shortCut = $wshell.CreateShortcut($shortCutPath)
$shortCut.TargetPath = $targetFullName 
$shortCut.Save() 
