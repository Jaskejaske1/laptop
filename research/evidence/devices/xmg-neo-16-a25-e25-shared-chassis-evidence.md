# XMG NEO 16 A25/E25 — fact-check against ASUS ROG Strix G16 G615

Last checked: 2026-08-12

## Scope and identity

XMG is not an unknown shell brand with no accountable company behind it. It is a brand of Schenker Technologies GmbH in Leipzig; Schenker dates to 2002 and introduced XMG in 2009. It remains much smaller than ASUS and has no comparable Belgian retail/service network, but European sales, assembly, support and warranty are operated directly by an identifiable German company.

The NEO 16 A25 (AMD Ryzen 9 9955HX/9955HX3D) and E25 (Intel Core Ultra 9 275HX) share the current aluminium NEO chassis and cooling architecture, but platform-specific behavior may not be transferred silently. In particular, E25 LatencyMon is not evidence for A25.

## Current Belgian configurator evidence

| Configuration state | Finding | Evidence |
|---|---|---|
| E25 configurator base | €3,079 incl. Belgian VAT; Mini-LED, RTX 5070 Ti, Ultra 9 275HX, 32 GB (2x16), 1 TB, German keyboard, no paid Windows option selected | PROVEN live configurator state |
| E25 RTX 5080 surcharge | +€636; arithmetic subtotal €3,715 before any paid OS/layout/service changes | PROVEN option / calculated subtotal; exact final cart UNKNOWN |
| A25 configurator base | €2,899 incl. Belgian VAT; matte IPS, RTX 5070 Ti, Ryzen 9 9955HX, 32 GB (2x16), 1 TB, German keyboard, no paid Windows option selected | PROVEN live configurator state |
| A25 RTX 5080 surcharge | +€636 | PROVEN option |
| A25 promotion | 12% cart discount through 2026-08-14 15:00 for IPS + RTX 5070 Ti/5080 | PROVEN current commercial term |
| A25 estimated promoted subtotal | (€2,899 + €636) × 0.88 = €3,110.80 before paid OS/layout/service changes | CALCULATED; exact cart UNKNOWN |

The earlier €3,030.72 A25 estimate is superseded by the current Belgian base and option prices. No XMG configuration is recommendation-eligible until the exact Belgian keyboard, OS, warranty/service tier and final discounted cart total are read back together.

## Hardware and review evidence

### Cooling and sustained power

- Official E25 and A25 documentation specifies RTX 5080 at 150 W plus 25 W Dynamic Boost, **175 W sustained GPU-only** and 240 W sustained CPU+GPU on air.
- Notebookcheck's retail E25/RTX 5090 unit reached the full 175 W without OASIS and remained stable. This proves the current chassis can sustain the thermal class, but is not an exact RTX 5080 unit measurement.
- E25 air-cooling modes measured 150 W / 45.3 dB(A) Balanced, 150 W / 48.6 dB(A) Enthusiast and 175 W / 55.4 dB(A) Overboost. Idle/light load was 26 dB(A), with no electronic noise on the review unit.
- Surface temperatures stayed below 48°C in the review; the centre keyboard became warm under load, while everyday-use temperatures were low. Performance remained stable.

Result: XMG cooling is not worse than the Strix. Both current chassis are high-end three-fan designs that sustain 175-W GPUs. XMG's full-load noise is approximately the same class as Strix Turbo (55.4 versus 54.2 dB(A)); its quiet/light-load behavior is also approximately tied with the Strix chassis (26 versus fans-off/about 25 dB(A)).

### DPC / LatencyMon

- XMG NEO 16 E25, Core Ultra 9 275HX, RTX 5090: 1465.8 microseconds; Notebookcheck described slight limitations for real-time audio.
- ASUS ROG Strix G16 G615, Core Ultra 9 275HX, RTX 5080: 1501.6 microseconds; also described as slight real-time-audio limitations.
- Exact Belgian Strix G615LR/RTX 5070 Ti: UNKNOWN.
- XMG NEO 16 A25/AMD: UNKNOWN. One owner freeze/DPC_WATCHDOG report is an anecdote, not a LatencyMon measurement or fleet-wide result; other owners in the same discussion reported no issues.

