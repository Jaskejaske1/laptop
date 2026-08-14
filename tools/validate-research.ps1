param(
    [string]$Root = (Split-Path -Parent $PSScriptRoot),
    [switch]$AllowLegacy
)

$ErrorActionPreference = 'Stop'
$errors = [Collections.Generic.List[string]]::new()
function Fail([string]$Message) { $script:errors.Add($Message) }

function Read-FrontMatter([string]$Path) {
    $lines = Get-Content -LiteralPath $Path
    if ($lines.Count -lt 3 -or $lines[0] -ne '---') { Fail "Missing front matter: $Path"; return @{} }
    $end = [Array]::IndexOf($lines, '---', 1)
    if ($end -lt 2) { Fail "Unclosed front matter: $Path"; return @{} }
    $data = @{}
    for ($i=1; $i -lt $end; $i++) {
        if ($lines[$i] -match '^([a-z_]+):\s*(.*)$') { $data[$matches[1]] = $matches[2].Trim() }
    }
    return $data
}

function Array-Values([string]$Raw) {
    if (-not $Raw -or $Raw -eq '[]') { return @() }
    return @([regex]::Matches($Raw, '"((?:\\.|[^"])*)"') | ForEach-Object { $_.Groups[1].Value })
}

$archive = Join-Path $Root 'research/archive/pre-refactor-2026-08-12'
$manifestPath = Join-Path $archive 'manifest.sha256'
$payload = Join-Path $archive 'originele-bestanden'
if (-not (Test-Path $manifestPath)) { Fail 'Archive manifest missing.' }
if (-not (Test-Path $payload)) { Fail 'Archive payload missing.' }
if (Test-Path $manifestPath) {
    $manifestLines = Get-Content -LiteralPath $manifestPath
    if ($manifestLines.Count -ne 20) { Fail "Archive manifest expected 20 files, found $($manifestLines.Count)." }
    foreach ($line in $manifestLines) {
        if ($line -notmatch '^([0-9a-f]{64})  (.+)$') { Fail "Malformed manifest line: $line"; continue }
        $expected=$matches[1]; $relative=$matches[2].Replace('/', [IO.Path]::DirectorySeparatorChar)
        $path=Join-Path $payload $relative
        if (-not (Test-Path $path)) { Fail "Archived file missing: $relative"; continue }
        $actual=(Get-FileHash -Algorithm SHA256 -LiteralPath $path).Hash.ToLowerInvariant()
        if ($actual -ne $expected) { Fail "Archive checksum mismatch: $relative" }
    }
}

$allowedStatuses = @('discovery','verifying','shortlist','watchlist','rejected','buyer-excluded','conflict','reference')
$candidateFiles = @(Get-ChildItem -LiteralPath (Join-Path $Root 'research/candidates') -Recurse -File -Filter *.md | Where-Object Name -ne 'index.md')
$sourceFiles = @(Get-ChildItem -LiteralPath (Join-Path $Root 'research/evidence') -Recurse -File -Filter 'src-*.md')
$offerFiles = @(Get-ChildItem -LiteralPath (Join-Path $Root 'research/offers') -Recurse -File -Filter *.md | Where-Object Name -ne 'index.md')

if ($candidateFiles.Count -lt 80) { Fail "Expected at least the 80 preserved candidate records, found $($candidateFiles.Count)." }
if ($sourceFiles.Count -lt 204) { Fail "Expected at least the 204 preserved source records, found $($sourceFiles.Count)." }
if ($offerFiles.Count -lt 5) { Fail "Expected at least 5 offer records, found $($offerFiles.Count)." }

$candidateIds=@{}; $sourceIds=@{}; $offerIds=@{}
foreach ($sourceFile in $sourceFiles) {
    $meta=Read-FrontMatter $sourceFile.FullName; $id=$meta['id']
    if (-not $id -or $id -notmatch '^SRC-\d{4}$') { Fail "Invalid source id: $($sourceFile.FullName)" }
    elseif ($sourceIds.ContainsKey($id)) { Fail "Duplicate source id: $id" } else { $sourceIds[$id]=$sourceFile.FullName }
    foreach ($field in @('record_type','checked_at','subject','region','source_type','exact_sku','evidence_label','legacy_origin')) { if (-not $meta.ContainsKey($field)) { Fail "Source $id missing $field" } }
}
foreach ($offerFile in $offerFiles) {
    $meta=Read-FrontMatter $offerFile.FullName; $id=$meta['id']
    if (-not $id) { Fail "Offer missing id: $($offerFile.FullName)" }
    elseif ($offerIds.ContainsKey($id)) { Fail "Duplicate offer id: $id" } else { $offerIds[$id]=$offerFile.FullName }
    foreach ($sourceId in Array-Values $meta['source_ids']) { if (-not $sourceIds.ContainsKey($sourceId)) { Fail "Offer $id references missing source $sourceId" } }
}
foreach ($candidateFile in $candidateFiles) {
    $meta=Read-FrontMatter $candidateFile.FullName; $id=$meta['id']
    if (-not $id -or $id -notmatch '^CAND-\d{3}$') { Fail "Invalid candidate id: $($candidateFile.FullName)" }
    elseif ($candidateIds.ContainsKey($id)) { Fail "Duplicate candidate id: $id" } else { $candidateIds[$id]=$candidateFile.FullName }
    foreach ($field in @('record_type','role','scope','status','flags','region','exact_sku','last_verified','offer_ids','source_ids','critical_unknowns','legacy_status','legacy_origin')) { if (-not $meta.ContainsKey($field)) { Fail "Candidate $id missing $field" } }
    if ($allowedStatuses -notcontains $meta['status']) { Fail "Candidate $id has invalid status $($meta['status'])" }
    if ($meta['role'] -notin @('laptop-a','laptop-b')) { Fail "Candidate $id has invalid role $($meta['role'])" }
    if ($meta['scope'] -notin @('exact-sku','family')) { Fail "Candidate $id has invalid scope $($meta['scope'])" }
    if ($meta['scope'] -eq 'exact-sku' -and ($meta['exact_sku'] -match 'UNKNOWN|^""$')) { Fail "Exact-SKU candidate $id lacks an exact SKU" }
    foreach ($sourceId in Array-Values $meta['source_ids']) { if (-not $sourceIds.ContainsKey($sourceId)) { Fail "Candidate $id references missing source $sourceId" } }
    foreach ($offerId in Array-Values $meta['offer_ids']) { if (-not $offerIds.ContainsKey($offerId)) { Fail "Candidate $id references missing offer $offerId" } }
    $content=Get-Content -LiteralPath $candidateFile.FullName -Raw
    $requiredHeadings = if ($meta['role'] -eq 'laptop-a') { @('**RAM:**','**SSD:**','**Display / gamut:**','**Battery evidence:**','**Touchpad / keyboard:**') } else { @('**GPU:**','**Official TGP:**','**Sustained GPU:**','**RAM / upgrade:**','**M.2:**','**Thermals / noise:**','**DPC:**') }
    foreach ($heading in $requiredHeadings) { if (-not $content.Contains($heading)) { Fail "Candidate $id missing migrated field $heading" } }
    $flags=Array-Values $meta['flags']; $unknowns=Array-Values $meta['critical_unknowns']
    if (($flags -contains 'definitive-winner' -or $flags -contains 'best-value' -or $flags -contains 'valid-top-3') -and $unknowns.Count -gt 0) { Fail "Candidate $id is final-ranked with critical unknowns" }
}

