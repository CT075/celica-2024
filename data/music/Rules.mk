sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

SAPPY2EA_DIR := $(VENDOR_DIR)/bin/Sappy2EA
DRUMFIX_EVENT := $(BUILD_DIR)/drumfix_fe8.event
SFX_EVENT := $(BUILD_DIR)/sfx.event
MPLAYDEF_EVENT := $(BUILD_DIR)/MPlayDef.event
FE8_NI_MAP_BIN := $(BUILD_DIR)/FE8_NI_Map.bin
SAPPY2EA := $(SAPPY2EA_DIR)/s2ea.py

$(DRUMFIX_EVENT): $(SAPPY2EA_DIR)/dist/drumfix_fe8.event
	cp $< $@

$(SFX_EVENT): $(SAPPY2EA_DIR)/sfx.event
	cp $< $@

$(MPLAYDEF_EVENT): $(SAPPY2EA_DIR)/MPlayDef.event
	cp $< $@

$(FE8_NI_MAP_BIN): $(SAPPY2EA_DIR)/FE8_NI_Map.bin
	cp $< $@

$(d)/tracks/%.event: $(d)/tracks/%.s $(SAPPY2EA)
	python $(SAPPY2EA) $<

TRACK_EVENTS := $(d)/tracks/March.event $(d)/tracks/Onward.event

EVENTS_$(d) := $(d)/main.event $(DRUMFIX_EVENT) $(SFX_EVENT) $(MPLAYDEF_EVENT) $(TRACK_EVENTS) \
	$(FE8_NI_MAP_BIN)

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
