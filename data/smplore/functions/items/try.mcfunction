### Filename: try.mcfunction
### Resource: smplore:items/try
### Title: Canon Item Creation Check
### Summary: Attempts to create a new canon item, if requirements are met.
### Execute: as
# ----------------------------------------------------------------
execute unless data entity @s SelectedItem run tellraw @s ["",{"text":"Cannot canonize item: ","color":"red","clickEvent":{"action":"run_command","value":"/trigger canonize_item"}},{"text":"you are not holding an item."}]
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.display.Name run tellraw @s ["",{"text":"Cannot canonize item: ","color":"red","clickEvent":{"action":"run_command","value":"/trigger canonize_item"}},{"text":"items must be named before they are canonized."}]
execute if data entity @s SelectedItem.tag.Canon run tellraw @s ["",{"text":"Cannot canonize item: ","color":"red","clickEvent":{"action":"run_command","value":"/trigger canonize_item"}},{"text":"held item has already been canonized."}]

execute if data entity @s SelectedItem if data entity @s SelectedItem.tag.display.Name unless data entity @s SelectedItem.tag.Canon at @s run function smplore:items/new