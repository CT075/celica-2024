sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

$(d)/battle.o: $(RAM_STRUCTURES_H)

EVENTS_$(d) := $(d)/main.event $(d)/core.lyn.event $(d)/statscreen.lyn.event \
	$(d)/battle.lyn.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
