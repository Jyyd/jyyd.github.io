param([string]$Username = 'Jyyd')

$ErrorActionPreference = 'Stop'
$headers = @{ 'User-Agent' = 'Personal-Homepage-Language-Card'; 'Accept' = 'application/vnd.github+json' }
$repos = @()
$pageNumber = 1
do {
    $response = Invoke-RestMethod -Uri "https://api.github.com/users/$Username/repos?type=owner&per_page=100&page=$pageNumber" -Headers $headers
    $batch = @($response)
    $repos += $batch
    $pageNumber++
} while ($batch.Count -eq 100)

$totals = @{}
$includedRepos = @()
foreach ($repo in ($repos | Where-Object { -not $_.fork -and -not $_.disabled })) {
    $languages = Invoke-RestMethod -Uri $repo.languages_url -Headers $headers
    if (@($languages.PSObject.Properties).Count -gt 0) {
        $includedRepos += $repo.name
    }
    foreach ($property in $languages.PSObject.Properties) {
        $totals[$property.Name] += [long]$property.Value
    }
}
if ($totals.Count -eq 0) { throw 'GitHub returned no language data.' }
$all = @($totals.GetEnumerator() | Sort-Object Value -Descending)
$totalBytes = [long](($all | Measure-Object Value -Sum).Sum)
$colors = @{
    'Jupyter Notebook' = '#DA5B0B'; 'Python' = '#3572A5'; 'JavaScript' = '#c6ad27';
    'HTML' = '#d65c40'; 'CSS' = '#7352a6'; 'SCSS' = '#b4608c'; 'Ruby' = '#a34444';
    'Shell' = '#6e9663'; 'C++' = '#d36a93'; 'MATLAB' = '#dd8535'; 'Other' = '#a6a0b6'
}
$items = @()
foreach ($entry in ($all | Select-Object -First 6)) {
    $color = $colors[$entry.Key]
    if (-not $color) { $color = '#8c80b3' }
    $items += [ordered]@{ name = $entry.Key; bytes = [long]$entry.Value; percent = [Math]::Round(100.0 * $entry.Value / $totalBytes, 2); color = $color }
}
$otherBytes = [long](($all | Select-Object -Skip 6 | Measure-Object Value -Sum).Sum)
if ($otherBytes -gt 0) {
    $items += [ordered]@{ name = 'Other'; bytes = $otherBytes; percent = [Math]::Round(100.0 * $otherBytes / $totalBytes, 2); color = $colors['Other'] }
}
$sourceAll = @($all | Where-Object { $_.Key -ne 'Jupyter Notebook' })
$sourceBytes = [long](($sourceAll | Measure-Object Value -Sum).Sum)
$sourceItems = @()
foreach ($entry in ($sourceAll | Select-Object -First 6)) {
    $color = $colors[$entry.Key]
    if (-not $color) { $color = '#8c80b3' }
    $sourceItems += [ordered]@{ name = $entry.Key; bytes = [long]$entry.Value; percent = [Math]::Round(100.0 * $entry.Value / $sourceBytes, 2); color = $color }
}
$sourceOther = [long](($sourceAll | Select-Object -Skip 6 | Measure-Object Value -Sum).Sum)
if ($sourceOther -gt 0) {
    $sourceItems += [ordered]@{ name = 'Other'; bytes = $sourceOther; percent = [Math]::Round(100.0 * $sourceOther / $sourceBytes, 2); color = $colors['Other'] }
}
$result = [ordered]@{
    username = $Username
    updated = [TimeZoneInfo]::ConvertTimeBySystemTimeZoneId([DateTime]::UtcNow, 'China Standard Time').ToString('yyyy-MM-dd')
    repository_count = $includedRepos.Count
    repositories = $includedRepos
    total_bytes = $totalBytes
    source_bytes = $sourceBytes
    metric = 'Source-file bytes in public non-fork repositories; includes markup; excludes Jupyter Notebook files.'
    languages = $sourceItems
    all_languages = $items
}
$outputPath = Join-Path (Split-Path $PSScriptRoot -Parent) '_data/github_languages.json'
[IO.File]::WriteAllText($outputPath, ($result | ConvertTo-Json -Depth 5) + "`n", (New-Object System.Text.UTF8Encoding($false)))
Write-Output "Updated language card from $($includedRepos.Count) public repositories."
$sourceItems | ForEach-Object { Write-Output "$($_.name): $($_.percent)%" }
