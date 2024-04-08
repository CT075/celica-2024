sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/microskillsys
include $(dir)/Rules.mk

dir := $(d)/disableDifficultySelect
include $(dir)/Rules.mk

dir := $(d)/disableExp
include $(dir)/Rules.mk

dir := $(d)/checkSecretShop
include $(dir)/Rules.mk

dir := $(d)/bgm
include $(dir)/Rules.mk

dir := $(d)/setRNGAtTitle
include $(dir)/Rules.mk

dir := $(d)/convoy
include $(dir)/Rules.mk

dir := $(d)/displayNum
include $(dir)/Rules.mk

EVENTS_$(d) := $(d)/main.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
