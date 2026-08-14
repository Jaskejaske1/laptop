---
id: SRC-0285
record_type: source
checked_at: "2026-08-13"
subject: "MSI Raider 16 Max HX B2W Thunderbolt-generation conflict"
region: "BE / current B2W family"
source_type: "official MSI regional SKU sheets and exact Belgian retailer metadata"
exact_sku: "B2WI-035BE; same-current B2WI/B2WJ family"
evidence_label: "CONFLICT for exact Belgian SKU; TB4 PROVEN on multiple official sibling SKUs"
legacy_origin: "continued port audit 2026-08-13"
---

# MSI Raider B2W Thunderbolt-generation conflict — SRC-0285

## Sources

- https://storage-asset.msi.com/specSheet/id/nb/Raider%2016%20Max%20HX%20B2WI-082ID.pdf
- https://storage-asset.msi.com/specSheet/fr/nb/Raider%2016%20Max%20HX%20B2WI-001FR.pdf
- https://storage-asset.msi.com/specSheet/uk/nb/Raider%2016%20Max%20HX%20B2WJ-068UK.pdf
- https://www.lasystems.be/nl/msi-raider-16-max-hx-b2wi-035be

## Evidence

MSI's own current regional specification sheets for the same B2W chassis consistently specify **2x Thunderbolt 4**. That includes two B2WI RTX 5080 SKUs and one B2WJ RTX 5090 SKU. The exact Belgian LASystems feed instead labels `B2WI-035BE` as **2x Thunderbolt 5**. No exact Belgian MSI specification sheet was found to arbitrate the discrepancy.

The exact Belgian port generation must therefore remain `CONFLICT`, with **2x TB4 as the conservative purchasing assumption**. This does not make the candidate ineligible because the buyer explicitly accepts TB4 on Intel, but the active record may not advertise TB5 as proven.
