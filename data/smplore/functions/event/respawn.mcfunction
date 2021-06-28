### Filename: respawn.mcfunction
### Resource: smplore:event/respawn
### Title: Player respawn event
### Summary: Runs for each player whenever they respawn.
### Execute: as, at
# ----------------------------------------------------------------
scoreboard players reset @s event.respawn

## Debug
# Comment out if not testing
# ----------------------------------------------------------------
tellraw @s ["",{"text":"⏺ [smplore:event]","color":"aqua"},{"text":": ","color":"gray"},{"text":"Respawn event triggered.","italic":true,"color":"gray"}]

## Canon Lives
# Display this player's amount of canon lives.
# ----------------------------------------------------------------
function smplore:lives/display