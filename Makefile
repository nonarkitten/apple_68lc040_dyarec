# Build the emulator from src/ and prove it matches the reference image.
#
#   make            assemble src/ into build/Emulator.x
#   make verify     build, then compare with ./Emulator.x
#   make static-check  cross-check the code against the 68K instruction set (tools/check.py),
#                   and the source, tools and documentation against each other (tools/selfcheck.py)
#   make check      verify and static-check (run before committing)
#   make test       run 68K test programs under the emulator in a simulator (tools/selftest.py)
#   make fuzz       compare interpreter and recompiler on random 68K programs (tools/fuzz.py)
#   make listing    build/Emulator.lst: offsets, bytes and symbols
#   make clean
#
# Requirements: a C preprocessor, Python 3 and an assembler for 32-bit
# big-endian PowerPC ELF.  LLVM is used by default (brew install llvm).

LLVM_BIN ?= $(firstword $(wildcard /opt/homebrew/opt/llvm/bin /usr/local/opt/llvm/bin /usr/lib/llvm*/bin))
LLVM_PFX := $(if $(LLVM_BIN),$(LLVM_BIN)/,)

# (Not named CPP/AS: make predefines those, which would defeat "?=".)
PPC_CPP     ?= cc -E -x assembler-with-cpp
PPC_AS      ?= $(LLVM_PFX)llvm-mc -triple=powerpc-unknown-elf -filetype=obj
PPC_OBJDUMP ?= $(LLVM_PFX)llvm-objdump
PYTHON      ?= python3

REFERENCE := Emulator.x
BUILD     := build
SOURCES   := $(shell find src -name '*.S' -o -name '*.inc' 2>/dev/null)

.PHONY: all verify check static-check test fuzz listing clean

all: $(BUILD)/Emulator.x

$(BUILD)/Emulator.s: $(SOURCES)
	@mkdir -p $(BUILD)
	$(PPC_CPP) -Isrc src/Emulator.S -o $@

$(BUILD)/Emulator.o: $(BUILD)/Emulator.s
	$(PPC_AS) -o $@ $<

$(BUILD)/Emulator.x: $(BUILD)/Emulator.o tools/elf2xcoff.py
	$(PYTHON) tools/elf2xcoff.py $< $@

verify: $(BUILD)/Emulator.x
	@if cmp -s $(BUILD)/Emulator.x $(REFERENCE); then \
		echo "OK: build/Emulator.x is identical to $(REFERENCE)"; \
	else \
		echo "MISMATCH: build/Emulator.x differs from $(REFERENCE)"; \
		cmp $(BUILD)/Emulator.x $(REFERENCE) | head -1; \
		exit 1; \
	fi

check: verify static-check

static-check: $(BUILD)/Emulator.o
	$(PYTHON) tools/check.py
	$(PYTHON) tools/selfcheck.py

test:
	$(PYTHON) tools/selftest.py

fuzz:
	$(PYTHON) tools/fuzz.py 2000

listing: $(BUILD)/Emulator.o
	$(PPC_OBJDUMP) -d --no-show-raw-insn $< > $(BUILD)/Emulator.lst

clean:
	rm -rf $(BUILD)
