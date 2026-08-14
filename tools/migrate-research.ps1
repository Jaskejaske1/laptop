param(
    [string]$Root = (Split-Path -Parent $PSScriptRoot),
    [switch]$ForceRegenerate
)

$ErrorActionPreference = 'Stop'
$utf8 = [Text.UTF8Encoding]::new($false)
$archiveRoot = Join-Path $Root 'research/archive/pre-refactor-2026-08-12'
$legacyRoot = Join-Path $archiveRoot 'originele-bestanden'
$legacyResearch = Join-Path $legacyRoot 'research'

if (-not $ForceRegenerate -and -not (Test-Path (Join-Path $Root 'research/candidates.md'))) {
    throw 'Migration is already complete. Do not regenerate normalized records from the legacy snapshot; use -ForceRegenerate only for deliberate recovery.'
}

if (-not (Test-Path (Join-Path $archiveRoot 'manifest.sha256'))) {
    throw 'Verified pre-refactor archive is missing.'
}

function Write-Utf8([string]$Path, [string]$Content) {
    $parent = Split-Path -Parent $Path
    if ($parent) { New-Item -ItemType Directory -Path $parent -Force | Out-Null }
    [IO.File]::WriteAllText($Path, $Content.Replace("`r`n", "`n"), $utf8)
}

