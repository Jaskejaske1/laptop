---
id: CAND-085
record_type: candidate
role: laptop-b
scope: exact-sku
status: conflict
flags: ["hardware-shortlist", "275hx-accepted", "large-glass-touchpad", "current-be-offer", "buyer-touchpad-priority", "plastic-main-chassis", "three-year-standard-warranty", "software-integration-conflict"]
region: "BE"
exact_sku: "G635LW-RW089W / 90NR0LD1-M003N0"
last_verified: "2026-08-13"
offer_ids: ["OFFER-ASUS-G635LW-RW089W-2026-08", "OFFER-COOLBLUE-G635LW-RW089W-2026-08-13"]
source_ids: ["SRC-0078", "SRC-0228", "SRC-0229", "SRC-0316", "SRC-0317", "SRC-0320", "SRC-0331", "SRC-0336", "SRC-0337", "SRC-0340", "SRC-0341", "SRC-0353", "SRC-0354", "SRC-0365"]
critical_unknowns: ["prevalence/current resolution of external-display and dGPU/hybrid transition crashes", "stable current OEM control-stack behavior without buyer workarounds"]
legacy_status: "new after migration"
legacy_origin: "research follow-up 2026-08-12"
---

# ASUS ROG Strix SCAR 16 G635LW-RW089W / 90NR0LD1-M003N0

- **Price:** €3799 incl. VAT direct from ASUS Belgium; available; Belgian AZERTY.
- **CPU:** Core Ultra 9 275HX.
- **GPU:** RTX 5080 Laptop 16GB.
- **Official TGP:** 175W PROVEN exact SKU/family mapping.
- **Sustained GPU:** exact G635LW/RTX 5080 review proves the 175W Turbo/Manual ceiling, stable repeated stress loops and no heat-induced degradation. Games vary around 150–165W due to workload and CPU/GPU sharing; 175W is a ceiling, not a constant draw.
- **RAM / upgrade:** 32GB DDR5 installed; two SO-DIMMs.
- **M.2:** two slots; 2TB installed.
- **Display:** matte 2560x1600 240Hz Mini LED, 100% DCI-P3, up to 1200-nit peak, more than 2000 dimming zones. No OLED burn-in mechanism, but Mini LED can show blooming.
- **I/O:** 2x Thunderbolt 5, both with DisplayPort, Power Delivery and G-SYNC; 3x USB-A, HDMI 2.1, 2.5GbE and audio. TB5 provides 80Gbps bidirectional/120Gbps display-heavy bandwidth and at least 64Gbps PCIe tunnelling, but ASUS caps charging at 100W. Exact review testing shows sustained combined load can still drain the battery on PD, so the 380W brick remains mandatory for full performance.
- **Expansion/service:** two SO-DIMMs, two M.2 slots and tool-less access to RAM, SSD and fans.
- **Thermals / noise:** exact RTX 5080 review proves end-to-end vapor chamber, three fans and liquid metal on CPU/GPU; fans off or under 30dBA in Silent daily use, about 40–42dBA Performance, 48dBA Turbo and 52dBA Manual. Sustained gaming was roughly 85–90C CPU and 80–82C GPU without throttling; palm rests remained cool.
- **Battery:** exact RTX 5080 Mini-LED review measured about four hours of light text work near 120 nit. This is adequate for a desktop replacement, not long battery life.
- **DPC:** same-chassis 5090 review found slight real-time-audio limitations; exact 5080 result remains UNKNOWN but is noncritical while Ableton stays on the desktop.
- **Touchpad:** an exact RTX 5080 professional review describes the large glass surface as smooth with a satisfying click. A second same-chassis review independently reports a smooth ClickPad with muffled, high-quality mechanical clicks. Exact dimensions remain unpublished; it is conventional mechanical rather than haptic.
- **Construction:** plastic main chassis and metal display lid PROVEN by the exact review. The plastic is rigid/good quality and cooler at the palm rest, but this is not an all-metal premium shell.
- **Strix delta:** The 2025 SCAR and ordinary Strix share the base chassis architecture and 175W RTX 5080 ceiling. Against the exact Belgian Strix, the approximately EUR 550 live premium mainly buys Mini-LED HDR/local contrast, per-key/decorative lighting, the extra factory 1TB and modest refinements—not more GPU power, an all-metal shell or Dell-class service.
- **Support:** ASUS Belgium's live campaign explicitly includes G635LW: qualifying purchases through 31 December 2026 get a free third standard manufacturer-warranty year after invoice/serial registration by 31 January 2027. It is not onsite or ProSupport.
- **Thunderbolt maintenance:** ASUS publishes a dedicated `dTBT_FW` firmware package and allows active firmware delivery through Windows Update. This is more automatic than XMG's manual BIOS/EC workflow, without proving a seven-year update promise.
- **Software/integration conflict:** exact G635LW reports establish BIOS-linked control regression, BIOS-318 crash/black-screen incidents and a persistent external-monitor gaming crash on one RTX-5080 unit despite clean installs and official drivers. A separate Optimus creator-app freeze was fixed upstream by Intel, while exact professional reviews completed sustained tests normally. Armoury Crate is demonstrably heavy/messy and has required security updates; G-Helper is a useful unofficial mitigation but cannot be treated as OEM platform integration or cure firmware/display-path defects.
- **Decision:** `conflict` (hardware-shortlist only). The exact Belgian SKU is €3799 direct from ASUS; Coolblue currently lists it at €3649 with charger and Belgian AZERTY, although Coolblue's OLED title conflicts with ASUS's exact Mini-LED specification and may not be used to change panel identity. Hardware remains exceptional, but the former clean shortlist status is withdrawn until exact current evidence clears external-display/dGPU-transition stability without requiring the buyer to replace or troubleshoot the OEM stack.
