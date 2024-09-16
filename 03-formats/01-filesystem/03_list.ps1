gci -Path ..\

gci -Path ..\ -Name # Names only

# Recursively list files in current directory

gci -Path ..\ -Recurse -Force


echo "This should be empty"
gci -Path ..\ -Recurse -Include *.txt -Exclude *.ps1