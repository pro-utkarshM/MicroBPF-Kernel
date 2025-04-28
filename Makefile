# RISC-V toolchain
CC      := riscv64-unknown-elf-gcc
OBJCOPY := riscv64-unknown-elf-objcopy
# canonical: i, m, a, f, d, c
# use medany model for pc-relative relocations
CFLAGS  := -O2 -mcmodel=medany -march=rv64imafdc -ffreestanding -nostdlib -I include
LDFLAGS := -mcmodel=medany -T link.ld

# Directories
BUILD_DIR := build
BIN_DIR   := bin

# Files
SRCS      := src/main.c
OBJS      := $(BUILD_DIR)/main.o
ELF       := $(BUILD_DIR)/microbpf.elf
BIN       := $(BIN_DIR)/microbpf.bin

# Default: prepare dirs, build binary
all: dirs $(BIN)

# Create necessary directories
dirs:
	mkdir -p $(BUILD_DIR) $(BIN_DIR)

# Link ELF
$(ELF): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

# Compile object
$(BUILD_DIR)/%.o: src/%.c | dirs
	$(CC) $(CFLAGS) -c -o $@ $<

# Convert ELF to raw binary
$(BIN): $(ELF)
	$(OBJCOPY) -O binary $< $@

# Clean build artifacts
clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)

.PHONY: all dirs clean
.PHONY: run
run: all
	qemu-system-riscv64 -machine virt -nographic -bios none -kernel $(BIN) -serial mon:stdio
