
# Invoke-RestMethod is a cmd that parses JSON and XML responses
# Alias: irm

$response = Invoke-RestMethod -Uri "https://jsonplaceholder.typicode.com/posts/1"

$response | Format-List

# A more complex example

$body = @{
    title = "foo"
    body = "bar"
    userId = 1
} | ConvertTo-Json

# Make a POST request
$response = irm -Uri "https://jsonplaceholder.typicode.com/posts" -Method Post -Body $body -ContentType "application/json"

# Display the response
$response

# Invoke-WebRequest is a cmd that is general purpose
# Alias: iwr

# Make a GET request
$response = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/posts/1"

# Display the response content
$response.Content

# Invoke with a proxy

$response = Invoke-WebRequest -Uri "https://jsonplaceholder.typicode.com/posts/1" -Proxy "http://134.174.149.59:3128"

$response.Content

