
$numbersArray = @()

$input = (
    "fivethreeonezblqnsfk1",
    "two74119onebtqgnine",
    "jrjh5vsrxbhsfour3",
    "tn5eightfncnzcdtthree8",
    "kpmrk5flx",
    "fkxxqxdfsixgthreepvzjxrkcfk6twofour",
    "dqbx6six5twoone",
    "glmsckj2bvmts1spctnjrtqhmbxzq",
    "7sixthreerzmpbffcx",
    "zhss9gfxfgmrmzthreefivevpkljfourtwoeight",
    "6tfzvrbkfour",
    "sevenfive66five851",
    "drsgdrrgscqmsggrgq1fsqjhtkkrltt",
    "3ftptvzhvrm5",
    "twoeightninemfsztp2gbqkpgqvzt6threekcdcp",
    "four156",
    "959157fourfive",
    "sixthreetwo87one7fourdbczdbjcc",
    "lshzfive7",
    "38ninethreethreesevensixeight"
)

function ConvertToNumber {
    param (
        [string]$item
    )
    $StringNumber = @(
        "zero", 
        "one", 
        "two", 
        "three", 
        "four", 
        "five",
        "six", 
        "seven", 
        "eight", 
        "nine"
    )
    for ($i = 0; $i -lt $StringNumber.Length; $i++) {
        if ($item -match $StringNumber[$i]) {
            $item = $item -replace $StringNumber[$i], $i
        }
    }
    return $item
}


