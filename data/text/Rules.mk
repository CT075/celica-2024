sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

EVENTS_$(d) := $(d)/main.event

$(d)/main.event: PARSE_DEFNS := $(d)/ParseDefinitions.txt
$(d)/main.event: $(d)/alltext.txt $(PARSEFILE) $(TEXT_PROCESS_CLASSIC)
	python $(TEXT_PROCESS_CLASSIC) $< \
		--installer $@ \
		--definitions $(PARSE_DEFNS) \
		--parser-exe $(PARSEFILE)

EVENTS := $(EVENTS) $(EVENTS_$(d))

CLEAN := $(CLEAN) .TextEntries

d := $(dirstack_$(sp))
sp := $(basename $(sp))
