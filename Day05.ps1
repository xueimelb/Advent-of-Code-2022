$stacks = Get-Content C:\AOC\2022\Day05inputDATA.txt #Note, data was reformatted from columns to rows
$instructions = Get-Content C:\AOC\2022\Day05inputINSTRUCTIONS.txt

foreach ($instruction in $instructions) {
    $parts = $instruction.Split(" ")
    $quantity = $parts[1]
    $sourceNo = $parts[3]-1
    $destNo = $parts[5]-1
    $source = $stacks[$sourceNo]
    $dest = $stacks[$destNo]
    foreach ($number in 1..$quantity) {
        $dest += $source.Substring($source.Length-1)
        $source = $source.Substring(0,$source.Length-1)
        $stacks[$sourceNo] = $source
        $stacks[$destNo] = $dest
    }
}   
$first = $null
foreach ($stack in $stacks) {$first += $stack.Substring($stack.Length-1)}

$stacks = Get-Content C:\AOC\2022\Day05inputDATA.txt
foreach ($instruction in $instructions) {
    $parts = $instruction.Split(" ")
    $quantity = $parts[1]
    $sourceNo = $parts[3]-1
    $destNo = $parts[5]-1
    $source = $stacks[$sourceNo]
    $dest = $stacks[$destNo]
    $dest += $source.Substring($source.Length-$quantity)
    $source = $source.Substring(0,$source.Length-$quantity)
    $stacks[$sourceNo] = $source
    $stacks[$destNo] = $dest
}
$second = $null
foreach ($stack in $stacks) {$second += $stack.Substring($stack.Length-1)}

Write-Host "First $first"
Write-Host "Second $second"
