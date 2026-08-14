> **Contextdocument, niet actueel startpunt.** Dit bestand bewaart de oorspronkelijke opdracht integraal. De strategie is inmiddels gewijzigd naar Laptop B eerst en voorlopig zonder nieuwe Laptop A. Begin bij [`research/current.md`](research/current.md); pas de regels uit [`research/constraints.md`](research/constraints.md) en [`research/protocol.md`](research/protocol.md) toe.

# Oorspronkelijke opdracht — twee complementaire laptops onder €4444

Ik wil een grondig, actueel en evidence-based marktonderzoek uitvoeren naar **twee strikt complementaire laptops**.

Het doel is nadrukkelijk NIET twee afzonderlijk ideale laptops te vinden. Optimaliseer de **combinatie als één systeem**.

## 1. HARD TOTAALBUDGET

Het totale aankoopbudget voor BEIDE laptops samen bedraagt:

**maximaal €4444 inclusief btw, noodzakelijke verzendkosten en andere onvermijdelijke aankoopkosten.**

Dit is een absolute bovengrens.

Een combinatie van bijvoorbeeld €4499 is dus GEEN geldige oplossing.

Het doel is bovendien niet het budget volledig op te maken. Als een combinatie van €3900 vrijwel dezelfde praktische waarde biedt als één van €4400, heeft de goedkopere combinatie de voorkeur.

Voor bedragen boven €4444 wordt een grote high-end Dell/workstationachtige alleskunner opnieuw economisch interessant, waardoor de tweelaptopstrategie haar bestaansreden verliest.

Onderzoek daarom ook kritisch of:

1. twee complementaire laptops werkelijk de beste oplossing zijn;
2. één laptop van maximaal €4444 rationeler is;
3. of er een duidelijk Pareto-punt bestaat waarbij de tweelaptopstrategie wint.

---

# 2. KOOPCONTEXT

Ik woon in België.

Voorkeur voor:

* Belgische retailers;
* Nederlandse retailers;
* fabrikantwebshops die normaal naar België leveren;
* betrouwbare Duitse of andere grote West-Europese retailers.

Vermijd:

* dubieuze marketplace-sellers;
* obscure parallelimport;
* verkopers met problematische garantie;
* Britse import, tenzij een uitzonderlijk goede reden bestaat, vanwege Brexit/importcomplexiteit.

Controleer:

* Belgische levering;
* prijs inclusief Belgische btw;
* verzendkosten;
* retourvoorwaarden;
* fabrieksgarantie;
* lokale/Europese support;
* exacte fysieke keyboardlayout.

---

# 3. TOETSENBORDLAYOUT — BEIDE LAPTOPS ALS PAAR

De twee laptops moeten bij voorkeur DEZELFDE fysieke keyboardlayout hebben.

Voorkeursvolgorde:

1. Belgian AZERTY;
2. echte standaard US ANSI / US International QWERTY.

Niet geschikt:

* Duitse QWERTZ;
* Franse AZERTY;
* Spaanse layout;
* Italiaanse layout;
* afwijkende regionale QWERTY-layouts;
* exotische layouts waarbij programmeersymbolen op vreemde posities staan.

US QWERTY is dus GEEN probleem zolang beide laptops ermee verkrijgbaar zijn.

Een combinatie waarbij laptop A Belgian AZERTY heeft en laptop B US QWERTY moet duidelijk worden afgestraft.

Verifieer keyboardlayout op de EXACTE SKU. Leid dit niet af uit productfoto's of uit de taal van een webshop.

---

# 4. FUNDAMENTEEL CONCEPT

De laptops zijn NIET:

* "schoollaptop versus privélaptop";
* "Linuxlaptop versus Windowslaptop";
* "mobiele laptop versus laptop die nooit verplaatst wordt".

Ze zijn:

## LAPTOP A — LIGHT / DAILY MACHINE

De computer die ik meestal meeneem wanneer maximale performance niet nodig is.

## LAPTOP B — PERFORMANCE MACHINE

De computer die ik gebruik wanneer lokale CPU/GPU-performance belangrijk is.

Beide laptops mogen voor school, werk, development en privégebruik worden gebruikt.

Laptop B mag dus absoluut mee naar school wanneer een bepaalde les of workload zware lokale compute vereist.

Laptop A hoeft daarom NIET alle mogelijke zware schoolsoftware lokaal comfortabel te draaien.

---

# 5. LAPTOP A — LIGHT / DAILY MACHINE

## Doel

Laptop A wordt mijn dagelijkse lichte computer voor onder andere:

* lessen;
* programmeren;
* webdevelopment;
* browsergebruik;
* Office;
* Microsoft 365;
* OneDrive;
* terminals;
* SSH;
* Git;
* VPN;
* remote systeembeheer;
* netwerk- en securitywerk;
* lichte containers;
* development services;
* lichte lokale compilatie;
* documentatie;
* communicatie;
* algemeen zakelijk werk voor mijn eigen bedrijf;
* research;
* normaal dagelijks computergebruik.

Mijn zware compute kan elders plaatsvinden:

* schoolinfrastructuur;
* NUC's;
* Proxmox-clusters;
* remote servers via VPN;
* Laptop B.

**Zware lokale virtualisatie is GEEN ontwerpcriterium voor Laptop A.**

Laptop A hoeft dus niet kunstmatig een high-end H/HX-processor te krijgen om een taak op te lossen waarvoor Laptop B bestaat.

---

# 6. BESTURINGSSYSTEEM LAPTOP A

De oorspronkelijke aanname "Linux-first laptop" is vervallen.

## Primaire verwachting

**Windows 11 is waarschijnlijk het primaire besturingssysteem.**

Dat heeft praktische voordelen binnen mijn schoolomgeving, waaronder Microsoft 365 en OneDrive.

Linux blijft belangrijk als:

* dual boot;
* alternatief OS;
* developmentomgeving;
* troubleshootingomgeving;
* mogelijke toekomstige primaire installatie.

Linuxcompatibiliteit blijft daarom interessant, maar hoeft NIET meer de hele laptopkeuze te domineren.

Een uitstekende Windows-laptop met redelijke Linuxondersteuning mag winnen van een duurdere Linux-first laptop.

### Linuxonderzoek

Controleer bij serieuze kandidaten indien mogelijk:

* recente kernelcompatibiliteit;
* Wi-Fi;
* audio;
* suspend/resume;
* webcam;
* touchpad;
* fingerprint;
* power-management;
* USB4/Thunderbolt;
* eventuele platformquirks.

Label Linuxondersteuning alleen als PROVEN wanneer er daadwerkelijk relevante huidige informatie bestaat.

---

# 7. CPU-ARCHITECTUUR LAPTOP A

Optimaliseer NIET op marketingnamen of simpel core-count.

Ik wil voldoende CPU-headroom voor jarenlang normaal developmentgebruik, maar efficiency is belangrijker dan maximale Cinebench-score.

Vergelijk onder andere:

* single-threadperformance;
* lichte multicore-performance;
* sustained performance;
* performance per watt;
* idle/platform power;
* responsiviteit;
* thermische eigenschappen;
* daadwerkelijke batterijduur van het chassis.

Een "16-core" hybride CPU is niet automatisch beter dan een "8-core" CPU.

Een AI/NPU-label is op zichzelf GEEN voordeel.

NPU-capaciteit telt alleen wanneer ze aantoonbaar praktische waarde heeft.

## x86 versus ARM

x86-64 heeft de voorkeur.

Mijn opleiding en technische werkzaamheden kunnen niche-x86-tools vereisen.

Die zware of incompatibele taken kunnen echter indien nodig op Laptop B of remote infrastructuur draaien.

Daarom:

**ARM/Snapdragon is niet automatisch uitgesloten, maar moet als challenger worden behandeld.**

Een ARM-laptop mag alleen winnen wanneer:

1. autonomie/gewicht/ergonomie aantoonbaar duidelijk beter zijn;
2. mijn normale Laptop-A-software betrouwbaar werkt;
3. Microsoft 365/OneDrive/browser/VS Code/Git/SSH/VPN en dagelijkse development geen problematische beperkingen hebben;
4. emulatieproblemen expliciet onderzocht zijn;
5. duidelijk wordt gemaakt welke workloads naar Laptop B zouden moeten verhuizen.

Bij twijfel wint x86.

Onderzoek de ACTUELE Windows-on-ARM-situatie in augustus 2026 en vertrouw niet op oude 2024/2025-compatibiliteitsartikelen.

---

# 8. HARDE EISEN LAPTOP A

* geen discrete GPU;
* minimaal ongeveer 14";
* 14", 15" en 16" zijn allemaal toegestaan;
* 13"-klasse heeft geen voorkeur en mag alleen winnen bij een uitzonderlijk sterke totaalcase;
* minimaal 32 GB RAM;
* minimaal 1 TB SSD;
* USB-C charging;
* degelijk chassis;
* betrouwbaar toetsenbord;
* groot en kwalitatief touchpad;
* goede echte batterijduur;
* goed scherm;
* Belgian AZERTY of standaard US QWERTY;
* bruikbaar voor meerdere jaren.

---

# 9. DISPLAY LAPTOP A

De oude harde eis ">1920×1200" vervalt.

1920×1200 is acceptabel indien het paneel verder goed is.

