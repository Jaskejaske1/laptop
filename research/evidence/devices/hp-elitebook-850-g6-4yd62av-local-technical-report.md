---
record_type: device-dossier
status: current-local-device-evidence
device: "HP EliteBook 850 G6"
product_code: "4YD62AV"
origin: "local technical report supplied by buyer"
---

# Technisch rapport — HP EliteBook 850 G6 (4YD62AV)

**Onderzochte machine:** HP EliteBook 850 G6  
**HP-platform/SKU:** 4YD62AV  
**Besturingssysteem tijdens onderzoek:** NixOS 26.05 (Yarara)  
**Kernel:** Linux 6.18.39  
**Onderzoeksdatum:** 12 augustus 2026

## 1. Samenvatting

Dit exemplaar van de HP EliteBook 850 G6 is technisch in opvallend nette toestand voor een platform uit 2019. De computer heeft een Intel Core i5-8365U met vier cores en acht threads, 16 GB dual-channel DDR4, Intel UHD Graphics 620, een 256 GB Micron 2200S NVMe-SSD, Intel Gigabit Ethernet, Intel Wireless-AC, echte Thunderbolt 3-hardware, een Synaptics-vingerafdruklezer en een 56 Wh HP-accu.

HP herkent `4YD62AV` inderdaad als een EliteBook 850 G6-platform.

De drie belangrijkste conclusies zijn:

1. **De machine zelf is gezond.** Er zijn geen aanwijzingen voor defect RAM, opslagproblemen, thermische problemen of ontbrekende essentiële Linux-drivers.
2. **De accu is het duidelijkst versleten onderdeel:** nog 38,50 Wh tegenover 56,02 Wh nieuw, oftewel **68,7% health / 31,3% slijtage**.
3. **De SSD hoeft niet preventief vervangen te worden.** Hij rapporteert 27% endurance used, 100% available spare, nul media/data-integrity errors en normale temperaturen. Vervangen is alleen zinvol voor extra capaciteit.

Als secundaire Linux-laptop, reiscomputer, programmeermachine, beheerterminal of lichte VM-machine is hij in 2026 nog zeer bruikbaar. Als zware workstationvervanger wordt hij vooral beperkt door de viercore-CPU, UHD 620 en het matige 1080p-paneel.

---

## 2. Geïdentificeerde hardware

| Onderdeel | Geïnstalleerd in deze machine |
|---|---|
| Model | HP EliteBook 850 G6 |
| SKU | `4YD62AV` |
| Systeemboard | HP 8549 |
| Embedded controller | KBC 52.71.00 |
| CPU | Intel Core i5-8365U |
| CPU-generatie | Whiskey Lake-U, 2019 |
| CPU-configuratie | 4 cores / 8 threads |
| Kloksnelheid | 1,60 GHz base, tot 4,10 GHz turbo |
| Cache | 6 MB L3 |
| GPU | Intel UHD Graphics 620 |
| RAM | 16 GB DDR4 dual-channel |
| RAM-layout | 2 × 8 GB SO-DIMM |
| SSD | Micron 2200S 256 GB NVMe |
| Intern scherm | LG Display LGD062E / EDID model 1582 |
| Resolutie | 1920 × 1080 |
| Ethernet | Intel I219-LM Gigabit Ethernet |
| Wi-Fi | Intel Wireless-AC CNVi, 2×2, 160 MHz |
| Bluetooth | Intel Jefferson Peak |
| Thunderbolt | Intel JHL7540 Titan Ridge, Thunderbolt 3 |
| Vingerafdruk | Synaptics `06cb:00b7` |
| Webcam | Quanta HP HD Camera |
| Touchpad | Synaptics I²C |
| TPM | Infineon TPM 2.0 |
| Beheer | Intel AMT-capabele hardware, niet geprovisioneerd |
| Batterij | HP TT03056XL, 56 Wh |
| BIOS | HP R70 01.35.02 |
| Intel ME | 12.1.1.1022 |
| Thunderbolt firmware | 62.00 |

---

# 3. Processor

