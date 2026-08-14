# Research protocol

## Discovery before ranking
Build broad chassis-family sets first; do not jump straight to combinations.

## Comparison without pseudo-precision
Do not assign composite numeric scores or star ratings to candidates unless the number is a directly cited measurement from a named source. Chassis quality, input quality, support, acoustics and repairability are not commensurable measurements and must not be collapsed into an apparently objective `x/10`.

Use instead:
- measured values with units and test mode;
- categorical evidence labels (`PROVEN`, `LIKELY`, `UNKNOWN`, `SUBJECTIVE`, `CONFLICT`);
- a side-by-side delta against the Dell baseline;
- an explicit statement of what extra money buys and which trade-offs remain.

Reviewer scores may be recorded as that reviewer's verdict, but never averaged or used as the repository's own ranking formula.

## Evidence hierarchy
1. primary manufacturer/service documentation
2. exact-model professional measurement review
3. same-current-chassis review
4. reputable retailer for SKU/price/layout only
5. forums/user reports only for recurring-pattern discovery

## Regional identity
Record chassis family, regional exact SKU, part number, EAN, country/market, seller.
Do not transfer price, keyboard or stock between regions.

## Price validation
Final-candidate price must be exact SKU/config, current, VAT-inclusive, available to Belgium, trustworthy seller.
`Starting at` / `vanaf` is discovery-only.

## Family-spec warning
`Up to 32 GB`, `up to Ryzen AI 7`, `up to OLED` may belong to mutually exclusive SKUs.
Never synthesize them into an imaginary configuration.

For Lenovo, use PSREF as the primary official family/configuration source. A PSREF family sheet enumerates possibilities but is not proof that CPU, panel, battery and memory maxima coexist. Map every serious candidate to an exact regional MTM/configurator order code before price ranking.

## Critical unknown rule
A critical UNKNOWN prevents strong ranking when a well-validated competitor exists.
Examples:
- no independent B thermals -> WATCHLIST, not winner
- unknown keyboard -> cannot be final pair
- unknown display gamut -> cannot be final pair if full-sRGB is required

## Source contradiction
Use `CONFLICT` until resolved. Do not guess.

## User reports
Single complaint = anecdote.
Repeated independent same-generation pattern = signal.
Do not generalize across generations without evidence.

## Final result gates
All requested winner combinations must be <= €4444.
If none qualifies, say so.

## Persistence
Never delete rejected candidates. Keep rejection reason and reconsideration conditions.

## Research ownership
Public manufacturer pages, regional product databases, retailer transactions, professional reviews, firmware/support documentation and reputable issue-pattern research are the research agent's responsibility. Do not turn unresolved public-web fields into a shopping list for the buyer. Ask the buyer only for a genuinely personal trade-off, evidence hidden behind the buyer's authenticated checkout/account, or a physical label/receipt that cannot be obtained independently.

Use the normalized repository model:
- device/candidate dossiers hold product identity and assessment;
- offer dossiers hold seller, exact regional transaction, price, stock, keyboard and support;
- evidence records hold one source each with a stable `SRC-xxxx` identifier;
- `current.md` and `decisions/current.md` hold current truth;
- `history/` preserves superseded reasoning and the changelog;
- `archive/` is recovery-only and must not be edited or treated as current evidence.

Run `powershell -File tools/validate-research.ps1` after material research updates.