function Yaml-Quote([AllowNull()][string]$Value) {
    if ($null -eq $Value -or $Value.Trim() -eq '') { return '""' }
    return '"' + $Value.Replace('\', '\\').Replace('"', '\"').Replace("`r", '').Replace("`n", '\n') + '"'
}

function Yaml-Array([string[]]$Values) {
    $clean = @($Values | Where-Object { $_ -and $_.Trim() -and $_.Trim() -ne '—' } | ForEach-Object { Yaml-Quote $_.Trim() })
    if ($clean.Count -eq 0) { return '[]' }
    return '[' + ($clean -join ', ') + ']'
}

function Slugify([string]$Value) {
    $normalized = $Value.Normalize([Text.NormalizationForm]::FormD)
    $chars = foreach ($char in $normalized.ToCharArray()) {
        if ([Globalization.CharUnicodeInfo]::GetUnicodeCategory($char) -ne [Globalization.UnicodeCategory]::NonSpacingMark) { $char }
    }
    $slug = (-join $chars).ToLowerInvariant() -replace '[^a-z0-9]+', '-'
    $slug = $slug.Trim('-')
    if ($slug.Length -gt 72) { $slug = $slug.Substring(0,72).TrimEnd('-') }
    if (-not $slug) { $slug = 'record' }
    return $slug
}

function Split-TableRow([string]$Line) {
    return @(($Line.Trim().Trim('|') -split '\|') | ForEach-Object { $_.Trim() })
}

function Primary-Status([string]$LegacyStatus) {
    $s = $LegacyStatus.ToUpperInvariant()
    if ($s.StartsWith('BUYER_EXCLUDED')) { return 'buyer-excluded' }
    if ($s.StartsWith('REJECTED')) { return 'rejected' }
    if ($s.StartsWith('CONFLICT')) { return 'conflict' }
    if ($s.StartsWith('SHORTLIST')) { return 'shortlist' }
    if ($s.StartsWith('VERIFYING')) { return 'verifying' }
    if ($s.StartsWith('WATCHLIST')) { return 'watchlist' }
    if ($s.Contains('DISCOVERY')) { return 'discovery' }
    if ($s.StartsWith('REFERENCE')) { return 'reference' }
    throw "Unmapped candidate status: $LegacyStatus"
}

function Status-Flags([string]$LegacyStatus) {
    $flags = @()
    $map = [ordered]@{
        'CURRENT BUY LEADER' = 'current-buy-leader'
        'GENERAL ACCEPTANCE TEST REQUIRED' = 'general-acceptance-test-required'
        '18-INCH' = '18-inch'
        'PURCHASE HOLD' = 'purchase-hold'
        'PREVIOUS_GENERATION' = 'previous-generation'
        'SUPPORT PACKAGE ATTRACTIVE' = 'support-package-attractive'
        'NOT RECOMMENDATION-ELIGIBLE' = 'not-recommendation-eligible'
        'CONDITIONAL' = 'conditional'
        'RAM CONFLICT RETAINED' = 'ram-conflict-retained'
        'EXCEPTIONAL 18-INCH FALLBACK' = 'exceptional-18-inch-fallback'
        'NO USB4' = 'no-usb4'
        'STABILITY CONCERNS' = 'stability-concerns'
        'STRICT MSI GATE' = 'strict-msi-gate'
    }
    foreach ($key in $map.Keys) { if ($LegacyStatus.ToUpperInvariant().Contains($key)) { $flags += $map[$key] } }
    return $flags | Select-Object -Unique
}

function Candidate-Scope([string]$Name) {
    $lower = $Name.ToLowerInvariant()
    if ($lower -match '\b(models|families|family|current hp|chassis|series)\b') { return 'family' }
    $parts = $Name -split ' / '
    if ($parts.Count -lt 2) { return 'family' }
    $suffix = $parts[-1].Trim()
    if ($suffix -match '/' -or $suffix -match '\b(up to|chassis|family)\b') { return 'family' }
    if ($suffix -match '[0-9]' -and $suffix -match '[A-Za-z]') { return 'exact-sku' }
    return 'family'
}

function Exact-Sku([string]$Name, [string]$Scope) {
    if ($Scope -ne 'exact-sku') { return 'UNKNOWN' }
    return ($Name -split ' / ')[-1].Trim()
}

function Source-Category([string]$Topic, [string]$Source, [string]$Type) {
    $all = "$Topic $Source $Type".ToLowerInvariant()
    if ($all -match 'easy4u|rent company|warranty|garantie|support|premium care|prosupport|seller|retailer|lasystems') { return 'vendors' }
    if ($all -match 'asus|lenovo|dell|alienware|hp |hewlett|msi|xmg|acer|framework|samsung|lg |omen|legion|strix|zenbook|thinkpad|thinkbook|vivobook|expertbook') { return 'devices' }
    return 'topics'
}

function Significant-Tokens([string]$Text) {
    $stop = @('laptop','models','model','family','current','exact','chassis','series','intel','amd','asus','lenovo','dell','alienware','omen','legion','strix','zenbook','thinkpad','thinkbook','expertbook','pro','plus','ultra','gaming','edition','generation')
    return @(([regex]::Matches($Text.ToLowerInvariant(), '[a-z0-9][a-z0-9-]{3,}')).Value | Where-Object { $stop -notcontains $_ } | Select-Object -Unique)
}

function Test-EvidenceMatch([string]$Name, [string]$Sku, [string]$Haystack) {
    $lowerHaystack = $Haystack.ToLowerInvariant()
    if ($Sku -ne 'UNKNOWN' -and $lowerHaystack.Contains($Sku.ToLowerInvariant())) { return $true }
    $tokens = @(Significant-Tokens $Name)
    $distinctive = @($tokens | Where-Object { $_ -match '[a-z]' -and $_ -match '[0-9]' -and $_.Length -ge 6 })
    if (@($distinctive | Where-Object { $lowerHaystack.Contains($_) }).Count -gt 0) { return $true }
    $matched = @($tokens | Where-Object { $_.Length -ge 5 -and $lowerHaystack.Contains($_) })
    return $matched.Count -ge 2
}

function Candidate-OfferIds([string]$Name) {
    $lower = $Name.ToLowerInvariant()
    if ($lower.Contains('easy4u/the rent company yoga slim 7 14akp10')) { return @('OFFER-EASY4U-UKR8Y9F') }
    if ($lower.Contains('g615lw-s5058w') -or $lower.Contains('90nr0lg1-m002p0')) { return @('OFFER-ASUS-G615LW-S5058W','OFFER-ASUS-PREMIUM-CARE-G615LW') }
    if ($lower.Contains('g615lr-s5160w') -or $lower.Contains('90nr0lr2-m007x0')) { return @('OFFER-ASUS-G615LR-S5160W') }
    if ($lower.Contains('2h3vj')) { return @('OFFER-LASYSTEMS-2H3VJ') }
    return @()
}

foreach ($dir in @(
    'research/candidates/laptop-a','research/candidates/laptop-b','research/candidates/exclusions',
    'research/offers/easy4u','research/offers/asus-direct','research/offers/lasystems','research/offers/asus-support',
    'research/decisions','research/evidence/devices','research/evidence/vendors','research/evidence/topics',
    'research/history/reports'
)) { New-Item -ItemType Directory -Path (Join-Path $Root $dir) -Force | Out-Null }

# Sources: one stable, independently addressable record per legacy row.
$sourcePath = Join-Path $legacyResearch 'sources.md'
$sourceLines = Get-Content -LiteralPath $sourcePath
$sources = @()
for ($i = 0; $i -lt $sourceLines.Count; $i++) {
    $line = $sourceLines[$i]
    if ($line -notmatch '^\|' -or $line -match '^\|\s*[-:]' -or $line -match '^\| Date checked') { continue }
    $columns = Split-TableRow $line
    if ($columns.Count -ne 9) { throw "Unexpected source schema at sources.md:$($i+1)" }
    $id = 'SRC-{0:D4}' -f ($sources.Count + 1)
    $category = Source-Category $columns[1] $columns[2] $columns[4]
    $slug = Slugify $columns[1]
    $relative = "evidence/$category/$($id.ToLowerInvariant())-$slug.md"
    $record = [pscustomobject]@{
        Id=$id; Checked=$columns[0]; Topic=$columns[1]; Source=$columns[2]; Region=$columns[3]
        Type=$columns[4]; Exact=$columns[5]; Proof=$columns[6]; Label=$columns[7]; Notes=$columns[8]
        Category=$category; Relative=$relative; Line=$i+1
    }
    $sources += $record
    $content = @"
---
id: $id
record_type: source
checked_at: $(Yaml-Quote $record.Checked)
subject: $(Yaml-Quote $record.Topic)
region: $(Yaml-Quote $record.Region)
source_type: $(Yaml-Quote $record.Type)
exact_sku: $(Yaml-Quote $record.Exact)
evidence_label: $(Yaml-Quote $record.Label)
legacy_origin: $(Yaml-Quote "research/sources.md:$($record.Line)")
---

# $($record.Topic) — $id

## Source

$($record.Source)

## What it proves

$($record.Proof)

## Notes

$($record.Notes)

## Original ledger row

````text
$line
````
"@
    Write-Utf8 (Join-Path $Root "research/$relative") $content
}

$evidenceIndex = @("# Evidence index", '', "Migrated sources: **$($sources.Count)**. Source IDs are stable and must never be reused.", '', '| ID | Checked | Subject | Label | Record |', '|---|---|---|---|---|')
foreach ($source in $sources) {
    $target = './' + $source.Relative.Substring('evidence/'.Length)
    $evidenceIndex += "| $($source.Id) | $($source.Checked) | $($source.Topic.Replace('|','\|')) | $($source.Label.Replace('|','\|')) | [record]($target) |"
}
Write-Utf8 (Join-Path $Root 'research/evidence/index.md') ($evidenceIndex -join "`n")

# Preserve existing narrative evidence dossiers and topical audits.
Get-ChildItem -LiteralPath (Join-Path $legacyResearch 'devices') -File | ForEach-Object {
    $targetName = $_.Name
    if ($_.Name -eq 'xmg-neo-16-a25-e25-factcheck.md') { $targetName = 'xmg-neo-16-a25-e25-shared-chassis-evidence.md' }
    Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $Root "research/evidence/devices/$targetName") -Force
}
Copy-Item -LiteralPath (Join-Path $legacyResearch 'amd-gpu-audit.md') -Destination (Join-Path $Root 'research/evidence/topics/amd-gpu-audit.md') -Force
Copy-Item -LiteralPath (Join-Path $legacyResearch 'lenovo-psref-matrix.md') -Destination (Join-Path $Root 'research/evidence/topics/lenovo-psref-matrix.md') -Force