De Core i5-8365U is een Whiskey Lake mobiele processor uit Q2 2019, geproduceerd op Intels 14 nm-proces. Intel specificeert vier cores, acht threads, 1,60 GHz base, 4,10 GHz maximale turbo, 6 MB Smart Cache en een nominale TDP van 15 W. De processor kan door een OEM ook rond 10 W of 25 W worden geconfigureerd.

De CPU ondersteunt onder andere AVX2, AES-NI, Hyper-Threading, VT-x, VT-d en Extended Page Tables. Dat maakt hem nog steeds behoorlijk geschikt voor Linux, containers, KVM/QEMU en lichte virtualisatielabs.

De beperking in 2026 is niet de single-threadresponsiviteit maar de totale rekencapaciteit. Vier cores en acht threads zijn genoeg voor normale desktopsoftware, browsers, terminals, IDE's en enkele VM's, maar moderne processors leveren inmiddels aanzienlijk meer multicorecapaciteit.

Interessant is dat Intel de i5-8365U inmiddels als **discontinued** markeert en 31 maart 2026 als einde van servicing updates vermeldt. Dat betekent niet dat de laptop plots onveilig of onbruikbaar is, maar wel dat de processorplatformgeneratie duidelijk zijn late levensfase heeft bereikt.

### Power management

NixOS gebruikt:

- `intel_pstate`
- status `active`
- governor `powersave`
- EPP `balance_performance`

Daarnaast is zowel `s2idle` als klassieke ACPI deep sleep beschikbaar en is **`deep` geselecteerd**.

Dat is een goede uitgangspositie voor deze Intel-generatie. De naam `powersave` betekent bij active `intel_pstate` overigens niet dat de CPU permanent laag geklokt wordt. Turbo blijft beschikbaar; daarom is het niet vreemd dat `inxi` tijdens de inventarisatie ongeveer 3,84 GHz rapporteerde.

**Beoordeling CPU in 2026: 6/10.**

Goed voor algemene en technische taken, maar niet meer workstationklasse.

---

# 4. Geheugen

Er zitten twee fysieke DDR4 SO-DIMM-modules in:

**Slot 1**
- Hynix HMA81GS6CJR8N-VK
- 8 GB
- DDR4-2666 SPD
- single-rank

**Slot 2**
- Samsung M471A1K43CB1-CTD
- 8 GB
- DDR4-2666 SPD
- single-rank

Beide kanalen zijn dus gevuld en het geheugen werkt dual-channel. De modules worden door het systeem op **2400 MT/s** geconfigureerd, wat overeenkomt met de geheugenondersteuning van de i5-8365U. Intel specificeert DDR4-2400 voor deze processor.

De fysieke installatie van 2 × 8 GB is ook rechtstreeks in de hardware-inventaris zichtbaar.

DMI meldt:

- twee SO-DIMM-slots;
- beide bezet;
- maximum system memory: 32 GiB.

Een interessante nuance is dat Intels geheugencontroller zelf maximaal 64 GB specificeert. Voor deze EliteBook zou ik echter **32 GB als officieel ondersteunde grens aanhouden**, omdat dat de grens is die het HP-platform zelf via SMBIOS aangeeft.

Voor een upgrade naar 32 GB zou de nette configuratie dus 2 × 16 GB DDR4-2400/2666 SO-DIMM zijn.

Voor normaal gebruik is 16 GB nog prima. Voor meerdere VM's tegelijkertijd is 32 GB waarschijnlijk de upgrade met de grootste praktische meerwaarde.

**Beoordeling RAM: 8/10 voor normaal gebruik, 6/10 voor intensieve virtualisatie.**

---

# 5. SSD en opslagconditie

De SSD is een:

**Micron 2200S — MTFDHBA256TCK-1AS1AABHA**
- 256,06 GB raw capaciteit
- NVMe 1.2.1
- PCIe/NVMe
- firmware `HPS0V23`

SMART levert veel betere informatie dan alleen "PASSED".

Gemeten toestand:

| Parameter | Waarde |
|---|---:|
| SMART overall health | PASSED |
| Percentage Used | 27% |
| Available Spare | 100% |
| Data gelezen | 22,26 TB |
| Data geschreven | 31,74 TB |
| Power-on hours | 2.956 uur |
| Power cycles | 869 |
| Unsafe shutdowns | 43 |
| Media/Data Integrity Errors | **0** |
| Warning temperature time | **0** |
| Critical temperature time | **0** |
| Temperatuur tijdens test | 32–34 °C |

