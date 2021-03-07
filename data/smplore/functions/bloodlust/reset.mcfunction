### Filename: reset.mcfunction
### Resource: smplore:bloodlust/reset
### Title: Reset Player Bloodlust
### Summary: Fully resets a player's bloodlust.
### Execute: as
# ----------------------------------------------------------------
scoreboard players reset @s bloodlust
function smplore:bloodlust/reset_attributes

tag @s remove bloodlust.boss
advancement revoke @s only smplore:bloodlust
execute as @s[tag=bloodlust.boss] run scoreboard players set $global boss_bar_decay 100