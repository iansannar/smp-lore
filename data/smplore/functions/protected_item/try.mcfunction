### Filename: try.mcfunction
### Resource: smplore:protected_item/try
### Title: Protected Item Creation Check
### Summary: Attempts to create a new protected item, if requirements are met.
### Execute: as
# ----------------------------------------------------------------
execute unless data entity @s SelectedItem run tellraw @s ["",{"text":"⚠ [blessed item creation]","color":"gold"},{"text":": ","color":"gray"},{"text":"No item is being held; cannot bless a nonexistent item.","italic":true,"color":"gray"}]
execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag.display.Name run tellraw @s ["",{"text":"⚠ [blessed item creation]","color":"gold"},{"text":": ","color":"gray"},{"text":"Only named items may be blessed; held item is not named.","italic":true,"color":"gray"}]
execute if entity @s[nbt={SelectedItem:{tag:{Tags:["smplore.protected_item"]}}}] run tellraw @s ["",{"text":"⚠ [blessed item creation]","color":"gold"},{"text":": ","color":"gray"},{"text":"Held item has already been blessed.","italic":true,"color":"gray"}]

execute if data entity @s SelectedItem if data entity @s SelectedItem.tag.display.Name unless entity @s[nbt={SelectedItem:{tag:{Tags:["smplore.protected_item"]}}}] at @s run function smplore:protected_item/new