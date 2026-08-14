---
id: CAND-062
record_type: candidate
role: laptop-b
scope: exact-sku
status: shortlist
flags: ["275hx-accepted", "large-touchpad", "normal-inspection-only"]
region: "BE"
exact_sku: "90NR0LG1-M002P0"
last_verified: "2026-08-14"
offer_ids: ["OFFER-ASUS-G615LW-S5058W", "OFFER-ASUS-G615LW-AUG2026", "OFFER-ASUS-PREMIUM-CARE-G615LW", "OFFER-ALTERNATE-G615LW-S5058W-20260814", "OFFER-ALTERNATE-KF556S40IBK2-64-20260814", "OFFER-UPDATE-CT4000T500SSD3-20260814"]
source_ids: ["SRC-0031", "SRC-0104", "SRC-0182", "SRC-0183", "SRC-0215", "SRC-0216", "SRC-0316", "SRC-0317", "SRC-0319", "SRC-0337", "SRC-0340", "SRC-0353", "SRC-0362", "SRC-0363", "SRC-0364", "SRC-0365"]
critical_unknowns: []
legacy_status: "SHORTLIST / CURRENT BUY LEADER — temporarily rejected 2026-08-12 by now-retracted model-year gate"
legacy_origin: "research/candidates.md:75"
---

# ASUS ROG Strix G16 G615LW-S5058W / 90NR0LG1-M002P0

## Migrated assessment

- **Price:** €3099 at ALTERNATE Belgium is the current lowest reproduced exact Belgian transaction; ASUS Belgium direct is currently €3129. Both advertise the eligible free third ASUS warranty year.
- **CPU:** Core Ultra 9 275HX
- **GPU:** RTX 5080 16 GB
- **Official TGP:** 175 W PROVEN
- **Sustained GPU:** 175 W maximum; constant GPU performance stable; ~170 W GPU plus ~56 W CPU in combined stress PROVEN on same chassis/CPU/GPU review
- **RAM / upgrade:** Factory 32GB is DDR5-5600 (2x16). ASUS supports a 64GB replacement maximum. The budgeted Kingston 64GB kit is 5600 CL40. Intel supports up to 6400 and Kingston lists 6400 CL52 CSODIMMs for the G615 family, but exact Belgian-SKU 64GB-at-6400 operation is only `LIKELY`; 6400 CL52 is not automatically faster than 5600 CL40.
- **M.2:** 2x modular M.2 2280; factory drive and independently tested slots are Gen4. Do not credit unconfirmed Gen5 compatibility. Prefer a high-end TLC/DRAM Gen4 SSD for VM/project storage; two usable slots meet the requirement.
- **Display / gamut:** 2560x1600 240 Hz matte IPS; measured 536 nit avg, 99.9% sRGB, 99.1% P3, factory DeltaE 1.6, no PWM
- **SCAR delta:** Same 2025 chassis architecture and same 175W RTX 5080 ceiling. The SCAR premium primarily buys Mini-LED HDR/local contrast, per-key/decorative lighting and minor refinements; it does not buy more GPU power, an all-metal chassis or stronger support. The Strix IPS is a genuinely high-grade SDR/P3 panel, not a budget display.
- **Thermals / noise:** vapor chamber/3 fans; CPU ~95°C at high sustained power but stable; cool deck; Performance ~42–49 dBA by test, Turbo 48–54.2; fans off/~25 dBA light use
- **DPC:** 1501.6 µs PROVEN review result; exact G615LW/Focusrite dropout signal retained, but Ableton remains on desktop and DPC is no longer a B gate
- **Touchpad:** 150x100mm PROVEN, centered and very large. Independent reviews agree that tracking, gestures and clicks work well, but one long-term reviewer identifies the surface as likely plastic rather than glass. It therefore wins on usable area but not premium material.
- **Residual unknowns:** batch-level panel/speaker/NIC supplier and support beyond the proven three years are not publicly guaranteed and are not recommendation-critical. Five-to-seven-year parts supply is inherently not provable in 2026.
- **Purchase routes:** This is not a Belgian CTO/configurable order. ASUS and Belgian retailers sell fixed exact SKU `90NR0LG1-M002P0` with 32GB/1TB; 64GB and additional storage are owner-installed after purchase. A reproducible Belgian maximum-under-budget route combines the €3099 laptop with a €799 Kingston 2x32GB kit and a €503.59 heatsink-free Crucial T500 4TB through bol Belgium, plus €6.99 RAM delivery: €4408.58 total, yielding 64GB and 5TB total. Direct Update.nl can theoretically lower this to €4387.35, but Belgian checkout is unproven. The 64GB path is PROVEN; 4TB in the second slot is `LIKELY` from exact-chassis use, standard dimensions and family compatibility, but not explicitly guaranteed by ASUS for this exact SKU.
- **Workload fit:** grandMA3 onPC and Capture 2026 requirements are exceeded by a wide margin; light gaming is overprovisioned. The 275HX/RTX5080 platform is excellent for programming, rendering and thick multitasking. For VM use, 64GB system RAM is the first meaningful ceiling; 24GB VRAM/RTX5090 matters only for demonstrably >16GB GPU workloads, very large scenes or local AI.
- **Notes:** Exact current Belgian transactions are PROVEN with active add-to-cart and Belgian AZERTY. Two years manufacturer warranty plus a free third standard manufacturer-warranty year after timely registration/approval are PROVEN. This is three-year consumer hardware coverage, not included onsite or Dell ProSupport. 2x TB5, 3x USB-A, HDMI 2.1, 2.5GbE; 90Wh. Excellent routine repairability for RAM/SSD/Wi-Fi/battery; fan replacement is difficult because vapor-chamber/liquid-metal service needs deep disassembly; keyboard replacement is near-total teardown. Strong sustained-load stability and active BIOS support through 338.

