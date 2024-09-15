
# Create new file with default content

New-Item -Path .\sample.txt -ItemType File -Value "Hello, World!"

# Create directory

New-Item -Path .\sample -ItemType Directory

# Create file in multiple directories

ni -Path .\sample\d1 -itemtype Directory
ni -path .\sample\d2 -itemtype directory

ni -path .\sample\* -name temp.txt -itemtype file

Remove-item -path .\sample\d1 -recurse
ri -path .\sample\d2 -recurse

# Use -force to remove read-only and hidden files

# Copy file

ni -path ".\text" -itemtype "file" -value "Hello, World!"
ni -path ".\dir" -itemtype "directory"
cp ".\text" -Destination ".\dir\text-copy"

cp -path ".\dir" -Destination ".\dir-copy" -recurse

# Move file

mv -path ".\text" -Destination ".\dir\text-moved"

# Cleanup

ri -Path ".\sample.txt"
ri -path ".\dir" -Recurse
ri -path ".\dir-copy" -Recurse
ri -path ".\sample" -Recurse


# Get-ChildItem aliases are gci, ls, dir

# List files in current directory

gci -Path .\

gci -Path .\ -Name # Names only

# Recursively list files in current directory

gci -Path .\ -Recurse -Force


# Only files with extension

gci -Path .\ -Recurse -Include *.txt -Exclude *.bak

# List files in current directory and sort by size
gci -Path .\ -Recurse | Sort-Object -Property Length




