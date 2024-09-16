

# Similar to pipes in linux shell, the output of the first 
# command is passed as input to the second command
# by using the pipe operator "|". This is called success pipline. 
# Error pipline is by default nonterminating.

write-error "This is an error message"

write-error "error 2 (you can see it)"

function quux() {
    throw "error from quux"
}

function bar () {
    quux
}

function foo() {
    bar
}
try {
    foo
} catch {
    # This is how you can print the stacktrace
    echo $_.ScriptStackTrace
}
