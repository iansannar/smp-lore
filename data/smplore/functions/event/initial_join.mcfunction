### Filename: new_player.mcfunction
### Resource: smplore:event/new_player
### Title: New player initialization
### Summary: Runs for each player once when they join for the first time through an advancement (smplore/root).
### Execute: as
# ----------------------------------------------------------------

## Debug
# Comment out if not testing
# ----------------------------------------------------------------
tellraw @s ["",{"text":"⏺ [smplore:event]","color":"aqua"},{"text":": ","color":"gray"},{"text":"New player event triggered.","italic":true,"color":"gray"}]

## Canon Lives
# ----------------------------------------------------------------
scoreboard players operation @s lives = $global lives.initial

## Bloodlust
# ----------------------------------------------------------------
scoreboard players reset @s bloodlust

## General
# Run login function since it doesn't detect initial logins
# ----------------------------------------------------------------
function smplore:event/join