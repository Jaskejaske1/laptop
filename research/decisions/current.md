# Actieve duurzame beslissingen

Laatst verzoend: 2026-08-14. De volledige chronologie staat in [`../history/decisions.md`](../history/decisions.md).

## Aankoopstrategie

- Laptop B wordt eerst en voorlopig als enige laptop gekocht. De bestaande EliteBook 850 G6 vervult tijdelijk Laptop A.
- Het support-adjusted plafond voor B is EUR 4444,17. Onder dat plafond moet een alternatief aantoonbaar een betere totale oplossing vormen dan de Dell Pro Max 18 Plus `2H3VJ`.
- De koper zoekt workstationachtige robuustheid, niet noodzakelijk een workstationlabel. GeForce, RTX PRO en AMD zijn technisch toegestaan.

## Technische grenzen

- Full-power B blijft verplicht: RTX 5080/5090 op 175W of een sterke RTX 5070 Ti op 140W.
- Core Ultra 9 275HX is toegestaan. Een 2025 RTX-50-platform wordt niet alleen vanwege het modeljaar afgewezen.
- DCI-P3 is de B-doelruimte. Matte IPS of Mini-LED past het zevenjaarsdoel beter; OLED blijft mogelijk wanneer prijs en overige voordelen het statische-UI/burn-inrisico rechtvaardigen.
- Twee RAM-slots, twee M.2-slots, minimaal 32GB/1TB en drie jaar reparatiedekking blijven verplicht.
- RJ45 is een sterke voorkeur, geen absolute poortgate. Duits QWERTZ blijft uitgesloten.

## Gebruikservaring en robuustheid

- Robuustheid betekent samen: stabiele gewone Optimus/MSHybrid, betrouwbare drivers, gedisciplineerde BIOS-updates, duurzame hardware, reparatiemogelijkheden en bruikbare support.
- Advanced Optimus is geen bonus of vereiste; stabiele gewone Optimus is voldoende.
- Touchpadmateriaal is neutraal. Grootte, glide, tracking, palm rejection en klikconsistentie tellen. De Dell-referentie is 133x90mm.
- Na de harde performance/stabiliteitsgates wegen touchpad, batterij en repairability even zwaar.
- De koper hoeft geen nieuwe laptop te benchmarken om een onderzoeksgebrek op te lossen. Alleen normale ontvangstcontrole is redelijk.

## Actuele kandidaatbeslissingen

- ASUS Strix G16 `G615LW-S5058W` blijft `shortlist` en is de schoonste rationele 5080-kandidaat. De actuele budgetroute is EUR 3099 voor 32GB DDR5-5600/1TB Gen4; de maximale reproduceerbare Belgische onder-plafondroute is EUR 4408,58 voor 64GB DDR5-5600 CL40 en 5TB totaal. Een 64GB/6400 CL52-route is alleen `LIKELY` voor de exacte Belgische SKU en niet automatisch sneller; interne Gen5-snelheid wordt niet geclaimd. De tweede 4TB SSD blijft `LIKELY` compatibel maar niet exact-SKU-gegarandeerd door ASUS.
- De Strix is voor de benoemde workloads purchase-suitable: grandMA3 en Capture worden ruim gedekt, lichte gaming is overprovisioned en 275HX/5080 past development/rendering. De beslissende capaciteitsvraag is of 64GB genoeg blijft voor de beoogde VM-dichtheid; 5090/24GB is alleen rationeel bij aantoonbare >16GB-VRAM-workloads.
- ASUS SCAR 16 5080 `G635LW-RW089W` blijft `conflict`: uitzonderlijk goede hardware, maar het exacte BIOS/externe-monitor/dGPU-pad is niet voldoende gesloten. G-Helper vermindert Armoury-Crate-frictie maar repareert geen firmware.
- De SCAR is geen fundamenteel zwaarder platform dan de gewone 2025 Strix: bij 275HX/RTX 5080 delen ze de chassisarchitectuur en 175W-GPUgrens. De ongeveer EUR 550 Belgische meerprijs koopt vooral Mini-LED-HDR, per-key/decoratieve verlichting, 1TB extra fabrieksopslag en kleine verfijningen; niet meer GPUvermogen, een volledig metalen chassis of betere support.
- MSI Raider 5090 `B2WJ-039BE` blijft `conflict`: enige huidige support-adjusted 5090 onder budget en goede batterij, maar exacte BE CPU/paneelmetadata moeten eerst sluiten.
- PCSpecialist Recoil IV 16 wordt `verifying`: de live EUR 4232-route met 290HX Plus, 175W RTX 5090, 64GB-6400, 2TB, Mini-LED P3, aluminium, groot glazen touchpad en BE AZERTY is de sterkste papieren hardwarewaarde. Hij is nog niet purchase-eligible omdat een exacte onafhankelijke review ontbreekt en Gold in jaar drie geen onderdelen/ophaling dekt.
- MSI Raider 5080 `B2WI-035BE` blijft value-shortlist, niet premium winnaar.
- SCAR 5090 `G635LX-RW042W` is bij de live EUR 4899 afgewezen op prijs. De EUR 4287-cache is superseded.
- XMG E25 blijft `buyer-excluded` wegens lifecycle/connectiviteit, niet wegens bewezen instabiliteit of slechte touchpad.
- Dell `2H3VJ` blijft de fallback en vergelijkingsbaseline, niet een geïdealiseerd foutloos toestel.

## Onderzoeksregels

- Een nieuwe mens of agent begint bij `README.md` en `research/README.md`; een actieve researchrun leest daarna verplicht `current.md`, `constraints.md`, `protocol.md` en `candidates/index.md`. Oude prompts en `history/reports/` zijn context, geen actuele waarheid.
- Exacte regionale SKU's blijven geïsoleerd. Een prijs, toetsenbord of paneel uit een andere regio mag niet worden overgedragen.
- `UNKNOWN` en `CONFLICT` worden niet gladgestreken. Een kritieke conflictstatus verhindert een definitieve winnaarpositie.
- Nieuwe feiten wijzigen eerst bewijs en kandidaatdossier, daarna deze actuele beslissing, vervolgens de chronologie en changelog.
