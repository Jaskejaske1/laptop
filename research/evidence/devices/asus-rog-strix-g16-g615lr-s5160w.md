# ASUS ROG Strix G16 G615LR-S5160W — exact Belgian dossier

Last checked: 2026-08-12

## Identity and transaction

| Field | Finding | Evidence |
|---|---|---|
| Exact model | G615LR-S5160W | PROVEN — ASUS Belgium eStore |
| Part number | 90NR0LR2-M007X0 | PROVEN — ASUS Belgium eStore |
| EAN | 4711387869734 | PROVEN — ASUS Belgium eStore |
| Region / keyboard | Belgium; `BELGIUM Backlit Chiclet Keyboard 4-Zone RGB` (Belgian AZERTY) | PROVEN |
| Current price | €2,499 incl. VAT; available; free 2–3-working-day delivery | PROVEN at check time |
| Warranty | 2-year manufacturer warranty | PROVEN |
| Colour | Volt Green / dark-grey chassis with green accent | PROVEN |

Exact pair cost with the Zenbook UM3406GA-QD031W: **€3,798 incl. VAT**, leaving €646 below the €4,444 ceiling.

## Exact official configuration

| Component | Exact Belgian SKU |
|---|---|
| OS | Windows 11 Home |
| CPU | Intel Core Ultra 9 275HX; 24 cores / 24 threads; 2.7–5.4 GHz; 36 MB cache; HX class |
| NPU | Intel AI Boost, up to 13 TOPS; not a Copilot+ 40-TOPS-class NPU |
| GPU | NVIDIA GeForce RTX 5070 Ti Laptop, 12 GB GDDR7 |
| GPU power | ROG Boost 1565 MHz; **140 W maximum** = 115 W + 25 W Dynamic Boost |
| RAM | 32 GB DDR5-5600 SO-DIMM; two slots; dual-channel supported; official maximum 64 GB |
| Exact module layout | **LIKELY 1x32 GB**: exact model listing at MediaMarkt NL states 1x32 and ASUS' exact BE wording is singular, but the BE part number is distinct and ASUS does not explicitly state module count |
| Storage | 1 TB PCIe 4.0 NVMe M.2 SSD |
| Storage expansion | 2x M.2 PCIe total, including the occupied slot; no PCIe 5.0 support in the measured chassis |
| Display | 16-inch 2560x1600 IPS-level, 16:10, matte, 240 Hz, 3 ms; 100% DCI-P3; G-Sync; MUX; Advanced Optimus |
| Ports | 3x USB-A 3.2 Gen 2 10 Gbit/s; 2x Thunderbolt 5 up to 120 Gbit/s with DP/PD/G-Sync; HDMI 2.1 FRL; 3.5-mm combo; 2.5GbE RJ45 |
| Missing I/O | No SD/microSD reader; no rear-facing ports |
| Wireless | Wi-Fi 7 2x2; Bluetooth 5.4 |
| Camera | 1080p FHD IR camera for Windows Hello; no physical privacy shutter established |
| Audio | Two-speaker Smart Amp system, Dolby Atmos, Hi-Res headphone certification, array mic, AI noise cancelling |
| Keyboard / pad | Belgian backlit chiclet, Copilot key; no numpad; large centred clickpad. RGB type is CONFLICT: exact table says 4-zone, marketing paragraph says per-key |
| Battery | 90 Wh, 4-cell Li-ion |
| Charger | 280 W proprietary rectangular connector; 45–100 W USB-PD supported for light use |
| Size / weight | 35.4 x 26.8 x 2.28–3.08 cm; 2.65 kg; exact PSU weight not stated |
| Security | Firmware TPM; BIOS administrator/user passwords. Fingerprint reader is CONFLICT/UNKNOWN: marketing paragraph claims one, exact table does not list one |
| Cooling | Full-width vapor chamber, two main fans plus a third centre fan, full-width rear heatsink, liquid metal on CPU/GPU, dust filters |
| Serviceability | Tool-less sliding bottom cover; direct access to two SO-DIMMs and two M.2 slots; ASUS publishes customer self-repair/upgrade guides |

## Independent review synthesis

### Sustained CPU/GPU performance

- An independent review of G615LR-S5190WS uses the same G615LR chassis, Core Ultra 9 275HX and 140-W RTX 5070 Ti. It reports stable benchmark results under prolonged load, Time Spy Graphics 17,266 and Time Spy Extreme 8,802. Cyberpunk 2077 at QHD Ultra was about 82 fps native in its test. This is strong **same-chassis/CPU/GPU** evidence, but not a logged sustained board-power trace for the exact Belgian unit.
- The same review's 5070 Ti was close to a 175-W RTX 4080 in several synthetic tests. That does not mean universal parity; workload, VRAM and driver differences remain important.
- The chassis is demonstrably overbuilt for this GPU. Two detailed G615LW/RTX 5080 reviews show the identical thermal module sustaining roughly 170–175 W GPU without heat-induced throttling. Ultrabookreview explicitly states the same cooler is used on all configurations and that lower-GPU variants run cooler/quieter.
- **Evidence label:** official 140-W ceiling is PROVEN. Sustained 140 W on this exact BE GPU/SKU is still UNKNOWN; stable sustained performance is LIKELY from the matched G615LR review.

