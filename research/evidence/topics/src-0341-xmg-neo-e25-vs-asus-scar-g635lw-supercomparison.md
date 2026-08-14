---
id: SRC-0341
record_type: source
checked_at: "2026-08-13"
subject: "XMG NEO 16 E25 10302800 versus ASUS SCAR 16 G635LW-RW089W supercomparison"
region: "BE exact transactions; matched current chassis reviews"
source_type: "primary specifications/support plus exact and same-chassis professional measurements"
exact_sku: "XMG 10302800; ASUS G635LW-RW089W / 90NR0LD1-M003N0"
evidence_label: "PROVEN exact transaction/specification where stated; review transfer labelled"
legacy_origin: "buyer-requested finalist comparison 2026-08-13"
---

# XMG NEO 16 E25 versus ASUS SCAR 16 G635LW

## Exact transactions

- XMG `10302800`: €4123 for 32GB/1TB, Belgian keyboard, RTX 5080, Mini-LED and 36-month Platinum/Quick Repair; €4232 with 2TB; €4431 with 2TB and OASIS. No operating system is selected.
- ASUS `G635LW-RW089W`: €3799 direct from ASUS Belgium or €3649 at Coolblue, 32GB/2TB, Belgian keyboard and Windows 11 Home. The ASUS Belgium campaign provides a free third standard warranty year after timely registration. Coolblue's OLED title is erroneous against ASUS's exact Mini-LED specification and may not be used as panel truth.

## Thunderbolt and display routing

### XMG

- One rear Thunderbolt 4/USB4 port: 40Gbps-class link, eGPU compatible, two DisplayPort streams, 15W peripheral output and USB-PD input from 100W to 140W.
- The TB4 DisplayPort path is attached through the Intel iGPU/Optimus path. XMG lists G-SYNC Compatible/FreeSync support on this output, but the direct dGPU route is instead the separate Mini DisplayPort 2.1 port. HDMI 2.1 is also available.
- The 140W input is non-generic: XMG implements 20V/7A. XMG currently validates only FSP `FSP150-APDBR01` for the full 140W; normal 20V/5A docks/chargers provide at most 100W.
- A second USB-C 3.2 Gen2 port supplies 10Gbps data, DisplayPort and up to 100W input. XMG therefore has two USB-C connectors but only one Thunderbolt connector.

### ASUS

- Two Thunderbolt 5 ports, both officially listed with DisplayPort, Power Delivery and G-SYNC, at up to 120Gbps Bandwidth Boost. Intel's certified minimums are 80Gbps bidirectional/120Gbps display-heavy and 64Gbps PCIe data versus TB4's 40/32Gbps.
- ASUS limits laptop charging through USB-C to 100W. Exact review testing shows sustained combined loads can still discharge the battery while a 100W PD adapter is attached; a 140W charger does not raise the input limit.
- The direct G-SYNC claim makes the ASUS USB-C display route materially better documented for high-refresh VRR displays. ASUS also has HDMI 2.1, but no Mini DisplayPort and no card reader.
- ASUS publishes a dedicated `dTBT_FW` package and permits active delivery through Windows Update. The official support page continued BIOS maintenance through January 2026. This is stronger automatic-maintenance evidence than XMG's manual BIOS/EC portal workflow, but it does not prove seven future years of updates.

### Practical meaning

- Ordinary keyboard/mouse/Ethernet/audio docking and one or two mainstream displays: both are sufficient; TB5 is not required.
- Fast external NVMe arrays, multiple very-high-resolution/high-refresh displays, capture devices sharing one cable, or a future eGPU: ASUS has materially more bandwidth and redundancy.
- Full RTX 5080 workstation/render performance: neither USB-C charger is sufficient; use the 420W XMG or 380W ASUS main adapter.
- Direct external gaming display: ASUS TB5 is the cleaner one-cable route. On XMG, use MiniDP 2.1 or HDMI 2.1 when a direct dGPU path and VRR matter more than docking convenience.

## Platform comparison

