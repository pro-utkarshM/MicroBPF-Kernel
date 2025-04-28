# MicroBPF-Kernel Weekly Timeline (July 2025 – January 2026)

## Phase 1: Bootstrap Kernel (July 1 – July 31, 2025)

| Week | Tasks |
|:----:|:------|
| Week 1 (July 1–7) | Set up project repository, clone references, analyze mini-riscv-os boot process. |
| Week 2 (July 8–14) | Implement bootloader and basic memory initialization. |
| Week 3 (July 15–21) | Integrate UART drivers from tinyos and create basic Makefiles. |
| Week 4 (July 22–28) | Implement timer and interrupt handling from riscv-os, test basic output on QEMU. |

**Goal:** Ensure minimal kernel boots and outputs to UART in QEMU.

---

## Phase 2: Core Kernel Development (August 1 – August 31, 2025)

| Week | Tasks |
|:----:|:------|
| Week 5 (August 1–7) | Design the basic kernel architecture, including microkernel structure, eBPF hooks, and unikernel model. |
| Week 6 (August 8–14) | Implement simple task switching (single-threaded scheduler). |
| Week 7 (August 15–21) | Integrate memory protection features from seL4 (simplified version). |
| Week 8 (August 22–31) | Refactor and clean up boot code, begin internal documentation. |

**Goal:** Complete the core kernel structure.

---

## Phase 3: eBPF Engine Prototype (September 1 – September 30, 2025)

| Week | Tasks |
|:----:|:------|
| Week 9 (September 1–7) | Study the µBPF paper and design the eBPF virtual machine architecture. |
| Week 10 (September 8–14) | Implement the basic eBPF interpreter (no verifier). |
| Week 11 (September 15–21) | Implement the eBPF program loader within the kernel. |
| Week 12 (September 22–30) | Attach eBPF hooks to timer and interrupt events for basic functionality. |

**Goal:** Run simple eBPF programs inside the kernel.

---

## Phase 4: Unikernel Transformation (October 1 – October 31, 2025)

| Week | Tasks |
|:----:|:------|
| Week 13 (October 1–7) | Design the removal of multi-process assumptions and flatten services. |
| Week 14 (October 8–14) | Remove filesystem dependencies to create a pure in-memory unikernel. |
| Week 15 (October 15–21) | Optimize boot time (target: boot to UART output under 100ms). |
| Week 16 (October 22–31) | Run full unikernel builds and test cycle on QEMU. |

**Goal:** Achieve full unikernel functionality.

---

## Phase 5: Formal Verification Preparation (November 1 – November 30, 2025)

| Week | Tasks |
|:----:|:------|
| Week 17 (November 1–7) | Add comments and documentation for critical code paths. |
| Week 18 (November 8–14) | Identify and prepare core modules for formal verification. |
| Week 19 (November 15–21) | Begin writing formal specifications and annotations for critical modules. |
| Week 20 (November 22–30) | Set up basic formal verification tools (e.g., Isabelle/HOL). |

**Goal:** Prepare the codebase for formal verification.

---

## Phase 6: Developer Preview Release Preparation (December 1, 2025 – January 15, 2026)

| Week | Tasks |
|:----:|:------|
| Week 21 (December 1–7) | Final cleanup of codebase, fix memory bugs, add debugging helpers. |
| Week 22 (December 8–14) | Prepare example eBPF programs for demonstration. |
| Week 23 (December 15–21) | Freeze the codebase for Developer Preview 1. |
| Week 24–26 (December 22 – January 15) | Conduct final testing, create documentation, prepare GitHub release. |

**Goal:** Release MicroBPF-Kernel Developer Preview v0.1.

---

# Overall Timeline Snapshot

| Month | Focus |
|:-----:|:------|
| July 2025 | Boot and minimal kernel setup |
| August 2025 | Core microkernel development |
| September 2025 | eBPF integration |
| October 2025 | Unikernel refactor |
| November 2025 | Formal verification preparation |
| December 2025 – January 2026 | Testing, freeze, and first public release |

---

This timeline outlines the major tasks and goals for developing **MicroBPF-Kernel**, with milestones aimed at delivering the first developer preview by **January 2026**. 
