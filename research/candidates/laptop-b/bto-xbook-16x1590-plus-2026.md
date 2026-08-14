---
id: CAND-131
record_type: candidate
role: laptop-b
scope: family
status: verifying
flags: ["current-2026", "benelux-configurator", "belgian-azerty-option", "lower-power-5080", "specification-conflict", "platform-evidence-missing"]
region: "NL/EU; Belgian delivery to verify"
exact_sku: "configurable BTO X•BOOK 16X1590 Plus+"
last_verified: "2026-08-13"
offer_ids: []
source_ids: ["SRC-0294"]
critical_unknowns: ["independent exact-chassis review", "Belgian delivery and after-sales handling", "touchpad dimensions/material", "battery runtime", "firmware update path"]
legacy_status: "new 2026 Benelux discovery"
legacy_origin: "BTO live configurator audit 2026-08-13"
---

# BTO X•BOOK 16X1590 Plus+

- **GPU:** configurable RTX 5080 16GB or RTX 5070 Ti 12GB.
- **Official TGP:** `CONFLICT`; family table says 150–175W for RTX 5080, selectable motherboard entries say 115W + 25W Dynamic Boost.
- **Sustained GPU:** UNKNOWN; no qualifying exact-chassis review found.
- **RAM / upgrade:** configurable to 32GB or more in two SO-DIMM slots, maximum 96GB.
- **M.2:** three slots: one PCIe 5 x4 and two PCIe 4 x4.
- **Thermals / noise:** UNKNOWN; no independent exact-current-chassis measurements found.
- **DPC:** UNKNOWN.
- The current Dutch configurator offers Core Ultra 9 290HX Plus, RTX 5080, Belgian AZERTY or US International, a 500-nit 99% DCI-P3 IPS panel, two Thunderbolt 4 ports, two USB-A ports, 2.5GbE, three M.2 slots, up to 96GB RAM and optional three-year pickup-and-return coverage.
- The visible family summary says the RTX 5080 can run at `150–175W`, but the selectable motherboard entries identify both the Ultra 7 and Ultra 9 RTX 5080 branches as **115W + 25W Dynamic Boost = 140W**. Under the contradiction gate the exact selectable value governs purchase eligibility until BTO corrects or proves otherwise.
- The preselected `Power Plus` configuration is €3391 with RTX 5080, 32GB, 1TB and Windows 11 Pro, but it does not prove the 290HX Plus selection; the Ultra 9 board is a further €800 from the €2299 base and is temporarily sold out/pre-order for early September. A final exact basket total was therefore not promoted.
- The page also conflicts between a listed 330W included adapter in the family specification and a 230W included adapter in the active configurator. This reinforces the need for an exact written bill of materials.
- **Decision:** returned to `verifying` after GPU wattage ceased to be an isolated rejection gate. Its excellent port/keyboard/storage specification is relevant, but no recommendation is possible until an independent exact-chassis review proves sustained Dell-beating performance, thermals, light-load acoustics, touchpad quality, battery behavior and firmware stability, and BTO resolves the board/adapter conflicts.
