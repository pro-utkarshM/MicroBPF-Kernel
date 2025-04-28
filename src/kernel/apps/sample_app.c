#include <stdio.h>
#include "bpf_vm.h"

int main(void) {
    printf("Sample user-space app starting...\n");

    // Interact with BPF maps via IPC
    map_fd_t fd = bpf_map_create(BPF_MAP_TYPE_HASH, sizeof(uint32_t), sizeof(uint64_t), 1024);
    if (fd < 0) {
        printf("Map creation failed\n");
        return -1;
    }

    // Insert a key-value pair
    uint32_t key = 1;
    uint64_t value = 42;
    bpf_map_update(fd, &key, &value);

    // Read back the value
    uint64_t result;
    bpf_map_lookup(fd, &key, &result);
    printf("Map lookup: key=%u value=%llu\n", key, result);

    return 0;
}