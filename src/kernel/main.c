#include <stdint.h>
#include "bpf_vm.h"

int main(void) {
    // Initialize seL4 and platform
    sel4_init();

    // Initialize BPF VM
    if (bpf_vm_init() != 0) {
        panic("Failed to initialize BPF VM");
    }

    // Load sample BPF program
    int prog_fd = bpf_prog_load(sample_bpf_bytecode, sizeof(sample_bpf_bytecode));
    if (prog_fd < 0) {
        panic("Failed to load BPF program");
    }

    // Enter main event loop
    while (1) {
        bpf_event_loop();
    }

    return 0;
}