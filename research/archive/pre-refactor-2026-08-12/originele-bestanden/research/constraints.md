# Current constraints

Last updated: 2026-08-12

## Total budget
- Absolute maximum Laptop A + Laptop B: **€4444 incl. VAT and unavoidable purchase costs**.
- This ceiling is anchored to the exact Belgian Dell Pro Max 18 Plus MB18250 `2H3VJ`, currently €4444.17 with three-year Dell ProSupport. A two-laptop solution near the ceiling is not automatically good value: it must justify losing the single-workstation support/ISV package through materially better raw performance, portability, redundancy or role separation.
- Compare support on equal terms. A consumer pair at roughly €4444 without comparable multi-year support is economically weaker than the reference workstation even when its sticker total is a few euros lower.
- Any required RJ45 adapter or dock counts as an unavoidable purchase cost unless the buyer already owns a suitable unit or the exact laptop SKU explicitly includes it.
- Over-budget combinations are invalid.
- Do not optimize to spend the full budget.

## Buyer / region
- Belgium.
- Prefer BE, NL and trustworthy large Western-European sellers.
- UK import unattractive.
- Avoid dubious marketplace/parallel import.

## Keyboard
Preferred pair-wide order:
1. Belgian AZERTY
2. standard US ANSI / genuine US International QWERTY

Both laptops should preferably use the same physical layout.

## Laptop A — Light / Daily
- Laptop A is voorlopig uitgesteld, maar de twee bestaande HP ProBook 445 G8-systemen zijn onresponsief geworden en gelden niet meer als betrouwbare tijdelijke A. Hun RAM en NVMe mogen later als donoronderdelen worden onderzocht, na compatibiliteits- en gezondheidstests. De harde A-eisen blijven bewaard voor een latere aankoop; gebruik het uitstel niet om ze stilzwijgend te versoepelen.
- Only the current manufacturer generation is eligible. Discontinued generations, clearance/rest stock, refurbished units and previous-generation bargain SKUs may remain as historical comparisons but cannot be recommended.
- Daily portable computer for school, development, Office/OneDrive, Git/SSH/VPN, remote admin, light containers/services, research and business work.
- Heavy local VM/compute is NOT a design target; use remote infrastructure or Laptop B.
- Windows 11 likely primary; Linux optional/secondary.
- x86-64 preferred.
- ARM/Snapdragon only as a challenger after explicit compatibility validation.
- no discrete GPU
- roughly 14–16 inch preferred
- The exact purchasable configuration must leave the manufacturer/factory with >=32 GB RAM. A 16 GB base configuration plus a user or retailer upgrade is ineligible.
- The exact purchasable configuration must leave the manufacturer/factory with >=1 TB SSD. A smaller base SSD plus a user or retailer upgrade is ineligible.
- USB-C charging
- good chassis, keyboard and large touchpad
- Keyboard durability and serviceability must be assessed from current-chassis evidence: key retention/failure reports, deck flex, long-form typing impressions, keyboard replacement procedure and part/module availability. Older HP ProBook/EliteBook failures are historical context, not transferable proof.
- strong real-world battery life
- display is a hard gate: matte/anti-glare IPS, specified or independently measured at approximately >=500 nit, and approximately full sRGB gamut. A 300-, 350-, 400- or 450-nit panel is ineligible even when matte; OLED/glossy is ineligible for the current A search.
- 1920x1200 acceptable
- 1920x1200 at 60 Hz is the preferred sufficient target when it reduces price or power use. Higher resolution or refresh rate has no independent value on A and should not consume budget; it is acceptable only when bundled into the cheapest otherwise qualifying exact SKU.
- DCI-P3 is not required on A; accurate full sRGB is sufficient and preferred when it improves battery life, readability and display longevity
- USB4/TB strongly preferred
- Integrated RJ45 Ethernet is mandatory on A.
- A also requires at least 2x USB-A and at least 2x USB-C. Charging may consume one USB-C port, but one USB-C must remain free while RJ45, mouse and USB stick are connected. USB4/TB remains strongly preferred; separate HDMI is preferred.
- Touch is not required and receives no meaningful priority on A. It may be present, but may not worsen reflections, text clarity, battery life, price or panel quality.
- OLED and glossy displays are currently ineligible for Laptop A because the buyer explicitly requires a 500-nit matte IPS panel. Historical OLED evidence is retained but must not be used to rank a current A candidate.
- Touch is optional. The ideal touch implementation would be matte or genuinely anti-reflective, but a strong non-touch matte IPS is fully acceptable.
- A needs an efficient current-generation AI-capable CPU that can multitask comfortably; maximum HX-class performance is unnecessary when it materially reduces battery life. Strong sustained everyday performance and real battery measurements matter more than peak benchmark scores.
- A and B should not duplicate the same performance role. A is optimized for battery, display readability, inputs and daily responsiveness; sustained rendering, heavy VMs and GPU compute belong on B or remote infrastructure.
- Display longevity matters because A will show static productivity/development interfaces for years. Prefer a well-executed IPS or other low-retention-risk panel that meets the matte/brightness/full-sRGB gate; glossy OLED is normally ineligible under the revised matte requirement.

