---
id: SRC-0345
record_type: source
checked_at: "2026-08-13"
subject: "MSI Raider 16 Max HX B2WI-035BE controlled deep audit"
region: "BE"
source_type: "exact Belgian transaction and manufacturer specification plus current-chassis professional measurements"
exact_sku: "B2WI-035BE / 9S7-265111-035"
evidence_label: "PROVEN exact transaction/specification; LIKELY current-chassis behavior where RTX 5090 review unit is used; touchpad CONFLICT"
legacy_origin: "controlled one-candidate-at-a-time market pass 2026-08-13"
---

# MSI Raider 16 Max HX B2WI-035BE — controlled deep audit

## Exact Belgian transaction and support

- Coolblue exposes exact manufacturer code `9S7-265111-035` at **€3,699**, in stock, with the 400W charger included. The exact Belgian factory configuration is 290HX Plus, RTX 5080 16GB, 32GB, 2TB and AZERTY.
- The Belgian MSI extension `957-1XXXXE-073` is €162.62 at LASystems and explicitly extends eligible non-workstation notebooks from two to three years. Preferred support-adjusted total: **€3,861.62**, €582.55 below Dell. This is depot/carry-in style repair coverage with no standard loan device, not Dell ProSupport onsite.
- LASystems' lower €3,568.51 live listing is not used as the preferred total because its earlier exact offer record explicitly excluded the required adapter. The cleaner one-box Coolblue route remains the comparison baseline.

## Platform, display and expansion

- MSI specifies 175W maximum graphics power for B2WI, up to 300W combined CPU/GPU power, 2x SO-DIMM up to 128GB, one Gen4 plus one Gen5 M.2 slot, 2.5GbE, three 10Gbps USB-A, SD reader, HDMI 2.1, two TB4 ports and a separate DC-in.
- Both TB4 ports support DisplayPort and PD 3.1 up to 140W. This leaves both fast ports free when the proprietary 400W brick is attached and makes light travel charging possible, but 140W cannot sustain full performance.
- The exact OLED family panel was measured at about 481–500 nits SDR, 99.3% P3, excellent factory accuracy and sub-millisecond response. It is glossy and uses 1,440Hz PWM with 35% measured modulation at all brightness settings; most users should not perceive that high frequency, but PWM-sensitive buyers retain a risk.
- There is no G-SYNC and Notebookcheck found no Advanced Optimus on the reviewed OLED configuration. MSI Center provides a conventional MUX; changing the internal graphics path requires a reboot. This is materially less seamless than ASUS/Lenovo automatic switching.

## Sustained power, cooling and noise

- The official **175W** rating is real but is not the ordinary balanced operating point. Notebookcheck's same-current 290HX Plus/5090 chassis averaged 145W GPU in Balanced at 47.5dB(A), 147W in Extreme at 51.1dB(A), and 169W only in Apex at 57.0dB(A) or Cooler Boost at 60.2dB(A). Exact B2WI/5080 professional testing reports stable sustained performance, but does not independently reproduce the complete five-profile wattage table.
- Therefore the B2WI clears the practical full-power floor for render sessions, with **169W-class measured chassis proof marked LIKELY for the 5080 SKU**, not an unconditional claim that it sits at 175W in every mode. Balanced is the rational daily mode; Apex is the maximum-throughput/noise mode.
- Cooling hardware is substantial: three fans, six heatpipes and five exhausts. Tom's Hardware measured 75C CPU/72C GPU after 15 Metro loops and described everyday fans as barely noticeable; PCWorld verified under 50dBA under heavy load in its tested mode. Brief 103–105C CPU boost behavior exists in maximum profiles, but no recurring cooling-failure pattern was established.

## Inputs and construction

- The clickpad is approximately **130x83mm**, left-offset, conventional mechanical and plastic. This is larger than Lenovo's 120x75mm Mylar pad but smaller and less premium than the SCAR's large glass pad.
- Professional results materially conflict. Tom's Hardware calls it superb and predictable; HotHardware calls it smooth and perfectly acceptable. TechRadar reports wobble, flex and missed right-clicks; GamesRadar reports hollow feel, jitter, inconsistent taps and bounce. This is not evidence for one universally bad design, but it is too broad to dismiss as one Reddit anecdote. Mark execution `CONFLICT`, plausibly reflecting unit variation and reviewer sensitivity.
- Keyboard evidence is mixed rather than failed: crisp/rigid and satisfying in some reviews, but PCWorld criticizes key stabilization/contour and several reviews dislike the compressed numpad/layout.
- Construction is metal lid plus plastic keyboard deck and base. HotHardware and PCWorld found the structure generally well assembled/little flex, while TechRadar found excessive deck flex and GamesRadar noted hinge wobble. No recurring structural breakage pattern is established, but the materials and inconsistent feel are below the premium standard set by Dell/XMG/Legion.