# Candidates: one record for every ledger row, retaining every original field and row.
$candidatePath = Join-Path $legacyResearch 'candidates.md'
$candidateLines = Get-Content -LiteralPath $candidatePath
$candidates = @()
$role = $null
$usedSlugs = @{}
for ($i = 0; $i -lt $candidateLines.Count; $i++) {
    $line = $candidateLines[$i]
    if ($line -eq '## Laptop A') { $role = 'laptop-a'; continue }
    if ($line -eq '## Laptop B') { $role = 'laptop-b'; continue }
    if ($line -notmatch '^\|' -or $line -match '^\|\s*[-:]' -or $line -match '^\| Family / exact SKU') { continue }
    if (-not $role) { throw "Candidate row before role heading at candidates.md:$($i+1)" }
    $columns = Split-TableRow $line
    $expected = if ($role -eq 'laptop-a') { 12 } else { 15 }
    if ($columns.Count -ne $expected) { throw "Unexpected $role schema at candidates.md:$($i+1): $($columns.Count) columns" }
    $name = $columns[0]
    $legacyStatus = $columns[1]
    $status = Primary-Status $legacyStatus
    $scope = Candidate-Scope $name
    $sku = Exact-Sku $name $scope
    $baseSlug = Slugify $name
    if (-not $usedSlugs.ContainsKey($baseSlug)) { $usedSlugs[$baseSlug] = 0 } else { $usedSlugs[$baseSlug]++ }
    $slug = if ($usedSlugs[$baseSlug] -eq 0) { $baseSlug } else { "$baseSlug-$($usedSlugs[$baseSlug]+1)" }
    $id = ('CAND-{0:D3}' -f ($candidates.Count + 1))
    $folder = if ($status -eq 'buyer-excluded') { 'exclusions' } else { $role }
    $relative = "candidates/$folder/$slug.md"
    $unknownIndex = if ($role -eq 'laptop-a') { 10 } else { 13 }
    $unknownText = $columns[$unknownIndex]
    $unknowns = if ($unknownText -and $unknownText -ne '—' -and $unknownText -notmatch '^none material') { @($unknownText) } else { @() }
    $matchedSources = @($sources | Where-Object {
        $haystack = "$($_.Topic) $($_.Source) $($_.Proof)".ToLowerInvariant()
        return Test-EvidenceMatch $name $sku $haystack
    } | Select-Object -ExpandProperty Id -Unique)
    $offerIds = @(Candidate-OfferIds $name)
    $record = [pscustomobject]@{
        Id=$id; Name=$name; Role=$role; Status=$status; LegacyStatus=$legacyStatus; Flags=@(Status-Flags $legacyStatus)
        Scope=$scope; Sku=$sku; Region=$columns[2]; Price=$columns[3]; Unknowns=$unknowns
        SourceIds=$matchedSources; OfferIds=$offerIds; Relative=$relative; Columns=$columns; Line=$i+1
    }
    $candidates += $record
    $fieldNames = if ($role -eq 'laptop-a') {
        @('Price','CPU','RAM','SSD','Display / gamut','Battery evidence','Touchpad / keyboard','Key unknowns','Notes')
    } else {
        @('Price','CPU','GPU','Official TGP','Sustained GPU','RAM / upgrade','M.2','Display / gamut','Thermals / noise','DPC','Key unknowns','Notes')
    }
    $body = @("# $name", '', '## Migrated assessment', '')
    for ($c = 0; $c -lt $fieldNames.Count; $c++) { $body += "- **$($fieldNames[$c]):** $($columns[$c+3])" }
    $related = @()
    foreach ($dossier in Get-ChildItem -LiteralPath (Join-Path $Root 'research/evidence/devices') -File) {
        if (Test-EvidenceMatch $name $sku $dossier.BaseName) { $related += "../../evidence/devices/$($dossier.Name)" }
    }
    if ($related.Count -gt 0) {
        $body += @('', '## Related narrative evidence', '')
        foreach ($link in $related | Select-Object -Unique) { $body += "- [$([IO.Path]::GetFileNameWithoutExtension($link))]($link)" }
    }
    $body += @('', '## Original ledger row', '', '````text', $line, '````', '')
    $content = @(
        '---',
        "id: $id",
        'record_type: candidate',
        "role: $role",
        "scope: $scope",
        "status: $status",
        "flags: $(Yaml-Array $record.Flags)",
        "region: $(Yaml-Quote $record.Region)",
        "exact_sku: $(Yaml-Quote $record.Sku)",
        'last_verified: "2026-08-12"',
        "offer_ids: $(Yaml-Array $record.OfferIds)",
        "source_ids: $(Yaml-Array $record.SourceIds)",
        "critical_unknowns: $(Yaml-Array $record.Unknowns)",
        "legacy_status: $(Yaml-Quote $record.LegacyStatus)",
        "legacy_origin: $(Yaml-Quote "research/candidates.md:$($record.Line)")",
        '---',
        ''
    ) + $body
    Write-Utf8 (Join-Path $Root "research/$relative") ($content -join "`n")
}

