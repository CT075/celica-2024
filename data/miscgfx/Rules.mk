sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

EVENTS_$(d) := $(d)/main.event $(d)/EmptyScroll.png.dmp $(d)/EmptyScrollText.png.dmp \
	$(d)/defaultscroll.png.dmp

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
