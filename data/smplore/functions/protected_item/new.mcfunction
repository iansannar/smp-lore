### Filename: new.mcfunction
### Resource: smplore:protected_item/new
### Title: Protected Item Creation Check
### Summary: Attempts to create a new protected item, if requirements are met.
### Execute: as
# ----------------------------------------------------------------
advancement grant @s only smplore:bless_item
xp add @s -50 levels

## Apply custom lore and tag to the item
# ---------------------------------------------------------------- 
item modify entity @s weapon.mainhand smplore:protected_item

## Display announcement of item protection
# ----------------------------------------------------------------
tellraw @a ["",{"text":"☑ [blessed item creation]","color":"green"},{"text":": ","color":"gray"},{"selector":"@s"},{"text":" has blessed an item: ","italic":true,"color":"gray"},{"nbt":"SelectedItem.tag.display.Name","entity":"@s","interpret":true}]