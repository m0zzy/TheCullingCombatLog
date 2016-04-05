$watchFile = "$env:USERPROFILE\appdata\Local\victory\Saved\Logs\victory.log"
$console = $host.UI.RawUI
$console.ForegroundColor = "white"
$console.BackgroundColor = "black"
cls
Write-Host "Combat Log"

Get-Content $watchFile -wait | Where-Object {$_ -match '.*You Hit.*|.*Struck by.*|.*ACH_.*'}| ForEach-Object { $_ -replace ".*:" }





