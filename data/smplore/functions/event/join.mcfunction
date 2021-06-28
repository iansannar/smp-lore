### Filename: join.mcfunction
### Resource: smplore:event/join
### Title: Player login event
### Summary: Runs for each player whenever they log in.
### Execute: as, at
# ----------------------------------------------------------------
scoreboard players reset @s event.join

## Debug
# Comment out if not testing
# ----------------------------------------------------------------
tellraw @s ["",{"text":"⏺ [smplore:event]","color":"aqua"},{"text":": ","color":"gray"},{"text":"Login event triggered.","italic":true,"color":"gray"}]

## Canon Lives
# Display this player's amount of canon lives.
# ----------------------------------------------------------------
function smplore:lives/display