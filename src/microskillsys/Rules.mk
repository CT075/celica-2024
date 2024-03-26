sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/internal
include $(dir)/Rules.mk

dir := $(d)/skills
include $(dir)/Rules.mk

EVENTS_$(d) := $(d)/microskillsys.event $(d)/frontend.lyn.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
