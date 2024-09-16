
param (
    [string] $Name,
    [int] $Age
)

$sw = "$Name $Age"

# Not too impressive but you can have wildards in switch
# Btw powershell does not have tuples
switch -Wildcard ($sw) {
     "Dominik 33" {
        Write-Output "Hey, this is me!"
    }
    "Dominik *" {
        Write-Output "Somebody named Dominik!"
    }
    default {
        Write-Output "Hello, Stranger!"
    }
}