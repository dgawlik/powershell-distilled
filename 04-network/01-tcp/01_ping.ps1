
# This is equilvalent to ping command in bash

test-connection -targetname google.com -count 4

# Now track hops
test-connection -traceroute -targetname google.com