# Build tools in bin/
# These can be called recursively because those tools are all self-contained

VENDOR_BIN := $(VENDOR_DIR)/bin

LYN_DIR := $(VENDOR_BIN)/lyn
LYN := $(LYN_DIR)/lyn

# ColorzCore needs to be run from the directory containing the `Language Raws`
# folder (it doesn't handle the `-raws` flag properly), so we simply copy
# everything into the root of the build dir.
COLORZCORE_DIR := $(BUILD_DIR)
$(shell mkdir -p $(COLORZCORE_DIR) > /dev/null)
COLORZCORE := $(COLORZCORE_DIR)/ColorzCore$(EXE)
COLORZCORE_BIN ?= $(error No ColorzCore binary; please set COLORZCORE_BIN and run `make ColorzCore`)
EA_STD_LIB_DIR := $(VENDOR_DIR)/EAStandardLibrary

$(LYN_DIR)/Makefile:
	cd $(LYN_DIR) && cmake .

$(LYN): $(LYN_DIR)/Makefile
	cd $(LYN_DIR) && $(MAKE)

PARSEFILE_DIR := $(VENDOR_BIN)/ParseFile
PARSEFILE := $(BUILD_DIR)/ParseFile

$(PARSEFILE): $(PARSEFILE_DIR)/ParseFile.hs $(PARSEFILE_DIR)/FlagUtilities.hs \
		$(PARSEFILE_DIR)/GBAUtilities.hs $(PARSEFILE_DIR)/FEParser.hs
	ghc $< -i$(PARSEFILE_DIR) -o $@

PNG2DMP_DIR := $(VENDOR_BIN)/Png2Dmp
PNG2DMP := $(PNG2DMP_DIR)/Png2Dmp

# XXX: We should properly be checking every .hs file here, but this is
# vendored, so they're not likely to change often enough.
$(PNG2DMP): $(PNG2DMP_DIR)/Png2Dmp.hs $(PNG2DMP_DIR)/Png2Dmp.cabal
	cd $(PNG2DMP_DIR) && \
		cabal build && \
		cp $(shell cd $(PNG2DMP_DIR) && cabal list-bin Png2Dmp) Png2Dmp

MAR2DMP_DIR := $(BIN_DIR)/cam-formatting-suite
MAR2DMP := $(MAR2DMP_DIR)/target/release/mar2dmp

.PHONY: $(MAR2DMP)
$(MAR2DMP):
	cd $(MAR2DMP_DIR) && cargo build --profile release

STRUCT_MUNGER_DIR := $(BIN_DIR)/cam-formatting-suite
STRUCT_MUNGER := $(STRUCT_MUNGER_DIR)/target/release/struct_munger

.PHONY: $(STRUCT_MUNGER)
$(STRUCT_MUNGER):
	cd $(STRUCT_MUNGER_DIR) && cargo build --profile release

TEXT_PROCESS_CLASSIC := $(VENDOR_BIN)/text-process-classic.py

MAKE_ICON_INSTALLER := $(BIN_DIR)/make_icon_installer.py

.PHONY: ColorzCore
ColorzCore: $(COLORZCORE)

# CR cam: Every time we change COLORZCORE_DIR we have to manually change the
# number of `..`s here.
$(COLORZCORE):
	ln -s $(COLORZCORE_BIN) $(COLORZCORE)
	ln -s '../$(EA_STD_LIB_DIR)/Language Raws' '$(COLORZCORE_DIR)/Language Raws'
	ln -s '../$(EA_STD_LIB_DIR)/EA Standard Library' '$(COLORZCORE_DIR)/EA Standard Library'
	ln -s '../$(EA_STD_LIB_DIR)/Extensions' '$(COLORZCORE_DIR)/Extensions'
	ln -s '..//$(EA_STD_LIB_DIR)/EAstdlib.event' '$(COLORZCORE_DIR)/EAstdlib.event'

.PHONY: tools
tools: $(LYN) $(COLORZCORE)

.PHONY: clean-tools
clean-tools:
	cd $(BIN_DIR)/lyn && make clean
	cd $(BIN_DIR)/ParseFile && rm -rf *.o