De belangrijkste waarde is `Percentage Used: 27%`. Dat is de door de NVMe-controller bijgehouden endurance-indicator. Praktisch betekent dit dat ongeveer 27% van de geprojecteerde schrijfduur is verbruikt. Het is **niet** hetzelfde als zeggen dat hij exact nog 73% levensduur in jaren heeft, maar de waarde geeft geen aanleiding tot preventieve vervanging.

Ook belangrijk: `Media and Data Integrity Errors = 0`.

De SSD rapporteert daarnaast 965 cumulatieve error-log entries. Dat cijfer moet niet worden verward met beschadigde NAND of corrupte data: de afzonderlijke teller voor media/data-integrity errors staat op nul en `smartctl` kon geen actuele fouten uit het error log tonen. Ik zou die teller daarom alleen monitoren, niet als defectdiagnose behandelen.

2.956 bedrijfsuren is slechts ongeveer 123 dagen effectieve powered-on tijd. Voor een machine van deze leeftijd is dat relatief weinig.

De echte zwakte van de SSD is dus niet gezondheid maar **capaciteit**. Met circa 92 GB gebruikt en 127 GB vrij is er momenteel echter ook geen directe ruimtecrisis.

**Mijn advies:** SSD laten zitten. Pas naar 512 GB/1 TB/2 TB upgraden wanneer opslagruimte daar aanleiding toe geeft.

**SSD-conditie: 8,5/10.**

---

# 6. Batterij

Dit is het onderdeel waar de ouderdom het duidelijkst zichtbaar wordt.

De batterij wordt geïdentificeerd als:

**HP TT03056XL**
- Li-ion
- 3 cellen
- ontwerpenergie: circa 56,02 Wh
- productiedatum volgens de batterijdata: 12 juni 2020

HP specificeerde voor deze EliteBook-familie een 3-cell 56 Wh Long Life Li-ion-accu.

De actuele volledige capaciteit is:

\[
38,4962\text{ Wh}
\]

tegenover:

\[
56,0175\text{ Wh}
\]

Daaruit volgt:

\[
\frac{38,4962}{56,0175}\times 100
=
68,72\%
\]

De accu heeft dus:

**68,7% resterende health**  
**31,3% capaciteitsverlies**

Opvallend zijn de slechts **40 geregistreerde laadcycli**.

Dat wijst erop dat cyclische slijtage niet de voornaamste oorzaak is. De batterij is ruim zes jaar oud en lithiumcellen degraderen ook puur door kalenderleeftijd, tijd op hoge state-of-charge en temperatuur.

De batterij is niet defect: hij laadt volledig op, rapporteert normale spanning en UPower geeft geen warning-level. Maar qua mobiele autonomie draag je nog maar een accu van effectief ongeveer **38,5 Wh** mee.

Een betrouwbare runtime in uren kan ik hier niet uit afleiden. Daarvoor is daadwerkelijk gemeten systeemverbruik op batterij nodig. Bij exact dezelfde 38,5 Wh kan een laptop afhankelijk van workload bijvoorbeeld enorm verschillende looptijden halen.

**Advies:** als autonomie belangrijk is, is een verse kwaliteitsaccu de eerste hardware-investering die ik zou doen. Als hij voornamelijk op netstroom werkt, kan deze batterij gewoon verder gebruikt worden.

**Batterijconditie: 5/10.**

---

# 7. Beeldscherm

De EDID-uitlezing heeft het ingebouwde paneel veel beter geïdentificeerd dan HP's generieke modelinformatie.

Het paneel rapporteert:

- fabrikant: **LG Display**
- PNP-ID: `LGD062E`
- EDID model: **1582**
- bouwjaar: **2019**
- actieve afmetingen: 344 × 194 mm
- diagonaal: ongeveer 15,6"
- interface: eDP
- gamma: 2,20
- native kleurdiepte volgens EDID: **6 bits per primair kleurkanaal**



