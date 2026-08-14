---
id: SRC-0346
record_type: source
checked_at: "2026-08-13"
subject: "HP OMEN Max 16-ah0001nb BB0P1EA controlled deep audit"
region: "BE"
source_type: "exact Belgian manufacturer transaction/specification, exact support product and professional current-chassis reviews"
exact_sku: "BB0P1EA#UUG"
evidence_label: "PROVEN exact transaction/specification; PROVEN/LIKELY review transfer labelled; stability CONFLICT"
legacy_origin: "controlled one-candidate-at-a-time market pass 2026-08-13"
---

# HP OMEN Max 16-ah0001nb / BB0P1EA — controlled deep audit

## Transaction and support

- HP Belgium's exact live page showed **€4,299 incl. VAT/Recupel** and exact product code `BB0P1EA#UUG`, but `NIET LEVERBAAR` with a disabled purchase control. Search-engine caches exposed several older prices; none is a valid current transaction.
- Exact `UM947E` is shown by HP Belgium as a compatible three-year pickup-and-return Care Pack for €69.99. Hypothetical same-price restock total: **€4,368.99**, €75.18 under Dell. Pickup/depot service is not equivalent to Dell ProSupport onsite.

## Exact specification and integration

- Exact factory set: 275HX, RTX 5080 16GB, 64GB DDR5, 2TB PCIe Gen4 SSD, Belgian AZERTY and 330W dedicated adapter.
- Official family/retailer specification plus exact professional review establish **175W RTX 5080 maximum**, two SO-DIMM and two M.2 slots, 2.5GbE, 2x 10Gbps USB-A, HDMI 2.1 and two TB4 ports. HP's exact page assigns both TB4 ports 40Gbps, DisplayPort 2.1 and PD; the main DC connector keeps both available. Exact HP text supports 100W/20V USB-C light-use charging.
- Exact OLED is glossy 2560x1600, 48–240Hz, 400-nit SDR/500-nit HDR specified, 100% DCI-P3, Advanced Optimus and G-SYNC. HP specifies DC dimming above 100 nits; this does not establish burn-in immunity or seven-year panel life.

## Cooling, sustained behavior and acoustics

- Notebookcheck's same ah000 chassis reached official high GPU power but found the CPU above 90C and slower than Legion's same 275HX; its Cinebench R23 multi score was 33,449 versus 36,597. Noise measured about 29dB idle, 47.7dB average load, 54.8dB Cyberpunk and 61.1dB maximum.
- Tom's 5090 unit averaged 99.68C CPU and 83.15C GPU over 15 Metro loops; frame rate fell from the first to last run. PC Gamer measured brief 105C CPU and found Balanced cut Time Spy Extreme by almost 25% versus Unleashed. This is powerful cooling capacity, not a quiet or thermally conservative implementation.
- Windows Central's same chassis completed 25 Time Spy loops at 99.4% frame-rate stability. Therefore sustained cooling is credible, while CPU temperature/noise efficiency is weaker than the best rivals.

## Stability and firmware conflict

- PC Gamer's exact 275HX/175W RTX-5080 review unit repeatedly stuttered in several games and produced unusually poor 1% lows; the reviewer explicitly could not assume a future firmware/driver fix.
- PCWorld's 5080/OLED unit delivered peer-level performance, TechRadar reported high frame rates without stutter, and Windows Central's 5090 chassis loop was highly stable. The defect is therefore not reproducibly systemic across professional units.
- HP published an April 2026 chassis-family knowledge-base article for TDR `0x116`, black-screen and restart behavior after sleep; public exact-family reports also exist for isolated Thunderbolt storage and power-state issues. This is a meaningful risk signal but not prevalence evidence.
- Final field: `CONFLICT`. It blocks a premium winner position under the no-buyer-testing rule, but does not justify rejecting every OMEN Max.

## Inputs, construction and serviceability

- Notebookcheck identifies recycled aluminium outer lid and bottom covers, but 30–45% recycled plastic palm rest and bezel. Tom's calls the base/lid aluminium; PCWorld finds little flex, creak or keyboard deformation. The correct conclusion is rigid mixed construction, not all-metal.
- Touchpad is about 125x80mm. Tom's and Notebookcheck describe smooth/accurate navigation and satisfying clicks; PCWorld calls it mediocre mainly for minimum size; PC Gamer's unit responded to taps but not normal click-drag despite a positive click mechanism. Material is not proven glass. Execution remains mostly adequate with one defect report, and size loses clearly to SCAR.
- Keyboard evidence conflicts subjectively: PCWorld finds good travel/firm tactile action, while Tom's finds mushy/lifeless keys and dislikes the compressed arrow cluster. This cannot be collapsed into an objective failure.
- Six Phillips screws expose two SO-DIMMs and two M.2 slots. The second M.2 is accessible, while the occupied first slot is partly covered by a heatpipe/fan area. Upgradeability is good, but not workstation-class tool-less access.

## Mobility and Dell delta

- Weight is about 2.68kg plus a roughly 0.9kg 330W adapter. The 83Wh battery yielded 3h20 Tom's web, about 4h PC Gamer light use, 5h30 PCWorld video and 5h48 Notebookcheck Wi-Fi. The spread reflects workloads; none proves all-day mobility.
- Windows Central measured roughly 32% CPU and 80% GPU reduction off AC and about three hours real use. Advanced Optimus, G-SYNC, separate DC and 100W light charging are good integration, but the endurance/performance policy is worse than a mobile-friendly premium leader.
- Against Dell 2H3VJ, HP wins raw GPU class, VRAM, physical size/weight and likely price by only €75.18 at the last live sticker plus support. Dell retains onsite support, IPS lifecycle advantage, workstation platform discipline and demonstrated long-battery positioning. HP cannot win the total comparison while unavailable and stability-conflicted.

## Sources

- Exact HP Belgium page: https://www.hp.com/be-nl/shop/products/laptops/hp-omen-max-16-gaming-laptop-16-ah0001nb-shadow-black-oled-qhd-rtx-5080-azerty-toetsenbord-met-rgb-verlichting-per-toets-bb0p1ea-uug
- Exact HP product details: https://www.hp.com/be-nl/products/laptops/product-details/2102979732
- Exact Care Pack: https://www.hp.com/be-nl/shop/products/carepacks/hp-3-jaar-care-pack-haal-en-brengservice-um947e
- Notebookcheck: https://www.notebookcheck.net/HP-Omen-Max-16-laptop-review-Super-fast-but-a-little-bit-too-hot.999164.0.html
- PCWorld 5080/OLED review: https://www.pcworld.com/article/2785374/hp-omen-max-16-review-packs-rtx-5080-performance-for-a-little-less.html
- PC Gamer 5080 review: https://www.pcgamer.com/hardware/gaming-laptops/hp-omen-max-16-gaming-laptop-review/
- Tom's Hardware 5090/OLED review: https://www.tomshardware.com/laptops/gaming-laptops/hp-omen-max-16-review
- Windows Central review: https://www.windowscentral.com/hardware/hp/hp-omen-max-16-2025-review
- TechRadar review: https://www.techradar.com/computing/gaming-laptops/hp-omen-max-16
- HP TDR/black-screen support article: https://h30434.www3.hp.com/t5/Gaming-Knowledge-Base/Troubleshooting-TDR-Timeout-and-Black-Screen-Issues-on-OMEN/ta-p/9644534