## Harde beeldkwaliteitseis

**Minimaal ongeveer volledige sRGB-dekking.**

Panelen van bijvoorbeeld:

* 45% NTSC;
* 60–65% sRGB;
* goedkope low-gamut kantoorpanelen

zijn NIET geschikt.

Sterke voorkeur voor:

* hogere resolutie dan 1920×1200;
* 100% DCI-P3 of vergelijkbaar wide gamut;
* goede helderheid;
* goede contrastverhouding;
* goede kalibratie;
* prettige schaalbaarheid;
* 90/120 Hz als dit niet zwaar ten koste gaat van autonomie.

OLED is toegestaan.

Bij OLED moet wel worden onderzocht:

* PWM/flicker;
* glossy reflecties;
* statische UI/burn-in-risico;
* ingebouwde burn-inmitigatie;
* eventuele panel-care-functies;
* garantievoorwaarden rond het paneel.

Een goede IPS/LCD mag absoluut winnen van OLED.

---

# 10. BATTERIJ LAPTOP A — HOOGSTE PRIORITEIT

Dit is een van de belangrijkste onderdelen van het volledige onderzoek.

Focus op GEMETEN autonomie, niet Wh alleen.

Gebruik waar beschikbaar:

* onafhankelijke Wi-Fi/webtests;
* productivity-tests;
* video-runtime;
* idle consumption;
* light-load consumption;
* office/browser-verbruik;
* Windows-runtime;
* eventuele Linux-runtime;
* suspend drain;
* batterijkarakteristieken;
* efficiency op batterij;
* prestaties op batterij.

Vermeld batterijcapaciteit in Wh, maar gebruik dit alleen als onderdeel van de analyse.

Bereken indien zinvol:

verwachte autonomie ≈ bruikbare Wh / gemiddeld systeemverbruik in W.

Gebruik geen theoretische fabrikantclaim als vervanging voor een onafhankelijke batterijtest.

Mijn doel is een volledige lesdag met zo weinig mogelijk laadstress.

---

# 11. TOUCHPAD LAPTOP A — ZEER BELANGRIJK

Touchpadkwaliteit is een volwaardig selectiecriterium.

Onderzoek waar mogelijk:

* fysieke afmetingen;
* materiaal: glas / kunststof / ander;
* mechanisch versus haptisch;
* tracking;
* Precision Touchpad-implementatie;
* click consistency;
* klikgevoel bovenaan versus onderaan;
* palm rejection;
* oppervlakfrictie;
* flex;
* wobble;
* rattle;
* misclicks;
* positie ten opzichte van toetsenbord;
* langetermijnreviews.

Reviewerervaring mag als SUBJECTIVE worden vermeld.

Zoek bij voorkeur meerdere onafhankelijke beoordelingen.

Een groot touchpad dat ik fysiek prettig vind mag reële waarde krijgen, ook als het technisch geen "premium haptic glass" model is.

Gebruik geen merkhiërarchie zoals:

"Zenbook = goed, Vivobook = slecht"

zonder het exacte chassis te beoordelen.

---

# 12. KEYBOARD LAPTOP A

Onderzoek:

* key travel;
* tactility;
* stabiliteit;
* flex;
* spacing;
* layout;
* grootte van Shift/Enter/arrow keys;
* numpad en eventuele gevolgen voor centrering;
* programmeersymbolen;
* langdurig typcomfort;
* backlight.

Dit is een machine waarop veel geschreven en geprogrammeerd wordt.

---

# 13. UPGRADEBAARHEID LAPTOP A

Upgradebaarheid blijft wenselijk, maar is geen dogma.

Sterke pluspunten:

* SO-DIMM;
* LPCAMM2;
* vervangbare M.2;
* tweede M.2;
* vervangbare Wi-Fi;
* eenvoudig bereikbare batterij;
* service manual;
* beschikbare onderdelen.

Maar:

Een laptop met bijvoorbeeld 32 of 64 GB degelijk gesoldeerd geheugen mag winnen wanneer die duidelijk beter is op:

* batterijduur;
* gewicht;
* scherm;
* touchpad;
* bouwkwaliteit;
* prijs.

Betaal niet honderden euro's puur voor theoretische upgradebaarheid die waarschijnlijk nooit gebruikt wordt.

---

# 14. CONNECTIVITEIT LAPTOP A

USB4 / Thunderbolt 4 / Thunderbolt 5 is een sterke voorkeur.

Relevant voor:

* docks;
* externe SSD's;
* netwerkinterfaces;
* toekomstige uitbreidingen;
* displays.

Ook beoordelen:

* USB-A;
* HDMI;
* SD/microSD indien aanwezig;
* chargingmogelijkheden;
* externe displaymogelijkheden;
* Wi-Fi-generatie.

