---
id: SRC-0297
record_type: source
checked_at: "2026-08-13"
subject: "Factcheck van 69 catalogusregels uit aangeleverde laptop-export"
region: "BE/NL/FR/DE gemengde regionale SKU's"
source_type: "user-supplied retailer catalog export plus exact-SKU and professional-review verification"
exact_sku: "69 rows / 54 unique manufacturer codes"
evidence_label: "PROVEN export contents; review transfer only at exact current chassis level; several metadata conflicts retained"
legacy_origin: "attachment pasted-text.txt supplied 2026-08-13"
---

# Audit van de 69 aangeleverde laptopregels — SRC-0297

## Methode

De export bevat 69 regels maar 54 unieke fabrikantcodes. Dubbels zijn niet verwijderd uit de controle: hun prijs, voorraad en configuratietekst zijn vergeleken. Reviewmetingen zijn alleen tussen regionale SKU's hergebruikt wanneer hetzelfde huidige chassis en dezelfde relevante CPU/GPU-klasse aantoonbaar zijn. Keyboard, prijs, RAM, SSD en garantie blijven per exacte regionale SKU geïsoleerd.

De Dell Pro Max 18 Plus `2H3VJ` blijft de volledige baseline. Een lager geprijsde gaminglaptop is niet automatisch beter: hij moet ook de 2026-modeljaargate, 32GB/1TB fabriek, P3, RJ45, TB4/USB4, twee M.2-slots, praktische full-power-5080-vloer, goede invoerapparaten, bewezen koeling/stabiliteit en support-adjusted grens halen.

## Uitkomst per unieke SKU

