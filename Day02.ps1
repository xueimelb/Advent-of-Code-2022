$strat = Get-Content C:\AOC\Day02input
$points = 0
foreach ($round in $strat) {
    if ($round -eq "A X") {$points += 4}
    elseif ($round -eq "A Y") {$points += 8}
    elseif ($round -eq "A Z") {$points += 3}
    elseif ($round -eq "B X") {$points += 1}
    elseif ($round -eq "B Y") {$points += 5}
    elseif ($round -eq "B Z") {$points += 9}
    elseif ($round -eq "C X") {$points += 7}
    elseif ($round -eq "C Y") {$points += 2}
    elseif ($round -eq "C Z") {$points += 6}
}
Write-Host "Answer for part 1 is $points"
$points = 0
foreach ($round in $strat) {
    if ($round -eq "A X") {$points += 0; $points += 3}
    elseif ($round -eq "A Y") {$points += 3; $points += 1}
    elseif ($round -eq "A Z") {$points += 6; $points += 2}
    elseif ($round -eq "B X") {$points += 0; $points += 1}
    elseif ($round -eq "B Y") {$points += 3; $points += 2}
    elseif ($round -eq "B Z") {$points += 6; $points += 3}
    elseif ($round -eq "C X") {$points += 0; $points += 2}
    elseif ($round -eq "C Y") {$points += 3; $points += 3}
    elseif ($round -eq "C Z") {$points += 6; $points += 1}
}
Write-Host "Answer for part 2 is $points"
