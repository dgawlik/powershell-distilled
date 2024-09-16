
# Prints content of the file

get-content -path .\01_new_item.ps1
# gc -path .\01_new_item.ps1
# type -path .\01_new_item.ps1

# Use -Raw to get content of a file as a string

$str = get-content -path .\01_new_item.ps1 -Raw
echo $str.Replace("-Path", "-Destination")

# Set content of a file
set-content -path .\something.txt -Value "Hello, World!"

# Append content to a file
add-content -path .\something2.txt -Value $str

# Cleanup
ri -Path ".\something.txt"
ri -Path ".\something2.txt"