| Exacte fabrikantcode | Exportprijs / voorraad | Feitelijk oordeel na controle | Doorslaggevende evidence |
|---|---:|---|---|
| `RAIDER GE78HX 13VI-243BE` | €4383.54 / uit | REFERENTIE, niet koopbaar | BE AZERTY en P3, maar 13e-gen/RTX 4090 vorige generatie en geen voorraad. |
| `90NR0LX5-M006Z0` | €3824.21 / uit | REJECTED | 2025 Zephyrus GU605, 285H, gesoldeerd RAM, geen RJ45 en RTX 5080 onder full-power-vloer. |
| `B9EY3EA#UUG` | €3267.79 / 1 | REJECTED 2025 / technisch verder onderzocht | Exact BE OMEN 16-ah0012nb, 275HX/5080/32/1, matte 500-nit IPS. Zelfde 2025 OMEN MAX-chassis heeft 175W-klasse potentieel, maar reviewbewijs toont gemengde frame pacing, hoge load-noise en korte accu; P3 van deze exacte IPS blijft niet bewezen. |
| `BG9G8EA#UUG` | €3336.65 / 1 | REJECTED 2025 | Exact BE 275HX/5080/32/1 IPS; zelfde chassisconclusie als hierboven. |
| `BG9F9EA#UUG` | €3151.61 / 2 | REJECTED 2025 | Exact BE 275HX/5080/32/1 IPS; aantrekkelijke prijs maar vorige modelgeneratie en exact IPS-gamut niet bewezen. Tweemaal identiek in export. |
| `83F5003QMB` | €3476.23 / 9 | CONFLICT | Exact BE AZERTY 275HX/5080/32/1, 175W, OLED P3, RJ45 en twee M.2. Vorige CPU-generatie en actuele Q7CN78WW-platformmeldingen creëren firmwareconflict; niet zonder debugrisico aanbevelen. Tweemaal identiek. |
| `BG9F4EA#UUG` | €3442.60 / 3 | REJECTED 2025 | Exact BE 275HX/5080/64/1 OLED P3; sterke configuratie, maar 2025 en chassisreview toont mixed stability/noise/battery. Tweemaal identiek. |
| `BG9F8EA#UUG` | €3781.61 / 2 | REJECTED 2025 | Exact BE 275HX/5080/64/1 OLED, Gen5-vermelding; zelfde 2025-gate en chassisrisico's. Tweemaal identiek. |
| `BG9G2EA#UUG` | €2609.17 / 5 | REJECTED | 16GB en RTX 5070 falen de fabrieks-RAM- en GPU-vloer. |
| `BE9R4EA#UUG` | €2654.93 / 8 | REJECTED | 24GB fabriek en 5070 Ti: onder 32GB en onder huidige full-power-5080-vloer. |
| `90NR0LR2-M00J60` | €2676.01 / 20+ | REJECTED | 2025 Strix, slechts 16GB fabriek en Nederlandse QWERTY vereist expliciete toestemming. |
| `STEALTH 16 AI+ B3WH-015BE` | €2744.58 / 20+ | REJECTED AS DELL REPLACEMENT | Echte 2026 Panther Lake, 32/1, OLED P3 en uitbreidbaar; RTX 5070 Ti is officieel 125W en onder de huidige prestatievloer. Chassisreview blijft relevant positief voor touchpad/accu en negatief voor geluid/helderheid/deckflex. |
| `NH.QX2EH.009` | €2815.03 / uit | REJECTED | Helios Neo PHN16-73, 275HX/5070Ti/32/2 en BE AZERTY; IPS is officieel slechts sRGB en SKU is niet koopbaar. |
| `GAMING A16 PRO DXHG4BECC4SH` | €2831.22 / 3 | REJECTED | 5070 Ti/240H-platform, LPDDR5X, review meet klassegoede accu maar zwakkere CPU/GPU-positionering; geen Dell-beating full-power 5080. |
| `GAMING A16 PRO DXHG4EECC4SH` | €2831.22 / uit | REJECTED | Zelfde chassis/5070 Ti; regionale suffix niet voor keyboard extrapoleren en geen voorraad. |
| `STEALTH A16 AI+ A3XWHG-012BE` | €2838.66 / uit | REJECTED | BE AZERTY, HX 370/5070Ti/32/2 OLED P3 en groot touchpad, maar gesoldeerd 32GB, vorige generatie, onder GPU-vloer en uit voorraad. |
| `83LU0055MB` | €2852.28 / 1 | REJECTED / FIRMWARE CONFLICT | Exact BE Pro 5i 275HX/5070Ti/32/1; onder GPU-vloer en zelfde Q7-platformfirmware vereist voorzichtigheid. |
| `90NR0LR1-M006E0` | €2900.81 / uit | REJECTED | 2025 275HX/5070Ti; NL QWERTY en geen voorraad. |
| `9S7-15MM72-025` | €2940.48 / 10 | REJECTED | Vector A16 A8WIG-025NL heeft slechts 16GB fabriek, NL-regionale SKU en vorige generatie; winkelclaim “Thunderbolt 5” bij AMD is niet als betrouwbaar primair bewijs gebruikt. |
| `9S7-263111-014` | €2943.87 / uit | REJECTED | NL Stealth B3WH 5070Ti, uit voorraad en 125W; 32/1 en nieuw chassis veranderen de prestatievloer niet. |
| `9S7-15M352-210` | €2954.35 / 16 | REJECTED | Vector 16 A2XWIG-210BE heeft slechts 16GB fabriek. Wel een krachtige 175W-klasse 5080, maar huidige 32GB-fabriekseis faalt feitelijk. |
| `83RU0039MB` | €2991.95 / 12 | REJECTED 2025 | BE AMD 9955HX/5070Ti/32/1, OLED P3 en goede uitbreidbaarheid; vorige generatie en onder huidige GPU-vloer. |
| `9S7-15FL35-018` | €3028.75 / 3 | REJECTED AS WORKSTATION B | Exact BE Stealth A16 A3XWIG-018BE, HX370/5080/32/2 OLED P3, RJ45 en groot touchpad. RAM is maximaal 32GB gesoldeerd, GPU is geen 175W-uitvoering en chassis is luid/heet onder belasting. |
| `BE9R1EA#UUG` | €3081.82 / 6 | REJECTED | OMEN exact configuration retained; attachment metadata does not prove a 2026 CPU/chassis or all gates. It belongs to the 2025 `ah` platform and cannot inherit 2026 HyperX claims. |
| `BG9G0EA#UUG` | €3089.44 / 11 | REJECTED 2025 | OMEN `ah` family; exact title/config retained in attachment, no upgrade to current-year truth by inference. |
| `BE9R6EA#UUG` | €3099.90 / 10 | REJECTED 2025 | OMEN `ah` family; exact configuration needs HP sheet before any rank, but model generation alone is resolved. |
| `STEALTH 16 AI+ B3WI-017BE` | €3213.59 / 20+ | REJECTED AS DELL REPLACEMENT; POSITIVE MOBILE REFERENCE | Exact BE 2026 Panther Lake/5080/32/1/P3 OLED. Official TGP 125W; Tweakers measures large touchpad, 9u30 web, 379–384 nits, 20.3dBA browsing, 50.9dBA game and keyboard-deck flex. Two RAM/two M.2 slots. Fully reviewed in `CAND-132`. |
| `STEALTH A16 AI+ A3XWIG-018BE` | €3307.66 / uit | REJECTED | Zelfde fabrikantcode `9S7-15FL35-018` als de €3028.75 regel; hogere duplicate price en uit voorraad. |
| `GAMING A16 PRO DYHG5EECC4SH` | €3380.10 / uit | REJECTED | RTX 5080 is door review exact op 115W begrensd en presteert rond 5070Ti-klasse; Core 7 240H en geen voorraad. |
| `9S7-263111-016` | €3442.87 / uit | CONFLICT + REJECTED | NL Stealth B3WI; export zegt foutief 12GB VRAM voor RTX 5080, MSI zegt 16GB. Uit voorraad, NL-regio en 125W. |
| `9S7-263111-066` | €3455.74 / uit | REJECTED | BE-suffix maar export noemt Frans QWERTY; vereist expliciete keyboardtoestemming. 5070Ti/125W en uit voorraad. |
| `STEALTH 16 AI+ B3WH-065NL` | €3467.58 / uit | REJECTED | NL regionale SKU, 5070Ti/125W en uit voorraad. |
| `D2R5D` | €3478.06 / uit | REJECTED | Exact Alienware 16 Area-51 2025, 275HX/5080/32/1, full 175W alleen Turbo en sterk premium chassis/touchpad. Geen geïntegreerde RJ45, slechts één jaar Basic Onsite in aangetroffen route en geen voorraad. |
| `RAIDER 16 MAX HX B2WI-035BE` | €3495.79 / 20+ | SHORTLIST | Bestaande leider: exact BE 2026, 290HX Plus, 175W 5080, 32/2, P3 OLED, RJ45/twee M.2 en aantoonbaar stabiele koeling. Deze exportroute mist de adapter; complete Coolblue+3Y-route blijft rationeler. Matige touchpad/plastic deck blijven echte nadelen. |
| `BG9F5EA#UUG` | €3499.10 / 2 | REJECTED 2025 | Exact OMEN 16-ah0007nb, 275HX/5080/32/1 OLED P3, BE AZERTY en 2.5GbE; actief sinds mei 2025, geen 2026 model. |
| `VECTOR 17 HX AI A2XWJG-057BE` | €3776.66 / uit | REJECTED | Exact BE 17-inch 275HX/5090/32/1; gewenste maat maar vorige generatie, uit voorraad en exact-chassis review toont installatie/idle-power/fan-controlproblemen. |
| `83F5003PMB` | €3857.24 / 1 | CONFLICT | Exact BE 275HX/5080/64/2 is hardwarematig sterk en premiumer dan Raider, maar vorige CPU-generatie plus Q7CN78WW firmwareconflict. Meer RAM lost platformrisico niet op. |
| `RAIDER 16 MAX HX B2WJ-039BE` | €3964.79 / 20+ | CONFLICT | 2026 chassis en 5090/24GB, maar exacte CPU en panelmetadata spreken elkaar tegen. Niet kopen zonder schriftelijke bevestiging; complete 3Y-route blijft amper onder Dell. |
| `9S7-17S372-056` | €4043.81 / 6 | REJECTED | Dit is exact NL `A2XWJG-056NL` met RTX 5090, niet 5070Ti zoals een catalogusweergave suggereerde. US-International is bij een andere verkoper bewezen, maar vorige generatie en exact-chassis platformproblemen blijven. |
| `90NR0PC2-M005E0` | €4046.34 / 20+ | REJECTED | Echte 2026 Zephyrus GU606AR 386H/5070Ti/32/1, premium groot touchpad en uitstekende accu, maar geen RJ45, gesoldeerd 32GB, 5070Ti onder prestatievloer en NL QWERTY. |
| `9S7-17S372-057` | €4068.32 / 11 | REJECTED | Exact BE AZERTY Vector 17 275HX/5090/32/1; prijs is aantrekkelijk, maar expliciete 2025-uitzondering is reeds technisch beoordeeld en faalt het no-debugging/stability-profiel. |
| `9S7-265111-250` | €4317.10 / uit | REJECTED EXACT TRANSACTION | 2026 Raider 5080/32/2 met Franse QWERTY en geen voorraad; zelfde chassisreview als shortlist, maar regionaal slechter en duurder. |
| `RAIDER 16 MAX HX B2WI-249NL` | €4328.98 / uit | REJECTED EXACT TRANSACTION | NL Raider 5080/32/2, uit voorraad en bijna Dell-prijs voor support. |
| `9S7-263111-068` | €4366.82 / uit | REJECTED | BE-suffix maar Frans QWERTY, Stealth 125W, uit voorraad en boven €4444 na drie jaar support. |
| `9S7-265111-252` | €4468.93 / uit | CONFLICT + REJECTED | Titel zegt B2WJ maar RTX 5080 en 275HX; Franse QWERTY, uit voorraad en al boven budget vóór support. |
| `RAIDER 16 MAX HX B2WJ-251NL` | €4480.84 / uit | REJECTED | NL 5090, uit voorraad en boven budget vóór support. |
| `NH.QW0EH.004` | €4493.63 / 20+ | REJECTED | Helios PH16-73 5090/64/3TB AZERTY en P3 OLED; prijs ligt al boven plafond, 2025 275HX-platform en review toont 140–150W sustained in gemeten performance mode. |
| `NH.QW0EH.005` | €4493.63 / 5 | REJECTED | Zelfde maar QWERTZ/QWERTZU-layout is hard uitgesloten. |
| `BG9F6EA#UUG` | €4523.21 / 1 | REJECTED | 2025 OMEN `ah`, boven budget vóór support. |
| `GU605CX-QR106W` | €4646.81 / 7 | REJECTED | 2025 Zephyrus 5090, Duits QWERTZ en boven budget. |
| `21V5002QMB` | €5085.93 / 1 | REJECTED | ThinkPad T16g Gen 3/5090 workstationroute boven budget; exacte professionele voordelen rechtvaardigen geen budgetoverschrijding. |
| `C78G4ET#UUG` / `#ABH` / `#UUZ` | €5174.93–€5278.71 | REJECTED | ZBook Fury regionale varianten boven budget; toetsenbord en voorraad blijven per suffix gescheiden. |
| `90NB17E1-M00170` / `M00160` | €5450.54–€5462.23 | REJECTED | ProArt P16 5090/64/4TB OLED touch is creatorgericht maar H-class, gesoldeerd RAM, geen RJ45 en ruim boven budget. |
| `21V50029MB` | €6165.92 / uit | REJECTED | ThinkPad T16g exact variant boven budget en niet beschikbaar. |
| `DH1L8ET#ABH` | €7707.74 / uit | REJECTED | ZBook X G2i boven budget en niet beschikbaar. |
| `CA2Y7ET#ABH` / `#UUG` / `#UUZ` | €8027.84–€8206.10 | REJECTED | ZBook Fury regionale varianten ver boven budget; UUG-voorraad verandert de economische gate niet. |

