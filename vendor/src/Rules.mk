sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/ExpandedModularSave
include $(dir)/Rules.mk

d := $(dirstack_$(sp))
sp := $(basename $(sp))
