BASEROM := fe8.gba

TARGET := celica.gba

EVENT_MAIN := main.event
EAFLAGS := -werr -output:../$(TARGET) -input:../$(EVENT_MAIN) --nocash-sym

RAM_STRUCTURES_H := include/ram_structures.h
RAM_SYMS := $(BUILD_DIR)/ram_syms.sym

SAVE_CHUNKS_GEN_EVENT := $(BUILD_DIR)/save_chunks.gen.event
SUSP_CHUNKS_GEN_EVENT := $(BUILD_DIR)/suspend_chunks.gen.event

$(RAM_STRUCTURES_H): $(BIN_DIR)/ram_alloc.py data/ram_structures.csv
	python $< --items_file $(word 2,$^) > $@

$(SAVE_CHUNKS_GEN_EVENT): $(BIN_DIR)/save_alloc.py data/save_chunks.csv
	python $< --items_file $(word 2,$^) --which save > $@

$(SUSP_CHUNKS_GEN_EVENT): $(BIN_DIR)/save_alloc.py data/save_chunks.csv
	python $< --items_file $(word 2,$^) --which suspend > $@

SYMBOLS := $(TARGET:.gba=.sym)

EVENTS := $(EVENT_MAIN) $(ARCHIPELAGO_DEFS) $(BLANK_WEAPON_RANKS)

# CR cam: this should be a ups patch
hack: $(TARGET)

# All subdirectories
dir := src
include $(dir)/Rules.mk

dir := data
include $(dir)/Rules.mk

dir := vendor/src
include $(dir)/Rules.mk

# The variables `EVENTS` and `CLEAN` are populated by subdirectory makefiles.

$(BASEROM):
	$(error no $(BASEROM) found at build root)

# CR cam: split out the postprocess step somehow
$(TARGET) $(SYMBOLS): $(BASEROM) $(COLORZCORE) $(EVENTS) $(PARSEFILE) $(RAM_SYMS)
	cd $(BUILD_DIR) && \
		cp ../$(BASEROM) ../$(TARGET) && \
		./ColorzCore A FE8 $(EAFLAGS) \
	|| (rm -f ../$(TARGET) ../$(SYMBOLS) && false)

CLEAN := $(CLEAN) $(BUILD_DIR)

.PHONY: clean
clean: clean-tools
	rm -rf $(CLEAN)

.SECONDARY: $(CLEAN)

all: hack
