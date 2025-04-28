# MicroBPF-Kernel  
**(Development starts after July 1, 2025)**

> A formally verified, eBPF-enabled unikernel microkernel for RISC-V IoT and edge devices.

---

## Overview
**MicroBPF-Kernel** brings together the formal verification of **seL4**, the performance efficiency of **Unikraft** unikernels, and the dynamic programmability of **eBPF**, all tailored for single-core RISC-V systems.

Built for the next generation of IoT and edge computing, MicroBPF-Kernel aims to deliver **security, flexibility, and speed**—without compromise.

---

## Features
- **Formally Verified**  
  Powered by seL4 to ensure memory safety, strong isolation, and system integrity.

- **Unikernel-Based Deployment**  
  Designed for minimal resource consumption with ultra-fast boot times.

- **eBPF Extensibility**  
  Enabling dynamic, real-time in-kernel enhancements for networking, security, observability, and more.

---

## Getting Started
Follow these steps to set up the development environment:

1. **Install dependencies**:  
   ```bash
   sudo apt-get install riscv64-unknown-elf-gcc qemu-system-riscv64
   ```

2. **Clone the repository**:  
   ```bash
   git clone https://github.com/pro-utkarshM/MicroBPF-Kernel.git
   cd MicroBPF-Kernel
   ```

3. **Build the project**:  
   ```bash
   make all
   ```

4. **Run using QEMU**:  
   ```bash
   make run
   ```

---


## License
This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for full license information.

---

> _MicroBPF-Kernel — Securing the Edge, One Verified Instruction at a Time._

---
