
param(
    [Parameter(Mandatory)]
    [String] $port
)

# Get the TCP connections listening on the specified port
$connections = Get-NetTCPConnection -LocalPort $port -State Listen

# Display the services listening on the specified port
foreach ($connection in $connections) {
    $process = Get-Process -Id $connection.OwningProcess
    [PSCustomObject]@{
        Port = $connection.LocalPort
        ProcessId = $connection.OwningProcess
        ProcessName = $process.ProcessName
    }
}