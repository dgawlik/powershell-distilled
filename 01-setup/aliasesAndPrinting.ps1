

# Write-Output prints to the console the object contents
# aliases: write, echo

Write-Output "Hello, World!"
echo "Hello, World!"
write "Hello, World!"


# Similar to pipes in linux shell, the output of the first command is passed as input to the second command
# by using the pipe operator "|". This is called success pipline. Alternatively you can also write
# the output to the error steam by using command write-error. This is for non-terminating errors.

write-error "This is an error message"

# And now this is how you can print the stacktrace 

try {
    throw "This is an error message"
} catch {
    write-error $_
    write-error $PSItem.ScriptStackTrace
}

# This is how you can set alias in powershell

Set-Alias -Name "print" -Value "Write-Output"

print "Hello, World!"

# To make alias permanent, you can add the alias to your profile script.
# The profile script is a script that is run every time you start a new PowerShell session.
# You can find the location of the profile script by running the following command:

echo $profile

# just write the alias in the profile script

# Likewise you can get the alias by name 
get-alias write

# To remove an alias, you can use the Remove-Alias cmdlet
Remove-Alias -Name write

write "Hello, World!" # This will throw an error