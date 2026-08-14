# Current constraints

Last updated: 2026-08-14

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
2. genuine US International QWERTY

Both laptops should preferably use the same physical layout.

German QWERTZ is a hard purchase exclusion. Do not retain or recommend an exact German-keyboard SKU merely because its price, support or hardware is strong. French AZERTY, Dutch QWERTY and generically labelled `English` layouts are not substitutes for Belgian AZERTY or proven US International and require explicit buyer approval.

## Laptop A — Light / Daily
- Laptop A is voorlopig uitgesteld. De technisch gezonde lokale HP EliteBook 850 G6 `4YD62AV` wordt eerst als tijdelijke A gebruikt en in echte school-/werkbelasting getest. De twee HP ProBook 445 G8-systemen zijn onresponsief geworden en gelden niet als betrouwbare tijdelijke A; hun RAM en NVMe mogen wel als donoronderdelen worden onderzocht na compatibiliteits- en gezondheidstests. De harde eisen blijven gelden voor een eventuele nieuwe A-aankoop, niet als redenen om een reeds betaalde bruikbare tijdelijke machine af te danken.
- Only the current manufacturer generation is eligible. Discontinued generations, clearance/rest stock, refurbished units and previous-generation bargain SKUs may remain as historical comparisons but cannot be recommended.
- Daily portable computer for school, development, Office/OneDrive, Git/SSH/VPN, remote admin, light containers/services, research and business work.
- Heavy local VM/compute is NOT a design target; use remote infrastructure or Laptop B.
- Windows 11 likely primary; Linux optional/secondary.
- Windows on ARM64/Snapdragon is fully eligible for Laptop A because Laptop B remains available for x86-only, heavy VM and specialist workloads. ARM is no longer merely a wildcard.
- ARM eligibility does not relax any hardware gate, price ceiling or factory 32GB/1TB requirement.
- Before an ARM finalist can be recommended, validate the buyer's exact school VPN/security/exam software, printers and USB peripherals. Windows 11 can emulate x86/x64 user-mode applications, but kernel drivers require native ARM64 builds.
- Network administration is not assumed ARM-safe as a category. Validate the exact teaching toolkit: packet-capture driver, USB Ethernet/serial adapters, vendor VPN, Packet Tracer/GNS3/EVE-NG client workflow, Nmap/Npcap and required x64 VM images.
- Native Windows ARM64 Wireshark packages exist, but that does not prove compatibility for every capture interface or vendor driver. Nmap's official Windows download does not currently identify a native ARM64 package.
- Unsupported or x64-only networking tools can run on Laptop B because B remains an Intel/AMD x86-64 Windows workstation. This is useful only when B is physically available or remotely reachable; ARM64 A is a practical disadvantage for an in-class lab that must work locally and offline.
- Native Microsoft 365, Visual Studio/VS Code, Git, SSH and WSL workflows are acceptable. Docker Desktop for Windows ARM remains labelled Early Access by Docker; local x86 Windows VMs, Windows containers and driver-dependent tooling belong on Laptop B or remote infrastructure unless explicitly proven.
- Apple Silicon/macOS is not automatically reopened by this ARM64 decision; that requires a separate operating-system compatibility decision.
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

### Central platform doctrine