### Cooling, temperatures and load noise

- Same G615 chassis with 175-W RTX 5080: Notebookcheck sustained about 56 W CPU + 170 W GPU in combined stress. Top-deck maximum was 39.6°C and bottom maximum 49.7°C; palm-rest/touchpad stayed cool.
- Ultrabookreview measured 5080 Turbo around 85–90°C CPU and 77–82°C GPU, improved several degrees by raising the rear. No throttling was observed. With a 140-W 5070 Ti, thermal headroom should be better, but exact temperatures cannot be asserted without a matched trace.
- Notebookcheck's 5080 modes: Silent 55-W GPU / 36.1 dB(A); Performance 160 W / 49.3 dB(A); Turbo 175 W / 54.2 dB(A). Ultrabookreview measured lower at head level: about 48 dBA Turbo, 40–42 dBA Performance and under 35 dBA Silent. Different methods explain the numbers; do not average them.
- Load noise is acceptable under the buyer's render policy, and the large cooler is a strong point. Raise the rear during long renders to reduce component temperature.

### Idle and light-load acoustics

- Notebookcheck found the fans often deactivated in Silent mode; its 5080 unit produced no coil whine. Turbo mode can keep fans near 30 dB(A) even at idle, so Turbo should not be the everyday profile.
- Ultrabookreview found fans could stop below 50°C, otherwise remaining around 25 dBA; Netflix daily use was fanless or below 30 dBA, with no electronic noise on that unit.
- This is good evidence for the G615 chassis and controller logic. Exact G615LR fan behaviour remains LIKELY, not PROVEN. Use Silent mode for office/web work.

### Display and colour

- Official exact SKU: 100% DCI-P3 matte 240-Hz Nebula display.
- Notebookcheck measured the G615's BOE NE160QDM-NZC at 536-nit average, 99.9% sRGB, 99.1% Display-P3, factory DeltaE 1.6 and calibrated DeltaE 0.8, with no PWM. Response times were 6.1 ms black-white and 4.6 ms grey-grey. The main weaknesses were 1329:1 contrast, slight halos at maximum brightness and no HDR support.
- A matched G615LR review describes about 96% DCI-P3 and 500-nit-class brightness. Because panel suppliers can vary, the exact BE panel ID is UNKNOWN; however, both official and independent evidence clear the colour-gamut requirement. For critical creator work, verify the ICC/profile on delivery.

### Battery and power

- Matched G615LR review: PCMark video loop at 80% brightness was 3 h 25 min with dGPU active and **6 h 54 min with dGPU disabled**.
- Same G615/Ultra 9/90-Wh chassis with RTX 5080: Notebookcheck measured 7 h 49 min Wi-Fi at 150 nits, 6 h 30 at maximum brightness and 10 h 58 video. Ultrabookreview estimated 6–7 h text/YouTube and 4–5 h browsing at 120 nits with RGB off.
- Exact Belgian 5070-Ti runtime is not independently measured, but 6–7 hours of properly configured light work is a credible LIKELY range. Disable dGPU/lighting and use 60 Hz/Silent mode on battery.

### Inputs, build, I/O and maintenance

- Notebookcheck calls the keyboard comfortable and quiet, with full-size arrow keys. Its reviewed unit had per-key RGB. The exact Belgian ASUS page contradicts itself: the detailed table says 4-zone RGB while its marketing paragraph says per-key. There is no numpad. The 15 x 9.8-cm clickpad was smooth with subdued, even clicks.
- The chassis is predominantly plastic with a metal lid. Professional reviews found good rigidity/workmanship and durable hinges, but the maximum opening angle is only about 130°. The front edge can feel sharp during long typing sessions.
- I/O is unusually strong for the price: 3x 10-Gbit/s USB-A, 2x TB5, HDMI 2.1 FRL and mandatory 2.5GbE. Downsides: no card reader, no rear ports, and high-bandwidth/power cables collect on the left side.
- Tool-less access is excellent. The exact configuration is likely 1x32 GB, so adding a matched second 32-GB module may be cheaper than replacing 2x16; however, purchase only after checking the installed module part/timings. ASUS officially caps the system at 64 GB.

### DPC / real-time audio

- Notebookcheck measured 1501.6 µs and described slight real-time-audio limitations on the same G615/Ultra 9 platform with RTX 5080, Micron SSD and its then-current BIOS.
- DPC depends heavily on BIOS, drivers, GPU and attached devices. Therefore this is a warning signal, not proof for the exact Belgian 5070-Ti SKU. **Exact G615LR LatencyMon remains UNKNOWN.** For Ableton/grandMA workflows, test the intended audio interface and network/display setup during the return window.

