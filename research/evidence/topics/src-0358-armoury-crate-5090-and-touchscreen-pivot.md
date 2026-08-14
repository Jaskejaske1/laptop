---
id: SRC-0358
record_type: source
checked_at: "2026-08-14"
subject: "Armoury Crate mitigation, RTX 5090 value and touchscreen Laptop-B pivot"
region: "BE/EU"
source_type: "official ASUS/NVIDIA/Dell/MSI specifications, G-Helper project documentation, professional reviews and live Belgian transactions"
exact_sku: "ASUS G635LW; MSI B2WJ-039BE; Dell MB16250 configurator; ProArt H7606WX"
evidence_label: "PROVEN feature/transaction boundaries; exact MSI Belgian CPU/panel remains CONFLICT"
legacy_origin: "new research 2026-08-14"
---

# Armoury Crate, RTX 5090 and touchscreen pivot — SRC-0358

## Sources

- https://www.asus.com/us/supportonly/armoury_crate/helpdesk_download/
- https://github.com/seerge/g-helper
- https://github.com/seerge/g-helper/wiki/Requirements
- https://www.nvidia.com/en-us/geforce/laptops/50-series/
- https://www.notebookcheck.net/Nvidia-GeForce-RTX-5090-Laptop-Analysis-Faster-but-there-is-more-to-come.988519.0.html
- https://www.notebookcheck.net/MSI-Raider-16-Max-HX-laptop-review-Faster-than-the-Titan-18-HX.1314805.0.html
- https://www.pcworld.com/article/3121543/msi-raider-16-max-hx-review.html
- https://www.coolblue.be/en/product/981022/msi-raider-16-max-hx-b2wj-039be-azerty.html
- https://www.mediamarkt.be/nl/product/_msi-raider-16-max-hx-b2wj-039be-16-inch-qhd-intel-core-ultra-9-275hx-32-gb-1-tb-geforce-rtxtm-5090-azerty-gaming-laptop-2231043.html
- https://www.dell.com/nl-be/shop/dell-laptops/dell-pro-max-16-plus-laptop/spd/dell-pro-max-mb16250-laptop/xcto_mb16250_emea
- https://www.asus.com/nl/laptops/for-creators/proart/proart-p16-h7606/shop/

## Can Armoury Crate be avoided?

- ASUS publishes an official Armoury Crate Uninstall Tool, so removing the suite is supported as a software operation and it can later be reinstalled.
- G-Helper explicitly supports ROG Strix/SCAR and can select ASUS's BIOS-defined Silent/Balanced/Turbo profiles, Eco/Standard/Ultimate/Optimized GPU modes, fan/power settings, RGB/AniMe lighting, refresh rate, Mini-LED zones, battery charge limit and official ASUS driver/BIOS links.
- G-Helper recommends removing Armoury Crate services because both tools otherwise write the same settings. It still depends on the ASUS System Control Interface and on ASUS BIOS/EC/graphics firmware. It is an unofficial GPL utility with no ASUS warranty or enterprise support.
- Therefore G-Helper can remove most Armoury Crate bloat and daily UI friction, but cannot repair a BIOS regression, Thunderbolt/HDMI/display-path crash, broken driver or firmware rollback problem. It meaningfully improves SCAR usability; it does not clear the existing exact integration `CONFLICT`.

## RTX 5090 value

- NVIDIA specifies 24GB GDDR7 for RTX 5090 Laptop versus 16GB for RTX 5080 Laptop. This 50% VRAM increase is the durable advantage for local AI, oversized video/3D scenes and workloads that exceed 16GB.
- At the shared 175W ceiling, professional comparison evidence places a well-cooled 5080 within roughly 15% of 5090 in many graphics benchmarks, with individual 5080 systems sometimes beating lower-power or worse-tuned 5090 systems. 5090 is not automatically a faster complete laptop.
- Exact Belgian Raider `B2WJ-039BE` remains the only current 5090 route already shown within the €4444.17 support-adjusted ceiling: €4361.62 through Coolblue plus the priced third year, or €4297.36 through the documented split route. Belgian AZERTY, 32GB/1TB and RTX 5090 are proven.
- Exact Belgian CPU/panel metadata remains `CONFLICT`: MediaMarkt and multiple Belgian records state 275HX; same-current professional/family evidence states 290HX Plus and OLED, while Coolblue metadata previously labelled the display IPS. Do not buy until MSI or the seller confirms the serial-specific CPU and panel in writing.
- The professionally reviewed Raider 5090 reaches true flagship performance, but its practical advantage over strong 5080 systems can be narrow outside VRAM-bound work. It retains the plastic/chassis and touchpad-execution concerns of the 5080 Raider.

## Touchscreen market result

- ASUS ProArt P16 H7606WX is the only clean current 16-inch RTX 5090 touchscreen family found in ordinary EU retail: 4K/3K OLED touch, Ryzen AI 9 HX 370, 64GB and 2TB/4TB. The exact Belgian `SE002X` is already rejected at €5799 and its GPU is approximately 130W; RAM is soldered and RJ45 absent.
- Dell Pro Max 16 Plus MB16250 officially offers a 16-inch 3840x2400 500-nit HDR True Black OLED touchscreen together with Belgian or English International keyboard, RTX PRO 3000/4000/5000, replaceable memory/storage and Dell support. The live Belgian configurator makes even a conservative RTX PRO 3000/32GB/1TB/touch/280W combination at least approximately €4939.91 with the base 245HX, or €5152.27 with 265HX, before any added support. Dell also warns selections may trigger additional dependencies. It is therefore over budget before matching three-year ProSupport.
- A cheaper Dell touch configuration with RTX PRO 2000 can approach the ceiling before support, but its 8GB GPU is below both the Dell baseline and the strict Laptop-B performance gate.
- No current exact BE/EU integrated full-power 175W RTX 5080/5090 touchscreen transaction under €4444.17 with at least 32GB/1TB, two M.2, suitable keyboard and three-year repair support was found. Touch currently forces either a thin creator GPU-power compromise or workstation-configurator pricing.

## Conclusion

- Armoury Crate is not an unavoidable daily burden: SCAR can be operated with the official uninstaller plus G-Helper. This lowers the software-comfort penalty but leaves firmware/display-path risk unchanged.
- RTX 5090 should be bought for 24GB VRAM, not for a presumed huge speed jump over a full-power 5080.
- Touchscreen is a valid new preference but cannot be a hard gate without reopening lower-TGP ProArt or a substantially higher Dell budget.