Er zijn twee echte paneeltimings:

- 1920 × 1080 @ **59,977 Hz**
- 1920 × 1080 @ **39,985 Hz**



Die tweede 40-Hz-modus is interessant voor batterijgebruik: de panel timing ondersteunt dus werkelijk een lagere refresh rate, in plaats van dat KDE kunstmatig een mode genereert.

KDE meldt verder:

- geen VRR;
- geen HDR;
- geen Wide Color Gamut;
- geen automatische helderheid;
- geen ICC-profiel actief.

De opgegeven EDID-kleurprimaries zijn ook duidelijk smaller dan volwaardig sRGB. Dit is daarom geen paneel dat ik voor kleurkritisch foto-, video- of grafisch werk zou vertrouwen zonder externe monitor.

Een belangrijk detail: KDE toont een configureerbare "color resolution" tot 10/12 bits voor de display pipeline. Dat maakt het LCD zelf niet ineens 10- of 12-bit. De fysieke EDID rapporteert **6 bits per primary**. Of het paneel intern FRC toepast is uit deze data niet aantoonbaar.

Voor tekst, terminals, webbrowsing, kantoorwerk en algemene ontwikkeling is 1080p op 15,6" nog goed bruikbaar. In 2026 is het vooral qua pixelruimte, helderheid/kleur en beeldkwaliteit een duidelijke generatie achter moderne QHD+-panelen.

**Beeldscherm: 4,5/10 in 2026.**

---

# 8. Grafische processor

De i5-8365U bevat Intel UHD Graphics 620, hardware-ID `8086:3ea0`.

Intel specificeert voor deze geïntegreerde GPU:

- 300 MHz basis;
- tot 1,10 GHz dynamisch;
- eDP/DisplayPort/HDMI-ondersteuning;
- DisplayPort tot 4096 × 2304 @ 60 Hz;
- tot drie displays vanuit de processor;
- Intel Quick Sync Video.



Op NixOS wordt hij correct door de upstream `i915`-driver bestuurd.

Voor Plasma Wayland, browseracceleratie, videoweergave en normale desktopcompositie is hij voldoende. De GPU is echter een van de duidelijkste prestatielimieten van het systeem voor:

- moderne games;
- 3D-rendering;
- zware CAD;
- GPU-compute;
- complexe real-time visualisatie.

Het ontbreken van een discrete GPU heeft anderzijds grote voordelen voor Linux: minder drivercomplexiteit, minder idle-verbruik en geen Optimus-problemen.

**GPU: 3,5/10 voor 3D, 8/10 voor gewone desktopweergave.**

---

# 9. Netwerk

## Ethernet

De machine heeft een **Intel Ethernet I219-LM**.

`lshw` bevestigt:

- 10BASE-T;
- 100BASE-TX;
- 1000BASE-T;
- autonegotiation;
- `e1000e` kernel-driver.

Dat is nog steeds een uitstekende geïntegreerde controller voor Linux. De `LM`-variant is bovendien de zakelijke Intel-variant.

## Wi-Fi

De Wi-Fi-controller verschijnt als:

`Intel Cannon Point-LP CNVi [Wireless-AC]`  
Subsystem `8086:0030`

De radio-inventaris toont:

- 2 TX-antennes;
- 2 RX-antennes;
- 2,4 GHz;
- 5 GHz;
- 802.11ac/VHT;
- 160-MHz channel width;
- twee spatial streams;
- AP mode;
- monitor mode;
- P2P;
- WoWLAN.

Op basis van combinatie van CNVi, `0030`, 2×2 en 160-MHz-capaciteit gaat het hier praktisch om een **Intel Wireless-AC 9560 160 MHz**.

Dat is geen Wi-Fi 6, maar voor een laptop uit deze generatie nog steeds een vrij goede adapter. Voor netwerk- en securitywerk is de ondersteunde monitor-mode bovendien nuttiger dan bij sommige minder Linux-vriendelijke WLAN-chipsets.

De `iwlwifi`-driver werkt normaal.

## Bluetooth

De Bluetoothzijde wordt als Intel 9460/9560 Jefferson Peak gedetecteerd via `btusb`.