| Field | XMG NEO 16 E25 `10302800` | ASUS SCAR 16 `G635LW-RW089W` |
|---|---|---|
| CPU/GPU | 275HX + RTX 5080 16GB/175W | 275HX + RTX 5080 16GB/175W |
| Combined cooling budget | 240W sustained on air; 280W with OASIS | exact review table permits 230W Turbo and 255W max-fan Manual |
| Sustained behavior | stable high power; 175W GPU achieved without OASIS | stable repeated stress tests; 175W ceiling, typically 150-165W games |
| Practical noise | 45.3dBA Balanced, 48.6 Enthusiast, 55.4 Overboost; 26dBA idle | <30dBA light Silent, 40-42 Performance, 48 Turbo, 52 max fans |
| Quiet-performance sweet spot | Balanced retains 150W GPU | Performance retains roughly 90-95% of Turbo with 135-150W GPU |
| Display | matte 1600p 300Hz Mini-LED; measured 859-nit SDR, >1700 HDR, 99.9% P3 | matte 1600p 240Hz Mini-LED; measured same-chassis ~773-nit SDR, official/reviewed ~1100-nit HDR, 99.9% P3 |
| Colour | factory P3 profiles imperfect; calibrated DeltaE 1.5 | reviewed panel had excellent factory accuracy around DeltaE 1 and faster measured transitions |
| Internal VRR/MUX | no internal G-SYNC, Adaptive Sync or Advanced Optimus; dGPU mode requires reboot | G-SYNC, MUX and Advanced Optimus present |
| Main-shell material | lid, top case and bottom case aluminium; plastic bezel | metal lid; plastic main chassis/palmrest/base |
| Touchpad | smooth 123x78mm mechanical ClickPad; no rattle, lower click somewhat loud; prior dossier identifies glass | larger matte-glass NumberPad ClickPad; smooth tracking/palm rejection; reviewers vary between satisfying and stiff/clunky clicks |
| Keyboard | comfortable, precise, numpad, Belgian layout | excellent quieter classic keyboard, no physical numpad, Belgian layout; touchpad virtual numpad |
| Expansion | two SODIMM, up to 128GB; 2x M.2 (one Gen5); removable Wi-Fi | two SODIMM; 2x Gen5-capable M.2; tool-less first-stage access to RAM/SSDs/fans |
| Other I/O | 3x USB-A, 2x USB-C, MiniDP 2.1, HDMI 2.1, 2.5GbE, SD Express/UHS-II, audio | 3x USB-A, 2x TB5, HDMI 2.1, 2.5GbE, audio; no SD reader/lock |
| Battery | 99.8Wh; review 9h32 WLAN at 150 nits, 3h53 at maximum brightness | 90Wh; Notebookcheck same-chassis 6.5h WLAN; separate exact-5080 mixed test 6h30; workload/settings vary |
| Main adapter | 420W, about 834g | 380W, about 1kg review EU set |
| Service | 36-month Platinum Quick Repair: 48h internal processing target, transport excluded | 3 years standard carry-in after campaign registration; not onsite/ProSupport |
| Firmware model | transparent, active updates, but BIOS/EC manual; latest path includes irreversible downgrade floor | MyASUS/Windows Update capable, dedicated TB firmware and conventional ASUS portal; changelogs generic |
| DPC | same-chassis 5090: 1465.8us, slight limitations | same-chassis 5090: 2296.5us; exact 5080 remains UNKNOWN |

## Interpretation for the buyer

- XMG wins on metal construction, screen brightness, battery capacity/runtime, SD/MiniDP connectivity, RAM ceiling, service turnaround definition and optional OASIS. It also has the better published combined-power ceiling.
- ASUS wins on Thunderbolt/future external I/O, internal G-SYNC/Advanced Optimus, larger touchpad, tool-less routine upgrades, cleaner automatic firmware delivery and price.
- At equal 2TB storage the direct-ASUS difference is €433; against Coolblue it is €583. XMG's premium is therefore payment for chassis, display brightness, battery/service and OASIS compatibility, not for a faster CPU/GPU class.
- For long sustained rendering at a fixed desk, XMG plus OASIS is the technically stronger thermal platform, but the €4431 2TB+OASIS route nearly consumes the full ceiling. For frequent dock/display use and everyday touchpad interaction, SCAR is the more complete modern interface platform and leaves substantial budget headroom.

## Sources

- https://www.xmg.gg/en/xmg-neo-16-e25/
- https://bestware.com/de/xmg-neo-16-e25-10506378.html
- https://help.xmg.gg/hc/en-gb/articles/28405096912541-USB-C-charging-with-140-watts-compatibility-technical-background
- https://www.notebookcheck.net/The-fastest-gaming-laptop-is-now-even-better-thanks-to-300-Hz-mini-LED-XMG-Neo-16-E25-RTX-5090-laptop-review.1016705.0.html
- https://rog.asus.com/be-nl/laptops/rog-strix/rog-strix-scar-16-2025/spec/
- https://rog.asus.com/be-nl/laptops/rog-strix/rog-strix-scar-16-2025-g635/
- https://www.asus.com/us/supportonly/g635lw/helpdesk_bios/
- https://www.ultrabookreview.com/71050-asus-rog-scar-16-g635-review/
- https://www.tomshardware.com/laptops/gaming-laptops/asus-rog-strix-scar-16-2025-rtx-5080-gaming-laptop-review
- https://www.intel.com/content/www/us/en/architecture-and-technology/thunderbolt/overview.html
