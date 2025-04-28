# Toolchain and flags
CC    := riscv64-unknown-elf-gcc
CFLAGS := -O2 -march=rv64imac -nostdlib -ffreestanding
LDFLAGS := -T link.ld

# Source files
KERNEL_OBJS := src/kernel/main.o src/kernel/bpf_vm.o
APP_OBJS    := src/apps/sample_app.o

# Output
IMAGE := microbpf.bin
APP   := sample_app.bin

# Default target: build kernel and app
all: $(IMAGE) $(APP)

# Kernel
$(IMAGE): $(KERNEL_OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

# Sample app
$(APP): $(APP_OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# Generic compile rule
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Run QEMU
run-kernel: $(IMAGE)
	qemu-system-riscv64 -machine sifive_u -kernel $(IMAGE) -nographic

# Clean artifacts
clean:
	rm -f $(KERNEL_OBJS) $(APP_OBJS) $(IMAGE) $(APP)

.PHONY: all clean run-kernel