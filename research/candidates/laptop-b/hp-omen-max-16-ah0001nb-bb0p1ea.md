---
id: CAND-058
record_type: candidate
role: laptop-b
scope: exact-sku
status: conflict
flags: ["currently-unavailable", "professional-performance-conflict", "premium-input-tradeoff"]
region: "BE"
exact_sku: "BB0P1EA#UUG"
last_verified: "2026-08-13"
offer_ids: ["OFFER-HP-BE-BB0P1EA-UUG-2026-08"]
source_ids: ["SRC-0013", "SRC-0015", "SRC-0019", "SRC-0020", "SRC-0325", "SRC-0346", "SRC-0353"]
critical_unknowns: ["next orderable Belgian price/stock", "resolution of professional RTX-5080 stutter conflict", "exact BB0P1EA DPC behavior"]
legacy_status: "CONFLICT — formerly €2999 snippet vs €4299/unavailable page"
legacy_origin: "research/candidates.md:71"
---

# HP OMEN Max 16-ah0001nb / BB0P1EA#UUG

## Exact Belgian configuration

- Current HP Store page: **€4,299**, but the buy control is disabled and the page says **NIET LEVERBAAR**. Cached €2,999/€3,199/€3,499 snippets are not current transactions.
- Core Ultra 9 275HX, RTX 5080 16GB at official 175W maximum, 64GB DDR5, 2TB Gen4 SSD, Belgian AZERTY and two SO-DIMM/two M.2 slots.
- Glossy 2560x1600 48–240Hz OLED, 400-nit SDR/500-nit HDR specification, 100% DCI-P3, G-SYNC and Advanced Optimus.
- 2x TB4 with DP 2.1/PD, 2x 10Gbps USB-A, HDMI 2.1, 2.5GbE, audio and separate 330W DC-in. The two TB4 ports remain free on the main adapter; 100W USB-C is for light use.
- Exact three-year HP pickup-and-return Care Pack `UM947E` is €69.99. If stock returned at €4,299, total would be **€4,368.99**, only €75.18 below Dell.

## Migrated assessment

- **Price:** €4299 live page but unavailable; €4368.99 hypothetical with three years
- **CPU:** Core Ultra 9 275HX
- **GPU:** RTX 5080 16GB
- **Official TGP:** 175W
- **Sustained GPU:** PROVEN high-power class; exact profile wattage incomplete and maximum mode loud
- **RAM / upgrade:** 64GB factory, 2x SO-DIMM
- **M.2:** 2 usable slots
- **Display / gamut:** 2560x1600 240Hz OLED, 100% DCI-P3, 400-nit SDR/500-nit HDR specified
- **Thermals / noise:** CPU above 90C under sustained load; approximately 55dB gaming and 61dB maximum same chassis
- **DPC:** 1516.1µs same-chassis 5090 review; LIKELY transfer, exact BB0P1EA UNKNOWN
- **Key unknowns:** next orderable Belgian price/stock; resolution of professional 5080 stutter conflict; exact-SKU DPC
- **Notes:** complete platform, but unavailable and too stability-conflicted for winner status

## Deep-audit assessment

- The cooling system can run the GPU at the required class, but maximum performance is loud. Same-chassis measurements reach about 55dB in gaming and 61dB maximum; balanced operation trades substantial performance for lower noise. CPU implementation runs above 90C and exact-review results trail Legion's same 275HX by roughly 9% in sustained Cinebench.
- Professional stability evidence is genuinely contradictory. PC Gamer's exact 175W RTX-5080 unit showed repeated game stutter and poor 1% lows; PCWorld and TechRadar did not reproduce it, and a same-chassis 5090 unit completed 25 Time Spy loops at 99.4% stability. HP also published a 2026 TDR/black-screen troubleshooting article for this chassis family. This is a `CONFLICT`, not proof all units fail and not something the buyer should diagnose after purchase.
- Construction is premium and rigid but not all-metal: aluminium outer lid and bottom, plastic palm rest/C-cover. Reviews report little flex or creaking.
- The approximately 125x80mm mechanical pad is smooth/accurate in several reviews but merely minimum-sized; PC Gamer additionally found click-drag behavior failing on its review unit. It is materially less attractive than SCAR's much larger glass pad.
- Keyboard opinions split from crisp/firm to mushy/lifeless. It has Belgian AZERTY and numpad, but compressed arrows/layout are a real ergonomic compromise.
- Mobility is weak: 2.68kg plus a large 330W brick, 83Wh battery and roughly 3h20 web to 5h30 video in reviews. HP reduces CPU about 32% and GPU about 80% off AC in one measured review.

## Verdict

This is a technically credible Dell-beating performance platform with unusually complete I/O and good HP mobile integration. It is **not currently a buyable finalist**: the exact Belgian SKU is unavailable, its support-adjusted €4,368.99 hypothetical total leaves almost no price advantage over Dell, and the RTX-5080 stutter/TDR evidence is unresolved. Keep it as `conflict/watch`, not rejected by brand reputation.

## Original ledger row

````text
| HP OMEN Max 16-ah0001nb / BB0P1EA | CONFLICT | BE | €2999 snippet vs €4299/unavailable page | current Intel HX | RTX 5080 | UNKNOWN | UNKNOWN | 64 GB | 2 family | family option | chassis evidence as above | UNKNOWN | price/availability | Snippet is not current transactional evidence |
````