## Negative-review / reliability audit

Professional reviews did not find structural instability, performance throttling or systemic coil whine. User reports do reveal several **signals**, not a proven fleet-wide defect:

- Multiple posts describe regressions after particular BIOS releases (318 and 333), including battery, keyboard/lighting, temperature or fan behaviour. An ASUS forum agent recommended clean-environment testing and moving from BIOS 333 to 335. This supports cautious staged firmware updates, not permanent avoidance of all updates.
- A few G615LR owners report early centre/right-fan noise, electronic chatter or coil whine. Professional review units did not reproduce electronic noise.
- A speaker-rattle report recurred on two replacement units for one buyer, with another commenter reporting the same sound. This is enough to add a delivery check, not enough to claim a recall-worthy design defect.
- Isolated reports mention fragile anti-reflective coating/keyboard marks and USB-C-display issues. The latter had no corroborating replies in the ASUS forum thread.
- Claims about the older G614 motherboard short were explicitly identified by another commenter as a different model and must not be transferred to G615.

**Recommended acceptance test:** before the return window closes, run a 30–60-minute combined CPU/GPU load; listen separately to all three fans; test both speakers at low-frequency sweeps; inspect backlight bleed/coating; test both TB5 ports with the intended display/dock; run LatencyMon with the intended audio interface; verify sleep/wake; record installed RAM/SSD part numbers and BIOS version.

## Fit against Laptop B requirements

| Requirement | Result |
|---|---|
| Exact BE SKU / price / Belgian AZERTY | PASS — PROVEN |
| HX CPU | PASS — Core Ultra 9 275HX |
| Full-power accepted GPU | PASS — RTX 5070 Ti 12 GB at official 140-W maximum |
| Sustained GPU proof | PARTIAL — matched stable review plus stronger 175-W same-chassis proof; exact 140-W trace UNKNOWN |
| 32 GB now / upgrade later | PASS — two SO-DIMMs, 64-GB official path; likely 1x32 now |
| Two usable M.2 | PASS — PROVEN |
| Colour-accurate >= full sRGB | PASS — official P3 plus independent G615 measurements |
| RJ45 | PASS — 2.5GbE |
| Intel TB4 minimum | PASS — 2x TB5 |
| Quiet light use | PASS with caveat — strong same-chassis evidence; use Silent profile |
| Useful battery | PASS with caveat — matched 6h54 result with dGPU off; exact BE measurement absent |
| DPC | WARNING — same-platform 1501.6 µs; exact SKU UNKNOWN |

## Verdict

**SHORTLIST and current value leader, but not yet an unconditional final winner.** At €2,499 it is unusually complete and the cooling is much stronger than a 140-W 5070 Ti requires. The remaining hard uncertainty is not headline performance; it is exact-unit DPC/firmware/QC behaviour and a logged sustained 140-W trace. The 12-GB VRAM ceiling is the rational reason to spend more on a 5080; ordinary speed alone does not justify the €800 premium for most workloads.

## Sources

- Exact Belgian SKU/store: https://estore.asus.com/be-nl/90nr0lr2-m007x0-rog-strix-g16-2025.html
- Belgian family/specification page: https://rog.asus.com/be-fr/laptops/rog-strix/rog-strix-g16-2025/spec/
- ASUS service/repair documentation: https://www.asus.com/us/supportonly/g615lr/helpdesk_service_guide/
- Matched Core Ultra 9 / RTX 5070 Ti review: https://www.91mobiles.com/reviews/asus-rog-strix-g16-2025-review/
- Additional matched G615LR hands-on: https://athenil.com/rog-strix-g16-g615lr-review-rtx-5070-ti-dlss-excellent/
- Same-chassis quantitative review: https://www.notebookcheck.net/The-RTX-5080-Laptop-is-optimal-for-Gaming-in-WQHD-Asus-ROG-Strix-G16-G615-review.1005904.0.html
- Same-chassis long-form thermal/acoustic review: https://www.ultrabookreview.com/72307-asus-rog-strix-g16-g615lw-review/
- Exact model RAM layout retail evidence: https://www.mediamarkt.nl/nl/product/_asus-rog-strix-g16-g615lr-s5160w-16-inch-coretm-ultra-9-275hx-32-gb-1-tb-geforce-rtxtm-5070-ti-1881071.html
- ASUS BIOS-temperature thread: https://rog-forum.asus.com/t5/gaming-notebooks/bios-update-333-from-327-causes-serious-heat-and-issues/m-p/1144297/highlight/true
- User issue sampling: https://www.reddit.com/r/ASUSROG/comments/1po2vki/dont_buy_this_laptop_asus_needs_to_issue_a_recall/ and https://www.reddit.com/r/ASUSROG/comments/1l3nhun/asus_rog_stirx_g16_g615lr_bios_v315_v318/
