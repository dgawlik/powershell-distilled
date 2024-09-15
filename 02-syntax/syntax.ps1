
param (
    [string] $Name
)


# If statements
if ($Name -eq "Dominik") {
    Write-Output "Hello, $Name!"
} else {
    Write-Output "Hello, World!"
}

# Switch statements
# Arrays

$Names = @("Dominik", "World", "Something else")
$Names += "Pawel"

foreach ($Name in $Names) {
    switch ($Name) {
        "Dominik" {
            Write-Output "Hello, $Name!"
        }
        "World" {
            Write-Output "Hello, World!"
        }
        default {
            Write-Output "Hello, Stranger!"
        }
    }
}

# Hash tables

$NameMapping = @{
    "Dominik" = "Hello, Dominik!"
    "World" = "Hello, World!"
}

$NameMapping.Add("Pawel", "Hello, Pawel!")

foreach ($Name in $Names) {
    if ($NameMapping.ContainsKey($Name)) {
        Write-Output $NameMapping[$Name]
    } else {
        Write-Output "Hello, Stranger!"
    }
}

