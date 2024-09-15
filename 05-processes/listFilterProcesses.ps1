
$processes = Get-Process

$processes | Where-Object { $_.WorkingSet64 -gt 1MB } | ForEach-Object {
    Write-Output "Process ID: $($_.Id)"
    Write-Output "Process Name: $($_.Name)"
    Write-Output "Start Time: $($_.StartTime)"
    Write-Output "Responding: $($_.Responding)"
    Write-Output "CPU Time: $($_.CPU)"
    Write-Output "Memory: $($_.PM)"
    Write-Output "Path: $($_.Path)"
    Write-Output "-----"
}

# Filter processes by name

$processes | Where-Object { $_.Name -eq "msedge" } | ForEach-Object {
    Write-Output "Process ID: $($_.Id)"
    Write-Output "Process Name: $($_.Name)"
    Write-Output "Start Time: $($_.StartTime)"
    Write-Output "Responding: $($_.Responding)"
    Write-Output "CPU Time: $($_.CPU)"
    Write-Output "Memory: $($_.PM)"
    Write-Output "Path: $($_.Path)"
    Write-Output "-----"
}