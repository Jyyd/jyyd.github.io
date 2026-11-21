param([string]$ImageRoot = (Join-Path $PSScriptRoot '../assets/images'))
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing
$utf8 = New-Object Text.UTF8Encoding($false)
foreach ($group in @('pubs', 'talks', 'life')) {
    $destination = Join-Path $ImageRoot "display/$group"
    New-Item -ItemType Directory -Force -Path $destination | Out-Null
    foreach ($source in Get-ChildItem -LiteralPath (Join-Path $ImageRoot $group) -File) {
        if ($source.Extension -notin @('.png', '.jpg', '.jpeg')) { continue }
        $bitmap = [Drawing.Image]::FromFile($source.FullName)
        try { $width = $bitmap.Width; $height = $bitmap.Height } finally { $bitmap.Dispose() }
        $scale = [Math]::Min(1152.0 / $width, 752.0 / $height)
        $w = ($width * $scale).ToString('0.###', [Globalization.CultureInfo]::InvariantCulture)
        $h = ($height * $scale).ToString('0.###', [Globalization.CultureInfo]::InvariantCulture)
        $x = ((1200 - $width * $scale) / 2).ToString('0.###', [Globalization.CultureInfo]::InvariantCulture)
        $y = ((800 - $height * $scale) / 2).ToString('0.###', [Globalization.CultureInfo]::InvariantCulture)
        $mime = if ($source.Extension -eq '.png') { 'image/png' } else { 'image/jpeg' }
        $encoded = [Convert]::ToBase64String([IO.File]::ReadAllBytes($source.FullName))
        $people = $group -eq 'life' -or ($group -eq 'talks' -and $source.Name -notlike '*helianbang*')
        $mask = if ($people) { ' mask="url(#soft-x)"' } else { '' }
        $innerMask = if ($people) { ' mask="url(#soft-y)"' } else { '' }
        $svg = @"
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="1200" height="800" viewBox="0 0 1200 800">
<defs>
<linearGradient id="edge-x"><stop offset="0" stop-color="white" stop-opacity="0"/><stop offset=".025" stop-color="white"/><stop offset=".975" stop-color="white"/><stop offset="1" stop-color="white" stop-opacity="0"/></linearGradient>
<linearGradient id="edge-y" x2="0" y2="1"><stop offset="0" stop-color="white" stop-opacity="0"/><stop offset=".025" stop-color="white"/><stop offset=".975" stop-color="white"/><stop offset="1" stop-color="white" stop-opacity="0"/></linearGradient>
<mask id="soft-x" maskContentUnits="objectBoundingBox"><rect width="1" height="1" fill="url(#edge-x)"/></mask>
<mask id="soft-y" maskContentUnits="objectBoundingBox"><rect width="1" height="1" fill="url(#edge-y)"/></mask>
</defs>
<g transform="translate($x $y)"><g$mask><image$innerMask width="$w" height="$h" preserveAspectRatio="xMidYMid meet" xlink:href="data:$mime;base64,$encoded"/></g></g>
</svg>
"@
        [IO.File]::WriteAllText((Join-Path $destination ($source.BaseName + '.svg')), $svg, $utf8)
    }
}
