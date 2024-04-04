sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

$(d)/%.stats.event: $(d)/%.toml $(STRUCT_MUNGER)
	$(STRUCT_MUNGER) --input $< > $@

$(d)/players.stats.event: $(d)/character.schema.toml
$(d)/enemies.stats.event: $(d)/character.schema.toml

EVENTS_$(d) := $(d)/main.event $(d)/players.stats.event $(d)/enemies.stats.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
