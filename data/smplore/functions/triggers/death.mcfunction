### Filename: death.mcfunction
### Resource: smplore:triggers/death
### Title: Player death event
### Summary: Runs for each player whenever they die.
### Execute: as, at
# ----------------------------------------------------------------
scoreboard players reset @s event.death

## Bloodlust
# Reset bloodlust kill counter.
# If this player was the current bloodlust boss, present some theatrics.
# ----------------------------------------------------------------
function smplore:bloodlust/reset
execute as @s[tag=bloodlust.boss] run playsound entity.wither.death player @a ~ ~ ~ 1.0 0.5 0.5
execute as @s[tag=bloodlust.boss] run setblock ~ ~ ~ minecraft:crimson_roots

## Canon Lives
# If this player has no canon lives left, turn them into a ghost.
# ----------------------------------------------------------------
execute if score $global lives.enable matches 1.. if score @s lives matches ..0 run function smplore:lives/death