function Get-Priority {

    param ($item)

# Convert item to priority
    $priority = switch -CaseSensitive ($item) {
        "a" {"1"}
        "b" {"2"}
        "c" {"3"}
        "d" {"4"}
        "e" {"5"}
        "f" {"6"}
        "g" {"7"}
        "h" {"8"}
        "i" {"9"}
        "j" {"10"}
        "k" {"11"}
        "l" {"12"}
        "m" {"13"}
        "n" {"14"}
        "o" {"15"}
        "p" {"16"}
        "q" {"17"}
        "r" {"18"}
        "s" {"19"}
        "t" {"20"}
        "u" {"21"}
        "v" {"22"}
        "w" {"23"}
        "x" {"24"}
        "y" {"25"}
        "z" {"26"}
        "A" {"27"}
        "B" {"28"}
        "C" {"29"}
        "D" {"30"}
        "E" {"31"}
        "F" {"32"}
        "G" {"33"}
        "H" {"34"}
        "I" {"35"}
        "J" {"36"}
        "K" {"37"}
        "L" {"38"}
        "M" {"39"}
        "N" {"40"}
        "O" {"41"}
        "P" {"42"}
        "Q" {"43"}
        "R" {"44"}
        "S" {"45"}
        "T" {"46"}
        "U" {"47"}
        "V" {"48"}
        "W" {"49"}
        "X" {"50"}
        "Y" {"51"}
        "Z" {"52"}
    }

    Write-Output $priority
}

# Import the list of items in each sack and declare some base variables
$sacks = Get-Content C:\AOC\2022\Day03input
$sum = 0
$value = 0


# For each sack, find item that overlaps
foreach ($sack in $sacks) {
    $compartment1 = $sack.Substring(0,$sack.Length/2)
    $compartment2 = $sack.Substring($sack.Length/2)
    foreach ($item in $compartment1.tochararray()) {
        if ($compartment2.IndexOf($item) -ne -1) {$overlap = $item; break}
    }

# Add value to sum
    $value = Get-Priority $overlap
    $sum += $value
}

# Display output
Write-Host "The sum for the overlap items (part 1) is $sum"
