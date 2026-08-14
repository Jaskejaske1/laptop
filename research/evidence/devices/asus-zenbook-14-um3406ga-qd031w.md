# ASUS Zenbook 14 OLED UM3406GA-QD031W — exact Belgian dossier

Last checked: 2026-08-12

## Identity and transaction

| Field | Finding | Evidence |
|---|---|---|
| Exact model | UM3406GA-QD031W | PROVEN — ASUS Belgium eStore |
| Part number | 90NB17R1-M00510 | PROVEN — ASUS Belgium eStore |
| EAN | 4711636311786 | PROVEN — ASUS Belgium eStore |
| Region / keyboard | Belgium; `BELGIUM Backlit Chiclet Keyboard` (Belgian AZERTY) | PROVEN — ASUS Belgium eStore |
| Current price | €1,299 incl. VAT; available; free 2–3-working-day delivery | PROVEN at check time — ASUS Belgium eStore |
| Warranty | 2-year manufacturer warranty | PROVEN — ASUS Belgium eStore |
| Colour | Jade Black | PROVEN |

The price is for this exact configuration, not a family `from` price.

## Exact official configuration

| Component | Exact Belgian SKU |
|---|---|
| OS | Windows 11 Home |
| CPU | AMD Ryzen AI 7 445; 6 cores / 12 threads; 2.0–4.6 GHz; 14 MB cache |
| NPU | AMD XDNA, up to 50 TOPS |
| GPU | Integrated AMD Radeon 840M; no discrete GPU |
| RAM | 32 GB LPDDR5X onboard; 32 GB maximum; not upgradeable |
| Storage | 1 TB M.2 NVMe PCIe 4.0 SSD |
| Storage expansion | 1x M.2 2280 PCIe 4.0 x4 total; replacing the installed SSD is the only internal storage upgrade path |
| Display | 14.0-inch OLED, 1920x1200, 16:10, 60 Hz, 0.2 ms, glossy, **non-touch** |
| Display claims | 400-nit SDR, 600-nit HDR peak, 100% DCI-P3, 1,000,000:1, 1.07 billion colours, VESA DisplayHDR True Black 600, 87% screen/body |
| Ports | 1x USB-A 3.2 Gen 1 5 Gbit/s; 1x USB4 Type-C 40 Gbit/s with DP/PD; 1x USB-C 3.2 Gen 2 10 Gbit/s with DP/PD; HDMI 2.1 TMDS; 3.5-mm combo jack |
| Wireless | Wi-Fi 6E 2x2; Bluetooth 5.4 (version can vary with OS) |
| Camera | FHD IR camera for Windows Hello; physical privacy shutter |
| Audio | Two built-in super-linear speakers; Smart Amp; array microphone; Dolby software support in reviewed chassis |
| Keyboard / pad | Backlit Belgian chiclet; 1.4-mm travel; precision touchpad; Copilot key. NumberPad is family-optional and is not explicitly confirmed on the exact eStore spec table |
| Battery | 75 Wh, 4-cell Li-ion |
| Charger | 68 W USB-C; ASUS states 45–68 W USB-PD charging support |
| Size / weight | 31.24 x 22.01 x 1.49 cm; 1.20 kg official |
| Construction / durability | Fully metal family construction; MIL-STD-810H claim |
| Security | Firmware TPM, Microsoft Pluton, BIOS user/boot passwords, Windows Hello IR |
| OEM management | MyASUS system diagnosis, fan profiles, battery-health charging, Live Update, Splendid colour modes and OLED Care |

## Independent review synthesis

### Display and colour

- **Wide gamut is real, not just marketing.** Jagat Review measured 99.8% DCI-P3, 396-nit SDR and 630-nit HDR on a current UM3406GA. The Hikaku measured 100% sRGB, 100% DCI-P3 and 95% Adobe RGB with natural gamma on another UM3406GA. These are current-chassis measurements, not exact Belgian panel-ID proof.
- ASUS provides sRGB, DCI-P3, Display-P3 and Native gamut modes through Splendid. Its family validation states an average DeltaE below 1 (±0.5) in sRGB/Display-P3, but explicitly says results can vary by specification. A related non-touch UM3406 WUXGA panel was independently measured at DeltaE 1.0.
- **Practical “true colour” verdict:** LIKELY excellent after selecting the correct sRGB or Display-P3 mode; do not use oversaturated Native mode for colour-managed work. Exact BE panel ID and an exact-unit calibration report remain UNKNOWN.
- The panel is glossy and only 60 Hz. Current 1920x1200 OLED panels use a Pentile-type subpixel layout, so very small text can show colour fringing to sensitive users. This is a real possible drawback for long coding/Office sessions.
- A Japanese **touch** UM3406GA review measured PWM and visible touch-electrode lines. The Belgian SKU is explicitly non-touch, so the electrode-line complaint does not apply. PWM on the exact BE non-touch panel remains UNKNOWN: a related non-touch panel measured no PWM, while the touch panel did.
- OLED burn-in remains a lifecycle consideration. ASUS enables pixel refresh/shift and dark-mode protections and states that panel exchange is covered during warranty if OLED Care was not disabled.

