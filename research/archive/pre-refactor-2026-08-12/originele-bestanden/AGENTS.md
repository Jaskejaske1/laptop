# Instructions for research agents

Dit repository bewaart een langdurig laptopmarktonderzoek. Behandel de bestanden onder `research/` als persistente state.

## Verplichte werkwijze

Lees vóór iedere nieuwe zoekactie:
- `research/constraints.md`
- `research/decisions.md`
- `research/protocol.md`
- `research/candidates.md`

Werk bestaande conclusies niet stilzwijgend tegen. Wanneer nieuw bewijs een eerdere conclusie wijzigt:
1. noteer het nieuwe bewijs;
2. wijzig de status expliciet;
3. leg de reden vast in `research/changelog.md`;
4. behoud de historische reden waarom de oude conclusie bestond.

## Regionale SKU-isolatie

Een US-, UK-, DE-, FR-, NL- of BE-SKU is een afzonderlijke koopbare configuratie.

Verboden:
- prijs van regio A koppelen aan SKU/specs van regio B;
- keyboardlayout extrapoleren tussen regio's;
- US MSRP gebruiken als Belgische prijs;
- een review-SKU stilzwijgend gelijkstellen aan een andere regionale SKU.

Chassisdata mag alleen worden overgedragen wanneer dezelfde huidige chassisgeneratie aantoonbaar wordt gebruikt; label dit dan LIKELY, niet PROVEN voor de exacte SKU.

## 'Vanaf'-prijsregel

Een fabrikantprijs met woorden als `vanaf`, `from`, `starting at` of een configurator-basisprijs mag NOOIT worden gekoppeld aan de maximaal genoemde familie-specificaties.

Een prijs is pas bruikbaar voor budgetoptimalisatie wanneer:
- de exacte SKU/configuratie bekend is;
- RAM, SSD, CPU, display en keyboard van die koopbare configuratie bekend zijn;
- de verkoper die configuratie daadwerkelijk voor dat bedrag aanbiedt.

## Recommendation eligibility gate

Een kandidaat mag niet als winnaar, 'beste value', 'definitieve aanbeveling' of geldige top-3 combinatie worden gepresenteerd zolang kritieke velden ontbreken.

Laptop A kritieke velden:
- exacte koopbare BE/EU SKU;
- actuele totale prijs;
- fysieke keyboardlayout;
- minimaal 32 GB RAM;
- minimaal 1 TB SSD;
- geen dGPU;
- display-gamut minimaal ongeveer 100% sRGB;
- onafhankelijke of anders duidelijk gelabelde batterijdata;
- bruikbare touchpad/keyboard-evidence.

Laptop B kritieke velden:
- exacte koopbare BE/EU SKU;
- actuele totale prijs;
- fysieke keyboardlayout;
- RTX 5070 Ti 12 GB of beter;
- minimaal 32 GB RAM of direct rationeel upgradepad;
- minimaal twee bruikbare M.2-slots;
- display-gamut minimaal ongeveer 100% sRGB;
- officiële GPU-TGP;
- onafhankelijke thermische/noise/performance-review van exact chassis;
- sustained GPU-power: PROVEN of expliciet UNKNOWN;
- DPC/LatencyMon: PROVEN of expliciet UNKNOWN.

UNKNOWN mag bestaan, maar kritieke UNKNOWNs moeten een kandidaat uit een definitieve winnaarpositie houden wanneer een concurrerende kandidaat wel voldoende bewijs heeft.

## Contradiction gate

Wanneer twee bronnen of eerdere notities elkaar tegenspreken:
- stop met ranken;
- markeer het veld `CONFLICT`;
- zoek primaire bron of exactere review;
- los het conflict op of laat het UNKNOWN.

Nooit een gemiddelde, gok of 'waarschijnlijk' gebruiken om een conflict te verbergen.

## User preference versus technical evidence

Bewaar deze categorieën apart.

Voorbeelden:
- `MSI excluded by buyer preference` is geen technisch bewijs dat alle MSI-laptops slecht zijn.
- `Acer excluded by buyer preference` is geen claim over de kwaliteit van ieder Acer-model.
- Een slechte review van één HP OMEN-generatie bewijst niets over alle HP-laptops.

## Bewijslabels

- PROVEN — primaire bron of betrouwbare exacte meting.
- LIKELY — sterk bewijs voor dezelfde huidige chassisgeneratie, niet exact dezelfde SKU.
- UNKNOWN — onvoldoende betrouwbare informatie.
- SUBJECTIVE — ergonomische/reviewerervaring.
- CONFLICT — bronnen spreken elkaar nog tegen.

## Documentatieplicht

Na onderzoek:
- nieuwe kandidaten -> `research/candidates.md`
- bronnen -> `research/sources.md`
- nieuwe duurzame conclusie/preference -> `research/decisions.md`
- wijziging van eerdere conclusie -> `research/changelog.md`
- afgewezen kandidaat -> behoud in candidate ledger met reden, verwijder hem niet
