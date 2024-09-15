

# Range example

foreach ($i in 0..10) {
    Write-Output $i
}

# Reverse range example

foreach ($i in 10..0) {
    Write-Output $i
}

# Range with step example

function Get-RangeWithStep {
    param (
        [int]$start,
        [int]$end,
        [int]$step
    )

    if ($step -eq 0) {
        throw "Step value cannot be zero."
    }

    if ($start -le $end) {
        for ($i = $start; $i -le $end; $i += $step) {
            $i
        }
    } else {
        for ($i = $start; $i -ge $end; $i += $step) {
            $i
        }
    }
}

Get-RangeWithStep -start 10 -end 0 -step -2 | ForEach-Object { Write-Output $_ }

# The foreach-object cmdlet processes each item in the pipeline

1..5 | ForEach-Object { Write-Output $_ }


# Use of enummerator

$collection = 1..5

$enumerator = $collection.GetEnumerator()

while ($enumerator.MoveNext()) {
    $currentItem = $enumerator.Current
    Write-Output $currentItem
}