## Related narrative evidence

- [asus-rog-strix-g16-g615lw-s5058w](../../evidence/devices/asus-rog-strix-g16-g615lw-s5058w.md)
- [src-0031-asus-g615lw-s5058w-90nr0lg1-m002p0](../../evidence/devices/src-0031-asus-g615lw-s5058w-90nr0lg1-m002p0.md)
- [src-0104-asus-g615lw-s5058w-current-promotion](../../evidence/devices/src-0104-asus-g615lw-s5058w-current-promotion.md)
- [src-0182-asus-g615lw-s5058w-exact-belgian-transaction](../../evidence/devices/src-0182-asus-g615lw-s5058w-exact-belgian-transaction.md)

## Original ledger row

````text
| ASUS ROG Strix G16 G615LW-S5058W / 90NR0LG1-M002P0 | SHORTLIST / CURRENT BUY LEADER — GENERAL ACCEPTANCE TEST REQUIRED | BE | €3299 direct ASUS current; €3129 is prior-30-day low, no longer live | Core Ultra 9 275HX | RTX 5080 16 GB | 175 W PROVEN | 175 W maximum; constant GPU performance stable; ~170 W GPU plus ~56 W CPU in combined stress PROVEN on same chassis/CPU/GPU review | 32 GB (2x16), official later replacement maximum 64 GB | 2x modular M.2 2280; Gen5 support CONFLICT, count on Gen4 | 2560x1600 240 Hz matte IPS; measured 536 nit avg, 99.9% sRGB, 99.1% P3, factory DeltaE 1.6, no PWM | vapor chamber/3 fans; CPU ~95°C at high sustained power but stable; cool deck; Performance ~42–49 dBA by test, Turbo 48–54.2; fans off/~25 dBA light use | 1501.6 µs PROVEN review result; exact G615LW/Focusrite dropout signal retained, but Ableton remains on desktop and DPC is no longer a B gate | exact retail panel/speaker/NIC sourcing; exact Premium Care price/eligibility; support after 2026; M.2 Gen5 conflict | Belgian keyboard; 2x TB5, 3x USB-A, HDMI 2.1, 2.5GbE; 90Wh. Excellent routine repairability for RAM/SSD/Wi-Fi/battery; fan replacement is difficult because vapor-chamber/liquid-metal service needs deep disassembly; keyboard replacement is near-total teardown. Strong sustained-load stability and active BIOS support through 338. Consumer support remains below Dell ProSupport. |
````
