
# Write-Output prints to the console the object contents

Write-Output "Hello, World!"

# This is it's alias
echo "Hello, World!"

# This too
write "Hello, World!"

# Write-Debug prints to the console the object contents
# only if the $DebugPreference variable is set to "Continue" or "Inquire"

echo $DebugPreference

write-debug "You shouldn't see this message"

$DebugPreference = "Continue"

write-debug "You should see this message"