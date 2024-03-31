sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

dir := $(d)/internal
include $(dir)/Rules.mk

dir := $(d)/skills
include $(dir)/Rules.mk

EVENTS_$(d) := $(d)/microskillsys.event $(d)/frontend.lyn.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

# Cross-subdir rules
# CR cam: Really, we should be doing this with a script instead of in make

.SECONDEXPANSION:

$(shell mkdir -p $(d)/include/microskillsys/skills)
$(d)/include/microskillsys/skills/%.h: $(d)/skills/$$*/$$*.h
	cp $< $@

$(d)/include/microskillsys/skills.h: HERE := $(d)
$(d)/include/microskillsys/skills.h: $(d)/skills/skill_list.txt
	@for skill in $$(cat $<); do \
		$(MAKE) $(HERE)/include/microskillsys/skills/$$skill.h; \
	done

d := $(dirstack_$(sp))
sp := $(basename $(sp))
