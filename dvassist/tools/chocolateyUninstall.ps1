Get-Process DVAssist -ErrorAction SilentlyContinue | Stop-Process -ErrorAction SilentlyContinue
$shortCutPath = Join-Path ([Environment]::GetFolderPath(7)) "DvorakAssist.lnk"
if(Test-Path $shortCutPath) {
    Remove-Item $shortCutPath 
}
