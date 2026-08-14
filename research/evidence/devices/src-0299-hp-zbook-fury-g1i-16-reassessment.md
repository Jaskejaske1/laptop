---
id: SRC-0299
record_type: source
checked_at: "2026-08-13"
subject: "HP ZBook Fury G1i 16 exact Belgian configurations and Dell-baseline reassessment"
region: "BE"
source_type: "HP exact product pages, HP support specifications, Belgian channel offers and independent same-family review"
exact_sku: "C78G4ET#UUG, C78GDET#UUG, C78G6ET#UUG, CA2Y7ET#UUG"
evidence_label: "PROVEN exact configurations/prices where stated; 16-inch independent thermals/acoustics remain UNKNOWN"
legacy_origin: "ZBook Fury reconsideration 2026-08-13"
---

# HP ZBook Fury G1i 16 reassessment — SRC-0299

## Exact Belgian ladder

| SKU | CPU / GPU | Display | RAM / SSD | Current transaction evidence | Result |
|---|---|---|---|---|---|
| `C78G4ET#UUG` | Ultra 7 255HX / RTX Pro 3000 12GB ECC | 2560x1600 120Hz matte, 400 nit, 100% sRGB | 32GB (1x32) / 1TB | ZStore currently shows €4284 sold out with 3/3/0 warranty; supplied catalog €5174.93 in stock | Fits budget only on sold-out route; same GPU class as Dell and fails B's P3 display gate. |
| `C78GDET#UUG` | Ultra 7 255HX / RTX Pro 4000 16GB ECC | 2560x1600 120Hz matte, 400 nit, 100% sRGB | 32GB / 1TB | LASystems unavailable; indexed Belgian prices exceed budget, while ZStore collection had a €3995 historical promotion | Better GPU/VRAM, but exact display fails P3 and no live qualifying transaction. |
| `C78G6ET#UUG` | Ultra 9 285HX / RTX Pro 4000 16GB ECC | 3840x2400 120Hz matte DreamColor, 500 nit, 100% DCI-P3 | 32GB / 1TB | HP exact Belgian configuration; current channel prices roughly €4819.59–€6823.72 | Correct specification concept, but at least €375.42 over the €4444.17 ceiling before any support correction. |
| `CA2Y7ET#UUG` | Ultra 9 285HX / RTX Pro 5000 24GB ECC | 3840x2400 matte P3-class panel | 32GB / 1TB | supplied catalog €8045.31; other current listings above €7900 | Extreme workstation configuration, economically irrelevant to current ceiling. |

## Family strengths

- Four SO-DIMM slots and up to 128/192GB depending region/document revision; exact unit ships 1x32GB and is immediately expandable.
- Up to four M.2 NVMe drives at family level; 16-inch exact slot availability/configuration should be confirmed for the purchased motherboard but this is far beyond the two-slot minimum.
- 2x Thunderbolt 5, 1x Thunderbolt 4, HDMI 2.1, full-size SD and integrated RJ45. It has only one USB-A port, so the buyer's mouse-plus-stick workflow would use one TB/USB-C adapter.
- Tool-less bottom access, replaceable RAM/SSD/battery/fans and a published HP maintenance guide make this one of the strongest repairability architectures considered.
- Windows 11 Pro, HP Sure Start/self-healing BIOS, ISV certifications, optional vPro, smart-card options and purchasable three-year workstation support fit the no-debugging/business use case better than gaming platforms.
- Matte 500-nit full-P3 DreamColor exists and is officially mapped to exact `C78G6ET`; this is not a family-spec-to-cheap-SKU extrapolation.
- The 16-inch chassis weighs about 2.43kg, materially easier to carry than the 18-inch Dell while still workstation-class.

## Performance and cooling limits

- HP's current worldwide 16-inch QuickSpecs lists nominal graphics power of 105W for RTX Pro 3000 and 115W for RTX Pro 4000/5000. The maintenance guide separately lists regional/service-board variants up to 115W for Pro 3000 and 135W for Pro 4000. The exact board/power mapping of Belgian `C78G4ET#UUG` and `C78G6ET#UUG` is therefore `CONFLICT`/`UNKNOWN` until HP confirms it; no published option is a 175W GeForce implementation.
- Independent testing of the larger G1i 18 with RTX Pro 5000 found cool surfaces, silent/inaudible idle, 8h01 Wi-Fi, four RAM/four SSD slots and a comfortable large clickpad with dedicated buttons. Under load it reached 48–58dBA and its GPU consistently trailed the identically configured Dell Pro Max 18 Plus, whose 175W target is higher.
- That 18-inch review is evidence for HP's platform philosophy and software, not proof of exact 16-inch thermal/noise behavior. A genuinely independent 16-inch G1i 4000/5000 review with sustained power, fan acoustics and LatencyMon was not found. These remain `UNKNOWN`, not assumed good or bad.
- The reviewed 18-inch unit measured 2431us LatencyMon versus 1105us for the Dell comparison, with no dropped 4K60 frames. Audio is outside the active gate, but this prevents claiming universally superior driver latency.
- An HP-commissioned Principled Technologies test found the 16-inch Fury with matched 285HX/RTX Pro 5000 slightly ahead of Dell Pro Max 16 Plus in several content-creation tests and 35% longer unplugged. It is useful corroboration but not independent evidence and does not compare against exact Dell `2H3VJ` with RTX Pro 3000.

## Sources

- HP exact `C78G6ET`: https://www.hp.com/be-nl/products/workstations/product-details/product-specifications/2103353171
- HP ZBook Fury G1i 16 worldwide QuickSpecs, version 11 (17 December 2025): https://device.report/m/ca199c10637fb6f48e5228b00dcfad8cdbd6cbe97d08f920c32f124d88960108
- HP G1i 16 support specification: https://support.hp.com/ph-en/document/ish_12456093-12456254-16
- ZStore exact `C78G4ET`: https://www.zstore.be/products/hp-zbook-fury-16-g1i-c78g4et-uug
- LASystems exact `C78G6ET`: https://www.lasystems.be/en/hp-c78g6et-uug
- Notebookcheck G1i 18 review: https://www.notebookcheck.net/HP-ZBook-Fury-G1i-18-workstation-review-Great-with-some-flaws.1167715.0.html
- HP-commissioned matched-platform test: https://www.principledtechnologies.com/HP/ZBook-Fury-16-G1i-competitive-0226.pdf
- Maintenance guide: https://gzhls.at/blob/ldb/0/9/b/1/775a885156c34db27206562604eb3583958a.pdf
