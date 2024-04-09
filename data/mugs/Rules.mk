sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

MUGS_$(d) = $(shell find $(d) -type f -name '*.png')

$(d)/Installer.event: $(d)/portraits2dmp.py $(MUGS_$(d))
	cd $(shell dirname $<) && python $(shell basename $<)

EVENTS_$(d) := $(d)/main.event $(d)/Installer.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
