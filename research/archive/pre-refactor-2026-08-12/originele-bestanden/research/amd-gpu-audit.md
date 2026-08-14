# AMD GPU audit — desktop, laptop and workload fit

Last updated: 2026-08-12

## Current product shape

- AMD's current desktop gaming family is Radeon RX 9000 / RDNA 4.
- AMD's own current laptop-gaming page still enumerates Radeon RX 7000M/7000S on RDNA 3, headed by RX 7900M with 72 compute units and 16 GB GDDR6. No official RX 9000M gaming family was found.
- Therefore AMD's latest desktop competitiveness must not be transferred to laptop availability or performance. The discrete gaming-laptop portfolio is older and sparsely represented by current OEM systems.

## Modern integrated route

- Ryzen AI 300 supplies capable RDNA 3.5 iGPUs such as Radeon 890M for efficient daily laptops.
- Ryzen AI Max+ PRO 395 / Strix Halo combines 16 Zen 5 cores with Radeon 8060S (40 graphics cores/CUs), a 45–120 W package, 256-bit LPDDR5X and up to 128 GB unified memory.
- The ASUS Flow Z13 demonstrates the 8060S route in a real system and compares it with RX 7600S-class dedicated graphics. It is an unusually powerful and memory-flexible iGPU, not evidence of RTX 5070 Ti/5080-class sustained performance.
- For this two-laptop project, 8060S systems are conceptually interesting single-device/compact-workstation challengers but do not replace B's full-power RTX requirement, expansion, RJ45 and large-chassis cooling criteria.

## Software compatibility

- Capture 2026 requires DirectX 11.1, accepts AMD drivers and its staff documentation says Capture does not favour Nvidia or AMD; raw GPU performance is the main concern.
- grandMA3 onPC accepts any hardware-accelerated OpenGL 4.1 GPU and comparable AMD CPUs. Its current requirements page still warns about a specific old Radeon 22.11.2 driver problem; this is historical version-specific evidence, not proof that current Radeon drivers are generally defective.
- Depence lists a dedicated DirectX 11 Nvidia or AMD GPU with at least 6 GB as minimum, but explicitly recommends Nvidia RTX 4080/4090 for high-end use.
- Blender supports AMD HIP and HIP RT as well as Nvidia CUDA/OptiX. AMD can render in Cycles, but CUDA/OptiX-only applications or plugins remain Nvidia-only by definition.
- AMD's current Windows HIP SDK matrix officially supports Ryzen AI Max 300 APUs, but does not list RX 7000M laptop dGPUs. AMD states unlisted hardware is not officially supported. This is a material risk for general local AI/GPU-compute use even though individual applications such as Blender bundle their own supported HIP path.

## Buying conclusion for this project

- AMD Radeon is viable for ordinary gaming, Capture and Blender HIP when the exact application path is validated.
- Radeon 890M is highly relevant to Laptop A because it offers strong integrated graphics without a dGPU; Radeon 8060S is a special higher-power unified-memory class.
- A discrete Radeon laptop is not currently a rational Laptop B substitute: there is no current official RDNA 4 gaming-laptop family, OEM choice is sparse, compute/software support is less universal, and no exact Belgian AMD-dGPU model has cleared the required full-P3/RJ45/HX/cooling/review gates.
- Retain Nvidia RTX 5070 Ti 140 W / RTX 5080 175 W as B's target. This is a workload-and-market conclusion, not a claim that Radeon hardware or drivers are universally poor.
