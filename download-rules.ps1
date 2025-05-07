$apiUrl = "https://api.github.com/repos/johnlindquist/rules/contents"
$rawUrl = "https://raw.githubusercontent.com/johnlindquist/rules/main"
$destDir = ".cursor/rules"

if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir | Out-Null
}

Write-Host "Fetching rule file list..."

try {
    $response = Invoke-RestMethod -Uri $apiUrl
    foreach ($item in $response) {
        if ($item.name -like "*.mdc") {
            $destFile = Join-Path $destDir $item.name
            if (Test-Path $destFile) {
                Write-Host "  - $($item.name) already exists, skipping."
            } else {
                Write-Host "  - Downloading $($item.name)"
                Invoke-WebRequest -Uri "$rawUrl/$($item.name)" -OutFile $destFile
            }
        }
    }
    Write-Host "All rules installed to $destDir"
} catch {
    Write-Error "Failed to fetch or download rules: $_"
    exit 1
} 