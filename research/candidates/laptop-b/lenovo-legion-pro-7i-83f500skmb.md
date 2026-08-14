---
id: CAND-119
record_type: candidate
role: laptop-b
scope: exact-sku
status: conflict
flags: ["current-2026", "belgian-azerty", "full-power-5080", "all-aluminium", "price-not-yet-listed", "support-third-year-open", "current-firmware-conflict"]
region: "BE"
exact_sku: "83F500SKMB / EAN 828132064291"
last_verified: "2026-08-13"
offer_ids: []
source_ids: ["SRC-0273", "SRC-0274", "SRC-0242", "SRC-0243", "SRC-0165", "SRC-0166", "SRC-0167", "SRC-0295"]
critical_unknowns: ["live Belgian total price and stock", "priced third support year", "commercial difference from 83F500UAMB", "exact refreshed-SKU DPC", "upstream resolution of Q7CN78WW firmware conflict"]
legacy_status: "new exact Belgian PSREF candidate"
legacy_origin: "Lenovo PSREF Belgian model audit 2026-08-13"
---

# Lenovo Legion Pro 7i 83F500SKMB

Official Belgian 2026 sibling of `83F500UAMB`, announced 18 May 2026. The PSREF fields inspected are otherwise identical: 290HX Plus, 175W RTX 5080 16GB, Belgian keyboard, 32GB CSODIMM, 1TB SSD, two M.2 slots, full-P3 OLED, TB4 plus second USB-C, three USB-A, 2.5GbE, 99.9Wh and two-year Premium Care onsite upgrade.

- **GPU:** RTX 5080 Laptop 16GB.
- **Official TGP:** 175W.
- **Sustained GPU:** PROVEN for the same current chassis; exact refreshed retail unit remains an acceptance check.
- **RAM / upgrade:** 32GB DDR5-6400 as 2x16GB CSODIMM in two serviceable slots.
- **M.2:** two slots, one Gen5 x4 and one Gen4 x4; 1TB installed.
- **Thermals / noise:** same-chassis evidence shows loop-stable full power, 22.9–26.3dB(A) idle, approximately 40dB Balanced and 54dB Performance.
- **DPC:** UNKNOWN for this exact refreshed Belgian SKU.

Treat this as a separate exact SKU. Its different EAN and announce date may reflect a distribution revision, but no functional or commercial distinction may be invented. Live price, stock, third-year support and the exact difference from `83F500UAMB` remain UNKNOWN. The shared 16IAX10H Q7CN78WW firmware state is `CONFLICT`; recommendation is blocked until Lenovo fixes it upstream or sufficiently exact independent evidence clears current shipping units.
