$packageName = 'tomighty'
$url = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/tomighty/tomighty-0.7.1-install.exe'
$url64 = $url
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  silentArgs    = "/S"
  validExitCodes= @(0)
  checksum      = '2D547C5BE3420257AF3C0A4FD30BDAD2D8B4044A1F2382C0BE866ECFE12A4283'
  checksumType  = 'sha256'
  checksum64    = '2D547C5BE3420257AF3C0A4FD30BDAD2D8B4044A1F2382C0BE866ECFE12A4283'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