$candidateIndex = @(
    '# Candidate index', '',
    "This compact index represents all **$($candidates.Count)** migrated ledger records. Details, rejection reasons and original rows live in the linked records.", '',
    'Do not rank from this index alone. Read the candidate record, its offers and cited evidence.', ''
)
foreach ($candidateRole in @('laptop-a','laptop-b')) {
    $candidateIndex += @("## $($candidateRole.Replace('laptop-','Laptop ').ToUpperInvariant())", '', '| ID | Candidate | Status | Region | Price | Record |', '|---|---|---|---|---|---|')
    foreach ($candidate in $candidates | Where-Object Role -eq $candidateRole) {
        $target = './' + $candidate.Relative.Substring('candidates/'.Length)
        $candidateIndex += "| $($candidate.Id) | $($candidate.Name.Replace('|','\|')) | $($candidate.Status) | $($candidate.Region.Replace('|','\|')) | $($candidate.Price.Replace('|','\|')) | [record]($target) |"
    }
    $candidateIndex += ''
}
Write-Utf8 (Join-Path $Root 'research/candidates/index.md') ($candidateIndex -join "`n")

# Offer records intentionally separate transaction facts from chassis evidence.
$offerDefinitions = @(
    [pscustomobject]@{Id='OFFER-EASY4U-UKR8Y9F';Dir='easy4u';File='catalog-ukr8y9f.md';Seller='Easy4u / The Rent Company';Region='BE';Sku='UNKNOWN';Price='€1298 / €1348 / €1398 purchase depending on 24/36/48-month coverage';Checked='2026-08-12';Keyboard='UNKNOWN';Stock='Catalog accessible; exact MTM not exposed';Support='24/36/48-month service package including battery, replacement device and damage/theft terms';Status='conflict';Body='Discovery channel only. The matching Yoga configuration fails the active Laptop A display and I/O gates. Exact MTM and the USB4-versus-Thunderbolt wording remain unresolved.'},
    [pscustomobject]@{Id='OFFER-ASUS-G615LW-S5058W';Dir='asus-direct';File='g615lw-s5058w.md';Seller='ASUS Belgium direct';Region='BE';Sku='G615LW-S5058W / 90NR0LG1-M002P0';Price='€3299 incl. VAT';Checked='2026-08-12';Keyboard='Belgian regional listing; physical layout must be reconfirmed at checkout';Stock='Available when last checked';Support='Two-year base warranty plus eligible free-third-year registration promotion; Premium Care price unknown';Status='active';Body='Current Laptop B purchase leader, subject to the general return-window acceptance test and successful third-year registration.'},
    [pscustomobject]@{Id='OFFER-ASUS-G615LR-S5160W';Dir='asus-direct';File='g615lr-s5160w.md';Seller='ASUS Belgium direct';Region='BE';Sku='G615LR-S5160W / 90NR0LR2-M007X0';Price='€2499 incl. VAT when last checked';Checked='2026-08-12';Keyboard='Belgian regional listing; physical layout must be reconfirmed at checkout';Stock='Available when last checked';Support='Exact support-adjusted three-year total must be revalidated';Status='historical-challenger';Body='RTX 5070 Ti challenger retained for value comparison; not the parked current B leader.'},
    [pscustomobject]@{Id='OFFER-LASYSTEMS-2H3VJ';Dir='lasystems';File='dell-2h3vj.md';Seller='LASystems Belgium';Region='BE';Sku='Dell 2H3VJ';Price='€4444.17 incl. VAT';Checked='2026-08-12';Keyboard='Exact physical layout requires transaction-page confirmation';Stock='In stock when last checked';Support='Three-year Dell ProSupport included';Status='reference';Body='Exceptional 18-inch fallback and support/value reference, not the preferred portable form factor.'},
    [pscustomobject]@{Id='OFFER-ASUS-PREMIUM-CARE-G615LW';Dir='asus-support';File='premium-care-g615lw.md';Seller='ASUS Premium Care / MyASUS';Region='BE';Sku='G615LW eligibility tied to serial registration';Price='UNKNOWN';Checked='2026-08-12';Keyboard='n/a';Stock='Eligibility and price only visible after registration';Support='Potential onsite/Premium Care extension; exact coverage and price unproven';Status='conflict';Body='Do not include a guessed Premium Care price in the support-adjusted total. The free third standard warranty year is a separate promotion.'}
)
foreach ($offer in $offerDefinitions) {
    $haystack = "$($offer.Seller) $($offer.Sku) $($offer.Support)".ToLowerInvariant()
    $sourceIds = @($sources | Where-Object {
        $sourceHaystack = "$($_.Topic) $($_.Source) $($_.Proof)".ToLowerInvariant()
        return Test-EvidenceMatch $offer.Seller $offer.Sku $sourceHaystack
    } | Select-Object -ExpandProperty Id -Unique)
    $content = @"
---
id: $($offer.Id)
record_type: offer
seller: $(Yaml-Quote $offer.Seller)
region: $(Yaml-Quote $offer.Region)
exact_sku: $(Yaml-Quote $offer.Sku)
price: $(Yaml-Quote $offer.Price)
checked_at: $(Yaml-Quote $offer.Checked)
keyboard_layout: $(Yaml-Quote $offer.Keyboard)
stock: $(Yaml-Quote $offer.Stock)
support: $(Yaml-Quote $offer.Support)
status: $(Yaml-Quote $offer.Status)
source_ids: $(Yaml-Array $sourceIds)
legacy_origin: "research/decisions.md and research/candidates.md"
---

# $($offer.Seller) — $($offer.Sku)

$($offer.Body)
"@
    Write-Utf8 (Join-Path $Root "research/offers/$($offer.Dir)/$($offer.File)") $content
}

