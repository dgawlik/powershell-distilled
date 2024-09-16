

Set-Alias -Name "print" -Value "Write-Output"

print "Hello, World!"

# To make alias permanent, you can add the alias to your 
# profile script. The profile script is a script that is 
# run every time you start a new PowerShell session.
# You can find the location of the profile script by 
# running the following command:

echo $profile

# just write the alias in the profile script


# Likewise you can get the alias by name 
get-alias write

# To remove an alias, you can use the Remove-Alias cmdlet
Remove-Alias -Name write

# This would throw an error

# write "Hello, World!" # This will throw an error