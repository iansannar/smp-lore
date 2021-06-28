### Filename: death.mcfunction
### Resource: smplore:lives/death
### Title: Canon Death
### Summary: Removes one canon life from a player.
### Execute: as
# ----------------------------------------------------------------

## Show a message in the event the canon death cannot be applied
# ----------------------------------------------------------------
execute if score @s lives matches 0 if entity @s[tag=smplore.lives.dead] run tellraw @s ["",{"text":"⚠ [canon lives]","color":"gold"},{"text":": ","color":"gray"},{"text":"That would have killed you, but you're already dead.","italic":true,"color":"gray"}]

## Apply the canon death
# ----------------------------------------------------------------
execute if score @s lives matches 1.. run advancement grant @s only smplore:first_canon_death
execute if score @s lives matches 1.. run scoreboard players remove @s lives 1

## Make target into a ghost if they should be dead but aren't
# ----------------------------------------------------------------
execute if score @s lives matches 0 unless entity @s[tag=smplore.lives.dead] run function smplore:lives/final_death