- `Workstation-like` is a required quality level, not a required product category. The machine may be sold as a gaming, creator, business or mobile-workstation laptop.
- GeForce, RTX PRO and AMD Radeon GPUs are equally eligible in principle. Branding, ECC and ISV certification carry no automatic bonus; the exact implementation must win on measured performance, VRAM suitability, sustained cooling, software compatibility and total platform quality.
- The target is a robust, serviceable and well-supported platform with workstation-like construction, hinges, cooling margin, firmware discipline and parts/repair route. A consumer/gaming chassis may win when reviews prove those properties.
- Strict dual-device separation makes GPU power a hard Laptop-B gate. RTX 5080/5090 must expose the full 175W maximum and RTX 5070 Ti the full 140W maximum; lower-power creator/mobile implementations are reference-only even if they beat Dell `2H3VJ`. Full TGP remains necessary but not sufficient: construction, light-load fan behavior, firmware, inputs, display, repairability and three-year support must still pass independently.
- AMD dGPU candidates require exact validation for the buyer's lighting-design, video-editing, rendering and local-AI software. Missing CUDA support is a workload-compatibility question, not a blanket AMD rejection.
- Out-of-box reliability is a hard purchase gate at this price. The buyer is not willing to act as a firmware beta tester, reproduce suspected crashes, compare BIOS versions, reinstall Windows to correct vendor power/noise behavior or babysit driver/firmware updates. Ordinary first-start setup and a brief check for shipping damage are not substitutes for missing platform evidence. A candidate with a credible unresolved current BIOS/driver regression stays `CONFLICT`/purchase hold until the vendor resolves it or independent current-state evidence clears it; do not shift that validation burden onto the return window.
- Robustness has five independent mandatory dimensions: maintainable OEM software, stable ordinary operation, coordinated/reliable device and graphics drivers, disciplined BIOS delivery, and durable/serviceable hardware without a credible recurring failure pattern. Strong construction or benchmark-loop stability alone may not earn the label `robust`.
- Advanced Optimus is neither required nor a positive robustness signal. The buyer has experienced broken Advanced Optimus on Dell Pro Max workstations while ordinary Optimus works. Prefer a proven stable ordinary NVIDIA Optimus/MSHybrid path over more automatic GPU/display switching that introduces instability. A rebooting dGPU-only MUX is acceptable for deliberate maximum-performance sessions when ordinary hybrid mode remains stable and efficient.
- Only the current manufacturer/model-year generation is eligible for purchase. A discounted 2025-labelled ASUS/ROG model is not eligible in 2026 merely because it remains new in box or still receives support. Previous-model-year systems remain historical value/performance references, not recommendations.
- The buyer explicitly permits the 2025 MSI Vector 17 HX AI A2XW to be evaluated because 17 inches is ideal. More generally, actively sold and maintained 2025 RTX 50 systems are now eligible; the Vector still receives no exemption from MSI's driver/firmware/cooling gate.
- Ideal/dream configuration: approximately 16-inch, approximately 3K color-accurate display, RTX PRO 3000/4000 or full-power GeForce RTX 5080, strong real battery life, workstation-class stability/support and complete I/O. This ideal is a direction for optimization, not authorization to exceed the €4444 ceiling; current Dell CTO combinations around this intersection can approach roughly €7000 and are economically unacceptable.
- Current task scope is Laptop B first. No new Laptop A is planned while the owned EliteBook 850 G6, optionally together with the E595, covers school mobility. Laptop B may therefore use the full Dell reference boundary including unavoidable support costs.
- De exacte Dell Pro Max 18 Plus `2H3VJ` met drie jaar ProSupport is de volledige Laptop-B-baseline én een onwenselijke noodoptie, niet alleen de prijsreferentie. Vergelijk iedere finalist expliciet met deze Dell op support-adjusted prijs, ruwe en sustained CPU/GPU-performance, platformstabiliteit, support/repair workflow, bouwkwaliteit, keyboard/touchpad, scherm, I/O, batterij, koeling, uitbreidbaarheid en geschiktheid voor ongeveer zeven jaar. Een alternatief is alleen koopwaardig wanneer het binnen €4444.17 een duidelijk betere totale oplossing vormt: minimaal aantoonbaar meer ruwe CPU/GPU-performance, stabiel gedrag in meerdere professionele reviews en minstens drie jaar herstel van normale koeldefecten. Een gelijkwaardige of slechts workload-afhankelijke RTX 5070 Ti is daarom niet voldoende. ECC-VRAM, ISV-certificatie en ProSupport blijven expliciete Dell-voordelen; 18-inch draagbaarheid, onbekende exacte TGP/DPC en eventuele reviewnadelen blijven expliciete Dell-minpunten. Neem niet stilzwijgend aan dat de baseline perfect is.
- grandMA2/3, Capture, Depence, CAD/3D/rendering, video editing, GPU compute, heavy development, VMs, x86 tools and gaming. Ableton/latency-critical audio may remain on the buyer's separate desktop audio PC and is no longer a purchase gate for Laptop B.
- GPU target is an RTX 5080/5090 at the full 175W maximum or RTX 5070 Ti 12GB at the full 140W maximum. Lower-power implementations are excluded from purchase ranking and retained only as market/reference records.
- For discovery, a full-power RTX 5080 16GB is the strongest simple performance reference, not an eligibility floor. RTX PRO 3000 Blackwell and RTX 5070 Ti share the same 5888-core/12GB class closely enough that a 5070 Ti cannot *by name alone* guarantee a material win over `2H3VJ`; any GPU class remains eligible when exact sustained workload evidence and the complete platform prove a material overall advantage.
- CPU normally requires a genuinely high-performance HX-class implementation. Intel Core Ultra 9 275HX is explicitly eligible alongside 285HX/290HX Plus and AMD equivalents such as Ryzen 9 9955HX/9955HX3D. Per the buyer's original exception, current Core Ultra Series 3 Panther Lake performance chips such as 386H and credible AMD performance-AI equivalents such as Ryzen AI 9 HX 370 may also qualify when exact sustained CPU testing proves enough workstation throughput. The exception is not permission to accept ordinary low-power H/U parts by name alone. A newer suffix or model year is not an automatic advantage: sustained system-level CPU performance, cooling and platform quality decide.
- >=32 GB RAM; 64 GB is a positive workstation/future-proofing bonus when the exact total remains within budget.
- Buy with at least 32 GB now and retain a credible later upgrade path. A factory 64 GB configuration is welcome when it fits below €4444 without sacrificing more important stability, ports, cooling, display or support requirements; avoid only an excessive 64 GB premium.
- >=1 TB SSD; >=2 usable M.2.
- 16 inch remains acceptable, but 17–17.3 inch is now the preferred/ideal Laptop B size because it offers more workspace and cooling headroom while reportedly fitting the buyer's Everki Atlas. This does not relax any GPU, model-year, display, support, keyboard or budget gate. Normal 18-inch gaming alternatives remain excluded because the buyer does not want to carry them; only the exact supported Dell Pro Max 18 Plus may remain as an exceptional fallback.
- approximately full DCI-P3 is required; >=2560x1600 preferred.
- Thinness and low weight receive little weight on B, but battery is a material mobile-use criterion rather than merely an afterthought. Performance remains primary; between otherwise viable platforms, measured battery endurance can decide the purchase.
- Weight is explicitly acceptable when it enables stronger sustained cooling.
- Quiet or fanless behavior at idle and light office/web load is important. Noise under maximum rendering load is acceptable when performance remains sustained and thermally stable.
- Useful battery life remains important even for B because the machine will also be used on the go. Iets minder autonomie dan de Dell-reference is aanvaardbaar, maar extreem korte runtime of hoog idle-verbruik blijft negatief; vergelijkbare kandidaten worden gescheiden door gemeten light-use runtime en idle-efficiëntie.
- Performance outranks battery life on B and battery may not justify lowering the mandatory GPU-power floor, but once that floor and the stability gates are cleared, battery is one of three co-equal ownership criteria together with touchpad quality and repairability.
- A low reported CPU maximum temperature is not a goal by itself. Temperatures around the platform limit are acceptable under sustained heavy work when clocks and package power remain stable, aggressive thermal throttling is absent, GPU/VRM behavior is controlled, and keyboard/palm-rest surface temperatures remain usable.
- Good B cooling is therefore judged by sustained CPU/GPU power, benchmark-loop stability, throttling behavior, GPU/VRM temperatures, surface temperatures and acoustics together—not by CPU core temperature alone.
- Require useful desktop-replacement I/O; prioritize multiple USB-A/USB-C, direct display output, 2.5GbE and preferably a card reader.
- Integrated RJ45 Ethernet is a strong preference on B, not a hard gate. The buyer already owns a suitable Ethernet dongle, so a candidate without RJ45 may qualify when it has enough high-speed USB-C/TB connectivity that the adapter does not compromise the rest of the I/O. Record the dongle dependency and prefer integrated 2.5GbE when all else is equal.
- Thunderbolt 5 is not required. Require at least Thunderbolt 4 on Intel candidates or USB4 on AMD candidates.
- The intended ownership horizon is approximately seven years. Evaluate CPU/GPU headroom, VRAM, RAM ceiling, M.2 expansion, high-speed external I/O, replaceable components, firmware maintenance and support duration accordingly; short-term gaming value alone is insufficient.
- Laptop B must be priced support-adjusted. At least three years of hardware repair coverage for normal-use cooling failures (fans, vapor chamber/thermal assembly when defective, and associated motherboard damage) must be included with the exact purchase or added as an exact priced support package. Depot/pick-up/return service is acceptable because the buyer will submit the machine rather than self-repair cooling; onsite is preferred but not mandatory unless later stated. Unpriced or serial-only eligibility may not be assumed in the total.
- The buyer will self-service routine RAM/SSD/battery work when sensible, but will not self-repair the vapor-chamber/liquid-metal cooling system. Cooling repairs must preserve warranty coverage and be handled by ASUS or an authorized service provider.
- Display must independently measure or officially provide approximately full DCI-P3, with credible factory calibration or an accurate selectable colour mode.
- Touch on B is a positive bonus and may be more useful to the buyer than previously assumed, but it may not displace the mandatory GPU power, cooling, HX-class CPU, expansion, gamut or overall-I/O requirements.
- A large, accurate and well-positioned touchpad is a major Laptop B preference because the buyer frequently uses it on the go and is accustomed to the excellent 133×90mm Dell pad. Glass, Mylar/plastic and haptic/mechanical are descriptive properties, not quality scores. Judge usable area, glide/feel, tracking, palm rejection, placement and click consistency from professional evidence. A small, strongly left-offset, hollow, sticky or imprecise pad is a material disadvantage regardless of surface material. The buyer also often uses a mouse, so a merely non-premium but accurate/reliable pad is not by itself a technical hard rejection. Touchpad quality, repairability and battery are co-equal ownership criteria after the hard performance, stability, support and connectivity gates.
- Touchpad quality outranks the small CPU-refresh distinction between a well-implemented 275HX and 290HX Plus. Do not trade a large, accurate and well-reviewed pad, stronger chassis or better-supported cooling implementation merely to obtain the Plus suffix.
- Repairability on B has the same decision weight as touchpad and battery. Evaluate routine access, standard RAM/M.2/WLAN/battery modules, published service procedures, replaceability of fans/input parts, parts availability and the authorized route for vapor-chamber/liquid-metal work. User-upgradeability alone is not full repairability.
- Current actively sold RTX 50-generation systems launched in 2025 are eligible when their exact configuration remains orderable, supported and professionally reviewed. This is not permission to revive older GPU generations or stale/unmaintained stock; model age remains a lifecycle factor rather than a standalone rejection gate.

