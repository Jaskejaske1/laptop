---
id: CAND-133
record_type: candidate
role: laptop-b
scope: family
status: rejected
flags: ["workstation-strength", "excellent-repairability", "model-year-2025", "price-or-display-gate", "gpu-power-below-175w"]
region: "BE"
exact_sku: "C78G4ET#UUG / C78GDET#UUG / C78G6ET#UUG / CA2Y7ET#UUG"
last_verified: "2026-08-13"
offer_ids: []
source_ids: ["SRC-0297", "SRC-0299"]
critical_unknowns: ["independent exact 16-inch sustained thermal/noise review", "exact 16-inch LatencyMon", "live sub-€4444 P3/RTX Pro 4000 transaction"]
legacy_status: "reopened after supplied workstation listings"
legacy_origin: "attachment pasted-text.txt ZBook Fury rows plus user-requested reassessment"
---

# HP ZBook Fury G1i 16 Belgian family

## Assessment

- **GPU:** RTX Pro 3000 12GB, RTX Pro 4000 16GB or RTX Pro 5000 24GB depending exact SKU.
- **Official TGP:** `CONFLICT` for the exact Belgian SKUs. Current worldwide 16-inch QuickSpecs lists 105W Pro 3000 and 115W Pro 4000/5000 nominally; the maintenance guide lists service/regional variants up to 115W Pro 3000 and 135W Pro 4000. None is a 175W GeForce implementation.
- **Sustained GPU:** exact 16-inch sustained trace UNKNOWN. Same-family 18-inch review sustains its workload but trails the Dell with matched Pro 5000.
- **RAM / upgrade:** 32GB factory in listed SKUs; four SO-DIMM slots, family maximum 128/192GB depending documentation/configuration.
- **M.2:** family supports up to four NVMe SSDs; exact purchased motherboard population must be confirmed.
- **Display:** `C78G4ET` and `C78GDET` use 400-nit sRGB IPS. Only `C78G6ET` and high-end `CA2Y7ET` provide the matte 500-nit full-P3 DreamColor direction.
- **Thermals / noise:** exact 16-inch independent evidence UNKNOWN. Same-family 18-inch has silent idle, cool surfaces and 48–58dBA load, but cannot be silently transferred as PROVEN to the smaller chassis.
- **DPC:** exact 16-inch UNKNOWN. Same-family 18-inch recorded 2431us with no dropped 4K60 frames.
- **I/O:** 2x TB5, 1x TB4, HDMI, SD, RJ45, but only one USB-A.
- **Repairability/support:** outstanding: tool-less entry, four RAM/four-storage architecture, published service manual, business BIOS/security and three-year support routes.
- **Model year:** G1i is the 2025 workstation generation and remains HP's Fury offering in 2026; no Fury G2i launch was found. Current-year hard gate therefore still fails unless the buyer explicitly treats current-for-sale professional platforms differently.
- **Dell delta:** 16-inch portability, superior RAM/storage expansion and potentially perfect matte P3 DreamColor. Dell remains cheaper than the correct P3/Pro 4000 SKU, offers higher GPU power in reviewed matched configurations and comes with the known €4444.17 ProSupport transaction.

## Verdict

The Fury is technically the best *kind* of laptop for the buyer, but the Belgian product ladder is badly segmented: affordable SKUs have sRGB and Dell-class or lower GPU power; the correct P3/Pro 4000 SKU is over budget. Reopen immediately if `C78G6ET#UUG` or an equivalent BE-AZERTY 285HX/Pro4000/DreamColor configuration drops below €4444.17 with three-year coverage.
