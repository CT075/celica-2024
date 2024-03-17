sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

# This doesn't properly include everything, but we aren't expecting to change
# vendored code much.
EVENTS_$(d) := $(d)/FE8-BattleStats.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
