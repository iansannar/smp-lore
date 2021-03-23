### Filename: death.mcfunction
### Resource: smplore:event/death
### Title: Player death event
### Summary: Runs for each player whenever they die.
### Execute: as, at
# ----------------------------------------------------------------
scoreboard players reset @s event.death
scoreboard players set @s event.respawn 1

## Debug
# Comment out if not testing
# ----------------------------------------------------------------
tellraw @s ["",{"text":"⏺ [smplore:event]","color":"aqua"},{"text":": ","color":"gray"},{"text":"Death event triggered.","italic":true,"color":"gray"}]

## Bloodlust
# Reset bloodlust kill counter.
# If this player was the current bloodlust boss, present some theatrics.
# ----------------------------------------------------------------
execute as @s[tag=smplore.bloodlust.boss] run playsound entity.wither.death player @a ~ ~ ~ 1.0 0.5 0.5
execute as @s[tag=smplore.bloodlust.boss] run setblock ~ ~ ~ minecraft:crimson_roots
execute if score $global lives.enable matches 1.. run scoreboard players remove @s[tag=smplore.bloodlust.boss] lives 1
function smplore:bloodlust/reset

## Canon Lives
# If this player has no canon lives left, turn them into a ghost.
# ----------------------------------------------------------------
execute if score $global lives.enable matches 1.. if score @s lives matches ..0 run function smplore:lives/death