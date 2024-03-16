sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

EVENTS_$(d) := $(d)/main.event
ASSETS_$(d) := $(d)/map.mar

EVENTS := $(EVENTS) $(EVENTS_$(d))
ASSETS := $(ASSETS) $(ASSETS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
