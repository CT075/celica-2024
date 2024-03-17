sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

$(d)/main.event: $(d)/map.dmp

$(d)/map.dmp: MAP_WIDTH = 20
$(d)/map.dmp: MAP_HEIGHT = 20

EVENTS_$(d) := $(d)/main.event
ASSETS_$(d) := $(d)/map.dmp

EVENTS := $(EVENTS) $(EVENTS_$(d))
ASSETS := $(ASSETS) $(ASSETS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
