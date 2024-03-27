sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

# TODO: do all of these automatically
dir := $(d)/ShootDown
include $(dir)/Rules.mk

dir := $(d)/Smite
include $(dir)/Rules.mk

EVENTS_$(d) := $(d)/main.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