Result: the measured Intel systems are effectively in the same mediocre DPC class. There is no evidence that XMG is worse, but also no evidence that it solves the Ableton/real-time-audio concern. Exact intended configuration testing remains mandatory.

### Display

The optional matte 300-Hz Mini-LED is the strongest non-OLED screen found in this comparison:

- 858.7-nit measured SDR average, 888-nit centre and over 1,700 nits full-screen HDR;
- 100% sRGB and 99.9% Display-P3;
- DeltaE 3.3 factory/default and 1.5 after calibration;
- matte finish, local dimming switchable off for uniform creator work;
- no OLED burn-in mechanism and no glossy OLED reflection penalty;
- no touch;
- constant 20.25-kHz flicker was measured; response-time measurement was complicated by that flicker and yielded 17.4 ms grey-grey / 13 ms black-white in Notebookcheck's table;
- local dimming resets to disabled after cold boot/hibernate and must be toggled again in Control Center;
- Intel E25 has no internal G-Sync, Advanced Optimus or VESA Adaptive Sync. AMD A25 supports FreeSync; external displays support VRR.

The standard matte IPS is 500-nit-class and factory calibrated but only officially 100% sRGB. Therefore the standard Strix G615 IPS (measured 536 nits and 99.1% P3, no PWM) is the better creator panel than XMG's standard IPS. XMG only wins the display comparison with the costlier Mini-LED option.

### Battery, I/O, build and expansion

- E25 Mini-LED review: 9h32 Wi-Fi at 150 nits/60 Hz, 3h53 Wi-Fi at maximum brightness and 7h40 video from 99.8 Wh. Dark content/local dimming materially lowers idle consumption; white content or disabled local dimming nearly doubled it.
- Strix same-chassis RTX 5080 review: 7h49 Wi-Fi at 150 nits; matched 5070-Ti review: 6h54 with dGPU disabled. The E25 result is at least competitive and likely better under its optimized test state.
- E25: 2.5GbE RJ45, rear TB4/USB4 40 Gbit/s with 140-W PD, second 10-Gbit/s USB-C, 3x 5-Gbit/s USB-A, HDMI 2.1, Mini-DP 2.1 and fast full-size SD. Strix: same 2.5GbE speed, 2x TB5, 3x faster 10-Gbit/s USB-A and HDMI, but no card reader/rear ports.
- E25 supports two M.2 slots (one PCIe 5.0, one 4.0) and up to 128 GB in two SO-DIMMs; A25 up to 96 GB. The aluminium chassis was judged very stable; keyboard and glass clickpad were reviewed positively. Owner upgrades do not void warranty when performed correctly.

## Firmware, update delivery and known issues

The firmware is **not open-source**. XMG exposes extensive tuning options, but distributes proprietary BIOS/EC packages.

The buyer's update concern is factually correct:

- XMG asks owners to check its download portal every few months during the first model year.
- BIOS/EC updates normally require a FAT32 USB stick and EFI Shell; Windows-based firmware updates are usually not offered.
- This is less convenient than ASUS/MyASUS/Windows-integrated delivery, though it also gives the owner control over when firmware changes are installed.

The 2025 NEO generation did have real launch/firmware issues: promised G-Sync/Advanced Optimus was cancelled before shipment with discount/cancellation offered to pre-order buyers; A25 initially ran the GPU link at PCIe 4.0 x8; Samsung 9100 Pro writes were inconsistent on A25; some Optimus/dGPU-sleep and RTX 50 low-power-state issues required updates/workarounds; A25 rejects certain Kingston-IC memory modules; Mini-LED local dimming state does not persist. XMG published these problems and their status in a detailed ongoing ledger. PCIe Gen5 x8 and the Samsung SSD issue were fixed by BIOS N.1.12A10; the local-dimming and missing internal G-Sync/Advanced Optimus limitations remain.

