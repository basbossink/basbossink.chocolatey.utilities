try { 
    $shortCutPath = Join-Path ([Environment]::GetFolderPath(7)) "tomighty.lnk"
    if(Test-Path $shortCutPath) {
        Remove-Item $shortCutPath 
    }
    Write-ChocolateySuccess "$packageName"
} catch {
    Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw 
}
