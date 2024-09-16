
ni -Path ".\text" -ItemType File -Value "Hello, World!"

cp ".\text" -Destination ".\text-copy"

ni -Path ".\dir" -ItemType Directory

cp -path ".\dir" -Destination ".\dir-copy" -recurse

ri -Path ".\text"
ri -Path ".\text-copy"
ri -Path ".\dir"
ri -Path ".\dir-copy"