This record shows imperfections, not abandonment. It is unusually transparent engineering/support, but a buyer who wants invisible automatic maintenance will find the process burdensome.

## Warranty and service

- 24-month included device-related, transferable warranty; optional 36 months.
- Pick-up & Return transport costs are covered within the EU; component advance replacement is available in EU countries except Malta/Cyprus.
- Basic 48-hour in-house quick-repair service applies for six months; longer Premium/Platinum quick-repair coverage costs extra. After that service window, the stated normal target is about 14 working days.
- Notebookcheck's 2024 German-language reader survey (543 relevant records across included brands) placed Schenker/XMG first for overall notebook service satisfaction, with over 90% satisfied/very satisfied telephone-support respondents and an especially easy RMA process. The survey is region- and self-selection-sensitive and is not a hardware failure-rate study. The same survey reported around 40% of ASUS repair cases taking over 14 days.

Result: there is no evidence that XMG service is worse than ASUS in this European context; the available independent service evidence points the other way. The real disadvantage is lack of a broad Belgian retail/on-site network, not absence of accountable warranty support.

## Comparative verdict

**XMG NEO is not factually worse than the Strix overall.** It is stronger in full-power RTX 5080 availability, Mini-LED brightness/HDR without OLED burn-in, creator I/O, RAM ceiling, rear ports, documented engineering transparency and measured EU/German service satisfaction. Cooling, idle acoustics and measured Intel DPC are approximately tied.

Strix is stronger in price/value, automatic update convenience, internal G-Sync/Advanced Optimus, standard-panel P3 coverage, faster USB-A ports and direct Belgian manufacturer SKU/keyboard certainty. Its exact €2,499 5070-Ti configuration is €1,216 below the calculated E25 5080 subtotal before Windows; that—not evidence of XMG being bad—is why compromises kept reappearing.

Status remains **VERIFYING**, not winner: E25 Mini-LED/5080 is pair-budget invalid; A25 IPS/5080 may fit only under a temporary promotion but has exact-cart, DPC and wide-gamut compromises. A genuinely no-compromise XMG Mini-LED/5080 combination currently conflicts with the €4,444 two-laptop ceiling.

## Sources

- Company: https://help.xmg.gg/hc/en-gb/articles/17843821141789-Who-stands-behind-XMG
- E25/A25 product and live configurators: https://bestware.com/en/products/xmg-neo-16-e25 and https://bestware.com/en/products/xmg-neo-16-a25
- Retail E25 measurement review: https://www.notebookcheck.net/The-fastest-gaming-laptop-is-now-even-better-thanks-to-300-Hz-mini-LED-XMG-Neo-16-E25-RTX-5090-laptop-review.1016705.0.html
- Official ongoing issue/update ledger: https://www.xmg.gg/en/news-deep-dive-xmg-pro-xmg-neo-2025/
- Firmware update procedure: https://help.xmg.gg/hc/en-gb/articles/17824611001117-How-can-I-update-the-EC-BIOS-firmware-of-my-laptop
- Warranty terms: https://help.bestware.com/hc/en-gb/article_attachments/24669705192349
- Upgrade policy: https://help.xmg.gg/hc/en-gb/articles/17843776338205-How-service-friendly-are-XMG-laptops
- Independent service survey: https://www.notebookcheck.com/Umfrage-Service-und-Support-im-Reparaturfall-Diese-Laptop-und-Smartphone-Hersteller-koennen-nicht-ueberzeugen.905354.0.html
- A25 owner freeze thread sampled as anecdotal evidence: https://www.reddit.com/r/XMG_gg/comments/1m0vf95/neo_16_a25_regularly_becomes_completelyalmost/

