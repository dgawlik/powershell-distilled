
# This is equivalent to touch command in bash

# Create new file with default content

New-Item -Path .\sample.txt -ItemType File -Value "Hello, World!"

# Create directory
ni -Path .\sample -ItemType Directory

# Cleanup

Remove-item -path .\sample.txt
Remove-Item -Path .\sample -Recurse
