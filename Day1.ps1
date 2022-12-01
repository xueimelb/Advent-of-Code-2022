$input = Get-Content C:\AOC\input
$totals = [System.Collections.ArrayList]@()
$calories = 0
foreach ($item in $input) {
    if ($item -gt 0) {$item} else {$totals.Add($calories); $calories = 0}
    $calories += $item
    if ($Item -eq $input[-1]) {$totals.Add($calories)}
}
$totalsSorted = $totals | Sort-Object -Descending
$top = $totalsSorted[0] + $totalsSorted[1] + $totalsSorted[2]