## Materiële conclusies

1. De export levert één echte nieuwe 2026 kandidaat die een volledige review verdiende: Stealth `B3WI-017BE`. Hij blijkt uitstekend mobiel maar objectief geen full-power Dell-vervanger.
2. De export bevestigt de Raider `B2WI-035BE` als enige voorraad-SKU die alle kernhardwaregates haalt. Hij lost zijn touchpad/buildnadeel niet op.
3. De twee premiumer aanvoelende alternatieven zijn Alienware `D2R5D` en Legion `83F5003PMB/3QMB`. Alienware faalt hard op RJ45/voorraad/modeljaar; Legion blijft technisch aantrekkelijk maar firmware-CONFLICT en vorig modeljaar zijn echte, afzonderlijke blokkades.
4. De HP OMEN-varianten zijn niet op merkreputatie verworpen. Ze zijn als exact 2025 `ah`-platform beoordeeld: sterke specificaties en meestal goede bouw/schermen, maar reviewbewijs is gemengd op frame pacing, geluid en accu. Geen exportregel is een nieuwe 2026 HyperX-configuratie.
5. Prijs alleen creëert geen verborgen winnaar: de voordelige Vector/Stealth/Gigabyte-regels leveren hun korting via 16GB fabriek, 115–125W GPU, gesoldeerd RAM, oude generatie, ongeschikte keyboardregio of ontbrekende voorraad.