Tijdens de inventarisatie stond de hardware niet rfkill-geblokkeerd, maar de Bluetooth-service was niet actief. Dat is dus een software-/NixOS-configuratiekwestie, geen ontbrekende Bluetooth-hardware.

**Netwerkhardware: 8/10.**

---

# 10. Thunderbolt, USB en fysieke aansluitingen

Dit exemplaar bevat daadwerkelijk een:

**Intel JHL7540 Thunderbolt 3 controller — Titan Ridge 2C**

met Linux-driver:

`thunderbolt`

en firmware:

`62.00`

Dit is belangrijk, want het is dus niet enkel een USB-C-connector waaraan HP marketingmatig DisplayPort toevoegde: de PCIe Thunderbolt-hostcontroller is fysiek aanwezig.

HP's handleiding toont voor deze chassisvariant aan de rechterzijde onder andere USB-A SuperSpeed, HDMI, RJ-45, de zakelijke dockingconnector en een USB-C/Thunderbolt-aansluiting. De Thunderbolt-uitvoering ondersteunt via USB-C eveneens voeding en DisplayPort-uitvoer.

Aan de linkerzijde voorziet het chassis een tweede USB-A-poort met HP Sleep and Charge, een security-slot en, afhankelijk van configuratie, een smartcardreader.

Het platform kon daarnaast optioneel een SIM/WWAN-slot bevatten. In jouw PCI/USB-inventaris verschijnt echter geen WWAN-modem, dus ik beschouw mobiel breedband niet als geïnstalleerd.

De Thunderbolt-controller en USB-hostcontrollers worden probleemloos door Linux aangestuurd.

Voor een laptop van deze leeftijd is de I/O zelfs in 2026 nog opvallend sterk: native Ethernet, native HDMI, meerdere USB-A-poorten en Thunderbolt 3 zijn in de praktijk flexibeler dan de poortselectie van veel moderne dunne laptops.

**I/O en uitbreidbaarheid extern: 9/10.**

---

# 11. Inputapparaten

De inventaris detecteert onder andere:

- AT-compatible intern keyboard;
- HP WMI hotkeys;
- Synaptics I²C mouse-interface;
- Synaptics I²C touchpad;
- PS/2-compatibiliteitsinterfaces;
- lid switch;
- sleep button.

De dubbele I²C/PS2-vermeldingen betekenen niet dat er drie touchpads zitten. Dit komt door de manier waarop firmware en Linux verschillende compatibiliteitspaden voor hetzelfde ingebouwde pointing subsystem exposen.

Er verschijnt **geen touchscreen-device**.

`libinput list-devices` kon vanwege permissies niet rechtstreeks openen, maar `lshw` heeft de relevante inputdevices al voldoende geïdentificeerd.

De LED-class bevat geen `kbd_backlight`. Dat bewijst niet absoluut dat het fysieke toetsenbord geen verlichting kan hebben — HP kan bepaalde functies via firmware/WMI aansturen — maar Linux exposeert momenteel in elk geval geen standaard keyboard-backlight-device.

---

# 12. Vingerafdruklezer

Intern zit een:

**Synaptics `06cb:00b7` Fingerprint Reader [HP G6]**

De USB-hardware wordt correct gezien, maar `lsusb -t` toont momenteel geen actieve kernel-driver voor die interface.

Dat is niet vreemd voor biometrische readers: gebruikersruimteondersteuning loopt doorgaans via `libfprint`/`fprintd` in plaats van een klassieke generieke USB-driver.

Op basis van alleen deze inventaris verklaar ik de vingerafdrukfunctie daarom **niet als werkend of niet-werkend**. De hardware is aanwezig; functionele ondersteuning hebben we niet getest.

---

# 13. Webcam en audio

De webcam is een:

**Quanta HP HD Camera**
- USB 2.0
- `uvcvideo` driver

Dat is precies de gewenste situatie onder Linux: UVC is de standaard USB Video Class en vereist geen exotische proprietary driver.

Audio komt van de Intel Cannon Point-LP HDA/DSP-controller en gebruikt:

`sof-audio-pci-intel-cnl`

Daarboven draait:

- ALSA;
- PipeWire 1.6.6;
- WirePlumber;
- PipeWire Pulse compatibility.

Microfoon-, headphone- en HDMI/DisplayPort-audio-endpoints worden allemaal gezien.

Dat is een volledig moderne Linux-audiostack.

---

# 14. Firmware en enterprise-functionaliteit

De firmwaretoestand is opvallend compleet.

### BIOS

**HP R70 Ver. 01.35.02**

SMBIOS rapporteert als datum `05/07/2026`. Omdat SMBIOS BIOS-datums traditioneel in MM/DD/YYYY-formaat worden aangeboden, interpreteer ik dit als **7 mei 2026**.

Voor hardware uit 2019 is een BIOS uit 2026 bijzonder recent.

### Intel Management Engine

**ME 12.1.1.1022**

### Intel AMT

De hardware ondersteunt Intel AMT, maar fwupd rapporteert:

**AMT (unprovisioned)**

Met andere woorden: de out-of-band managementcapaciteit bestaat, maar er is geen actieve AMT-provisioning ingesteld.

### TPM

Een **Infineon TPM 2.0**, model SLB9670, wordt herkend.

Firmwareversie:

`7.85.17.51968`

### UEFI Secure Boot-infrastructuur

fwupd ziet onder andere:

- HP Platform Key;
- HP KEK;
- Microsoft KEK;
- HP db;
- Microsoft Windows Production PCA;
- UEFI dbx.

De dbx-revocation database staat op versie `20260402`.

Dat toont dat de firmware over de normale moderne Secure Boot-infrastructuur beschikt. Of Secure Boot tijdens deze NixOS-boot daadwerkelijk **enabled** was, hebben we niet afzonderlijk gemeten.

### SPI firmware lock

fwupd meldt bij de interne SPI-controller:

`Device firmware has been locked`

Ik zie dit hier niet als een defectsignaal. De BIOS-flashregio is beschermd terwijl fwupd tegelijkertijd een afzonderlijk, updatable UEFI System Firmware-device ziet waarvan de laatste update succesvol was.

**Firmwarestatus: zeer goed voor de leeftijd.**

---

# 15. Windows 11-geschiktheid

Hoewel de machine momenteel NixOS draait, is dit platform technisch ook nog relevant voor Windows.

Microsoft vermeldt de **8e generatie Intel Core i5-familie** nog steeds binnen zijn ondersteunde Windows 11-processorseries.

Deze machine heeft bovendien:

- UEFI;
- TPM 2.0;
- een ondersteunde 8e-gen Core i5;
- Secure Boot-capabele firmware.

Daarom is dit geen geval waarbij Windows 11 alleen via bypasses op een officieel te oude processor moet worden gezet.

Ik zou wel vóór een daadwerkelijke Windows-installatie de actuele Secure Boot-state controleren, maar qua hardwarebasis is deze EliteBook een legitieme Windows 11-machine.

---

# 16. Temperaturen en koeling

Bij de momentopname waren de temperaturen:

- CPU package: ongeveer 47–50 °C;
- PCH: ongeveer 39 °C;
- Wi-Fi: ongeveer 48 °C;
- NVMe: ongeveer 32–34 °C;
- overige ACPI-zones grotendeels 27–43 °C.

De CPU heeft een door Intel opgegeven maximale junction temperature van 100 °C.

Deze meting was geen stresstest, dus ik kan er niets over sustained throttling uit concluderen. Wel kan ik zeggen dat er in normale desktoptoestand **geen thermisch probleem zichtbaar is**.

De SSD is zelfs bijzonder koel.

Fan-RPM wordt niet door de aanwezige hwmon-interface gerapporteerd, dus de ventilatorconditie kan softwarematig niet verder worden gekwantificeerd.

---

# 17. Linux/NixOS-compatibiliteit

Dit is een van de sterkste eigenschappen van deze machine.

Vrijwel alles bestaat uit zeer goed ondersteunde Intel- of standaardcomponenten:

