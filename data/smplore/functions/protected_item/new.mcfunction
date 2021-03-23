### Filename: new.mcfunction
### Resource: smplore:protected_item/new
### Title: Protected Item Creation Check
### Summary: Attempts to create a new protected item, if requirements are met.
### Execute: as
# ----------------------------------------------------------------
advancement grant @s only smplore:canon_item

## Make an entity version of the item in weapon.mainhand and add the smplore.protected_item item tag
# I have to do this because I can't directly edit player inventory NBT.
# This can be rewritten much more cleanly once the /item command gets added.
# ----------------------------------------------------------------
summon item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",Count:1},Invulnerable:1b,Tags:["smplore.protected_item.new_item_entity"]}
data modify entity @e[type=item,tag=smplore.protected_item.new_item_entity,nbt={Age:0s},distance=..1,sort=nearest,limit=1] Item set from entity @s SelectedItem
data modify entity @e[type=item,tag=smplore.protected_item.new_item_entity,nbt={Age:0s},distance=..1,sort=nearest,limit=1] Item.tag merge value {Tags:["smplore.protected_item"]}

## Apply custom lore to the item entity
# This replaces the item in weapon.mainhand with a book containing the protected item's lore, then copies the lore to the item entity.
# This also can be rewritten much more cleanly once /item gets added.
# ----------------------------------------------------------------
loot replace entity @s weapon.mainhand loot smplore:utility/protected_item_utility_book
data modify entity @e[type=item,tag=smplore.protected_item.new_item_entity,nbt={Age: 0s},distance=..1,sort=nearest,limit=1] Item.tag.display.Lore append from entity @s SelectedItem.tag.display.Name

## Display announcement of item protection
# This also uses the protected item lore hack book, which is still in weapon.mainhand/SelectedItem
# ----------------------------------------------------------------
tellraw @a ["",{"nbt":"SelectedItem.tag.display.Lore[0]","entity":"@s","interpret":true},{"text":" has blessed an item: ","color":"red","italic":false},{"nbt":"Item.tag.display.Name","entity":"@e[type=item,tag=smplore.protected_item.new_item_entity,nbt={Age: 0s},distance=..1,sort=nearest,limit=1]","interpret":true}]

## Remove protected item lore hack book
# ----------------------------------------------------------------
clear @s minecraft:knowledge_book{Tags:["smplore.protected_item.utility_book"]}