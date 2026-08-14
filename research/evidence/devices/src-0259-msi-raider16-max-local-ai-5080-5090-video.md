---
id: SRC-0259
record_type: source
checked_at: "2026-08-13"
subject: "Alex Ziskind/AZisk MSI Raider 16 Max HX RTX 5080 versus RTX 5090 local-AI video comparison"
region: "review units; regional SKU and commercial terms not transferable"
source_type: "user-supplied video transcript / specialist practical test"
exact_sku: "Raider 16 Max HX B2WI 5080 and B2WJ 5090 same-current chassis"
evidence_label: "PROVEN reported workload results / methodology, sponsorship and thermal logging partly UNKNOWN"
legacy_origin: "user-supplied video transcript 2026-08-13"
---

# Alex Ziskind/AZisk Raider 16 Max HX 5080/5090 local AI comparison — SRC-0259

## Source

- User-supplied transcript of Alex Ziskind/AZisk video indexed as `Et-YhlFGFac`: https://www.youtube.com/watch?v=Et-YhlFGFac
- Search-index summary: https://skip.watch/en/read?v=Et-YhlFGFac

## Evidence

The reviewer operated otherwise matching Raider 16 Max HX units with RTX 5080 16GB and RTX 5090 24GB. Small quantized models that fit wholly within 16GB produced similar generation rates: about 151 versus 146 tokens/s for the reported Qwen 4B case and 61 versus 64 tokens/s for Gemma 12B. A local image-to-video job reportedly took about four minutes on the 5080 and three and a half minutes on the 5090. These results support that the 5080 is not materially impaired for fitting workloads, while normal benchmark variance can outweigh small core-count differences.

The decisive separation appeared when model plus context exceeded 16GB. A roughly 18.6GB 4-bit coding model with large context spilled from the 5080 into system memory/CPU and slowed sharply, while the 24GB 5090 kept it in VRAM and could be more than twice or three times as fast in some larger-model cases. The technically correct conclusion is therefore not that the GPUs differ only in VRAM: the 5090 also has more compute resources, but its 24GB capacity is the dominant practical advantage once a workload crosses the 16GB residency boundary.

Both machines reportedly completed Ollama, LM Studio/llama.cpp, VS Code/Continue, ComfyUI image generation and WAN video generation without operational hiccups. This is useful same-chassis corroboration for CUDA compatibility, upgrade access and short practical stability. It is not a controlled long-duration stability, temperature or acoustics test: the transcript provides no thermal logs, calibrated noise readings, multi-hour soak duration or disclosed sponsorship/test-unit conditions.

For the stored lighting/video/VM/gaming use case, the 5080's 16GB remains the rational floor and the 5090 is not justified solely as generic future-proofing. The 5090 becomes materially valuable if local 27B–35B models with large context, VRAM-heavy generative video, or scenes known to exceed 16GB are an intended regular workload. System RAM should still be upgraded to at least 64GB for VMs and any deliberate GPU-offload fallback.