Priority:
1. sustained GPU performance
2. sustained CPU performance
3. cooling and thermal stability under sustained load
4. full-power RTX 5080 16 GB or RTX 5070 Ti 12 GB, judged on value and VRAM need
5. RAM/storage upgradeability
6. build, general platform stability and support-adjusted repair coverage
7. large, accurate touchpad and strong keyboard
8. display
9. light-load acoustics and battery
10. total price including required support
11. DPC/audio as a documented secondary limitation, not a rejection gate while Ableton remains on the desktop

## Brand purchase preferences
These are BUYER PREFERENCES, not universal technical claims.

- **MSI: conditionally reopened for Laptop B.** An exact MSI chassis is immediately rejected if credible evidence establishes a material driver, firmware/BIOS or cooling problem. Absence of evidence is not proof of health: all three categories must be affirmatively audited before shortlist eligibility.
- **Acer: excluded from normal shortlist by buyer preference.**
- **HP is reopened for Laptop A.** Previous-generation ProBook/EliteBook keycaps came loose in the buyer's experience and keyboard replacement was difficult, but every current HP chassis receives a fresh evidence-based review.
- **XMG: reopened for fact-checking.** The buyer still prefers a larger established OEM and firmware/driver delivery integrated with the normal Windows/OEM update experience, but wants XMG compared on evidence rather than excluded by brand familiarity alone.
- Dell's current consumer and business generations are explicitly open for Laptop A and should be investigated manufacturer-first and review-first. Previous Latitude/Inspiron generations are ineligible.
- Dell, Lenovo, ASUS and other non-excluded mainstream brands should be investigated normally.

An excluded brand may appear only as a clearly labeled wildcard if omitting it would materially distort the analysis. It may not become a recommended winner unless the buyer explicitly reopens it. XMG has now been explicitly reopened.