Priority:
1. matte/low-reflection display, brightness, full-sRGB accuracy and long-term suitability
2. real battery life / efficiency
3. CPU performance and powerful integrated graphics
4. touchpad + keyboard
5. build / reliability
6. price/value
7. >=32 GB RAM
8. RJ45 or sufficient USB4/TB + 2x USB-A fallback connectivity
9. upgradeability
10. touch, with essentially no positive weight unless its implementation is unusually good
11. Linux compatibility as bonus

Laptop A must cost less than €1300 including VAT and unavoidable purchase costs as an exact factory 32GB/1TB configuration. Aftermarket RAM/SSD upgrades may not be used to reach this ceiling. The overall pair ceiling remains absolute.

## Laptop B — Performance
- Ideal/dream configuration: approximately 16-inch, approximately 3K color-accurate display, RTX PRO 3000/4000 or full-power GeForce RTX 5080, strong real battery life, workstation-class stability/support and complete I/O. This ideal is a direction for optimization, not authorization to exceed the €4444 ceiling; current Dell CTO combinations around this intersection can approach roughly €7000 and are economically unacceptable.
- Current task scope is Laptop B first. Onderzoek ook een scenario waarin er nu helemaal geen Laptop A wordt gekocht; B mag dan tot de totale referentiegrens van ongeveer €4444 incl. btw en onvermijdelijke kosten kosten.
- De Dell Pro Max 18 Plus `2H3VJ` met drie jaar ProSupport blijft de prijs-/supportreferentie én een onwenselijke noodoptie. De koper kan hem accepteren wanneer geen kleiner toestel de vereiste stabiliteit, support en professionele bruikbaarheid benadert, maar 18 inch blijft een zwaar praktisch nadeel. Een consumer/gaming-alternatief nabij dezelfde prijs moet zijn voordeel aantoonbaar maken in bruikbare CPU/GPU-performance, koeling, scherm, I/O, DPC of uitbreidbaarheid en mag ondersteuning/firmwarekwaliteit niet negeren.
- grandMA2/3, Capture, Depence, CAD/3D/rendering, video editing, GPU compute, heavy development, VMs, x86 tools and gaming. Ableton/latency-critical audio may remain on the buyer's separate desktop audio PC and is no longer a purchase gate for Laptop B.
- GPU target is either an RTX 5080 16 GB at the full 175 W maximum or an RTX 5070 Ti 12 GB at its full 140 W maximum. Lower-power implementations of either GPU are excluded from the normal shortlist unless explicitly treated as efficiency challengers.
- CPU must be HX class, Intel Core Ultra Series 3/Panther Lake performance class, or an AMD performance equivalent such as Ryzen 9 9955HX/9955HX3D.
- >=32 GB RAM; 64 GB is a positive workstation/future-proofing bonus when the exact total remains within budget.
- Buy with at least 32 GB now and retain a credible later upgrade path. A factory 64 GB configuration is welcome when it fits below €4444 without sacrificing more important stability, ports, cooling, display or support requirements; avoid only an excessive 64 GB premium.
- >=1 TB SSD; >=2 usable M.2.
- 16 inch is het doel voor Laptop B. Normale 18-inch gamingalternatieven blijven uitgesloten omdat de koper ze niet wil meesleuren. Alleen de exact ondersteunde Dell Pro Max 18 Plus mag als noodoptie blijven bestaan vanwege zijn uitzonderlijke support-/stabiliteitspositie; dat is geen algemene heropening van 18 inch.
- approximately full DCI-P3 is required; >=2560x1600 preferred.
- thinness/weight/battery are not rewarded.
- Weight is explicitly acceptable when it enables stronger sustained cooling.
- Quiet or fanless behavior at idle and light office/web load is important. Noise under maximum rendering load is acceptable when performance remains sustained and thermally stable.
- Useful battery life remains desirable even for B. Iets minder autonomie dan de Dell-reference is aanvaardbaar, maar extreem korte runtime of hoog idle-verbruik blijft negatief; vergelijkbare kandidaten worden gescheiden door gemeten light-use runtime en idle-efficiëntie.
- Performance outranks battery life on B. Battery remains a tie-breaker and a convenience criterion, not a reason to cap sustained CPU/GPU performance.
- A low reported CPU maximum temperature is not a goal by itself. Temperatures around the platform limit are acceptable under sustained heavy work when clocks and package power remain stable, aggressive thermal throttling is absent, GPU/VRM behavior is controlled, and keyboard/palm-rest surface temperatures remain usable.
- Good B cooling is therefore judged by sustained CPU/GPU power, benchmark-loop stability, throttling behavior, GPU/VRM temperatures, surface temperatures and acoustics together—not by CPU core temperature alone.
- Require useful desktop-replacement I/O; prioritize multiple USB-A/USB-C, direct display output, 2.5GbE and preferably a card reader.
- RJ45 Ethernet is mandatory on B.
- Thunderbolt 5 is not required. Require at least Thunderbolt 4 on Intel candidates or USB4 on AMD candidates.
- The intended ownership horizon is approximately seven years. Evaluate CPU/GPU headroom, VRAM, RAM ceiling, M.2 expansion, high-speed external I/O, replaceable components, firmware maintenance and support duration accordingly; short-term gaming value alone is insufficient.
- Laptop B must be priced support-adjusted. At least three years of hardware repair coverage for normal-use cooling failures (fans, vapor chamber/thermal assembly when defective, and associated motherboard damage) must be included with the exact purchase or added as an exact priced support package. Depot/pick-up/return service is acceptable because the buyer will submit the machine rather than self-repair cooling; onsite is preferred but not mandatory unless later stated. Unpriced or serial-only eligibility may not be assumed in the total.
- The buyer will self-service routine RAM/SSD/battery work when sensible, but will not self-repair the vapor-chamber/liquid-metal cooling system. Cooling repairs must preserve warranty coverage and be handled by ASUS or an authorized service provider.
- Display must independently measure or officially provide approximately full DCI-P3, with credible factory calibration or an accurate selectable colour mode.
- Touch on B is a positive bonus and may be more useful to the buyer than previously assumed, but it may not displace the mandatory GPU power, cooling, HX-class CPU, RJ45, expansion, gamut or I/O requirements.

