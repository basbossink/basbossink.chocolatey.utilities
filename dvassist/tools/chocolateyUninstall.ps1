try { 
    Get-Process DVAssist | Stop-Process 
    $shortCutPath = Join-Path ([Environment]::GetFolderPath(7)) "DvorakAssist.lnk"
    if(Test-Path $shortCutPath) {
        Remove-Item $shortCutPath 
    }
    Write-ChocolateySuccess "$packageName"
} catch {
    Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw 
}
