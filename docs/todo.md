# MicroBPF-Kernel TODO.md

## Phase 1: Bootstrap from References

- [ ] Adapt **bootloader and memory initialization** from [mini-riscv-os](https://github.com/cccriscv/mini-riscv-os).
- [ ] Integrate **basic interrupt and timer handling** from [riscv-os](https://github.com/peiyuanix/riscv-os).
- [ ] Port **UART and serial communication drivers** from [tinyos](https://github.com/Archfx/tinyos).
- [ ] Reuse and optimize **memory management techniques** from [riscv-os](https://github.com/peiyuanix/riscv-os).
- [ ] Create minimal **build scripts** (`Makefile`) and **QEMU launch scripts**.
- [ ] Test basic kernel boot + UART output on QEMU (hello world stage).

---

## Phase 2: Core Kernel Development

- [ ] Design system architecture diagram (seL4 + eBPF + Unikernel layers).
- [ ] Integrate **seL4 core kernel components** (or lightweight compatibility if not directly integrating).
- [ ] Implement **early memory protection** (seL4 principles).
- [ ] Setup **basic scheduling** (one task → extendable to multiple tasks later).

---

## Phase 3: eBPF Engine Integration

- [ ] Design **minimal eBPF virtual machine** (interpreter first, JIT later).
- [ ] Implement **eBPF program loading** interface inside the kernel.
- [ ] Add **basic verifier** to validate eBPF programs before execution.
- [ ] Create **hook points** inside kernel subsystems (e.g., timer events, UART RX, syscalls).

---

## Phase 4: Unikernel Transformation

- [ ] Flatten kernel image (no dynamic loading, all services statically linked).
- [ ] Remove dependency on external filesystems (use in-memory data).
- [ ] Optimize kernel for **single process, single address space** operation.
- [ ] Reduce boot time (target <100ms on QEMU).

---

## Phase 5: Formal Verification Readiness

- [ ] Apply **coding style restrictions** to support formal proofs (no undefined behaviors, strict memory safety).
- [ ] Annotate critical sections for later verification (e.g., memory allocators, scheduler, eBPF engine).
- [ ] Set up **Isabelle/HOL** or formal modeling tools (stretch goal).

---

## Phase 6: Hardware Bring-Up

- [ ] Test kernel on real RISC-V boards (e.g., SiFive HiFive Unmatched, VisionFive 2).
- [ ] Add support for parsing a minimal **Flattened Device Tree (FDT)**.
- [ ] Add board-specific UART and timer drivers if needed.

---

## Stretch Goals (Post v1.0)

- [ ] Add **networking stack** with eBPF filters.
- [ ] Implement **dynamic resource management** (small task spawning based on eBPF decisions).
- [ ] Support **multi-core RISC-V** (SMP) systems.
- [ ] Develop **eBPF JIT compiler** for RISC-V targets.

---

# Timeline Sync (Reference)

| Milestone | Target Date | Description |
|:----------|:------------|:------------|
| Phase 1 + Phase 2 Complete | September 2025 | Minimal bootable kernel |
| Phase 3 eBPF Integration | November 2025 | Basic eBPF functionality |
| Phase 4 Developer Preview | January 2026 | Unikernel image ready |
| Phase 5 Verification Workflows | March 2026 | Early proof hooks |
| Phase 6 Hardware Testing | March 2026+ | Bring-up on real boards |

---

> _MicroBPF-Kernel — Securing the Edge, One Verified Instruction at a Time._

---