### Performance and thermals

- Ryzen AI 7 445 is an efficient 6-core daily-work CPU, not a disguised workstation part. The Hikaku measured Cinebench 2024 multi 599 in Standard and 622 in Performance, with single-core 106–107. That is ample for Office, development, browsing and light services, but below Ryzen AI 7 350 in multicore work.
- Radeon 840M is suitable for display acceleration, light games and basic creative work, not sustained 3D/rendering. The Hikaku measured 3DMark Night Raid graphics around 22,200.
- The chassis uses one heatpipe and one fan. Prime95 CPU temperatures were described as somewhat high in both Standard and Performance modes, but no instability was reported. Surface heat became noticeable mainly during game-like high load; ordinary use was comfortable.

### Noise

- The Hikaku measured about 21 dB at idle and during YouTube, 30 dB during video editing and 38 dB during a game benchmark (20 dB room floor; Standard mode).
- ITmedia found idle practically inaudible and PCMark 10 office work nearly inaudible; the fan became obvious only in gaming/Cinebench-style workloads.
- This strongly matches Laptop A's quiet-light-load priority. Exact BE-unit acoustics are LIKELY because the reviewed machines use the same current chassis/CPU, but normal unit variance remains possible.

### Battery and efficiency

- The Hikaku: 8 h 38 min while continuously previewing a low-resolution Premiere Pro project at about 120 cd/m² — a deliberately more demanding loop than ordinary video playback.
- ITmedia: 16 h 21 min in PCMark 10 Modern Office, Balanced/Standard mode, display initially at maximum brightness with normal battery dimming.
- ASUS' own family test claims over 25 hours of 1080p video under a light laboratory setup (Wi-Fi on but disconnected, 150 nits). Treat that as an upper-bound manufacturer result, not normal mixed use.
- Conclusion: independently proven strong endurance for an OLED Windows laptop. A realistic mixed-use day should be comfortable, but workload and OLED brightness/white content will matter.

### Keyboard, touchpad, build and usability

- Official travel is 1.4 mm with 19.05-mm pitch and 0.3-mm dished caps. Reviews describe the keyboard as comfortable/ordinary-good rather than class-leading; the quiet switch design is genuinely unobtrusive.
- Jagat measured a large 13 x 7.5 cm touchpad. Reviews found it responsive. The exact Belgian spec confirms a precision touchpad but does not explicitly guarantee the optional illuminated NumberPad function.
- Reviewers found the aluminium chassis and hinge solid with no recurring creak pattern. Jade Black attracts fingerprints.
- Both USB-C ports and the charging cable are on the right; a reviewer found the centrally positioned charging cable potentially intrusive for right-handed mouse use. There is only one USB-A port and no card reader.

## Negative-review / reliability audit

No repeated current-generation professional-review pattern of hinge failure, battery drain, thermal instability or erratic fan behaviour was found. The durable concerns are instead product characteristics: glossy 60-Hz OLED, possible small-text fringing/PWM sensitivity, soldered RAM and a single M.2 slot. Single-market touch-panel complaints must not be copied wholesale to this non-touch Belgian SKU.

## Fit against Laptop A requirements

| Requirement | Result |
|---|---|
| Exact BE SKU / price / layout | PASS — PROVEN |
| 32 GB / 1 TB | PASS — PROVEN |
| No dGPU | PASS — PROVEN |
| USB-C charging / USB4 | PASS — PROVEN |
| Full-sRGB minimum | PASS — official 100% P3 plus repeated chassis measurements |
| Battery | PASS — strong independent evidence |
| Keyboard / touchpad evidence | PASS — official dimensions/travel plus review evidence |
| Touch required? | No; exact SKU is non-touch, which avoids touch-electrode artifacts |

## Verdict

**SHORTLIST, strong Laptop A fit.** Its main compromises are the 60-Hz glossy OLED, possible text/PWM sensitivity and zero RAM expansion. For this buyer, non-touch is a benefit rather than an omission. Before the return period expires, inspect small text at normal scaling/brightness and test USB4/HDMI sleep-wake behaviour.

## Sources

- Exact Belgian SKU/store: https://estore.asus.com/be-nl/90nb17r1-m00510-asus-zenbook-14-oled-um3406-copilot-pc.html
- Belgian family/display/colour controls: https://www.asus.com/be-nl/laptops/for-home/zenbook/asus-zenbook-14-oled-um3406/
- Current UM3406GA measurements: https://thehikaku.net/pc/asus/26Zenbook14-UM3406GA.html
- Current UM3406GA battery/noise: https://www.itmedia.co.jp/pcuser/articles/2604/14/news058_5.html
- Current UM3406GA gamut/input/chassis: https://www.jagatreview.com/2026/02/review-asus-zenbook-14-oled-um3406ga/2/
- Related non-touch WUXGA panel measurement: https://laptopmedia.com/gb/review/asus-zenbook-14-oled-um3406-review-a-balanced-performer-with-long-battery-life/

