

$processOptions = @{
    FilePath = "ping"
    ArgumentList = "google.com"
    RedirectStandardOutput = "outPing.txt"
    RedirectStandardError = "errPing.txt"
    UseNewEnvironment = $true
}

# Start the process and redirect stdout to a file
Start-Process @processOptions -NoNewWindow -Wait

# Read the output from the file
$output = Get-Content -Path "outPing.txt"
echo $output

# Clean up the output file
ri -Path "outPing.txt"
ri -Path "errPing.txt"