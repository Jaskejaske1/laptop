# Wegwijzer door het laptoponderzoek

Deze map is de actuele, persistente kennisbank. Begin nooit in `archive/` of in een oud rapport.

## Voor een mens die voor het eerst instapt

1. Lees [`current.md`](current.md): opdracht, actuele kandidaten en open vragen in vijf minuten.
2. Lees [`constraints.md`](constraints.md): wat hard vereist is en wat slechts voorkeur is.
3. Bekijk [`candidates/index.md`](candidates/index.md): alle onderzochte toestellen en hun huidige status.
4. Open alleen de kandidaat die je interesseert. De YAML-header verwijst naar relevante aanbiedingen (`offer_ids`) en bronnen (`source_ids`).

## Voor een AI- of researchagent

Lees verplicht, in deze volgorde:

1. [`current.md`](current.md)
2. [`constraints.md`](constraints.md)
3. [`protocol.md`](protocol.md)
4. [`candidates/index.md`](candidates/index.md)

Volg daarna [`../AGENTS.md`](../AGENTS.md). Schrijf nieuwe informatie nooit alleen in een chatantwoord: werk het passende kandidaat-, offer- en bewijsrecord bij en voer de validator uit.

## Wat staat waar?

| Pad | Betekenis | Actueel schrijftarget? |
|---|---|---|
| `current.md` | Compacte actuele waarheid en eerstvolgende taken | ja |
| `constraints.md` | Normatieve eisen en voorkeuren | alleen bij echte voorkeurwijziging |
| `protocol.md` | Onderzoeksmethode en bewijsregels | alleen bij proceswijziging |
| `candidates/index.md` | Compact register van alle kandidaten | ja, bij kandidaatwijziging |
| `candidates/laptop-a/` | Individuele Laptop-A-records | ja |
| `candidates/laptop-b/` | Individuele Laptop-B-records | ja |
| `candidates/exclusions/` | Bewaarde koperuitsluitingen | ja; nooit verwijderen |
| [`offers/index.md`](offers/index.md) en `offers/<verkoper>/` | Wegwijzer plus prijs, voorraad, regio, keyboard en support van één transactie | ja |
| `evidence/devices/` | Apparaat-/chassismetingen en duurzame dossiers | ja |
| `evidence/vendors/` | Verkoop- en supportbewijs | ja |
| `evidence/topics/` | Vergelijkingen en thematisch bewijs | ja |
| `evidence/index.md` | Register van alle stabiele `SRC-xxxx`-IDs | ja |
| `decisions/current.md` | Alleen beslissingen die nu gelden | ja |
| [`history/README.md`](history/README.md) en `history/decisions.md` | Historiewegwijzer en volledige beslissingschronologie | alleen append |
| `history/changelog.md` | Wat veranderde en waarom | alleen append |
| `history/reports/` | Superseded rapporten en momentopnamen | nee, behalve nieuwe snapshot |
| `archive/` | Byte-identieke herstelkopie van vóór refactor | **nooit** |

## Statuswoorden

- `shortlist`: voldoet voldoende om serieus te overwegen; geen automatische winnaar.
- `verifying`: belangrijk bewijs of transactiedetail wordt nog gesloten.
- `conflict`: betrouwbare bronnen spreken elkaar tegen; niet finaal ranken.
- `watchlist`: interessant, maar nog geen huidige geldige kooptransactie.
- `rejected`: technisch of commercieel afgewezen; dossier blijft bestaan.
- `buyer-excluded`: koper wil dit traject niet, los van technische kwaliteit.
- `reference`: vergelijking of context, geen actieve koopkandidaat.
- `discovery`: vroeg spoor met nog onvoldoende bewijs.

Bewijslabels: `PROVEN`, `LIKELY`, `UNKNOWN`, `SUBJECTIVE` en `CONFLICT`. Zie [`protocol.md`](protocol.md) voor de precieze toepassing.

## Datamodel in één zin

Een **kandidaat** beschrijft het apparaat; een **offer** beschrijft een actuele kooproute; een **source** beschrijft het bewijs. Prijs of keyboard hoort dus nooit alleen in een familiedossier zonder exacte regionale aanbieding.

## Integriteitscontrole

Na iedere substantiële wijziging:

```powershell
powershell -File tools/validate-research.ps1
```

Een aanbeveling wordt pas afgegeven wanneer deze controle slaagt.
