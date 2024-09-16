
param (
    [string] $Name,
    [int] $Age
)

# If statements

# Test operators are

# Equality: -eq -ne
# Relational: -gt -lt -ge -le
# Logical: -and -or -not -or
# Pattern matching: -like -notlike -match -notmatch
# Containment: -contains -notcontains -in -notin
# and more...

if ($Name -eq "Dominik") {
    Write-Output "Hello, $Name!"
} elseif ($Name -eq "Pawel") {
    Write-Output "Hello, Pawel!"
} else {
    Write-Output "Hello, World!"
}



