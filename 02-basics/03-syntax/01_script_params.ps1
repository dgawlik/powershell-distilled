
# As far as I know you can specify any C# type as a parameter
param (
    [string] $Name,
    [int] $Age
)

# You can interpolate strings
echo "Hello, $Name! You are $Age years old."

# This also works and sometimes comes in handy
echo "Hello, ${Name}!"