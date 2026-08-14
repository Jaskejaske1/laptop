---
id: CAND-059
record_type: candidate
role: laptop-b
scope: exact-sku
status: buyer-excluded
flags: ["buyer-approved-specific-2025-exception", "operating-system-not-included", "three-year-platinum-quick-repair", "buyer-excluded-small-support-ecosystem", "single-thunderbolt4"]
region: "BE delivery configuration"
exact_sku: "10302800"
last_verified: "2026-08-13"
offer_ids: ["OFFER-BESTWARE-XMG-E25-10302800-2026-08"]
source_ids: ["SRC-0305", "SRC-0306", "SRC-0308", "SRC-0311", "SRC-0337", "SRC-0340", "SRC-0341", "SRC-0353", "SRC-0356", "SRC-0357"]
critical_unknowns: []
legacy_status: "VERIFYING"
legacy_origin: "research/candidates.md:72"
---

# XMG NEO 16 E25

## Migrated assessment

- **Exact price:** user-generated official configuration `10302800` is €4123 including VAT for Mini-LED/RTX 5080/32GB/1TB Samsung 990 PRO/Belgian keyboard/36-month warranty/Quick Repair, without Windows or OASIS.
- **Upgrade scenarios:** 2TB is +€109 (€4232 total); OASIS is +€199 (€4322 base or €4431 with 2TB); 64GB is +€427 (€4550 before other upgrades, above ceiling).
- **Current availability correction:** E25 is orderable. Bestware marks standard IPS + 5070 Ti/5080 sold out, but other combinations/components in stock; RTX 5080 + Mini-LED is the relevant route. This is separate from the unlaunched 2026 NEO refresh.
- **CPU:** Core Ultra 9 275HX
- **GPU:** RTX 5080 16 GB
- **Official TGP:** 175 W PROVEN
- **Sustained GPU:** XMG officially specifies 175W sustained GPU-only and 240W sustained CPU+GPU on air for the exact E25 5080/5090 platform; Notebookcheck's RTX 5080/5090 preview independently observed full 175W GPU capability.
- **RAM / upgrade:** 32 GB default; up to 128; 2 SODIMM
- **M.2:** 2
- **Display / gamut:** matte Mini-LED measured 859-nit SDR/>1700 HDR, 99.9% P3, calibrated DeltaE 1.5
- **Thermals / noise:** 26 dB(A) idle; 45.3/48.6/55.4 dB(A) at 150/150/175 W; stable; surfaces <48°C
- **DPC:** 1465.8 µs on E25/5090 review
- **Keyboard/support:** Belgian keyboard and 36-month warranty with Quick Repair throughout are PROVEN by the exact PDF.
- **Service terms:** official XMG/Bestware terms map full-period Quick Repair on a 36-month warranty to Platinum: 48-hour in-house processing Monday–Friday, excluding transport time and subject to the published warranty conditions. The PDF already includes this service; no second upgrade should be added blindly.
- **Support confidence:** XMG/Bestware provides accountable in-house Leipzig support, free EU Pick-up & Return from Belgium and strong independent 2024 service-satisfaction results. Recent owner RMAs nevertheless include both excellent resolutions and repeated/unresolved repairs. Rate this `MEDIUM-HIGH consumer depot support`, above an unpriced ordinary consumer carry-in route but below Dell ProSupport: no onsite technician, complete-device advance replacement, business-continuity SLA or guaranteed seven-year parts stock.
- **Fulfilment:** 2–3 weeks is retained as a buyer-reported exact checkout estimate; the official live page independently displayed an additional 10–14-day delivery time. Warehouse-batch narrative remains unproven.
- **Operating-system budget:** the PDF says no operating system selected and no OEM/UEFI licence is included. The buyer will arrange the operating system separately, so no Windows purchase cost is charged to the laptop comparison. Activation methods are outside this research.
- **Model-year decision:** the buyer explicitly grants exact configuration `10302800` a narrow 2025 exception. Other 2025 systems remain ineligible.
- **Residual unknown:** exact 5080-unit DPC (same-chassis 5090 is 1465.8 µs). This is noncritical while latency-sensitive audio stays on the desktop.
- **Construction:** display lid, top case and bottom case are aluminium; only the display bezel is plastic. This is the clearest genuinely all-metal-main-shell construction among the buyable gaming finalists.
- **Thunderbolt:** one rear TB4/USB4 port is eGPU-compatible, carries two DisplayPort streams through the iGPU/Optimus path and accepts 100W or XMG-specific 20V/7A 140W input. The full 140W currently requires XMG's validated FSP adapter; ordinary 20V/5A docks stop at 100W. A second USB-C Gen2/DP port exists, but is not Thunderbolt. For direct dGPU/VRR output, MiniDP 2.1 or HDMI 2.1 is the cleaner route.
- **Touchpad correction:** the 123×77.5mm glass touchpad is a genuine strength and was well received in the exact-chassis professional review. It is not a reason for rejection.
- **Display path, corrected:** XMG permanently cancelled internal G-SYNC and Advanced Optimus for the 2025 NEO. The Intel Mini-LED branch also has no VESA Adaptive Sync; forcing it can cause panel artefacts. Full 300Hz and the lowest internal latency require switching the MUX to dGPU-only and rebooting. External displays connected to the dGPU can still use G-SYNC.
- **Firmware and control software:** the official portal shows continued maintenance through July 2026. January 2026 Control Center fixed brightness, local-dimming persistence and OASIS fan-curve bugs. BIOS `N.1.33A24 / EC 2.09.00` requires a two-step manual flash and makes downgrades to `N.1.20A16` or earlier impossible; Windows 11 25H2 requires `N.1.32A22` or newer. This proves active support but also a materially more manual lifecycle than Dell.
- **Stability pattern:** one public E25 iGPU-crash case was resolved by reflashing the same BIOS, and a separate daily-crash case traced to faulty RAM. They are real incidents but do not establish a recurring platform-wide firmware defect. The permanent VRR/Advanced-Optimus omission and manual BIOS workflow are proven platform limitations.
- **Ordinary Optimus:** supported and functional, but XMG documented that the NVIDIA GPU could remain awake after closing a workload. `iGPU Power Saving` plus reboot was the recommended mitigation; updates improved behavior without a universal no-workaround closure. This is a power/integration penalty under the buyer's robustness definition, not proof of crashing under ordinary Optimus.
- **Buyer exclusion:** despite its matte display, aluminium construction, glass touchpad, performance and credible three-year depot support, this exact system is no longer an active purchase candidate. One TB4/USB4 port plus one ordinary 10Gbps USB-C is too weak for the buyer's seven-year universal-connectivity target, and the smaller support/parts ecosystem does not provide enough long-horizon confidence versus the large OEMs. This is a buyer-fit/lifecycle decision, not evidence that XMG is technically bad or that its touchpad is poor.

## Original ledger row

````text
| XMG NEO 16 E25 | BUYER-EXCLUDED | BE delivery configuration | exact PDF: €4123 32GB/1TB/Belgian/3Y Platinum; €4232 with 2TB | Core Ultra 9 275HX | RTX 5080 16 GB | 175 W PROVEN | 175 W GPU-only and stable chassis performance PROVEN on retail 5090 review; exact 5080 trace LIKELY | 32 GB default; up to 128; 2 SODIMM | 2 | matte Mini-LED measured 859-nit SDR/>1700 HDR, 99.9% P3, calibrated DeltaE 1.5 | 26 dB(A) idle; 45.3/48.6/55.4 dB(A) at 150/150/175 W; stable; surfaces <48°C | 1465.8 µs on E25/5090 review | exact 5080-unit DPC noncritical | Good glass pad; excluded for one TB4 plus smaller seven-year support/parts ecosystem, not for performance or instability. |
````
