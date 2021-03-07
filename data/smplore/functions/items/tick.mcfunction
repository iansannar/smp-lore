### Filename: tick.mcfunction
### Resource: smplore:items/tick
### Title: Canon Item Entity Tick
### Summary: Special behavior for dropped canon item entities.
### Execute: as, at
# ----------------------------------------------------------------

## Damage invulnerability
# Items still appear to be destroyed, but they still exist even after they visually disappear.
# Items with an Age value of -32768 cannot despawn naturally.
# ----------------------------------------------------------------
data merge entity @s {Fire: -128s, Invulnerable: true, Health: 32767, Age: -32768}

## Float over dangerous blocks and the void
# ----------------------------------------------------------------
execute at @s if block ~ ~-0.5 ~ #smplore:dangerous_to_items run data modify entity @s Motion[1] set value 0.0
execute at @s if block ~ ~-0.15 ~ #smplore:dangerous_to_items run data modify entity @s NoGravity set value true
execute at @s if entity @s[y=0, dy=-32] run data modify entity @s Motion[1] set value 0.0
execute at @s if entity @s[y=0, dy=-32] run data modify entity @s NoGravity set value true

execute at @s unless block ~ ~ ~ #minecraft:air run data modify entity @s NoGravity set value false
execute at @s unless block ~ ~-0.15 ~ #neonfable:dangerous_to_items unless entity @s[y=1, dy=-32] run data modify entity @s NoGravity set value false

## Particle effects
# This can help locate an item that has gone invisible after touching fire, lava, etc.
# ----------------------------------------------------------------
execute if predicate neonfable:one_in_ten run particle minecraft:end_rod ~ ~0.6 ~ 0.125 0.25 0.125 0.025 1