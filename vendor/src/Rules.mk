sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/ExpandedModularSave
include $(dir)/Rules.mk

dir := $(d)/DangerZone
include $(dir)/Rules.mk

dir := $(d)/HpBars
include $(dir)/Rules.mk

dir := $(d)/LToggle
include $(dir)/Rules.mk

dir := $(d)/SkipHuffmanDecompression
include $(dir)/Rules.mk

dir := $(d)/ChapterNames
include $(dir)/Rules.mk

d := $(dirstack_$(sp))
sp := $(basename $(sp))
