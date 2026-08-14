---
id: SRC-0252
record_type: source
checked_at: "2026-08-13"
subject: "ProBook 445 G8 to EliteBook 850 G6 RAM/NVMe compatibility"
region: "local devices / global platform documentation"
source_type: "manufacturer specifications plus local inventory inference"
exact_sku: "ProBook 445 G8 donor exact parts UNKNOWN; EliteBook 850 G6 4YD62AV recipient"
evidence_label: "LIKELY pending exact donor part numbers and health"
legacy_origin: "buyer donor-upgrade question 2026-08-13"
---

# ProBook 445 G8 donor compatibility — SRC-0252

## Sources

- https://www.hp.com/content/dam/sites/garage-press/press/press-kits/2021/ces-2021/hp_probook_445_g8_media_spec_sheet.pdf
- EliteBook exact local DMI/inventory in `SRC-0251`
- EliteBook 850 G6 QuickSpecs, document `c06308184 / DA16445`

## Evidence

HP specifies two accessible SO-DIMM slots and dual-channel memory for both platforms. ProBook 445 G8 uses DDR4-3200 and was sold with up to 32GB; EliteBook 850 G6 officially supports 32GB as 2x16GB DDR4-2400. Standard JEDEC DDR4-3200 SO-DIMMs are therefore electrically/form-factor compatible in principle and should run at 2400, but exact donor part numbers are required before marking PROVEN.

The ProBook platform uses M.2 2280 PCIe/NVMe storage up to 1TB in HP's original matrix; the EliteBook's installed Micron drive proves M.2 PCIe/NVMe use. A standard donor M.2 2280 NVMe is therefore mechanically/protocol compatible in principle. Exact drive model, dimensions, SMART condition, encryption and desired OS migration remain verification items.
