---
id: CAND-095
record_type: candidate
role: laptop-a
scope: exact-sku
status: reference
flags: ["already-owned", "temporary-laptop-a", "healthy-hardware", "battery-worn", "display-below-new-purchase-gate"]
region: "local device"
exact_sku: "4YD62AV"
last_verified: "2026-08-12"
offer_ids: []
source_ids: ["SRC-0251", "SRC-0252", "SRC-0253", "SRC-0343"]
critical_unknowns: ["measured Windows 11 school-workflow battery/runtime/responsiveness", "physical keyboard/touchpad condition and layout", "exact donor RAM module part numbers/topology", "donor NVMe model, form factor and SMART health"]
legacy_status: "new local-device reference"
legacy_origin: "Technisch rapport — HP EliteBook 850 G6 (4YD62AV).md"
---

# HP EliteBook 850 G6 4YD62AV — local device

## Role

Use as the temporary Laptop A before spending money on a new daily laptop. New-purchase model-year, 32GB/1TB and display gates do not retroactively disqualify a healthy machine the buyer already owns; they remain binding for any eventual replacement purchase.

## Measured configuration and condition

- Core i5-8365U, 4 cores/8 threads; adequate for Office, programming, SSH/network administration, containers and light VMs.
- **RAM:** 16GB dual-channel DDR4 in two SO-DIMMs; platform reports 32GB maximum.
- **SSD:** Micron 2200S 256GB NVMe: 27% endurance used, 100% spare, zero media/data-integrity errors and normal temperatures. Replace only for capacity.
- **Battery evidence:** 38.50Wh full charge versus 56.02Wh design, or 68.7% health. Real runtime is not yet measured.
- **Replacement battery resolved:** HP `TT03XL / TT03056XL-PL`, orderable spare `933322-855`, 3-cell 56Wh/4.85Ah/11.55V. Prefer a genuine recent-production pack with warranty; an old genuine new-old-stock battery can be worse than a fresh branded replacement.
- **Display / gamut:** Matte 1920x1080 internal LG panel, narrow gamut/6-bit and therefore below the new-A 500-nit/full-sRGB gate. It remains adequate for notes, terminals and office work but not colour-critical work.
- **Touchpad / keyboard:** Synaptics I2C touchpad and internal business keyboard detected; exact layout, physical wear and subjective quality require hands-on assessment.
- Strong I/O: Intel I219-LM Gigabit RJ45, two USB-A, HDMI and genuine Titan Ridge Thunderbolt 3.
- Current BIOS dated May 2026, TPM 2.0, supported Windows 11 CPU family and excellent mature NixOS/Linux driver coverage.

## Decision

This device was already used alongside the Lenovo E595 last semester and was workable but not exceptional. Do not mistake technical health or good Linux behavior for a final Laptop A verdict. Microsoft provides no supported Linux desktop OneDrive client; browser access is supported but loses normal local/offline sync integration, while third-party clients may be blocked by school tenant policy. The decisive trial is therefore Windows 11 with the official school OneDrive workflow.

Use the healthy ProBook donor NVMe for a clean Windows 11 test installation after verification, while preserving the current 256GB NixOS SSD untouched as a rollback. Upgrade to 32GB if the donor is a compatible 2x16GB kit. Test a representative school week for responsiveness, battery, sleep/wake, Office/OneDrive, VPN/network tools, keyboard/touchpad and screen comfort. Only then decide whether the EliteBook can defer Laptop A. Consider a quality replacement battery only if the machine otherwise passes and runtime is the limiting factor.

## Performance fit for the stored Laptop A course workload

- **RAM capacity:** 32GB dual-channel is ample for Office/OneDrive, browser tabs, VS Code, Git/SSH/VPN, Wireshark, light containers and ordinary development services. DDR4-2400 bandwidth is not the meaningful bottleneck for those tasks; capacity and dual-channel operation matter more.
- **NVMe:** PCIe x4 NVMe is already far beyond the storage requirement of ordinary Office, code editing and network administration. Exact donor performance affects large copies/builds, not basic responsiveness; health and free capacity matter more than generation number.
- **CPU:** the i5-8365U remains adequate for interactive use and short bursts, but its 4C/8T multicore ceiling is the real limitation. It is acceptable because heavy VM labs, large builds and compute can run on Laptop B, Proxmox/school infrastructure or remote servers. It is not a seven-year-performance answer and should not be used to justify replacing B.
- **Networking:** x86-64 Windows, Intel Gigabit Ethernet, Intel WLAN and TB3 are unusually suitable for the stored network/security role. Very large packet captures, several concurrent VMs and emulated network topologies belong on B/remote infrastructure.
- **Battery:** replacement is now planned. A professional Windows review of the chassis measured 15h50 light web and 12h57 video from 56Wh under controlled low-brightness conditions. These figures are optimistic for a real school workload but support the buyer's memory that the machine could last well when new.

## ProBook 445 G8 donor path

- **RAM:** LIKELY compatible when the installed 32GB is a matched `2 x 16GB` kit of standard 260-pin, 1.2V, non-ECC unbuffered DDR4 SO-DIMMs with JEDEC profiles. The ProBook's DDR4-3200 modules should downclock to the EliteBook's DDR4-2400 operating rate. A single 32GB module or unusual third-party/XMP-only organization is not covered by the EliteBook's official 2x16GB configuration and must not be assumed compatible.
- **NVMe:** LIKELY compatible when it is a standard M.2 2280 PCIe/NVMe drive. The ProBook officially uses M.2 2280 PCIe NVMe and the EliteBook already contains that storage class. A faster/Gen4 drive is expected to negotiate at the EliteBook's lower PCIe generation. Check SMART health, physical key/length and encryption before removal.
- Back up both machines first. Moving an existing Windows installation between AMD and Intel platforms may boot, but driver, BitLocker/device-encryption and activation complications make a clean install or deliberate clone/migration safer than relying on a blind transplant.