# Immutable history copies; report gets an explicit superseded marker while the byte-exact original remains archived.
Copy-Item -LiteralPath (Join-Path $legacyResearch 'decisions.md') -Destination (Join-Path $Root 'research/history/decisions.md') -Force
Copy-Item -LiteralPath (Join-Path $legacyResearch 'changelog.md') -Destination (Join-Path $Root 'research/history/changelog.md') -Force
$legacyReport = [IO.File]::ReadAllText((Join-Path $legacyResearch 'report-2026-08-12.md'))
$report = "---`nstatus: superseded`nsnapshot_date: 2026-08-12`nsuperseded_by: ../../current.md`nlegacy_origin: research/report-2026-08-12.md`n---`n`n" + $legacyReport
Write-Utf8 (Join-Path $Root 'research/history/reports/2026-08-12-manufacturer-scan.md') $report

$currentDecisions = @'
# Current durable decisions

Last reconciled: 2026-08-12

This file contains only decisions that remain active. The complete chronological record is preserved in [`history/decisions.md`](../history/decisions.md).

## Purchase sequence

- Laptop B is the active purchase. Laptop A is deferred without relaxing its stored constraints.
- A B-only purchase may use the budget up to the Dell reference boundary when the support-adjusted result is justified.
- The two HP ProBook 445 G8 systems are not dependable temporary Laptop A systems; RAM and NVMe reuse requires later compatibility and health checks.

