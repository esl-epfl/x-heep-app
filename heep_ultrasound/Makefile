# Copyright 2019 Clifford Wolf
# Copyright 2019 Robert Balas
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

# Author: Robert Balas (balasr@iis.ee.ethz.ch)

MAKE                       = make

# riscv toolchain install path
RISCV                      ?= ~/.riscv
RISCV_EXE_PREFIX           = $(RISCV)/bin/riscv32-unknown-elf-
HEEP_HOME 								 ?= 
HEEP_SW 									 = $(HEEP_HOME)/sw

$(info DON'T FORGET TO SET THE VARIABLE 'HEEP_HOME' TO X-HEEP'S HOME DIRECTORY)
$(info Currently set as: $(HEEP_HOME))

TARGET                     ?= sim

# GCC configuration
CUSTOM_GCC_FLAGS           =

LIB_CRT                    = $(wildcard $(HEEP_SW)/device/lib/crt/*.S)
LIB_CRT_FLASH_EXEC         = $(wildcard $(HEEP_SW)/device/lib/crt_flash_exec/*.S)
LIB_CRT_FLASH_LOAD         = $(wildcard $(HEEP_SW)/device/lib/crt_flash_load/*.S)
LIB_BASE                   = $(wildcard $(HEEP_SW)/device/lib/base/*.c)
LIB_BASE_FREESTD           = $(HEEP_SW)/device/lib/base/freestanding
LIB_RUNTIME                = $(wildcard $(HEEP_SW)/device/lib/runtime/*.c)
LIB_DRIVERS                = $(wildcard $(HEEP_SW)/device/lib/drivers/soc_ctrl/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/uart/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/rv_plic/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/rv_timer/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/gpio/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/i2c/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/dma/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/power_manager/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/fast_intr_ctrl/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/spi_mem/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/spi_memio/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/spi_host/*.c)
LIB_DRIVERS                += $(wildcard $(HEEP_SW)/device/lib/drivers/pad_control/*.c)
INC_FOLDERS                = $(sort $(dir $(wildcard $(HEEP_SW)/device/target/$(TARGET)/)))
INC_FOLDERS                += $(sort $(dir $(wildcard $(HEEP_SW)/device/lib/base/)))
INC_FOLDERS                += $(sort $(dir $(wildcard $(HEEP_SW)/device/lib/drivers/*/)))
INC_FOLDERS                += $(sort $(dir $(wildcard $(HEEP_SW)/device/lib/runtime/)))
INC_FOLDERS_GCC             = $(addprefix -I ,$(INC_FOLDERS))

# rules to generate hex (loadable by simulators) from elf
%.hex: %.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog $< $@

%.flash_exec.hex: %.flash_exec.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog --adjust-vma=-0x40000000 $< $@

%.flash_load.hex: %.flash_load.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog --adjust-vma=-0x40000000 $< $@

%.dis: %.elf
	$(RISCV_EXE_PREFIX)objdump -S $^ > $@

%.dump: %.elf
	$(RISCV_EXE_PREFIX)objdump -xD $^ > $@


build/heep_ultrasound.elf: src/heep_ultrasound.c
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O3 -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-T $(HEEP_SW)/linker/link.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-Wl,-Map=build/heep_ultrasound.map \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs

build/heep_ultrasound.flash_exec.elf: src/heep_ultrasound.c
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -Os -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-T $(HEEP_SW)/linker/link_flash_exec.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT_FLASH_EXEC) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-Wl,-Map=build/heep_ultrasound.flash_exec.map \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs

build/heep_ultrasound.flash_load.elf: src/heep_ultrasound.c
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -Os -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-T $(HEEP_SW)/linker/link_flash_load.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT_FLASH_LOAD) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-Wl,-Map=build/heep_ultrasound.flash_load.map \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs

clean:
	rm -rf */*.elf \
	rm -rf */*.hex \
	rm -rf */*.dis \
	rm -rf */*.dump \
	rm -rf */*.map
