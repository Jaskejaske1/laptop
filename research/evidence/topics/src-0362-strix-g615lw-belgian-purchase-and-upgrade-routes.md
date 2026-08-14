---
id: SRC-0362
record_type: source
checked_at: "2026-08-14"
subject: "ASUS Strix G16 G615LW-S5058W Belgian purchase routes and maximum under-budget upgrade"
region: "BE exact laptop SKU; BE/NL component sellers"
source_type: "live official/retailer transactions, manufacturer specifications and exact-chassis owner corroboration"
exact_sku: "ASUS G615LW-S5058W / 90NR0LG1-M002P0"
evidence_label: "PROVEN transactions/specifications; 64GB PROVEN; second-slot 4TB compatibility LIKELY on exact chassis"
legacy_origin: "purchase-route audit 2026-08-14"
---

# Strix G16 Belgian purchase and upgrade routes — SRC-0362

## Exact Belgian laptop

- ALTERNATE Belgium lists exact manufacturer part `90NR0LG1-M002P0` at EUR 3099 including VAT, free delivery and in stock. It explicitly states Belgian AZERTY, 32GB, 1TB, 175W RTX 5080 and a 380W charger. The page also advertises the eligible free ASUS third warranty year.
- ASUS Belgium direct lists the same exact part at EUR 3129 including VAT, available with free 2–3-working-day delivery and a `BELGIUM` keyboard. The free third manufacturer-warranty year requires purchase by 2026-12-31 and registration by 2027-01-31.
- ASUS Belgium presents `90NR0LG1-M002P0` as a fixed 32GB/1TB add-to-cart SKU, with quantity as the only purchase selector. There is no Belgian ASUS CTO/configurator path for selecting 64GB or larger internal storage before manufacture. Every 64GB/3TB or 64GB/5TB route below is an owner-installed aftermarket upgrade after purchasing the sealed fixed SKU.
- MediaMarkt Belgium has the exact model page but currently states that delivery is unavailable. LASystems, Dustin and Galaxus expose exact-product pages, but no sufficiently fresh reproducible lower transaction was obtained. Bol's live listing explicitly says Dutch QWERTY and is not the exact Belgian-keyboard transaction despite reusing the family model string.

## Maximum owner-upgraded configuration under EUR 4444.17

- The exact ASUS family specification supports 64GB maximum through two SO-DIMM slots and provides two M.2 slots. The factory 32GB uses both RAM slots; the 1TB factory SSD leaves one M.2 slot free.
- Kingston `KF556S40IBK2-64` is a 2x32GB DDR5-5600 CL40 SO-DIMM kit with 1.1V JEDEC/PnP operation. ALTERNATE Belgium lists it in stock at EUR 799 plus EUR 6.99 delivery.
- Crucial `CT4000T500SSD3` is a heatsink-free 4TB TLC PCIe 4.0 M.2 2280 SSD measuring 80x22x2.3mm. Update.nl lists it directly at EUR 482.36, but Belgian delivery is not proven there. The same seller offers it through bol Belgium at EUR 503.59 with Belgian delivery shown; that is the supportable BE route.
- Belgian-route total: EUR 3099 + EUR 799 + EUR 6.99 + EUR 503.59 = **EUR 4408.58**, leaving EUR 35.59 below the support-adjusted ceiling. Installed result: **64GB RAM and 5TB total SSD storage** (factory 1TB plus added 4TB), while retaining the original 2x16GB kit as a spare/resale asset. Direct Update.nl would reduce the total to EUR 4387.35 only if Belgian checkout preserves its direct price and delivery terms.
- 64GB is manufacturer-supported. ASUS publishes only factory SSD configurations up to 2TB, so it does not explicitly guarantee a 4TB module for this exact SKU. However, Crucial confirms the G615LW family has 2x M.2 2280 Gen4 slots, the selected T500 is standard thin M.2 2280, an exact G615LW owner reports a working second-slot 4TB SSD plus the same Kingston 64GB family, and commercial G615 systems exist with 4TB. This makes the 4TB route `LIKELY`, not formally `PROVEN` by ASUS for `S5058W`.

## Lower-risk storage alternative

- A 2TB heatsink-free Crucial T500 is currently listed from EUR 289. Combined with the same laptop and 64GB kit, the total is approximately EUR 4193.99 plus any component-shop delivery, producing 64GB and 3TB total storage. This is the conservative capacity route if exact-SKU manufacturer confirmation of 4TB is required before ordering.

## Sources

- https://www.alternate.be/ASUS/ROG-Strix-G16-G615LW-S5058W-16-inch-gaming-laptop/html/product/1936155
- https://estore.asus.com/be-nl/90nr0lg1-m002p0-rog-strix-g16-2025.html
- https://www.mediamarkt.be/nl/product/_asus-rog-strix-g16-g615lw-s5058w-16-inch-wqxga-intel-core-ultra-9-275hx-32-gb-1-tb-geforce-rtxtm-5080-game-laptop-2196571.html
- https://www.lasystems.be/nl/asus-90nr0lg1-m002p0
- https://www.dustin.be/fr/notebooks/asus/rog-g615lw-s5058w-art-90nr0lg1-m002p0-num-178366035/
- https://www.galaxus.be/en/s1/product/asus-rog-strix-g16-g615lw-s5058w-16-gaming-laptop-g615lw-s5058w-16-1000-gb-32-gb-dutch-notebooks-58080473
- https://www.bol.com/be/nl/p/asus-rog-strix-g16-g615lw-s5058w-laptop-16-wqxga-intel-core-ultra-9-275hx-nvidia-geforce-rtx-5080-32-gb-ddr5-1-tb-ssd-windows-11-home-qwerty-grijs/9300000230578103/
- https://www.alternate.be/Kingston-FURY/64-GB-DDR5-5600-2x-32-GB-Kit-laptopgeheugen/html/product/1893219
- https://www.kingston.com/datasheets/KF556S40IBK2-64.pdf
- https://www.update.nl/crucial-ssd-t500-4tb-pcie-4-0-nvme.html
- https://www.bol.com/be/nl/p/crucial-t500-4tb-m-2-2280-pci-express-4-0-x4-4-tb-nvme-2-0-3d-v-nand-2-4-pb-zwart/9300000187899559/
- https://www.crucial.com/content/crucial/en-us/home/compatible-upgrade-for.html/asus/rog-strix-g16-g615lw-s5091x.html
- https://www.ultrabookreview.com/72307-asus-rog-strix-g16-g615lw-review/
- https://www.reddit.com/r/GamingLaptops/comments/1orak0m/rog_strix_g16_2025_rtx_5080_with_custom_upgrades/