---

# 15. ECONOMISCHE POSITIE LAPTOP A

Laptop A moet NIET kunstmatig premium worden gemaakt.

Een interessante globale zoekzone is waarschijnlijk ongeveer:

**€850–€1400**

maar dit is GEEN hard prijsfilter.

Een laptop van €1500 mag winnen als de verbetering aantoonbaar groot is.

Een laptop van €900 mag winnen als die vrijwel alles levert wat nodig is.

Iedere €300–€500 extra voor A moet worden afgewogen tegen wat hetzelfde bedrag bij Laptop B oplevert.

---

# 16. LAPTOP B — PERFORMANCE MACHINE

Laptop B wordt bewust geoptimaliseerd voor performance.

Gebruik:

* grandMA2;
* grandMA3;
* Capture;
* Depence;
* andere stage-visualization;
* Ableton Live;
* CAD;
* 3D;
* rendering;
* GPU-compute;
* zware development;
* lokale VM's;
* gespecialiseerde x86-software;
* moderne games;
* toekomstige veeleisende applicaties.

B moet een sterke algemene high-end performance/gamingmachine zijn.

---

# 17. GPU LAPTOP B

Primaire target:

**NVIDIA GeForce RTX 5080 Laptop GPU — 16 GB GDDR7.**

RTX 5070 Ti 12 GB mag winnen wanneer de besparing groot genoeg is om de TOTALE tweelaptopcombinatie duidelijk beter te maken.

RTX 5090 mag worden onderzocht indien hij onverwacht rationeel binnen het totaalbudget past.

## Zeer belangrijk

Niet iedere RTX 5080-laptop is dezelfde performanceklasse.

Onderzoek:

* officiële maximum TGP;
* sustained GPU-power;
* Dynamic Boost;
* clocks onder langdurige belasting;
* thermische throttling;
* voltage/power limits;
* combined CPU+GPU power;
* performance modes;
* performance per watt;
* werkelijke benchmarkperformance.

Een fabrikantclaim "up to 175 W" is onvoldoende.

Een RTX 5080 die in echte langdurige workloads slechts bijvoorbeeld 120–140 W gebruikt moet als zodanig worden beoordeeld.

Een goed gekoelde 5070 Ti kan in sommige gevallen rationeler zijn dan een sterk beperkte 5080.

---

# 18. HARDE EISEN LAPTOP B

* NVIDIA discrete GPU;
* minimaal RTX 5070 Ti 12 GB;
* RTX 5080 16 GB sterk geprefereerd;
* minimaal 32 GB RAM;
* upgrade naar minimaal 64 GB moet praktisch mogelijk zijn OF 64 GB moet fabriek-af beschikbaar zijn;
* minimaal 1 TB SSD;
* minimaal twee bruikbare M.2-slots;
* minimaal 16";
* maximaal 18" is prima;
* degelijk chassis;
* degelijke scharnieren;
* sterke sustained CPU-performance;
* sterke sustained GPU-performance;
* adequate koeling;
* onderhoudbaarheid;
* Belgian AZERTY of standaard US QWERTY.

---

# 19. DISPLAY LAPTOP B

Displaykwaliteit is belangrijker dan in de oorspronkelijke prompt.

Minimaal:

* ongeveer 100% sRGB.

Sterk gewenst:

* circa 100% DCI-P3;
* ≥2560×1600;
* goede helderheid;
* goede response times;
* goede kalibratie;
* VRR/G-Sync/Advanced Optimus indien relevant;
* 165–240 Hz of beter.

1920×1200 is alleen acceptabel wanneer de laptop op vrijwel alle andere belangrijke aspecten uitzonderlijk goed scoort.

OLED en Mini-LED zijn toegestaan.

Bij OLED dezelfde burn-in/PWM-analyse uitvoeren als bij A.

---

# 20. CPU LAPTOP B

CPU-performance is belangrijk voor:

* Ableton;
* development;
* VM's;
* CAD;
* rendering;
* stage-software;
* games.

Onderzoek:

* single-thread;
* multicore;
* sustained package power;
* performance onder gecombineerde GPU-belasting;
* throttling;
* power sharing;
* temperaturen.

Beoordeel NIET op core-count of marketingnaam alleen.

---

# 21. RAM EN STORAGE LAPTOP B

Sterke voorkeur voor:

* 2× SO-DIMM of andere echte upgradebare RAM-oplossing;
* 2× M.2 2280 of meer;
* goede toegankelijkheid.

Controleer daadwerkelijke RAM-limieten in:

* service manual;
* BIOS/documentatie;
* onafhankelijke tests.

Ga niet automatisch uit van een fabrikantmarketinglimiet wanneer grotere modules aantoonbaar werken, maar label dergelijke informatie correct.