## Gebruikte verificatiebronnen

- MSI Stealth 16 B3W official: https://www.msi.com/Laptop/Stealth-16-AI-Plus-B3WX/Specification
- Tweakers Stealth 16 B3WI review: https://tweakers.net/reviews/14780/msi-stealth-16-ventilator-verraadt-dikke-hardware-in-dunne-laptop.html
- RTINGS HP OMEN MAX 16 review: https://www.rtings.com/laptop/reviews/hp/omen-max-16-2025
- PC Gamer HP OMEN MAX review: https://www.pcgamer.com/hardware/gaming-laptops/hp-omen-max-16-gaming-laptop-review/
- Notebookcheck Alienware 16 Area-51 review: https://www.notebookcheck.net/Alienware-16-Area-51-laptop-review-Dell-s-best-flagship-gaming-laptop-yet.1027688.0.html
- Lenovo Legion Pro 7i review: https://www.ultrabookreview.com/71446-lenovo-legion-pro-7i-gen10-review/
- TechRadar Gigabyte Gaming A16 Pro review: https://www.techradar.com/computing/gigabyte-gaming-a16-pro-review-this-restricted-rtx-5080-machine-holds-its-own-thanks-to-5070-ti-pricing
- Acer Helios PH16-73 review: https://www.ultrabookreview.com/73119-acer-predator-helios-16-review/
- Coolblue exact Stealth A16 BE transaction: https://www.coolblue.be/nl/product/961344/msi-stealth-a16-ai-a3xwig-018be-azerty.html
- LASystems exact Vector 17 NL transaction: https://www.lasystems.be/fr/msi-9s7-17s372-056

