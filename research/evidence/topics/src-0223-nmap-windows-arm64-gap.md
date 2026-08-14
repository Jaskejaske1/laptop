---
id: SRC-0223
record_type: source
checked_at: "2026-08-12"
subject: "Nmap official Windows download architecture gap"
region: "global"
source_type: "official project download"
exact_sku: "not applicable"
evidence_label: "PROVEN download scope / ARM behavior UNKNOWN"
legacy_origin: "new research after repository refactor"
---

# Nmap Windows ARM64 gap — SRC-0223

## Source

https://nmap.org/download.html

## What it proves

Nmap provides a Windows self-installer and bundled Npcap, but the official download page does not identify a native Windows ARM64 build. Running the x64 user-mode program through Windows emulation may be possible, but driver-dependent scan behavior is not proven and may not be assumed for an ARM finalist.