Priority:
1. sustained GPU performance
2. sustained CPU performance
3. cooling and thermal stability under sustained load
4. full-power RTX 5080 16 GB or RTX 5070 Ti 12 GB, judged on value and VRAM need
5. RAM/storage upgradeability
6. build, general platform stability and support-adjusted repair coverage
7. display
8. light-load acoustics and battery
9. total price including required support
10. DPC/audio as a documented secondary limitation, not a rejection gate while Ableton remains on the desktop

## Brand purchase preferences
These are BUYER PREFERENCES, not universal technical claims.

- **MSI: conditionally reopened for Laptop B.** An exact MSI chassis is immediately rejected if credible evidence establishes a material driver, firmware/BIOS or cooling problem. Absence of evidence is not proof of health: all three categories must be affirmatively audited before shortlist eligibility.
- **Acer: excluded from normal shortlist by buyer preference.**
- **HP is reopened for Laptop A.** Previous-generation ProBook/EliteBook keycaps came loose in the buyer's experience and keyboard replacement was difficult, but every current HP chassis receives a fresh evidence-based review.
- **XMG: reopened for fact-checking.** The buyer still prefers a larger established OEM and firmware/driver delivery integrated with the normal Windows/OEM update experience, but wants XMG compared on evidence rather than excluded by brand familiarity alone.
- Dell's current consumer and business generations are explicitly open for Laptop A and should be investigated manufacturer-first and review-first. Previous Latitude/Inspiron generations are ineligible.
- Dell, Lenovo, ASUS and other non-excluded mainstream brands should be investigated normally.

An excluded brand may appear only as a clearly labeled wildcard if omitting it would materially distort the analysis. It may not become a recommended winner unless the buyer explicitly reopens it. XMG has now been explicitly reopened.
