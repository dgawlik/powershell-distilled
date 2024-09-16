

$Names = @("alpha", "beta", "gamma")

# Appending
$Names += "zeta"

$first = $Names[0]

# last element
$picked =  $Names[-1]

# Slicing
$Names = $Names[0..($Names.Length - 2)]

# Insert on second position
$Names = $Names[0], $picked, $Names[1..($Names.Length - 1)]

# Iterating
foreach ($Name in $Names) {
    Write-Output $Name
}