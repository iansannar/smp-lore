### Filename: try.mcfunction
### Resource: smplore:items/try
### Title: Canon Item Creation Check
### Summary: Attempts to create a new canon item, if requirements are met.
### Execute: as
# ----------------------------------------------------------------
execute unless data entity @s SelectedItem run tellraw @s ["",{"text":"⚠ [canon item creation]","color":"gold"},{"text":": ","color":"gray"},{"text":"No item is being held; cannot canonize a nonexistent item.","italic":true,"color":"gray"}]
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.display.Name run tellraw @s ["",{"text":"⚠ [canon item creation]","color":"gold"},{"text":": ","color":"gray"},{"text":"Only named items may be canonized; held item is not named.","italic":true,"color":"gray"}]
execute if data entity @s SelectedItem.tag.Canon run tellraw @s ["",{"text":"⚠ [canon item creation]","color":"gold"},{"text":": ","color":"gray"},{"text":"Held item has already been canonized.","italic":true,"color":"gray"}]

execute if data entity @s SelectedItem if data entity @s SelectedItem.tag.display.Name unless data entity @s SelectedItem.tag.Canon at @s run function smplore:items/new