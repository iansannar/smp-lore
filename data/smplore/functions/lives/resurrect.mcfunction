### Filename: resurrect.mcfunction
### Resource: smplore:lives/resurrect
### Title: Canon Resurrection
### Summary: Turns a ghost back into a player.
### Execute: as
# ----------------------------------------------------------------
tag @s remove smplore.lives.dead
gamemode survival @s
advancement grant @s only smplore:get_resurrected
scoreboard players operation @s lives = $global lives.initial
effect clear @s
effect give @s absorption 60 4 true

## Theatrics
# ----------------------------------------------------------------
playsound entity.wither.spawn player @a ~ ~ ~ 1.0 0.5
effect give @s nausea 10 0 true