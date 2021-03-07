### Filename: dead_effects.mcfunction
### Resource: smplore:lives/dead_effects
### Title: Dead player status effects
### Summary: Self-scheduling function that gives canonically dead players status effects.
### Execute: N/A
# ----------------------------------------------------------------
effect give @a[tag=lives.dead] saturation 6 5 true
effect give @a[tag=lives.dead] weakness 999999 0 true
effect give @a[tag=lives.dead] resistance 999999 0 true
effect give @a[tag=lives.dead] slow_falling 999999 0 true
effect give @a[tag=lives.dead] jump_boost 999999 0 true
schedule function smplore:lives/tick_dead 12s replace