| Onderdeel | Linux-driver/status |
|---|---|
| Intel GPU | `i915` — werkend |
| Wi-Fi | `iwlwifi` — werkend |
| Ethernet | `e1000e` — werkend |
| Bluetooth | `btusb` — hardware gedetecteerd |
| Thunderbolt | `thunderbolt` — werkend |
| NVMe | `nvme` — werkend |
| Webcam | `uvcvideo` — werkend |
| Audio | Intel SOF — werkend |
| Touchpad | I²C/Synaptics — gedetecteerd |
| CPU power | `intel_pstate` — actief |
| Suspend | ACPI deep/S3 beschikbaar en geselecteerd |
| Firmware updates | fwupd ziet meerdere updatebare devices |

Er is geen NVIDIA- of AMD-dGPU, geen exotische Wi-Fi-chip en geen proprietary storagecontroller.

Dat maakt het systeem bijna een schoolvoorbeeld van een laptop die prettig oud wordt onder Linux.

De twee niet volledig afgewerkte randfuncties zijn:

- Bluetooth-service stond niet actief;
- fingerprint-login is niet functioneel getest.

Die veranderen niets aan de beoordeling van de fundamentele hardwareondersteuning.

**NixOS/Linux-compatibiliteit: 9/10.**

---

# 18. Security-eigenschappen

De i5-8365U ondersteunt onder andere:

- VT-x;
- VT-d;
- EPT;
- AES-NI;
- Intel Boot Guard;
- Intel Trusted Execution Technology;
- vPro/AMT-functionaliteit.



Daarnaast heeft de laptop een discrete TPM 2.0 en zakelijke firmware.

Je `lscpu`-output toont dat de huidige kernel/microcode voor de bekende speculative-executionproblemen mitigaties activeert. De opvallendste resterende melding is:

`Mmio stale data: Mitigation; Clear CPU buffers; SMT vulnerable`

Dat betekent dat het systeem de relevante mitigatie gebruikt maar SMT/Hyper-Threading nog actief heeft.

Voor een gewone persoonlijke laptop is dat geen reden om Hyper-Threading uit te schakelen. Voor een zeer strikt gescheiden, multi-tenant virtualisatieplatform zou je een andere security/performance-afweging kunnen maken.

---

# 19. Wat zou ik upgraden?

De machine heeft geen dringend defect onderdeel.

Mijn prioriteiten zouden zijn:

**1. Batterij — alleen indien autonomie ertoe doet.**  
Van alle onderdelen levert dit de duidelijkste directe verbetering op. Een verse ~56 Wh batterij zou theoretisch ongeveer 45% meer beschikbare energie bevatten dan de huidige 38,5 Wh:

\[
\frac{56,0}{38,5}\approx1,45
\]

Dat vertaalt zich niet exact naar 45% meer runtime, maar de orde van grootte van de energiewinst is wel degelijk aanzienlijk.

**2. RAM naar 32 GB — indien je daadwerkelijk VM's draait.**  
Voor browsing, development en normaal Linuxgebruik heeft 16 GB nog geen probleem. Voor een lokaal virtualisatielab is 2 × 16 GB aantrekkelijk.

**3. SSD — uitsluitend voor capaciteit.**  
De huidige SSD is niet versleten genoeg om vervanging te rechtvaardigen. Een 1-TB NVMe zou vooral comfort opleveren.

**Niet upgraden om het upgraden:** de i5-8365U en UHD 620 zijn gesoldeerd/platformgebonden. Geld investeren om de machine in een moderne workstation te veranderen heeft daarom geen zin.

---

# 20. Conditierapport

| Onderdeel | Conditie | Oordeel |
|---|---|---|
| CPU/platform | Goed | Geen aanwijzing voor problemen |
| RAM | Zeer goed | Dual-channel, beide slots functioneel |
| SSD | Goed tot zeer goed | 27% endurance used, 0 media errors |
| Batterij | Matig | 68,7% oorspronkelijke capaciteit |
| Display | Functioneel, technisch verouderd | FHD 60 Hz, 6-bit, beperkte gamut |
| Koeling | Goed op basis van idle/light-load data | Geen afwijkende temperatuur |
| Wi-Fi/Ethernet | Goed | Zeer goede Linux-ondersteuning |
| Thunderbolt | Zeer goed | Echte Titan Ridge TB3-controller |
| Firmware | Zeer goed voor leeftijd | BIOS uit 2026, fwupd-integratie |
| Linux-compatibiliteit | Uitstekend | Vrijwel volledig upstream |
| Fysieke slijtage | Niet beoordeeld | Niet uit software af te leiden |

