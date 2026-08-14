---
record_type: migration-report
date: 2026-08-12
status: complete
---

# Research structure migration

The legacy research repository was normalized without changing product conclusions.

## Preservation result

- 20 original files were captured before the refactor.
- Every archived original passed SHA-256 comparison with its source.
- All 22 files now present in the archive directory, including its manifest and explanatory README, are marked read-only.
- The original 80 candidate rows, 204 source rows, 26 decision sections, 38 changelog sections and 7 device dossiers are represented in the new structure.

## Active result

- `research/current.md` is the current-state entry point.
- Candidate, offer and source facts are separate record types.
- Historical decisions remain available but no longer compete with current conclusions.
- The old monolithic active files were removed only after validation succeeded; byte-identical originals remain in the archive.

## Verification

Run the read-only check from the repository root:

```powershell
powershell -File tools/validate-research.ps1
```

Successful completion reports `VALIDATION_OK` with the preserved record counts.
