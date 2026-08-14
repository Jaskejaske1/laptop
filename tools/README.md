# Hulpmiddelen

`validate-research.ps1` is de alleen-lezen integriteitscontrole van de kennisbank. Het script controleert onder andere:

- de onaangetaste pre-refactor snapshot en SHA-256-manifest;
- unieke kandidaat-, offer- en bron-ID's;
- verplichte metadata en geldige statussen;
- bestaande interne verwijzingen;
- minimale Laptop-A/Laptop-B-velden;
- behoud van historische beslissingen, changelog en dossiers.

Uitvoeren vanuit de repositoryroot:

```powershell
powershell -File tools/validate-research.ps1
```

Het script wijzigt niets. Een aanbeveling mag pas worden afgegeven na `VALIDATION_OK`.

