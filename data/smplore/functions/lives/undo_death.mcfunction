### Filename: undo_death.mcfunction
### Resource: smplore:lives/undo_death
### Title: Undo Canon Death
### Summary: Restores one canon life to a player.
### Execute: as
# ----------------------------------------------------------------

## Show a message in the event the canon death cannot be undone
# ----------------------------------------------------------------
execute unless score @s lives < $global lives.initial run tellraw @s ["",{"text":"⚠ [canon lives]","color":"gold"},{"text":": ","color":"gray"},{"text":"That would have undone a death, but you didn't have a death to undo.","italic":true,"color":"gray"}]

## Undo the canon death
# ----------------------------------------------------------------
execute if score @s lives < $global lives.initial run advancement grant @s only smplore:undo_canon_death
execute if score @s lives < $global lives.initial run scoreboard players add @s lives 1