---
id: SRC-0256
record_type: source
checked_at: "2026-08-13"
subject: "Dell 2H3VJ performance baseline versus full-power RTX 5080"
region: "exact Dell offer plus cross-system measured GPU evidence"
source_type: "manufacturer specifications and professional benchmarks"
exact_sku: "Dell 2H3VJ comparator; MSI B2WI-035BE challenger"
evidence_label: "PROVEN architecture/measurements; exact Dell sustained score remains UNKNOWN"
legacy_origin: "Laptop-B Dell-reference rebaseline 2026-08-13"
---

# Dell 2H3VJ performance baseline — SRC-0256

## Sources

- https://www.dell.com/support/manuals/en-us/dell-pro-max-mb18250-laptop/dell-pro-max-18-plus-mb18250-owners-manual/gpudiscrete?guid=guid-48cc51b3-3040-4623-b990-049a6850b2bf&lang=en-us
- https://www.notebookcheck.net/This-laptop-is-a-local-AI-monster-Lenovo-ThinkPad-P16-Gen-3-review.1221962.0.html
- https://www.notebookcheck.net/Nvidia-GeForce-RTX-5080-Laptop-Benchmarks-and-Specs.934946.0.html
- https://www.cpubenchmark.net/compare/7148vs6708/Intel-Ultra-9-290HX-Plus-vs-Intel-Ultra-7-265HX

## Evidence

Dell confirms that `2H3VJ`'s RTX PRO 3000 class has 12GB GDDR7. NVIDIA's professional line card identifies 5888 CUDA cores and 672GB/s memory bandwidth for RTX PRO 3000 Blackwell; RTX 5080 Laptop has 8192 cores, 16GB and 896GB/s. A measured 105W RTX PRO 3000 workstation scored 14,579 in 3DMark Time Spy, while Notebookcheck's RTX 5080 Laptop population averages about 19,569 and reaches about 22,000 in full-power systems. These are not an exact same-chassis A/B test, but the architecture, VRAM and measured class gap establish a substantial graphics headroom for a properly sustained 175W RTX 5080.

The 290HX Plus also has a higher measured CPU class than the 265HX; PassMark's current aggregate is about 25% higher multi-threaded. Exact application gains vary, and the Dell's ISV-certified professional driver, ECC VRAM and enterprise support remain separate advantages that gaming benchmarks do not replace.

Because the exact `2H3VJ` sustained GPU score is still UNKNOWN, use a conservative wording: the MSI is demonstrably the stronger raw CPU/GPU configuration and is expected to win materially in GeForce/CUDA/rendering/gaming workloads, but exact workload percentages against `2H3VJ` are not PROVEN.
