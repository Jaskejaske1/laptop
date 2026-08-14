---
status: superseded
snapshot_date: 2026-08-12
superseded_by: ../../current.md
legacy_origin: research/report-2026-08-12.md
---

# Manufacturer-first laptop market scan — 2026-08-12

## Result

No pair currently clears every recommendation gate. Three exact, budget-valid routes exist, but each retains a critical review or SKU unknown.

| Route | Laptop A | Laptop B | Total | Interpretation |
|---|---|---|---:|---|
| Cheapest spec-complete route | Lenovo Yoga Slim 7 83JY0082MB — €1078.98 | Lenovo Legion Pro 7 83RU0039MB — €2981.30 | **€4060.28** | Conditional: A exact-panel battery is UNKNOWN and reviewed chassis creaked; B sustained GPU power and DPC are UNKNOWN |
| Strongest review-balanced route | ASUS Zenbook UM3406GA-QD031W — €1299 | Lenovo Legion Pro 7 83RU0039MB — €2981.30 | **€4280.30** | Most defensible pair today; B still fails sustained-power/DPC completion gate |
| Highest paper-GPU route, not recommended | Lenovo Yoga Slim 7 83JY0082MB — €1078.98 | HP OMEN Max 16-ah0040nb — €3249 | **€4327.98** | RTX 5080/16 GB, but mixed reviews include stutters, poor 1%-lows, loud fans, CPU up to 105°C and DPC concerns |

These are comparison routes, not final recommendations.

## Review-led conclusions

### Laptop A

The ASUS Zenbook UM3406GA is the review leader. Independent WUXGA-panel tests measured 100% sRGB/P3; a related non-touch panel measured DeltaE 1.0. Use the MyASUS sRGB mode for web/Office color accuracy or Display-P3 for compatible wide-gamut work; native mode can look oversaturated. Its main display drawbacks are 60 Hz, strong gloss/reflections and possible Pentile color fringing on small text. A current touch-panel review measured PWM, while the related non-touch panel did not, so exact-BE-SKU PWM remains UNKNOWN. Its exact Belgian 32 GB/1 TB/no-dGPU SKU costs €1299.

The Lenovo Yoga is the budget enabler with an excellent reviewed keyboard and two USB4 ports. It is not a cheaper equivalent: the purchasable WUXGA panel differs from the reviewed 2.8K panel, while the review unit showed chassis creaking and a rattly pad click.

Samsung and Dell have credible premium options, but exact Belgian prices consume too much of the pair budget. ARM Lenovo remains a challenger until the professional Windows software stack is compatibility-validated.

### Laptop B

The Legion has the cleanest evidence chain: Lenovo PSREF, an exact Belgian AZERTY transaction and an exact-chassis/GPU thermal review. GPU cooling looks competent; the CPU can reach its thermal ceiling. Missing evidence is logged sustained GPU board power and LatencyMon/DPC.

The HP is the only validated RTX 5080 configuration that fits with A, but it is no longer a normal recommendation candidate. PC Gamer's RTX 5080 unit showed repeated stutters, poor 1%-lows, slightly weaker performance than other 5080 laptops, a briefly 105°C CPU and a need for high fan speeds. Notebookcheck's different 5090 configuration added very high fast-mode noise, reduced GPU power by profile and a 1516 µs LatencyMon result. RTINGS and other reviewers found strong or stable performance, so “every OMEN is bad” is not proven; the negative evidence is nevertheless too relevant to ignore without an exact Belgian-SKU review.

XMG NEO deserves the next verification pass: the manufacturer documents 140/175 W GPU configurations and chassis reviews emphasize sustained performance. Exact Belgian keyboard, current delivered price and retail-SKU review mapping remain unresolved.

## Single-laptop alternative

The Legion 83RU0039MB at €2981.30 is the least compromised single-device option found. It covers heavy x86/GPU work but cannot reproduce A's battery life, low weight or quiet daily ergonomics.

## Evidence still needed

1. Exact physical keyboard geometry for ASUS UM3406GA-QD031W.
2. Independent battery test of the Yoga's exact 1920x1200 panel.
3. Legion sustained GPU board-power logging and LatencyMon.
4. HP exact ah0040nb TGP plus exact-SKU sustained-power/DPC review.
5. Exact Belgian XMG NEO configuration, keyboard, delivered price and review mapping.

## Addendum — B hard-filtered to RTX 5080 at 175 W

The prior 5070 Ti route no longer matches the updated target. The leading technical candidate is now XMG NEO 16 A25/E25. It is the only investigated family that combines explicit 175 W sustained GPU-only operation, 240 W sustained combined CPU/GPU power on air, an independent full-175-W confirmation, two upgradeable M.2 slots and unusually complete I/O.

The currently budget-plausible configuration is A25 with Ryzen 9 9955HX, RTX 5080, 32 GB, 1 TB and the calibrated 500-nit/100%-sRGB IPS display. XMG lists a €2849 base, a €595 RTX 5080 upgrade and a temporary 12% discount for IPS RTX 5080 configurations, giving an inferred €3030.72. Together with the €1299 Zenbook this is €4329.72. This is not yet an exact recommendation because the configurator cart, keyboard layout and DPC result require readback.

The XMG Mini-LED option is technically preferable for colour work: 100% DCI-P3, Pantone certification, factory profiles and switchable local dimming. At ordinary listed increments it appears to exceed the pair budget because the current 12% promotion applies only to IPS configurations.

The exact Lenovo Legion Pro 7 83RU004GMB, AORUS Master 18 BYHC5EED65SP and ASUS SCAR 18 G835LWG-TQ327W all meet the 175 W direction but are pair-budget invalid at their current €3899.01, €3699 and €4999 prices.
