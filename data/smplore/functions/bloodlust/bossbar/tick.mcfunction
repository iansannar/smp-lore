### Filename: tick.mcfunction
### Resource: smplore:bloodlust/bossbar/tick
### Title: Bloodlust Boss Bar Tick
### Summary: Updates the bloodlust player boss bar, if applicable.
### Execute: N/A
# ----------------------------------------------------------------
tag @a remove bloodlust.boss

## Give bloodlust.boss tag to the player with the highest bloodlust (minimum of 10)
# ----------------------------------------------------------------
scoreboard players reset $temporary w
scoreboard players operation $temporary w > @a bloodlust
execute as @a[scores={bloodlust=10..}] if score @s bloodlust = $temporary w run tag @s add bloodlust.boss
execute as @a[scores={bloodlust=10..}] if score @s bloodlust = $temporary w run advancement grant @s only smplore:bloodlust

## Update bossbar depending on whether or not a valid bloodlust boss exists or not
# ----------------------------------------------------------------
execute as @a[tag=bloodlust.boss, limit=1] if entity @s run function smplore:bloodlust/bossbar/exists
execute unless entity @a[tag=bloodlust.boss, limit=1] run function smplore:bloodlust/bossbar/none