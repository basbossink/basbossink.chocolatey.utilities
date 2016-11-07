$packageArgs = @{
    packageName   = 'tomighty'
    fileType      = 'exe'
    silentArgs    = "/S"
    validExitCodes= @(0)
    File = (Join-Path (Join-Path $env:ProgramFiles "Tomighty") "tomighty_uninstall.exe")
}

Uninstall-ChocolateyPackage @packageArgs
