# MicroBPF-Kernel

A formally verified, eBPF-enabled unikernel microkernel for RISC-V IoT and edge devices.

## Overview
MicroBPF-Kernel merges seL4's formal guarantees, Unikraft's unikernel performance, and eBPF extensibility into a single RISC-V core.

## Features
- **Formally Verified**: Built on seL4 to ensure memory safety and isolation.
- **Unikernel Deployment**: Minimal image size, fast boot.
- **eBPF Programmability**: Dynamic in-kernel networking, security, and observability.

## Getting Started
1. Install dependencies: `sudo apt-get install riscv64-unknown-elf-gcc qemu-system-riscv64`
2. Clone the repo: `git clone https://github.com/pro-utkarshM/MicroBPF-Kernel.git`
3. Build: `make all`
4. Run on QEMU: `make run`

## License
This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.