---

# 21. Bruikbaarheid anno 2026

### Zeer geschikt voor

Deze EliteBook is nog uitstekend inzetbaar als Linux-laptop voor webbrowsing, kantoorwerk, programmeren, SSH/remote administration, networking, command-line tooling, containers, lichte lokale servers, één of enkele VM's en algemeen technisch gebruik.

Thunderbolt 3, Gigabit Ethernet, een degelijk Intel WLAN-platform en vervangbaar SO-DIMM-geheugen maken hem functioneel veelzijdiger dan zijn CPU-leeftijd zou doen vermoeden.

### Redelijk geschikt voor

Lichte fotobewerking, eenvoudige audio-opnames, oudere of lichte games, lokale test-VM's en basale CAD kunnen, zolang verwachtingen realistisch blijven.

### Niet geschikt als moderne zware workstation

De combinatie van:

- vier CPU-cores;
- UHD Graphics 620;
- 16 GB huidig RAM;
- 1080p low-gamut display;

maakt hem geen goede machine voor zware 3D, GPU-compute, moderne AAA-games, grote compilatieworkloads, zware video-editing of tientallen gelijktijdige VM's.

---

# 22. Verwachte resterende nuttige levensduur

Ik zie geen hardware-indicator die zegt dat deze laptop "op" is.

De SSD heeft volgens zijn eigen endurance-indicator nog veel marge. Het RAM is standaard en vervangbaar. De batterij kan vervangen worden. De temperatuurhuishouding ziet er normaal uit. Het platform gebruikt mature upstream Linux-drivers.

Daarom zou ik voor secundair of licht technisch gebruik **niet verbaasd zijn als de laptop nog meerdere jaren praktisch inzetbaar blijft**.

De beperkende factor wordt waarschijnlijk eerder gebruikersverwachting en softwarezwaarte dan een fysiek versleten motherboard.

Daar staat tegenover dat Intel de CPU inmiddels als discontinued beschouwt en zijn servicing-periode in maart 2026 heeft beëindigd. De machine zit dus onmiskenbaar in de late levensfase van het platform, ook al houdt HP de firmware opmerkelijk lang actueel.

---

# 23. Eindbeoordeling

**HP EliteBook 850 G6 — jouw exemplaar, augustus 2026**

**Hardwareconditie:** 8/10  
**Batterijconditie:** 5/10  
**SSD-conditie:** 8,5/10  
**Schermkwaliteit anno 2026:** 4,5/10  
**Connectiviteit:** 9/10  
**Upgradebaarheid:** 7,5/10  
**Linux/NixOS-geschiktheid:** 9/10  
**Prestatieniveau anno 2026:** 5,5/10  
**Waarde als secundaire technische laptop:** **8/10**

Mijn eindconclusie is daarom:

**Niet afdanken vanwege leeftijd.**

Dit is geen moderne krachtige laptop meer, maar wel een zeer bruikbare en technisch gezonde zakelijke Linux-machine. De combinatie van een nog adequaat 4C/8T Intel-platform, 16 GB dual-channel RAM, echte Thunderbolt 3, Gigabit Ethernet, goede Intel Wi-Fi, standaard NVMe, verwisselbare SO-DIMMs, actuele firmware en uitstekende upstream Linux-support maakt hem veel relevanter dan een doorsnee consumentenlaptop uit 2019.

Ik zou de huidige SSD gewoon blijven gebruiken. Ik zou het RAM alleen verhogen wanneer 16 GB daadwerkelijk beperkend wordt. De enige upgrade die ik op basis van de meetdata zonder twijfel als technisch zinvol kan aanwijzen, is een nieuwe batterij wanneer mobiele autonomie belangrijk is.

**Het zwakste onderdeel van deze EliteBook is momenteel niet de ouderdom van de computer, maar de 31% versleten batterij en het middelmatige 1080p-scherm.**
