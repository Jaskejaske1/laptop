---
id: CAND-067
record_type: candidate
role: laptop-b
scope: exact-sku
status: shortlist
flags: ["raw-performance-value-leader", "three-year-support-priced", "dell-performance-challenger", "two-thunderbolt4", "touchpad-conflict", "mux-reboot"]
region: "BE"
exact_sku: "B2WI-035BE"
last_verified: "2026-08-13"
offer_ids: ["OFFER-COOLBLUE-B2WI-035BE-2026-08", "OFFER-LASYSTEMS-B2WI-035BE-2026-08", "OFFER-LASYSTEMS-MSI-957-1XXXXE-073-2026-08", "OFFER-VIADENNIS-MSI-S93-0409590-D04-2026-08"]
source_ids: ["SRC-0248", "SRC-0250", "SRC-0254", "SRC-0255", "SRC-0256", "SRC-0257", "SRC-0258", "SRC-0259", "SRC-0282", "SRC-0283", "SRC-0284", "SRC-0285", "SRC-0339", "SRC-0340", "SRC-0345", "SRC-0353", "SRC-0356"]
critical_unknowns: []
legacy_status: "REJECTED UNDER STRICT MSI GATE"
legacy_origin: "research/candidates.md:80"
---

# MSI Raider 16 Max HX B2WI-035BE

## Migrated assessment

- **Complete preferred transaction:** €3699 at Coolblue with charger explicitly included plus €162.62 Belgian third year = **€3861.62**, €582.55 below Dell.
- **Lowest split transaction:** LASystems is €3495.79 but explicitly `No Adapter`; add €162.62 support and €169.95 available original 400W adapter = **€3828.36**. Saving only €33.26 does not compensate for separate adapter sourcing/support, so it is a price reference rather than the preferred purchase route.
- **CPU:** Core Ultra 9 290HX Plus
- **GPU:** RTX 5080 16 GB
- **Official TGP:** 175W RTX 5080; 300W combined CPU/GPU mode
- **Sustained GPU:** exact B2WI review proves stable sustained performance, but the full profile table is from the same-current 5090 chassis: 145W Balanced, 147W Extreme and 169W Apex. Treat practical ~169W full-power behavior as LIKELY for exact B2WI, not 175W in every mode.
- **RAM / upgrade:** 32GB factory; two SO-DIMMs, up to 128GB family support
- **M.2:** two usable M.2 2280 slots, one Gen5 and one Gen4
- **I/O:** 3x USB-A, HDMI 2.1, SD Express, integrated 2.5GbE and **2x Thunderbolt 4**. MSI's announcement, B2WX specification and exact B2WI display-output matrix agree; the Belgian retailer's TB5 field is rejected metadata.
- **Display / gamut:** glossy 2560x1600 240Hz OLED; measured 505–517-nit SDR, 99.6–113% DCI-P3 coverage depending review method, HDR peak about 1115 nit
- **Thermals / noise:** multiple professional reviews support effective cooling, strong sustained performance and quiet idle/light behavior. Maximum measured GPU power needs Apex at about 57dB(A); Balanced is ~145W/~47.5dB(A). CPU can briefly reach 105C under extreme boost; no recurring cooling-failure pattern was found.
- **Battery:** 91.8Wh; review spread is 3–4h office at 50% brightness to 7h52 controlled Wi-Fi and 8h34 video. Useful for the class, not Dell-class proof.
- **DPC:** 1626us with no dropped frames on same-current 5090 chassis; LIKELY, not exact Belgian 5080 proof; Ableton is outside the purchase gate.
- **Model year / platform:** PROVEN 2026 chassis (regulatory release January 2026; Belgian retail launch April 2026). The 290HX Plus is Arrow Lake Refresh/Core Ultra Series 2, not Panther Lake/Series 3.
- **Inputs / construction:** approximately 130x83mm plastic mechanical pad. Review verdicts range from superb/acceptable to hollow, jittery and unreliable, so execution is `CONFLICT`, not universally bad. Metal/aluminium display lid; keyboard deck and underside are plastic. Deck flex and hinge wobble are likewise not universal findings; no recurring structural failure pattern is established.
- **Graphics integration:** no G-SYNC or Advanced Optimus on the reviewed OLED configuration. MSI Center's conventional MUX requires a reboot. Both TB4 ports remain free on the separate DC charger and accept up to 140W for light travel use.
- **Ordinary Optimus/MSHybrid:** MSI Center's MSHybrid mode automatically uses the Intel iGPU or NVIDIA dGPU. Professional everyday-use and 8h34 mixed battery testing demonstrate effective iGPU fallback; no recurring hybrid/sleep/display crash pattern was found. This is currently stronger ordinary-Optimus evidence than XMG/ASUS, without resolving the physical touchpad/build conflict.
- **Drivers / firmware:** active exact-model support with July 2026 BIOS and August 2026 Intel ME security update. MSI Center offers Live Update, but long-term firmware duration and enterprise-style update management are not promised. Professional tests show normal stability; isolated launch-driver and high-CPU-boost reports remain acceptance-test signals.
- **Seven-year fit:** CPU/GPU VRAM, two SO-DIMMs and two M.2 slots are strong. Upgrade to at least 64GB is sensible for large Depence projects and concurrent VMs. Main lifecycle risks are glossy OLED wear/burn-in, unknown panel/parts availability after warranty and an unproven new plastic-heavy chassis—not raw performance. Three years can now be priced through the Belgian MSI extension.
- **Local AI:** direct same-chassis 5080/5090 testing shows similar speed for quantized models that fit in 16GB. The 5090's 24GB becomes dramatically faster only when model plus context exceeds 16GB and the 5080 must offload to system RAM/CPU. For the stored use case, this supports retaining the 5080 unless large local 27B–35B models or VRAM-heavy generative video become a regular requirement.
- **Dell comparison:** 290HX Plus and full-power RTX 5080 16GB are demonstrably stronger raw CPU/GPU classes than 265HX and RTX PRO 3000 12GB. MSI loses ECC/ISV certification, enterprise platform management and included three-year ProSupport.
- **Residual risks, not missing research:** five-to-seven-year OLED/firmware/parts availability cannot be proven for a 2026 product. Current construction, update activity, warranty and replaceability are documented. Ordinary delivery inspection is not a diagnostic recommendation gate.
- **Notes:** Raw-performance/value leader at €3861.62 via the cleaner included-adapter route, but not the premium overall winner. It materially beats Dell in raw CPU/GPU class and leaves €582.55; Dell retains enterprise/ISV support, a more premium service platform and lower IPS lifecycle uncertainty. Touchpad/build execution conflict and rebooting MUX remain material; do not delegate platform diagnosis to the buyer.

## Original ledger row

````text
| MSI Raider 16 Max HX B2WI-035BE | REJECTED UNDER STRICT MSI GATE | BE | €3813.18 incl. VAT at ITFirst | Core Ultra 9 290HX Plus | RTX 5080 16 GB | full-power class family | review shows elite performance but exact long GPU trace not extracted | 32 GB; upgradeable family | 2 family | exact-listed 2560x1600 OLED | professional review praises cooling, but credible exact-platform owner report shows 103–105°C CPU and throttling even in a light game; review also criticizes build quality | UNKNOWN | no need to rank after MSI-gate failure | One material cooling concern is sufficient under buyer's explicit MSI rule; retained as rejected rather than generalized to Raider 18. |
````
