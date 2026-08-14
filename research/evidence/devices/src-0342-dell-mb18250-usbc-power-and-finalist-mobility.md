---
id: SRC-0342
record_type: source
checked_at: "2026-08-13"
subject: "Dell MB18250 USB-C power correction and NEO/SCAR mobility distinction"
region: "Dell global platform; BE finalist implications"
source_type: "primary owner manual plus professional finalist measurements"
exact_sku: "Dell MB18250 chassis; XMG 10302800; ASUS G635LW-RW089W"
evidence_label: "PROVEN platform power requirements and measured runtime; integration interpretation"
legacy_origin: "buyer mobility clarification 2026-08-13"
---

# Dell USB-C power and finalist mobility

## Dell correction

- Dell Pro Max 18 Plus with discrete graphics requires 280W for optimal performance and ships with a 280W USB Type-C adapter.
- The owner manual lists standard Type-C PDOs at 140W, 180W and 240W. Less than 280W charges a dGPU system more slowly and may trigger a lower-power warning; 90W is the minimum to operate and charge.
- Therefore the Dell is not limited to 100W input. Its included 280W Type-C supply extends beyond the ordinary USB-PD profiles used by common chargers/docks. Generic 240W EPR is still below Dell's stated 280W optimum for the dGPU platform.
- Ports are 2x TB5 and 1x TB4, all with Power Delivery and DisplayPort. The power-adapter input is itself USB Type-C.

## Mobility versus integration

- ASUS has the more automated mobile experience: Advanced Optimus, automatic 60Hz behavior on battery in the exact review, Silent/Eco controls, broad 100W USB-PD compatibility and MyASUS Battery Care with an 80% longevity cap.
- XMG has the stronger measured endurance hardware: 99.8Wh versus 90Wh, three battery charge profiles and an iGPU-exclusive mode. Notebookcheck's directly comparable WLAN test measured 9h32 for NEO E25 versus 6.5h for the SCAR same chassis. XMG requires more deliberate profile/display-path management because it lacks Advanced Optimus.
- Thus `ASUS better battery integration` and `XMG better battery runtime` can both be true. Neither is an ultraportable; both weigh about 2.8kg before their large adapters.

## SCAR construction calibration

- The 2025 G635 main chassis is plastic with a metal lid. Exact professional reviews call the case quality good; hinges hold the display without ordinary wobble, the rubber feet anchor it well and the plastic palmrest remains cooler under load.
- No professional review establishes a structural durability defect caused by the material. The genuine penalties are tactile premium feel, fingerprints/smudging and the absence of metal's subjective rigidity/finish at this price.
- Plastic is therefore a value/premium-feel trade-off, not a technical rejection or evidence of short lifespan.

## Sources

- https://www.dell.com/support/manuals/en-nz/dell-pro-max-mb18250-laptop/dell-pro-max-18-plus-mb18250-owners-manual/power-adapter-requirements-of-dell-pro-max-18-plus-mb18250
- https://www.dell.com/support/manuals/en-in/dell-pro-max-mb18250-laptop/dell-pro-max-18-plus-mb18250-owners-manual/external-ports-and-slots
- https://www.notebookcheck.net/The-fastest-gaming-laptop-is-now-even-better-thanks-to-300-Hz-mini-LED-XMG-Neo-16-E25-RTX-5090-laptop-review.1016705.0.html
- https://www.notebookcheck.net/The-RTX-5090-Laptop-and-mini-LED-inside-a-gaming-laptop-Asus-ROG-Strix-SCAR-16-2025-review.1012778.0.html
- https://www.ultrabookreview.com/71050-asus-rog-scar-16-g635-review/
- https://rog.asus.com/uk/support/faq/1045651/
