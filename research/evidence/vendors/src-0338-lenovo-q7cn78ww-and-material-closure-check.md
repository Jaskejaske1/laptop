---
id: SRC-0338
record_type: source
checked_at: "2026-08-13"
subject: "Lenovo 16IAX10H current BIOS and construction closure check"
region: "global platform; Belgian SKUs remain isolated commercially"
source_type: "manufacturer support/PSREF plus exact-platform incident review"
exact_sku: "16IAX10H platform"
evidence_label: "PROVEN current BIOS and primary materials; firmware/material conflicts unresolved"
legacy_origin: "finalist unknown-closure pass 2026-08-13"
---

# Lenovo 16IAX10H closure check — SRC-0338

- Lenovo still publishes `Q7CN78WW`, dated 12 June 2026, as the latest/recommended BIOS on 13 August 2026. No `Q7CN79WW` or later package was found.
- Lenovo's changelog fixes an S3-resume black screen and modifies CPU-overclocking, thermal, DTT and silent/performance power tables. It does not acknowledge or close the reported NVMe-disappearance/BSOD branch.
- Multiple fresh exact-platform reports associate Q7CN78WW with storage/power-state crashes and constrained rollback. They do not prove that every unit fails, but no superseding Lenovo fix or controlled professional clearance exists. Under the buyer's no-debugging rule, the platform remains `CONFLICT`, not technically rejected forever.
- PSREF explicitly proves the 175W RTX 5080, two CSODIMMs, Gen5+Gen4 M.2 slots, 2.5GbE, TB4, 99.9Wh option, 120x75mm Mylar pad and aluminium top/bottom.
- PSREF does not separately state the C-cover/palmrest material. Because professional descriptions conflict, “fully aluminium” is not recommendation-grade proof.

Sources:

- https://support.lenovo.com/ph/en/downloads/ds574156
- https://psref.lenovo.com/syspool/Sys/PDF/Legion/Legion_Pro_7_16IAX10H/Legion_Pro_7_16IAX10H_Spec.pdf
