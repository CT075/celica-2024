sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/microskillsys
include $(dir)/Rules.mk

dir := $(d)/disableDifficultySelect
include $(dir)/Rules.mk

dir := $(d)/disableExp
include $(dir)/Rules.mk

EVENTS_$(d) := $(d)/main.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
