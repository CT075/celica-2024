sp := $(sp).x
dirstack_$(sp) := $(d)
d := $(dir)

$(d)/%.table.event: $(d)/%.toml $(STRUCT_MUNGER)
	$(STRUCT_MUNGER) --input $< > $@

$(d)/players.table.event: $(d)/character.schema.toml
$(d)/enemies.table.event: $(d)/character.schema.toml
$(d)/weapons.table.event: $(d)/item.schema.toml
$(d)/bossquotes.table.event: $(d)/bossquotes.schema.toml

EVENTS_$(d) := $(d)/main.event $(d)/players.table.event $(d)/enemies.table.event \
	$(d)/weapons.table.event $(d)/bossquotes.table.event

EVENTS := $(EVENTS) $(EVENTS_$(d))

d := $(dirstack_$(sp))
sp := $(basename $(sp))
