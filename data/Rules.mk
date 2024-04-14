sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/text
include $(dir)/Rules.mk

dir := $(d)/music
include $(dir)/Rules.mk

dir := $(d)/tables
include $(dir)/Rules.mk

dir := $(d)/mugs
include $(dir)/Rules.mk

dir := $(d)/icons
include $(dir)/Rules.mk

dir := $(d)/miscgfx
include $(dir)/Rules.mk

%.png.dmp: %.png $(PNG2DMP)
	$(PNG2DMP) $< -o $@ --lz77

EVENTS_$(d) := $(d)/main.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
