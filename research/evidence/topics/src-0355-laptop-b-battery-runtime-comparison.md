---
id: SRC-0355
record_type: source
checked_at: "2026-08-14"
subject: "Battery-runtime comparison of current Laptop B contenders"
region: "review chassis; exact Belgian SKU transfer labelled"
source_type: "cross-review synthesis with protocol separation"
exact_sku: "multiple"
evidence_label: "PROVEN measured runtimes; cross-protocol ranking bounded"
legacy_origin: "buyer-requested battery comparison after Lenovo touchpad exclusion"
---

# Laptop B battery-runtime comparison — SRC-0355

Battery capacity and test duration are kept separate. Video loops, controlled WLAN tests, office workloads and maximum-brightness tests are not averaged into one artificial number.

| Platform | Battery | Independent evidence | Controlled interpretation |
|---|---:|---|---|
| XMG NEO 16 E25 | 99.8Wh | 9h32 WLAN at 150 nits; 3h53 at maximum brightness | Best measured 16-inch finalist endurance; deliberate iGPU/profile management required. |
| Dell Pro Max 18 Plus | 96Wh | 9h20 WLAN in iGPU/Balanced on RTX Pro 5000 review chassis | Excellent for 18 inches; LIKELY rather than exact 2H3VJ proof. |
| MSI Raider 16 Max HX | 91.8Wh | 7h52 controlled Wi-Fi; 8h34 video; other office protocols 3–4h | Potentially good, but results are unusually protocol-sensitive. Expect approximately 4–7h normal light work, not a guaranteed eight-hour day. |
| AORUS Master 16 AM6H | 99Wh | corrected retest 6h44 WLAN; 5h02 mixed; 2h15 maximum-brightness office | Workable, not all-day; early poor result improved after updates. |
| ASUS Strix G16 G615 | 90Wh | 6h28 video at 180 nits/Silent on a 5070 Ti review unit | Good class result, but video playback is not web/office and exact 5080 transfer is LIKELY. |
| ASUS SCAR 16 G635 | 90Wh | 6.5h comparable WLAN same chassis; exact RTX-5080 early-software review about 4–5h text/web and 3h with RGB active | Roughly 4–6h light real use; software/profile state materially changes outcome. |
| PCSpecialist Recoil III reviewed AMD chassis | 99Wh | 376min light, 282min mixed, 93min full load | Approximately 6h16 light and 4h42 mixed; Intel basket transfer is LIKELY only. |
| Lenovo Legion Pro 7i | 99.9Wh | 5h23 WLAN in one review; about 3–4h document/browsing in others | Weak-to-mediocre for the capacity; excluded independently on touchpad. |
| HP OMEN Max 16 | 83Wh | about 3h20 web and 5h30 video | Weak mobility. |

Gaming/rendering on battery is not a meaningful selection metric: every contender heavily reduces GPU power and generally lasts around one to one-and-a-half hours under full load. Main adapters remain mandatory for Laptop B performance.

## Main sources

- Dell Pro Max 18 Plus: https://www.notebookcheck.net/Dell-Pro-Max-18-Plus-review-18-inch-workstation-powered-by-USB-C.1163836.0.html
- ASUS Strix G16: https://laptopmedia.com/review/asus-rog-strix-g16-g615-2025-review-best-in-class-display-cpu-and-gpu-performance-and-battery-and-one-secret/
- Remaining measurements are consolidated from `SRC-0341`, `SRC-0344`, `SRC-0345`, `SRC-0351`, `SRC-0352` and exact candidate dossiers.
