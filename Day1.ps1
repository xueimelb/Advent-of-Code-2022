$input = Get-Content C:\AOC\Day01input
$totals = [System.Collections.ArrayList]@()
$calories = 0
foreach ($item in $input) {
    if ($item -gt 0) {$item | Out-Null} else {$totals.Add($calories) | Out-Null; $calories = 0}
    $calories += $item
    if ($Item -eq $input[-1]) {$totals.Add($calories) | Out-Null}
}
$totalsSorted = $totals | Sort-Object -Descending
$top = $totalsSorted[0] + $totalsSorted[1] + $totalsSorted[2]

Write-Host "Answer for part 1 is "$totalsSorted[0]
Write-Host "Answer for part 2 is $top"