---

# 22. KOELING LAPTOP B — ZEER BELANGRIJK

Dunheid is GEEN voordeel.

Beloon een dikker chassis juist wanneer dat leidt tot:

* grotere fans;
* grotere heatsinks;
* vapor chamber;
* betere VRM/VRAM-koeling;
* hogere sustained GPU-power;
* hogere sustained CPU-power;
* lagere temperaturen;
* minder throttling;
* betere levensduur.

Onderzoek:

* CPU-only stress;
* GPU-only stress;
* gecombineerde CPU+GPU-load;
* sustained wattages;
* CPU temperature;
* GPU temperature;
* hotspot;
* VRAM temperatures indien beschikbaar;
* thermal oscillation;
* clocks;
* throttling.

Een 17" of 18" chassis mag absoluut winnen.

---

# 23. GELUID LAPTOP B

Hoog volume tijdens maximale rendering/gaming is acceptabel.

Veel belangrijker zijn:

* high-pitched fan whine;
* tonale fan noise;
* lager/bearing-geluiden;
* voortdurend fan-rampen;
* onrustige fan curves;
* agressieve fans bij idle/light load;
* fans die nooit uitgaan;
* coil whine;
* mechanische resonantie.

Gebruik dB(A) waar beschikbaar, maar combineer dit met kwalitatieve observaties.

---

# 24. ABLETON / DPC LATENCY

DPC latency is belangrijk.

Zoek:

1. exact dezelfde SKU;
2. anders exact dezelfde chassisgeneratie;
3. anders dezelfde familie/platformgeneratie.

Gebruik LatencyMon-data waar beschikbaar.

Als geen relevante meting bestaat:

**UNKNOWN**

Niet:

"waarschijnlijk goed".

Niet:

"merk X is meestal goed".

Aanvullend onderzoeken:

* ACPI;
* NVIDIA-drivergedrag;
* Wi-Fi-driver;
* audio stack;
* power management;
* BIOS/EC;
* USB audio;
* terugkerende crackling/dropout-problemen.

---

# 25. LAPTOP B — WAT NIET BELANGRIJK IS

Optimaliseer B NIET op:

* batterijduur;
* laag gewicht;
* dunheid;
* ultrabookuiterlijk;
* idle efficiency;
* kleine charger.

Een zware adapter is acceptabel.

---

# 26. WORKSTATIONS

Professionele workstations hebben GEEN voorkeursstatus.

Neem ze alleen mee wanneer ze economisch daadwerkelijk concurreren.

Betaal niet extra voor:

* RTX PRO-branding;
* ISV-certificering;
* vPro;
* fleet management;
* zakelijke features die ik niet nodig heb.

Een gaming/performance-laptop met een volledige RTX 5080 is waarschijnlijk rationeler.

---

# 27. MERKBELEID

Begin inhoudelijk vanaf nul.

Anchor NIET op eerder besproken modellen.

## Acer

Acer heeft een sterke negatieve kopersvoorkeur.

Verspil daarom geen substantieel onderzoek aan Acer en neem Acer in principe niet op in de uiteindelijke shortlist.

Alleen wanneer een huidig Acer-chassis objectief zo dominant is dat uitsluiten de analyse duidelijk zou vertekenen, mag het kort als wildcard worden genoemd.

## MSI

MSI is NIET formeel uitgesloten.

Er bestaan wel koperszorgen rond:

* firmware;
* EC/BIOS;
* fan behavior;
* thermiek;
* noise;
* kwaliteit.

Gebruik die zorgen NIET als bewijs tegen een nieuw model.

Maar een MSI mag alleen een topaanbeveling worden wanneer de EXACTE huidige chassisgeneratie overtuigende onafhankelijke data heeft voor:

* thermiek;
* sustained performance;
* fan behavior;
* firmware/stabiliteit.

Een uitzonderlijk lage prijs alleen is onvoldoende.

## Overige merken

Gebruik dezelfde objectieve methode.

Geen merk krijgt een gratis reputatiebonus.

---

# 28. GEEN GENERATIE-EXTRAPOLATIE

Dit is cruciaal.

Een probleem met bijvoorbeeld:

* een 2024-model;
* vorige chassisgeneratie;
* andere cooling solution;
* andere GPU;
* andere CPU;

mag NIET automatisch aan een 2026-model worden toegeschreven.

Evenmin mag goede reputatie van een oudere generatie automatisch worden doorgetrokken.

Beoordeel de actuele generatie.

---

# 29. ONDERZOEKSMETHODE

Werk gefaseerd.

## Fase 1 — brede discovery

Gebruik onder andere:

* Geizhals EU;
* Tweakers Pricewatch;
* fabrikantcatalogi;
* Belgische retailers;
* Nederlandse retailers;
* grote Duitse/EU-retailers.

Zoek naar CHASSISFAMILIES, niet tientallen vrijwel identieke SKU's.

Maak eerst ongeveer:

* 8–15 interessante Laptop-A-families;
* 6–12 interessante Laptop-B-families.

Geen winnaar kiezen in deze fase.

## Fase 2 — technische filtering

Gebruik primaire bronnen:

* officiële productpagina;
* PSREF/spec sheets;
* service manual;
* maintenance manual;
* datasheets;
* GPU/CPU-fabrikantdocumentatie.

Elimineer harde mismatches.

## Fase 3 — onafhankelijke meetdata

Zoek professionele meetreviews.

Prioriteit voor bronnen met daadwerkelijke metingen van:

* battery runtime;
* power consumption;
* display;
* thermiek;
* noise;
* performance;
* DPC latency.

Video-reviewers mogen worden gebruikt wanneer zij meetdata leveren.

## Fase 4 — user-pattern onderzoek

Forums, Reddit en user reviews alleen gebruiken voor terugkerende patronen zoals:

* touchpad wobble;
* hinge defects;
* fan whine;
* fan bearing;
* sleep problems;
* firmware bugs;
* coil whine.

Eén individuele klacht = GEEN bewezen structureel probleem.

Meerdere onafhankelijke vergelijkbare meldingen mogen als signaal worden gebruikt.

## Fase 5 — exacte SKU

Pas NADAT het chassis technisch interessant blijkt:

* exacte Belgische/EU SKU zoeken;
* part number;
* EAN;
* keyboard;
* CPU;
* GPU;
* display;
* RAM;
* SSD;
* prijs;
* stock;
* garantie.

---

# 30. RETAILERDATA

Retailers zijn primair bron voor:

* actuele prijs;
* actuele voorraad;
* keyboardlayout;
* SKU;
* part number;
* EAN;
* levering;
* garantie.

Retailerpagina's zijn GEEN betrouwbare hoofdbron voor:

* GPU-TGP;
* RAM-topologie;
* M.2-aantal;
* displaykwaliteit;
* thermiek.

Verifieer die afzonderlijk.

Search snippets zijn eveneens onvoldoende.

---

# 31. EXACTE SKU-VALIDATIE

Voor iedere uiteindelijke kandidaat verifiëren:

* fabrikant;
* productfamilie;
* chassisgeneratie;
* exacte SKU;
* part number;
* EAN indien beschikbaar;
* CPU;
* GPU;
* officiële TGP;
* gemeten GPU-power indien B;
* RAM-capaciteit;
* gesoldeerd/SO-DIMM/LPCAMM;
* maximum RAM;
* SSD;
* aantal M.2;
* displaytype;
* resolutie;
* refresh;
* kleurdekking;
* brightness;
* keyboardlayout;
* batterij;
* gewicht;
* prijs incl. btw;
* verzending;
* verkoper;
* voorraadstatus;
* garantie.

Als informatie tegenstrijdig is: markeer dit en los het op vóór aanbeveling.

---

# 32. BEWIJSCLASSIFICATIE

Gebruik consequent:

## PROVEN

Rechtstreeks:

* officieel bevestigd;
* of daadwerkelijk gemeten door betrouwbare bron.

## LIKELY

Sterk ondersteund op basis van dezelfde huidige chassisgeneratie, maar niet exact dezelfde SKU.

## UNKNOWN

Niet betrouwbaar vastgesteld.

## SUBJECTIVE

Ergonomie, feel, geluidkarakter of andere persoonlijke beoordeling.

Gebruik UNKNOWN liever dan te gokken.

---

# 33. FACTCHECKREGELS

Voorkom veelgemaakte laptopresearch-fouten.

NIET DOEN:

* specs van twee SKU's combineren;
* OLED van de ene configuratie aan een IPS-configuratie toeschrijven;
* RAM-topologie aannemen;
* "RTX 5080 = 175 W" aannemen;
* keyboardlayout uit productfoto afleiden;
* Amerikaanse SKU-prijs vergelijken met Belgische SKU;
* fabrikant-"up to"-runtime als gemeten runtime behandelen;
* maximaal boostvermogen als sustained vermogen rapporteren;
* chassisreview zonder waarschuwing op andere generatie toepassen;
* een individuele Redditklacht als modeldefect bestempelen.

---

# 34. BUDGETOPTIMALISATIE

Optimaliseer:

A + B ≤ €4444.

Behandel iedere euro als opportuniteitskost.

Voor iedere relevante upgrade moet impliciet de vraag worden gesteld:

"Levert €X extra bij Laptop A meer totale waarde dan dezelfde €X bij Laptop B?"

Voorbeeld:

Als A van €1050 naar €1450 gaat voor:

* +1 uur batterij;
* iets beter chassis;
* iets beter scherm;

maar die €400 bij B een veel beter gekoelde 5080 mogelijk maakt, kan de goedkopere A rationeler zijn.

Omgekeerd:

Als €150 extra bij A een enorme verbetering geeft in:

* batterij;
* touchpad;
* keyboard;
* display;

dan is dat waarschijnlijk betere value dan een nauwelijks meetbare CPU-upgrade bij B.

---

# 35. BEIDE LAPTOPS MOETEN ECHT COMPLEMENTAIR ZIJN

Voorkom dubbele betaling voor dezelfde eigenschap.

Laptop A heeft bijvoorbeeld geen dure GPU nodig.

Laptop B heeft geen dure ultrabookengineering nodig.

Laptop A hoeft geen 24-core HX-chip te hebben.

Laptop B hoeft niet 1,4 kg te wegen.

De waarde van de strategie ontstaat juist uit specialisatie.

---

# 36. VERGELIJK OOK MET ÉÉN LAPTOP

Zoek minstens één sterke single-laptopoplossing van ≤€4444.

Vergelijk:

* totale performance;
* autonomie;
* gewicht;
* daily usability;
* redundantie;
* ergonomie;
* onderhoud;
* data-synccomplexiteit;
* totale aankoopwaarde.

Als één laptop duidelijk rationeler blijkt, zeg dat.

Probeer de tweelaptopstrategie NIET te bevestigen.

---

# 37. GEVRAAGDE OUTPUT — EERST DISCOVERY

Geef niet onmiddellijk een winnaar.

Begin met:

## Laptop A discovery

Tabel met unieke chassisfamilies en:

* model;
* prijsrange;
* CPU-platform;
* RAM;
* display;
* batterij;
* gewicht;
* touchpad;
* keyboard;
* upgradebaarheid;
* reden om verder te onderzoeken;
* reden tot twijfel.

## Laptop B discovery

Tabel met:

* model;
* prijsrange;
* CPU;
* GPU;
* officiële TGP;
* waarschijnlijke sustained class;
* RAM;
* M.2;
* display;
* cooling design;
* reden om verder te onderzoeken;
* reden tot twijfel.

Vervolgens kandidaten elimineren.

---

# 38. GEVRAAGDE EINDRESULTATEN

Na volledige validatie:

## 1. Goedkoopste combinatie die echt goed genoeg is

MOET ≤€4444 zijn.

## 2. Beste prijs/kwaliteit-combinatie

MOET ≤€4444 zijn.

## 3. Technisch beste combinatie

MOET ≤€4444 zijn.

Als zo'n combinatie niet bestaat:

zeg letterlijk dat deze categorie binnen de eisen niet bestaat.

Presenteer GEEN over-budgetcombinatie als geldige winnaar.

---

# 39. PER COMBINATIE RAPPORTEREN

Voor Laptop A:

* exact model;
* exact SKU;
* part number;
* retailer;
* prijs;
* keyboard;
* CPU;
* architecture;
* RAM;
* upgradebaarheid;
* SSD;
* M.2;
* display;
* gamut;
* touchpad;
* keyboardkwaliteit;
* batterij Wh;
* gemeten runtime;
* gemiddeld geschat verbruik;
* Windows behavior;
* Linux status;
* USB4/TB;
* gewicht.

Voor Laptop B:

* exact model;
* SKU;
* part number;
* retailer;
* prijs;
* keyboard;
* CPU;
* RTX GPU;
* officiële TGP;
* gemeten sustained GPU-power;
* benchmarkperformance;
* RAM;
* upgradepad;
* storage;
* M.2;
* display;
* gamut;
* thermiek;
* fan noise;
* fan character;
* combined CPU/GPU behavior;
* DPC/LatencyMon.

Voor het paar:

* totaalprijs;
* totaal binnen budget?;
* dezelfde keyboardlayout?;
* complementaire rollen;
* belangrijkste trade-offs;
* waarom deze budgetverdeling rationeel is.

---

# 40. RUNNERS-UP

Geef daarnaast relevante runners-up.

Vermeld exact WAAROM iedere runner-up verliest.

Bijvoorbeeld:

* €200 duurder zonder relevant voordeel;
* 5080 sterk power-limited;
* slechter touchpad;
* 16 GB gesoldeerd;
* slechte gamut;
* onduidelijke SKU;
* geen passende keyboardlayout;
* slechte batterij;
* DPC onbekend;
* thermiek onvoldoende;
* firmwareproblemen.

---

# 41. PARETO-ANALYSE

