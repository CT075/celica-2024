sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

include $(d)/Skills.mk

EVENTS_$(d) := $(d)/main.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