$decisionCount=(Select-String -Path (Join-Path $Root 'research/history/decisions.md') -Pattern '^## ').Count
$changeCount=(Select-String -Path (Join-Path $Root 'research/history/changelog.md') -Pattern '^## ').Count
$dossierCount=(Get-ChildItem -LiteralPath (Join-Path $Root 'research/evidence/devices') -File | Where-Object Name -notmatch '^src-').Count
if ($decisionCount -lt 26) { Fail "Expected at least 26 preserved historical decision sections, found $decisionCount." }
if ($changeCount -lt 38) { Fail "Expected at least 38 preserved changelog sections, found $changeCount." }
if ($dossierCount -lt 7) { Fail "Expected at least 7 preserved device dossiers, found $dossierCount." }

foreach ($required in @('README.md','AGENTS.md','research/README.md','research/current.md','research/constraints.md','research/protocol.md','research/candidates/index.md','research/offers/index.md','research/decisions/current.md','research/evidence/index.md','research/history/README.md')) {
    if (-not (Test-Path (Join-Path $Root $required))) { Fail "Required active file missing: $required" }
}

$candidateIndex = Get-Content -LiteralPath (Join-Path $Root 'research/candidates/index.md') -Raw
$evidenceIndex = Get-Content -LiteralPath (Join-Path $Root 'research/evidence/index.md') -Raw
$offerIndex = Get-Content -LiteralPath (Join-Path $Root 'research/offers/index.md') -Raw
if (-not $candidateIndex.Contains("all **$($candidateFiles.Count)** candidate records")) { Fail "Candidate index headline count is stale; expected $($candidateFiles.Count)." }
if (-not $evidenceIndex.Contains("Indexed sources: **$($sourceFiles.Count)**")) { Fail "Evidence index headline count is stale; expected $($sourceFiles.Count)." }
if (-not $offerIndex.Contains("**$($offerFiles.Count) afzonderlijke offerrecords**")) { Fail "Offer index headline count is stale; expected $($offerFiles.Count)." }
foreach ($candidateId in $candidateIds.Keys) { if ($candidateIndex -notmatch "\|\s*$([regex]::Escape($candidateId))\s*\|") { Fail "Candidate index missing $candidateId" } }
foreach ($sourceId in $sourceIds.Keys) { if ($evidenceIndex -notmatch "\|\s*$([regex]::Escape($sourceId))\s*\|") { Fail "Evidence index missing $sourceId" } }

$linkFiles = @(Get-ChildItem -LiteralPath (Join-Path $Root 'research') -Recurse -File -Filter *.md | Where-Object { $_.FullName -notlike '*\archive\*' })
foreach ($file in $linkFiles) {
    $text=Get-Content -LiteralPath $file.FullName -Raw
    foreach ($match in [regex]::Matches($text, '\[[^\]]+\]\((?!https?://|#)([^)]+\.md)\)')) {
        $target=$match.Groups[1].Value.Split('#')[0]
        $resolved=[IO.Path]::GetFullPath((Join-Path $file.DirectoryName $target))
        if (-not (Test-Path $resolved)) { Fail "Broken link in $($file.FullName): $target" }
    }
}

if (-not $AllowLegacy) {
    foreach ($legacy in @('research/candidates.md','research/sources.md','research/decisions.md','research/changelog.md','research/report-2026-08-12.md','research/amd-gpu-audit.md','research/lenovo-psref-matrix.md','research/devices')) {
        if (Test-Path (Join-Path $Root $legacy)) { Fail "Legacy active path still exists: $legacy" }
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ -ErrorAction Continue }
    throw "Research validation failed with $($errors.Count) error(s)."
}

"VALIDATION_OK candidates=$($candidateFiles.Count) sources=$($sourceFiles.Count) decisions=$decisionCount changelog=$changeCount dossiers=$dossierCount offers=$($offerFiles.Count) archive_files=20"
