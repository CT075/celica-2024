sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)


$(d)/Installer.event: $(wildcard $(d)/*.png)
	python portaits2dmp.py

EVENTS_$(d) := $(d)/main.event $(d)/Installer.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
