$in = get-content .\input.txt

StringNumber = (
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "zero"
)

$superResult = $null

foreach ($item in $in) {
    $n = $null
    foreach ($char in $item.ToCharArray()) {
        if ($char -like "*[0-9]*") {
            $n += "$char"
        }
    }
    $result = $n[0]
    $result += $n[-1]
    #$result
    $superResult = [int]$superResult + [int]$result
    #Write-Host "End of Line in array"
}

Write-Host "sum of all: $superResult"