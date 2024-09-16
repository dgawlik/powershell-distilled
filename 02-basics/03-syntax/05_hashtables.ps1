
$fruits = @{
    "orange" = "1"
    "apple" = "2"
    "banana" = "4"
}

echo $fruits["orange"]

echo $fruits.ContainsKey("apple")

foreach ($key in $fruits.Keys) {
    $val = [Convert]::ToInt32($fruits[$key])
    # Intersting you have to use $($val*3) to evaluate expression
    echo $($val*3)
    # Just as I thought you have to convert to int32 first
    echo $($fruits[$key]*3)
}


