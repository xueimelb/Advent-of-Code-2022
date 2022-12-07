$pairs = Get-Content C:\AOC\2022\DA04input
$totalOverlap = 0
$totalParttialOverlap = 0

foreach ($pair in $pairs) {
    $A = $pair.Substring(0,$pair.IndexOf(","))
    $B = $pair.Substring($pair.IndexOf(",")+1)
    $Astart = [int]($A.Substring(0,$A.IndexOf("-")))
    $Aend = [int]($A.Substring($A.IndexOf("-")+1))
    $Bstart = [int]($B.Substring(0,$B.IndexOf("-")))
    $Bend = [int]($B.Substring($B.IndexOf("-")+1))
    if (($Astart -ge $Bstart -and $Aend -le $Bend) -or ($Bstart -ge $Astart -and $Bend -le $Aend)) {$totalOverlap++}
    if ((($Astart -ge $Bstart -and $Astart -le $Bend) -and ($Aend -ge $Bstart -and $Aend -le $Bend)) -or (($Bstart -ge $Astart -and $Bstart -le $Aend) -or ($Bend -ge $Astart -and $Bend -le $Aend))) {$totalParttialOverlap++}
}

Write-Host "Part 1:" $totalOverlap
Write-Host "Part 2:" $totalParttialOverlap
