---
id: CAND-054
record_type: candidate
role: laptop-b
scope: exact-sku
status: rejected
flags: ["reference-only", "dell-beating-unproven"]
region: "BE"
exact_sku: "90NR0LR2-M007X0"
last_verified: "2026-08-12"
offer_ids: ["OFFER-ASUS-G615LR-S5160W", "OFFER-BOL-G615LR-CONFLICT"]
source_ids: ["SRC-0039", "SRC-0046", "SRC-0221"]
critical_unknowns: ["exact-sku LatencyMon and logged sustained TGP; Bol €1599 listing conflict"]
legacy_status: "SHORTLIST; rejected 2026-08-12 when current-model-year gate was applied to Laptop B"
legacy_origin: "research/candidates.md:67"
---

# ASUS ROG Strix G16 G615LR-S5160W / 90NR0LR2-M007X0

## Migrated assessment

- **Price:** €2499 direct ASUS; available
- **CPU:** Core Ultra 9 275HX
- **GPU:** RTX 5070 Ti 12 GB
- **Official TGP:** 140 W PROVEN exact SKU
- **Sustained GPU:** matched G615LR review reports prolonged stability; exact logged 140-W trace UNKNOWN; same cooler sustains 170–175 W 5080
- **RAM / upgrade:** 32 GB, LIKELY 1x32; two SODIMM; official max 64
- **M.2:** 2
- **Display / gamut:** exact 2560x1600 240Hz matte IPS, official 100% P3; G615 measured 99.1% P3/DeltaE 1.6
- **Thermals / noise:** same chassis fans off/≈25 dBA light use; exact load dBA UNKNOWN; strong cooling; isolated fan/QC and BIOS-regression reports
- **DPC:** exact SKU UNKNOWN; same platform 1501.6 µs
- **Key unknowns:** exact-sku LatencyMon and logged sustained TGP; Bol search metadata showed €1599 but the live product page did not confirm a buyable matching transaction, so that price remains CONFLICT
- **Notes:** Belgian AZERTY, 2.5GbE, 2x TB5, 3x USB-A; matched review 6h54 battery with dGPU off. The 2025 launch is eligible under the current model-year-neutral rule. It remains rejected/reference because the 140W RTX 5070 Ti is not yet proven to materially beat the Dell baseline in the relevant workloads and exact sustained-TGP evidence is missing.

## Related narrative evidence

- [asus-rog-strix-g16-g615lr-s5160w](../../evidence/devices/asus-rog-strix-g16-g615lr-s5160w.md)
- [src-0039-asus-g615lr-s5160w-90nr0lr2-m007x0](../../evidence/devices/src-0039-asus-g615lr-s5160w-90nr0lr2-m007x0.md)

## Original ledger row

````text
| ASUS ROG Strix G16 G615LR-S5160W / 90NR0LR2-M007X0 | SHORTLIST | BE | €2499 direct ASUS; available | Core Ultra 9 275HX | RTX 5070 Ti 12 GB | 140 W PROVEN exact SKU | matched G615LR review reports prolonged stability; exact logged 140-W trace UNKNOWN; same cooler sustains 170–175 W 5080 | 32 GB, LIKELY 1x32; two SODIMM; official max 64 | 2 | exact 2560x1600 240Hz matte IPS, official 100% P3; G615 measured 99.1% P3/DeltaE 1.6 | same chassis fans off/≈25 dBA light use; exact load dBA UNKNOWN; strong cooling; isolated fan/QC and BIOS-regression reports | exact SKU UNKNOWN; same platform 1501.6 µs | exact-sku LatencyMon and logged sustained TGP | Belgian AZERTY, 2.5GbE, 2x TB5, 3x USB-A; matched review 6h54 battery with dGPU off; €3798 pair; full dossier in `devices/` |
````
