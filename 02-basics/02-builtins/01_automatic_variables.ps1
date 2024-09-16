

# This is how you get access to positional arguments
# invoke this script with some parameters to see the output 
echo $args

# This is current user's home path
echo $HOME

# This is stdin
foreach ($i in $input) {
    echo $i
}


# This is last exit code either from native program or powershell script
echo $LASTEXITCODE

# Null object is represented by $null. It is treated as existing object, buy without value

"one", $null, "three" | ForEach-Object { "Hello " + $_}

# Echo this is the path to current script file

echo $PSCommandPath

#Likewise this is root of exection context

echo $PSScriptRoot