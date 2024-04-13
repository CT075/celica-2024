sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

SAPPY2EA_DIR := $(VENDOR_DIR)/bin/Sappy2EA
DRUMFIX_EVENT := $(BUILD_DIR)/drumfix_fe8.event
SFX_EVENT := $(BUILD_DIR)/sfx.event
MPLAYDEF_EVENT := $(BUILD_DIR)/MPlayDef.event
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

TRACK_EVENTS := $(d)/tracks/March.event $(d)/tracks/Onward.event \
								$(d)/tracks/AllyAttack.event $(d)/tracks/Strike.event \
								$(d)/tracks/SoftlyWithGrace.event

$(d)/samples/%.event: $(d)/samples/%.s $(SAPPY2EA)
	python $(SAPPY2EA) $<
	sed -i 1,19d $@
	sed -i "s/\.Int/WORD/g" $@

SAMPLE_EVENTS := $(d)/samples/strike_100.event $(d)/samples/strike_101.event \
								 $(d)/samples/softly_29.event

EVENTS_$(d) := $(d)/main.event $(DRUMFIX_EVENT) $(SFX_EVENT) $(MPLAYDEF_EVENT) $(TRACK_EVENTS) \
	$(SAMPLE_EVENTS)

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