## Mobility, stability and serviceability

- The laptop weighs about 2.6–2.655kg; the 400W adapter alone is about 1.335kg. Battery is 91.8Wh. Professional results range from 3–4 hours office use at 50% brightness to 5–6 hours real browsing/writing and 8h34 in a controlled mixed test. That is useful for this class and generally better than Legion review results, but far from an efficient Laptop A.
- MSI Center supplies Balanced/Extreme/Eco profiles, MUX and Live Update. Exact-platform support remained active through a July 2026 BIOS and August 2026 Intel ME update. Searches found isolated fullscreen/game-BIOS and high-temperature reports, but no corroborated recurring crash, sleep, Thunderbolt, Wi-Fi, bricking or cooling-defect pattern.
- Same-current-chassis LatencyMon measured 1,626.4us with minor DPC issues but no dropped 4K60 frames. This is acceptable for the stored non-Ableton use case, not a low-latency-audio strength.
- The two-screw quick-access panel exposes both SO-DIMMs and both M.2 slots. Full bottom removal is needed for battery/Wi-Fi and clips can be awkward. This is very good upgradeability, but not tool-less workstation service.

## Dell and Lenovo delta

- **Against Dell 2H3VJ:** MSI decisively wins raw GPU/VRAM class, CPU class, purchase price, storage capacity and ordinary portability. Dell retains the more premium/robust business platform, IPS lifecycle advantage, ISV/ECC options and much stronger three-year ProSupport service model.
- **Against Lenovo 83F500HFMB:** MSI costs €457.39 less before Lenovo's unresolved third year, has 2TB rather than 1TB, two TB4 ports, SD, a larger pad, faster CPU suffix and better measured battery ceiling. Lenovo has aluminium top/bottom, smoother graphics switching and a more coherent premium feel. Both need a loud/full-performance condition: Lenovo needs its rear raised; MSI needs Apex for measured ~169W.

## Verdict

The Raider remains the **raw-performance/value leader**, not the premium overall winner. Its core platform, cooling capacity, connectivity and current stability are substantially proven. It is not disqualified by MSI reputation or plastic alone. The two decisive ownership penalties are the rebooting MUX/no G-SYNC integration and the unresolved professional-review conflict over touchpad/build execution. With touchpad quality now a major preference, that conflict prevents a final recommendation ahead of SCAR/XMG without pretending it can be solved from public evidence.

## Sources

- MSI family specification and I/O: https://www.msi.com/Laptop/Raider-16-Max-HX-B2WX/Specification
- MSI product/PD details: https://www.msi.com/Laptop/Raider-16-Max-HX-B2WX
- Coolblue exact Belgian transaction: https://www.coolblue.be/fr/produit/981021/msi-raider-16-max-hx-oled-b2wi-035be-azerty.html
- Belgian third year: https://www.lasystems.be/en/msi-957-1xxxxe-073
- Notebookcheck full review and profile measurements: https://www.notebookcheck.net/MSI-Raider-16-Max-HX-laptop-review-Faster-than-the-Titan-18-HX.1310492.0.html
- Notebookcheck power-profile table: https://www.notebookcheck.net/175-W-GPU-in-the-MSI-Raider-16-Max-HX-averages-only-147-W-in-Extreme-Performance-mode.1316047.0.html
- Notebookcheck MUX/Advanced Optimus: https://www.notebookcheck.net/MSI-Raider-16-Max-HX-costs-over-3000-doesn-t-even-have-Advanced-Optimus-or-G-Sync.1316366.0.html
- Tom's Hardware review: https://www.tomshardware.com/laptops/gaming-laptops/msi-raider-16-max-hx-review
- PCWorld review: https://www.pcworld.com/article/3121543/msi-raider-16-max-hx-review.html
- TechRadar review: https://www.techradar.com/computing/gaming-laptops/msi-raider-16-max-hx-review
- HotHardware review: https://hothardware.com/reviews/msi-raider-16-max-hx-gaming-laptop-review