## Laptop B position

- ASUS ROG Strix G16 `G615LW-S5058W / 90NR0LG1-M002P0` is parked as the current buy leader at the last verified direct-ASUS price of €3299.
- It requires a general return-window acceptance test. DPC/audio limitations remain documented but Ableton and other latency-critical audio stay on the desktop and are not a B purchase gate.
- Three years of repair coverage for normal-use cooling defects must be included and counted. The free third standard ASUS warranty year depends on promotion eligibility and registration; Premium Care eligibility and price remain UNKNOWN.
- The Dell Pro Max 18 Plus `2H3VJ` at €4444.17 with three-year ProSupport remains the exceptional 18-inch fallback and economic support reference.

## Current conflicts and unknowns

- Strix storage generation: count on two PCIe Gen 4 slots; Gen 5 capability remains CONFLICT.
- Exact ASUS Premium Care eligibility, scope and price for the G615LW remain UNKNOWN.
- Easy4u Yoga exact MTM is UNKNOWN and its Thunderbolt 4 wording conflicts with Lenovo USB4 documentation.
- Dell `2H3VJ` exact RTX PRO 3000 TGP, sustained performance and exact-SKU DPC remain UNKNOWN.

## Research rule

No historical conclusion is silently revived. New evidence must update this file explicitly, preserve the previous conclusion in history and add a changelog entry.
'@
Write-Utf8 (Join-Path $Root 'research/decisions/current.md') $currentDecisions

