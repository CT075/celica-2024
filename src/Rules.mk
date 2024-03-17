sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/core
include $(dir)/Rules.mk

dir := $(d)/disableDifficultySelect
include $(dir)/Rules.mk

EVENTS_$(d) := $(d)/main.event $(d)/statscreen.lyn.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
