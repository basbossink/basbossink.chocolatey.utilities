$packageName = 'dvassist' # arbitrary name for the package, used in messages
$url = 'http://downloads.sourceforge.net/dvassist/dvassist.2.0.1.61.zip' # download url
$url64 = $url # 64bit URL here or just use the same as $url
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"

try { 
    $wshell = new-object -comObject WScript.Shell
    $shortCutPath = Join-Path ([Environment]::GetFolderPath(7)) "DvorakAssist.lnk"
    $shortCut = $wshell.CreateShortcut($shortCutPath)
    $shortCut.TargetPath = Join-Path (Split-Path $MyInvocation.MyCommand.Definition) "DVAssist.exe"
    $shortCut.Save() 
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