$current = @'
---
record_type: research-state
last_updated: 2026-08-12
active_search: laptop-b
budget_ceiling_eur: 4444
reference_price_eur: 4444.17
---

# Current research state

## Where we landed

- **Active purchase:** Laptop B first. Laptop A is deferred.
- **Parked B:** ASUS ROG Strix G16 `G615LW-S5058W / 90NR0LG1-M002P0`, last verified at €3299 direct from ASUS Belgium.
- **Reference/fallback:** Dell Pro Max 18 Plus `2H3VJ`, €4444.17 including three-year ProSupport. Its 18-inch size remains a major disadvantage.
- **Audio boundary:** Ableton and latency-critical audio remain on the desktop; Strix DPC performance stays documented but is not a purchase gate.
- **Support boundary:** at least three years of cooling-defect repair coverage must be included in Laptop B's total.

## Budget position

The declared ceiling remains €4444 while the exact reference transaction is €4444.17. Keep both figures visible; do not silently round an offer into compliance. At €3299, the parked Strix leaves €1145 against the declared ceiling.

## Open blockers before purchase

1. Reconfirm the exact live Belgian SKU, price, physical keyboard and stock.
2. Reconfirm free-third-year warranty eligibility and registration deadline in writing.
3. Obtain an exact Premium Care/onsite quote only if that coverage is desired; never estimate it.
4. Apply the documented return-window acceptance test for sleep/wake, peripherals, networking and sustained CPU/GPU load.
5. Treat PCIe Gen 5 support as CONFLICT and plan around two Gen 4 M.2 slots.

## Laptop A

Laptop A's requirements remain active in [`constraints.md`](constraints.md), but no purchase is currently planned. New A research resumes only on explicit request or if the B purchase leaves a deliberate budget allocation.

## Read next

1. [`constraints.md`](constraints.md)
2. [`protocol.md`](protocol.md)
3. [`candidates/index.md`](candidates/index.md)
4. [`decisions/current.md`](decisions/current.md) when decision rationale is needed

Historical decisions and superseded reports are evidence of how conclusions changed, not current recommendations.
'@
Write-Utf8 (Join-Path $Root 'research/current.md') $current

$archiveReadme = @'
# Immutable pre-refactor snapshot

This directory is a recovery and audit snapshot, not an active research source.

- `originele-bestanden/` contains the byte-identical pre-refactor research and root instruction files.
- `manifest.sha256` records every archived file hash.
- Never edit archived files and never use them as current recommendations.
- Active research starts at `research/current.md`.
'@
Write-Utf8 (Join-Path $archiveRoot 'README.md') $archiveReadme

"MIGRATION_GENERATED candidates=$($candidates.Count) sources=$($sources.Count) offers=$($offerDefinitions.Count)"
