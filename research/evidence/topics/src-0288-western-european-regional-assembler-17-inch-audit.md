---
id: SRC-0288
record_type: source
checked_at: "2026-08-13"
subject: "Western-European regional assembler 17–17.3-inch audit"
region: "NL/DE/IT/ES/EU; transactions remain region-isolated"
source_type: "official vendor catalogs and exact product pages"
exact_sku: "BTO 17X1552/17X1484/CERIX-17; regional catalog ceilings"
evidence_label: "PROVEN official ceilings; no new qualifying chassis"
legacy_origin: "17-inch hourly night-control 2026-08-13 04:59Z"
---

# Western-European regional assembler audit — SRC-0288

## Sources

- BTO X•BOOK 17X1552: https://bto.eu/product/bto-xbook-17x1552/
- BTO X•BOOK 17X1484: https://bto.eu/product/bto-xbook-17x1484/
- BTO TOXIC CERIX-17: https://bto.eu/product/toxic-cerix-17-e58-vii/
- MIFCOM RTX 5000 laptop catalog: https://www.mifcom.de/gaming-laptops-mit-rtx-5000-cid828
- MIFCOM exact RTX 5080 platform: https://www.mifcom.de/gaming-laptop-ultra-9-275hx-rtx-5080-18-0-id23490
- ONE RTX 50 notebook catalog: https://www.one.de/notebooks/laptop-highlights/laptop-mit-rtx-50-serie/
- Raiontech gaming catalog: https://www.raiontech.com/categoria-prodotto/raionbook/pc-portatile-notebook-gaming-offerte/
- Raiontech X50 RTX 5080: https://www.raiontech.com/prodotto/raionbook/pc-portatile-notebook-gaming-offerte/raionbook-x50/
- Mountain laptop catalog: https://mountain.es/collections/portatiles
- Mountain Graphite RTX 5080: https://mountain.es/portatiles/graphite

## Findings

| Vendor | Current 17–17.3-inch result | Current RTX 5080 placement | Gate outcome |
|---|---|---|---|
| BTO Netherlands | 17X1552 and CERIX-17 reach RTX 5060 115W; 17X1484 reaches RTX 5050 | BTO 5080 configurator is X•BOOK 16/18 | Hard GPU floor failure |
| MIFCOM Germany | no separate current 17-inch RTX 5080 chassis exposed | exact 275HX/5080 system is 18-inch | No qualifying size; German keyboard would remain a hard exclusion |
| ONE Germany | 17-inch RTX 5080 listing is MSI Vector A2XW | reseller of the already rejected chassis | No new device; German keyboard route ineligible |
| Raiontech Italy | no verified 17-inch RTX 5080 platform in current gaming catalog | X50 RTX 5080/5090 is 18-inch | No qualifying size or BE support/keyboard route |
| Mountain Spain | current catalog has 14/15/16/18-inch systems | Graphite RTX 5080 is 18-inch; Jade is 16-inch | No 17-inch chassis; product metadata also contains GPU-memory inconsistencies |
| NovaCustom Netherlands | no current RTX 5080/5090 gaming-notebook family was established | none proven | No product candidate; absence is bounded to indexed official catalog discovery |

## Conclusion

This pass adds a useful nearby assembler: BTO offers genuine Dutch 17.3-inch configurators with two M.2 slots and local service, but its GPU ceiling is only RTX 5060. The other vendors either expose their RTX 5080 chassis at 16/18 inches or resell the already rejected MSI Vector 17. No new 17–17.3-inch full-power RTX 5080 candidate, Belgian/US-International keyboard route or professional exact-chassis review appeared.
