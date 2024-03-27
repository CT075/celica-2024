sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

EVENTS_$(d) := $(d)/fe8_chnames.event

$(d)/font.dmp: $(d)/font.png $(PNG2DMP)
	$(PNG2DMP) $< --lz77 > $@

EVENTS := $(EVENTS) $(EVENTS_$(d))
ASSETS := $(EVENTS) $(d)/font.dmp

d := $(dirstack_$(sp))
sp := $(basename $(sp))