Geef uiteindelijk:

* goedkoopste rationele totaaloplossing;
* beste value;
* beste totale performance;
* beste Laptop A onafhankelijk van B;
* beste Laptop B onafhankelijk van A;
* beste batterij Laptop A;
* beste ergonomie Laptop A;
* beste GPU-performance Laptop B;
* punt van afnemende meeropbrengst;
* beste single-laptopalternatief.

---

# 42. REJECTED / ELIMINATED LOG

Hou een compact log bij van serieus onderzochte chassis die afvallen.

Per model:

* reden;
* bewijsniveau;
* eventueel prijs waarbij het opnieuw interessant zou worden.

Dit voorkomt dat later dezelfde slechte kandidaten opnieuw worden onderzocht.

---

# 43. ONZEKERHEID

Wanneer bewijs ontbreekt:

zeg dat.

Als bijvoorbeeld geen LatencyMon-data bestaat:

DPC = UNKNOWN.

Als sustained 5080-power niet gemeten werd:

Sustained GPU power = UNKNOWN.

Als alleen fabrikantbatteryclaims beschikbaar zijn:

Independent battery runtime = UNKNOWN.

Geen gokwaarden invullen.

---

# 44. ACTUALITEIT

Dit onderzoek vindt plaats in **augustus 2026**.

Controleer daarom alle tijdgevoelige gegevens live:

* prijzen;
* voorraad;
* huidige SKU's;
* BIOS/firmware-updategeschiedenis;
* drivers;
* actuele reviews;
* huidige Windows-on-ARM-compatibiliteit;
* garantie;
* retailerstatus.

Oude informatie mag alleen worden gebruikt wanneer deze nog technisch relevant is.

---

# 45. HOOFDPRIORITEITEN

## Laptop A

1. echte batterijduur / efficiency;
2. touchpad + keyboard;
3. schermkwaliteit;
4. build en betrouwbaarheid;
5. voldoende dagelijkse CPU-performance;
6. prijs/value;
7. 32+ GB RAM;
8. USB4/Thunderbolt;
9. upgradebaarheid;
10. Linuxcompatibiliteit als bonus.

## Laptop B

1. sustained GPU-performance;
2. koeling;
3. RTX 5080 16 GB;
4. CPU-performance;
5. thermische stabiliteit;
6. RAM/storage-upgradebaarheid;
7. DPC/audio;
8. build;
9. displaykwaliteit;
10. prijs.

## Totale combinatie

1. rollen complementeren elkaar;
2. ≤€4444;
3. geen geld verspillen aan dubbele eigenschappen;
4. dagelijkse ervaring A uitstekend;
5. zware performance B uitstekend;
6. dezelfde keyboardlayout waar mogelijk.

---

# 46. ONDERZOEKSHOUDING

Wees sceptisch.

Zoek actief naar redenen waarom een aantrekkelijke kandidaat NIET goed is.

Prijs/specs alleen zijn onvoldoende.

Een geweldige GPU in een slecht chassis is geen geweldige laptop.

Een premium ultrabook met slechte echte batterijduur is geen goede Laptop A.

Een zakelijke laptop is niet automatisch degelijker.

Een gamingmerk is niet automatisch slechter.

Een Linux-first laptop is niet automatisch beter voor mij.

Een nieuwere CPU is niet automatisch efficiënter.

OLED is niet automatisch beter dan IPS.

Meer cores zijn niet automatisch beter.

Upgradebaarheid is niet automatisch meer waard dan betere autonomie.

Laat de meetdata de conclusie bepalen.

Begin vanaf nul.

# Addendum to main market-research prompt

## Durable buyer exclusions
Do not normally shortlist MSI, Acer or budget HP consumer laptops.
This is a buyer preference, not a universal technical claim.
Do not silently reintroduce them because their price/spec ratio is attractive.

## Regional SKU firewall
Treat every regional SKU as a distinct commercial product.
Never combine US specs/pricing/layout with BE/EU SKU data.

## `Vanaf` / `starting at` firewall
Never pair a family starting price with maximum family specifications.
A price enters budget calculations only after an exact buyable configuration is verified.

## Recommendation eligibility gate
Do not say winner / best value / definitive / golden combination until exact SKU validation has passed.
A B-candidate with unknown sustained GPU-power, thermals/noise and no exact chassis review is WATCHLIST, not winner.

## Contradiction protocol
When sources conflict: mark CONFLICT, suspend ranking, seek a primary or more exact source, then resolve or leave UNKNOWN.

## Persistent state
`D:\source\repos\laptop` is the source of truth.
Before research read constraints, decisions, protocol and candidates.
After research update candidates, sources, decisions and changelog.
Do not rely on conversation memory when repository state exists.
