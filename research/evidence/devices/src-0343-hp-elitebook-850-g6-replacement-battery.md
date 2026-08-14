---
id: SRC-0343
record_type: source
checked_at: "2026-08-13"
subject: "HP EliteBook 850 G6 4YD62AV replacement battery identity and current purchase routes"
region: "BE/EU"
source_type: "HP maintenance documentation plus exact-part retailer records"
exact_sku: "EliteBook 850 G6 4YD62AV; battery TT03XL / 933322-855"
evidence_label: "PROVEN battery identity; seller freshness requires receipt inspection"
legacy_origin: "temporary Laptop A restoration 2026-08-13"
---

# EliteBook 850 G6 replacement battery

## Exact required battery

- HP family/model: `TT03XL` / `TT03056XL-PL`
- HP orderable spare: `933322-855`
- Earlier equivalent HP numbers: `933322-006`, `933322-852`, `932824-421` and `932824-2C1`
- Electrical specification: 3-cell, 56Wh, 4.85Ah, nominal 11.55V Li-ion/Li-polymer
- HP's exact 850 G6 Maintenance and Service Guide lists `933322-855` for the 3-cell 56Wh battery. The locally measured battery identifies itself as `TT03056XL` with the same 56.02Wh design energy.

## Purchase hierarchy

1. Prefer a genuine HP `933322-855` with 12-month seller warranty and a recent manufacturing date. Current listings include IPC-Computer at about €99 and Informatique.nl at about €103.
2. If genuine stock is old or the seller cannot provide age/return assurance, choose a named replacement with a real warranty rather than an anonymous marketplace battery. Origin Storage/BTI offers the full 56Wh/11.55V specification; Subtel offers 4400mAh with a three-year warranty but lower energy.
3. Avoid listings that merely say “fits 850 G6” without `TT03XL`/`933322-855`, voltage, Wh rating, warranty and seller identity. Avoid inflated 70–90Wh claims in the original physical envelope.

## Installation/acceptance

- Shut down, disconnect AC, remove the bottom cover, disconnect the battery cable, then remove the four T8 screws per HP's service procedure.
- Inspect the received pack for swelling, damaged insulation and an implausibly old date before installation.
- After installation, run HP UEFI battery diagnostics, fully charge once for gauge learning, then generate a Windows battery report. Do not deliberately deep-cycle a new lithium battery repeatedly.
- For desk use, enable HP Battery Health Manager/charge management rather than keeping it indefinitely hot at 100%.

## Sources

- https://support.hp.com/us-en/product/setup-user-guides/hp-elitebook-850-g6-notebook-pc/model/26609809
- https://www.bhphotovideo.com/lit_files/514659.pdf
- https://www.ipc-computer.de/notebook-ersatzteile/akkus/akku-tt03-58800028
- https://www.informatique.nl/257990/hp-battery-3-cell-56-whr-4-85-ah.html
- https://parts.axitech.be/pen/replacement-battery-for-hp-elitebook-755-933322-852-bti.html
- https://www.subtel.be/en/hp-elitebook-850-g6-battery-4400mah-from-subtel-o.html
