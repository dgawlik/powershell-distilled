

# Read a JSON file

$jsonRaw = Get-Content -Path .\sample.json -Raw

# Convert JSON to PowerShell object

$json = ConvertFrom-Json -InputObject $jsonRaw

# Access the properties of the object
$json.Name = "Dominik"

# Convert the object back to JSON
$jsonRaw = ConvertTo-Json -InputObject $json

# Write the JSON to a file
$jsonRaw | Set-Content -Path .\sample-processed.json

